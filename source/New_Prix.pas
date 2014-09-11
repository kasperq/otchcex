unit New_Prix;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, DBCtrls, StdCtrls, Buttons, Grids,
  DBGridEh, Menus, Mask, ToolEdit, ExtCtrls,IB,
  IBStoredProc, IBQuery, IBCustomDataSet, IBTable,DB,
  DBTables, BDEConfig,DBCtrlsEh, DBLookupEh,frxClass, FileUtil,
  UtilR, UtilRIB, RxIBQuery, frxDBSet;
type
  TFNew_Prix = class(TForm)
    ImageList1: TImageList;
    DBGridEh1: TDBGridEh;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label4: TLabel;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    DateEdit1: TDateEdit;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    DBNavigator1: TDBNavigator;
    ToolButton2: TToolButton;
    Label10: TLabel;
    Edit12: TEdit;
    DBEdit1: TDBEdit;
    ToolButton1: TToolButton;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    ToolButton4: TToolButton;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Akt_ras: TIBQuery;
    Akt_rasKSM_ID: TIntegerField;
    Akt_rasNMAT: TIBStringField;
    Akt_rasNEIS: TIBStringField;
    Akt_rasKOL_RASH: TFMTBCDField;
    Akt_rasPLNORM: TFloatField;
    Akt_rasOTKL: TFloatField;
    Akt_rasNOM: TIntegerField;
    Akt_rasKRAZ: TSmallintField;
    Akt_rasNAMRAZ: TIBStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    DSakt_ras: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit12Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure DateEdit2Change(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNew_Prix: TFNew_Prix;
  
implementation

uses TipOp,dm, Find_Sprorg, Find_Matrop, Find_Struk, TipDoc, Ser,
  Find_Spprod, ediz, razdel;

{$R *.dfm}

procedure TFNew_Prix.FormShow(Sender: TObject);
 var
 s_zag1:string;
begin
 s_zag1:=copy(s_zag,1,13);
 if (s_zag1='Ввод остатков') then
 begin
  GroupBox1.Visible:=False;
  DBGridEh1.Align:=alClient;
  DBGridEh1.Columns[0].Visible:=true;
//  Edit1.Text:=vNdoc;
 end
 else
 begin
  DBGridEh1.Columns[0].Visible:=false;
  GroupBox1.Visible:=true;
  GroupBox1.Align:=alTop;
  Edit7.Text:='';
  Edit9.Text:='';
  Edit10.Text:='';
  Edit12.Text:='';
  s_kodp:=0;
  vndoc:=' ';
  DateEdit1.Date:=date;
  DateEdit2.Date:=date;
  vDate_dok:=DateEdit1.Date;
  vDate_op:=DateEdit2.Date;
  Label8.Caption:=VPostPol;
 end;
 DBGridEh1.Columns[6].FieldName:=vkol;
 Label10.Caption:=s_zag;
 IF NOT DM1.Document.Active THEN DM1.Document.Active:=true;
 vKlient_Id:=0;
 DM1.Document.Insert;
 DM1.Kart.Close;
 DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(VDOCUMENT_id);
 DM1.Kart.Open;
 st_kart:=0;
end;

procedure TFNew_Prix.MenuItem1Click(Sender: TObject);
begin
 frxReport1.LoadFromFile(reportsPath + 'P_act_ras_sod.fr3');
 FrxReport1.ShowReport;
end;

procedure TFNew_Prix.MenuItem2Click(Sender: TObject);
begin
 frxReport1.LoadFromFile(reportsPath + 'P_act_ras_obesp.fr3');
 FrxReport1.ShowReport;
end;

procedure TFNew_Prix.MenuItem3Click(Sender: TObject);
begin
 frxReport1.LoadFromFile(reportsPath + 'P_act_spisan.fr3');
 FrxReport1.ShowReport;
end;

procedure TFNew_Prix.SpeedButton5Click(Sender: TObject);
begin
 if FtipOp=nil then FTipOP:=TfTipOp.Create(Application);
 FTipOp.ShowModal;
 if FTipOp.ModalResult > 50 then
 begin
  Edit10.Text:=s_nam_Tip_Op;
  vTip_op_id:=FTipOp.ModalResult-50;
  DM1.Document.FieldByName('Tip_op_Id').AsInteger:= vTip_op_id;
 end;
end;

procedure TFNew_Prix.SpeedButton2Click(Sender: TObject);
begin
  vKlient_id:=0;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT rtrim(ltrim(DOC_OPER.LOOKUP)) lookup ');
  DM1.IBQuery1.SQL.Add('FROM DOC_OPER ');
  DM1.IBQuery1.SQL.Add('WHERE DOC_OPER.TIP_OP_ID=' + iNTTOSTR(VTIP_OP_ID)
                       + ' AND DOC_OPER.FIELD_DOK=' + '''' + 'KLIENT_ID' + '''');
  DM1.IBQuery1.Active := True;
  if (copy(DM1.IBQuery1.FieldByName('lookup').AsString, 1, 6) = 'SPRORG') then
  begin
    if (FindSprorg = nil) then
      FindSprorg := TfindSprorg.Create(Application);
    FindSprorg.DataBaseName := dm1.BELMED;
    FindSprorg.ReadOnly := true;
    FindSprorg.ShowModal;
    if (FindSprorg.ModalResult > 50) then
    begin
      Edit7.Text := FindSprorg.Org_Name;
      Edit12.Text := inttostr(FindSprorg.ModalResult - 50);
      vKlient_id := FindSprorg.ModalResult - 50;
    end;
  end
  else
    if (copy(DM1.IBQuery1.FieldByName('lookup').AsString, 1, 6) = 'MATROP') then
    begin
      if (FindMatrop = nil) then
        FindMatrop := TfindMatrop.Create(Application);
      FindMatrop.DataBaseName := dm1.BELMED;
      FindMatrop.ReadOnly := true;
      FindMatrop.ShowModal;
      if (FindMatrop.ModalResult > 50) then
      begin
        Edit7.Text := FindMatrop.IBMatropNMAT.AsString;
        Edit12.Text := inttostr(FindMatrop.ModalResult - 50);
        vKlient_id := FindMatrop.ModalResult - 50;
      end;
    end
    else
      if (copy(DM1.IBQuery1.FieldByName('lookup').AsString, 1, 5) = 'STRUK')
          OR (copy(DM1.IBQuery1.FieldByName('lookup').AsString, 1, 9) = 'CONFIGUMC')
          OR (copy(DM1.IBQuery1.FieldByName('lookup').AsString, 1, 9) = 'SKLAD') then
      begin
        if (FindStruk = nil) then
          FindStruk := TfindStruk.Create(Application);
        FindStruk.DataBaseName := dm1.BELMED;
        FindStruk.ReadOnly := true;
        FindStruk.ShowModal;
        if (FindStruk.ModalResult > 50) then
        begin
          Edit7.Text := FindStruk.name;
          Edit12.Text := FindStruk.kod;
          vKlient_id := FindStruk.ModalResult - 50;
        end;
      end
      else
        if (copy(DM1.IBQuery1.FieldByName('lookup').AsString, 1, 6) = 'SPPROD') then
        begin
          if (FindSpprod = nil) then
            FindSpprod := TfindSpprod.Create(Application);
          FindSpprod.DataBaseName := dm1.BELMED;
          FindSpprod.ReadOnly := true;
          FindSpprod.ShowModal;
          if (FindSpprod.ModalResult > 50) then
          begin
            Edit7.Text := FindSpprod.IBSpprodNMAT.AsString;
            Edit12.Text := inttostr(FindSpprod.ModalResult - 50);
            vKlient_id := FindSpprod.ModalResult - 50;
          end;
        end;
  DM1.Document.FieldByName('Klient_Id').AsInteger := vKlient_id;
end;

procedure TFNew_Prix.SpeedButton4Click(Sender: TObject);
begin
 if FtipDoc=nil then FTipDoc:=TfTipDoc.Create(Application);
 FTipDoc.ShowModal;
 if FTipDoc.ModalResult > 50 then
 begin
  Edit9.Text:=s_nam_Tip_Doc;
  vTip_doc_id:=FTipDoc.ModalResult-50;
  DM1.Document.FieldByName('Tip_dok_Id').AsInteger:= vTip_doc_id;
 end;
end;

procedure TFNew_Prix.DBGridEh1EditButtonClick(Sender: TObject);
var
nm :integer;
begin
  nm := 0;
if dbgrideh1.SelectedField.FieldName='SERIA' then nm:=1;
if dbgrideh1.SelectedField.FieldName='KSM_ID' then nm:=2;
//if dbgrideh1.SelectedField.FieldName='NEIS' then nm:=3;
if dbgrideh1.SelectedField.FieldName='KRAZ' then nm:=3;
DM1.Kart.Edit;
case nm of
1: begin
    if dm1.KartKSM_ID.AsInteger<>0 then
    begin
     DM1.Seria.Active :=False;
     DM1.Seria.ParamByName('ksm_id').AsInteger:=dm1.KartKSM_ID.AsInteger;
     dm1.Seria.Active:=true;
     dm1.Seria.First;
     if  not dm1.Seria.Eof then
     begin
      if FSer=nil then FSer:=TFSer.Create(Application);
      pr_ser:=0;
      FSer.ShowModal;
      if FSer.ModalResult > 50 then
      begin
       DM1.Kart.Edit;
       DM1.Kart.FieldByName('Srok_Godn').AsDateTime:=DM1.SeriaSrok_Godn.AsDateTime;
       DM1.Kart.FieldByName('Seria_Id').AsInteger:=DM1.SeriaSeria_Id.AsInteger;
       DM1.Kart.FieldByName('Seria').AsString:=DM1.SeriaSeria.AsString;
       vSeria_id:=FSer.ModalResult-50;
       s_seria:=DM1.SeriaSeria.AsString
      end;
     end
     else
     begin
      MessageDlg('Этого сырья нет в справочнике серий!', mtWarning, [mbOK], 0);
      vSeria_id:=0;
      s_seria:='';
     end;
    end
    else
    begin
     MessageDlg('Введите код сырья!', mtWarning, [mbOK], 0);
     Abort;
    end;
   end;
2: begin
    if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
    FindMatrop.DataBaseName:=dm1.BELMED;
    FindMatrop.ReadOnly:=true;
    FindMatrop.ShowModal;
    if FindMatrop.ModalResult > 50 then
    begin
     dM1.Matrop.Active:=false;
     dM1.Matrop.ParamByName('ksm').AsInteger:=FindMatrop.ModalResult-50;
     dM1.Matrop.Active:=TRUE;
     if not dm1.Matrop.eof then
     begin
      DM1.Kart.FieldByName('Ksm_Id').AsInteger :=dm1.Matrop.FieldByName('Ksm_id').AsInteger;
      dm1.Kart.FieldByName('Nmat').AsString:=dm1.Matrop.FieldByName('Nmat').AsString;
      DM1.Kart.FieldByName('Gost').AsString :=dm1.Matrop.FieldByName('Gost').AsString;
      DM1.Kart.FieldByName('Kei_Id').AsInteger :=dm1.Matrop.FieldByName('Kei_id').AsInteger;
      DM1.Kart.FieldByName('neis').AsString :=dm1.Matrop.FieldByName('Neis').AsString;
      DM1.Kart.FieldByName('Xarkt').AsString :=dm1.Matrop.FieldByName('Xarkt').AsString;
     end;
    end;
   end;
{3: begin
    if FEdiz=nil then FEdiz:=TFEdiz.Create(Application);
    FEdiz.ShowModal;
    if FEdiz.ModalResult > 50 then
    begin
     s_kei:=FEdiz.ModalResult-50;
     DM1.Kart.FieldByName('Kei_Id').AsInteger :=DM1.EdizKei_id.AsInteger;
     DM1.Kart.FieldByName('neis').AsString :=DM1.EdizNeis.AsString;
    end;
   end;}
3: begin
    if frazdel=nil then frazdel:=tfrazdel.Create(Application);
    frazdel.ShowModal;
    if s_razdel<>0 then
    begin
     dm1.Kart.FieldByName('KRAZ').value:=s_razdel;
     dm1.Kart.FieldByName('RAZDEL_ID').value:=dm1.RazdelRAZDEL_ID.AsInteger;
    end;
   end;
  end;
end;

procedure TFNew_Prix.ToolButton3Click(Sender: TObject);

begin
 DM1.Document.Edit;
 DM1.Document.FieldByName('Date_Dok').AsDateTime:=vDate_dok;
 DM1.Document.FieldByName('Date_op').AsDateTime:=vdate_op;
 If (DM1.Document.FieldByName('Klient_Id').AsInteger = 0) and (DM1.Document.FieldByName('Tip_op_Id').AsInteger<>32) then
 begin
  MessageDlg('Введите поставщика(получателя)!', mtWarning, [mbOK], 0);
  Abort;
 end;
 If DM1.Document.FieldByName('Ndok').AsString = '' then
 begin
  MessageDlg('Введите номер документа!', mtWarning, [mbOK], 0);
  Abort;
 end;
 If DM1.Document.FieldByName('Date_Dok').AsDateTime = 0 then
 begin
  MessageDlg('Введите дату документа!', mtWarning, [mbOK], 0);
  Abort;
 end;
 If DM1.Document.FieldByName('Tip_Dok_id').AsInteger = 0 then
 begin
  MessageDlg('Введите тип документа!', mtWarning, [mbOK], 0);
  Abort;
 end;
 If DM1.Document.FieldByName('Tip_op_id').AsInteger = 0 then
 begin
  MessageDlg('Введите тип операции!', mtWarning, [mbOK], 0);
  Abort;
 end;
 if (DM1.Seria.Modified) or (DM1.Seria.State =dsEdit) or (DM1.Seria.State =dsInsert) then
  DM1.Seria.Post;
 if (DM1.Document.Modified) or (DM1.Document.State =dsEdit) or (DM1.Document.State =dsInsert) then
  DM1.Document.Post;
 if (DM1.Kart.Modified) or (DM1.Kart.State =dsEdit) or (DM1.Kart.State =dsInsert) then
  DM1.Kart.Post;
 if (DM1.Ostatki.Modified) or (DM1.Ostatki.State =dsEdit) or (DM1.Ostatki.State =dsInsert) then
  DM1.Ostatki.Post;
 DM1.ApplyUpdatesDoc;
 MessageDlg('Данные записаны.', mtInformation,[mbOk], 0);
end;

procedure TFNew_Prix.ToolButton4Click(Sender: TObject);
begin
 if s_zag='Расход сырья в цехе' then
 begin
  Akt_ras.Active :=False;
  Akt_ras.ParamByName('doc_id').AsInteger:=vDocument_Id;
  Akt_ras.Active:=true;
  Akt_ras.First;
  PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
 end;
end;

procedure TFNew_Prix.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dm1.Kart.Close;
 dm1.Document.Close;
 DM1.IBT_WRITE.Active:=false;
 DM1.IBT_read.Active:=false;
 DM1.IBT_read.Active:=true;
end;

procedure TFNew_Prix.Edit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
v_sprav:string;
S_KL:STRING;
S_KL1:STRING;
S_KL2:STRING;
S_K1:STRING;
S_K2:STRING;
begin
 if key=vk_return then
 begin
  if edit12.text<>'' then
  begin
   v_sprav:='';
   S_KL:='';
   S_KL1:='';
   S_KL2:='';
   S_K1:='';
   S_K2:='';
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT DOC_OPER.LOOKUP ');
   DM1.IBQuery1.SQL.Add('FROM DOC_OPER ');
   DM1.IBQuery1.SQL.Add('WHERE DOC_OPER.TIP_OP_ID='+iNTTOSTR(VTIP_OP_ID)+' AND DOC_OPER.FIELD_DOK='+''''+'KLIENT_ID'+'''');
   DM1.IBQuery1.Active := True;
   v_sprav:=copy(DM1.IBQuery1.FieldByName('lookup').AsString,1,6);
   if v_sprav='SPRORG' then
   begin
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT S.KOD,S.NAM ');
    DM1.IBQuery1.SQL.Add('FROM SPRORG S ');
    DM1.IBQuery1.SQL.Add('WHERE S.KOD='+edit12.text);
    DM1.IBQuery1.Active := True;
    If not dm1.IBQuery1.Eof then
    BEGIN
     vKlient_id:=DM1.IBQuery1.FieldValues['KOD'];
     Edit7.Text:=DM1.IBQuery1.FieldValues['Nam'];
     DM1.Document.FieldByName('Klient_Id').AsInteger:=vklient_id;
    END
    ELSE
    BEGIN
     MessageDlg('Этого кода нет в справочнике организаций!', mtWarning, [mbOK], 0);
     Edit12.Text:='';
    END;
   END
   else
   begin
    if v_sprav='MATROP' then
    begin
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('SELECT M.KSM_ID,M.KEI_ID,M.NMAT,M.XARKT,M.GOST,E.NEIS ');
     DM1.IBQuery1.SQL.Add('FROM MATROP M,EDIZ E ');
     DM1.IBQuery1.SQL.Add('WHERE M.KSM_ID='+edit12.text);
     DM1.IBQuery1.SQL.Add(' AND M.KEI_ID=E.KEI_ID ');
     DM1.IBQuery1.Active := True;
     If not dm1.IBQuery1.Eof then
     BEGIN
      Edit7.Text:=DM1.IBQuery1.FieldValues['NMAT'];
      vKlient_id:=DM1.IBQuery1.FieldValues['KSM_ID'];
      DM1.Document.FieldByName('Klient_Id').AsInteger:=vklient_id;
     END
     ELSE
     BEGIN
      MessageDlg('Этого кода нет в справочнике сырья!', mtWarning, [mbOK], 0);
      Edit12.Text:='';
     END;
    end
    else
    begin
     if (v_sprav='STRUK ') OR (v_sprav='CONFIG') then
     begin
      S_KL:=COPY(edit12.text,1,6);
      IF (LENgth(TRIM(edit12.text))-6)>1 THEN
      begin
       S_K1:=COPY(edit12.text,8,2);
       if copy(s_k1,1,1)='0' then s_kl1:='s.buro='+copy(s_k1,2,1) else s_kl1:='s.buro='+s_k1;
      end
      else s_kl1:='s.buro is null';
      IF (LENgth(TRIM(edit12.text))-9)>1 THEN
      begin
       S_K2:=COPY(edit12.text,11,2);
       if copy(s_k2,1,1)='0' then s_kl2:='s.sector='+copy(s_k2,2,1) else s_kl2:='s.sector='+s_k2;
      end
      else s_kl2:='s.sector is null';;
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT S.STRUK_ID,S.KOD_STRUK,S.STNAME,S.BURO,S.SECTOR ');
      DM1.IBQuery1.SQL.Add('FROM STRUK S ');
      DM1.IBQuery1.SQL.Add('WHERE S.KOD_STRUK='+''''+S_KL+'''');
      DM1.IBQuery1.SQL.Add(' AND '+S_KL1);
      dm1.iBQuery1.SQL.Add(' AND '+S_KL2);
      dm1.iBQuery1.SQL.Add(' AND  dud is null');
      DM1.IBQuery1.Active := True;
      If not dm1.IBQuery1.Eof then
      BEGIN
       Edit7.Text:=DM1.IBQuery1.FieldValues['STNAME'];
       vKlient_id:=DM1.IBQuery1.FieldValues['STRUK_ID'];
       DM1.Document.FieldByName('Klient_Id').AsInteger:=vklient_id;
      END
      ELSE
      BEGIN
       MessageDlg('Этого кода нет в справочнике структурных подразделений!', mtWarning, [mbOK], 0);
       Edit12.Text:='';
      END;
     end
     else
     begin
      if v_sprav='SPPROD' then
      begin
       DM1.IBQuery1.Active := False;
       DM1.IBQuery1.SQL.Clear;
       DM1.IBQuery1.SQL.Add('SELECT M.KSM_ID,M.KEI_ID,M.NMAT,M.XARKT,M.GOST,E.NEIS ');
       DM1.IBQuery1.SQL.Add('FROM SPPROD M,EDIZ E ');
       DM1.IBQuery1.SQL.Add('WHERE M.KSM_ID='+edit12.text);
       DM1.IBQuery1.SQL.Add(' AND M.KEI_ID=E.KEI_ID ');
       DM1.IBQuery1.Active := True;
       If not dm1.IBQuery1.Eof then
       BEGIN
        Edit7.Text:=DM1.IBQuery1.FieldValues['NMAT'];
        vKlient_id:=DM1.IBQuery1.FieldValues['KSM_ID'];
        DM1.Document.FieldByName('Klient_Id').AsInteger:=vklient_id;
       END
       ELSE
       BEGIN
        MessageDlg('Этого кода нет в справочнике сырья!', mtWarning, [mbOK], 0);
        Edit12.Text:='';
       END;
      end ;
     end;
    end;
   end;
  end;
 end;

end;

procedure TFNew_Prix.Edit12Click(Sender: TObject);
begin
edit12.text:='';
end;

procedure TFNew_Prix.ToolButton1Click(Sender: TObject);
begin
 if not (copy(s_zag,1,13)='Ввод остатков') then
 begin
  vDocument_Id:=0;
  edit7.text:='';
  edit9.text:='';
  edit10.text:='';
  Edit12.Text:='';
  vKlient_Id:=0;
  dm1.Document.Insert;
  DM1.Kart.Close;
  DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(VDOCUMENT_id);
  DM1.Kart.Open;
  st_kart:=0;
  DM1.Kart.Insert;
 end
 else DM1.Kart.Insert;

end;

procedure TFNew_Prix.DateEdit1Change(Sender: TObject);
begin
vDate_dok:=DateEdit1.Date;
end;

procedure TFNew_Prix.DateEdit2Change(Sender: TObject);
begin
 vDate_op:=DateEdit2.Date;
end;

end.
