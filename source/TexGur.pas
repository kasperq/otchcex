unit TexGur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, StdCtrls, ImgList, ComCtrls, ToolWin, Grids,
  DBGridEh, FindDlgEh, Buttons, DB, IBCustomDataSet, IBQuery, DBCtrls,
  IBUpdateSQL, IBUpdSQLW, RxIBQuery,DateUtils,Math,
  Menus, ExtCtrls, DBGrids,VCLUtils,DBTables,IB,StrUtils,
  SplshWnd, wwDialog, Wwfltdlg,Fr_pars, FR_DSet, FR_DBSet, FR_Class,
  RXCtrls, RxMemDS, dbcgrids, DBCtrlsEh, Spin, ActnList,UtilRIB,RxStrUtils,
  Placemnt,FileUtil;
type
  TFTexGur = class(TForm)
    ImageList2: TImageList;
    DSTexGur: TDataSource;
    TexGur: TRxIBQuery;
    TexGurUpdateSQLW1: TIBUpdateSQLW;
    SprStad: TIBQuery;
    DSSprStad: TDataSource;
    SprStadSTADIA_ID: TIntegerField;
    SprStadNAME_STAD: TIBStringField;
    SprStadLEK_ID: TSmallintField;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton9: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    DSZagSyr: TDataSource;
    ZagSyr: TRxIBQuery;
    Seria_s: TRxIBQuery;
    SerUpdate: TIBUpdateSQLW;
    Seria_sSERIA_ID: TIntegerField;
    Seria_sKSM_ID: TIntegerField;
    Seria_sSERIA: TIBStringField;
    Seria_sSROK_GODN: TDateField;
    Seria_sSERTIF: TIBStringField;
    Seria_sDATE_SERTIF: TDateField;
    Seria_sPASPORT: TIBStringField;
    Seria_sDATE_PASPORT: TDateField;
    Seria_sKOL_SERIA: TFMTBCDField;
    Seria_sDATE_VIPUSK: TDateField;
    Seria_sFORMA_VIPUSK: TIBStringField;
    Seria_sKEI_ID: TSmallintField;
    Seria_sDATE_TIME_UPDATE: TDateTimeField;
    Seria_sUSER_NAME: TIBStringField;
    Seria_sSHEMA: TIBStringField;
    Seria_sKODTN: TIBStringField;
    Seria_sDATE_ZAG: TDateField;
    Seria_sFIO_RASH: TIBStringField;
    Seria_sFIO_MASTER: TIBStringField;
    Seria_sCOMMENT: TIBStringField;
    Seria_sOB_ZAG: TFloatField;
    Ceh_Marsh: TRxIBQuery;
    IBceh_marsh: TIBUpdateSQLW;
    DSceh_marsh: TDataSource;
    FindDlgEh1: TFindDlgEh;
    FindDlgEh2: TFindDlgEh;
    Label5: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    ToolButton4: TToolButton;
    Seria_sVLAG_TM: TFloatField;
    Seria_sKOD_TM: TIntegerField;
    Seria_sKOL_TM: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh3: TDBGridEh;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label16: TLabel;
    Label20: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBNavigator1: TDBNavigator;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Edit20: TEdit;
    GroupBox1: TGroupBox;
    DBCtrlGrid1: TDBCtrlGrid;
    GroupBox7: TGroupBox;
    Label44: TLabel;
    Label52: TLabel;
    DBText2: TDBText;
    Label51: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label47: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    TabSheet2: TTabSheet;
    DBGridEh4: TDBGridEh;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText1: TDBText;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label41: TLabel;
    Label46: TLabel;
    SpeedButton1: TSpeedButton;
    Label56: TLabel;
    Label57: TLabel;
    Label61: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label22: TLabel;
    Label59: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DateEdit1: TDateEdit;
    GroupBox3: TGroupBox;
    Label68: TLabel;
    Label26: TLabel;
    Label70: TLabel;
    Label34: TLabel;
    Label75: TLabel;
    Label21: TLabel;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label40: TLabel;
    Edit3: TEdit;
    Edit13: TEdit;
    ToolButton6: TToolButton;
    SpeedButton2: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Label7: TLabel;
    Label45: TLabel;
    Label37: TLabel;
    Edit12: TEdit;
    Label38: TLabel;
    Edit9: TEdit;
    Label2: TLabel;
    Edit11: TEdit;
    ToolButton8: TToolButton;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    FormStorage1: TFormStorage;
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    Panel4: TPanel;
    GroupBox5: TGroupBox;
    Label64: TLabel;
    Label66: TLabel;
    Edit16: TEdit;
    Edit10: TEdit;
    Button2: TButton;
    Button3: TButton;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    DBEditEh3: TDBEditEh;
    DBEdit5: TDBEdit;
    Label18: TLabel;
    Edit14: TEdit;
    TexGurKODP: TIntegerField;
    TexGurOT_S: TFMTBCDField;
    TexGurOT_NZ: TFMTBCDField;
    TexGurKART_ID: TIntegerField;
    TexGurNAZPRPF: TIBStringField;
    TexGurPLNORM: TFloatField;
    TexGurKRAZ: TSmallintField;
    TexGurRAZDEL_ID: TSmallintField;
    TexGurNMAT: TIBStringField;
    TexGurXARKT: TIBStringField;
    TexGurGOST: TIBStringField;
    TexGurKEI_ID: TSmallintField;
    TexGurNEIS: TIBStringField;
    TexGurSTROKA_ID: TIntegerField;
    TexGurKSM_ID: TIntegerField;
    TexGurKEIN: TSmallintField;
    TexGurKOL_RASH: TFloatField;
    TexGurKOL_RASH_EDIZ: TFloatField;
    TexGurKOL_PRIH: TFloatField;
    TexGurKOL_PRIH_EDIZ: TFloatField;
    TexGurDOC_ID: TIntegerField;
    TexGurTIP_OP_ID: TIntegerField;
    TexGurKOEF1: TIBBCDField;
    TexGurKOEF2: TIBBCDField;
    TexGurKOEF3: TIBBCDField;
    TexGurPROC: TIBBCDField;
    TexGurNORMZ_ID: TIntegerField;
    TexGurFORMULA: TIBStringField;
    TexGurDECZNAK: TSmallintField;
    TexGurRASCH_ZAG: TFMTBCDField;
    TexGurPROC_ZAG: TFMTBCDField;
    TexGurKOT_S: TFMTBCDField;
    TexGurKOT_NZ: TFMTBCDField;
    ZagSyrKART_ID: TIntegerField;
    ZagSyrKEI_ID: TSmallintField;
    ZagSyrKRAZ: TSmallintField;
    ZagSyrNMAT: TIBStringField;
    ZagSyrNAMEVIS: TIBStringField;
    ZagSyrNAMEPRN: TIBStringField;
    ZagSyrKORG: TIntegerField;
    ZagSyrNAMSPSR: TIBStringField;
    ZagSyrNAM: TIBStringField;
    ZagSyrNEIS: TIBStringField;
    ZagSyrKOL_RASH_EDIZ: TFloatField;
    ZagSyrNDOK: TIBStringField;
    TexGurDATE_OP: TDateField;
    Ceh_MarshMARSH_ID: TSmallintField;
    Ceh_MarshKSM_IDOV: TIntegerField;
    Ceh_MarshSERIA_IDOV: TIntegerField;
    Ceh_MarshZAG_OV: TFloatField;
    Ceh_MarshSERIA_ID: TIntegerField;
    Ceh_MarshKSM_ID: TIntegerField;
    Ceh_MarshVLAGA_OV: TFloatField;
    Ceh_MarshAKTIV_OV: TFloatField;
    Ceh_MarshKOEFPER1: TFloatField;
    Ceh_MarshKOEFPER2: TFloatField;
    Ceh_MarshKSM_DOB: TIntegerField;
    Ceh_MarshKOL_DOB: TFloatField;
    Ceh_MarshNMAT: TIBStringField;
    Ceh_MarshXARKT: TIBStringField;
    Ceh_MarshGOST: TIBStringField;
    Ceh_MarshVIB: TIntegerField;
    Ceh_MarshSERIA: TIBStringField;
    Ceh_MarshFORMULA: TIBStringField;
    ZagSyrKOD_PREP: TIBStringField;
    TexGurNOT_S: TFMTBCDField;
    TexGurOTN_S: TFMTBCDField;
    procedure MyGetValue(const s: String; var v: Variant);
    procedure MyGetValue1(const s: String; var v: Variant);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton9Click(Sender: TObject);
    procedure TexGurAfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh3SortMarkingChanged(Sender: TObject);
    procedure DBGridEh4SortMarkingChanged(Sender: TObject);
    procedure TexGurSost;
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure TexGurKSM_IDValidate(Sender: TField);
    procedure frReport2GetValue(const ParName: String;
      var ParValue: Variant);
    procedure ToolButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TexGurKRAZValidate(Sender: TField);
    procedure TexGurBeforePost(DataSet: TDataSet);
    procedure Seria_sBeforeInsert(DataSet: TDataSet);
    procedure Seria_sNewRecord(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure DBEditEh1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBEditEh2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Ceh_MarshNewRecord(DataSet: TDataSet);
    procedure Ceh_MarshKSM_IDOVValidate(Sender: TField);
    procedure Ceh_MarshSERIAValidate(Sender: TField);
    procedure DBEditEh3EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBEditEh3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure TexGurNewRecord(DataSet: TDataSet);
    procedure ToolButton4Click(Sender: TObject);
    procedure DBEditEh2Click(Sender: TObject);
    procedure DBEditEh1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit9Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit13KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TexGurAfterDelete(DataSet: TDataSet);
    procedure TexGurBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTexGur: TFTexGur;
  s_stad: integer;
  s_kol_zag: string;
  s_seria_p: string;
  vSeria_Ids: integer;
  s_serias: string;
  S_KSMs: integer;
  v_11: double;
  k1: double;
  k2: double;
  k3: double;
  k4: double;
  PL: double;
  s_vip: double;
  mes_s: integer;
  god_s: integer;
  sSeria_id: integer;
  vFormula:TfrParser;
implementation
 uses dm, ViborPerioda, Ser, SprFormul, Find_Spprod, ediz,
  Find_Matrop, razdel, glmenu, SprSTAD, FSpFormv, Analit_aList, analit,
  Unit21, OstSyr, Analit1,Komp_Tm;
{$R *.dfm}

procedure TFTexGur.TexGurSost;
begin
try
 StartWait;
 TexGur.BeforePost:=nil;
 s_seria:=edit2.Text;
 if s_seria<>'' then
 begin
  USL_SORT:='7,9';
  vNDoc:='Заг_'+copy(label19.Caption,1,5)+'_'+s_seria;
  vDate_op:=strtodate(s_dat1_period);
  vTip_Op_Id:=33;
  vTip_Doc_Id:=34;
  vKlient_Id:=s_kodp;
  vDate_dok:=strtodate(s_dat1_period);
  vpriz_id:=2;
  if dm1.Document.Active then dm1.Document.Close;
  DM1.DOcUMENT.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.TIP_OP_ID=33 AND DOCUMENT.NDOK='+''''+VnDOC+''''
  + ' AND Document.Date_dok between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+''''
  + ' AND Document.Klient_id='+inttostr(vKlient_id);
  dm1.Document.OPEN;
  IF DM1.Document.Eof THEN
  begin
   IF MODE<2 THEN
   BEGIN
    dm1.Document.Insert;
    if not dm1.IBT_Write.Active then dm1.IBT_Write.StartTransaction;
    try
     if (dm1.Document.State=dsEdit) or (dm1.Document.State=dsInsert)
     then  dm1.Document.Post;
     if dm1.Document.UpdatesPending then
      dm1.Document.ApplyUpdates;
     dm1.IBT_Write.Commit;
     dm1.IBT_Read.CommitRetaining;
     dm1.Document.Close;
    except
     MessageDlg('Произошла ошибка при записи документа!', mtError, [mbOK], 0);
     DM1.IBT_Read.RollbackRetaining;
    end;
   end
   ELSE vDocument_id:=0;
  END
  ELSE vDocument_id:=dm1.DocumentDOC_ID.AsInteger;
  if not dm1.Seria.Active then
  begin
   s_seria:=edit2.Text;
   Dm1.Seria.ParamByName('Ksm_id').AsInteger:=S_KODP;
   DM1.Seria.MacroByName('usl').AsString:='SERIA.SERIA='+''''+S_SERIA+'''';
   dm1.Seria.Active:=true;
   vSeria_id:=dm1.SeriaSeria_id.AsInteger;
  end;
  if (edit9.Text<>'') and (edit9.Text<>'0') then s_vip:=strtofloat(edit9.Text) else s_vip:=0;
  TexGur.BeforePost:=nil;

  TexGur.Close;
  TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
  TexGur.ParamByName('mes').AsInteger:=mes;
  TexGur.ParamByName('god').AsInteger:=god;
  TexGur.ParamByName('KODP').AsInteger:=S_KODP;
  TexGur.MacroByName('SORT').AsString:=USL_SORT;
  TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
  TexGur.ParamByName('doc').AsInteger:=vDocument_id;
  TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
  TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
  TexGur.Open;
  TexGur.DisableControls;
  
  v_dok_kart:=SelectToVarIB('select Ostatki.kart_id   FROM Ostatki WHERE Ostatki.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND ostatki.ksm_id='+inttostr(s_Kodp)
  + ' AND Ostatki.seria_id='+inttostr(vseria_id),dm1.belmed,dm1.ibt_read);
  If v_dok_kart <> Null then
  begin
   if dm1.TexStad.Active then dm1.TexStad.Active:=false;
   dm1.TexStad.ParamByName('KartID').AsInteger:=v_dok_kart;
   dm1.TexStad.Open;
   if not dm1.TexStad.Eof then
   begin
    s_kart_id:=dm1.texStadKart_id.AsInteger;
//     dm1.TexStad.Edit;
   end
   else
   begin
    s_kart_id:=0;
   end;
  end;
  dm1.TexStad.Active:=true;
  dm1.TexStad.Insert;
  SprStad.Close;
  SprStad.ParamByName('Lek_id').AsInteger:=s_Lek_id;
  SprStad.Open;
  SprStad.First;

 end;
 if CEH_MARSH.Active=false then
 begin
  CEH_MARSH.ParamByName('Kodp').AsInteger:=S_KODP;
  CEH_MARSH.ParamByName('seria').AsInteger:=vseria_id;
  CEH_MARSH.Active:=TRUE;
 end;
 ceh_marsh.First;
 if not ceh_marsh.Eof then
 begin
  if (DBedit7.Text<>'') and (Dbedit7.Text<>'0')then
  begin
   v_11:=0;
   if (edit16.Text='') then edit16.Text:='1';
   While not ceh_marsh.Eof  do
   begin
    if (DBedit7.Text='') then DBedit7.Text:='1';
    if (DBedit8.Text='') then DBedit8.Text:='1';
    if (DBedit11.Text='') then DBedit11.Text:='1';
    if (edit13.Text='') then edit13.Text:='1';
    v_11:=v_11+SimpleRoundTo(SimpleRoundTo((strtofloat(DBedit7.Text)*strtofloat(DBedit8.Text)/100)*(100-strtofloat(DBedit11.Text))/100,-3)
    *strtofloat(edit13.Text)/strtofloat(DBedit7.Text),-2);
    ceh_marsh.Next;
   end;
   ceh_marsh.First;
  end;
  if (edit3.Text<>'') and (edit3.Text<>'0')AND (edit16.Text<>'') and (edit16.Text<>'0')then
     edit10.Text:=floattostr(SimpleRoundTo(strtofloat(edit3.Text)*(100-strtofloat(edit16.Text))/100,-2))
 end;
 ceh_marsh.Edit;
 TexGur.First;
 while not TexGur.Eof do
 begin
   if TexGurDoc_id.AsInteger<>vDocument_id then
   begin
    TexGur.Edit;
    TexGurDoc_id.AsInteger:=vDocument_id;
    TexGur.Post;
   end;
   TexGur.Next;
 end;
 TexGur.First;
 TexGur.EnableControls;
 DBGridEh3.SetFocus;
 TexGur.BeforePost:=TexGurBeforePost;
 StopWait;
except
  on E:EIBInterbaseError do
     begin
      ShowMessage(E.Message);
      StopWait;
     end;
end;
 TexGurKol_rash_ediz.FocusControl;
end;

procedure TFTexGur.Edit1Change(Sender: TObject);

begin
if edit1.text<>''   then begin
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
   Label19.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label11.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
   Label3.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  end
  else
  begin
   Label19.Caption:='';
   Label11.Caption:='';
   Label3.Caption:='';
  end;
 Label19.Refresh;
 Label11.Refresh;
 end;
end;

procedure TFTexGur.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
  StartWait;
  if (edit1.text<>'') and (not dm1.IBQuery1.Eof)  then
   begin

    edit3.text:='';
    edit9.text:='';
    EDIT1.OnChange:=nil;
    edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
    EDIT1.OnChange:=Edit1Change;
//    edit17.text:=floattostr(DM1.IBQuery1.FieldByName('vol_ov').Asfloat);
    edit13.text:=floattostr(DM1.IBQuery1.FieldByName('volumf').Asfloat);
    s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
    s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
    s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
    s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
    s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
    s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
    s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
    s_Lek_id:=DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
    s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
    s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
    s_Formv:=DM1.IBQuery1.FieldByName('NAMEFV').AsString;
    s_Sprod_id:=DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
    S_NAMREG:=DM1.IBQuery1.FieldByName('NAM_REG').AsString;
    IF fSprFormul.CEH_NormZ.Active THEN fSprFormul.CEH_NormZ.Active:=false;
    SORTf:=' ORDER BY CEH_NORMZ.RAZDEL_ID,CEH_NORMZ.KSM_ID_MAT ';
    USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(s_kodp);
    fSprFormul.CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
    fSprFormul.CEH_NormZ.MacroByName('USL').AsString:=USLf;
    fSprFormul.CEH_NormZ.Open;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT *');
    DM1.IBQuery1.SQL.Add(' FROM UTPLAN');
    DM1.IBQuery1.SQL.Add(' WHERE UTPLAN.MES='+inttostr(mes)+' AND UTPLAN.GOD='+inttostr(god)+' AND UTPLAN.SPROD_ID='+inttostr(s_sprod_id));
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
     Label26.Caption:=floattostr(DM1.IBQuery1.FieldByName('PLAN').AsFloat);
     s_plan:=DM1.IBQuery1.FieldByName('PLAN').AsFloat;
     end
    else
    begin
     Label26.Caption:='0';
     s_plan:=0;
    end;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT kartv.kol_prih');
    DM1.IBQuery1.SQL.Add(' FROM KARTV ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTV.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
    + ' AND KARTV.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
     Label34.Caption:=floattostr(DM1.IBQuery1.FieldByName('kol_prih').AsFloat);
     s_OPLan:=DM1.IBQuery1.FieldByName('kol_prih').AsFloat;
     end
    else
    begin
     Label34.Caption:='0';
     s_Oplan:=0;
    end;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SUM(kart.kol_prih) SDANO');
    DM1.IBQuery1.SQL.Add(' FROM KART ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.KLIENT_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=2'+ ' AND KART.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
//     Label36.Caption:=floattostr(DM1.IBQuery1.FieldByName('SDANO').AsFloat);
     s_SDANO:=DM1.IBQuery1.FieldByName('SDANO').AsFloat;
     end
    else
    begin
//     Label36.Caption:='0';
     s_SDANO:=0;
    end;
    label19.caption:=s_NMAT;
    label28.caption:=Inttostr(s_KORG);
    label29.caption:=s_namorg;
    label21.caption:=s_Neiz;
    label22.caption:=s_GOST;
    label11.caption:=s_Xarkt;
    label45.caption:=s_Formv;
  end;
  StopWait;
 end;
end;

procedure TFTexGur.FormCreate(Sender: TObject);
begin
s_dat1_period:=s_dat1;
s_dat2_period:=S_dat2;

end;

procedure TFTexGur.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
  if (edit2.text<>'') then
  begin
   if ceh_marsh.Active=true then ceh_marsh.Close;
   if (edit9.Text<>'') and (edit9.Text<>'0') then s_vip:=strtofloat(edit9.Text) else s_vip:=0;
   s_seria:=edit2.Text;
   s_ksm:=s_kodp;
   if dm1.Seria.Active then dm1.Seria.Active:=false;
   Dm1.Seria.ParamByName('Ksm_id').AsInteger:=S_KODP;
   dm1.Seria.Active:=true;
   if dm1.Seria.Locate('seria;ksm_id',VarArrayOf([s_seria,s_kodp]),[]) then
   begin
    vseria_id:=dm1.SeriaSeria_id.AsInteger;
    s_kol_seria:=DM1.SeriaKol_Seria.AsFloat;
    edit3.Text:=floattostr(SimpleRoundTo(DM1.SeriaOB_ZAG.AsFloat,-2));
    edit9.Text:=floattostr(s_kol_seria);
    edit16.Text:=floattostr(dm1.Seriavlag_tm.AsFloat);
    if dm1.SeriaDATE_ZAG.AsVariant<>null then
    begin
     DateEdit1.Date:=dm1.SeriaDATE_ZAG.AsDateTime;
     DateEdit1.ReadOnly:=false;
     IF MODE<2 THEN
      TexGurSost
     ELSE
     BEGIN
      TexGur.Close;
      TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
      TexGur.ParamByName('mes').AsInteger:=mes;
      TexGur.ParamByName('god').AsInteger:=god;
      TexGur.ParamByName('KODP').AsInteger:=S_KODP;
      TexGur.MacroByName('SORT').AsString:=USL_SORT;
      TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
      TexGur.ParamByName('doc').AsInteger:=vDocument_id;
      TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
      TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
      TexGur.Open;
     END;
     TexGur.First;
     IF fSprFormul.CEH_NormZ.Active THEN
     begin
      fSprFormul.CEH_NormZ.Close;
      SORTf:=' ORDER BY CEH_NORMZ.RAZDEL_ID,CEH_NORMZ.KSM_ID_MAT ';
      USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP);
      fSprFormul.CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
      fSprFormul.CEH_NormZ.MacroByName('USL').AsString:=USLf;
      fSprFormul.CEH_NormZ.Open
     end;
    end
    else
    begin
     DateEdit1.ReadOnly:=false;
     DateEdit1.SetFocus;
    end;
   end
   else
   begin
    dm1.Seria.Insert;
    dm1.Seria.Post;
    DateEdit1.ReadOnly:=false;
    DateEdit1.SetFocus;
   end;
   dm1.Seria.Edit;
   dm1.SeriaFORMA_VIPUSK.AsString:=s_Formv;
//   DM1.SeriaKSM_ID.AsInteger:=S_Kodp;
   DM1.Seria.Post;
  end;
 end;
end;

procedure TFTexGur.Edit3Click(Sender: TObject);
begin
 edit3.Text:=''
end;

procedure TFTexGur.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
 begin
  if edit3.Text<>'' then
  begin
   if (edit13.Text<>'') and (edit13.Text<>'0') then
    edit12.Text:=floattostr(Round(strtofloat(edit3.Text))*1000000/Round(strtofloat(edit13.Text)))
   else MessageDlg(' Для расчета количества таблеток введите среднюю массу таблетки/капсулы ', mtWarning, [mbOK], 0);
  end;
 end;
end;

procedure TFTexGur.Edit9Click(Sender: TObject);
begin
edit9.Text:=''
end;

procedure TFTexGur.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
  if edit9.Text<>'' then
  begin
//   TexGur.BeforePost:=nil;
   s_vip:=strtofloat(edit9.Text);
{   TexGur.Close;
   TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
   TexGur.ParamByName('mes').AsInteger:=mes;
   TexGur.ParamByName('god').AsInteger:=god;
   TexGur.ParamByName('KODP').AsInteger:=S_KODP;
   TexGur.MacroByName('SORT').AsString:=USL_SORT;
   TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
   TexGur.ParamByName('doc').AsInteger:=vDocument_id;
   TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
   TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
   TexGur.Open; }

{   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT distinct ostatki.kart_id, norm.KODP,NORM.KEI_ID KEIN, NORM.KSM_ID, NORM.KRAZ, NORM.MES, NORM.GOD, NORM.NAZPRPF,cast(norm.plnorm as numeric(16,7)) as PLNORM,ostatki.ot_s,ostatki.ot_nz,');
   DM1.IBQuery1.SQL.Add(' MATROP.NMAT,MATROP.KEI_ID,matrop.xarkt,matrop.gost, EDIZ.NEIS,razdel.razdel_id,ceh_normz.formula,cEH_NORMZ.KOEF1,CEH_NORMZ.KOEF2, CEH_NORMZ.KOEF3, CEH_NORMZ.PROC,CEH_NORMZ.NORMZ_ID,CEH_NORMZ.decznak,');
   DM1.IBQuery1.SQL.Add(' NORM.PLNORM*'+replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.')+' as Rasch_Zag,');
   DM1.IBQuery1.SQL.Add(' NORM.PLNORM*'+replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.')+' as Proc_Zag,');
   DM1.IBQuery1.SQL.Add(' (select kol_new from ceh_ost_ediz(norm.KSM_ID, MATROP.KEI_ID, norm.KEI_ID, ostatki.ot_s)) Kot_S,');
   DM1.IBQuery1.SQL.Add(' (select kol_new from ceh_ost_ediz(norm.KSM_ID, MATROP.KEI_ID, norm.KEI_ID,  ostatki.ot_nz)) Kot_Nz');
   DM1.IBQuery1.SQL.Add(' FROM NORM ');
   DM1.IBQuery1.SQL.Add(' INNER JOIN MATROP ON (NORM.KSM_ID = MATROP.KSM_ID)');
   DM1.IBQuery1.SQL.Add(' INNER JOIN EDIZ ON (NORM.KEI_ID = EDIZ.KEI_ID)');
   DM1.IBQuery1.SQL.Add(' inner JOIN RAZDEL ON (NORM.KRAZ = RAZDEL.KRAZ)');
   DM1.IBQuery1.SQL.Add(' left JOIN ceh_normz ON ((NORM.kodp = ceh_normz.ksm_id_pr) AND (norm.ksm_id=ceh_normz.ksm_id_mat) AND (razdel.razdel_id=ceh_normz.razdel_id))');
   DM1.IBQuery1.SQL.Add(' left JOIN ostatki ON ((NORM.kodp = ostatki.ksm_idpr) AND (norm.ksm_id=ostatki.ksm_id) AND (razdel.razdel_id=ostatki.razdel_id))');
   DM1.IBQuery1.SQL.Add(' WHERE  NORM.KODP = '+inttostr(S_kodp));
   DM1.IBQuery1.SQL.Add(' and  NORM.mes = '+inttostr(mes));
   DM1.IBQuery1.SQL.Add(' and  NORM.god = '+inttostr(god));
   DM1.IBQuery1.SQL.Add(' ORDER BY '+Usl_Sort);
   DM1.IBQuery1.Active := True;
   DM1.IBQuery1.First;
   if DM1.IBQuery1.Eof then
   begin
    if mes<>1 then
    begin
     mes_s:=mes-1;
     god_s:=god;
    end
    else
    begin
     mes_s:=12;
     god_s:=god-1;
    end;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT distinct ostatki.kart_id, norm.KODP,NORM.KEI_ID KEIN, NORM.KSM_ID, NORM.KRAZ, NORM.MES, NORM.GOD, NORM.NAZPRPF,cast(norm.plnorm as numeric(16,7)) as PLNORM,ostatki.ot_s,ostatki.ot_nz,');
    DM1.IBQuery1.SQL.Add(' MATROP.NMAT,MATROP.KEI_ID,matrop.xarkt,matrop.gost, EDIZ.NEIS,razdel.razdel_id,ceh_normz.formula,cEH_NORMZ.KOEF1,CEH_NORMZ.KOEF2, CEH_NORMZ.KOEF3, CEH_NORMZ.PROC,CEH_NORMZ.NORMZ_ID,CEH_NORMZ.decznak,');
    DM1.IBQuery1.SQL.Add(' NORM.PLNORM*'+replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.')+' as Rasch_Zag,');
    DM1.IBQuery1.SQL.Add(' NORM.PLNORM*'+replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.')+' as Proc_Zag,');
    DM1.IBQuery1.SQL.Add(' (select kol_new from ceh_ost_ediz(norm.KSM_ID, MATROP.KEI_ID, norm.KEI_ID, ostatki.ot_s)) Kot_S,');
    DM1.IBQuery1.SQL.Add(' (select kol_new from ceh_ost_ediz(norm.KSM_ID, MATROP.KEI_ID, norm.KEI_ID,  ostatki.ot_nz)) Kot_Nz');
    DM1.IBQuery1.SQL.Add(' FROM NORM ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN MATROP ON (NORM.KSM_ID = MATROP.KSM_ID)');
    DM1.IBQuery1.SQL.Add(' INNER JOIN EDIZ ON (NORM.KEI_ID = EDIZ.KEI_ID)');
    DM1.IBQuery1.SQL.Add(' inner JOIN RAZDEL ON (NORM.KRAZ = RAZDEL.KRAZ)');
    DM1.IBQuery1.SQL.Add(' left JOIN ceh_normz ON ((NORM.kodp = ceh_normz.ksm_id_pr) AND (norm.ksm_id=ceh_normz.ksm_id_mat) AND (razdel.razdel_id=ceh_normz.razdel_id))');
    DM1.IBQuery1.SQL.Add(' left JOIN ostatki ON ((NORM.kodp = ostatki.ksm_idpr) AND (norm.ksm_id=ostatki.ksm_id) AND (razdel.razdel_id=ostatki.razdel_id))');
    DM1.IBQuery1.SQL.Add(' WHERE  NORM.KODP = '+inttostr(S_kodp));
    DM1.IBQuery1.SQL.Add(' and  NORM.mes = '+inttostr(mes_s));
    DM1.IBQuery1.SQL.Add(' and  NORM.god = '+inttostr(god_s));
    DM1.IBQuery1.SQL.Add(' ORDER BY '+Usl_Sort);
    DM1.IBQuery1.Active := True;
    DM1.IBQuery1.First;
   end;
   TexGur.DisableControls;
   while not DM1.IBQuery1.Eof do
   begin
    TexGur.First;
    if NOT TexGur.Locate('ksm_id;kraz',VarArrayOf([dm1.IBQuery1.FieldByName('KSM_ID').AsInteger,dm1.IBQuery1.FieldByName('KRAZ').AsInteger]),[]) THEN
    BEGIN
     TexGur.edit;
     TexGurPLnorm.AsFloat:=dm1.IBQuery1.FieldByName('Plnorm').AsFloat;
     TexGurRasch_Zag.AsFloat:=dm1.IBQuery1.FieldByName('Rasch_Zag').AsFloat;
     TexGurProc_Zag.AsFloat:=dm1.IBQuery1.FieldByName('Proc_Zag').AsFloat-TexGurkOt_Nz.AsFloat;
     TexGur.Post;
    END;
    DM1.IBQuery1.Next;
   end;
   TexGur.EnableControls;
   TexGur.BeforePost:=TexGurBeforePost; }
  end;
 end;
end;

procedure TFTexGur.Edit1Click(Sender: TObject);
begin
 edit1.text:='';
 edit2.text:='';
 vSeria_id:=0;
 IF  fSprFormul.CEH_NormZ.Active THEN
  fSprFormul.CEH_NormZ.Active:=FALSE;
end;

procedure TFTexGur.ToolButton3Click(Sender: TObject);
 var
 usl_ser: string;
begin
//Сохранение внесенных измененний по т/ж
 if TexGur.Modified then
     TexGur.Post;
 s_seria:=edit2.Text;
 if s_seria<>'' then
 begin
  Splash := ShowSplashWindow(AniBmp1,
         'Сохранение данных. Подождите, пожалуйста...', True, nil);
  if dm1.Kart.Active=false then
  begin
   DM1.Kart.MacroByName('USL').AsString:='WHERE document.klient_id='+inttostr(s_kodp)
  +' and document.date_op between '+''''+ s_dat1+''''+' and '+''''+s_dat2+'''';
   DM1.Kart.Open;
  end;
  dm1.Kart.BeforePost:=nil;
  TexGur.First;
  while not TexGur.Eof do
  begin
   if TexGurKart_id.AsInteger<>0 then
   begin
    if TexGurStroka_id.AsInteger=0 then
    begin
     st_kart:=TexGurKart_id.AsInteger;
     dm1.Kart.Insert;
     DM1.Kart.FieldByName('Ksm_Id').AsInteger :=TexGurKsm_id.AsInteger;
     dm1.KartKol_rash_ediz.AsFloat:=TexGurKol_Rash_Ediz.AsFloat;
     dm1.KartKol_prih_ediz.AsFloat:=0;
     dm1.KartKol_rash.AsFloat:=0;
     dm1.KartKol_prih.AsFloat:=0;
     DM1.Kart.FieldByName('razdel_Id').AsInteger :=TexGurRazdel_id.AsInteger;
     DM1.Kart.FieldByName('kei_Id').AsInteger :=TexGurKein.AsInteger;
     DM1.Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
     DM1.Kart.FieldByName('KART_Id').AsInteger :=TexGurKart_id.AsInteger;
     DM1.Kart.FieldByName('TIP_OP_Id').AsInteger :=33;
     DM1.Kart.FieldByName('TIP_DOK_Id').AsInteger :=37;
     DM1.Kart.FieldByName('klient_Id').AsInteger :=s_kodp;
     dm1.Kart.Post;
    end
    else
    begin
     dm1.Kart.First;
     if dm1.Kart.Locate('kart_id;doc_id',VarArrayOf([texGurKart_id.AsInteger,vDocument_id]),[]) then
     begin
      dm1.Kart.Edit;
      DM1.Kart.FieldByName('KART_Id').AsInteger :=TexGurKart_id.AsInteger;
      dm1.KartKol_rash_ediz.AsFloat:=TexGurKol_Rash_Ediz.AsFloat;
      dm1.KartKol_prih_ediz.AsFloat:=0;
      dm1.KartKol_rash.AsFloat:=0;
      dm1.KartKol_prih.AsFloat:=0;
      dm1.Kart.Post;
     end
//     else
//     st_kart:=st_kart;
    end;
   end;
   TexGur.Next;
  end;
  s_seria:=edit2.Text;
  dm1.Kart.BeforePost:=dm1.KartBeforePost;
  if not  dm1.seria.Active then
  begin
   Dm1.Seria.ParamByName('Ksm_id').AsInteger:=S_KODP;
   DM1.Seria.MacroByName('usl').AsString:='SERIA.SERIA='+''''+S_SERIA+'''';
   dm1.Seria.Active:=true;
   vSeria_id:=dm1.SeriaSeria_id.AsInteger;
  end;
  s_seria_p:=s_seria;
  S_KSM:=S_KODP;
  DM1.Seria.Edit;
  DM1.SeriaDate_ZAG.AsDateTime:=DateEdit1.Date;
  if edit3.Text<>'' then dm1.SeriaOB_ZAG.AsFloat:=strtofloat(Edit3.Text) else dm1.SeriaOB_ZAG.AsFloat:=0;
  if edit16.Text<>'' then DM1.SeriaVlag_TM.AsFloat:=strtofloat(Edit16.Text) else DM1.SeriaVlag_TM.AsFloat:=0;
  if edit9.Text<>'' then DM1.SeriaKol_seria.AsFloat:=strtofloat(Edit9.Text) else DM1.SeriaKol_seria.AsFloat:=0;
  DM1.Seria.Post;
  DM1.Seria.ApplyUpdates;
  if dm1.Ostatki.Active  then
  begin
   if DM1.Ostatki.UpdatesPending then
    DM1.Ostatki.ApplyUpdates;
   dm1.Ostatki.Active:=false;
  end;
  usl_ser:=' and OST.KSM_ID='+INTTOSTR(s_kodp)+' and ost.seria_id='+inttostr(vSeria_id);
  DM1.Ostatki.ParamByName('struk_ID').AsInteger:=vstruk_id;
  DM1.Ostatki.MacroByName('usl').AsString:=usl_ser;
  DM1.Ostatki.Open;
  if not dm1.Ostatki.Eof then
   s_kart_id:=DM1.OstatkiKart_id.AsInteger
  else
  begin
   v_razdel:=0;
   DM1.Ostatki.Insert;
   DM1.Ostatki.Post;
   dm1.Ostatki.ApplyUpdates;
   s_kart_id:=vKart_id;
  end;
  IF not dm1.TexStad.Active then dm1.TexStad.Active:=true;
  dm1.TexStad.First;
  while not dm1.TexStad.Eof do
  begin
   if dm1.TexStadKart_id.AsInteger=0 then
   begin
    dm1.TexStad.Edit;
    dm1.TexStadKart_id.AsInteger:=s_kart_id;
    dm1.TexStad.Post;
   end;
   dm1.TexStad.Next;
  end;

  if (fsPRfORMUL.Ceh_Normz.Modified) or (fsPRfORMUL.Ceh_Normz.State =dsEdit)
    or (fsPRfORMUL.Ceh_Normz.State =dsInsert) then
     fsPRfORMUL.Ceh_Normz.Post;

  if (DM1.Seria.Modified) or (DM1.Seria.State =dsEdit)
    or (DM1.Seria.State =dsInsert) then
     DM1.Seria.Post;

  if (Seria_s.Modified) or (Seria_s.State =dsEdit)
    or (Seria_s.State =dsInsert) then
     Seria_s.Post;

   if (Ceh_marsh.Modified) or (Ceh_marsh.State =dsEdit)
    or (Ceh_marsh.State =dsInsert) then
   if ceh_marshZag_ov.AsFloat<>0 then
    Ceh_marsh.Post;

  if (DM1.Ostatki.Modified) or (DM1.Ostatki.State =dsEdit)
    or (DM1.Ostatki.State =dsInsert) then
     DM1.Ostatki.Post;
  if (dm1.TexStad.Modified) or (dm1.TexStad.State =dsEdit)
    or (dm1.TexStad.State =dsInsert) then
     dm1.TexStad.Post;

  try
   IF FSprFormul.Ceh_Normz.UpdatesPending THEN
      fsPRfORMUL.Ceh_Normz.ApplyUpdates;
   if DM1.Seria.UpdatesPending then
      DM1.Seria.ApplyUpdates;
   if Seria_s.UpdatesPending then
      Seria_s.ApplyUpdates;
   if DM1.Ostatki.UpdatesPending then
      DM1.Ostatki.ApplyUpdates;
   if DM1.Kart.UpdatesPending then
      DM1.Kart.ApplyUpdates;
   if dm1.TexStad.UpdatesPending then
      dm1.TexStad.ApplyUpdates;
   if Ceh_marsh.UpdatesPending then
      Ceh_marsh.ApplyUpdates;
   DM1.IBT_WRITE.Commit;
   DM1.IBT_READ.CommitRetaining;
   Ceh_marsh.Close;
   dm1.TexStad.Close;
   dm1.Seria.Close;
   dm1.Kart.Close;
   Seria_s.Close;
   dm1.IBT_WRITE.Active:=FALSE;
   dm1.IBT_READ.Active:=FALSE;
   TexGurSost;
// добавление в приход
   TexGur.First;
   while not TexGur.Eof do
   begin
    s_ksm:=TexGurKsm_id.AsInteger;
    v_kein:=TexGurKein.AsInteger;
    vklient_id:=s_kodp;
    v_razdel:=TexGurRazdel_id.AsInteger;
    if FSprFormul.Ceh_Normz.Active=true then FSprFormul.CEH_NormZ.Close;
    FSprFormul.CEH_NormZ.MacroByName('SORT').AsString:='';
    FSprFormul.CEH_NormZ.MacroByName('USL').AsString:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP)+' and CEH_NORMZ.KSM_ID_MAt='+INTTOSTR(S_Ksm);
    FSprFormul.CEH_NormZ.Open;
    if not FSprFormul.CEH_NORMZ.eof then
     if FSprFormul.CEH_NORMZDecznak.AsVariant<>null  then
       tochn:=-FSprFormul.CEH_NORMZDecznak.asinteger
     else tochn:=-3
    else tochn:=-3;
    pr_kor:=0;
    DM1.DobPrixPrep(false);
    TexGur.Next;
   end;
   FSprFormul.CEH_NormZ.Close;
  except
   MessageDlg('Произошла ошибка при записи!', mtWarning, [mbOK], 0);
   DM1.IBT_Read.RollbackRetaining;
  end;
  Splash.Free;
 end;
end;

procedure TFTexGur.DBGridEh1EditButtonClick(Sender: TObject);
begin
if dbgridEh1.SelectedField.FieldName='NAME_STAD' then
BEGIN
pr_N:=TRUE;
if FSprStad=nil then FSprStad:=TFSprStad.Create(Application);
 FSprStad.ShowModal;
 if FSprStad.ModalResult > 50 then
  begin
   s_stad:=FSprStad.ModalResult-50;
   dm1.TexStad.Edit;
   dm1.TexStadNAME_STAD.AsString:=dm1.Ceh_StadName_stad.AsString;
   dm1.TexStadStadia_ID.AsInteger:=S_STAD;
   dbgridEh1.Refresh;
  end;
end;
END;

procedure TFTexGur.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 IF DM1.Seria.Active THEN DM1.Seria.Close;
 IF DM1.Ostatki.Active THEN DM1.Ostatki.Close;
 IF DM1.Document.Active THEN DM1.Document.Close;
 IF TexGur.Active THEN TexGur.Close;
 IF dm1.TexStad.Active THEN dm1.TexStad.Close;
 IF SprStad.Active THEN SprStad.Close;
 vseria_id:=0;
end;

procedure TFTexGur.MyGetValue(const s: String; var v: Variant);
begin
 if UpperCase(S)='K1' then if FTexGur.Edit5.Text<>'' then v:=strtofloat(FTexGur.Edit5.Text) else v:=0;
 if UpperCase(S)='K2' then if FTexGur.Edit6.Text<>'' then v:=strtofloat(FTexGur.Edit6.Text) else v:=0;
 if UpperCase(S)='K3' then if FTexGur.Edit7.Text<>'' then v:=strtofloat(FTexGur.Edit7.Text) else v:=0;
 if UpperCase(S)='K4' then if FTexGur.Edit8.Text<>'' then v:=strtofloat(FTexGur.Edit8.Text) else v:=0;
 if UpperCase(S)='WT' then if FTexGur.Edit16.Text<>'' then v:=strtofloat(FTexGur.Edit16.Text) else v:=0;
 if UpperCase(S)='MC' then if FTexGur.Edit10.Text<>'' then v:=strtofloat(FTexGur.Edit10.Text) else v:=0;
 if UpperCase(S)='MKC' then if FTexGur.Edit14.Text<>'' then v:=strtofloat(FTexGur.Edit14.Text) else v:=0;
 if UpperCase(S)='W' then if FTexGur.DBEdit11.Text<>'' then v:=strtofloat(FTexGur.DBEdit11.Text) else v:=0;
 if UpperCase(S)='C' then if FTexGur.DBEdit8.Text<>'' then v:=strtofloat(FTexGur.DBEdit8.Text) else v:=0;
 if UpperCase(S)='WK'  then if FTexGur.DBEdit5.Text<>'' then v:=strtofloat(FTexGur.DBEdit5.Text) else v:=0;
 if UpperCase(S)='MT' then if FTexGur.Edit3.Text<>'' then v:=strtofloat(FTexGur.Edit3.Text) else v:=0;
 if UpperCase(S)='V2' then if FTexGur.Edit9.Text<>'' then v:=strtofloat(FTexGur.Edit9.Text) else v:=0;
 if UpperCase(S)='MM' then if FTexGur.Edit13.Text<>'' then v:=strtofloat(FTexGur.Edit13.Text) else v:=0;
 if UpperCase(S)='M' then if FTexGur.dbEdit7.Text<>'' then v:=strtofloat(FTexGur.dbEdit7.Text) else v:=0;
 if UpperCase(S)='N' then if FTexGur.Edit12.Text<>'' then v:=strtofloat(FTexGur.Edit12.Text) else v:=0;
 if UpperCase(S)='PN' then v:=TexGurPlnorm.AsFloat;
end;

procedure TFTexGur.MyGetValue1(const s: String; var v: Variant);
begin

 if UpperCase(S)='K1' then v:=TexGurKoef1.AsFloat;
 if UpperCase(S)='K2' then v:=TexGurKoef2.AsFloat;
 if UpperCase(S)='K3' then v:=TexGurKoef3.AsFloat;
 if UpperCase(S)='K4' then v:=TexGurProc.AsFloat;
 if UpperCase(S)='WT' then if FTexGur.Edit16.Text<>'' then v:=strtofloat(FTexGur.Edit16.Text) else v:=0;
 if UpperCase(S)='MC' then if FTexGur.Edit10.Text<>'' then v:=strtofloat(FTexGur.Edit10.Text) else v:=0;
 if UpperCase(S)='MKC' then if FTexGur.Edit14.Text<>'' then v:=strtofloat(FTexGur.Edit14.Text) else v:=0;
 if UpperCase(S)='W' then if FTexGur.DBEdit11.Text<>'' then v:=strtofloat(FTexGur.DBEdit11.Text) else v:=0;
 if UpperCase(S)='C' then if FTexGur.DBEdit8.Text<>'' then v:=strtofloat(FTexGur.DBEdit8.Text) else v:=0;
 if UpperCase(S)='WK'  then if FTexGur.DBEdit5.Text<>'' then v:=strtofloat(FTexGur.DBEdit5.Text) else v:=0;
 if UpperCase(S)='MT' then if FTexGur.Edit3.Text<>'' then v:=strtofloat(FTexGur.Edit3.Text) else v:=0;
 if UpperCase(S)='V2' then if FTexGur.Edit9.Text<>'' then v:=strtofloat(FTexGur.Edit9.Text) else v:=0;
 if UpperCase(S)='MM' then if FTexGur.Edit13.Text<>'' then v:=strtofloat(FTexGur.Edit13.Text) else v:=0;
 if UpperCase(S)='M' then if FTexGur.dbEdit7.Text<>'' then v:=strtofloat(FTexGur.dbEdit7.Text) else v:=0;
 if UpperCase(S)='N' then if FTexGur.Edit12.Text<>'' then v:=strtofloat(FTexGur.Edit12.Text) else v:=0;
 if UpperCase(S)='PN' then v:=TexGurPlnorm.AsFloat;

end;


procedure TFTexGur.N1Click(Sender: TObject);
begin
 dm1.frxReport1.LoadFromFile(reportsPath + 'P_TexGur_o.fr3');
 dm1.FrxReport1.ShowReport;
end;

procedure TFTexGur.N3Click(Sender: TObject);
begin
 dm1.FrReport2.LoadFromFile(reportsPath + 'P_RaschTM.frf');
 dm1.FrReport2.ShowReport;
end;

procedure TFTexGur.N4Click(Sender: TObject);
begin
 dm1.FrReport2.LoadFromFile(reportsPath + 'P_ListKomplSer.frf');
 dm1.FrReport2.ShowReport;
end;

procedure TFTexGur.ToolButton9Click(Sender: TObject);
begin
 if MessageDlg('Пересчитать загрузку?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
 begin
  pr_button9:=false;
//  TexGur.First;
  While not TexGur.Eof do
  begin
   if (TexGurFormula.Asstring<>'  ')and (TexGurFormula.Asstring<>'0') then
   begin
    vFormula:=TfrParser.Create;
    try
     TexGur.Edit;
     IF TexGurDECZNAK.AsVariant=null THEN  TexGurDECZNAK.AsInteger:=3;
     Tochn:=0-TexGurDecznak.AsInteger;
     vFormula.OnGetValue:=MyGetValue1;
     s_kol_zag:=vFormula.Calc(TexGurFormula.Asstring);
     TexGurKol_Rash_EDIZ.asFloat:=SimpleRoundTo(strtofloat(s_kol_zag),Tochn);
//     TexGur.Post;
    finally
     vFormula.Free;
    end;
   end;
   TexGur.Next;
  end;
 end;
 pr_button9:=true;
end;

procedure TFTexGur.TexGurAfterDelete(DataSet: TDataSet);
begin
if s_del<>0 then
begin
 if not dm1.IBT_WRITE.Active then dm1.IBT_WRITE.StartTransaction;
 if not dm1.Kart.Active then
 begin
   dm1.Kart.MacroByName('usl').AsString:=' WHERE document.klient_id='+inttostr(s_kodp)
     +' and (document.date_op between '+''''+ s_dat1+''''+' and '+''''+s_dat2+''''
     + ') ';
    dm1.Kart.Open;
 end;
 if dm1.Kart.Locate('stroka_id',s_del,[]) then
 begin
   dm1.Kart.Delete;
   dm1.Kart.ApplyUpdates;
 end;
end;
end;

procedure TFTexGur.TexGurAfterScroll(DataSet: TDataSet);
begin
edit4.Text:=texGurFormula.AsString;
edit5.Text:=texGurKoef1.AsString;
edit6.Text:=texGurKoef2.AsString;
edit7.Text:=texGurKoef3.AsString;
edit8.Text:=texGurproc.AsString;
IF texGurDecznak.AsInteger<>0 THEN
 edit20.Text:=inttostr(texGurDecznak.AsInteger)
else
 edit20.Text:='3';
 if Ceh_Marsh.Active then
  Ceh_Marsh.Locate('ksm_idOV',texGurKsm_id.AsInteger,[]);
end;

procedure TFTexGur.Button1Click(Sender: TObject);
 var s_kol: double;
begin
 IF not fSprFormul.CEH_NormZ.Active THEN
 begin
  SORTf:=' ORDER BY CEH_NORMZ.RAZDEL_ID,CEH_NORMZ.KSM_ID_MAT ';
  USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(s_Kodp);
  fSprFormul.CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
  fSprFormul.CEH_NormZ.MacroByName('USL').AsString:=USLf;
  fSprFormul.CEH_NormZ.Open
 end;
 FSprFormul.CEH_NORMZ.First;
 if FSprFormul.CEH_NORMZ.Locate('ksm_id_mat;razdel_id',VarArrayOf([texGurKsm_id.AsInteger,texGurRazdel_id.AsInteger]),[]) then
  FSprFormul.CEH_NORMZ.Edit
 ELSE
 BEGIN
  FSprFormul.CEH_NORMZ.Insert;
  FSprFormul.CEH_NORMZKsm_id_PR.AsInteger:=S_KODP;
  FSprFormul.CEH_NORMZKsm_id_mat.AsInteger:=texGurKsm_id.AsInteger;
  FSprFormul.CEH_NORMZRazdel_id.AsInteger:=texGurRazdel_id.AsInteger;
 END;
 FSprFormul.CEH_NORMZFormula.ASString:=edit4.text;
 IF edit5.text='' THEN FSprFormul.CEH_NORMZkoef1.AsFloat:=0 ELSE FSprFormul.CEH_NORMZkoef1.AsFloat:=strtofloat(edit5.text);
 IF edit6.text='' THEN FSprFormul.CEH_NORMZkoef2.AsFloat:=0 ELSE FSprFormul.CEH_NORMZkoef2.AsFloat:=strtofloat(edit6.text);
 IF edit7.text='' THEN FSprFormul.CEH_NORMZkoef3.AsFloat:=0 ELSE FSprFormul.CEH_NORMZkoef3.AsFloat:=strtofloat(edit7.text);
 IF edit8.text='' THEN FSprFormul.CEH_NORMZProc.AsFloat:=0 ELSE FSprFormul.CEH_NORMZProc.AsFloat:=strtofloat(edit8.text);
 IF edit20.text='' THEN
 BEGIN
  FSprFormul.Ceh_NormzDECZNAK.AsInteger:=3;
  edit20.text:='3'
 END
 ELSE  FSprFormul.Ceh_NormzDECZNAK.AsInteger:=strtoint(edit20.text);
 FSprFormul.CEH_NORMZ.Post;
 FSprFormul.CEH_NORMZ.ApplyUpdates;
 TEXGUR.Edit;
 TexGurFormula.ASString:=edit4.text;
 IF edit5.text='' THEN TexGurKoef1.AsFloat:=0 ELSE TexGurKoef1.AsFloat:=strtofloat(edit5.text);
 IF edit6.text='' THEN TexGurKoef2.AsFloat:=0 ELSE TexGurKoef2.AsFloat:=strtofloat(edit6.text);
 IF edit7.text='' THEN TexGurKoef3.AsFloat:=0 ELSE TexGurKoef3.AsFloat:=strtofloat(edit7.text);
 IF edit8.text='' THEN TexGurProc.AsFloat:=0 ELSE TexGurProc.AsFloat:=strtofloat(edit8.text);
 IF edit20.text='' THEN
 BEGIN
  TexGurDECZNAK.AsInteger:=3;
  edit20.text:='3';
 END
 ELSE TexGurDECZNAK.AsInteger:=strtoint(edit20.text);
 vFormula:=TfrParser.Create;
 try
  Tochn:=0-strtoint(edit20.text);
   vFormula.OnGetValue:=MyGetValue;
   s_kol:=strtofloat(vFormula.Calc(TexGurFormula.Asstring));
  If (NPos('M',edit4.text,1)>0) or (NPos('m',edit4.text,1)>0) then
  begin
   ceh_marsh.Edit;
   ceh_marshZag_Ov.AsFloat:=s_kol;
   ceh_marshKoefper1.AsFloat:=s_kol*(100-ceh_marshVlaga_ov.AsFloat)/100;
   ceh_marsh.Post;
  end;
  TexGurKol_Rash_ediz.asFloat:=SimpleRoundTo(s_kol,Tochn);
 finally
  vFormula.Free;
 end;
end;

procedure TFTexGur.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=tabsheet1 then
 BEGIN
  ToolButton1.Visible:=true;
  ToolButton2.Visible:=true;
  ToolButton3.Visible:=true;
  ToolButton9.Visible:=true;
  USL_SORT:='7,9';
 end
 else
 begin
  ToolButton1.Visible:=false;
  ToolButton2.Visible:=false;
  ToolButton3.Visible:=false;
  ToolButton9.Visible:=false;
  ZagSyr.Close;
  ZagSyr.ParamByName('struk').AsInteger:=vStruk_id;
  ZagSyr.ParamByName('ksm_id').AsInteger:=TexGurKsm_id.AsInteger;
  ZagSyr.MacroByName('SORT').AsString:='razdel.KRAZ';
  ZagSyr.MacroByName('DAT1').AsString:=''''+s_dat1_period+'''';
  ZagSyr.MacroByName('DAT2').AsString:=''''+s_dat2_period+'''';
  ZagSyr.Open;
 end;
end;

procedure TFTexGur.FormShow(Sender: TObject);
begin
 if FSprFormul=nil then FSprFormul:=TfSprFormul.Create(Application);
 if TexGur.Active then TexGur.Active:=false;
 SpinEdit3.Value:=mes;
 SpinEdit4.Value:=god;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1_period:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2_period:=datetostr(IncMonth(strtodate(s_dat1_period),1)-1);
 PageControl1.ActivePage:=tabsheet1;
 USL_SORT:='7,9';
 usl_dat:=' SERIA.Date_ZAG between '+''''+s_dat1_period+''''+' and '+''''+s_dat2_period+'''';
 IF DM1.ConfigUMC.Active THEN DM1.ConfigUMC.close;
 DM1.ConfigUMC.MacroByName('USL').AsString:='STRUK_ID = '+IntToStr(vSTRUK_ID);
 DM1.ConfigUMC.Open;
 if (MES=DM1.ConfigUMCMES.AsInteger) and (GOD=DM1.ConfigUMCGOD.AsInteger) then
 begin
//      Label5.Caption:='(Текущий месяц)';
   MODE:=0;
   ToolButton1.Enabled:=True;
   ToolButton2.Enabled:=True;
   ToolButton3.Enabled:=True;
   ToolButton9.Enabled:=True;
 end
 else
  if ((MES=DM1.ConfigUMCMES.AsInteger-1) and (GOD=DM1.ConfigUMCGOD.AsInteger)) or ((GOD=DM1.ConfigUMCGOD.AsInteger-1) and (MES=12) and (DM1.ConfigUMCMES.AsInteger=1))then
  begin
//     Label5.Caption:='(Прошлый месяц)';
    MODE:=1;
    ToolButton1.Enabled:=True;
    ToolButton2.Enabled:=True;
    ToolButton3.Enabled:=True;
    ToolButton9.Enabled:=True;
  end
  else
  begin
//      Label5.Caption:='(Только просмотр)';
    MODE:=2;
    ToolButton1.Enabled:=False;
    ToolButton2.Enabled:=false;
    ToolButton3.Enabled:=false;
    ToolButton9.Enabled:=false;
  end;
 DM1.ConfigUMC.close;
 if s_kodp<>0 then
 begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,SPPROD.SPROD_ID,SPPROD.VOL_ov,SPPROD.VOLumf,');
  DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,SPPROD.LEK_ID,SPFORMV.NAMEFv,region.nam nam_reg');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.Ksm_id='+inttostr(s_kodp)+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
  DM1.IBQuery1.Active := True;
  if not dm1.IBQuery1.Eof then
  begin
   EDIT1.OnChange:=nil;
    edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
    EDIT1.OnChange:=Edit1Change;
//    edit17.text:=floattostr(DM1.IBQuery1.FieldByName('vol_ov').Asfloat);
    edit13.text:=floattostr(DM1.IBQuery1.FieldByName('volumf').Asfloat);
    s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
    s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
    s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
    s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
    s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
    s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
    s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
    s_Lek_id:=DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
    s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
    s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
    s_Formv:=DM1.IBQuery1.FieldByName('NAMEFV').AsString;
    s_Sprod_id:=DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
    s_namREG:=DM1.IBQuery1.FieldByName('NAM_ReG').AsString;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT *');
    DM1.IBQuery1.SQL.Add(' FROM UTPLAN');
    DM1.IBQuery1.SQL.Add(' WHERE UTPLAN.MES='+inttostr(mes)+' AND UTPLAN.GOD='+inttostr(god)+' AND UTPLAN.SPROD_ID='+inttostr(s_sprod_id));
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
    begin
     Label26.Caption:=floattostr(DM1.IBQuery1.FieldByName('PLAN').AsFloat);
     s_plan:=DM1.IBQuery1.FieldByName('PLAN').AsFloat;
    end
    else
    begin
     Label26.Caption:='0';
     s_plan:=0;
    end;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT kartv.kol_prih');
    DM1.IBQuery1.SQL.Add(' FROM KARTV ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTV.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
    + ' AND KARTV.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
    begin
     Label34.Caption:=floattostr(DM1.IBQuery1.FieldByName('kol_prih').AsFloat);
     s_OPLan:=DM1.IBQuery1.FieldByName('kol_prih').AsFloat;
    end
    else
    begin
     Label34.Caption:='0';
     s_Oplan:=0;
    end;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SUM(kart.kol_prih) SDANO');
    DM1.IBQuery1.SQL.Add(' FROM KART ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.KLIENT_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=2'    + ' AND KART.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
//     Label36.Caption:=floattostr(DM1.IBQuery1.FieldByName('SDANO').AsFloat);
     s_SDANO:=DM1.IBQuery1.FieldByName('SDANO').AsFloat;
     end
    else
    begin
//     Label36.Caption:='0';
     s_SDANO:=0;
    end;
    label19.caption:=s_NMAT;
    label28.caption:=Inttostr(s_KORG);
    label29.caption:=s_namorg;
    label21.caption:=s_Neiz;
    label22.caption:=s_GOST;
    label11.caption:=s_Xarkt;
    label45.caption:=s_Formv;
    label3.caption:=s_namREG;
  end
  else
  begin
   Label3.Caption:='';
   label6.Caption:='';
   label19.Caption:='';
   label3.Caption:='';
   label11.Caption:='';
   label29.Caption:='';
   label21.Caption:='';
   label22.Caption:='';
   label26.Caption:='';
   label34.Caption:='';
//   label36.Caption:='';
   label28.Caption:='';
   label45.Caption:='';
   DateEdit1.Date:=date;
   Edit1.Text:='';
   Edit13.Text:='';
//   Edit17.Text:='';
  end;
 end
 else
 begin
  Label3.Caption:='';
  label6.Caption:='';
  label19.Caption:='';
  label3.Caption:='';
  label11.Caption:='';
  label29.Caption:='';
  label21.Caption:='';
  label22.Caption:='';
  label26.Caption:='';
  label34.Caption:='';
//  label36.Caption:='';
  label28.Caption:='';
  label45.Caption:='';
  DateEdit1.Date:=date;
  Edit1.Text:='';
  Edit13.Text:='';
//  Edit17.Text:='';
 end;
 Edit2.Text:='';
 Edit3.Text:='';
 Edit4.Text:='';
 Edit5.Text:='';
 Edit6.Text:='';
 Edit7.Text:='';
 Edit8.Text:='';
 Edit9.Text:='';
 Edit10.Text:='';
 Edit11.Text:='';
 Edit12.Text:='';
 Edit14.Text:='';
 Edit16.Text:='';
 Edit20.Text:='';
 pr_button9:=true;
 prov:=false;
 Edit1.SetFocus;
end;

procedure TFTexGur.DBGridEh3SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
 Usl_Sort := '';
 for i := 0 to DBGridEh3.SortMarkedColumns.Count-1 do
 BEGIN
  if DBGridEh3.SortMarkedColumns[i].Title.SortMarker = smUpEh then
   Usl_Sort := inttostr(i+1) + '"'+ ' DESC , '
{  begin
    if (DBGridEh3.SortMarkedColumns[i].FieldName='KSM_ID') then
    Usl_Sort := USL_Sort+ 'NORM."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
   else
    if DBGridEh3.SortMarkedColumns[i].FieldName='KRAZ' then
     Usl_Sort := USL_Sort+ 'RAZDEL."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
    ELSE
     Usl_Sort := USL_Sort + 'MATROP."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
  end }
  else
   Usl_Sort := inttostr(i+1) + '"'+ ', '
{  begin
   if (DBGridEh3.SortMarkedColumns[i].FieldName='KSM_ID') then
    Usl_Sort := USL_Sort+ 'NORM."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', '
   else
    if (DBGridEh3.SortMarkedColumns[i].FieldName='KRAZ') then
     Usl_Sort := USL_Sort+ 'RAZDEL."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', '
    else
     Usl_Sort := Usl_Sort + 'MATROP."'+DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', ';
  end; }
 END;
 if Usl_Sort <> '' then
 begin
  Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
  IF MODE<2 THEN
   TexGurSost
  ELSE
  BEGIN
   if (edit9.Text<>'') and (edit9.Text<>'0') then s_vip:=strtofloat(edit9.Text) else s_vip:=0;
   TexGur.Close;
   TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
   TexGur.ParamByName('KODP').AsInteger:=S_KODP;
   TexGur.ParamByName('mes').AsInteger:=mes;
   TexGur.ParamByName('god').AsInteger:=god;
   TexGur.MacroByName('SORT').AsString:=USL_SORT;
   TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
   TexGur.ParamByName('doc').AsInteger:=vDocument_id;
   TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
   TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
   TexGur.Open;
  END;
 end;
end;

procedure TFTexGur.DBGridEh4SortMarkingChanged(Sender: TObject);

var
  i :Integer;
begin
 Usl_Sort := '';
 for i := 0 to DBGridEh4.SortMarkedColumns.Count-1 do
 BEGIN
  if DBGridEh4.SortMarkedColumns[i].Title.SortMarker = smUpEh then
  begin
   if DBGridEh4.SortMarkedColumns[i].FieldName='KRAZ' then
    Usl_Sort := USL_Sort+ 'razdel."'+ DBGridEh4.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
   else
    if DBGridEh4.SortMarkedColumns[i].FieldName='KSM_ID' then
     Usl_Sort := USL_Sort+ 'kart."'+ DBGridEh4.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
    ELSE
     Usl_Sort := USL_Sort + '"'+ DBGridEh4.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
  end
  else
  begin
   if DBGridEh4.SortMarkedColumns[i].FieldName='KRAZ' then
    Usl_Sort := USL_Sort+ 'razdel."'+ DBGridEh4.SortMarkedColumns[i].FieldName + '"'+ ', '
   else
    if DBGridEh4.SortMarkedColumns[i].FieldName='KSM_ID' then
    Usl_Sort := USL_Sort+ 'kart."'+ DBGridEh4.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
    ELSE
     Usl_Sort := Usl_Sort + '"'+DBGridEh4.SortMarkedColumns[i].FieldName + '"'+ ', ';
  end;
 END;
 if Usl_Sort <> '' then
 begin
  Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
  ZagSyr.Close;
  ZagSyr.ParamByName('Ksm_Id').AsInteger:=TexGurKsm_id.AsInteger;
  ZagSyr.ParamByName('Struk').AsInteger:=vStruk_id;
  ZagSyr.MacroByName('SORT').AsString:=Usl_Sort;
  ZagSyr.MacroByName('DAT1').AsString:=''''+s_dat1_period+'''';
  ZagSyr.MacroByName('DAT2').AsString:=''''+s_dat2_period+'''';
  ZagSyr.Open;
 end;
end;

procedure TFTexGur.DateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
  if (DateEdit1.text<>'' )and (DateEdit1.text<=s_dat2_period)  then
  begin
   IF MODE<2 THEN
    TexGurSost
   ElSE
   BEGIN
    if (edit9.Text<>'') and (edit9.Text<>'0') then s_vip:=strtofloat(edit9.Text) else s_vip:=0;
    TexGur.Close;
    TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
    TexGur.ParamByName('mes').AsInteger:=mes;
    TexGur.ParamByName('god').AsInteger:=god;
    TexGur.ParamByName('KODP').AsInteger:=S_KODP;
    TexGur.MacroByName('SORT').AsString:=USL_SORT;
    TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
    TexGur.ParamByName('doc').AsInteger:=vDocument_id;
    TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
    TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
    TexGur.Open;
   END;
  end
end;

procedure TFTexGur.Edit2Click(Sender: TObject);
begin
 edit2.text:='';
 edit3.text:='';
 edit9.text:='';
 TexGur.Close;
end;

procedure TFTexGur.ToolButton2Click(Sender: TObject);
begin
if MessageDlg('Удалять запись? ',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
begin
 try
 begin
  TexGur.Delete;
 end;
 except
  On E: Exception do
  begin
   MessageDlg('Произошла ошибка при удалении записи!'+E.Message, mtWarning, [mbOK], 0);
   Abort;
  end;
 end;
end;

end;

procedure TFTexGur.ToolButton1Click(Sender: TObject);

begin
 s_seria_p:=s_seria;
 TexGur.APPEND;
 TexGurStroka_id.AsInteger:=vStroka_id;
 TexGurKodp.AsInteger:=s_kodp;
 TexGurDate_op.AsDateTime:=strtodate(dateEdit1.Text);
 TexGurDoc_id.AsInteger:=vDocument_id;
// TexGurMes.AsInteger:=mes;
// TexGurGod.AsInteger:=God;
 TexGurTip_op_id.AsInteger:=33;
 DBGridEh3.SetFocus;
 s_seria:=s_seria_p;
end;

procedure TFTexGur.DBGridEh3EditButtonClick(Sender: TObject);
var
  nm : integer;
begin
  nm := 0;
  if dbgrideh3.SelectedField.FieldName='NEIS' then nm:=1;
  if dbgrideh3.SelectedField.FieldName='KSM_ID' then nm:=2;
  if dbgrideh3.SelectedField.FieldName='KRAZ' then nm:=3;
  //DM1.Kart.Edit;
  TexGur.Edit;
  case nm of
  1: begin
      if FEdiz=nil then FEdiz:=TFEdiz.Create(Application);
      FEdiz.ShowModal;
      if FEdiz.ModalResult > 50 then
      begin
       s_kei:=FEdiz.ModalResult-50;
       TexGurKein.AsInteger:=DM1.EdizKei_id.AsInteger;
       TexGurNeis.AsString:=DM1.EdizNeis.AsString;
      end;
     end;
  2: begin
      if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
      FindMatrop.DataBaseName:=dm1.BELMED;
      FindMatrop.ReadOnly:=true;
      FindMatrop.ShowModal;
      if FindMatrop.ModalResult > 50 then
      begin
       TexGur.FieldByName('Ksm_Id').AsInteger :=FindMatrop.ModalResult-50;
       TexGur.FieldByName('Gost').AsString :=FindMatrop.IBMatropGOST.AsString;
       TexGur.FieldByName('Nmat').AsString :=FindMatrop.IBMatropNMAT.AsString;
       TexGur.FieldByName('Kei_Id').AsInteger :=FindMatrop.IBMatropKei_id.AsInteger;
       TexGur.FieldByName('Xarkt').AsString :=FindMatrop.IBMatropXARKT.AsString;
      end;
     end;
  3: begin
      if FRazdel=nil then FRazdel:=TFRazdel.Create(Application);
      FRazdel.ShowModal;
      if FRazdel.ModalResult>50 then
      begin
       TexGurRazdel_id.AsInteger:=FRazdel.ModalResult-50;
       TexGurKraz.AsInteger:=s_Razdel;
      end;
     end;
  end;
end;

procedure TFTexGur.TexGurKSM_IDValidate(Sender: TField);
begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=TexGur.FieldByName('Ksm_Id').AsInteger;
  dM1.Matrop.Active:=TRUE;
  if not dm1.Matrop.eof then
  begin
   TexGur.FieldByName('Gost').AsString :=dm1.MatropGOST.AsString;
   TexGur.FieldByName('Nmat').AsString :=dm1.Matrop.FieldByName('Nmat').AsString;;
   TexGur.FieldByName('Kei_Id').AsInteger :=dm1.Matrop.FieldByName('Kei_id').AsInteger;;
   TexGur.FieldByName('Xarkt').AsString :=dm1.Matrop.FieldByName('Xarkt').AsString;
  end
  else
   showMessage('Нет такого кода! Воспользуйтесь справочником!');

end;

procedure TFTexGur.frReport2GetValue(const ParName: String;
  var ParValue: Variant);
begin
 if ParName='Kod_prod' then ParValue:=FTexGur.Edit1.Text;
 if ParName='gost' then ParValue:=FTexGur.Label22.Caption;
 if ParName='xarkt' then ParValue:=FTexGur.Label11.Caption;
 if ParName='namorg' then ParValue:=FTexGur.Label29.Caption;
 if ParName='namcex' then ParValue:=FGlMenu.RxLabel1.Caption;
 if ParName='nmat' then ParValue:=FTexGur.Label19.Caption;
 if ParName='neis' then ParValue:=FTexGur.Label21.Caption;
 if ParName='seria' then ParValue:=FTexGur.Edit2.Text;
 if ParName='obem' then ParValue:=FTexGur.Edit3.Text;
 if ParName='dat_ser' then ParValue:=FTexGur.DateEdit1.Text;


end;

procedure TFTexGur.ToolButton5Click(Sender: TObject);
begin
 dm1.TexStad.DisableControls;
 dm1.MDTexStad.EmptyTable;
 dm1.PechTexGur.EmptyTable;
 s_kodprod:=edit1.Text;
 s_gost:=label22.Caption;
 s_nmat:=label19.Caption;
 s_neiz:=label21.Caption;
 s_xarkt:=label11.Caption;
 s_namorg:=label29.Caption;
 s_namreg:=label3.Caption;
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT ost.kart_id, seria.seria_id,seria.seria,seria.date_zag,seria.ob_zag, document.ndok, NORM.KODP, NORM.KSM_ID, NORM.KRAZ, NORM.MES, NORM.GOD, NORM.NAZPRPF, NORM.PLNORM,NORM.KEI_ID KEIN,');
 DM1.IBQuery1.SQL.Add('MATROP.NMAT,MATROP.XARKT,MATROP.GOST, MATROP.KEI_ID,EDIZ.NEIS,razdel.razdel_id,razdel.kodraz,razdel.namraz,ceh_normz.formula,');
 DM1.IBQuery1.SQL.Add('document.tip_op_id,KART.kol_rash_ediz,document.date_op, CEH_NORMZ.KOEF1, CEH_NORMZ. KOEF2, CEH_NORMZ. KOEF3, CEH_NORMZ. PROC,CEH_NORMZ.NORMZ_ID,document.doc_id,ostatki.ot_s,ostatki.ot_nz');
 DM1.IBQuery1.SQL.Add(' FROM KART');
 DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.doc_ID =DOCUMENT.DOC_ID)');
 DM1.IBQuery1.SQL.Add(' inner JOIN OSTATKI ON (KART.KART_ID =OSTATKI. KART_ID)');
 DM1.IBQuery1.SQL.Add(' inner JOIN MATROP ON (KART.KSM_ID = MATROP.KSM_ID)');
 DM1.IBQuery1.SQL.Add(' inner JOIN RAZDEL ON (KART.RAZDEL_ID =RAZDEL.RAZDEL_ID)');
 DM1.IBQuery1.SQL.Add(' left join norm_view (119,'+inttostr(god)+','+inttostr(mes)+','+inttostr(s_KODP)+','+inttostr(vstruk_id));
 DM1.IBQuery1.SQL.Add(',0) norm on (ostatki.ksm_idpr=norm.kodp and ostatki.ksm_id=norm.ksm_id and ostatki.razdel_id=norm.razdel_id)');
 DM1.IBQuery1.SQL.Add(' left JOIN ceh_normz ON ((NORM.kodp = ceh_normz.ksm_id_pr) AND (norm.ksm_id=ceh_normz.ksm_id_mat) AND (razdel.razdel_id=ceh_normz.razdel_id))');
 DM1.IBQuery1.SQL.Add(' LEFT JOIN EDIZ ON (norm.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add(' INNER join seria on (substr(document.ndok,11,9)=seria.seria and seria.ksm_id=norm.kodp)');
 DM1.IBQuery1.SQL.Add(' left join ostatki ost on (seria.seria_id=ost.seria_id and norm.kodp=ost.ksm_id)');
 DM1.IBQuery1.SQL.Add(' WHERE  ost.STRUK_ID='+inttostr(vStruk_id));
 DM1.IBQuery1.SQL.Add(' and ostatki.ksm_idpr='+inttostr(s_kodp));
 DM1.IBQuery1.SQL.Add(' and document.doc_id ='+inttostr(vDocument_id));
 DM1.IBQuery1.SQL.Add(' and kart.kol_rash_ediz<>0');
 DM1.IBQuery1.SQL.Add(' Order by document.doc_id,razdel.razdel_id');
 DM1.IBQuery1.Open;
 if not DM1.IBQuery1.Eof then
 begin
  dm1.PechTexGur.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
  dm1.PechTexGur.Active:=true;
  dm1.MDTexStad.LoadFromDataSet(dm1.TexStad, 0, lmAppend);
  dm1.MDTexStad.Active:=true;
  If not dm1.PechTexGur.Eof then
  PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
 end;
 dm1.TexStad.EnableControls;
end;

procedure TFTexGur.ToolButton6Click(Sender: TObject);
begin
//FOstSyr.DBText1.DataSource:=FTexGur.DSTexGur;
//FOstSyr.DBText2.DataSource:=FTexGur.DSTexGur;
//FOstSyr.DBText3.DataSource:=FTexGur.DSTexGur;
 S_ksm:=TexGurKsm_id.AsInteger;
 FOstSyr.Edit1.text:=inttostr(TexGurKsm_id.AsInteger);
 FOstSyr.Label7.Caption:=TexGurNmat.AsString;
 FOstSyr.label8.Caption:=TexGurNeis.AsString;
 FOstSyr.DateEdit3.Date:=strtodate(s_dat1);
 FOstSyr.DateEdit4.Date:=strtodate(s_dat2);
if FOstSyr=nil then FOstSyr:=TFOstSyr.Create(Application);
  FOstSyr.ShowModal;
end;

procedure TFTexGur.ToolButton8Click(Sender: TObject);
begin
 if  not dm1.Seria.Eof then
 begin

 end
 else
 begin
  DM1.Seria.Active :=False;
  DM1.Seria.ParamByName('ksm_id').AsInteger:=s_kodp;
  DM1.Seria.MacroByName('usl').AsString:=' 0=0';
  dm1.Seria.Active:=true;
  if  not dm1.Seria.Eof then
  begin
   if FSer=nil then FSer:=TFSer.Create(Application);
   FSer.ShowModal;
   if FSer.ModalResult > 50 then
   begin
    vSeria_id:=FSer.ModalResult-50;
   end;
  end;
end;
end;

procedure TFTexGur.SpeedButton1Click(Sender: TObject);
var
usl_dat_s: string;
begin
 usl_dat_s:=usl_dat;
 usl_dat:=' 0=0';
 DM1.Seria.Active :=False;
 DM1.Seria.ParamByName('ksm_id').AsInteger:=s_kodp;
 DM1.Seria.MacroByName('usl').AsString:=usl_dat;
 dm1.Seria.Active:=true;
 if  not dm1.Seria.Eof then
 begin
  dm1.Seria.Last;
  if FSer=nil then FSer:=TFSer.Create(Application);
  DM1.FormToObject(FSER,Edit2);
  FSer.ShowModal;
  if FSer.ModalResult > 50 then
  begin
   edit3.text:='';
   edit9.text:='';
   TexGur.Close;
   vSeria_id:=FSer.ModalResult-50;
   s_seria:=DM1.SeriaSeria.AsString;
   s_kol_seria:=DM1.SeriaKol_Seria.AsFloat;
//   EDIT9.OnChange:=nil;
   edit9.Text:=floattostr(s_kol_seria);
//   EDIT9.OnChange:=Edit9Change;
   Edit2.Text:=s_Seria;
   edit3.Text:=floattostr(SimpleRoundTo(dm1.SeriaOB_ZAG.AsFloat,-2));
   edit16.Text:=floattostr(dm1.Seriavlag_tm.AsFloat);
   if dm1.SeriaDATE_ZAG.AsVariant<>null then
   begin
     DateEdit1.Date:=dm1.SeriaDATE_ZAG.AsDateTime;
//     DateEdit1.ReadOnly:=true;
     TexGur.Close;
     TexGurSost;
     TexGur.First;
   end
   else
   begin
     DateEdit1.ReadOnly:=false;
     DateEdit1.SetFocus;
   end;
  end;
 end
 else
 begin
  DM1.Seria.Active :=False;
  DM1.Seria.ParamByName('ksm_id').AsInteger:=s_kodp;
  DM1.Seria.MacroByName('usl').AsString:=' 0=0';
  dm1.Seria.Active:=true;
  if  not dm1.Seria.Eof then
  begin
   if FSer=nil then FSer:=TFSer.Create(Application);
   FSer.ShowModal;
   if FSer.ModalResult > 50 then
   begin
    vSeria_id:=FSer.ModalResult-50;
    s_seria:=DM1.SeriaSeria.AsString;
    s_kol_seria:=DM1.SeriaKol_Seria.AsFloat;
//    EDIT9.OnChange:=nil;
    edit9.Text:=floattostr(s_kol_seria);
//    EDIT9.OnChange:=Edit9Change;
    Edit2.Text:=s_Seria;
    Edit3.Text:=floattostr(dm1.SeriaOB_ZAG.AsFloat);
    edit16.Text:=floattostr(dm1.Seriavlag_tm.AsFloat);
    if dm1.SeriaDATE_ZAG.AsVariant<>null then
    begin
     DateEdit1.Date:=dm1.SeriaDATE_ZAG.AsDateTime;
//     DateEdit1.ReadOnly:=true;
     TexGur.Close;
     TexGurSost;
     TexGur.First;
    end
    else
    begin
     DateEdit1.ReadOnly:=false;
     DateEdit1.SetFocus;
    end;
   end;
  end
  else
  begin
   MessageDlg('Нет серии заданного препарата!', mtWarning, [mbOK], 0);
   vseria_id:=0;
  end;
 end;
 usl_dat:=usl_dat_s;
end;

procedure TFTexGur.SpeedButton2Click(Sender: TObject);
begin
if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
 FindSpprod.DataBaseName:=dm1.BELMED;
 FindSpprod.ReadOnly:=true;
 FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
 FindSpprod.ShowModal;
 if FindSpprod.ModalResult > 50 then
 begin
  StartWait;
  fSprFormul.CEH_NormZ.Active:=FALSE;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,SPPROD.SPROD_ID,spprod.volumf,spprod.vol_ov,SPPROD.VOLumf,');
  DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,SPPROD.LEK_ID,SPFORMV.NAMEFv,region.nam nam_reg');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KSM_ID='+INTTOSTR(FindSpprod.ModalResult-50));
  DM1.IBQuery1.Active := True;
  EDIT1.OnChange:=nil;
  edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT1.OnChange:=Edit1Change;
  edit3.text:='';
  edit9.text:='';
  label3.Caption:=dm1.IBQuery1.FieldByName('Nam_reg').AsString;
//  edit17.text:=floattostr(DM1.IBQuery1.FieldByName('vol_ov').Asfloat);
  edit13.text:=floattostr(DM1.IBQuery1.FieldByName('volumf').Asfloat);
  s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
  s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
  s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
  s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
  s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
  s_Lek_id:=DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
  s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
  s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
  s_Formv:=DM1.IBQuery1.FieldByName('NAMEFV').AsString;
  s_Sprod_id:=DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
  IF fSprFormul.CEH_NormZ.Active THEN fSprFormul.CEH_NormZ.Active:=false;
  SORTf:=' ORDER BY CEH_NORMZ.RAZDEL_ID,CEH_NORMZ.KSM_ID_MAT ';
  USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(s_kodp);
  fSprFormul.CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
  fSprFormul.CEH_NormZ.MacroByName('USL').AsString:=USLf;
  fSprFormul.CEH_NormZ.Open;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT *');
  DM1.IBQuery1.SQL.Add(' FROM UTPLAN');
  DM1.IBQuery1.SQL.Add(' WHERE UTPLAN.MES='+inttostr(mes)+' AND UTPLAN.GOD='+inttostr(god)+' AND UTPLAN.SPROD_ID='+inttostr(s_sprod_id));
  DM1.IBQuery1.Active := True;
  if not dm1.IBQuery1.Eof then
  begin
   Label26.Caption:=floattostr(DM1.IBQuery1.FieldByName('PLAN').AsFloat);
   s_plan:=DM1.IBQuery1.FieldByName('PLAN').AsFloat;
  end
  else
  begin
   Label26.Caption:='0';
   s_plan:=0;
  end;
  DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT kartv.kol_prih');
    DM1.IBQuery1.SQL.Add(' FROM KARTV ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTV.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
    + ' AND KARTV.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
     Label34.Caption:=floattostr(DM1.IBQuery1.FieldByName('kol_prih').AsFloat);
     s_OPLan:=DM1.IBQuery1.FieldByName('kol_prih').AsFloat;
     end
    else
    begin
     Label34.Caption:='0';
     s_Oplan:=0;
    end;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SUM(kart.kol_prih) SDANO');
    DM1.IBQuery1.SQL.Add(' FROM KART ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.KLIENT_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=2' + ' AND KART.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
//     Label36.Caption:=floattostr(DM1.IBQuery1.FieldByName('SDANO').AsFloat);
     s_SDANO:=DM1.IBQuery1.FieldByName('SDANO').AsFloat;
     end
    else
    begin
//     Label36.Caption:='0';
     s_SDANO:=0;
    end;
  label19.caption:=s_NMAT;
  Label28.caption:=Inttostr(s_KORG);
  label29.caption:=s_namorg;
  label21.caption:=s_Neiz;
  label22.caption:=s_GOST;
  label11.caption:=s_Xarkt;
  label45.caption:=s_Formv;
 end;
 StopWait;
end;

procedure TFTexGur.Edit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
  if (edit13.Text<>'')and (edit13.Text<>'0 ') then
  begin
   if (edit3.Text<>'') then
    edit12.Text:=floattostr(Round((strtofloat(edit3.Text)*1000000)/(strtofloat(edit13.Text))))
   else MessageDlg(' Для расчета количество таблеточной массы ', mtWarning, [mbOK], 0);
  end;
 end;
end;

procedure TFTexGur.Edit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{ if key=vk_return then
 BEGIN
  if CEH_MARSH.Active=false then
  begin
   CEH_MARSH.ParamByName('Kodp').AsInteger:=S_KODP;
   CEH_MARSH.ParamByName('seria').AsInteger:=vseria_id;
   CEH_MARSH.Active:=TRUE;
  end;
  ceh_marsh.First;
  if (edit17.Text<>'') and (edit17.Text<>'0')then
  begin
   v_11:=0;
   While not ceh_marsh.Eof  do
   begin
    if (DBedit7.Text='') then DBedit7.Text:='1';
    if (DBedit8.Text='') then DBedit8.Text:='1';
    if (DBedit11.Text='') then DBedit11.Text:='1';
    if (edit13.Text='') then edit13.Text:='1';
    if (edit16.Text='') then edit16.Text:='1';
    if (edit17.Text='') then edit17.Text:='1';
    v_11:=v_11+SimpleRoundTo(SimpleRoundTo((strtofloat(DBedit7.Text)*strtofloat(DBedit8.Text)/100)*(100-strtofloat(DBedit11.Text))/100,-3)
    *strtofloat(edit13.Text)/strtofloat(edit17.Text),-2);
    ceh_marsh.Next;
   end;
   ceh_marsh.First;
   edit11.Text:=floattostr(v_11);
   edit10.Text:=floattostr(SimpleRoundTo(v_11*(100-strtofloat(edit16.Text))/100,-2));
  end;
 END; }
END;

procedure TFTexGur.TexGurKRAZValidate(Sender: TField);
begin
 dM1.Razdel.Active:=true;
 if dM1.Razdel.Locate('kraz',texGurKraz.AsInteger,[]) then
  TexGurRazdel_id.AsInteger:=dM1.RazdelRazdel_id.AsInteger
 else
   showMessage('Нет такого кода! Воспользуйтесь справочником!');

end;

procedure TFTexGur.TexGurBeforeDelete(DataSet: TDataSet);
begin
  if texGurStroka_id.AsVariant=null then
   s_del:=0
  else
   s_del:=texGurStroka_id.AsInteger;
end;

procedure TFTexGur.TexGurBeforePost(DataSet: TDataSet);
var
  seria_ids: integer;
begin
  If TexGurRazdel_id.AsInteger = 0 then
  begin
   MessageDlg('Введите раздел!', mtWarning, [mbOK], 0);
   Abort;
  end;
  If TexGur.FieldByName('ksm_id').AsInteger = 0 then
  begin
   MessageDlg('Введите код сырья!', mtWarning, [mbOK], 0);
   Abort;
  end;
  If TexGur.FieldByName('kein').AsInteger = 0 then
  begin
   MessageDlg('Введите единицу измерения!', mtWarning, [mbOK], 0);
   Abort;
  end;
  v_razdel:=TexGurRazdel_id.AsInteger;
  s_kei:=TexGur.FieldByName('kei_id').AsInteger;
  v_keiN:=TexGur.FieldByName('kein').AsInteger;
  s_ksm:=TexGur.FieldByName('ksm_id').AsInteger;
  v_raspred:=TexGurKol_Rash_ediz.AsFloat*dm1.Koef_per(s_kei,v_keiN,s_ksm);
  v_prix_period:=TexGurKol_Prih.AsFloat;
  seria_ids:=vSeria_id;
  vseria_id:=0;
  if (TexGurKart_id.AsVariant=null) or (TexGurKart_id.AsVariant=0) then
  begin
   v_dok_kart:=SelectToVarIB('select Ostatki.kart_id   FROM Ostatki WHERE Ostatki.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND ostatki.ksm_id='+inttostr(s_Ksm)
   + ' AND Ostatki.razdel_id='+inttostr(v_razdel)
   + ' AND Ostatki.Ksm_idpr='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
   If v_dok_kart = Null then
   begin
    IF DM1.Ostatki.Active=FALSE THEN DM1.Ostatki.Active:=TRUE;
    DM1.Ostatki.Insert;
    DM1.Ostatki.Post;
    dm1.Ostatki.ApplyUpdates;
    TexGurKart_id.AsInteger:=vKART_ID;
   end
   else
    TexGurKart_id.AsInteger:=v_dok_kart;
  end;
  vseria_id:=Seria_ids;
end;

procedure TFTexGur.Seria_sBeforeInsert(DataSet: TDataSet);
begin
DM1.AddSeria.ExecProc;
vSERIA_IDs:=DM1.AddSeria.Params.Items[0].AsInteger;
end;

procedure TFTexGur.Seria_sNewRecord(DataSet: TDataSet);
begin
 Seria_sSERIA_ID.AsInteger:=vSeria_Ids;
 Seria_sKSM_ID.AsInteger:=S_KSMs;
 Seria_sSERIA.AsString:=s_SERIAs;
end;

procedure TFTexGur.Button2Click(Sender: TObject);
var
M_ov1: double;
M_ov: double;
M_ov2: double;
M1: double;
kol_zag: double;
begin
// расчет сухой ТМ
 if (edit3.Text<>'') and (edit3.Text<>'0')then
 begin
   if (edit16.Text<>'') and (edit16.Text<>'0')then
     edit10.Text:=floattostr(SimpleRoundTo(strtofloat(edit3.Text)*(100-strtofloat(edit16.Text))/100,-2))
   else
    MessageDlg('Введите количество ТМ', mtWarning, [mbOK], 0)
 end
 else
   MessageDlg('Введите влагу ТМ!', mtWarning, [mbOK], 0);
// расчет загрузки ОВ (zag_ob)и кол-ва сухого в-ва, добавленного до веса таблетки(MKC)
  ceh_marsh.First;
  v_11:=0;
  TexGur.AfterScroll:=nil;
  While not ceh_marsh.Eof  do
  begin
   kol_zag:=0;
   ceh_marsh.Edit;
   if (DBedit7.Text='') then DBedit7.Text:='1';
   if (DBedit8.Text='') then
   begin
    ceh_marsh.Edit;
    ceh_marshAktiv_ov.AsFloat:=1;
    ceh_marsh.Post;
   end;
   if (DBedit11.Text='') then
   begin
    ceh_marsh.Edit;
    ceh_marshVlaga_ov.AsFloat:=0;
    ceh_marsh.Post;
   end;
   if (edit13.Text='') then edit13.Text:='1';
   if (edit16.Text='') then edit16.Text:='1';
   vFormula:=TfrParser.Create;
   try
    TexGur.First;
    if TexGur.Locate('ksm_id;kraz',VarArrayOf([ceh_marshKsm_idov.AsInteger,21]),[]) then
    begin
     IF TexGurDECZNAK.AsVariant=null THEN  TexGurDECZNAK.AsInteger:=3;
     Tochn:=0-TexGurDecznak.AsInteger;
     ceh_marsh.Next;
     if (ceh_marshKsm_idov.AsInteger=TexGurKsm_id.AsInteger)and(not ceh_marsh.Eof)  then
     begin
// 1-я серия
      ceh_marsh.Prior;
      M1:=ceh_marshZag_ov.AsFloat;
      M_ov1:=SimpleRoundTo(M1*ceh_marshAktiv_ov.AsFloat*(100-ceh_marshVlaga_ov.AsFloat)/10000,tochn);
      M_ov:=SimpleRoundTo(ceh_marshKoefper2.AsFloat*strtofloat(edit12.Text),tochn);
      M_ov2:= M_ov-M_ov1;
      ceh_marsh.Edit;
      ceh_marshKoefper1.AsFloat:=M_ov1;
      ceh_marsh.Post;
// 2-я серия
      ceh_marsh.Next;
      kol_zag:=SimpleRoundTo(M_ov2*10000/ceh_marshAktiv_ov.AsFloat*(100-ceh_marshVlaga_ov.AsFloat),tochn);
      ceh_marsh.Edit;
      ceh_marshZag_ov.AsFloat:=kol_zag;
      ceh_marshKoefper1.AsFloat:=M_ov2;
      ceh_marsh.Post;
      kol_zag:=kol_zag+M1;
     end
     else
     begin
      if not ceh_marsh.Eof  then ceh_marsh.Prior;
      if (ceh_marshFormula.Asstring<>'  ')and (ceh_marshFormula.Asstring<>'0') then
      begin
       vFormula.OnGetValue:=MyGetValue1;
       s_kol_zag:=vFormula.Calc(TexGurFormula.Asstring);
       kol_zag:=strtofloat(s_kol_zag);
       ceh_marsh.Edit;
       ceh_marshZag_ov.AsFloat:=kol_zag;
       ceh_marshKoefper1.AsFloat:=SimpleRoundTo(kol_zag*(100-ceh_marshVlaga_ov.AsFloat)/100,tochn);
       ceh_marsh.Post;
      end
      else s_kol_zag:='0';
     end;
     TexGur.Edit;
     TexGurKol_Rash_EDIZ.asFloat:=SimpleRoundTo(kol_zag,Tochn);
    end
    else ceh_marsh.Next;
 //     TexGur.Post;
   finally
    vFormula.Free;
   end;
   v_11:=v_11+SimpleRoundTo(ceh_marshKoefper1.AsFloat,Tochn);
   ceh_marsh.Next;
  end;
  ceh_marsh.First;
// Кол-во сухого в-ва     (МКС):
  edit14.Text:=floattostr(SimpleRoundTo(strtofloat(edit10.Text)-v_11,-2));
  TexGur.AfterScroll:=TexGurAfterScroll;
end;

procedure TFTexGur.Button3Click(Sender: TObject);
begin
 if FKompTM=nil then FKompTM:=TFKompTM.Create(Application);
  FKompTM.Label2.Caption:=edit1.Text;
  FKompTM.Label3.Caption:=edit2.Text;
  FKompTM.Label5.Caption:=edit3.Text;
  FKompTM.Label6.Caption:=edit13.Text;
  FKompTM.Label7.Caption:=edit12.Text;
  FKompTM.Label8.Caption:=edit10.Text;
  FKompTM.Label9.Caption:=edit16.Text;
  FKompTM.Label24.Caption:=edit11.Text;
  FKompTM.Label9.Caption:=label19.Caption;
  FKompTM.Label15.Caption:=label6.Caption;
  FKompTM.Label14.Caption:=dbeditEh3.Text;
  FKompTM.Label13.Caption:=dbedit5.Text;
  FKompTM.ShowModal;
end;

procedure TFTexGur.DBEditEh1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
 if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
 FindMatrop.DataBaseName:=dm1.BELMED;
 FindMatrop.ReadOnly:=true;
 FindMatrop.ShowModal;
 if FindMatrop.ModalResult > 50 then
 begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=FindMatrop.ModalResult-50;
  dM1.Matrop.Active:=TRUE;
  Ceh_Marsh.FieldByName('Ksm_Idov').AsInteger :=FindMatrop.ModalResult-50;
  Ceh_Marsh.FieldByName('Gost').AsString :=dm1.MatropGOST.AsString;
  Ceh_Marsh.FieldByName('Nmat').AsString :=dm1.MatropNMAT.AsString;
  Ceh_Marsh.FieldByName('Xarkt').AsString :=dm1.MatropXARKT.AsString;
  Ceh_Marsh.FieldByName('Ksm_Id').AsInteger :=s_kodp;
  Ceh_Marsh.FieldByName('seria_id').AsInteger :=vSeria_id;
 end;
end;

procedure TFTexGur.DBEditEh2EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
 Seria_s.Active :=False;
 Seria_s.ParamByName('ksm_id').AsInteger:=Ceh_Marsh.FieldByName('Ksm_Idov').AsInteger;
 Seria_s.Active:=true;
 if  not Seria_s.Eof then
 begin
  if FSer=nil then FSer:=TFSer.Create(Application);
  dm1.DS_Seria.DataSet:=FTexGur.seria_s;
  pr_ser:=1;
  FSer.ShowModal;
  if FSer.ModalResult > 50 then
  begin
   DBEditeh2.Text:=Seria_sSeria.AsString;
   s_serias:=Seria_sSeria.AsString;
   vSeria_ids:=FSer.ModalResult-50;
   Ceh_Marsh.FieldByName('seria').AsString :=Seria_sSeria.AsString;
   Ceh_Marsh.FieldByName('seria_idov').AsInteger :=Seria_sSeria_id.AsInteger;
  end;
  dm1.DS_Seria.DataSet:=dm1.Seria;
 end
 else
  MessageDlg('Нет серии заданного сырья в справочнике серий!', mtWarning, [mbOK], 0);

end;

procedure TFTexGur.Ceh_MarshNewRecord(DataSet: TDataSet);
begin
 CEH_MARSHseria_ID.AsInteger:=vSeria_Id;
 CEH_MARSHksm_ID.AsInteger:=s_kodp;
 Ceh_Marsh.FieldByName('SERIA').AsString:='';
end;

procedure TFTexGur.Ceh_MarshKSM_IDOVValidate(Sender: TField);
begin
 dM1.Matrop.Active:=false;
 dM1.Matrop.ParamByName('ksm').AsInteger:=Ceh_marsh.FieldByName('ksm_idov').AsInteger;
 dM1.Matrop.Active:=TRUE;
 if not dm1.Matrop.eof then
 begin
  Ceh_Marsh.FieldByName('Gost').AsString :=dm1.MatropGOST.AsString;
  Ceh_Marsh.FieldByName('Nmat').AsString :=dm1.MatropNMAT.AsString;
  Ceh_Marsh.FieldByName('Xarkt').AsString :=dm1.MatropXARKT.AsString;
 end
 else
  showMessage('Нет такого кода! Воспользуйтесь справочником!');
end;

procedure TFTexGur.Ceh_MarshSERIAValidate(Sender: TField);
begin
 if Ceh_Marsh.FieldByName('SERIA').AsString<>'' then
 begin
  s_serias:=Ceh_Marsh.FieldByName('SERIA').AsString;
  s_ksms:=Ceh_Marsh.FieldByName('Ksm_Idov').AsInteger;
  Seria_s.Active :=False;
  Seria_s.ParamByName('ksm_id').AsInteger:=Ceh_Marsh.FieldByName('Ksm_Idov').AsInteger;
  Seria_s.Active:=true;
  if  not Seria_s.Eof  then
  begin
   s_serias:=Ceh_Marsh.FieldByName('SERIA').AsString;
   if Seria_s.Locate('seria',Ceh_Marsh.FieldByName('SERIA').AsString,[]) then
    vSeria_ids:=Seria_sSeria_id.AsInteger else
   BEGIN
    vSeria_ids:=0;
    Seria_S.Insert;
   END;
  end
  else
  BEGIN
   vSeria_ids:=0;
   Seria_S.Insert;
  END;
  Ceh_Marsh.FieldByName('seria_idov').AsInteger :=VSeria_IDS;
  Seria_S.Post;
 end;
end;

procedure TFTexGur.DBEditEh3EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
    FindMatrop.DataBaseName:=dm1.BELMED;
    FindMatrop.ReadOnly:=true;
    FindMatrop.ShowModal;
    if FindMatrop.ModalResult > 50 then
    begin
     dM1.Matrop.Active:=false;
     dM1.Matrop.ParamByName('ksm').AsInteger:=FindMatrop.ModalResult-50;
     dM1.Matrop.Active:=TRUE;
     dm1.Seria.Edit;
     dm1.Seria.FieldByName('Kod_tm').AsInteger :=FindMatrop.ModalResult-50;
     dm1.Seria.Post;
     lABEL6.Caption:=dm1.MatropNMAT.AsString;
    end;
end;

procedure TFTexGur.DBEditEh3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
  if (dbeditEh3.text<>'') then
  begin
   dM1.Matrop.Active:=false;
   dM1.Matrop.ParamByName('ksm').AsInteger:=Strtoint(dbeditEh3.text);
   dM1.Matrop.Active:=TRUE;
   if not dm1.Matrop.eof then lABEL6.Caption:=dm1.MatropNMAT.AsString
   else
    showMessage('Нет такого кода! Воспользуйтесь справочником!');
  end;
 end;
end;

procedure TFTexGur.SpinEdit3Change(Sender: TObject);
begin
 mes:=SpinEdit3.Value;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1_period:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2_period:=datetostr(IncMonth(strtodate(s_dat1_period),1)-1);
  S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1_period),1)-1);
  IF DM1.ConfigUMC.Active THEN DM1.ConfigUMC.close;
 DM1.ConfigUMC.MacroByName('USL').AsString:='STRUK_ID = '+IntToStr(vSTRUK_ID);
 DM1.ConfigUMC.Open;
 if (MES=DM1.ConfigUMCMES.AsInteger) and (GOD=DM1.ConfigUMCGOD.AsInteger) then
 begin
//      Label5.Caption:='(Текущий месяц)';
   MODE:=0;
   ToolButton1.Enabled:=True;
   ToolButton2.Enabled:=True;
   ToolButton3.Enabled:=True;
   ToolButton9.Enabled:=True;
 end
 else
  if ((MES=DM1.ConfigUMCMES.AsInteger-1) and (GOD=DM1.ConfigUMCGOD.AsInteger)) or ((GOD=DM1.ConfigUMCGOD.AsInteger-1) and (MES=12) and (DM1.ConfigUMCMES.AsInteger=1))then
  begin
//     Label5.Caption:='(Прошлый месяц)';
    MODE:=1;
    ToolButton1.Enabled:=True;
    ToolButton2.Enabled:=True;
    ToolButton3.Enabled:=True;
    ToolButton9.Enabled:=True;
  end
  else
  begin
//      Label5.Caption:='(Только просмотр)';
    MODE:=2;
    ToolButton1.Enabled:=False;
    ToolButton2.Enabled:=false;
    ToolButton3.Enabled:=false;
    ToolButton9.Enabled:=false;
  end;
  if (Edit1.Text<>'') then
  BEGIN
    IF MODE<2 THEN
      TexGurSost
    ELSE
    BEGIN
      if (edit9.Text<>'') and (edit9.Text<>'0') then s_vip:=strtofloat(edit9.Text) else s_vip:=0;
      TexGur.Close;
      TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
      TexGur.ParamByName('mes').AsInteger:=mes;
      TexGur.ParamByName('god').AsInteger:=god;
      TexGur.ParamByName('KODP').AsInteger:=S_KODP;
      TexGur.MacroByName('SORT').AsString:=USL_SORT;
      TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
      TexGur.ParamByName('doc').AsInteger:=vDocument_id;
      TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
      TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
      TexGur.Open;
     END;
  END;
end;

procedure TFTexGur.SpinEdit4Change(Sender: TObject);
begin
god:=SpinEdit4.Value;
IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1_period:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2_period:=datetostr(IncMonth(strtodate(s_dat1_period),1)-1);
  S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1_period),1)-1);
  IF DM1.ConfigUMC.Active THEN DM1.ConfigUMC.close;
 DM1.ConfigUMC.MacroByName('USL').AsString:='STRUK_ID = '+IntToStr(vSTRUK_ID);
 DM1.ConfigUMC.Open;
 if (MES=DM1.ConfigUMCMES.AsInteger) and (GOD=DM1.ConfigUMCGOD.AsInteger) then
 begin
//      Label5.Caption:='(Текущий месяц)';
   MODE:=0;
   ToolButton1.Enabled:=True;
   ToolButton2.Enabled:=True;
   ToolButton3.Enabled:=True;
   ToolButton9.Enabled:=True;
 end
 else
  if ((MES=DM1.ConfigUMCMES.AsInteger-1) and (GOD=DM1.ConfigUMCGOD.AsInteger)) or ((GOD=DM1.ConfigUMCGOD.AsInteger-1) and (MES=12) and (DM1.ConfigUMCMES.AsInteger=1))then
  begin
//     Label5.Caption:='(Прошлый месяц)';
    MODE:=1;
    ToolButton1.Enabled:=True;
    ToolButton2.Enabled:=True;
    ToolButton3.Enabled:=True;
    ToolButton9.Enabled:=True;
  end
  else
  begin
//      Label5.Caption:='(Только просмотр)';
    MODE:=2;
    ToolButton1.Enabled:=False;
    ToolButton2.Enabled:=false;
    ToolButton3.Enabled:=false;
    ToolButton9.Enabled:=false;
  end;
 if Edit1.Text<>'' then
  BEGIN
    IF MODE<2 THEN
      TexGurSost
     ELSE
     BEGIN
      if (edit9.Text<>'') and (edit9.Text<>'0') then s_vip:=strtofloat(edit9.Text) else s_vip:=0;
      TexGur.Close;
      TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
      TexGur.ParamByName('mes').AsInteger:=mes;
      TexGur.ParamByName('god').AsInteger:=god;
      TexGur.ParamByName('KODP').AsInteger:=S_KODP;
      TexGur.MacroByName('SORT').AsString:=USL_SORT;
      TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
      TexGur.ParamByName('doc').AsInteger:=vDocument_id;
      TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
      TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
      TexGur.Open;
     END;
  END;
end;

procedure TFTexGur.TexGurNewRecord(DataSet: TDataSet);
begin
 IF TexGurkOL_PRIH.AsVariant=NULL THEN  TexGurkOL_PRIH.AsFloat:=0;
 IF TexGurkOL_PRIH_EDIZ.AsVariant=NULL THEN  TexGurkOL_PRIH_EDIZ.AsFloat:=0;
end;

procedure TFTexGur.ToolButton4Click(Sender: TObject);
begin
If (Ceh_Marsh.Active) and (not Ceh_Marsh.Eof) then ksm_ov:=Ceh_Marsh.FieldByName('Ksm_Idov').AsInteger
 else ksm_ov:=0;
if FAnalit1=nil then FAnalit1:=TFAnalit1.Create(Application);
  FAnalit1.ShowModal;
end;

procedure TFTexGur.DBEditEh2Click(Sender: TObject);
begin
DBeditEH2.text:='';
end;

procedure TFTexGur.DBEditEh1Click(Sender: TObject);
begin
ksm_ov:=Ceh_MarshKsm_Idov.AsInteger;
end;

ENd.
