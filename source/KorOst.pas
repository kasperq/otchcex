unit KorOst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ImgList, Spin, Buttons, ComCtrls, ToolWin,
  DB, IBCustomDataSet, IBQuery, RxIBQuery, IBUpdateSQL, IBUpdSQLW, Grids,
  DBGridEh, Mask, DBCtrlsEh, DBCtrls, ToolEdit,SplshWnd, FR_DSet, FR_DBSet,
  Menus, FR_Class,RxStrUtils;

type
  TFKartOst = class(TForm)
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ImageList2: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGridEh3: TDBGridEh;
    Kart_Ost: TRxIBQuery;
    DSKartOst: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Panel2: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    ToolButton4: TToolButton;
    DBText1: TDBText;
    Label33: TLabel;
    DateEdit3: TDateEdit;
    Label35: TLabel;
    DateEdit2: TDateEdit;
    Kart_OstOSTATOK_BEGIN_S: TFMTBCDField;
    Kart_OstOSTATOK_BEGIN_NZ: TFMTBCDField;
    Kart_OstPRIX_PERIOD: TFMTBCDField;
    Kart_OstRASX_PERIOD: TFMTBCDField;
    Kart_OstOSTATOK_END_S: TFMTBCDField;
    Kart_OstOSTATOK_END_NZ: TFMTBCDField;
    Kart_OstZAG_PERIOD: TFMTBCDField;
    Kart_OstKRAZ: TSmallintField;
    Kart_OstNEIS: TIBStringField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    Label24: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton4Click(Sender: TObject);
    procedure DateEdit3Change(Sender: TObject);
    procedure DateEdit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure KartSost;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKartOst: TFKartOst;
  Usl: string;
implementation
  uses dm, Find_Spprod, razdel, Find_Matrop, New_Prix;
{$R *.dfm}

procedure TFKartOst.KartSost;
begin
 Splash := ShowSplashWindow(AniBmp1,'Загрузка данных. Подождите, пожалуйста...', True, nil);
Usl_Dat:=' WHERE OSTATKI.STRUK_ID='+INTTOSTR(Vstruk_id)+' and (Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')';
DM1.Kart.Close;
IF (EDIT2.Text='') OR (EDIT3.Text='') THEN
BEGIN
 FKartOst.DBGridEh3.Columns[4].FieldName:='Kol_prih';
 FKartOst.DBGridEh3.Columns[5].FieldName:='Kol_rash';
 FKartOst.DBGridEh3.Columns[6].FieldName:='Neis';
 EDIT3.Text:='';
 EDIT2.Text:='';
 s_kodp:=0;
 usl:=' and kart.ksm_id='+inttostr(s_ksm)
 +' AND (OSTATKI.KSM_IDPR IS NULL OR OSTATKI.KSM_IDPR=0)';
 usl_ksm:=' WHERE ost.STRUK_ID='+INTTOSTR(Vstruk_id)+' and ost.ksm_id='+INTtostr(s_ksm)+' AND (ost.KSM_IDPR IS NULL OR ost.KSM_IDPR=0)';
END
ELSE
begin
 FKartOst.DBGridEh3.Columns[4].FieldName:='Kol_prih_ediz';
 FKartOst.DBGridEh3.Columns[5].FieldName:='Kol_rash_ediz';
 FKartOst.DBGridEh3.Columns[6].FieldName:='Neisn';
 usl:=' and kart.ksm_id='+INTtostr(s_ksm)
 +' and OSTATKI.KSM_IDPR='+INTTOSTR(S_KODP)
 +' AND OSTATKI.RAZDEL_ID='+INTTOSTR(V_rAZDEL);
 usl_ksm:=' WHERE ost.STRUK_ID='+INTTOSTR(Vstruk_id)+' and ost.ksm_id='+INTtostr(s_ksm)+' and ost.KSM_IDPR='+INTTOSTR(S_KODP)+' AND ost.RAZDEL_ID='+INTTOSTR(V_rAZDEL);
end;
DM1.Kart.MacroByName('USL').AsString:=usl_dat+USL;
DM1.Kart.Open;
Kart_Ost.Close;
Kart_Ost.MacroByName('DAT1').AsString:=''''+s_dat1+'''';
Kart_Ost.MacroByName('DAT2').AsString:=''''+s_dat2+'''';
Kart_Ost.MacroByName('USL').AsString:=usl_ksm;
Kart_Ost.ParamByName('kodp').AsInteger:=s_kodp;
Kart_OST.Open;
Splash.Free;
end;

procedure TFKartOst.SpeedButton2Click(Sender: TObject);
begin
 if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
 FindSpprod.DataBaseName:=dm1.BELMED;
 FindSpprod.ReadOnly:=true;
 FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
 FindSpprod.ShowModal;
 if FindSpprod.ModalResult > 50 then
 begin
  EDIT2.OnChange:=nil;
  edit2.text:=FindSpprod.IBSpprodKod_Prod.Asstring;
  EDIT2.OnChange:=Edit2Change;
  s_kodp:=FindSpprod.ModalResult-50;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,SPPROD.SPROD_ID,spprod.volumf,spprod.vol_ov,');
  DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,SPPROD.LEK_ID,SPFORMV.NAMEFv,region.nam nam_reg');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KSM_ID='+INTTOSTR(FindSpprod.ModalResult-50));
  DM1.IBQuery1.Active := True;
  label17.Caption:=dm1.IBQuery1.FieldByName('Nam_reg').AsString;
  label4.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  label13.Caption:=DM1.IBQuery1.FieldByName('NAM').AsString;
  label15.Caption:=DM1.IBQuery1.FieldByName('XARKT').AsString;
//  KartSost;
 end;
end;

procedure TFKartOst.SpeedButton3Click(Sender: TObject);
begin
 if frazdel=nil then frazdel:=tfrazdel.Create(Application);
 frazdel.ShowModal;
 if s_razdel<>0 then
  begin
   v_razdel:=dm1.RazdelRAZDEL_ID.AsInteger;
   Edit3.Text:=inttostr(s_razdel);
   label7.Caption:=dm1.RazdelNamraz.AsString;
//   KartSost;
  end;
end;

procedure TFKartOst.SpeedButton1Click(Sender: TObject);
begin
edit1.Text:='';
dm1.Kart.Close;
kart_ost.Close;
if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
 FindMatrop.DataBaseName:=dm1.BELMED;
 FindMatrop.ReadOnly:=true;
 FindMatrop.ShowModal;
 if FindMatrop.ModalResult > 50 then
 begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=FindMatrop.ModalResult-50;
  dM1.Matrop.Active:=TRUE;
  Edit1.Text :=INTTOSTR(FindMatrop.ModalResult-50);
  s_ksm:=FindMatrop.ModalResult-50;
  Label9.Caption :=dm1.MatropGOST.AsString;
  Label3.Caption:=dm1.MatropNMAT.AsString;
  Label11.Caption :=dm1.MatropXARKT.AsString;
 end;
end;

procedure TFKartOst.Edit2Change(Sender: TObject);
begin
 if edit2.text<>''   then
 begin
  skod:=replacestr(edit1.text,',','.')+'%';
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,SPPROD.SPROD_ID,SPPROD.VOL_ov,SPPROD.VOLumf,');
  DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,SPPROD.LEK_ID,SPFORMV.NAMEFv,region.nam nam_reg');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+skod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
  DM1.IBQuery1.Active := True;
  if not dm1.IBQuery1.Eof then
  begin
   Label4.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label15.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
   Label17.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  end
  else
  begin
   Label15.Caption:='';
   Label17.Caption:='';
   Label4.Caption:='';
  end;
 end;
end;

procedure TFKartOst.Edit2Click(Sender: TObject);
begin
edit2.text:='';
label4.Caption:='';
label17.Caption:='';
label7.Caption:='';
label13.Caption:='';
label15.Caption:='';
Edit2.Text:='';
Edit3.Text:='';
s_kodp:=0;
end;

procedure TFKartOst.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
  if (edit2.text<>'') and (not dm1.IBQuery1.Eof)  then
  begin
   EDIT2.OnChange:=nil;
   edit2.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
   EDIT2.OnChange:=Edit2Change;
   s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
   label17.Caption:=dm1.IBQuery1.FieldByName('Nam_reg').AsString;
   label4.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
   label13.Caption:=DM1.IBQuery1.FieldByName('NAM').AsString;
   label15.Caption:=DM1.IBQuery1.FieldByName('XARKT').AsString;
//   KartSost;
  end;
 end;
end; 
procedure TFKartOst.Edit1Click(Sender: TObject);
begin
edit1.text:='';
dm1.Kart.Close;
kart_ost.Close;
end;

procedure TFKartOst.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
  if edit1.text<>''  then
  begin
   dM1.Matrop.Active:=false;
   dM1.Matrop.ParamByName('ksm').AsInteger:=strtoint(edit1.text);
   dM1.Matrop.Active:=TRUE;
   if not dm1.Matrop.eof then
   begin
    s_ksm:=strtoint(edit1.text);
    Label3.Caption:=dm1.Matrop.FieldByName('Nmat').AsString;
   end;
  end;
 end;
end;

procedure TFKartOst.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
 begin
  if (edit3.text<>'') then
  begin
   if not dm1.Razdel.Active then  dm1.Razdel.Active:=true;
   if dm1.Razdel.Locate('kraz',strtoint(edit3.text),[]) then
   begin
    v_razdel:=dm1.RazdelRAZDEL_ID.AsInteger;
    label7.Caption:=dm1.RazdelNamraz.AsString;
//    KartSost;
   end;
  end;
 end;
end;

procedure TFKartOst.ToolButton4Click(Sender: TObject);
begin
 IF EDIT1.Text<>''  THEN KartSost;
end;

procedure TFKartOst.ToolButton5Click(Sender: TObject);
begin
 IF EDIT1.Text<>''  THEN
 begin
  KartSost;
  DM1.Kart.DisableControls;
  IF (EDIT2.Text='') OR (EDIT3.Text='') THEN
  BEGIN
   FrReport1.LoadFromFile(reportsPath + 'P_Kart_syr.frf');
   FrReport1.ShowReport;
  end
  else
  begin
   FrReport1.LoadFromFile(reportsPath + 'P_Kart.frf');
   FrReport1.ShowReport
  end;
  DM1.Kart.EnableControls;
 end;
end;

procedure TFKartOst.DateEdit3Change(Sender: TObject);
begin
s_dat1:=datetostr(DateEdit3.Date);
s_dat2:=datetostr(DateEdit2.Date);
IF EDIT1.Text<>''  THEN KartSost;
end;
procedure TFKartOst.DateEdit2Change(Sender: TObject);
begin
s_dat1:=datetostr(DateEdit3.Date);
s_dat2:=datetostr(DateEdit2.Date);
IF EDIT1.Text<>''  THEN KartSost;
end;

procedure TFKartOst.FormShow(Sender: TObject);
begin
 if DM1.KART.Active then DM1.KART.Active:=false;
 DateEdit3.OnChange:=nil;
 DateEdit2.OnChange:=nil;
 DateEdit3.Date:=strtodate(s_dat1);
 DateEdit2.Date:=date;
 DateEdit3.OnChange:=DateEdit3Change;
 DateEdit2.OnChange:=DateEdit2Change;
 USL_SORT:=' ORDER BY DOCUMENT.DATE_DOK';
 label9.Caption:='';
 label3.Caption:='';
 label4.Caption:='';
 label17.Caption:='';
 label7.Caption:='';
 label13.Caption:='';
 label15.Caption:='';
 label11.Caption:='';
 Edit1.Text:='';
 Edit2.Text:='';
 Edit3.Text:='';

end;

procedure TFKartOst.frReport1GetValue(const ParName: string;
  var ParValue: Variant);
begin
 if ParName='namceh' then ParValue:=s_namcex;
 if ParName='l_nmat' then ParValue:=label3.Caption;
 if ParName='neis' then ParValue:=dbtext1.Caption;
 if ParName='kod' then ParValue:=edit1.Text;
 if ParName='dat1' then ParValue:=s_dat1;
 if ParName='dat2' then ParValue:=s_dat2;
 if ParName='namprep' then ParValue:=label4.Caption;
 if ParName='namrazdel' then ParValue:=label7.Caption;
 if ParName='kodp' then ParValue:=edit2.Text;
 
end;

procedure TFKartOst.Edit3Click(Sender: TObject);
begin
EDIT3.Text:='';
end;

end.

