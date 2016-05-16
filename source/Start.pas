unit Start;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, ExtCtrls, DBCtrls, ComCtrls, ToolWin, Grids,
  DBGridEh, Mask,SplshWnd,
  IBUpdateSQL, IBUpdSQLW, RxIBQuery,
  Menus, VCLUtils,UtilRIB,
  wwDialog, Wwfltdlg,Fr_pars,
  IBCustomDataSet,  RxMemDS, IBTable,
  FR_DSet, FR_DBSet, FR_Class, IBSQL, DB, IBQuery, IBStoredProc,
  IBDatabase, IB,
  DBCtrlsEh,
  DBLookupEh, BDEUtils, UtilR, FindDlgEh, Buttons, DBGrids, DBTables,
  ToolEdit,Math,RxStrUtils;
type
  TFStarT = class(TForm)
    ToolBar1: TToolBar;
    DBNavigator1: TDBNavigator;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh2: TDBGridEh;
    TabSheet2: TTabSheet;
    ToolButton2: TToolButton;
    DBGridEh1: TDBGridEh;
    StartOst: TIBQuery;
    DSStartOst: TDataSource;
    StartOstOT_S: TFMTBCDField;
    StartOstKSM_ID: TIntegerField;
    StartOstKEI_ID: TSmallintField;
    StartOstNEIS: TIBStringField;
    StartOstNMAT: TIBStringField;
    StartOstXARKT: TIBStringField;
    StartOstSERIA: TIBStringField;
    FindDlgEh1: TFindDlgEh;
    DSStartPrep: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    StartPrep: TRxIBQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Label2: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    FindDlgEh2: TFindDlgEh;
    N3: TMenuItem;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label22: TLabel;
    Label19: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label21: TLabel;
    Label15: TLabel;
    Label41: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit1: TEdit;
    N4: TMenuItem;
    Otchet: TTable;
    OtchetMES1: TStringField;
    OtchetOTSTRK: TStringField;
    OtchetOTPROD: TStringField;
    OtchetOTKPN: TStringField;
    OtchetOTKVI: TStringField;
    OtchetOTMATR: TStringField;
    OtchetNMAT: TStringField;
    OtchetOTCENA: TFloatField;
    OtchetCENAZA: TFloatField;
    OtchetOSTSN: TFloatField;
    OtchetOSTNZN: TFloatField;
    OtchetPRIX: TFloatField;
    OtchetZAG: TFloatField;
    OtchetRASM: TFloatField;
    OtchetRASG: TFloatField;
    OtchetPERS: TFloatField;
    OtchetPERP: TFloatField;
    OtchetOSTSK: TFloatField;
    OtchetOSTZK: TFloatField;
    OtchetPRIXK: TFloatField;
    OtchetRASK: TFloatField;
    OtchetFACTK: TFloatField;
    OtchetFACTM: TFloatField;
    OtchetPEREM: TFloatField;
    OtchetPEREG: TFloatField;
    OtchetOTRAZ: TStringField;
    OtchetPKV: TStringField;
    OtchetPGD: TStringField;
    OtchetMES: TStringField;
    OtchetPR: TSmallintField;
    OtchetPRS: TSmallintField;
    OtchetKSM_ID: TFloatField;
    OtchetOTPROD_S: TStringField;
    OtchetKEIN: TSmallintField;
    OtchetKEI: TSmallintField;
    N5: TMenuItem;
    Nomen: TTable;
    Label11: TLabel;
    Label16: TLabel;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    ToolButton4: TToolButton;
    IBQuery1: TIBQuery;
    N01: TMenuItem;
    Ost_Cex: TIBQuery;
    Ost_Nz: TIBQuery;
    Ost_NzKART_ID: TIntegerField;
    Ost_NzOT_NZ: TFMTBCDField;
    Ost_NzKSM_ID: TIntegerField;
    Ost_NzKEI_ID: TSmallintField;
    SpeedButton2: TSpeedButton;
    IBUpdateStartPrep: TIBUpdateSQLW;
    DBGridEh3: TDBGridEh;
    Label3: TLabel;
    Label6: TLabel;
    Prizm: TTable;
    PRIZM1: TMenuItem;
    PrizmNCSTRK: TStringField;
    PrizmNCPROD: TStringField;
    PrizmNCKPN: TStringField;
    PrizmNCKVI: TStringField;
    PrizmNCMATR: TStringField;
    PrizmPMFORM: TStringField;
    PrizmPMGR: TStringField;
    PrizmPMFORN: TStringField;
    PrizmPMNSH: TStringField;
    PrizmNCRAZ: TStringField;
    PrizmMARK: TStringField;
    PrizmKSM_ID: TFloatField;
    PrizmNCPROD_S: TStringField;
    Ost_CexKART_ID: TIntegerField;
    Ost_CexOT_S: TFMTBCDField;
    Ost_CexKSM_ID: TIntegerField;
    Ost_CexKEI_ID: TSmallintField;
    NomenNAMEPRS: TStringField;
    NomenBALS: TStringField;
    NomenNUMKCU: TStringField;
    NomenNAMEPR: TStringField;
    NomenGOST: TStringField;
    NomenXARKT: TStringField;
    NomenMONEY: TFloatField;
    NomenKEI: TStringField;
    NomenEIP: TStringField;
    NomenDATEIN: TDateField;
    NomenNZ: TFloatField;
    NomenTPR: TStringField;
    NomenKOL: TFloatField;
    NomenSUM: TFloatField;
    NomenPRIXODM: TFloatField;
    NomenRASXODM: TFloatField;
    NomenSRASXM: TFloatField;
    NomenSPRIXM: TFloatField;
    NomenDATETR: TDateField;
    NomenSKLAD: TStringField;
    NomenEDNOR: TSmallintField;
    NomenSSUM: TFloatField;
    NomenNSUM: TFloatField;
    NomenSKOL: TFloatField;
    NomenSUMD: TFloatField;
    NomenCENAD: TFloatField;
    NomenSSUMD: TFloatField;
    NomenSPRIXMD: TFloatField;
    NomenSRASXMD: TFloatField;
    N10: TMenuItem;
    OstSyr_cex: TRxIBQuery;
    N11: TMenuItem;
    OstSyr_cexKSM_ID: TIntegerField;
    OstSyr_cexS_OT_S: TFMTBCDField;
    OstSyr_cexKEI_ID: TSmallintField;
    NomenSUMNDS: TFloatField;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    StartOstGOST: TIBStringField;
    StartPrepKSM_ID: TIntegerField;
    StartPrepKEI_ID: TSmallintField;
    StartPrepNEIS: TIBStringField;
    StartPrepNMAT: TIBStringField;
    StartPrepXARKT: TIBStringField;
    StartPrepGOST: TIBStringField;
    StartPrepRAZDEL_ID: TSmallintField;
    StartPrepKART_ID: TIntegerField;
    StartPrepSERIA: TIBStringField;
    StartPrepKRAZ: TSmallintField;
    StartPrepKEI_IDN: TSmallintField;
    StartPrepOT_S: TFMTBCDField;
    StartPrepOT_NZ: TFloatField;
    StartPrepKOL: TFloatField;
    StartPrepKOL_RASX: TFloatField;
    StartPrepKOLS: TFMTBCDField;
    StartPrepKOLNZ: TFMTBCDField;
    StartPrepPER: TFMTBCDField;
    StartPrepRASNGR: TFMTBCDField;
    procedure ToolButton3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure DBGridEh4EditButtonClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure OstASU;
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure N01Click(Sender: TObject);
    procedure StartPrepKOL_RASXChange(Sender: TField);
    procedure StartPrepKOLChange(Sender: TField);
    procedure PRIZM1Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure DateEdit2Change(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStarT: TFStarT;
  USL: STRING;
  v_ostat: variant;
  v_kols: double;
  v_kolnz: double;
  v_kol_ceh: double;
  v_kol_rasx: double;
implementation
 uses dm, Find_Spprod, razdel, Find_Matrop,New_Prix, Ser, ediz,SprFormul;
{$R *.dfm}

procedure TFStarT.ToolButton3Click(Sender: TObject);
begin
if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
FindSpprod.DataBaseName:=dm1.BELMED;
FindSpprod.ReadOnly:=true;
FindSpprod.ShowModal;
if FindSpprod.ModalResult > 50 then
 begin
  EDIT1.OnChange:=nil;
  edit1.text:=FindSpprod.IBSpprodKod_Prod.Asstring;
  EDIT1.OnChange:=Edit1Change;
  s_kodp:=FindSpprod.ModalResult-50;
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
  StartPrep.Close;
  StartPrep.ParamByName('Kodp').AsInteger:=s_kodp;
  StartPrep.ParamByName('mes').AsInteger:=mes;
  StartPrep.ParamByName('god').AsInteger:=god;
  StartPrep.ParamByName('struk').AsInteger:=vStruk_id;
  StartPrep.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
  StartPrep.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
  StartPrep.Open;
  StartPrep.First;
 End;
end;

procedure TFStarT.ToolButton4Click(Sender: TObject);
begin
 if MessageDlg('Удалять данные отчета?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
begin
 IBQuery1.Active := False;
 IBQuery1.Active := True;
 TRY
  WHILE not IBQuery1.Eof DO
  begin
   DM1.DeleteDocument.ParamByName('NDOC_ID').AsInteger:=IBQuery1.FieldByName('DOC_ID').AsInteger;
   DM1.DeleteDocument.ExecProc;
   IBQuery1.Next;
  END;
  DM1.IBT_Write.Commit;
  DM1.IBT_Read.Active:=FALSE;
  DM1.IBT_Write.Active:=FALSE;
  if not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
  if not dm1.IBT_WRITE.Active then dm1.IBT_WRITE.StartTransaction;
 except
   on E:EIBInterbaseError do
   begin
    ShowMessage(E.Message);
    DM1.IBT_Write.rollback;
   end;
 END;
end;
end;

procedure TFStarT.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
  StartWait;
  if (edit1.text<>'') and (not dm1.IBQuery1.Eof)  then
  begin
   EDIT1.OnChange:=nil;
   edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
   EDIT1.OnChange:=Edit1Change;
   s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
   s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
   s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
   s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
   s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
   s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
   s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
   s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
   s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
   s_namREG:=DM1.IBQuery1.FieldByName('NAM_ReG').AsString;
   label6.Caption:=s_namreg;
   label19.caption:=s_NMAT;
   label28.caption:=Inttostr(s_KORG);
   label29.caption:=s_namorg;
   label21.caption:=s_Neiz;
   label22.caption:=s_GOST;
   label41.caption:=s_Xarkt;
   StartPrep.Close;
   StartPrep.ParamByName('Kodp').AsInteger:=s_kodp;
   StartPrep.ParamByName('mes').AsInteger:=mes;
   StartPrep.ParamByName('god').AsInteger:=god;
   StartPrep.ParamByName('struk').AsInteger:=vStruk_id;
   StartPrep.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
   StartPrep.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
   StartPrep.Open;
   StartPrep.First;
   StartPrep.Edit;
   if dm1.Ceh_Otchet.Active then dm1.Ceh_Otchet.Active:=false;
   dm1.Ceh_Otchet.ParamByName('mes').AsInteger:=Mes;
   dm1.Ceh_Otchet.ParamByName('god').AsInteger:=God;
   dm1.Ceh_Otchet.Active:=true;
  end;
  StopWait;
 end;
end;

procedure TFStarT.Edit1Change(Sender: TObject);

begin
if edit1.text<>''   then begin
 skod:=replacestr(edit1.text,',','.')+'%';
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
 DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,region.nam nam_reg');
 DM1.IBQuery1.SQL.Add(' FROM SPPROD');
 DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
 DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
 DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+skod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
  begin
   Label19.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label41.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  end
  else
   Label19.Caption:='';
   Label41.Caption:='';
  begin
  end;
 Label19.Refresh;
 Label41.Refresh;
 end;
end;

procedure TFStarT.Edit1Click(Sender: TObject);
begin
edit1.text:='';
end;

procedure TFStarT.FormCreate(Sender: TObject);
begin
LABEL19.Caption:='';
LABEL21.Caption:='';
LABEL22.Caption:='';
LABEL29.Caption:='';
LABEL28.Caption:='';
LABEL41.Caption:='';
LABEL6.Caption:='';
end;

procedure TFStarT.FormShow(Sender: TObject);
begin
 if FSprFormul=nil then FSprFormul:=TfSprFormul.Create(Application);
 PageControl1.ActivePage:=tabsheet1;
 vDate_dok:=strtodate(s_dat1);
 vDate_op:=strtodate(s_dat1);
 DateEdit1.OnChange:=nil;
 DateEdit1.Date:=strtodate(s_dat1);
 DateEdit1.OnChange:=DateEdit1Change;
 DateEdit2.OnChange:=nil;
 DateEdit2.Date:=strtodate(s_dat2);
 DateEdit2.OnChange:=DateEdit2Change;
 vTip_Op_Id:=21;
 vTip_Doc_Id:=16;
 vKlient_Id:=vstruk_id;
 StartOst.Close;
 StartOst.ParamByName('Struk').AsInteger:=vStruk_id;
 StartOst.ParamByName('dat1').AsString:=s_dat1;
 StartOst.ParamByName('dat2').AsString:=s_dat2;
 StartOst.Open;
 if s_kodp<>0 then
 begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
  DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,region.nam nam_reg');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.Ksm_iD='+inttostr(s_kodp)+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
  DM1.IBQuery1.Active := True;
  s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
  s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
  s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
  s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
  s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
  s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
  s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
  s_namREG:=DM1.IBQuery1.FieldByName('NAM_ReG').AsString;
  label6.Caption:=s_namreg;
  label19.caption:=s_NMAT;
  label28.caption:=Inttostr(s_KORG);
  label29.caption:=s_namorg;
  label21.caption:=s_Neiz;
  label22.caption:=s_GOST;
  label41.caption:=s_Xarkt;
  StartPrep.Close;
  StartPrep.ParamByName('Kodp').AsInteger:=s_kodp;
  StartPrep.ParamByName('mes').AsInteger:=mes;
  StartPrep.ParamByName('god').AsInteger:=god;
  StartPrep.ParamByName('struk').AsInteger:=vStruk_id;
  StartPrep.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
  StartPrep.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
  StartPrep.Open;
  StartPrep.First;
  StartPrep.Edit;
  if dm1.Ceh_Otchet.Active then dm1.Ceh_Otchet.Active:=false;
  dm1.Ceh_Otchet.ParamByName('mes').AsInteger:=Mes;
  dm1.Ceh_Otchet.ParamByName('god').AsInteger:=God;
  dm1.Ceh_Otchet.Active:=true;
 end;
end;



procedure TFStarT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.Kart.Close;

end;

procedure TFStarT.ToolButton1Click(Sender: TObject);

begin
 IF PageControl1.ActivePage=tabsheet2 THEN
 BEGIN
  vDate_dok:=strtodate(s_dat1);
  vDate_op:=strtodate(s_dat1);
  vTip_Doc_Id:=37;
  vKlient_Id:=s_kodp;
  if DM1.Kart.Active then DM1.Kart.Close;
  DM1.Kart.MacroByName('USL').AsString:='WHERE ostatki.ksm_idpr='+inttostr(S_kodp);
  DM1.Kart.Open;
  IF DM1.Document.Active=true THEN DM1.Document.Active:=false;
  DM1.Document.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
  + ' AND Document.Klient_id='+inttostr(s_kodp)
  + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
  + ' AND (DOCUMENT.TIP_OP_ID=21 or DOCUMENT.TIP_OP_ID=77)';
  DM1.Document.Active:=true;
  if not dm1.Ceh_Otchet.Active then
  begin
   dm1.Ceh_Otchet.ParamByName('mes').AsInteger:=Mes;
   dm1.Ceh_Otchet.ParamByName('god').AsInteger:=God;
   dm1.Ceh_Otchet.Active:=true;
  end;
  StartPrep.First;
  While not StartPrep.Eof do
  begin
   s_kei:=StartPrepKei_id.AsInteger;
   v_keiN:=StartPrepKei_idn.AsInteger;
   s_ksm:=StartPrepKsm_id.AsInteger;
   v_razdel:=StartPrepRazdel_id.AsInteger;
   v_kols:=StartPrepKols.AsFloat;
   v_kolnz:=StartPrepKolNz.AsFloat;
   v_kol_ceh:=StartPrepKol.AsFloat;
   v_kol_rasx:=StartPrepKol_rasx.AsFloat;
   vkart_id:=StartPrepKart_id.AsInteger;
   st_kart:=vkart_id;
   IF vkart_id=0 THEN
   BEGIN
    if dm1.Ostatki.Active then dm1.Ostatki.Active:=false;
    DM1.Ostatki.ParamByName('struk_ID').AsInteger:=vstruk_id;
    DM1.Ostatki.MacroByName('usl').AsString:='  ost.razdel_id='+inttostr(StartPrepRazdel_id.AsInteger)
    +' and ost.ksm_idpr='+inttostr(s_kodp)
    +' AND OST.KSM_ID='+INTTOSTR(S_KSM);
    dm1.Ostatki.Open;
    if not dm1.Ostatki.eof then
     vkart_id:= dm1.OstatkiKart_id.asInteger
    else
    begin
     s_KEI:=StartPrepKei_id.AsInteger;
     vseria_id:=0;
     dm1.Ostatki.Insert;
     DM1.Ostatki.Post;
     DM1.Ostatki.ApplyUpdates;
    end;
    StartPrep.Edit;
    StartPrepKart_id.AsInteger:=vkart_id;
    StartPrep.Post;
   END;
   if v_kols<>0 then
   begin
    st_kart:=vkart_id;
    vTip_Op_Id:=21;
    vNdoc:='Старт_c_'+inttostr(s_kodp);
    if dm1.Document.Locate('Tip_op_id;klient_id',VarArrayOf([vTIP_OP_ID,vKlient_id]),[]) then
     vDocument_id:=dm1.DocumentDoc_id.AsInteger
    else
    begin
     DM1.Document.Insert;
     DM1.Document.Post;
     DM1.document.ApplyUpdates;
    end;
    DM1.Kart.Insert;
    DM1.Kart.FieldByName('doc_Id').AsInteger := vDocument_id;
    DM1.Kart.FieldByName('Ksm_Id').AsInteger := StartPrepKsm_id.AsInteger;
    DM1.Kart.FieldByName('razdel_Id').AsInteger :=StartPrepRazdel_id.AsInteger;
    DM1.Kart.FieldByName('kei_id').AsInteger:=StartPrepKei_idn.AsInteger;
    DM1.Kart.FieldByName('kol_Prih_ediz').AsFloat := v_kols;
    DM1.Kart.FieldByName('kol_Rash_ediz').AsFloat :=0;
    DM1.Kart.FieldByName('kol_Prih').AsFloat := 0;
    DM1.Kart.FieldByName('kol_Rash').AsFloat := 0;
    DM1.Kart.FieldByName('Kart_Id').AsInteger := vKart_id;
    DM1.Kart.Post;
    DM1.Kart.ApplyUpdates;
   end;
   if v_kolNz<>0 then
   begin
    st_kart:=vKart_id;
    vTip_Op_Id:=77;
    vNdoc:='Старт_з_'+inttostr(s_kodp);
    if dm1.Document.Locate('Tip_op_id;klient_id',VarArrayOf([vTIP_OP_ID,vKlient_id]),[]) then
     vDocument_id:=dm1.DocumentDoc_id.AsInteger
    else
    begin
     DM1.Document.Insert;
     DM1.Document.Post;
     DM1.document.ApplyUpdates;
    end;
    DM1.Kart.Insert;
    DM1.Kart.FieldByName('doc_Id').AsInteger := vDocument_id;
    DM1.Kart.FieldByName('Ksm_Id').AsInteger := StartPrepKsm_id.AsInteger;
    DM1.Kart.FieldByName('razdel_Id').AsInteger :=StartPrepRazdel_id.AsInteger;
    DM1.Kart.FieldByName('kei_id').AsInteger:=StartPrepKei_idn.AsInteger;
    DM1.Kart.FieldByName('kol_Prih_ediz').AsFloat := v_kolnz;
    DM1.Kart.FieldByName('kol_Rash_ediz').AsFloat :=0;
    DM1.Kart.FieldByName('kol_Prih').AsFloat :=0;
    DM1.Kart.FieldByName('kol_rash').AsFloat :=0;
    DM1.Kart.FieldByName('Kart_Id').AsInteger := vKart_id;
    DM1.Kart.Post;
    DM1.Kart.ApplyUpdates;
   end;
   v_kol_ceh:=v_kol_ceh*dm1.Koef_per(s_kei,v_keiN,s_ksm);
   v_kol_rasx:=v_Kol_Rasx*dm1.Koef_per(s_kei,v_keiN,s_ksm);
   if dm1.CEH_OTCHET.Locate('kart_id',vKart_id,[]) then
    DM1.CEH_OTChet.Edit
   else
   begin
    DM1.CEH_OTCHET.Insert;
    DM1.Ceh_Otchet.FieldByName('Kart_Id').AsInteger :=vKart_id;
    DM1.Ceh_Otchet.FieldByName('mes').AsInteger :=Mes;
    DM1.Ceh_Otchet.FieldByName('God').AsInteger :=God;
   end;
   DM1.Ceh_Otchet.fieldByName('kol').Asfloat := v_kol_ceh;
   DM1.Ceh_Otchet.FieldByName('kol_rasx').AsFloat := v_kol_rasx;
   DM1.CEH_OTCHET.Post;
   DM1.CEH_OTCHET.ApplyUpdates;
   StartPrep.Next;
  end;
  if not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
  if not dm1.IBT_WRITE.Active then dm1.IBT_WRITE.StartTransaction;
   try
{    if DM1.Ostatki.UpdatesPending then
       DM1.Ostatki.ApplyUpdates;
    if DM1.Document.UpdatesPending then
       DM1.Document.ApplyUpdates;
    if DM1.Kart.UpdatesPending then
       DM1.Kart.ApplyUpdates; }
    if DM1.CEH_OTCHET.UpdatesPending then
       DM1.CEH_OTCHET.ApplyUpdates;
    DM1.IBT_WRITE.Commit;
    DM1.IBT_READ.CommitRetaining;
   except
    MessageDlg('Произошла ошибка при записи документа!', mtWarning, [mbOK], 0);
    DM1.IBT_WRITE.RollbackRetaining;
  end;
  dm1.IBT_WRITE.Active:=FALSE;
  dm1.IBT_READ.Active:=FALSE;
  If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
  StartPrep.Close;
  StartPrep.ParamByName('Kodp').AsInteger:=s_kodp;
  StartPrep.ParamByName('mes').AsInteger:=mes;
  StartPrep.ParamByName('god').AsInteger:=god;
  StartPrep.ParamByName('struk').AsInteger:=vStruk_id;
  StartPrep.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
  StartPrep.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
  StartPrep.Open;
  DBGridEH3.SetFocus;
 END
 else
 begin
  if (DM1.Seria.Modified) or (DM1.Seria.State =dsEdit) or (DM1.Seria.State =dsInsert) then
  DM1.Seria.Post;
  if (DM1.Document.Modified) or (DM1.Document.State =dsEdit) or (DM1.Document.State =dsInsert) then
  DM1.Document.Post;
  if (DM1.Kart.Modified) or (DM1.Kart.State =dsEdit) or (DM1.Kart.State =dsInsert) then
  DM1.Kart.Post;
  if (DM1.Ostatki.Modified) or (DM1.Ostatki.State =dsEdit) or (DM1.Ostatki.State =dsInsert) then
  DM1.Ostatki.Post;
  DM1.ApplyUpdatesDoc;
  dm1.IBT_WRITE.Active:=FALSE;
  dm1.IBT_READ.Active:=FALSE;
  If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
  StartOst.Close;
  StartOst.ParamByName('Struk').AsInteger:=vStruk_id;
  StartOst.ParamByName('dat1').AsString:=s_dat1;
  StartOst.ParamByName('dat2').AsString:=s_dat2;
  StartOst.Open;
  StartOst.First;
 end;

end;

procedure TFStarT.PageControl1Change(Sender: TObject);
begin
 IF PageControl1.ActivePage=tabsheet1 THEN
 BEGIN
  vKlient_Id:=vstruk_id;
  vTip_Op_Id:=21;
  vTip_Doc_Id:=16;
  DBNavigator1.DataSource:=DSStartOst;
  StartOst.Close;
  StartOst.ParamByName('Struk').AsInteger:=vStruk_id;
  StartOst.ParamByName('dat1').AsString:=s_dat1;
  StartOst.ParamByName('dat2').AsString:=s_dat2;
  StartOst.Open;
  StartOst.First;
 END
 ELSE
 BEGIN
  DBNavigator1.DataSource:=DSStartPrep;
  IF S_KODP<>0 THEN
  BEGIN
   vTip_Op_Id:=77;
   vTip_Doc_Id:=37;
   vKlient_Id:=s_kodp;
   StartPrep.Close;
   StartPrep.ParamByName('Kodp').AsInteger:=s_kodp;
   StartPrep.ParamByName('mes').AsInteger:=mes;
   StartPrep.ParamByName('god').AsInteger:=god;
   StartPrep.ParamByName('struk').AsInteger:=vStruk_id;
   StartPrep.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
   StartPrep.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
   StartPrep.Open;
   StartPrep.First;
   StartPrep.Edit;
  END;
 END;
end;

procedure TFStarT.PRIZM1Click(Sender: TObject);

var
razd:integer;
begin

 if dm1.Razdel.Active=true then dm1.Razdel.close;
 dm1.Razdel.Active:=true;
 if FSprFormul.CEH_NormZ.Active=true then  FSprFormul.CEH_NormZ.Close;
 FSprFormul.CEH_NormZ.MacroByName('SORT').AsString:='';
 FSprFormul.CEH_NormZ.MacroByName('USL').AsString:='';
 FSprFormul.CEH_NormZ.Open;
 FSprFormul.CEH_NORMZ.First;
 prizm.Open;
 while not prizm.Eof do
 begin
  razd:=strtoint(Prizm.FieldByName('ncraz').asString);
  dm1.Razdel.First;
  if dm1.Razdel.Locate('kraz',razd,[]) then
  begin
   FSprFormul.CEH_NormZ.Insert;
   FSprFormul.CEH_NormZksm_id_pr.AsInteger:=strtoint(Prizm.FieldByName('ncprod').AsString);
   FSprFormul.CEH_NormZksm_id_mat.AsInteger:=strtoint(Prizm.FieldByName('ncmatr').AsString);
   FSprFormul.CEH_NormZRazdel_id.AsInteger:=dm1.RazdelRazdel_id.AsInteger;
   FSprFormul.CEH_NormZDecznak.AsInteger:=strtoint(PrizmPmform.asstring);
   FSprFormul.CEH_NormZ.Post;
  end;
  prizm.Next;
 end;
 if not dm1.IBT_Write.Active then dm1.IBT_Write.StartTransaction;
 try
  if (FSprFormul.Ceh_Normz.Modified) or (FSprFormul.Ceh_Normz.State =dsEdit) or (FSprFormul.Ceh_Normz.State =dsInsert) then
   FSprFormul.Ceh_Normz.Post;
  if FSprFormul.Ceh_Normz.UpdatesPending then FSprFormul.Ceh_Normz.ApplyUpdates;
  DM1.IBT_Write.Commit;
  DM1.IBT_Read.CommitRetaining;
 except
  on E: Exception do
  begin
   MessageDlg('Произошла ошибка при записи !'+E.Message, mtWarning, [mbOK], 0);
   raise;
   FSprFormul.Ceh_Normz.CancelUpdates;
   DM1.IBT_Read.RollbackRetaining;
  end;
 end;
end;

procedure TFStarT.ToolButton2Click(Sender: TObject);
begin
 PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);

end;

procedure TFStarT.FormActivate(Sender: TObject);
begin

vDate_op:=strtodate(s_dat1);
vDate_dok:=strtodate(s_dat1);
vKol:='KOL_PRIH_ediz';

end;

procedure TFStarT.DateEdit1Change(Sender: TObject);
begin
 s_dat1:=datetostr(DateEdit1.Date);
 mes:=strtoint(copy(s_dat1,4,2));
 god:=strtoint(copy(s_dat1,7,4));
 vDate_dok:=strtodate(s_dat1);
 vDate_op:=strtodate(s_dat1);
end;

procedure TFStarT.DateEdit2Change(Sender: TObject);
begin
 s_dat2:=datetostr(DateEdit2.Date);
 mes:=strtoint(copy(s_dat1,4,2));
 god:=strtoint(copy(s_dat1,7,4));
end;

procedure TFStarT.DBGridEh1EditButtonClick(Sender: TObject);
var
  nm : integer;
begin
  nm := 0;
  if dbgrideh1.SelectedField.FieldName='SERIA' then nm:=1;
  if dbgrideh1.SelectedField.FieldName='KSM_ID' then nm:=2;
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
  //       DM1.Kart.Edit;
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
       DM1.Kart.FieldByName('Ksm_Id').AsInteger :=FindMatrop.ModalResult-50;
       DM1.Kart.FieldByName('Gost').AsString :=FindMatrop.IBMatropGOST.AsString;
       DM1.Kart.FieldByName('Nmat').AsString :=FindMatrop.IBMatropNMAT.AsString;
       DM1.Kart.FieldByName('Kei_Id').AsInteger :=FindMatrop.IBMatropKei_id.AsInteger;
       DM1.Kart.FieldByName('neis').AsString :=FindMatrop.IBMatropNEIS.AsString;
       DM1.Kart.FieldByName('Xarkt').AsString :=FindMatrop.IBMatropXARKT.AsString;
      end;
     end;
  end;
end;

procedure TFStarT.ToolButton5Click(Sender: TObject);
begin
If FindDlgEh1.Filtered Then FindDlgEh1.Filtered := False;
  FindDlgEh1.ShowFindResult := not (FindDlgEh1.Execute  = mrCancel);
end;

procedure TFStarT.DBGridEh4EditButtonClick(Sender: TObject);
// var
// nm :integer;
begin
{if dbgrideh1.SelectedField.FieldName='SERIA' then nm:=1;
if dbgrideh1.SelectedField.FieldName='KSM_ID' then nm:=2;
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
//       DM1.Kart.Edit;
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
     DM1.Kart.FieldByName('Ksm_Id').AsInteger :=FindMatrop.ModalResult-50;
     DM1.Kart.FieldByName('Gost').AsString :=FindMatrop.IBMatropGOST.AsString;
     DM1.Kart.FieldByName('Nmat').AsString :=FindMatrop.IBMatropNMAT.AsString;
     DM1.Kart.FieldByName('Kei_Id').AsInteger :=FindMatrop.IBMatropKei_id.AsInteger;
     DM1.Kart.FieldByName('neis').AsString :=FindMatrop.IBMatropNEIS.AsString;
     DM1.Kart.FieldByName('Xarkt').AsString :=FindMatrop.IBMatropXARKT.AsString;
    end;
   end;
3: begin
    if frazdel=nil then frazdel:=tfrazdel.Create(Application);
    frazdel.ShowModal;
    if s_razdel<>0 then
     begin
      dm1.Kart.FieldByName('KRAZ').value:=s_razdel;
      dm1.Kart.FieldByName('RAZDEL_ID').value:=dm1.RazdelRAZDEL_ID.AsInteger;
     end;
   end;
  end;}
end;

procedure TFStarT.N01Click(Sender: TObject);
begin
 vNdoc:='Ст_спис';
 vKlient_Id:=0;
 vTip_Doc_Id:=38;
 vTip_Op_Id:=32;
 vDate_dok:=strtodate(s_dat1);
 vDate_op:=strtodate(s_dat1);
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
 + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
 + ' AND DOCUMENT.Ndok='+''''+vNdoc+''''
 + ' and document.date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
 + ' AND DOCUMENT.Klient_id=0',Dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then  vDocument_id:=V_DOK
 else
 begin
  IF NOT DM1.Document.Active THEN DM1.Document.Active:=true;
  DM1.Document.Insert;
  DM1.Document.Post;
 end;
 DM1.Kart.Close;
 DM1.KartKSM_ID.OnValidate:=nil;
 DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(VDOCUMENT_id);
 DM1.Kart.Open;
 Ost_Cex.Close;
 Ost_Cex.ParamByName('struk_id').AsInteger:=Vstruk_id;
 Ost_Cex.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
 Ost_Cex.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
 Ost_Cex.Open;
 Ost_Cex.First;
 While not Ost_Cex.Eof do
 begin
   st_KART:=Ost_CexKart_id.AsInteger;
   vKART_id:=Ost_CexKart_id.AsInteger;
   dm1.Kart.Insert;
   dm1.KartKsm_id.AsInteger:=Ost_CexKSM_id.AsInteger;
   dm1.KartKei_id.AsInteger:=Ost_CexKei_id.AsInteger;
   dm1.KartKol_RASH_ediz.AsFloat:=Ost_CexOt_s.AsFloat;
   dm1.KartDoc_id.AsInteger:=vDocument_id;
   dm1.KartKART_id.AsInteger:=vKART_id;
   dm1.Kart.Post;
   Ost_Cex.Next;
 end;
  DM1.ApplyUpdatesDoc;
  dm1.IBT_WRITE.Active:=FALSE;
  dm1.IBT_READ.Active:=FALSE;
  If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
//  списание н/з
 vNdoc:='Ст_спис_нз';
 vKlient_Id:=0;
 vTip_Doc_Id:=38;
 vTip_Op_Id:=85;
 vDate_dok:=strtodate(s_dat1);
 vDate_op:=strtodate(s_dat1);
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
 + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
 + ' and document.date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
 + ' AND DOCUMENT.Klient_id=0',Dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then  vDocument_id:=V_DOK
 else
 begin
  IF NOT DM1.Document.Active THEN DM1.Document.Active:=true;
  DM1.Document.Insert;
  DM1.Document.Post;
 end;
 DM1.Kart.Close;
 DM1.KartKSM_ID.OnValidate:=nil;
 DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(VDOCUMENT_id);
 DM1.Kart.Open;
 Ost_Nz.Close;
 Ost_Nz.ParamByName('struk_id').AsInteger:=Vstruk_id;
 Ost_Nz.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
 Ost_nz.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
 Ost_Nz.Open;
 Ost_Nz.First;
 While not Ost_Nz.Eof do
 begin
   st_KART:=Ost_NzKart_id.AsInteger;
   vKART_id:=Ost_NzKart_id.AsInteger;
   dm1.Kart.Insert;
   dm1.KartKsm_id.AsInteger:=Ost_NzKSM_id.AsInteger;
   dm1.KartKei_id.AsInteger:=Ost_NzKei_id.AsInteger;
   dm1.KartKol_RASH_ediz.AsFloat:=Ost_NzOt_nz.AsFloat;
   dm1.KartDoc_id.AsInteger:=vDocument_id;
   dm1.KartKART_id.AsInteger:=vKART_id;
   dm1.Kart.Post;
   Ost_Nz.Next;
 end;
 DM1.ApplyUpdatesDoc;
 DM1.KartKSM_ID.OnValidate:=dm1.KartKSM_IDValidate;
end;

procedure TFStarT.N10Click(Sender: TObject);
begin
  ss_kodp:=s_kodp;
//   5 цех
 s_STKOD:='0800';
 vNdoc:='Передача_сырья'+s_stkod;
 vKlient_Id:=648;
 vTip_Doc_Id:=9;
 vTip_Op_Id:=8;
 vDate_dok:=strtodate(s_dat1);
 vDate_op:=strtodate(s_dat1);
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
 + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
 + ' and document.date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
 + ' AND DOCUMENT.Klient_id='+inttostr(vKlient_id),Dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then  vDocument_id:=V_DOK
 else
 begin
  IF NOT DM1.Document.Active THEN DM1.Document.Active:=true;
  DM1.Document.Insert;
  DM1.Document.Post;
 end;
 DM1.Kart.Close;
 DM1.KartKSM_ID.OnValidate:=nil;
 DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(VDOCUMENT_id);
 DM1.Kart.Open;
 Nomen.Filter:='(sklad='+''''+s_STKOD+''''+') and (kol<>0)';
 Nomen.Active := True;
 Nomen.Filtered := True;
 Nomen.First;
 While not Nomen.Eof do
 begin
  v_ostat:=null;
  s_Ksm := StrToInt(Copy(Nomen.FieldByName('NUMKCU').AsString,3,5));
  s_kei:=StrToInt(Nomen.FieldByName('KEI').AsString);
  v_kartV:=SelectToVarIB('select ostatki.Kart_id FROM ostatki  WHERE Ostatki.Ksm_id='+inttostr(s_ksm)
  + ' AND Ostatki.Ksm_idpr is null'
  + ' AND Ostatki.Struk_id='+INTTOSTR(VsTRUK_ID),Dm1.belmed,dm1.ibt_read);
  if v_kartV<>null then
  begin
   st_kart:=v_kartV;
   vKART_id:=v_kartV;
   dm1.Kart.Insert;
   dm1.KartKsm_id.AsInteger:=S_KSM;
   dm1.KartKei_id.AsInteger:=S_Kei;
   dm1.KartKol_RASH_ediz.AsFloat:=Nomen.FieldByName('kol').AsFloat;
   dm1.KartDoc_id.AsInteger:=vDocument_id;
   dm1.KartKol_prih.AsFloat:=0;
   dm1.KartKART_id.AsInteger:=vKART_id;
   dm1.Kart.Post;
  end;
//    DM1.ApplyUpdatesDoc;;
    Nomen.Next;
 end;

  DM1.ApplyUpdatesDoc;

 s_kodp:=ss_kodp;
end;

procedure TFStarT.N11Click(Sender: TObject);
begin
 vNdoc:='Ст_разделение_остатков';
 vKlient_Id:=0;
 vTip_Doc_Id:=38;
 vTip_Op_Id:=32;
 vDate_dok:=strtodate(s_dat1);
 vDate_op:=strtodate(s_dat1);
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
 + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
 + ' and document.date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
 + ' AND DOCUMENT.Klient_id=0 and ndok='+''''+vndoc+'''',Dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then  vDocument_id:=V_DOK
 else
 begin
  IF NOT DM1.Document.Active THEN DM1.Document.Active:=true;
  DM1.Document.Insert;
  DM1.Document.Post;
 end;
 OstSyr_cex.Active:=false;
 OstSyr_cex.MacroByName('DAT1').AsString:=''''+datetostr(DateEdit1.Date)+'''';
 OstSyr_cex.MacroByName('DAT2').AsString:=''''+datetostr(DateEdit2.Date)+'''';
 OstSyr_cex.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
 OstSyr_cex.Active:=true;
 DM1.Kart.Close;
 DM1.KartKSM_ID.OnValidate:=nil;
 DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(VDOCUMENT_id);
 DM1.Kart.Open;
 Nomen.Filter:='sklad='+''''+s_STKOD+'''';
 Nomen.Active := True;
 Nomen.Filtered := True;
 Nomen.First;
 While not Nomen.Eof do
 begin
  v_ostat:=null;
  s_Ksm := StrToInt(Copy(Nomen.FieldByName('NUMKCU').AsString,3,5));
  s_kei:=StrToInt(Nomen.FieldByName('KEI').AsString);
  v_kartV:=SelectToVarIB('select ostatki.Kart_id FROM ostatki  WHERE Ostatki.Ksm_id='+inttostr(s_ksm)
  + ' AND Ostatki.Ksm_idpr is null'
  + ' AND Ostatki.Struk_id='+INTTOSTR(VsTRUK_ID),Dm1.belmed,dm1.ibt_read);
  if v_kartV=null then v_kartV:=0;
  OstSyr_cex.First;
  if OstSyr_cex.Locate('ksm_id',s_ksm,[]) then
   v_ostat:=OstSyr_cexS_ot_s.AsFloat
  else  v_ostat:=0;
//  if abs(V_OSTAT-Nomen.FieldByName('kol').AsFloat)<0.000001 then v_ras:=0;
  If V_OSTAT-Nomen.FieldByName('kol').AsFloat<>0 then
  begin
   vKART_id:=v_kartV;
   st_kart:=v_kartV;
   dm1.Kart.Insert;
   dm1.KartKsm_id.AsInteger:=S_KSM;
   dm1.KartKei_id.AsInteger:=S_Kei;
   dm1.KartKol_RASH_ediz.AsFloat:=v_ostat-Nomen.FieldByName('kol').AsFloat;
   dm1.KartDoc_id.AsInteger:=vDocument_id;
   dm1.KartKol_prih.AsFloat:=0;
   dm1.KartKART_id.AsInteger:=vKART_id;
   dm1.Kart.Post;
  end;
  Nomen.Next;
 end;
{ OstSyr_cex.First;
 While not OstSyr_cex.Eof do
 begin
  v_ostat:=null;
  s_Ksm := OstSyr_cexKsm_id.AsInteger;
  s_kei:=OstSyr_cexKEI_id.AsInteger;
  v_kartV:=SelectToVarIB('select ostatki.Kart_id FROM ostatki  WHERE Ostatki.Ksm_id='+inttostr(s_ksm)
  + ' AND Ostatki.Ksm_idpr is null'
  + ' AND Ostatki.Struk_id='+INTTOSTR(VsTRUK_ID),Dm1.belmed,dm1.ibt_read);
  if v_kartV=null then v_kartV:=0;
  Nomen.First;
  if not Nomen.Locate('ksm_id',s_ksm,[]) then
  begin
   if OstSyr_cexS_ot_s.AsFloat<>0 then
   begin
    vKART_id:=v_kartV;
    st_kart:=v_kartV;
    dm1.Kart.Insert;
    dm1.KartKsm_id.AsInteger:=S_KSM;
    dm1.KartKei_id.AsInteger:=S_Kei;
    dm1.KartKol_RASH_ediz.AsFloat:=OstSyr_cexS_ot_s.AsFloat;
    dm1.KartDoc_id.AsInteger:=vDocument_id;
    dm1.KartKol_prih.AsFloat:=0;
    dm1.KartKART_id.AsInteger:=vKART_id;
    dm1.Kart.Post;
   end;
  end;
  OstSyr_cex.Next;
 end; }
 DM1.ApplyUpdatesDoc;

 DM1.KartKSM_ID.OnValidate:=dm1.KartKSM_IDValidate;

end;

procedure TFStarT.N1Click(Sender: TObject);
begin
 vNdoc:='Старт';
 vKlient_Id:=vstruk_id;
 vTip_Op_Id:=21;
 vTip_Doc_Id:=16;
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id FROM DOCUMENT WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
 + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
 + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
 + ' AND Document.Klient_id='+INTTOSTR(VsTRUK_ID),Dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then  vDocument_id:=V_DOK
 else
 begin
  IF NOT DM1.Document.Active THEN DM1.Document.Active:=true;
  DM1.Document.Insert;
 end;
 DM1.Kart.Close;
 DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(VDOCUMENT_id);
 DM1.Kart.Open;
 DM1.Kart.APPEND;
 DBGridEh1.SetFocus;
end;

procedure TFStarT.N2Click(Sender: TObject);
begin
 vKol:='KOL_PRIH_ediz';
 s_zag:='Ввод остатков (НЗП)';
 vTip_Op_Id:=77;
 vTip_Doc_Id:=37;
 vKlient_Id:=s_kodp;
 vNdoc:='Старт_з_'+inttostr(s_kodp);
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
 + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
 + ' AND Document.Klient_id='+inttostr(vKlient_id),Dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then  vDocument_id:=V_DOK
 else
 begin
  IF NOT DM1.Document.Active THEN DM1.Document.Active:=true;
  DM1.Document.Insert;
 end;
// v_ksm_idpr:=s_kodp;
 if FNew_Prix=nil then FNew_Prix:=TFNew_prix.Create(Application);
  FNew_Prix.ShowModal;
//  dm1.IBT_WRITE.Active:=FALSE;
//  dm1.IBT_READ.Active:=FALSE;
//  If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
 StartPrep.Close;
 StartPrep.ParamByName('Kodp').AsInteger:=s_kodp;
 StartPrep.ParamByName('mes').AsInteger:=mes;
 StartPrep.ParamByName('god').AsInteger:=god;
 StartPrep.ParamByName('struk').AsInteger:=vStruk_id;
 StartPrep.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
 StartPrep.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
 StartPrep.Open;
 StartPrep.First;
end;

procedure TFStarT.SpeedButton2Click(Sender: TObject);
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
  s_gost:=FindSpprod.IBSpprodGOST.AsString;
  s_xarkt:=FindSpprod.IBSpprodXARKT.AsString;
  s_nmat:=FindSpprod.IBSpprodNMAT.AsString;
  s_kei:=FindSpprod.IBSpprodKEI_ID.VALUE;
  s_korg:=FindSpprod.IBSpprodKORG.VALUE;
  s_kodProd:=FindSpprod.IBSpprodKOD_PROD.AsString;
  s_namorg:=FindSpprod.IBSpprodNAME_ORG.AsString;
  s_neiz:=FindSpprod.IBSpprodNEIS.AsString;
  s_namREG:=FindSpprod.IBSpprodNAMe_ReG.AsString;
  label6.Caption:=s_namreg;
  label19.caption:=s_NMAT;
  label28.caption:=Inttostr(s_KORG);
  label29.caption:=s_namorg;
  label21.caption:=s_Neiz;
  label22.caption:=s_GOST;
  label41.caption:=s_Xarkt;
  StartPrep.Close;
  StartPrep.ParamByName('Kodp').AsInteger:=s_kodp;
  StartPrep.ParamByName('mes').AsInteger:=mes;
  StartPrep.ParamByName('god').AsInteger:=god;
  StartPrep.ParamByName('struk').AsInteger:=vStruk_id;
  StartPrep.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
  StartPrep.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
  StartPrep.Open;
  StartPrep.First;
  StartPrep.Edit;
  if dm1.Ceh_Otchet.Active then dm1.Ceh_Otchet.Active:=false;
  dm1.Ceh_Otchet.ParamByName('mes').AsInteger:=Mes;
  dm1.Ceh_Otchet.ParamByName('god').AsInteger:=God;
  dm1.Ceh_Otchet.Active:=true;
 End;

end;

procedure TFStarT.StartPrepKOLChange(Sender: TField);
begin
{ s_kei:=StartPrepKei_id.AsInteger;
 v_keiN:=StartPrepKei_idn.AsInteger;
 s_ksm:=StartPrepKsm_id.AsInteger;
 v_razdel:=StartPrepRazdel_id.AsInteger;
 v_kol_ceh:=StartPrepKol.AsFloat*dm1.Koef_per(s_kei,v_keiN,s_ksm);
 if not dm1.Ceh_Otchet.Active then
 begin
  dm1.Ceh_Otchet.ParamByName('mes').AsInteger:=Mes;
  dm1.Ceh_Otchet.ParamByName('god').AsInteger:=God;
  dm1.Ceh_Otchet.Active:=true;
 end;
 IF (StartPrepKart_id.AsInteger=0) or (StartPrepKart_id.AsVariant=Null) THEN
 BEGIN
  if dm1.Ostatki.Active then dm1.Ostatki.Active:=false;
  DM1.Ostatki.ParamByName('struk_ID').AsInteger:=vstruk_id;
  DM1.Ostatki.MacroByName('usl').AsString:=' ost.razdel_id='+inttostr(StartPrepRazdel_id.AsInteger)
  +' and ost.ksm_idpr='+inttostr(s_kodp)
  +' AND OST.KSM_ID='+INTTOSTR(S_KSM);
  dm1.Ostatki.Open;
  if not dm1.Ostatki.eof then vkart_id:= dm1.OstatkiKart_id.asInteger
  else
  begin
   vseria_id:=0;
   dm1.Ostatki.Insert;
   DM1.Ostatki.Post;
   StartPrep.Edit;
   StartPrepKart_id.AsInteger:=vKart_id;
   StartPrep.Post;
  end;
 END;
 dm1.CEH_OTCHET.First;
 if dm1.CEH_OTCHET.Locate('kart_id',StartPrepKart_id.AsInteger,[]) then
  DM1.CEH_OTChet.Edit
 else
 begin
  DM1.CEH_OTCHET.Insert;
  DM1.Ceh_Otchet.FieldByName('Kart_Id').AsInteger :=StartPrepKart_id.AsInteger;
  DM1.Ceh_Otchet.FieldByName('mes').AsInteger :=Mes;
  DM1.Ceh_Otchet.FieldByName('God').AsInteger :=God;
 end;
 DM1.Ceh_Otchet.FieldByName('kol').AsFloat := v_kol_ceh;
 DM1.CEH_OTCHET.Post;}
end;

procedure TFStarT.StartPrepKOL_RASXChange(Sender: TField);
begin
{ s_kei:=StartPrepKei_id.AsInteger;
 v_keiN:=StartPrepKei_idn.AsInteger;
 s_ksm:=StartPrepKsm_id.AsInteger;
 v_razdel:=StartPrepRazdel_id.AsInteger;
 v_kol_rasx:=StartPrepKol_rasx.AsFloat*dm1.Koef_per(s_kei,v_keiN,s_ksm);
 if not dm1.Ceh_Otchet.Active then
 begin
  dm1.Ceh_Otchet.ParamByName('mes').AsInteger:=Mes;
  dm1.Ceh_Otchet.ParamByName('god').AsInteger:=God;
  dm1.Ceh_Otchet.Active:=true;
 end;
 IF (StartPrepKart_id.AsInteger=0) or (StartPrepKart_id.AsVariant=Null) THEN
 BEGIN
  if dm1.Ostatki.Active then dm1.Ostatki.Active:=false;
  DM1.Ostatki.ParamByName('struk_ID').AsInteger:=vstruk_id;
  DM1.Ostatki.MacroByName('usl').AsString:=' ost.razdel_id='+inttostr(StartPrepRazdel_id.AsInteger)
  +' and ost.ksm_idpr='+inttostr(s_kodp)
  +' AND OST.KSM_ID='+INTTOSTR(S_KSM);
  dm1.Ostatki.Open;
  if not dm1.Ostatki.eof then vkart_id:= dm1.OstatkiKart_id.asInteger
  else
  begin
   vseria_id:=0;
   dm1.Ostatki.Insert;
   DM1.Ostatki.Post;
   StartPrep.Edit;
   StartPrepKart_id.AsInteger:=vKart_id;
   StartPrep.Post;
  end;
 END;
 dm1.CEH_OTCHET.First;
 if dm1.CEH_OTCHET.Locate('kart_id',StartPrepKart_id.AsInteger,[]) then
  DM1.CEH_OTChet.Edit
 else
 begin
  DM1.CEH_OTCHET.Insert;
  DM1.Ceh_Otchet.FieldByName('Kart_Id').AsInteger :=StartPrepKart_id.AsInteger;
  DM1.Ceh_Otchet.FieldByName('mes').AsInteger :=Mes;
  DM1.Ceh_Otchet.FieldByName('God').AsInteger :=God;
 end;
 DM1.Ceh_Otchet.FieldByName('kol_rasx').AsFloat := v_kol_rasx;
 DM1.CEH_OTCHET.Post;}
end;

procedure TFStarT.N3Click(Sender: TObject);
begin
  vKol:='KOL_PRIH_ediz';
  vDate_dok:=strtodate(s_dat1);
  vDate_op:=strtodate(s_dat1);
  s_zag:='Ввод остатков (сырье)';
  vNdoc:='Старт_c_'+inttostr(s_kodp);;
  vKlient_Id:=s_kodp;
  vTip_Op_Id:=21;
  vTip_Doc_Id:=37;
  v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
   + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
   + ' AND Document.Klient_id='+inttostr(vKlient_id),Dm1.belmed,dm1.ibt_read);
   If v_dok<>Null then  vDocument_id:=V_DOK
   else
   begin
    IF NOT DM1.Document.Active THEN DM1.Document.Active:=true;
    DM1.Document.Insert;
   end;
   if FNew_Prix=nil then FNew_Prix:=TFNew_prix.Create(Application);
   FNew_Prix.ShowModal;
   StartPrep.Close;
   StartPrep.ParamByName('Kodp').AsInteger:=s_kodp;
   StartPrep.ParamByName('mes').AsInteger:=mes;
   StartPrep.ParamByName('god').AsInteger:=god;
   StartPrep.ParamByName('struk').AsInteger:=vStruk_id;
   StartPrep.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
   StartPrep.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
   StartPrep.Open;
   StartPrep.First;
end;

procedure TFStarT.N4Click(Sender: TObject);
begin
 OstASU;
end;

procedure TFStart.OstASU;
var
  rkodp : Integer;
  rkei : Integer;
  rkein : Integer;
  rrazdel : VARIANT;
  v_Ost: VARIANT;
begin

 FStart.Otchet.Filter:='(otstrk='+''''+s_STKOD+''''+') and (ostsk<>0 or ostzk<>0 or pereg<>0 or rasg<>0) and (otprod<>'+''''+'000000'+''''+')';
// FStart.Otchet.Filter:='(otstrk='+''''+s_STKOD+''''+') and (pereg<>0 or rasg<>0) and (otprod<>'+''''+'000000'+''''+')';
 FStart.Otchet.Active := True;
 FStart.Otchet.Filtered := True;
 FStart.Otchet.First;
 vDate_dok:=strtodate(s_dat1);
 vDate_op:=strtodate(s_dat1);
 rkodp:=s_kodp;
 rkei:=s_kei;
 st_kart:=0;
 While not fstart.Otchet.Eof do
 begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=StrToInt(FStart.Otchet.FieldByName('OTMATR').AsString);
  dM1.Matrop.Active:=TRUE;
  if not dm1.Matrop.eof then
  begin
   dm1.IBT_WRITE.Active:=FALSE;
   dm1.IBT_READ.Active:=FALSE;
   If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
   s_Ksm := StrToInt(FStart.Otchet.FieldByName('OTMATR').AsString);
   s_Kodp := StrToInt(FStart.Otchet.FieldByName('OTPROD').AsString);
   rkein:=FStart.Otchet.FieldByName('kein').asinteger;
   s_kei:=FStart.Otchet.FieldByName('kei').asinteger;
   if rkein=0 then rkein:=s_kei;
   rrazdel:=SelectToVarIB('select RAZDEL.RAZDEL_id   FROM RAZDEL WHERE RAZDEL.KRAZ='+''''+FStart.OtchetOTRAZ.ASSTRING+
   '''',Dm1.belmed,dm1.ibt_read);
   IF RRAZDEL <> NULL THEN V_RAZDEL:=RRAZDEL ELSE V_RAZDEL:=0;
   v_kols:=FStart.Otchet.FieldByName('OSTSK').ASFLOAT;
   v_kolNZ:=FStart.Otchet.FieldByName('OSTZK').ASFLOAT;
   if FStart.Otchet.FieldByName('Ostsk').AsFloat <> 0 then
   begin
    vTip_Op_Id:=21;
    vTip_Doc_Id:=37;
    vKlient_Id:=s_kodp;
    vNdoc:='Старт_c_'+inttostr(s_kodp);
    v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
    + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
    + ' AND Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
    + ' AND Document.Klient_id='+inttostr(vKlient_id),Dm1.belmed,dm1.ibt_read);
    If v_dok<>Null then  vDocument_id:=V_DOK
    else
    begin
     DM1.Document.Active:=false;
     DM1.Document.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
     + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
     + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
     + ' AND Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
     + ' AND Document.Klient_id='+inttostr(vKlient_id);
     DM1.Document.Active:=true;
     DM1.Document.Insert;
     DM1.Document.Post;
    end;
    DM1.Kart.Close;
    DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(VDOCUMENT_id);
    DM1.Kart.Open;
    DM1.Kart.Insert;
    DM1.Kart.FieldByName('doc_Id').AsInteger := vDocument_id;
    DM1.Kart.FieldByName('KSM_ID').AsInteger:=s_Ksm;
    DM1.Kart.FieldByName('Kei_ID').AsInteger:=rKein;
    DM1.KartRazdel_ID.AsInteger := rrazdel;
    DM1.Kart.FieldByName('kol_Prih_ediz').AsFloat := v_kols;
    DM1.Kart.Post;
    DM1.ApplyUpdatesDoc;
    st_kart:=vkart_id;
   end;
   if FStart.Otchet.FieldByName('Ostzk').AsFloat <> 0 then
   begin
    vTip_Op_Id:=77;
    vTip_Doc_Id:=37;
    vKlient_Id:=s_kodp;
    vNdoc:='Старт_нз_'+inttostr(s_kodp);
    v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
    + ' AND Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
    + ' AND Document.Klient_id='+inttostr(vKlient_id),Dm1.belmed,dm1.ibt_read);
    If v_dok<>Null then  vDocument_id:=V_DOK
    else
    begin
     DM1.Document.Active:=false;
     DM1.Document.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
     +' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
     + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
     + ' AND Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
     + ' AND Document.Klient_id='+inttostr(vKlient_id);
     DM1.Document.Active:=true;
     DM1.Document.Insert;
     DM1.Document.Post;
    end;
    DM1.Kart.Close;
    DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(VDOCUMENT_id)
    +' and kart.ksm_id='+inttostr(s_ksm)+' and kart.razdel_id='+inttostr(v_razdel) ;
    DM1.Kart.Open;
    DM1.Kart.Insert;
    DM1.Kart.FieldByName('doc_Id').AsInteger := vDocument_id;
    DM1.Kart.FieldByName('KSM_ID').AsInteger:=s_Ksm;
    DM1.Kart.FieldByName('Kei_ID').AsInteger:=rKein;
    DM1.KartRazdel_ID.AsInteger := v_razdel;
    DM1.Kart.FieldByName('kol_Prih_ediz').AsFloat := v_kolnz;
    DM1.Kart.Post;
    DM1.ApplyUpdatesDoc;
    st_kart:=vkart_id;
   end;
   if (FStart.Otchet.FieldByName('Pereg').AsFloat <> 0) or (FStart.Otchet.FieldByName('Rasg').AsFloat <> 0) then
   begin
    IF ST_KART<>0 THEN V_OST:=ST_KART
    ELSE
    BEGIN
     v_Ost:=SelectToVarIB('select Ostatki.kart_id   FROM Ostatki WHERE Ostatki.STRUK_ID='+INTTOSTR(VsTRUK_ID)
     + ' AND ostatki.ksm_id='+inttostr(s_Ksm)
     + ' AND Ostatki.razdel_id='+inttostr(v_razdel)
     + ' AND Ostatki.Ksm_idpr='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
     If v_Ost = Null then
     begin
      if not dm1.Ostatki.Active then dm1.Ostatki.Open;
      dm1.Ostatki.Insert;
      dm1.Ostatki.Post;
      dm1.Ostatki.ApplyUpdates;
      DM1.IBT_WRITE.Commit;
      v_Ost:=vkart_id;
     end;
    END;
    dm1.CEH_OTCHET.Active:=FALSE;
    dm1.CEH_OTCHET.ParamByName('MES').AsInteger:=mes;
    dm1.CEH_OTCHET.ParamByName('GOD').AsInteger:=GOD;
    dm1.CEH_OTCHET.Active:=TRUE;
//    if not dm1.CEH_OTCHET.Locate('kart_id',StartPrepKart_id.AsInteger,[]) then
    if not dm1.CEH_OTCHET.Locate('kart_id',v_Ost,[]) then
    begin
     dm1.CEH_OTCHET.Insert;
     dm1.CEH_OTCHET.FieldByName('KART_ID').AsInteger:=v_ost;
     dm1.CEH_OTCHET.FieldByName('MES').AsInteger:=MES;
     dm1.CEH_OTCHET.FieldByName('GOD').AsInteger:=GOD;
     dm1.CEH_OTCHET.FieldByName('KOL').AsFloat:=FStart.Otchet.FieldByName('Pereg').AsFloat;
     dm1.CEH_OTCHET.FieldByName('KOL_RASX').AsFloat:=FStart.Otchet.FieldByName('Rasg').AsFloat;
     dm1.CEH_OTCHET.Post;
    END
    else
    begin
     dm1.CEH_OTCHET.EDIT;
     dm1.CEH_OTCHET.FieldByName('KOL').AsFloat:=FStart.Otchet.FieldByName('Pereg').AsFloat;
     dm1.CEH_OTCHET.FieldByName('KOL_RASX').AsFloat:=FStart.Otchet.FieldByName('Rasg').AsFloat;
     dm1.CEH_OTCHET.Post;
    end;
    try
     dm1.CEH_OTCHET.ApplyUpdates;
     DM1.IBT_WRITE.Commit;
    except
     MessageDlg('Произошла ошибка при записи данных!', mtWarning, [mbOK], 0);
     DM1.IBT_Read.RollbackRetaining;
    end;
    dm1.CEH_OTCHET.Close;
   end;
  end;
  st_kart:=0;
  FStart.otchet.Next;
  s_kodp:=rkodp;
  s_kei:=rkei;
 end;
end;

procedure TFStarT.N5Click(Sender: TObject);
var
  v_start: integer;
begin
 DM1.KartKSM_ID.OnValidate:=nil;
 vNdoc:='Старт';
 vKlient_Id:=vstruk_id;
 vTip_Op_Id:=21;
 vTip_Doc_Id:=16;
 vDate_dok:=strtodate(s_dat1);
 vDate_op:=strtodate(s_dat1);
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
 + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
 + ' and document.date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
 + ' AND DOCUMENT.Klient_id='+INTTOSTR(VsTRUK_ID),Dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then  vDocument_id:=V_DOK
 else
 begin
  IF NOT DM1.Document.Active THEN DM1.Document.Active:=true;
  DM1.Document.Insert;
  DM1.Document.Post;
 end;
 v_start:=vDocument_id;
 DM1.Kart.Close;
 DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(VDOCUMENT_id);
 DM1.Kart.Open;
 Nomen.Filter:='sklad='+''''+s_STKOD+''''+' and kol>=0';
 Nomen.Active := True;
 Nomen.Filtered := True;
 Nomen.First;
 While not Nomen.Eof do
 begin
  s_Ksm := StrToInt(Copy(Nomen.FieldByName('NUMKCU').AsString,3,5));
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=s_ksm;
  dM1.Matrop.Active:=TRUE;
  if (not dm1.Matrop.eof) then
  begin
   vDocument_id:=v_start;
   s_kei:=dm1.MatropKei_id.AsInteger;
   dm1.Kart.Insert;
   DM1.Kart.FieldByName('DOC_ID').AsInteger:=vDocument_id;
   DM1.Kart.FieldByName('KSM_ID').AsInteger:=s_Ksm;
   DM1.Kart.FieldByName('Kol_Prih').AsFloat := Nomen.FieldByName('kol').AsFloat;
   DM1.Kart.Post;
  end;
  Nomen.Next;
 end;
 DM1.ApplyUpdatesDoc;
 DM1.KartKSM_ID.OnValidate:=dm1.KartKSM_IDValidate;
end;







procedure TFStarT.N6Click(Sender: TObject);
begin
// dm1.RaspredSyrOt;
end;

procedure TFStarT.N7Click(Sender: TObject);
begin
// dm1.RaspredZagOt;
end;

procedure TFStarT.N8Click(Sender: TObject);
begin
//dm1.RaspredRasOt;
end;

procedure TFStarT.N9Click(Sender: TObject);
begin
{ ss_kodp:=s_kodp;
 vNdoc:='Ст_спис';
 vKlient_Id:=0;
 vTip_Doc_Id:=38;
 vTip_Op_Id:=32;
 vDate_dok:=strtodate(s_dat1);
 vDate_op:=strtodate(s_dat1);
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
 + ' AND DOCUMENT.TIP_dok_ID='+inttostr(vTip_doc_Id)
 + ' and document.date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
 + ' AND DOCUMENT.Klient_id=0',Dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then  vDocument_id:=V_DOK
 else
 begin
  IF NOT DM1.Document.Active THEN DM1.Document.Active:=true;
  DM1.Document.Insert;
  DM1.Document.Post;
 end;
 DM1.Kart.Close;
 DM1.KartKSM_ID.OnValidate:=nil;
 DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(VDOCUMENT_id);
 DM1.Kart.Open;
 Nomen.Filter:='sklad='+''''+s_STKOD+'''';
// +' and kol>=0';
 Nomen.Active := True;
 Nomen.Filtered := True;
 Nomen.First;
 While not Nomen.Eof do
 begin
  v_ostat:=null;
  s_Ksm := StrToInt(Copy(Nomen.FieldByName('NUMKCU').AsString,3,5));
  s_kei:=StrToInt(Nomen.FieldByName('KEI').AsString);
  v_kartV:=SelectToVarIB('select ostatki.Kart_id FROM ostatki  WHERE Ostatki.Ksm_id='+inttostr(s_ksm)
  + ' AND Ostatki.Ksm_idpr is null'
  + ' AND Ostatki.Struk_id='+INTTOSTR(VsTRUK_ID),Dm1.belmed,dm1.ibt_read);
  v_ostat:=SelectToVarIB('select Ostatok_end_s   FROM SELECT_OB_VED ('
  +''''+s_dat1+''''+','+''''+s_dat2+''''+','+inttostr(s_kodp)+') ostatki  WHERE Ostatki.Ksm_id='+inttostr(s_ksm)
  + ' AND Ostatki.Ksm_idpr is null'
  + ' AND Ostatki.Struk_id='+INTTOSTR(VsTRUK_ID),Dm1.belmed,dm1.ibt_read);
  If (v_ostat<>Null) AND (V_OSTAT>Nomen.FieldByName('kol').AsFloat)then
  begin
   vKART_id:=v_kartV;
   dm1.Kart.Insert;
   dm1.KartKsm_id.AsInteger:=S_KSM;
   dm1.KartKei_id.AsInteger:=S_Kei;
   dm1.KartKol_RASH_ediz.AsFloat:=v_ostat-Nomen.FieldByName('kol').AsFloat;
   dm1.KartDoc_id.AsInteger:=vDocument_id;
   dm1.KartKol_prih.AsFloat:=0;
   dm1.KartKART_id.AsInteger:=vKART_id;
   dm1.Kart.Post;
//    DM1.ApplyUpdatesDoc;;
  end;
  Nomen.Next;
 end;
 DM1.KartKSM_ID.OnValidate:=dm1.KartKSM_IDValidate;
 s_kodp:=ss_kodp;}
end;

end.
