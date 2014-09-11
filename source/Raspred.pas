unit Raspred;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, StdCtrls, ToolWin, Grids, DBGridEh, Menus,
  FindDlgEh, DB, IBCustomDataSet,IBQuery,Math,IBStoredProc,
  UtilR,UtilRIB,RxIBQuery, IBUpdateSQL, IBUpdSQLW, Mask, DBCtrls, Buttons,
  ExtCtrls, RxMemDS,SplshWnd, Spin;

type
  TFRaspred = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton6: TToolButton;
    ToolButton3: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGridEh1: TDBGridEh;
    ImageList1: TImageList;
    FindDlgEh1: TFindDlgEh;
    PopupMenu1: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    ToolButton7: TToolButton;
    DSRaspSyr: TDataSource;
    RaspSyr: TRxIBQuery;
    RaspSyrUpdate: TIBUpdateSQLW;
    RaspSyrDATE_DOK: TDateField;
    RaspSyrKLIENT_ID: TIntegerField;
    RaspSyrDOC_ID: TIntegerField;
    RaspSyrTIP_DOK_ID: TSmallintField;
    RaspSyrSTRUK_ID: TSmallintField;
    RaspSyrKOD_PROD: TIBStringField;
    RaspSyrNMAT: TIBStringField;
    RaspSyrXARKT: TIBStringField;
    RaspSyrSERIA: TIBStringField;
    RaspSyrNEIS: TIBStringField;
    RaspSyrGR_OP_ID: TSmallintField;
    RaspSyrTIP_OP_ID: TSmallintField;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    N1: TMenuItem;
    IBOtkudaPered: TIBQuery;
    IBKudaPered: TIBQuery;
    IBOtkudaPeredTIP_OP_ID: TSmallintField;
    IBOtkudaPeredKLIENT_ID: TIntegerField;
    IBOtkudaPeredKOD_PROD: TIBStringField;
    IBOtkudaPeredKEI_PREP: TSmallintField;
    IBOtkudaPeredXARKT: TIBStringField;
    IBOtkudaPeredNMAT: TIBStringField;
    IBOtkudaPeredSTRUK_ID: TSmallintField;
    IBOtkudaPeredDATE_DOK: TDateField;
    IBOtkudaPeredDOC_ID: TIntegerField;
    IBOtkudaPeredKSM_ID: TIntegerField;
    IBOtkudaPeredKART_ID: TSmallintField;
    IBOtkudaPeredOT_S: TFMTBCDField;
    IBOtkudaPeredOT_NZ: TFMTBCDField;
    IBOtkudaPeredRAZDEL_ID: TSmallintField;
    IBOtkudaPeredKRAZ: TSmallintField;
    IBOtkudaPeredKEI_ID_SYR: TSmallintField;
    IBOtkudaPeredKSM_IDPR: TIntegerField;
    IBOtkudaPeredNEIS: TIBStringField;
    IBKudaPeredTIP_OP_ID: TSmallintField;
    IBKudaPeredKLIENT_ID: TIntegerField;
    IBKudaPeredKOD_PROD: TIBStringField;
    IBKudaPeredKEI_PREP: TSmallintField;
    IBKudaPeredXARKT: TIBStringField;
    IBKudaPeredNMAT: TIBStringField;
    IBKudaPeredSTRUK_ID: TSmallintField;
    IBKudaPeredDATE_DOK: TDateField;
    IBKudaPeredDOC_ID: TIntegerField;
    IBKudaPeredKSM_ID: TIntegerField;
    IBKudaPeredKART_ID: TSmallintField;
    IBKudaPeredPARENT: TIntegerField;
    IBKudaPeredOT_S: TFMTBCDField;
    IBKudaPeredOT_NZ: TFMTBCDField;
    IBKudaPeredRAZDEL_ID: TSmallintField;
    IBKudaPeredKEI_ID_SYR: TSmallintField;
    IBKudaPeredSTNAME: TIBStringField;
    IBKudaPeredKRAZ: TSmallintField;
    IBKudaPeredKSM_IDPR: TIntegerField;
    IBKudaPeredNEIS: TIBStringField;
    RaspSyrRAZDEL_ID: TSmallintField;
    RaspSyrKRAZ: TSmallintField;
    Peredano: TRxMemoryData;
    DSPeredano: TDataSource;
    Peredanokraz: TIntegerField;
    PeredanoNMAT: TStringField;
    PeredanoXARKT: TStringField;
    PeredanoKOD_PROD: TStringField;
    Peredanokol_rash: TFloatField;
    Peredanoneis: TStringField;
    PeredanoTip_op_id: TIntegerField;
    Peredanostroka_id: TIntegerField;
    Peredanoklient_id: TIntegerField;
    Peredanokraz1: TIntegerField;
    Peredanokod1: TStringField;
    Peredanonaz1: TStringField;
    Panel1: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label16: TLabel;
    Label18: TLabel;
    PeredanoOt_s: TFloatField;
    PeredanoOt_nz: TFloatField;
    PeredanoOt_s1: TFloatField;
    PeredanoOt_nz1: TFloatField;
    IBOtkudaPeredSTROKA_ID: TIntegerField;
    IBKudaPeredSTROKA_ID: TIntegerField;
    RaspSyrSTROKA_ID: TIntegerField;
    FindDlgEh2: TFindDlgEh;
    FindDlgEh3: TFindDlgEh;
    Panel2: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label5: TLabel;
    Label26: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Label28: TLabel;
    Label31: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    RaspSyrKEI_IDN: TSmallintField;
    RaspSyrNEIZN: TIBStringField;
    RaspSyrNDOK: TIBStringField;
    Label4: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    RaspSyrKOL_PRIH_EDIZ: TFloatField;
    RaspSyrKOL_RASH_EDIZ: TFloatField;
    IBOtkudaPeredKOL_PRIH_EDIZ: TFloatField;
    IBOtkudaPeredKOL_RASH_EDIZ: TFloatField;
    IBOtkudaPeredPARENT: TIntegerField;
    IBKudaPeredKOL_PRIH_EDIZ: TFloatField;
    IBKudaPeredKOL_RASH_EDIZ: TFloatField;
    RaspSyrONM_S: TFMTBCDField;
    RaspSyrONM_NZ: TFMTBCDField;
    RaspSyrkot_s: TFloatField;
    RaspSyrkot_nz: TFloatField;
    SpeedButton2: TSpeedButton;
    RaspSyrKART_ID: TIntegerField;
    RaspSyrKSM_ID: TIntegerField;
    RaspSyrOT_S: TFloatField;
    RaspSyrOT_NZ: TFloatField;
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton7Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure RaspSyrBeforePost(DataSet: TDataSet);
    procedure RaspSyrBeforeInsert(DataSet: TDataSet);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure RaspSyrKOD_PRODValidate(Sender: TField);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RaspSyrKRAZValidate(Sender: TField);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure RaspSyrNewRecord(DataSet: TDataSet);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SostRaspred;
    procedure RaspSyrCalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRaspred: TFRaspred;
  Splash: TForm;
  nm :integer;
implementation
   uses dm, Find_Matrop, Vipusk,VibPrep,glmenu, Find_Spprod, razdel,
  Find_Struk, Dob_peredano, ediz,SprFormul,VybPrep;
{$R *.dfm}

procedure TFRaspred.SostRaspred;

begin
 dm1.Kart.Close;
 dm1.Document.Close;
 dm1.Ostatki.Close;
 DM1.IBT_WRITE.Active:=false;
 DM1.IBT_read.Active:=false;
 DM1.IBT_read.Active:=true;
 Splash := ShowSplashWindow(AniBmp1,
 'Загрузка данных. Подождите, пожалуйста...', True, nil);
 dm1.IBQueryNorm.Active := False;
 dm1.IBQueryNorm.SQL.Clear;
 dm1.IBQueryNorm.SQL.Add('SELECT OSTATKI.OSTATOK_END_S ot_s,OSTATKI.OSTATOK_END_NZ ot_nz ');
 dm1.IBQueryNorm.SQL.Add(' FROM SELECT_OST_KSM ('+''''+s_dat1+''''+','+''''+s_dat2+''''+',0,'+inttostr(VSTRUK_ID)+','+inttostr(S_KSM)+') OSTATKI ');
 dm1.IBQueryNorm.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_KSM)
 +' and (OSTATKI.KSM_IDPR IS NULL or OSTATKI.KSM_IDPR=0) and ostatki.struk_id='+inttostr(vStruk_id));
 dm1.IBQueryNorm.Active := True;
 if not dm1.IBQueryNorm.Eof then
   label2.Caption:=floattostr(dm1.IBQueryNorm.FieldByName('OT_S').AsFloat)
 else label2.Caption:='0';
 Usl_Dat:=' Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
 Usl_Struk:=' Document.Struk_id='+inttostr(vStruk_id);
 if PageControl1.ActivePage=tabsheet1 then
 begin
  vTip_Op_Id:=30;
  vNDoc:='Рп-';
  Usl_TIP:=' (document.Tip_Op_Id=30)';
  Usl_GROP:=' kart.parent is null and kart.kol_rash<>0 and kart.ksm_id='+inttostr(s_ksm);
 end;
 if PageControl1.ActivePage=tabsheet2 then
 begin
  vNDoc:='Рв-';
  vTip_Op_Id:=35;
  Usl_TIP:=' document.Tip_Op_Id=35';
  Usl_GROP:=' ostatki.ksm_idpr<>0 and kart.Kol_prih=0 and kart.kol_rash<>0 and kart.ksm_id='+inttostr(s_ksm);
 end;
 if PageControl1.ActivePage=tabsheet3 then
 begin
  vNDoc:='Рз-';
  vTip_Op_Id:=33;
  Usl_TIP:=' document.Tip_Op_Id=33';
  Usl_GROP:=' ostatki.ksm_idpr<>0 and kart.Kol_prih=0 and kart.kol_rash<>0 and kart.ksm_id='+inttostr(s_ksm);
//   Usl_GROP:=' ostatki.ksm_idpr<>0 and kart.Kol_prih=0 and kart.ksm_id='+inttostr(s_ksm);
 end;
 if PageControl1.ActivePage=tabsheet4 then
 begin
  IBOtkudaPered.Close;
  IBOtkudaPered.ParamByName('KSM').AsInteger:=s_ksm;
  IBOtkudaPered.ParamByName('cex').AsInteger:=vStruk_id;
  IBOtkudaPered.ParamByName('dat1').AsString:=s_dat1;
  IBOtkudaPered.ParamByName('dat2').AsString:=S_dat2;
  IBOtkudaPered.Open;
  IBkudaPered.Close;
  IBkudaPered.ParamByName('KSM').AsInteger:=s_ksm;
  IBkudaPered.ParamByName('cex').AsInteger:=vStruk_id;
  IBkudaPered.ParamByName('dat1').AsString:=s_dat1;
  IBkudaPered.ParamByName('dat2').AsString:=S_dat2;
  IBkudaPered.Open;
  PEREDANO.EmptyTable;
  PEREDANO.Close;
  DBGRIDEH3.Refresh;
  PEREDANO.Active := True;
  PEREDANO.LoadFromDataSet(IBOtkudaPered,0,lmAppend);
  PEREdANO.First;
  PEREDANO.DisableControls;
  While not PEREDANO.Eof do
  begin
   IF (PEREDANO.FieldByName('TIP_OP_ID').AsInteger=34) OR (PEREDANO.FieldByName('tIP_OP_ID').AsInteger=37) THEN
   BEGIN
    IBkudaPered.First;
    IF IBkudaPered.Locate('PARENT',PEREDANO.FieldByName('STROKA_ID').ASInteger,[]) THEN
    BEGIN
     PEREDANO.Edit;
     PEREDANO.FieldByName('KRAZ1').ASInteger :=IBkudaPered.FieldByName('KRAZ').ASInteger;
     PEREDANO.FieldByName('KOD1').ASString :=IBkudaPered.FieldByName('KOD_PROD').ASsTRING;
     PEREDANO.FieldByName('NAZ1').ASstring :=IBkudaPered.FieldByName('NMAT').ASString;
     PEREDANO.FieldByName('ot_s1').ASFloat :=IBkudaPered.FieldByName('OT_S').ASFloat;
     PEREDANO.FieldByName('ot_nz1').ASFloat :=IBkudaPered.FieldByName('OT_NZ').ASFloat;
     PEREDANO.Post;
    END;
   END;
   IF (PEREDANO.FieldByName('TIP_OP_ID').AsInteger=8) THEN
   BEGIN
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT STRUK.STKOD,STRUK.STNAME ');
    DM1.IBQuery1.SQL.Add('FROM STRUK ');
    DM1.IBQuery1.SQL.Add('WHERE STRUK.STRUK_ID='+INTTOSTR(PEREDANO.FieldByName('KLIENT_ID').ASINTEGER));
    DM1.IBQuery1.Active := True;
    PEREDANO.Edit;
    PEREDANO.FieldByName('KOD1').ASstring :=DM1.IBQuery1.FieldByName('STKOD').ASsTRING;
    PEREDANO.FieldByName('NAZ1').ASstring :=DM1.IBQuery1.FieldByName('STNAME').ASsTRING;
    PEREDANO.FieldByName('ot_s1').ASFloat :=IBkudaPered.FieldByName('OT_S').ASFloat;
    PEREDANO.FieldByName('ot_nz1').ASFloat :=IBkudaPered.FieldByName('OT_NZ').ASFloat;
    PEREDANO.Post;
   END;
   PEREDANO.Next;
  end;
  PEREDANO.First;
  PEREDANO.EnableControls;
  DBGRIDEH4.Refresh;
 end;
 if PageControl1.ActivePage<>tabsheet4 then
 begin
  RaspSyr.Active := False;
  RaspSyr.MacroByName('SDAT').AsString:=Usl_DAT;;
  RaspSyr.MacroByName('STIP').AsString:=Usl_TIP;
  RaspSyr.MacroByName('KSM').AsString:=Usl_GROP;
  RaspSyr.ParamByName('DAT1').AsDateTime:=strtodate(S_DAT1);
  RaspSyr.ParamByName('DAT2').AsDateTime:=strtodate(S_DAT2);
  RaspSyr.ParamByName('CEX').AsInteger:=vStruk_Id;
  RaspSyr.ParamByName('ksm_m').AsInteger:= S_Ksm;
  RaspSyr.Active := True;
  RaspSyr.First;
  while not RaspSyr.Eof do
  begin
   RaspSyr.Edit;
   RaspSyrkOt_s.ASFLOAT:=RaspSyr.FieldByName('Ot_s').AsFloat*dm1.Koef_per(RaspSyrKei_idn.AsInteger,s_Kei,s_ksm);
   RaspSyrkOt_Nz.ASFLOAT:=RaspSyr.FieldByName('Ot_nz').AsFloat*dm1.Koef_per(RaspSyrKei_idn.AsInteger,s_Kei,s_Ksm);
   RaspSyr.Post;
   RaspSyr.Next;
  end;
 end;
 Splash.Free;
 DBgridEh1.Refresh;
end;

procedure TFRaspred.ToolButton4Click(Sender: TObject);
begin
If FindDlgEh1.Filtered Then FindDlgEh1.Filtered := False;
  FindDlgEh1.ShowFindResult := not (FindDlgEh1.Execute  = mrCancel);
end;

procedure TFRaspred.ToolButton6Click(Sender: TObject);
begin
PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFRaspred.Edit1Click(Sender: TObject);
begin
edit1.text:='';
end;

procedure TFRaspred.Edit1KeyDown(Sender: TObject; var Key: Word;
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
     s_nmat:=dm1.Matrop.FieldByName('Nmat').AsString;
     s_kei :=dm1.Matrop.FieldByName('Kei_id').AsInteger;
     s_Xarkt :=dm1.Matrop.FieldByName('Xarkt').AsString;
     Label5.Caption:=dm1.Matrop.FieldByName('Nmat').AsString;
     Label10.Caption :=dm1.Matrop.FieldByName('Gost').AsString;
     Label12.Caption :=dm1.Matrop.FieldByName('Neis').AsString;
     Label9.Caption :=dm1.Matrop.FieldByName('Xarkt').AsString;
     Usl_Dat:=' Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
     Usl_Struk:=' Document.Struk_id='+inttostr(vStruk_id);
     SostRaspred;
    end
    else
     showMessage('Нет такого кода! Воспользуйтесь справочником!');
   end;
 end;
end;
procedure TFRaspred.ToolButton7Click(Sender: TObject);
begin
if Fvybprep=nil then Fvybprep:=tFvybprep.Create(Application);
 Fvybprep.ShowModal;
end;

procedure TFRaspred.N4Click(Sender: TObject);
begin
 if s_ksm<>0 then
 begin
  pr_raspred:=1;
  dm1.RaspredSyr;
  Usl_Dat:=' Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
  Usl_TIP:=' (Document.Tip_Op_Id=30 or document.Tip_op_id=21)';
  Usl_Struk:=' Document.Struk_id='+inttostr(vStruk_id);
  Usl_GROP:=' ostatki.ksm_idpr<>0 and kart.Kol_prih<>0 and kart.kol_rash=0 and kart.ksm_id='+inttostr(s_ksm);
  RaspSyr.Active := False;
  RaspSyr.MacroByName('SDAT').AsString:= Usl_DAT;
  RaspSyr.MacroByName('STIP').AsString:= Usl_TIP;
  RaspSyr.MacroByName('KSM').AsString:= Usl_GROP;
  RaspSyr.ParamByName('DAT1').AsDateTime:=strtodate(S_DAT1);
  RaspSyr.ParamByName('DAT2').AsDateTime:=strtodate(S_DAT2);
  RaspSyr.ParamByName('CEX').AsInteger:=vStruk_Id;
  RaspSyr.ParamByName('ksm_m').AsInteger:= S_Ksm;
  RaspSyr.Active := True;
  PageControl1.ActivePage:=tabsheet1;
 end; 
end;

procedure TFRaspred.FormCreate(Sender: TObject);
begin
 LABEL5.Caption:='';
 LABEL6.Caption:='';
 LABEL9.Caption:='';
 LABEL10.Caption:='';
 LABEL11.Caption:='';
 LABEL12.Caption:='';
 LABEL2.Caption:='';
// s_ksm:=0;
end;

procedure TFRaspred.FormShow(Sender: TObject);
begin
// ss_kodp:=s_kodp;
// s_kodp:=0;
 DM1.Kart.BeforePost:=NIL;
 DM1.Kart.BeforeClose:=NIL;
 SpinEdit3.Value:=mes;
 SpinEdit4.Value:=god;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 vTip_doc_id:=37;
 if s_ksm=0 then
 begin
  Edit1.Text:='';
  if RaspSyr.Active = true then RaspSyr.Active := False;
  PageControl1.OnChange:=nil;
  PageControl1.ActivePage:=tabsheet3;
  PageControl1.OnChange:=PageControl1Change;
 end
 else
 begin
    Edit1.Text:=inttostr(s_ksm);dM1.Matrop.Active:=false;
    dM1.Matrop.ParamByName('ksm').AsInteger:=strtoint(edit1.text);
    dM1.Matrop.Active:=TRUE;
    if not dm1.Matrop.eof then
    begin
     s_ksm:=strtoint(edit1.text);
     s_nmat:=dm1.Matrop.FieldByName('Nmat').AsString;
     s_kei :=dm1.Matrop.FieldByName('Kei_id').AsInteger;
     s_Xarkt :=dm1.Matrop.FieldByName('Xarkt').AsString;
     Label5.Caption:=dm1.Matrop.FieldByName('Nmat').AsString;
     Label10.Caption :=dm1.Matrop.FieldByName('Gost').AsString;
     Label12.Caption :=dm1.Matrop.FieldByName('Neis').AsString;
     Label9.Caption :=dm1.Matrop.FieldByName('Xarkt').AsString;
     Usl_Dat:=' Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
     Usl_Struk:=' Document.Struk_id='+inttostr(vStruk_id);
     PageControl1.OnChange:=nil;
     PageControl1.ActivePage:=tabsheet3;
     PageControl1.OnChange:=PageControl1Change;
     SostRaspred;
    end;
 end ;
{ DM1.Kart.BeforePost:=NIL;
 DM1.Kart.BeforeClose:=NIL;
 SpinEdit3.Value:=mes;
 SpinEdit4.Value:=god;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 vTip_doc_id:=37;
 if Edit1.Text<>'' then
 begin
  s_ksm:=strtoint(Edit1.Text);
  vTip_op_id:=30;
  vNdoc:='Рп-';
  Usl_Dat:=' Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
  Usl_TIP:=' (Document.Tip_Op_Id=30 or document.Tip_op_id=21)';
  Usl_Struk:=' Document.Struk_id='+inttostr(vStruk_id);
  Usl_GROP:=' ostatki.ksm_idpr<>0 and kart.Kol_prih<>0 and kart.kol_rash=0 and kart.ksm_id='+inttostr(s_ksm);
  RaspSyr.Active := False;
  RaspSyr.MacroByName('SDAT').AsString:= Usl_DAT;
  RaspSyr.MacroByName('STIP').AsString:= Usl_TIP;
  RaspSyr.MacroByName('KSM').AsString:= Usl_GROP;
  RaspSyr.ParamByName('DAT1').AsDateTime:=strtodate(S_DAT1);
  RaspSyr.ParamByName('DAT2').AsDateTime:=strtodate(S_DAT2);
  RaspSyr.ParamByName('CEX').AsInteger:=vStruk_Id;
  RaspSyr.ParamByName('ksm_m').AsInteger:= S_Ksm;
  RaspSyr.Active := True;
 end
 else RaspSyr.Active := False;
 PageControl1.ActivePage:=tabsheet3; }

end;

procedure TFRaspred.PageControl1Change(Sender: TObject);
begin
 SostRaspred;
end;

procedure TFRaspred.N5Click(Sender: TObject);

begin
if s_ksm<>0 then
 begin
  pr_raspred:=1;
  dm1.RaspredZag;
  Usl_Dat:=' Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
  Usl_TIP:=' Document.Tip_Op_Id=33';
  Usl_Struk:=' Document.Struk_id='+inttostr(vStruk_id);
  Usl_GROP:=' ostatki.ksm_idpr<>0 and kart.Kol_rash<>0 and kart.kol_prih=0 and kart.ksm_id='+inttostr(s_ksm);
  RaspSyr.Active := False;
  RaspSyr.MacroByName('SDAT').AsString:= Usl_DAT;
  RaspSyr.MacroByName('STIP').AsString:= Usl_TIP;
  RaspSyr.MacroByName('KSM').AsString:= Usl_GROP;
  RaspSyr.ParamByName('DAT1').AsDateTime:=strtodate(S_DAT1);
  RaspSyr.ParamByName('DAT2').AsDateTime:=strtodate(S_DAT2);
  RaspSyr.ParamByName('CEX').AsInteger:=vStruk_Id;
  RaspSyr.ParamByName('ksm_m').AsInteger:= S_Ksm;
  RaspSyr.Active := True;
  PageControl1.ActivePage:=tabsheet3;
 end;

end;

procedure TFRaspred.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if (PeredanoTip_op_id.AsInteger=37)or(PeredanoTip_op_id.AsInteger=85) then
 begin
  DBGridEh4.Canvas.Brush.Color:=clMoneyGreen;
  DBGridEh4.Canvas.Font.Color:=clBlack;
  DBGridEh4.Canvas.FillRect(Rect);
  DBgridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
 end;
end;

procedure TFRaspred.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.Kart.BeforePost:=DM1.KartBeforePost;
DM1.Kart.BeforeClose:=DM1.KartBeforeClose;
//s_kodp:=ss_kodp;
end;

procedure TFRaspred.ToolButton1Click(Sender: TObject);
begin
 if PageControl1.ActivePage=tabsheet4 then
 BEGIN
  if FDob_Peredano=nil then FDob_Peredano:=TfDob_Peredano.Create(Application);
  FDob_Peredano.ShowModal;
  SostRaspred;
 end;
 if PageControl1.ActivePage<>tabsheet4 then
 BEGIN
  RaspSyr.Insert;
  RaspSyrStroka_id.AsInteger:=vStroka_id;
 end;
end;

procedure TFRaspred.N1Click(Sender: TObject);
begin
if s_ksm<>0 then
 begin
  pr_raspred:=1;
  dm1.RaspredRas;
  Usl_Dat:=' Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
  Usl_TIP:=' Document.Tip_Op_Id=35';
  Usl_Struk:=' Document.Struk_id='+inttostr(vStruk_id);
  Usl_GROP:=' ostatki.ksm_idpr<>0 and kart.Kol_rash<>0 and kart.kol_prih=0 and kart.ksm_id='+inttostr(s_ksm);
  RaspSyr.Active := False;
  RaspSyr.MacroByName('SDAT').AsString:= Usl_DAT;
  RaspSyr.MacroByName('STIP').AsString:= Usl_TIP;
  RaspSyr.MacroByName('KSM').AsString:= Usl_GROP;
  RaspSyr.ParamByName('DAT1').AsDateTime:=strtodate(S_DAT1);
  RaspSyr.ParamByName('DAT2').AsDateTime:=strtodate(S_DAT2);
  RaspSyr.ParamByName('CEX').AsInteger:=vStruk_Id;
  RaspSyr.ParamByName('ksm_m').AsInteger:= S_Ksm;
  RaspSyr.Active := True;
  PageControl1.ActivePage:=tabsheet2;
 end;
end;

procedure TFRaspred.ToolButton2Click(Sender: TObject);
begin
 if PageControl1.ActivePage<>tabsheet4 then
 BEGIN
  if MessageDlg('Удалять запись? ',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
   try
    RaspSyr.Delete;
    RaspSyr.ApplyUpdates;
    DM1.IBT_WRITE.CommitRetaining;
    SostRaspred;
   except
    On E: Exception do
    begin
     MessageDlg('Произошла ошибка при удалении записи!'+E.Message, mtWarning, [mbOK], 0);
     Abort;
    end;
   end;
  end;
 END;
{  if PageControl1.ActivePage=tabsheet3 then
 BEGIN
  if MessageDlg('Удалять запись? ',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
   try
    IF DM1.Kart.Active THEN DM1.Kart.Close;
    DM1.Kart.MacroByName('USL').AsString:=' WHERE DOCUMENT.TIP_OP_ID=34 and DOCUMENT.TIP_dOk_ID=37'
    +' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
    +' AND KART.ksm_id='+INTTOSTR(s_ksm)
    +' AND DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID);
    dm1.Kart.Active:=true;
    DM1.Kart.First;
    if not DM1.Kart.Locate('STROKA_ID',PEREDANO.FieldByName('Stroka_id').ASInteger,[]) then
    begin
     DM1.Kart.Delete;
     DM1.ApplyUpdatesDoc;
    end;
   except
    On E: Exception do
    begin
     MessageDlg('Произошла ошибка при удалении записи!'+E.Message, mtWarning, [mbOK], 0);
     Abort;
    end;
   end;
  end;
 END;
  if PageControl1.ActivePage=tabsheet2 then
 BEGIN
  if MessageDlg('Удалять запись? ',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
   try
    IF DM1.Kart.Active THEN DM1.Kart.Close;
    DM1.Kart.MacroByName('USL').AsString:=' WHERE DOCUMENT.TIP_OP_ID=34 and DOCUMENT.TIP_dOk_ID=37'
    +' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
    +' AND KART.ksm_id='+INTTOSTR(s_ksm)
    +' AND DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID);
    dm1.Kart.Active:=true;
    DM1.Kart.First;
    if not DM1.Kart.Locate('STROKA_ID',PEREDANO.FieldByName('Stroka_id').ASInteger,[]) then
    begin
     DM1.Kart.Delete;
     DM1.ApplyUpdatesDoc;
    end;
   except
    On E: Exception do
    begin
     MessageDlg('Произошла ошибка при удалении записи!'+E.Message, mtWarning, [mbOK], 0);
     Abort;
    end;
   end;
  end;
 END;}
 if PageControl1.ActivePage=tabsheet4 then
 BEGIN
  if MessageDlg('Удалять запись? ',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
   try
    IF DM1.Kart.Active THEN DM1.Kart.Close;
    DM1.Kart.MacroByName('USL').AsString:=' WHERE DOCUMENT.TIP_OP_ID=34 and DOCUMENT.TIP_dOk_ID=37'
    +' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
    +' AND KART.ksm_id='+INTTOSTR(s_ksm)
    +' AND DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID);
    dm1.Kart.Active:=true;
    DM1.Kart.First;
    if DM1.Kart.Locate('STROKA_ID',PEREDANO.FieldByName('Stroka_id').ASInteger,[]) then
    begin
     DM1.Kart.Delete;
     DM1.ApplyUpdatesDoc;
     SostRaspred;
    end;
   except
    On E: Exception do
    begin
     MessageDlg('Произошла ошибка при удалении записи!'+E.Message, mtWarning, [mbOK], 0);
     Abort;
    end;
   end;
  end;
 END;
end;

procedure TFRaspred.ToolButton3Click(Sender: TObject);

begin
 if PageControl1.ActivePage<>tabsheet4 then
 begin
  try
   if not dm1.IBT_WRITE.Active then dm1.IBT_WRITE.StartTransaction;
   if (DM1.Ostatki.Modified) or (DM1.Ostatki.State =dsEdit)
    or (DM1.Ostatki.State =dsInsert) then
    DM1.Ostatki.Post;
   if (DM1.Document.Modified) or (DM1.Document.State =dsEdit)
    or (DM1.Document.State =dsInsert) then
    DM1.Document.Post;
   if (RaspSyr.Modified) or (RaspSyr.State =dsEdit)
    or (RaspSyr.State =dsInsert) then
     RaspSyr.Post;
   if DM1.Document.UpdatesPending then DM1.Document.ApplyUpdates;
   if DM1.Ostatki.UpdatesPending then DM1.Ostatki.ApplyUpdates;
   if RaspSyr.UpdatesPending then RaspSyr.ApplyUpdates;
   DM1.IBT_WRITE.Commit;
   DM1.IBT_READ.CommitRetaining;
//    SostRaspred;
  except
   MessageDlg('Произошла ошибка при записи данных !', mtWarning, [mbOK], 0);
   DM1.IBT_Read.RollbackRetaining;
  end;
 end;
//
//  добавление в приход
//
 if PageControl1.ActivePage=tabsheet3 then
 BEGIN
   try
    RaspSyr.First;
    while not RaspSyr.Eof do
    begin
      s_kodp:=RaspSyrKlient_id.AsInteger;
      s_ksm:=RaspSyrKsm_id.AsInteger;
      v_kein:=RaspSyrKei_idn.AsInteger;
      vklient_id:=s_kodp;
      v_razdel:=RaspSyrRazdel_id.AsInteger;
      if FSprFormul=nil then FSprFormul:=TFSprFormul.Create(Application);
      if FSprFormul.Ceh_Normz.Active=true then
      FSprFormul.CEH_NormZ.Close;
      FSprFormul.CEH_NormZ.MacroByName('SORT').AsString:='';
      FSprFormul.CEH_NormZ.MacroByName('USL').AsString:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP)+' and CEH_NORMZ.KSM_ID_MAt='+INTTOSTR(S_Ksm);
      FSprFormul.CEH_NormZ.Open;
      if not FSprFormul.CEH_NORMZ.eof then
       if FSprFormul.CEH_NORMZDecznak.AsVariant<>null  then
        tochn:=-FSprFormul.CEH_NORMZDecznak.asinteger
       else tochn:=-3
      else tochn:=-3;
      pr_kor:=0;
      DM1.DobPrixPrep;
      RaspSyr.Next;
    end;
    DM1.IBT_WRITE.Commit;
    DM1.IBT_READ.CommitRetaining;
//     SostRaspred;
   except
     MessageDlg('Произошла ошибка при записи данных прихода!', mtWarning, [mbOK], 0);
     DM1.IBT_Read.RollbackRetaining;
   end;
   SostRaspred;
 END;

end;

procedure TFRaspred.RaspSyrBeforePost(DataSet: TDataSet);

begin
 if RaspSyrDoc_id.AsInteger=0 then
 begin
  if (RaspSyrKlient_id.AsInteger=0) then
  begin
   MessageDlg('Задайте препарат !', mtWarning, [mbOK], 0);
   Abort;
  end;
  if (RaspSyrRazdel_id.AsInteger=0) then
  begin
   MessageDlg('Задайте раздел !', mtWarning, [mbOK], 0);
   Abort;
  end;
  If vTip_op_id=30 then
  begin
   dm1.IBQuery1.Active := False;
   dm1.IBQuery1.SQL.Clear;
   dm1.IBQuery1.SQL.Add('SELECT OSTATKI.KART_ID,OSTATKI.KSM_ID,OSTATKI.OT_S,OSTATKI.OT_NZ,OSTATKI.KEI_ID ');
   dm1.IBQuery1.SQL.Add(' FROM OSTATKI ');
   dm1.IBQuery1.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_KSM)+' and (OSTATKI.KSM_IDPR IS NULL or OSTATKI.KSM_IDPR=0) ');
   dm1.IBQuery1.SQL.Add(' AND (OSTATKI.STRUK_ID='+INTTOSTR(Vstruk_iD)+')');
   dm1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then
   begin
    vkart_ID:=dm1.IBQuery1.FieldByName('KART_ID').AsInteger;
    RaspSyrKart_id.AsInteger:=vkart_ID;
    V_OSTS:=dm1.IBQuery1.FieldByName('OT_S').AsFloat*dm1.Koef_per(v_kein,s_kei,s_ksm);
    if v_osts<RaspSyrKol_rash_ediz.AsFloat then
    begin
     RaspSyrKol_rash_ediz.AsFloat:=v_osts;
     RaspSyrKol_prih_ediz.AsFloat:=0;
    end;
   end
   else  Abort;
  end
  else RaspSyrKol_prih_ediz.AsFloat:=0;
  s_kodp:=RaspSyrKlient_id.AsInteger;
  v_razdel:=RaspSyrRazdel_id.AsInteger;
  vSeria_id:=0;
  v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND '+Usl_Tip
  + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
  + ' AND DOCUMENT.KLIENT_ID='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
  If v_dok_Kart = Null then
  begin
   vTip_Doc_Id:=37;
   vNDoc:=copy(vNdoc,1,3)+inttostr(S_Kodp)+'-'+inttostr(mes)+'.'+inttostr(god);
   vKlient_Id:=S_KODP;
   vDate_op:=strtodate(s_dat1);
   vDate_dok:=strtodate(s_dat1);
   vpriz_id:=1;
   dm1.Document.open;
   dm1.Document.Insert;
   dm1.Document.Post;
   v_dok_kart:=vDocument_id;
  end;
  RaspSyrDoc_id.AsInteger:=V_DOK_KART;
  RaspSyrTip_op_id.AsInteger:=VTip_op_id;
  RaspSyrTip_Dok_id.AsInteger:=VTip_DOc_id;
  RaspSyrStruk_id.AsInteger:=VStruk_id;
  RaspSyrKsm_id.AsInteger:=s_ksm;
//  RaspSyrMes.AsInteger:=Mes;
//  RaspSyrGod.AsInteger:=God;
  if RaspSyrKart_id.AsInteger=0 then
  begin
   v_KartV:=SelectToVarIB('select Ostatki.kart_id   FROM Ostatki WHERE Ostatki.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND ostatki.ksm_id='+inttostr(RaspSyrKsm_id.AsInteger)
   + ' AND Ostatki.razdel_id='+inttostr(RaspSyrRazdel_id.AsInteger)
   + ' AND Ostatki.Ksm_idpr='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
   If v_KartV = Null then
   begin
    if not dm1.Ostatki.Active then dm1.Ostatki.Open;
    dm1.Ostatki.Insert;
    dm1.Ostatki.Post;
    v_kartV:=vkart_id;
   end;
   RaspSyrKart_id.AsInteger:=V_KARTV;
  end;
 end;
end;

procedure TFRaspred.RaspSyrBeforeInsert(DataSet: TDataSet);
begin
DM1.Add_KartDok.StoredProcName := 'ADD_KART';
 DM1.Add_KartDok.ExecProc;
 vStroka_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFRaspred.DBGridEh1EditButtonClick(Sender: TObject);

begin
if dbgrideh1.SelectedField.FieldName='NEIZN' then nm:=3;
if dbgrideh1.SelectedField.FieldName='KOD_PROD' then nm:=1;
if dbgrideh1.SelectedField.FieldName='KRAZ' then nm:=2;
RaspSyr.Edit;
case nm of
3: begin
    if FEdiz=nil then FEdiz:=TFEdiz.Create(Application);
    FEdiz.ShowModal;
    if FEdiz.ModalResult > 50 then
    begin
     s_kei:=FEdiz.ModalResult-50;
     RaspSyrKei_idn.AsInteger:=s_kei;
     RaspSyrNeizn.AsString:=DM1.EdizNeis.AsString;
    end;
   end;
1: begin
    if FVybPrep=nil then FVybprep:=TfVybPrep.Create(Application);
    FVybPrep.ShowModal;
    if FVybPrep.ModalResult=mrOk then
    begin
     s_kodp:=FVybPrep.vprepKsm_id.AsInteger;
     DM1.IBQuery1.Active := True;
     RaspSyrKlient_id.AsInteger:=s_kodp;
     RaspSyrKod_prod.AsString:=FVybPrep.vprep.FieldByName('KOD_PROD').AsString;
     RaspSyrXarkt.AsString:=FVybPrep.vprep.FieldByName('XARKT').AsString;
     RaspSyrNmat.AsString:=FVybPrep.vprep.FieldByName('NMAT').AsString;
     RaspSyrNeis.AsString:=FVybPrep.vprep.FieldByName('NEIS').AsString;
     RaspSyrKei_IDn.AsInteger:=s_kei;
     RaspSyrNeiZN.AsString:=label12.Caption;
    end;
   end;
{    if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
    FindSpprod.DataBaseName:=dm1.BELMED;
    FindSpprod.ReadOnly:=true;
    FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
    FindSpprod.ShowModal;
    if FindSpprod.ModalResult > 50 then
    begin
     s_kodp:=FindSpprod.ModalResult-50;
     RaspSyrKlient_id.AsInteger:=s_kodp;
     RaspSyrKod_prod.AsString:=FindSpprod.IBSpprodKod_Prod.Asstring;
     RaspSyrXarkt.AsString:=FindSpprod.IBSpprodXARKT.AsString;
     RaspSyrNmat.AsString:=FindSpprod.IBSpprodNMAT.AsString;
     RaspSyrNeis.AsString:=FindSpprod.IBSpprodNeis.AsString;
    end;
   end; }
2: begin
    if FRazdel=nil then FRazdel:=TFRazdel.Create(Application);
    FRazdel.ShowModal;
    if FRazdel.ModalResult>50 then
    begin
     RaspSyrRazdel_id.AsInteger:=FRazdel.ModalResult-50;
     RaspSyrKraz.AsInteger:=s_Razdel;
    end;
   end;
  end;
end;

procedure TFRaspred.RaspSyrKOD_PRODValidate(Sender: TField);
 var
 s_prod: string;
begin
 if RaspSyrKOD_PROD.AsString<>'' then
 begin
  s_prod:=RaspSyrKOD_PROD.AsString+'%';
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
  DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
//  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD='+''''+s_prod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+s_prod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
  DM1.IBQuery1.Active := True;
  if not dm1.IBQuery1.Eof then
  begin
   RaspSyrKLIENT_id.AsInteger:=DM1.IBQuery1.FieldByName('ksm_id').AsInteger;
//   RaspSyrKod_Prod.AsString:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
   RaspSyrNmat.AsString:=DM1.IBQuery1.FieldByName('nmat').AsString;
   RaspSyrNeis.AsString:=DM1.IBQuery1.FieldByName('Neis').AsString;
   RaspSyrXarkt.AsString:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  end
  else
  showMessage('Нет такого кода! Воспользуйтесь справочником!');
 end; 
end;

procedure TFRaspred.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
{if key=vk_Return then
begin
 if dbgrideh1.SelectedField.FieldName='KOD_PROD' then
 begin
  if RaspSyrKsm_id.AsInteger<>0 then
  begin
{   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
   DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM');
   DM1.IBQuery1.SQL.Add(' FROM SPPROD');
   DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
   DM1.IBQuery1.SQL.Add('  INNER JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
   DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+s_prod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
   DM1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then
   begin }
//    RaspSyrKod_Prod.AsString:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
{    RaspSyrNmat.AsString:=DM1.IBQuery1.FieldByName('nmat').AsString;
    RaspSyrNeis.AsString:=DM1.IBQuery1.FieldByName('Neis').AsString;
    RaspSyrXarkt.AsString:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
   end
   else
    showMessage('Нет такого кода! Воспользуйтесь справочником!');
  end;
 end;
end;}
end;
procedure TFRaspred.RaspSyrKRAZValidate(Sender: TField);
begin
if not dM1.Razdel.Active then dM1.Razdel.Active:=TRUE;
 if dm1.razdel.locate('kraz',RaspSyrKraz.AsInteger,[]) then
  RaspSyrRazdel_Id.AsInteger:=dm1.razdel.FieldByName('Razdel_Id').AsInteger
 else
  showMessage('Нет такого раздела! Воспользуйтесь справочником!');
end;

procedure TFRaspred.DBGridEh2EditButtonClick(Sender: TObject);
begin
if dbgrideh2.SelectedField.FieldName='NEIZN' then nm:=3;
if dbgrideh2.SelectedField.FieldName='KOD_PROD' then nm:=1;
if dbgrideh2.SelectedField.FieldName='KRAZ' then nm:=2;
RaspSyr.Edit;
case nm of
3: begin
    if FEdiz=nil then FEdiz:=TFEdiz.Create(Application);
    FEdiz.ShowModal;
    if FEdiz.ModalResult > 50 then
    begin
     s_kei:=FEdiz.ModalResult-50;
     RaspSyrKei_IDn.AsInteger:=DM1.EdizKei_id.AsInteger;
     RaspSyrNeizn.AsString:=DM1.EdizNeis.AsString;
    end;
   end;
1: begin
    if FVybPrep=nil then FVybprep:=TfVybPrep.Create(Application);
    FVybPrep.ShowModal;
    if FVybPrep.ModalResult=mrOk then
    begin
     s_kodp:=FVybPrep.vprepKsm_id.AsInteger;
     DM1.IBQuery1.Active := True;
     RaspSyrKlient_id.AsInteger:=s_kodp;
     RaspSyrKod_prod.AsString:=FVybPrep.vprep.FieldByName('KOD_PROD').AsString;
     RaspSyrXarkt.AsString:=FVybPrep.vprep.FieldByName('XARKT').AsString;
     RaspSyrNmat.AsString:=FVybPrep.vprep.FieldByName('NMAT').AsString;
     RaspSyrNeis.AsString:=FVybPrep.vprep.FieldByName('NEIS').AsString;
     RaspSyrKei_IDn.AsInteger:=s_kei;
     RaspSyrNeiZN.AsString:=label12.Caption;
    end;
   end;
 {    if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
    FindSpprod.DataBaseName:=dm1.BELMED;
    FindSpprod.ReadOnly:=true;
    FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
    FindSpprod.ShowModal;
    if FindSpprod.ModalResult > 50 then
    begin
     s_kodp:=FindSpprod.ModalResult-50;
     RaspSyrKlient_id.AsInteger:=s_kodp;
     RaspSyrKod_prod.AsString:=FindSpprod.IBSpprodKod_Prod.Asstring;
     RaspSyrXarkt.AsString:=FindSpprod.IBSpprodXARKT.AsString;
     RaspSyrNmat.AsString:=FindSpprod.IBSpprodNMAT.AsString;
     RaspSyrNeis.AsString:=FindSpprod.IBSpprodNeis.AsString;
    end;
   end; }
2: begin
    if FRazdel=nil then FRazdel:=TFRazdel.Create(Application);
    FRazdel.ShowModal;
    if FRazdel.ModalResult>50 then
    begin
     RaspSyrRazdel_id.AsInteger:=FRazdel.ModalResult-50;
     RaspSyrKraz.AsInteger:=s_Razdel;
    end;
   end;
  end;
end;

procedure TFRaspred.DBGridEh3EditButtonClick(Sender: TObject);
begin
if dbgrideh3.SelectedField.FieldName='NEIZN' then nm:=3;
if dbgrideh3.SelectedField.FieldName='KOD_PROD' then nm:=1;
if dbgrideh3.SelectedField.FieldName='KRAZ' then nm:=2;
RaspSyr.Edit;
case nm of
3: begin
    if FEdiz=nil then FEdiz:=TFEdiz.Create(Application);
    FEdiz.ShowModal;
    if FEdiz.ModalResult > 50 then
    begin
     s_kei:=FEdiz.ModalResult-50;
     RaspSyrKei_IDn.AsInteger:=DM1.EdizKei_id.AsInteger;
     RaspSyrNeiZN.AsString:=DM1.EdizNeis.AsString;
    end;
   end;
1: begin
    if FVybPrep=nil then FVybprep:=TfVybPrep.Create(Application);
    FVybPrep.ShowModal;
    if FVybPrep.ModalResult=mrOk then
    begin
     s_kodp:=FVybPrep.vprepKsm_id.AsInteger;
     DM1.IBQuery1.Active := True;
     RaspSyrKlient_id.AsInteger:=s_kodp;
     RaspSyrKod_prod.AsString:=FVybPrep.vprep.FieldByName('KOD_PROD').AsString;
     RaspSyrXarkt.AsString:=FVybPrep.vprep.FieldByName('XARKT').AsString;
     RaspSyrNmat.AsString:=FVybPrep.vprep.FieldByName('NMAT').AsString;
     RaspSyrNeis.AsString:=FVybPrep.vprep.FieldByName('NEIS').AsString;
     RaspSyrKei_IDn.AsInteger:=s_kei;
     RaspSyrNeiZN.AsString:=label12.Caption;
 {    if FindSpprod.IBSpprod.Active=false then FindSpprod.IBSpprod.Active:=true;
    if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
    FindSpprod.DataBaseName:=dm1.BELMED;
    FindSpprod.ReadOnly:=true;
    FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
    FindSpprod.ShowModal;
    if FindSpprod.ModalResult > 50 then
    begin
     s_kodp:=FindSpprod.ModalResult-50;
     RaspSyrKlient_id.AsInteger:=s_kodp;
     RaspSyrKod_prod.AsString:=FindSpprod.IBSpprodKod_Prod.Asstring;
     RaspSyrXarkt.AsString:=FindSpprod.IBSpprodXARKT.AsString;
     RaspSyrNmat.AsString:=FindSpprod.IBSpprodNMAT.AsString;
     RaspSyrNeis.AsString:=FindSpprod.IBSpprodNeis.AsString; }
    end;
   end;
2: begin
    if FRazdel=nil then FRazdel:=TFRazdel.Create(Application);
    FRazdel.ShowModal;
    if FRazdel.ModalResult>50 then
    begin
     RaspSyrRazdel_id.AsInteger:=FRazdel.ModalResult-50;
     RaspSyrKraz.AsInteger:=s_Razdel;
    end;
   end;
  end;
end;

procedure TFRaspred.RaspSyrNewRecord(DataSet: TDataSet);
begin
RaspSyrStroka_id.AsInteger:=VStroka_id;
RaspSyrKol_prih_ediz.AsFloat:=0;
end;

procedure TFRaspred.SpeedButton2Click(Sender: TObject);
begin
 if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
 FindMatrop.DataBaseName:=dm1.BELMED;
 FindMatrop.ReadOnly:=true;
 FindMatrop.ShowModal;
 if FindMatrop.ModalResult > 50 then
 begin
  s_ksm:=FindMatrop.ModalResult-50;
  edit1.Text:=inttostr(FindMatrop.ModalResult-50);
  Label10.Caption :=FindMatrop.IBMatropGOST.AsString;
  Label5.Caption :=FindMatrop.IBMatropNMAT.AsString;
  s_kei :=FindMatrop.IBMatropKei_id.AsInteger;
  Label12.Caption :=FindMatrop.IBMatropNEIS.AsString;
  Label9.Caption :=FindMatrop.IBMatropXARKT.AsString;
  SostRaspred;
 end;
end;

procedure TFRaspred.SpinEdit3Change(Sender: TObject);
begin
mes:=SpinEdit3.Value;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  if Edit1.Text<>'' then
  SostRaspred;
end;

procedure TFRaspred.SpinEdit4Change(Sender: TObject);
begin
god:=SpinEdit4.Value;
IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  if Edit1.Text<>'' then
   SostRaspred;
end;

procedure TFRaspred.RaspSyrCalcFields(DataSet: TDataSet);
begin

   RaspSyrkOt_s.ASFLOAT:=RaspSyr.FieldByName('Ot_s').AsFloat*dm1.Koef_per(RaspSyrKei_idn.AsInteger,s_Kei,s_ksm);
   RaspSyrkOt_Nz.ASFLOAT:=RaspSyr.FieldByName('Ot_nz').AsFloat*dm1.Koef_per(RaspSyrKei_idn.AsInteger,s_Kei,s_Ksm);

end;

end.
