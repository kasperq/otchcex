unit SprFormul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, ExtCtrls, DBCtrls, ComCtrls, ToolWin, StdCtrls,
  Buttons, FindDlgEh, Grids, DBGridEh, DB, IBCustomDataSet, IBUpdateSQL,
  IBUpdSQLW, IBQuery, RxIBQuery,RxStrUtils;

type
  TFSprFormul = class(TForm)
    DBGridEh2: TDBGridEh;
    ToolBar1: TToolBar;
    DBNavigator1: TDBNavigator;
    ToolButton3: TToolButton;
    ImageList1: TImageList;
    FindDlgEh1: TFindDlgEh;
    Ceh_Normz: TRxIBQuery;
    DSCeh_Normz: TDataSource;
    IBUpdateCeh_normz: TIBUpdateSQLW;
    Ceh_NormzFORMULA: TIBStringField;
    Ceh_NormzKOEF1: TIBBCDField;
    Ceh_NormzKOEF2: TIBBCDField;
    Ceh_NormzKOEF3: TIBBCDField;
    Ceh_NormzKSM_ID_MAT: TIntegerField;
    Ceh_NormzKSM_ID_PR: TIntegerField;
    Ceh_NormzNORMZ_ID: TIntegerField;
    Ceh_NormzPROC: TIBBCDField;
    Ceh_NormzRAZDEL_ID: TSmallintField;
    Ceh_NormzNAMRAZ: TIBStringField;
    Ceh_NormzNMATS: TIBStringField;
    Ceh_NormzKRAZ: TSmallintField;
    ToolButton7: TToolButton;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    Label19: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label5: TLabel;
    Label41: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Ceh_NormzDECZNAK: TSmallintField;
    SpeedButton2: TSpeedButton;
    procedure ToolButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Ceh_NormzNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Ceh_NormzKRAZValidate(Sender: TField);
    procedure Ceh_NormzKSM_ID_MATValidate(Sender: TField);
    procedure ToolButton7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSprFormul: TFSprFormul;
  s_kodp_s: integer;
implementation
 uses dm, Find_Spprod, razdel, Find_Matrop, ViborPrep;
{$R *.dfm}

procedure TFSprFormul.ToolButton6Click(Sender: TObject);
begin
if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
FindSpprod.DataBaseName:=dm1.BELMED;
FindSpprod.ReadOnly:=true;
FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
FindSpprod.ShowModal;
if FindSpprod.ModalResult > 50 then
 begin
  EDIT1.OnChange:=nil;
  edit1.text:=FindSpprod.IBSpprodKod_Prod.Asstring;
  EDIT1.OnChange:=Edit1Change;
  s_kodp:=FindSpprod.ModalResult-50;
  s_kodp_s:=FindSpprod.ModalResult-50;
  s_gost:=FindSpprod.IBSpprodGOST.AsString;
  s_xarkt:=FindSpprod.IBSpprodXARKT.AsString;
  s_nmat:=FindSpprod.IBSpprodNMAT.AsString;
  s_kei:=FindSpprod.IBSpprodKEI_ID.VALUE;
  s_korg:=FindSpprod.IBSpprodKORG.VALUE;
  s_kodProd:=FindSpprod.IBSpprodKOD_PROD.AsString;
  s_namorg:=FindSpprod.IBSpprodNAME_ORG.AsString;
  s_neiz:=FindSpprod.IBSpprodNEIS.AsString;
  label19.caption:=s_NMAT;
  label28.caption:=Inttostr(s_KORG);
  label29.caption:=s_namorg;
  label21.caption:=s_Neiz;
  label22.caption:=s_GOST;
  label41.caption:=s_Xarkt;
  label3.caption:=FindSpprod.IBSpprodStname.AsString;
  USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP);
  CEH_NormZ.Close;
  CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
  CEH_NormZ.MacroByName('USL').AsString:=USLf;
  CEH_NormZ.Open;
  CEH_NORMZ.First;
 end;
end;

procedure TFSprFormul.FormCreate(Sender: TObject);
begin
  edit1.Text := '';
  LABEL19.Caption := '';
  LABEL21.Caption := '';
  LABEL22.Caption := '';
  LABEL29.Caption := '';
  LABEL28.Caption := '';
  LABEL41.Caption := '';
  LABEL3.Caption := '';
  SORTf := ' ORDER BY CEH_NORMZ.RAZDEL_ID,CEH_NORMZ.KSM_ID_MAT ';
end;

procedure TFSprFormul.Edit1Change(Sender: TObject);

begin
if edit1.text<>''   then
begin
 skod:=replacestr(edit1.text,',','.')+'%';
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
 DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,struk.stname');
 DM1.IBQuery1.SQL.Add(' FROM SPPROD');
 DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
 DM1.IBQuery1.SQL.Add('  INNER JOIN Struk ON (SPPROD.struk_id = Struk.struk_id)');
 DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+skod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
  begin
   Label19.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label41.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  end
  else
  begin
   Label19.Caption:='';
   Label41.Caption:='';
  end;
 Label19.Refresh;
 Label41.Refresh;
 end;
end;

procedure TFSprFormul.Edit1Click(Sender: TObject);
begin
edit1.text:='';
CEH_NormZ.Close;
end;

procedure TFSprFormul.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
  if (edit1.text<>'') and (not dm1.IBQuery1.Eof)  then
   begin
    EDIT1.OnChange:=nil;
    edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
    EDIT1.OnChange:=Edit1Change;
    s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
    s_kodp_s:=DM1.IBQuery1.FieldByName('KSM_ID').value;
    s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
    s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
    s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
    s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
    s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
    s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
    s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
    s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
    label19.caption:=s_NMAT;
    label28.caption:=Inttostr(s_KORG);
    label29.caption:=s_namorg;
    label21.caption:=s_Neiz;
    label22.caption:=s_GOST;
    label41.caption:=s_Xarkt;
    label3.caption:=DM1.IBQuery1.FieldByName('stname').AsString;;
    USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP);
    CEH_NormZ.Close;
    CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
    CEH_NormZ.MacroByName('USL').AsString:=USLf;
    CEH_NormZ.Open;
    CEH_NORMZ.First;
   end;
 end;
end;

procedure TFSprFormul.DBGridEh2EditButtonClick(Sender: TObject);
var
nm: integer;
begin
  nm := 0;
if dbgridEH2.SelectedField.FieldName='KRAZ' then nm:=1;
if dbgrideh2.SelectedField.FieldName='KSM_ID_MAT' then nm:=2;
 Ceh_normz.Edit;
case nm of
1: begin
    if frazdel=nil then frazdel:=tfrazdel.Create(Application);
    frazdel.ShowModal;
    if s_razdel<>0 then
     begin
      Ceh_NORMz.FieldByName('KRAZ').value:=s_razdel;
      Ceh_NORMz.FieldByName('RAZDEL_ID').value:=dm1.RazdelRAZDEL_ID.AsInteger;
//      Ceh_NORMz.Post;
     end;
   end;
2: begin
    if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
    FindMatrop.DataBaseName:=dm1.BELMED;
    FindMatrop.ReadOnly:=true;
    FindMatrop.ShowModal;
    if FindMatrop.ModalResult > 50 then
     begin
      Ceh_NORMz.FieldByName('KSM_ID_MAT').value:=FindMatrop.ModalResult-50;
      Ceh_NORMz.FieldByName('nmats').value:=FindMatrop.IBMatropNMAT.AsString;
      Ceh_NORMz.Post;
     end;
    end;
   end;

end;

procedure TFSprFormul.ToolButton1Click(Sender: TObject);
var
usl: string;
sort: string;
begin
USL:='';
SORT:=' ORDER BY NORM.KRAZ ';
DM1.Norm.Close;
DM1.Norm.ParamByName('KODP').AsInteger:=S_KODP;
DM1.Norm.ParamByName('god').AsInteger:=god;
DM1.Norm.ParamByName('mes').AsInteger:=mes;
DM1.Norm.MacroByName('SORT').AsString:=SORT;
DM1.Norm.MacroByName('USL').AsString:=USL;
DM1.Norm.Open;
DM1.NORM.First;
while not DM1.NORM.Eof do
  begin
   ceh_Normz.Insert;
   Ceh_NORMz.FieldByName('KSM_ID_pr').value:=s_kodp;
   Ceh_NORMz.FieldByName('KRaz').value:=dm1.NormKraz.Asinteger;
   Ceh_NORMz.FieldByName('KSM_ID_MAT').value:=dm1.NormKsm_id.Asinteger;
   Ceh_NORMz.FieldByName('nmats').value:=dm1.NormNMAT_ksm.AsString;
   ceh_Normz.Post;
   DM1.NORM.next;
  end;
 end;

procedure TFSprFormul.ToolButton3Click(Sender: TObject);
begin
  if (not dm1.IBT_Write.Active) then
    dm1.IBT_Write.StartTransaction;
  try
    if (Ceh_Normz.Modified) or (Ceh_Normz.State = dsEdit)
       or (Ceh_Normz.State = dsInsert) then
      Ceh_Normz.Post;
    if (Ceh_Normz.UpdatesPending) then
      Ceh_Normz.ApplyUpdates;
    DM1.IBT_Write.Commit;
    DM1.IBT_Read.CommitRetaining;
  except
    on E : Exception do
    begin
      MessageDlg('Произошла ошибка при записи !' + E.Message, mtWarning, [mbOK], 0);
      raise;
      Ceh_Normz.CancelUpdates;
      DM1.IBT_Read.RollbackRetaining;
    end;
  end;
end;

procedure TFSprFormul.Ceh_NormzNewRecord(DataSet: TDataSet);
begin
  Ceh_Normz.FieldByName('Normz_Id').AsInteger := 0;
  Ceh_Normz.FieldByName('Ksm_Id_pr').AsInteger := s_kodP;
end;

procedure TFSprFormul.FormShow(Sender: TObject);
begin
  IF (s_kodp <> 0) THEN
  BEGIN
    edit1.Text := s_kodProd;
    USLf := ' Where CEH_NORMZ.KSM_ID_PR=' + INTTOSTR(S_KODP);
    CEH_NormZ.Close;
    CEH_NormZ.MacroByName('SORT').AsString := SORTf;
    CEH_NormZ.MacroByName('USL').AsString := USLf;
    CEH_NormZ.Open;
    CEH_NORMZ.First;
  END
  else
    Ceh_Normz.Active := false;
end;

procedure TFSprFormul.SpeedButton2Click(Sender: TObject);
begin
if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
FindSpprod.DataBaseName:=dm1.BELMED;
FindSpprod.ReadOnly:=true;
FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
FindSpprod.ShowModal;
if FindSpprod.ModalResult > 50 then
 begin
  EDIT1.OnChange:=nil;
  edit1.text:=FindSpprod.IBSpprodKod_Prod.Asstring;
  EDIT1.OnChange:=Edit1Change;
  s_kodp:=FindSpprod.ModalResult-50;
  s_kodp_s:=FindSpprod.ModalResult-50;
  s_gost:=FindSpprod.IBSpprodGOST.AsString;
  s_xarkt:=FindSpprod.IBSpprodXARKT.AsString;
  s_nmat:=FindSpprod.IBSpprodNMAT.AsString;
  s_kei:=FindSpprod.IBSpprodKEI_ID.VALUE;
  s_korg:=FindSpprod.IBSpprodKORG.VALUE;
  s_kodProd:=FindSpprod.IBSpprodKOD_PROD.AsString;
  s_namorg:=FindSpprod.IBSpprodNAME_ORG.AsString;
  s_neiz:=FindSpprod.IBSpprodNEIS.AsString;
  label19.caption:=s_NMAT;
  label28.caption:=Inttostr(s_KORG);
  label29.caption:=s_namorg;
  label21.caption:=s_Neiz;
  label22.caption:=s_GOST;
  label41.caption:=s_Xarkt;
  label3.caption:=FindSpprod.IBSpprodStname.AsString;
  USLf:=' where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP);
  CEH_NormZ.Close;
  CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
  CEH_NormZ.MacroByName('USL').AsString:=USLf;
  CEH_NormZ.Open;
  CEH_NORMZ.First;
 end;
end;

procedure TFSprFormul.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (Ceh_Normz.Modified) or (Ceh_Normz.State =dsEdit)or (Ceh_Normz.State =dsInsert) then
 begin
  if MessageDlg('Записать изменения?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
  begin
   If not dm1.IBT_WRITE.Active then dm1.IBT_WRITE.StartTransaction;
   try
    Ceh_Normz.Post;
    if Ceh_Normz.UpdatesPending  then Ceh_Normz.ApplyUpdates;
     DM1.IBT_Write.Commit;
     DM1.IBT_Read.CommitRetaining;
    except
     MessageDlg('Произошла ошибка при записи !', mtWarning, [mbOK], 0);
     Ceh_Normz.CancelUpdates;
     DM1.IBT_Read.RollbackRetaining;
   end;
  end
  else
  begin
   Ceh_normz.CancelUpdates;
   DM1.IBT_Read.RollbackRetaining;
  end;
 end;
 Ceh_normz.Close;
 dm1.IBT_WRITE.Active:=FALSE;
 dm1.IBT_READ.Active:=FALSE;
 If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;

end;

procedure TFSprFormul.Ceh_NormzKRAZValidate(Sender: TField);
begin
 if not dM1.Razdel.Active then dM1.Razdel.Active:=TRUE;
 if dm1.razdel.locate('kraz',Ceh_normzKraz.AsInteger,[]) then
  Ceh_normzRazdel_Id.AsInteger:=dm1.razdel.FieldByName('Razdel_Id').AsInteger
 else
  showMessage('Нет такого раздела! Воспользуйтесь справочником!');
 end;

procedure TFSprFormul.Ceh_NormzKSM_ID_MATValidate(Sender: TField);
begin
 dM1.Matrop.Active:=false;
 dM1.Matrop.ParamByName('ksm').AsInteger:=Ceh_normz.FieldByName('ksm_id_mat').AsInteger;
 dM1.Matrop.Active:=TRUE;
 if not dm1.Matrop.eof then
  Ceh_normz.FieldByName('Nmats').AsString:=dm1.Matrop.FieldByName('Nmat').AsString
 else
  showMessage('Нет такого кода! Воспользуйтесь справочником!');

end;

procedure TFSprFormul.ToolButton7Click(Sender: TObject);
begin
if FviborPrep=nil then FviborPrep:=TFviborPrep.Create(Application);
 FviborPrep.ShowModal;
DM1.IBQuery1.Active := False;
DM1.IBQuery1.SQL.Clear;
DM1.IBQuery1.SQL.Add('SELECT Ceh_Normz.Normz_id,Ceh_Normz.Ksm_id_pr,Ceh_Normz.Ksm_id_mat,Ceh_Normz.Razdel_id,Ceh_Normz.Formula, ');
DM1.IBQuery1.SQL.Add('Ceh_Normz.Koef1,Ceh_Normz.Koef2,Ceh_Normz.Koef3,Ceh_Normz.Proc,MATROP.Nmat,Razdel.kraz ');
DM1.IBQuery1.SQL.Add(' FROM Ceh_Normz ');
DM1.IBQuery1.SQL.Add(' INNER JOIN MATROP ON ( CEH_NORMZ. KSM_ID_MAT = MATROP.KSM_ID)');
DM1.IBQuery1.SQL.Add(' INNER JOIN RAZDEL ON (CEH_NORMZ. RAZDEL_ID = RAZDEL. RAZDEL_ID)');
DM1.IBQuery1.SQL.Add('WHERE Ceh_Normz.Ksm_ID_pr='+iNTTOSTR(s_kodp));
DM1.IBQuery1.Active := True;
DM1.IBQuery1.First;
while not DM1.IBQuery1.Eof do
  begin
   ceh_Normz.Insert;
   Ceh_NORMz.FieldByName('KSM_ID_pr').value:=s_kodp_s;
   Ceh_NORMz.FieldByName('KRaz').value:=dm1.IBQuery1.FieldByName('Kraz').Asinteger;
   Ceh_NORMz.FieldByName('KSM_ID_MAT').value:=dm1.IBQuery1.FieldByName('Ksm_id_mat').Asinteger;
   Ceh_NORMz.FieldByName('formula').value:=dm1.IBQuery1.FieldByName('formula').AsString;
   Ceh_NORMz.FieldByName('Koef1').value:=dm1.IBQuery1.FieldByName('Koef1').Asinteger;
   Ceh_NORMz.FieldByName('Koef2').value:=dm1.IBQuery1.FieldByName('Koef2').Asinteger;
   Ceh_NORMz.FieldByName('Koef3').value:=dm1.IBQuery1.FieldByName('Koef3').Asinteger;
   Ceh_NORMz.FieldByName('proc').value:=dm1.IBQuery1.FieldByName('Proc').Asinteger;
   ceh_Normz.Post;
   DM1.ibQuery1.next;
  end;
end;

end.
