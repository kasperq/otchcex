unit PererasZag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, Spin, ComCtrls, ToolWin, Grids, DBGridEh, DB,
  RxMemDS, ExtCtrls, Buttons, DBCtrls,SplshWnd,VCLUtils, IBCustomDataSet,
  IBQuery, IBUpdateSQL, IBUpdSQLW, RxIBQuery, IBStoredProc,
  IBDatabase,IB,DBCtrlsEh,DBLookupEh, BDEUtils, UtilR, UtilRIB,Math,
  DBTables, RxQuery, EIBQuery, DBGrids, FR_DSet, FR_DBSet, FR_Class,RxStrUtils,
  Placemnt;
//  ,Buttons
type
  TFPererasZag = class(TForm)
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    Label5: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    ImageList2: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    Label8: TLabel;
    DSFactVipuskZag: TDataSource;
    DSSyrieZag: TDataSource;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ToolButton1: TToolButton;
    IBZagruzka: TIBQuery;
    EIBQuery1: TEIBQuery;
    frReport2: TfrReport;
    FrPererasZag: TfrDBDataSet;
    FactOstNez: TRxIBQuery;
    DSFactOstNez: TDataSource;
    IBUpdateFactOstNez: TIBUpdateSQLW;
    FactOstNezOSTATOK_END_NZ: TFMTBCDField;
    FactOstNezNEIS: TIBStringField;
    FactOstNezNMAT: TIBStringField;
    FactOstNezRAZDEL_ID: TSmallintField;
    FactOstNezKART_ID: TIntegerField;
    FactOstNezKRAZ: TSmallintField;
    FactOstNezKSM_ID: TIntegerField;
    FactOstNezOSTATOK_BEGIN_NZ: TFMTBCDField;
    FactOstNezOSTATOK_BEGIN_S: TFMTBCDField;
    FactOstNezOSTATOK_END_S: TFMTBCDField;
    FactOstNezKOEF: TIBBCDField;
    FactOstNezPRSUBST: TSmallintField;
    Label13: TLabel;
    Label14: TLabel;
    SpeedButton2: TSpeedButton;
    Label15: TLabel;
    Label16: TLabel;
    Edit3: TEdit;
    SpeedButton3: TSpeedButton;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    ToolButton2: TToolButton;
    FactOstNezPR_RASPRED: TIntegerField;
    ToolButton4: TToolButton;
    FactOstNezPLNORM: TFMTBCDField;
    FactOstNezPROC: TIBBCDField;
    FactOstNezOSTFACTNZ: TFMTBCDField;
    FactOstNezZAGFACT: TFMTBCDField;
    FactOstNezKEI_ID: TSmallintField;
    SyrieZag: TRxIBQuery;
    IBUpdateSyrieZag: TIBUpdateSQLW;
    SyrieZagKART_ID: TSmallintField;
    SyrieZagKSM_ID: TIntegerField;
    SyrieZagNMAT: TIBStringField;
    SyrieZagXARKT: TIBStringField;
    SyrieZagKEI_ID: TSmallintField;
    SyrieZagRASVIR: TFloatField;
    SyrieZagNMAT_PROD: TIBStringField;
    SyrieZagNEIS: TIBStringField;
    SyrieZagKODP: TIntegerField;
    SyrieZagKOEF_ZAG: TFloatField;
    SyrieZagKOD_PROD: TIBStringField;
    SyrieZagKRAZ: TSmallintField;
    SyrieZagNAM: TIBStringField;
    SyrieZagRAZDEL_ID: TSmallintField;
    SyrieZagPRIX: TFMTBCDField;
    SyrieZagKOL_RASH_EDIZ: TFMTBCDField;
    FactVipuskZag: TRxIBQuery;
    FactVipuskZagKOL_PRIH: TFMTBCDField;
    FactVipuskZagNMAT: TIBStringField;
    FactVipuskZagXARKT: TIBStringField;
    FactVipuskZagKOD_PROD: TIBStringField;
    FactVipuskZagKSM_ID: TIntegerField;
    FactVipuskZagREGION: TIBStringField;
    IBUpdateFactVipuskZag: TIBUpdateSQLW;
    FactOstNezOSTFACTS: TFMTBCDField;
    FactOstNezRASH_VIRAB_PERIOD: TFMTBCDField;
    SyrieZagOSTATOK_BEGIN_NZ: TFMTBCDField;
    SyrieZagOSTATOK_BEGIN_S: TFMTBCDField;
    FormStorage1: TFormStorage;
    FactOstNezPRIX_PERIOD: TFMTBCDField;
    DataSource1: TDataSource;
    FactVipuskZagVIPNZ: TFMTBCDField;
    SyrieZagOSTATOK_END_NZ: TFMTBCDField;
    SyrieZagOSTATOK_END_S: TFMTBCDField;
    DBGridEh2: TDBGridEh;
    Label3: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    DBGridEh3: TDBGridEh;
    DBGridEh1: TDBGridEh;
    procedure FactVipuskZag_sAfterScroll(DataSet: TDataSet);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure ProsmZagRaspred;
    procedure Raschet;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure frReport2GetValue(const ParName: string; var ParValue: Variant);
    procedure ToolButton5Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure DBGridEh3SortMarkingChanged(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FactOstNezFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sum_ost_s: double;
  sum_ost_nz: double;
  sum_prix:double;
  sum_rasx:double;
  sum_ost_sn: double;
  sum_ost_nzn: double;
  FPererasZag: TFPererasZag;
  s_kodp1: integer;
  s_kodp_nz: integer;
  VNDOC1: STRING;
  sum_vipusk: double;
  s_kodps: integer;
  s_h: integer;
  v_ost_nz: double;
  v_ost_s: double;
  s_kart: integer;
  vNdocY: string;
  sum_zag:double;
  v_vip_nz:double;
  vNdoc_p: string;
  vNdoc_z: string;
  vNdoc_r: string;
  vDocument_id_syr: integer;
  vDocument_id_pr: integer;
implementation
 uses dm,vibPrep, Find_Spprod,SprFormul;
{$R *.dfm}

procedure TFPererasZag.ProsmZagRaspred;
var
 st_kart1: integer;
 st_ksm: integer;
begin
if edit1.Text<>'' then
begin
 FactOstNez.DisableControls;
 FactVipuskZag.DisableControls;
 SyrieZag.DisableControls;
 FactOstNez.Filtered:=false;
 Splash := ShowSplashWindow(AniBmp1,'Загрузка данных. Подождите, пожалуйста...', True, nil);
 usl_sort:=' kod_prod';
 s_kodp:=s_kodps;
 vNdoc:='Пз-'+inttostr(s_kodp);
 v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.ndok starting with'+''''+vNdoc+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')',dm1.belmed,dm1.ibt_read);
 If v_dok_Kart<>Null then
 begin
  vNdoc1:='Пз-'+inttostr(s_kodp)+'-з-';
  vNdocY:='-у-';
  FactOstNez.Close;
  FactOstNez.ParamByName('KODP').AsInteger:=s_kodp;
  FactOstNez.MacroByName('DAT1').AsString:=''''+S_DAT1+'''';
  FactOstNez.MacroByName('DAT2').AsString:=''''+S_DAT2+'''';
  FactOstNez.ParamByName('MES').AsInteger:=MES;
  FactOstNez.ParamByName('GOD').AsInteger:=GOD;
  FactOstNez.Open;
  FactOstNez.First;
  if FactVipuskZag.active then FactVipuskZag.active:=false;
  FactVipuskZag.ParamByName('strk').AsInteger:=vStruk_id;
  FactVipuskZag.ParamByName('DAT1').AsString:=S_DAT1;
  FactVipuskZag.ParamByName('DAT2').AsString:=S_DAT2;
  FactVipuskZag.MacroByName('Doc').AsString:=''''+vndoc1+'''';
  FactVipuskZag.MacroByName('DocY').AsString:=''''+vndocY+'''';
  FactVipuskZag.MacroByName('sort').AsString:=usl_sort;
  FactVipuskZag.Active := True;
  FactVipuskZag.First;
  FactOstNez.First;
  While not FactOstNez.Eof do
  begin
   sum_zag:=0;
   sum_ost_s:=0;
   sum_ost_nz:=0;
   sum_prix:=0;
   sum_rasx:=0;
   sum_ost_nzn:=0;
   sum_ost_sn:=0;
   FactVipuskZag.First;
   While not FactVipuskZag.Eof do
   begin
    IBZagruzka.Active := False;
    IBZagruzka.SQL.Clear;
    IBZagruzka.SQL.Add('SELECT distinct ostatki.Zag_period,');
    IBZagruzka.SQL.Add('ostatki.Ostatok_begin_nz,ostatki.Ostatok_begin_S,');
    IBZagruzka.SQL.Add('ostatki.Ostatok_end_nz,ostatki.Ostatok_end_S,');
    IBZagruzka.SQL.Add('(ostatki.zag_period+ostatki.peredano_prih_nz) as zag_period,(ostatki.prix_period+ostatki.peredano_prih_nz) as prix_period,ostatki.Rash_Virab_period,');
    IBZagruzka.SQL.Add('ostatki.kart_id,matrop.kei_id,ostatki.ksm_id');
    IBZagruzka.SQL.Add(' FROM select_ob_ved('+''''+S_dat1+''''+','+''''+s_dat2+''''+','+inttostr(FactVipuskZagksm_id.AsInteger)+') ostatki');
    IBZagruzka.SQL.Add(' inner join matrop on (ostatki.ksm_id=matrop.ksm_id)');
    iBZagruzka.SQL.Add(' WHERE ostatki.ksm_id='+INTTOSTR(FactOstNezKSM_id.AsInteger));
    IBZagruzka.Active:=true;
    if not IBZagruzka.Eof then
    begin
     sum_ost_nzn:=sum_ost_nzn+IBZagruzka.FieldByName('Ostatok_begin_nz').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
     sum_ost_sn:=sum_ost_sn+IBZagruzka.FieldByName('Ostatok_begin_S').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
     sum_ost_nz:=sum_ost_nz+IBZagruzka.FieldByName('Ostatok_end_nz').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
     sum_ost_s:=sum_ost_s+IBZagruzka.FieldByName('Ostatok_end_S').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
     sum_prix:=sum_prix+IBZagruzka.FieldByName('Prix_Period').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
     sum_rasx:=sum_rasx+IBZagruzka.FieldByName('Rash_virab_period').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
     sum_zag:=sum_zag+IBZagruzka.FieldByName('Zag_Period').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
    end;
    FactVipuskZag.Next;
   end;
   FactOstNez.Edit;
   FactOstNezOstatok_end_Nz.AsFloat:=sum_ost_nz;
   FactOstNezOstatok_end_S.AsFloat:=sum_ost_s;
   FactOstNezOstatok_BEGIN_Nz.AsFloat:=sum_ost_nzn;
   FactOstNezOstatok_begin_S.AsFloat:=sum_ost_sn;
   FactOstNezOstFactNz.AsFloat:=roundto(sum_ost_nzn+sum_zag-sum_vipusk*FactOstNezPlnorm.AsFloat,-3);
   FactOstNezOstFactS.AsFloat:=roundto(sum_ost_sn+sum_prix-sum_zag,-3);
   FactOstNezZagFact.AsFloat:=sum_zag;
   FactOstNezRash_Virab_period.AsFloat:=sum_rasx;
   FactOstNezPrix_period.AsFloat:=sum_prix;
   FactOstNez.FieldByName('PR_Raspred').AsInteger:=0;
   if FactOstNez.FieldByName('PRSubst').AsVariant=null then
    FactOstNez.FieldByName('PRSubst').AsInteger:=0;
   FactOstNez.Post;
   FactOstNez.Next;
  end;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT KART.Ksm_Id,matrop.NMAT,matrop.kei_id kei_id, matrop.XARKT,KART.KART_ID,KART.KEI_ID kein,KART.KOL_RASH_ediz,spprod.nmat nmat_prod,DOCUMENT.tip_op_id,OSTATKI.razdel_id,');
  DM1.IBQuery1.SQL.Add(' EDIZ.NEIS,OSTATKI.KSM_IDPR KODP, (z(KART.KOL_RASH_ediz)/Z(KARTV.KOL_PRIH)) KOEF_Zag,kart.Kol_Prih_Ediz,SPPROD.KOD_PROD,razdel.kraz,region.nam, ');
  DM1.IBQuery1.SQL.Add(' ostatki.Ostatok_begin_Nz,OSTATKI.Ostatok_end_NZ,ostatki.Ostatok_begin_s,OSTATKI.Ostatok_end_s,ostatki.rash_virab_period ');
  DM1.IBQuery1.SQL.Add(' FROM KART');
  DM1.IBQuery1.SQL.Add(' INNER JOIN MATROP ON (KART.KSM_ID = MATROP.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN EDIZ ON (KART.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN RAZDEL ON (KART.razdel_ID = RAZDEL.razdel_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SELECT_OB_VED ('+''''+s_dat1+''''+','+''''+s_dat2+''''+',0) OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)');
  DM1.IBQuery1.SQL.Add(' left JOIN KARTV ON (document.Klient_ID = KARTV.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (DOCUMENT.KLIENT_ID = SPPROD.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' left JOIN region ON (spprod.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(vStruk_Id));
  DM1.IBQuery1.SQL.Add(' AND (DOCUMENT.TIP_OP_ID=33  or DOCUMENT.TIP_OP_ID=30 ) and (kart.kol_rash_ediz<>0 or kart.kol_prih_ediz<>0) and (not ostatki.ksm_idpr is null)');
  DM1.IBQuery1.SQL.Add(' AND DOCUMENT.NDOK containing '+''''+VNDOC+''''+' and DOCUMENT.NDOK not containing '+''''+VNDOCY+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')');
  DM1.IBQuery1.SQL.Add(' and kartv.doc_id in (select document.doc_id from document where Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
  DM1.IBQuery1.SQL.Add(' and document.tip_op_id=36 and DOCUMENT.STRUK_ID='+INTTOSTR(vStruk_Id)+')');
  DM1.IBQuery1.SQL.Add(' order by kart.ksm_id,kart.kart_id ');
  DM1.IBQuery1.Active:=true;
  if SyrieZag.active then SyrieZag.active:=false;
  SyrieZag.ParamByName('strk').AsInteger:=vStruk_id;
  SyrieZag.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
  SyrieZag.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
  SyrieZag.MacroByName('DAT1').AsString:=''''+S_DAT1+'''';
  SyrieZag.MacroByName('DAT2').AsString:=''''+S_DAT2+'''';
  SyrieZag.MacroByName('Doc').AsString:=''''+vndoc+'''';
  SyrieZag.MacroByName('DocY').AsString:=''''+vndocY+'''';
  SyrieZag.MacroByName('sort').AsString:=usl_sort;
  SyrieZag.Open;
  DM1.IBQuery1.First;
  While not DM1.IBQuery1.Eof do
  begin
   sum_zag:=0;
   sum_ost_s:=0;
   sum_ost_nz:=0;
   sum_prix:=0;
   sum_rasx:=0;
   sum_ost_nzn:=0;
   sum_ost_sn:=0;
   st_ksm:=DM1.IBQuery1.FieldByName('ksm_id').AsInteger;
   While (DM1.IBQuery1.FieldByName('ksm_id').AsInteger=st_ksm) and (not DM1.IBQuery1.Eof) do
   begin
    st_kart1:=DM1.IBQuery1.FieldByName('kart_id').AsInteger;
    SyrieZag.First;
    if not SyrieZag.Locate('kart_id',DM1.IBQuery1.FieldByName('kart_id').AsInteger,[]) then
    begin
     SyrieZag.Insert;
     SyrieZagKart_id.AsInteger:=DM1.IBQuery1.FieldByName('kart_id').AsInteger;
     SyrieZagKodp.AsInteger:=DM1.IBQuery1.FieldByName('kodp').AsInteger;
     SyrieZagKsm_id.AsInteger:=DM1.IBQuery1.FieldByName('ksm_id').AsInteger;
     SyrieZagKraz.AsInteger:=DM1.IBQuery1.FieldByName('kraz').AsInteger;
     SyrieZagKei_id.AsInteger:=DM1.IBQuery1.FieldByName('kei_id').AsInteger;
     SyrieZagRazdel_id.AsInteger:=DM1.IBQuery1.FieldByName('Razdel_id').AsInteger;
     SyrieZagNmat.AsString:=DM1.IBQuery1.FieldByName('Nmat').AsString;
     SyrieZagXarkt.AsString:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
     SyrieZagNeis.AsString:=DM1.IBQuery1.FieldByName('Neis').AsString;
     SyrieZagNam.AsString:=DM1.IBQuery1.FieldByName('Nam').AsString;
     SyrieZagNmat_Prod.AsString:=DM1.IBQuery1.FieldByName('Nmat_Prod').AsString;
     SyrieZagKod_Prod.AsString:=DM1.IBQuery1.FieldByName('Kod_Prod').AsString;
     SyrieZag.Post;
    end;
    While (DM1.IBQuery1.FieldByName('kart_id').AsInteger=st_kart1) and (not DM1.IBQuery1.Eof) do
    begin
     case DM1.IBQuery1.FieldByName('Tip_Op_Id').AsInteger of
      33:
      begin
       SyrieZag.Edit;
       SyrieZagKol_Rash_Ediz.AsFloat:=DM1.IBQuery1.FieldByName('Kol_Rash_Ediz').AsFloat;
       SyrieZag.Post;
      end;
      30:
      begin
       SyrieZag.Edit;
       SyrieZagPrix.AsFloat:=DM1.IBQuery1.FieldByName('Kol_Prih_Ediz').AsFloat;
       SyrieZag.Post;
      end;
     end;
     DM1.IBQuery1.Next;
    end;
    sum_ost_nzn:=sum_ost_nzn+SyrieZag.FieldByName('Ostatok_begin_nz').AsFloat*dm1.Koef_per(DM1.IBQuery1.FieldByName('kein').AsInteger,DM1.IBQuery1.FieldByName('kei_id').AsInteger,DM1.IBQuery1.FieldByName('Ksm_id').AsInteger);
    sum_ost_sn:=sum_ost_sn+SyrieZag.FieldByName('Ostatok_begin_S').AsFloat*dm1.Koef_per(DM1.IBQuery1.FieldByName('kein').AsInteger,DM1.IBQuery1.FieldByName('kei_id').AsInteger,DM1.IBQuery1.FieldByName('Ksm_id').AsInteger);
    sum_ost_nz:=sum_ost_nz+SyrieZag.FieldByName('Ostatok_end_nz').AsFloat*dm1.Koef_per(DM1.IBQuery1.FieldByName('kein').AsInteger,DM1.IBQuery1.FieldByName('kei_id').AsInteger,DM1.IBQuery1.FieldByName('Ksm_id').AsInteger);
    sum_ost_s:=sum_ost_s+SyrieZag.FieldByName('Ostatok_end_s').AsFloat*dm1.Koef_per(DM1.IBQuery1.FieldByName('kein').AsInteger,DM1.IBQuery1.FieldByName('kei_id').AsInteger,DM1.IBQuery1.FieldByName('Ksm_id').AsInteger);
    sum_rasx:=sum_rasx+SyrieZagRasvir.AsFloat;
    sum_zag:=sum_zag+SyrieZagKol_Rash_Ediz.AsFloat;
    sum_prix:=sum_prix+SyrieZagPrix.AsFloat;
   end;
   FactOstNez.First;
   if FactOstNez.Locate('ksm_id',st_ksm,[]) then
   begin
    FactOstNez.Edit;
    FactOstNez.FieldByName('PR_raspred').AsInteger:=1;
    FactOstNez.FieldByName('koef').AsFloat:=SyrieZagKoef_Zag.AsFloat;
    FactOstNez.FieldByName('OstFactNz').AsFloat:=sum_ost_nz;
    FactOstNez.FieldByName('OstFacts').AsFloat:=sum_ost_s;
    FactOstNez.FieldByName('ZagFact').AsFloat:=sum_zag;
    FactOstNez.FieldByName('Prix_Period').AsFloat:=sum_prix;
    FactOstNez.FieldByName('Ostatok_begin_s').AsFloat:=sum_ost_sn;
    FactOstNez.FieldByName('Ostatok_begin_nz').AsFloat:=sum_ost_nzn;
    FactOstNez.FieldByName('Rash_virab_period').AsFloat:=sum_rasx;
    if FactOstNezPlnorm.Asfloat<>0 then
     FactOstNezProc.Asfloat:=roundto(100-SyrieZagKoef_Zag.AsFloat/FactOstNezPlnorm.Asfloat*100,-2)
    else FactOstNezProc.Asfloat:=0;
    FactOstNez.Post;
   end;
  end;
//  FactOstNez.Filtered:=true;
 END
 ELSE   MessageDlg('Нет данных!', mtWarning, [mbOK], 0);
 Splash.Free;
 FactOstNez.First;
 FactVipuskZag.First;
 SyrieZag.First;
 FactOstNez.EnableControls;
 FactVipuskZag.EnableControls;
 SyrieZag.EnableControls;
end;

end;

procedure TFPererasZag.Raschet;
var
  sum_virab:double;
  V_KOEF: DOUBLE;
  V_rasx: DOUBLE;
  V_prix: DOUBLE;
  vNdoc1: string;
  ndoc1_p:string; 
begin
if edit1.Text<>'' then
begin

 if (FactVipuskZag.Active=false) or(FactVipuskZag.Eof) then
 begin
  showMessage('Не помечены препараты, на которые распределять сырье!');
  Abort;
 end
 else
 begin
  vNdoc1:='Пз-'+inttostr(s_kodp);
  vNdocY:='-у-';
  iF DM1.Document.Active=true THEN  DM1.Document.Active:=False;
  DM1.Document.MacroByName('USL').AsString:=' WHERE document.NDOk containing '+ ''''+vNdoc1+''''+'and DOCUMENT.NDOK not containing '+''''+VNDOCY+''''+' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')';
  DM1.Document.open;
  FactOstNez.DisableControls;
  FactVipuskZag.DisableControls;
  SyrieZag.DisableControls;
  DM1.Document.First;
  If not DM1.Document.Eof then
  begin
   MessageDlg('Сначала удалите старое распределение!', mtWarning, [mbOK], 0);
   Abort;
  end;
  Splash := ShowSplashWindow(AniBmp1,'Идет расчет. Подождите, пожалуйста...', True, nil);
// Рассчет выпуска по незавершенке
  v_vip_nz:=0;
  FactOstNez.First;
  if FactOstNez.Locate('PrSubst',1,[]) then
  begin
   if edit4.Text='' then  edit4.Text:=floattostr(FactOstNezPlnorm.AsFloat);
   v_vip_nz:=roundto(FactOstNezOstFactNz.AsFloat/strtofloat(edit4.Text),-3);
   edit5.Text:=floattostr(v_vip_nz);
  end;
  IF (sum_vipusk+v_vip_nz)<>0 THEN
  BEGIN
// подсчет загрузки сырья по маршруткам
   IBZagruzka.Active := False;
   IBZagruzka.SQL.Clear;
   IBZagruzka.SQL.Add('SELECT sum(kart.kol_rash_Ediz) KOL_RASH_EDIZ, ostatki.ksm_idpr,kart.razdel_id,');
   IBZagruzka.SQL.Add('kart.ksm_id,kart.kei_id kein,ostatki.onm_nz,ostatki.kei_id');
   IBZagruzka.SQL.Add(' FROM kart');
   IBZagruzka.SQL.Add(' INNER JOIN document ON (kart.doc_ID = document.doc_ID)');
   IBZagruzka.SQL.Add(' INNER JOIN ostatki ON (kart.kart_ID = ostatki.kart_ID)');
   IBZagruzka.SQL.Add(' WHERE document.STRUK_ID='+INTTOSTR(vStruk_Id));
   IBZagruzka.SQL.Add(' AND document.Tip_op_id=33 ');
   IBZagruzka.SQL.Add(' AND kart.Kol_Rash_Ediz<>0');
   IBZagruzka.SQL.Add(' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
   IBZagruzka.SQL.Add(' GROUP BY ostatki.ksm_idpr,kart.razdel_id,kart.ksm_id,kart.kei_id ,ostatki.onm_nz,ostatki.kei_id ');
   IBZagruzka.Active:=true;
// расчет коэффициента и общей загрузки (Z=Zмаршр.+Остаток в н/з на н.м.) по каждому сырью
   FactOstNez.First;
   While not FactOstNez.Eof do
   begin
    if FactOstNezPr_Raspred.AsInteger=1 then
    begin
     V_KOEF:=ROUNDTO((FactOstNezOstatok_begin_Nz.AsFloat+FactOstNezZagFact.AsFloat)/(SUM_VIPUSK+v_vip_nz),-6);
     FactOstNez.edit;
     FactOstNezKoef.Asfloat:=v_koef;
     if v_koef<>0 then
      FactOstNezProc.Asfloat:=roundto(100-FactOstNezPlnorm.AsFloat/v_koef*100,-2)
     else
      FactOstNezProc.Asfloat:=0;
     FactOstNez.Post;
    end;
    FactOstNez.next;
   end;
// пересчет загрузки, расхода и прихода на препараты
   ndoc1_p:='Пз-'+inttostr(s_kodp)+'-р-';
   if SyrieZag.Active=true then SyrieZag.Active:=false;
   SyrieZag.ParamByName('strk').AsInteger:=vStruk_id;
   SyrieZag.ParamByName('DAT1').AsString:=S_DAT1;
   SyrieZag.ParamByName('DAT2').AsString:=S_DAT2;
   SyrieZag.MacroByName('Doc').AsString:=''''+ndoc1_p+'''';
   SyrieZag.MacroByName('DocY').AsString:=''''+vndocY+'''';
   SyrieZag.MacroByName('sort').AsString:=usl_sort;
   SyrieZag.Open;
   FactOstNez.First;
   While not FactOstNez.Eof do
   begin
    if FactOstNezPr_Raspred.AsInteger=1 then
    begin
     sum_zag:=0;
     sum_virab:=0;
     FactVipuskZag.First;
     While not FactVipuskZag.Eof do
     begin
      if FSprFormul.CEH_NormZ.Active=true then  FSprFormul.CEH_NormZ.Close;
      FSprFormul.CEH_NormZ.MacroByName('SORT').AsString:='';
      FSprFormul.CEH_NormZ.MacroByName('USL').AsString:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(FactVipuskZagKsm_id.AsInteger)+' and CEH_NORMZ.KSM_ID_MAt='+INTTOSTR(FactOstNez.FieldByName('KSM_ID').ASINTEGER);
      FSprFormul.CEH_NormZ.Open;
      if not FSprFormul.CEH_NORMZ.eof then
       if not FSprFormul.CEH_NORMZDecznak.AsVariant=null  then
        tochn:=0-FSprFormul.CEH_NORMZDecznak.asinteger
       else tochn:=-3
      else tochn:=-3;
      vNdoc_z:='Пз-'+inttostr(s_kodp)+'-з-'+inttostr(FactVipuskZagKsm_id.Asinteger);
      vNdoc_p:='Пз-'+inttostr(s_kodp)+'-п-'+inttostr(FactVipuskZagKsm_id.Asinteger);
      vNdoc_r:='Пз-'+inttostr(s_kodp)+'-р-'+inttostr(FactVipuskZagKsm_id.Asinteger);
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT OSTATKI.KART_ID,OSTATKI.KSM_ID,OSTATKI.OSTATOK_END_S,OSTATKI.OSTATOK_END_NZ,OSTATKI.OSTATOK_BEGIN_S,OSTATKI.OSTATOK_BEGIN_NZ,ostatki.prix_period ');
      DM1.IBQuery1.SQL.Add(' FROM SELECT_OB_VED ('+''''+s_dat1+''''+','+''''+s_dat2+''''+','+inttostr(FactVipuskZagKsm_id.Asinteger)+') OSTATKI ');
      DM1.IBQuery1.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(FactOstNez.FieldByName('KSM_ID').ASINTEGER));
      DM1.IBQuery1.SQL.Add(' and OSTATKI.KSM_IDPR='+inttostr(FactVipuskZagKsm_id.Asinteger)+' and ostatki.razdel_id='+inttostr(FactOstNez.FieldByName('Razdel_ID').ASINTEGER));
      DM1.IBQuery1.Active := True;
      DM1.IBQuery1.First;
      V_RASX:= ROUNDTO(FactOstNezKoef.Asfloat*FactVipuskZag.FieldByName('KOL_PRIH').AsFloat,tochn);
      if FactVipuskZagKsm_id.AsInteger=s_kodp then
      begin
       FactVipuskZag.Edit;
       FactVipuskZagVipNz.AsFloat:=v_vip_nz;
       FactVipuskZag.Post;
       V_ZAG:= ROUNDTO(V_RASX-DM1.IBQuery1.FieldByName('OSTATOK_BEGIN_NZ').ASFLOAT+FactOstNezOstFactNz.AsFloat,tochn)
      end
      ELSE V_ZAG:= ROUNDTO(V_RASX-DM1.IBQuery1.FieldByName('OSTATOK_BEGIN_NZ').ASFLOAT,tochn);
      V_PRIX:=roundto(V_ZAG-DM1.IBQuery1.FieldByName('OSTATOK_BEGIN_S').ASFLOAT,tochn);
      sum_zag:=sum_zag+v_zag;
      sum_virab:=sum_Virab+v_rasx;
      SyrieZag.INSERT;
      SyrieZagNEIS.ASSTRING:= FactOstNez.FieldByName('NEIS').ASstring;
      SyrieZagKod_prod.ASSTRING:= FactVipuskZag.FieldByName('Kod_Prod').ASstring;
      SyrieZagNam.ASSTRING:= FactVipuskZag.FieldByName('Region').ASstring;
      SyrieZagNmat_prod.ASSTRING:=FactVipuskZagNmat.AsString;
      SyrieZagKODP.ASINTEGER:= FactVipuskZag.FieldByName('Ksm_id').ASINTEGER;
      SyrieZagKRAZ.ASINTEGER:= FactOstNez.FieldByName('KRAZ').ASINTEGER;
      SyrieZagKSM_ID.ASINTEGER:= FactOstNez.FieldByName('KSM_ID').ASINTEGER;
      SyrieZagKart_ID.ASINTEGER:= DM1.IBQuery1.FieldByName('Kart_ID').ASINTEGER;
      SyrieZagRazdel_ID.ASINTEGER:= FactOstNez.FieldByName('Razdel_ID').ASINTEGER;
      SyrieZagKEI_ID.ASINTEGER:= FactOstNez.FieldByName('KeI_ID').ASINTEGER;
      SyrieZagNMAT.ASSTRING:= FactOstNez.FieldByName('NMAT').ASSTRING;
      SyrieZagKOEF_ZAG.ASFLOAT:=FactOstNezKoef.Asfloat;
      SyrieZagOstatok_begin_s.ASFLOAT:=DM1.IBQuery1.FieldByName('Ostatok_begin_s').Asfloat;
      SyrieZagOstatok_begin_nz.ASFLOAT:=DM1.IBQuery1.FieldByName('Ostatok_begin_nz').Asfloat;
      SyrieZagKol_rash_Ediz.ASFLOAT:=V_ZAG;
      SyrieZagPrix.ASFLOAT:=V_PRIX;
      SyrieZagRasVir.ASFLOAT:=V_RASX;
      SyrieZag.Post;
      FactVipuskZag.NEXT;
     END;
     if sum_zag-FactOstNez.FieldByName('ZagFact').asFloat<>0 then
     begin
      SyrieZag.first;
      if SyrieZag.Locate('ksm_id;razdel_id;kodp',VarArrayOf([FactOstNez.FieldByName('ksm_ID').AsInteger,
      FactOstNez.FieldByName('RAZDEL_ID').AsInteger,s_kodp1]),[]) then
      begin
       SyrieZag.edit;
       SyrieZagKol_rash_Ediz.ASFLOAT:=SyrieZagKol_rash_Ediz.ASFLOAT-sum_zag+FactOstNez.FieldByName('ZagFact').asFloat;
       SyrieZagPrix.ASFLOAT:=SyrieZagPrix.ASFLOAT-sum_zag+FactOstNez.FieldByName('ZagFact').asFloat;
       SyrieZagRasVir.ASFLOAT:=SyrieZagRasVir.ASFLOAT-sum_zag+FactOstNez.FieldByName('ZagFact').asFloat;
       SyrieZag.post;
      end;
     end;
     FactOstNez.edit;
     FactOstNezRash_Virab_Period.Asfloat:=sum_virab-sum_zag+FactOstNez.FieldByName('ZagFact').asFloat;
     FactOstNez.Post;
    end;
    FactOstNez.NEXT;
   END;
  END
  else  MessageDlg('Перераспределение загрузки невозможно т.к. нет данных о выработке препаратов!', mtWarning, [mbOK], 0);
  Splash.Free;
  FactOstNez.EnableControls;
  FactVipuskZag.EnableControls;
  SyrieZag.EnableControls;
 end;
end
ELSE MessageDlg('Введите препарат!', mtWarning, [mbOK], 0);
FactOstNez.First;
FactVipuskZag.First;
SyrieZag.First;
end;

procedure TFPererasZag.FactOstNezFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept:=DataSet['pr_Raspred']=1;
end;

procedure TFPererasZag.FactVipuskZag_sAfterScroll(DataSet: TDataSet);
begin
{ SyrieZag.Filtered:=false;
 SyrieZag.Filter:='kodp='+inttostr(FactVipuskZagKsm_id.AsInteger);
 SyrieZag.Filtered:=true;}
 end;

procedure TFPererasZag.DBGridEh3SortMarkingChanged(Sender: TObject);
begin
{ Usl_Sort := '';
 for i := 0 to DBGridEh3.SortMarkedColumns.Count-1 do
 BEGIN
  if DBGridEh3.SortMarkedColumns[i].Title.SortMarker = smUpEh then
  begin
   if DBGridEh3.SortMarkedColumns[i].FieldName='KSM_ID' then Usl_Sort := USL_Sort+ 'Kart."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
   if DBGridEh3.SortMarkedColumns[i].FieldName='Kraz' then Usl_Sort := USL_Sort+ 'Razdel."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
   if DBGridEh3.SortMarkedColumns[i].FieldName= 'Kod_prod' then Usl_Sort := USL_Sort+ 'Spprod."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
   if DBGridEh3.SortMarkedColumns[i].FieldName='Nmat'then Usl_Sort := USL_Sort+ 'Matrop."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
  end
  else
  begin
   if DBGridEh3.SortMarkedColumns[i].FieldName='KSM_ID'then Usl_Sort := USL_Sort+ 'Kart."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', ';
   if DBGridEh3.SortMarkedColumns[i].FieldName= 'Kraz' then Usl_Sort := USL_Sort+ 'Razdel."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', ';
   if DBGridEh3.SortMarkedColumns[i].FieldName= 'Kod_prod' then Usl_Sort := USL_Sort+ 'Spprod."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', ';
   if DBGridEh3.SortMarkedColumns[i].FieldName= 'Nmat' then Usl_Sort := USL_Sort+ 'Matrop."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', '
  end;
 END;
 if Usl_Sort <> '' then
 begin
  Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
  vNdocY:='-у-';
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT KART.Ksm_Id,matrop.NMAT, matrop.XARKT,KART.KART_ID,KART.KEI_ID,KART.KOL_RASH_ediz,spprod.nmat nmat_prod,');
  DM1.IBQuery1.SQL.Add('EDIZ.NEIS,OSTATKI.KSM_IDPR KODP, (z(KART.KOL_RASH)/Z(KARTV.KOL_PRIH)) KOEF_Zag,kart.Kol_Prih_Ediz,SPPROD.KOD_PROD,razdel.kraz,region.nam');
  DM1.IBQuery1.SQL.Add(' FROM KART');
  DM1.IBQuery1.SQL.Add(' INNER JOIN MATROP ON (KART.KSM_ID = MATROP.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN EDIZ ON (KART.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN RAZDEL ON (KART.razdel_ID = RAZDEL.razdel_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)');
  DM1.IBQuery1.SQL.Add(' left JOIN KARTV ON (document.Klient_ID = KARTV.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (DOCUMENT.KLIENT_ID = SPPROD.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' left JOIN region ON (spprod.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(vStruk_Id));
  DM1.IBQuery1.SQL.Add(' AND (DOCUMENT.TIP_OP_ID=33  or DOCUMENT.TIP_OP_ID=30) and kart.kol_rash_ediz<>0 ');
  DM1.IBQuery1.SQL.Add(' AND DOCUMENT.NDOK containing '+''''+VNDOC+''''+' and DOCUMENT.NDOK not containing '+''''+VNDOCY+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')');
  DM1.IBQuery1.SQL.Add(' and kartv.doc_id in (select document.doc_id from document where Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
  DM1.IBQuery1.SQL.Add(' and document.tip_op_id=36 and DOCUMENT.STRUK_ID='+INTTOSTR(vStruk_Id)+')');
  DM1.IBQuery1.SQL.Add(' order by kart.kart_id ');
  DM1.IBQuery1.Active:=true;
  if SyrieZag.active then SyrieZag.active:=false;
  SyrieZag.ParamByName('strk').AsInteger:=vStruk_id;
  SyrieZag.ParamByName('DAT1').AsString:=S_DAT1;
  SyrieZag.ParamByName('DAT2').AsString:=S_DAT2;
  SyrieZag.MacroByName('Doc').AsString:=vndoc;
  SyrieZag.MacroByName('sort').AsString:=usl_sort;
  SyrieZag.Open;
  DM1.IBQuery1.First;
  While not DM1.IBQuery1.Eof do
  begin
   s_kart:=DM1.IBQuery1.FieldByName('kart_id').AsInteger;
   While DM1.IBQuery1.FieldByName('kart_id').AsInteger=s_kart do
   begin
    case DM1.IBQuery1.FieldByName('Tip_Op_Id').AsInteger of
     33:
     begin
      SyrieZag.First;
      if SyrieZag.Locate('kart_id',DM1.IBQuery1.FieldByName('kart_id').AsInteger,[]) then
       SyrieZag.Edit
      else
      begin
       SyrieZag.Insert;
       SyrieZagKart_id.AsInteger:=DM1.IBQuery1.FieldByName('kart_id').AsInteger;
       SyrieZagKodp.AsInteger:=DM1.IBQuery1.FieldByName('kodp').AsInteger;
       SyrieZagKsm_id.AsInteger:=DM1.IBQuery1.FieldByName('ksm_id').AsInteger;
       SyrieZagKraz.AsInteger:=DM1.IBQuery1.FieldByName('kraz').AsInteger;
       SyrieZagKei_id.AsInteger:=DM1.IBQuery1.FieldByName('kei_id').AsInteger;
       SyrieZagRazdel_id.AsInteger:=DM1.IBQuery1.FieldByName('Razdel_id').AsInteger;
       SyrieZagNmat.AsString:=DM1.IBQuery1.FieldByName('Nmat').AsString;
       SyrieZagXarkt.AsString:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
       SyrieZagNeis.AsString:=DM1.IBQuery1.FieldByName('Neis').AsString;
       SyrieZagNam.AsString:=DM1.IBQuery1.FieldByName('Nam').AsString;
       SyrieZagNmat_Prod.AsString:=DM1.IBQuery1.FieldByName('Nmat_Prod').AsString;
       SyrieZagKod_Prod.AsString:=DM1.IBQuery1.FieldByName('Kod_Prod').AsString;
      end;
      SyrieZagKol_Rash_Ediz.AsFloat:=DM1.IBQuery1.FieldByName('Kol_Rash_Ediz').AsFloat;
      SyrieZag.Post;
     end;
     30:
     begin
      if SyrieZag.Locate('kart_id',DM1.IBQuery1.FieldByName('kart_id').AsInteger,[]) then
       SyrieZag.Edit
      else
      begin
       SyrieZag.Insert;
       SyrieZagKart_id.AsInteger:=DM1.IBQuery1.FieldByName('kart_id').AsInteger;
       SyrieZagKodp.AsInteger:=DM1.IBQuery1.FieldByName('kodp').AsInteger;
       SyrieZagKsm_id.AsInteger:=DM1.IBQuery1.FieldByName('ksm_id').AsInteger;
       SyrieZagKraz.AsInteger:=DM1.IBQuery1.FieldByName('kraz').AsInteger;
       SyrieZagKei_id.AsInteger:=DM1.IBQuery1.FieldByName('kei_id').AsInteger;
       SyrieZagRazdel_id.AsInteger:=DM1.IBQuery1.FieldByName('Razdel_id').AsInteger;
       SyrieZagNmat.AsString:=DM1.IBQuery1.FieldByName('Nmat').AsString;
       SyrieZagXarkt.AsString:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
       SyrieZagNeis.AsString:=DM1.IBQuery1.FieldByName('Neis').AsString;
       SyrieZagNam.AsString:=DM1.IBQuery1.FieldByName('Nam').AsString;
       SyrieZagNmat_Prod.AsString:=DM1.IBQuery1.FieldByName('Nmat_Prod').AsString;
       SyrieZagKod_Prod.AsString:=DM1.IBQuery1.FieldByName('Kod_Prod').AsString;
      end;
      SyrieZagPrix.AsFloat:=DM1.IBQuery1.FieldByName('Kol_Prih_Ediz').AsFloat;
      SyrieZag.Post;
     end;
    end;
    DM1.IBQuery1.Next;
   end;
  end;
 end;}
end;

procedure TFPererasZag.Edit1Change(Sender: TObject);
begin
if edit1.text<>''   then
begin
 if FactVipuskZag.active then FactVipuskZag.active:=false;
 if FactOstNez.active then FactOstNez.active:=false;
 if SyrieZag.active then SyrieZag.active:=false;
 dm1.IBT_Read.Active:=false;
 dm1.IBT_WRITE.Active:=false;
 dm1.IBT_Read.StartTransaction;
 dm1.IBT_WRITE.StartTransaction;
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
   Label6.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label4.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
   Label9.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  end
  else
  begin
   Label6.Caption:='';
   Label4.Caption:='';
   Label9.Caption:='';
  end;
 Label6.Refresh;
 Label4.Refresh;
 Label9.Refresh;
end;
end;

procedure TFPererasZag.Edit2Change(Sender: TObject);
begin
if edit2.text<>''   then begin

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
   Label7.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label10.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
   Label11.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  end
  else
  begin
   Label7.Caption:='';
   Label10.Caption:='';
   Label11.Caption:='';
  end;
 Label7.Refresh;
 Label10.Refresh;
 Label11.Refresh;
 end;
end;

procedure TFPererasZag.Edit1Click(Sender: TObject);
begin
{if not SyrieZag.Eof then
begin
 IF DM1.Kart.Active THEN
BEGIN
 SyrieZag.First;
 While not SyrieZag.Eof do
 begin
  vNdoc_z:='Пз-'+inttostr(s_kodp)+'-з-'+inttostr(SyrieZagKODP.Asinteger);
  vNdoc_p:='Пз-'+inttostr(s_kodp)+'-п-'+inttostr(SyrieZagKODP.Asinteger);
  vNdoc_r:='Пз-'+inttostr(s_kodp)+'-р-'+inttostr(SyrieZagKODP.Asinteger);
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT OSTATKI.KART_ID ');
  DM1.IBQuery1.SQL.Add(' FROM OSTATKI ');
  DM1.IBQuery1.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(SyrieZag.FieldByName('KSM_ID').ASINTEGER));
  DM1.IBQuery1.SQL.Add(' and OSTATKI.KSM_IDPR='+inttostr(SyrieZagKODP.Asinteger)+' and ostatki.razdel_id='+inttostr(SyrieZag.FieldByName('Razdel_ID').ASINTEGER));
  DM1.IBQuery1.Active := True;
  IF SyrieZagPRIX.AsFloat<>0 THEN
  BEGIN
   if dm1.Ostatki.Active then dm1.Ostatki.Active:=false;
   DM1.Ostatki.ParamByName('struk_ID').AsInteger:=vstruk_id;
   DM1.Ostatki.MacroByName('usl').AsString:=' (ost.ksm_idpr is null or OST.KSM_IDPR=0) AND OST.KSM_ID='+INTTOSTR(SyrieZag.FieldByName('Ksm_Id').AsInteger);
   dm1.Ostatki.Open;
   st_kart:=dm1.OstatkiKart_id.AsInteger;
   DM1.Document.first;
   If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagKodp.asInteger,vNdoc_p]),[]) then
   begin
    vTip_Op_Id:=30;
    vTip_Doc_Id:=37;
    vKlient_Id:=SyrieZagKodp.Asinteger;
    vDate_op:=strtodate(s_dat1);
    vDate_dok:=strtodate(s_dat1);
    dm1.Document.Insert;
    dm1.DocumentNdok.AsString:=vNdoc_p;
    dm1.Document.Post;
    vDocument_id_pr:=vDocument_id;
   end  ELSE VDOCUMENT_ID_pr:=DM1.DocumentDoc_id.AsInteger;
   DM1.Kart.Insert;
   DM1.KartKsm_id.AsInteger:=SyrieZag.FieldByName('KSM_ID').ASINTEGER;
   DM1.KartRazdel_id.AsInteger:=SyrieZag.FieldByName('Razdel_ID').ASINTEGER;
   DM1.KartKol_Rash_Ediz.AsFloat:=SyrieZagPRIX.AsFloat;
   DM1.KartKei_id.AsInteger:=SyrieZag.FieldByName('Kei_Id').AsInteger;
   dm1.Kart.Post;
  END;
  IF SyrieZagKol_Rash_Ediz.AsFloat<>0 THEN
  BEGIN
   st_kart:=DM1.IBQuery1.FieldByName('Kart_Id').AsInteger;
   DM1.Document.first;
   If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagKodp.Asinteger,vNdoc_z]),[]) then
   begin
    vNdoc:=vNdoc_z;
    vTip_Op_Id:=33;
    vTip_Doc_Id:=37;
    vKlient_Id:=SyrieZagKodp.Asinteger;
    vDate_op:=strtodate(s_dat1);
    vDate_dok:=strtodate(s_dat1);
    dm1.Document.Insert;
    dm1.Document.Post;
   end ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
   vDocument_id:=vDocument_id_syr;
   DM1.Kart.Insert;
   DM1.KartKsm_id.AsInteger:=SyrieZag.FieldByName('KSM_ID').ASINTEGER;
   DM1.KartRazdel_id.AsInteger:=SyrieZag.FieldByName('Razdel_ID').ASINTEGER;
   DM1.KartKol_Rash_Ediz.AsFloat:=SyrieZagKol_Rash_Ediz.AsFloat;
   DM1.KartKei_id.AsInteger:=SyrieZag.FieldByName('Kei_Id').AsInteger;
   dm1.Kart.Post;
  END;
  IF SyrieZagRasVir.AsFloat<>0 THEN
  BEGIN
   st_kart:=DM1.IBQuery1.FieldByName('Kart_Id').AsInteger;
   DM1.Document.first;
   If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagKodp.Asinteger,vNdoc_r]),[]) then
   begin
    vNdoc:=vNdoc_r;
    vTip_Op_Id:=35;
    vTip_Doc_Id:=37;
    vKlient_Id:=SyrieZagKodp.Asinteger;
    vDate_op:=strtodate(s_dat1);
    vDate_dok:=strtodate(s_dat1);
    dm1.Document.Insert;
    dm1.Document.Post;
    vDocument_id_syr:=vDocument_id;
   end
   ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
   vDocument_id:=vDocument_id_syr;
   DM1.Kart.Insert;
   DM1.KartKsm_id.AsInteger:=SyrieZag.FieldByName('KSM_ID').ASINTEGER;
   DM1.KartRazdel_id.AsInteger:=SyrieZag.FieldByName('Razdel_ID').ASINTEGER;
   DM1.KartKol_Rash_Ediz.AsFloat:=SyrieZagRasVir.AsFloat;
   DM1.KartKei_id.AsInteger:=SyrieZag.FieldByName('Kei_Id').AsInteger;
   dm1.Kart.Post;
  END;
  SyrieZag.NEXT;
 END;
 if DM1.Document.Modified then
     DM1.Document.Post;
  if DM1.Kart.Modified then
     DM1.Kart.Post;
  if (DM1.Document.UpdatesPending) or (DM1.Kart.UpdatesPending) then
  begin
   if MessageDlg('Записать изменения?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
     dm1.ApplyUpdatesDoc
    else
      dm1.CancelUpdatesDoc;
  end;
END;
end;}
edit1.text:='';
SyrieZag.close;
FactOstNez.close;
FactVipuskZag.close;
end;

procedure TFPererasZag.Edit2Click(Sender: TObject);
begin
edit2.text:='';
end;

procedure TFPererasZag.Edit1KeyDown(Sender: TObject; var Key: Word;
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
  s_kodps:=s_kodp;
  label6.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  EDIT2.OnChange:=nil;
  edit2.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT2.OnChange:=Edit2Change;
  s_kodp1:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  label7.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  Label10.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  Label11.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  EDIT3.OnChange:=nil;
  edit3.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT3.OnChange:=Edit3Change;
  s_kodp_nz:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  label18.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  Label19.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  Label20.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  s_kodp:=s_kodps;
  VNDOCY:='-у-';
  vNdoc:='Пз-'+inttostr(s_kodp);
  v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.ndok starting with '+''''+vNdoc+''''+'and DOCUMENT.NDOK not containing '+''''+VNDOCY+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')',dm1.belmed,dm1.ibt_read);
  If v_dok_Kart<>Null then  ProsmZagRaspred;
 end;
end;
end;

procedure TFPererasZag.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
  StartWait;
  if (edit2.text<>'') and (not dm1.IBQuery1.Eof)  then
  begin
    EDIT2.OnChange:=nil;
    edit2.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
    EDIT2.OnChange:=Edit2Change;
    s_kodp1:=DM1.IBQuery1.FieldByName('KSM_ID').value;
    label7.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  end;
  StopWait;
 end;
end;

procedure TFPererasZag.Edit3Change(Sender: TObject);
begin
if edit3.text<>''   then begin

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
   Label18.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label19.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
   Label20.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  end
  else
  begin
   Label18.Caption:='';
   Label19.Caption:='';
   Label20.Caption:='';
  end;
 Label18.Refresh;
 Label19.Refresh;
 Label20.Refresh;
 end;
end;

procedure TFPererasZag.Edit3Click(Sender: TObject);
begin
edit3.text:='';
end;

procedure TFPererasZag.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
  StartWait;
  if (edit3.text<>'') and (not dm1.IBQuery1.Eof)  then
  begin
    EDIT3.OnChange:=nil;
    edit3.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
    EDIT3.OnChange:=Edit2Change;
    s_kodp_nz:=DM1.IBQuery1.FieldByName('KSM_ID').value;
    label18.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  end;
  StopWait;
 end;
end;

procedure TFPererasZag.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 BEGIN
  if edit4.text<>'' then
  begin
   if FactOstNez.LocateNext('prsubst',1,[]) then
   begin
     v_vip_nz:=roundto(FactOstNezOstFactNz.AsFloat/strtofloat(edit4.Text),-3);
     edit5.Text:=floattostr(v_vip_nz);
   end;
  end;
 END;
end;

procedure TFPererasZag.SpeedButton5Click(Sender: TObject);
begin
if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
 FindSpprod.DataBaseName:=dm1.BELMED;
 FindSpprod.ReadOnly:=true;
 FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
 FindSpprod.ShowModal;
 if FindSpprod.ModalResult > 50 then
 begin
  if FactVipuskZag.active then FactVipuskZag.active:=false;
  if FactOstNez.active then FactOstNez.active:=false;
  if SyrieZag.active then SyrieZag.active:=false;
  dm1.IBT_Read.Active:=false;
  dm1.IBT_WRITE.Active:=false;
  dm1.IBT_Read.StartTransaction;
  dm1.IBT_WRITE.StartTransaction;
  StartWait;
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
  EDIT1.OnChange:=nil;
  edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT1.OnChange:=Edit1Change;
  s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  s_kodps:=s_kodp;
  label6.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  Label4.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  Label9.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  EDIT2.OnChange:=nil;
  edit2.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT2.OnChange:=Edit2Change;
  s_kodp1:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  label7.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  Label10.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  Label11.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  EDIT3.OnChange:=nil;
  edit3.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT3.OnChange:=Edit3Change;
  s_kodp_nz:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  label18.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  Label19.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  Label20.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  FactOstNez.Close;
  FactOstNez.ParamByName('KODP').AsInteger:=s_kodp;
  FactOstNez.MacroByName('DAT1').AsString:=''''+S_DAT1+'''';
  FactOstNez.MacroByName('DAT2').AsString:=''''+S_DAT2+'''';
  FactOstNez.ParamByName('MES').AsInteger:=MES;
  FactOstNez.ParamByName('GOD').AsInteger:=GOD;
  FactOstNez.Open;
  FactOstNez.Edit;
  StopWait;
 end;

end;

procedure TFPererasZag.SpeedButton1Click(Sender: TObject);
begin
if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
 FindSpprod.DataBaseName:=dm1.BELMED;
 FindSpprod.ReadOnly:=true;
 FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
 FindSpprod.ShowModal;
 if FindSpprod.ModalResult > 50 then
 begin
  StartWait;
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
  EDIT2.OnChange:=nil;
  edit2.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT2.OnChange:=Edit2Change;
  s_kodp1:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  label7.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  Label10.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  Label11.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  StopWait;
 end;
end;

procedure TFPererasZag.SpeedButton3Click(Sender: TObject);
begin
if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
 FindSpprod.DataBaseName:=dm1.BELMED;
 FindSpprod.ReadOnly:=true;
 FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
 FindSpprod.ShowModal;
 if FindSpprod.ModalResult > 50 then
 begin
  StartWait;
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
  EDIT3.OnChange:=nil;
  edit3.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT3.OnChange:=Edit2Change;
  s_kodp_nz:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  label18.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  Label19.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  Label20.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  StopWait;
 end;
end;

procedure TFPererasZag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if dm1.Kart.Active=true then dm1.Kart.Close;
 if dm1.Document.Active=true then dm1.Document.Close;
 if dm1.Ostatki.Active=true then dm1.Ostatki.Close;
end;

procedure TFPererasZag.FormShow(Sender: TObject);
begin
SpinEdit3.Value:=mes;
SpinEdit4.Value:=god;
label4.Caption:='';
label9.Caption:='';
label10.Caption:='';
label11.Caption:='';
label6.Caption:='';
label7.Caption:='';
label18.Caption:='';
label19.Caption:='';
label20.Caption:='';
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
S_KODP:=0;
S_KODP1:=0;
S_KODP_NZ:=0;
if FSprFormul=nil then FSprFormul:=TfSprFormul.Create(Application);
//FactVipuskZag.EmptyTable;
//SyrieZag.EmptyTable;
end;

procedure TFPererasZag.frReport2GetValue(const ParName: string;
  var ParValue: Variant);
begin
if ParName='god' then ParValue:=inttostr(god);
if ParName='mes' then ParValue:=inttostr(mes);
if ParName='ceh_prep' then ParValue:=s_namcex;
if ParName='kod_prep' then ParValue:=edit1.Text;
if ParName='Nmat_prep' then ParValue:=label6.Caption;
if ParName='Xarkt_prep' then ParValue:=label4.Caption;
if ParName='region_prep' then ParValue:=label9.Caption;
end;

procedure TFPererasZag.SpinEdit3Change(Sender: TObject);
begin
 mes:=SpinEdit3.Value;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 vNdoc1:='Пз-'+inttostr(s_kodp);
  v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.ndok='+''''+vNdoc1+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')',dm1.belmed,dm1.ibt_read);
  If v_dok_Kart<>Null then  ProsmZagRaspred;

end;

procedure TFPererasZag.SpinEdit4Change(Sender: TObject);
begin
 god:=SpinEdit4.Value;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 vNdoc1:='Пз-'+inttostr(s_kodp);
  v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.ndok='+''''+vNdoc1+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')',dm1.belmed,dm1.ibt_read);
  If v_dok_Kart<>Null then  ProsmZagRaspred;

end;

procedure TFPererasZag.ToolButton1Click(Sender: TObject);
 begin
 if edit1.Text<>'' then
 begin
  vNdoc1:='Пз-'+inttostr(s_kodp);
  vNdocY:='-у-';
  usl_sort:=' kod_prod';
  if FactVipuskZag.active then FactVipuskZag.active:=false;
  FactVipuskZag.ParamByName('strk').AsInteger:=vStruk_id;
  FactVipuskZag.ParamByName('DAT1').AsString:=S_DAT1;
  FactVipuskZag.ParamByName('DAT2').AsString:=S_DAT2;
  FactVipuskZag.MacroByName('Doc').AsString:=''''+vndoc1+'''';
  FactVipuskZag.MacroByName('DocY').AsString:=''''+vndocY+'''';
  FactVipuskZag.MacroByName('sort').AsString:=usl_sort;
  FactVipuskZag.Active := True;
  if FactVipuskZag.Eof then
  begin
   FactVipuskZag.Open;
   if FvibPrep=nil then FVibPrep:=tFVibPrep.Create(Application);
   s_h:=FVibPrep.Panel4.Height;
   FVibPrep.RadioGroup4.Visible:=false;
   FVibPrep.Label4.Visible:=false;
   FVibPrep.SpinEdit3.Visible:=false;
   FVibPrep.SpinEdit4.Visible:=false;
   FVibPrep.Panel4.Align:=alClient;
   FVibPrep.Panel1.Visible:=false;
   FVibPrep.Panel3.Visible:=false;
   FVibPrep.ShowModal;
   FVibPrep.RadioGroup4.Visible:=true;
   FVibPrep.Label4.Visible:=true;
   FVibPrep.SpinEdit3.Visible:=true;
   FVibPrep.SpinEdit4.Visible:=true;
   FVibPrep.Panel4.Align:=alTop;
   FVibPrep.Panel4.Height:=s_h;
   FVibPrep.Panel1.Visible:=true;
   FVibPrep.Panel3.Visible:=true;
   if FVibPrep.ModalResult=mrOk then
   begin
    Splash := ShowSplashWindow(AniBmp1,'Загрузка данных. Подождите, пожалуйста...', True, nil);
    FactOstNez.Close;
    FactOstNez.ParamByName('KODP').AsInteger:=s_kodp;
    FactOstNez.MacroByName('DAT1').AsString:=''''+S_DAT1+'''';
    FactOstNez.MacroByName('DAT2').AsString:=''''+S_DAT2+'''';
    FactOstNez.ParamByName('MES').AsInteger:=MES;
    FactOstNez.ParamByName('GOD').AsInteger:=GOD;
    FactOstNez.Open;
// подсчет суммарного фактического выпуска всех выбранных препаратов (Vф)
    sum_vipusk:=0;
    FactOstNez.DisableControls;
    FactVipuskZag.DisableControls;
    FVibPrep.FactVipusk.First;
    if not FVibPrep.FactVipusk.Eof then
    begin
     while not FVibPrep.FactVipusk.Eof do
     begin
      if FVibPrep.FactVipuskVib.AsBoolean then
      begin
       FactVipuskZag.Insert;
       FactVipuskZagkod_prod.AsString:=FVibPrep.FactVipuskKod_prod.AsString;
       FactVipuskZagNmat.AsString:=FVibPrep.FactVipuskNmat.AsString;
       FactVipuskZagRegion.AsString:=FVibPrep.FactVipuskNam_reg.AsString;
       FactVipuskZagXarkt.AsString:=FVibPrep.FactVipuskXarkt.AsString;
       FactVipuskZagkol_prih.AsFloat:=FVibPrep.FactVipuskKol_prih.AsFloat;
       FactVipuskZagksm_id.AsInteger:=FVibPrep.FactVipuskKsm_id.Asinteger;
       FactVipuskZag.Post;
       sum_vipusk:=sum_vipusk+FVibPrep.FactVipuskKol_prih.AsFloat;
      end;
      FVibPrep.FactVipusk.Next;
     end;
// подсчет загрузки сырья по маршруткам, а также текущих остатков в сырье и в н/з

     FactOstNez.First;
     While not FactOstNez.Eof do
     begin
      sum_zag:=0;
      sum_ost_s:=0;
      sum_ost_nz:=0;
      sum_prix:=0;
      sum_rasx:=0;
      sum_ost_nzn:=0;
      sum_ost_sn:=0;
      FactVipuskZag.First;
      While not FactVipuskZag.Eof do
      begin
       IBZagruzka.Active := False;
       IBZagruzka.SQL.Clear;
       IBZagruzka.SQL.Add('SELECT distinct ostatki.Zag_period,');
       IBZagruzka.SQL.Add('ostatki.Ostatok_begin_nz,ostatki.Ostatok_begin_S,');
       IBZagruzka.SQL.Add('ostatki.Ostatok_end_nz,ostatki.Ostatok_end_S,');
       IBZagruzka.SQL.Add('(ostatki.zag_period+ostatki.peredano_prih_nz) as zag_period,(ostatki.prix_period+ostatki.peredano_prih_nz) as prix_period,ostatki.Rash_Virab_period,');
       IBZagruzka.SQL.Add('ostatki.kart_id,matrop.kei_id,ostatki.ksm_id');
       IBZagruzka.SQL.Add(' FROM select_ob_ved('+''''+S_dat1+''''+','+''''+s_dat2+''''+','+inttostr(FactVipuskZagksm_id.AsInteger)+') ostatki');
       IBZagruzka.SQL.Add(' inner join matrop on (ostatki.ksm_id=matrop.ksm_id)');
       iBZagruzka.SQL.Add(' WHERE ostatki.ksm_id='+INTTOSTR(FactOstNezKSM_id.AsInteger));
       IBZagruzka.Active:=true;
       if not IBZagruzka.Eof then
       begin
        if IBZagruzka.FieldByName('Kei_ID').AsInteger<>FactOstNez.FieldByName('Kei_id').AsInteger then
        begin
         sum_ost_nzn:=sum_ost_nzn+IBZagruzka.FieldByName('Ostatok_begin_nz').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
         sum_ost_sn:=sum_ost_sn+IBZagruzka.FieldByName('Ostatok_begin_S').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
         sum_ost_nz:=sum_ost_nz+IBZagruzka.FieldByName('Ostatok_end_nz').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
         sum_ost_s:=sum_ost_s+IBZagruzka.FieldByName('Ostatok_end_S').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
         sum_prix:=sum_prix+IBZagruzka.FieldByName('Prix_Period').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
         sum_rasx:=sum_rasx+IBZagruzka.FieldByName('Rash_virab_period').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
         sum_zag:=sum_zag+IBZagruzka.FieldByName('Zag_Period').AsFloat*dm1.Koef_per(FactOstNezKei_id.AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,FactOstNez.FieldByName('Ksm_id').AsInteger);
        end
        else
        begin
         sum_ost_nzn:=sum_ost_nzn+IBZagruzka.FieldByName('Ostatok_begin_nz').AsFloat;
         sum_ost_sn:=sum_ost_sn+IBZagruzka.FieldByName('Ostatok_begin_S').AsFloat;
         sum_ost_nz:=sum_ost_nz+IBZagruzka.FieldByName('Ostatok_end_nz').AsFloat;
         sum_ost_s:=sum_ost_s+IBZagruzka.FieldByName('Ostatok_end_S').AsFloat;
         sum_prix:=sum_prix+IBZagruzka.FieldByName('Prix_Period').AsFloat;
         sum_rasx:=sum_rasx+IBZagruzka.FieldByName('Rash_virab_period').AsFloat;
         sum_zag:=sum_zag+IBZagruzka.FieldByName('Zag_Period').AsFloat;
        end;
       end;
       FactVipuskZag.Next;
      end;
      FactOstNez.Edit;
      FactOstNezOstatok_end_Nz.AsFloat:=sum_ost_nz;
      FactOstNezOstatok_end_S.AsFloat:=sum_ost_s;
      FactOstNezOstatok_BEGIN_Nz.AsFloat:=sum_ost_nzn;
      FactOstNezOstatok_begin_S.AsFloat:=sum_ost_sn;
//      FactOstNezOstFactNz.AsFloat:=roundto(sum_ost_nzn+sum_zag-sum_vipusk*FactOstNezPlnorm.AsFloat,-3);
      FactOstNezOstFactS.AsFloat:=roundto(sum_ost_sn+sum_prix-sum_zag,-3);
      FactOstNezZagFact.AsFloat:=sum_zag;
      FactOstNezRash_Virab_period.AsFloat:=sum_rasx;
      FactOstNezPrix_period.AsFloat:=sum_prix;
      FactOstNez.FieldByName('PR_Raspred').AsInteger:=0;
      if FactOstNez.FieldByName('PRSubst').AsVariant=null then
      FactOstNez.FieldByName('PRSubst').AsInteger:=0;
      FactOstNez.Post;
      if FactOstNezPrSubst.AsInteger=1 then
      begin
       if edit4.Text='' then  edit4.Text:=floattostr(FactOstNezPlnorm.AsFloat);
       v_vip_nz:=roundto(FactOstNezOstFactNz.AsFloat/strtofloat(edit4.Text),-3);
       edit5.Text:=floattostr(v_vip_nz);
      end;
      FactOstNez.Next;
     end;
     FactVipuskZag.First;
     if FactVipuskZag.Locate('ksm_id',s_kodp,[]) then
     begin
      FactVipuskZag.Edit;
      FactVipuskZagVipNz.AsFloat:=v_vip_nz;
      FactVipuskZag.Post;
     end;
     FactVipuskZag.First;
     FactOstNez.First;
     FactOstNez.Edit;
     FactOstNez.EnableControls;
     FactVipuskZag.EnableControls;
    end
    else MessageDlg('Не выбраны препараты для распределения!', mtWarning, [mbOK], 0);
    Splash.Free;
   end;
  end
  else MessageDlg('Сначала удалите старое распределение!', mtWarning, [mbOK], 0);
 end
 else  MessageDlg('Задайте код препарата!', mtWarning, [mbOK], 0);
end;


procedure TFPererasZag.ToolButton2Click(Sender: TObject);
begin
if not FactVipuskZag.IsEmpty then raschet;
end;

procedure TFPererasZag.ToolButton3Click(Sender: TObject);
var
dob_pered:double;
v_sum: variant;
ot_pered:double;
begin
 IF DM1.Kart.Active THEN DM1.Kart.Close;
 vNdoc1:='Пз-'+inttostr(s_kodp);
 DM1.Kart.MacroByName('USL').AsString:=' WHERE KART.DOC_ID IN (SELECT DOCUMENT.DOC_ID FROM document WHERE DOCUMENT.NDOK containing '+''''+VNDOC1+''''+' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))';
 DM1.Kart.Open;
 iF DM1.Document.Active=true THEN  DM1.Document.Active:=False;
  DM1.Document.MacroByName('USL').AsString:=' WHERE document.NDOk containing '+ ''''+vNdoc1+''''+' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')';
  DM1.Document.open;
 FactVipuskZag.First;
 while not FactVipuskZag.Eof do
 begin
  vNdoc_z:='Пз-'+inttostr(s_kodp)+'-з-у-'+inttostr(FactVipuskZagKsm_id.Asinteger);
  vNdoc_p:='Пз-'+inttostr(s_kodp)+'-п-у-'+inttostr(FactVipuskZagKsm_id.Asinteger);
  vNdoc_r:='Пз-'+inttostr(s_kodp)+'-р-у-'+inttostr(FactVipuskZagKsm_id.Asinteger);
//загрузка и расход на выработку  из маршруток на препарате
  IBZagruzka.Active := False;
  IBZagruzka.SQL.Clear;
  IBZagruzka.SQL.Add('SELECT sum(kart.kol_rash_Ediz) Kol_Rash_ediz,sum(kart.kol_Prih_Ediz) Kol_Prih_ediz,ostatki.ksm_idpr,kart.razdel_id,');
  IBZagruzka.SQL.Add('kart.ksm_id,kart.kei_id,kart.kart_id,document.tip_op_id');
  IBZagruzka.SQL.Add(' FROM kart');
  IBZagruzka.SQL.Add(' INNER JOIN document ON (kart.doc_ID = document.doc_ID)');
  IBZagruzka.SQL.Add(' INNER JOIN ostatki ON (kart.kart_ID = ostatki.kart_ID)');
  IBZagruzka.SQL.Add(' WHERE document.STRUK_ID='+INTTOSTR(vStruk_Id));
  IBZagruzka.SQL.Add(' AND ostatki.Ksm_idpr='+INTTOSTR(FactVipuskZagksm_id.AsInteger));
  IBZagruzka.SQL.Add(' AND (document.Tip_op_id=33 or document.Tip_op_id=35 or document.Tip_op_id=30)');
//  IBZagruzka.SQL.Add(' AND kart.Kol_Rash_Ediz<>0');
  IBZagruzka.SQL.Add(' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
  IBZagruzka.SQL.Add(' GROUP BY ostatki.ksm_idpr,kart.razdel_id,kart.ksm_id,KART.KEI_ID,kart.kart_id,document.tip_op_id');
  IBZagruzka.Active:=true;
  FactOstNez.First;
  While not FactOstNez.Eof do
  begin
   if FactOstNezPr_Raspred.AsInteger=1 then
   begin
// корректировка расхода на выработку препаратa
    IBZagruzka.First;
    if (IBZagruzka.locate('ksm_id;razdel_id;Tip_Op_Id',VarArrayOf([FactOstNez.FieldByName('ksm_ID').AsInteger,
     FactOstNez.FieldByName('RAZDEL_ID').AsInteger,35]),[])) and (IBZagruzka.FieldByName('Kol_Rash_ediz').AsFloat<>0) then
    begin
     st_kart:=IBZagruzka.FieldByName('Kart_Id').AsInteger;
     DM1.Document.first;
     If not DM1.Document.locate('klient_id;ndok',VarArrayOf([FactVipuskZagKsm_id.Asinteger,vNdoc_r]),[]) then
     begin
      vNdoc:=vNdoc_r;
      vTip_Op_Id:=35;
      vTip_Doc_Id:=37;
      vKlient_Id:=FactVipuskZagKsm_id.Asinteger;
      vDate_op:=strtodate(s_dat1);
      vDate_dok:=strtodate(s_dat1);
      dm1.Document.Insert;
      dm1.Document.Post;
      vDocument_id_syr:=vDocument_id;
     end
     ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
     vDocument_id:=vDocument_id_syr;
     DM1.Kart.Insert;
     DM1.KartKsm_id.AsInteger:=IBZagruzka.FieldByName('Ksm_Id').AsInteger;
     DM1.KartRazdel_id.AsInteger:=IBZagruzka.FieldByName('Razdel_Id').AsInteger;
     DM1.KartKol_Rash_Ediz.AsFloat:=-(IBZagruzka.FieldByName('Kol_Rash_ediz').AsFloat);
     DM1.KartKei_id.AsInteger:=IBZagruzka.FieldByName('Kei_Id').AsInteger;
     dm1.Kart.Post;
    end;
//  корректировка загрузки на препарате
    IBZagruzka.First;
    if (IBZagruzka.locate('ksm_id;razdel_id;Tip_Op_Id',VarArrayOf([FactOstNez.FieldByName('ksm_ID').AsInteger,
     FactOstNez.FieldByName('RAZDEL_ID').AsInteger,33]),[])) and (IBZagruzka.FieldByName('Kol_Rash_ediz').AsFloat<>0) then
    begin
     st_kart:=IBZagruzka.FieldByName('Kart_Id').AsInteger;
     DM1.Document.first;
     If not DM1.Document.locate('klient_id;ndok',VarArrayOf([FactVipuskZagKsm_id.Asinteger,vNdoc_z]),[]) then
     begin
      vNdoc:=vNdoc_z;
      vTip_Op_Id:=33;
      vTip_Doc_Id:=37;
      vKlient_Id:=FactVipuskZagKsm_id.Asinteger;
      vDate_op:=strtodate(s_dat1);
      vDate_dok:=strtodate(s_dat1);
      dm1.Document.Insert;
      dm1.Document.Post;
      vDocument_id_syr:=vDocument_id;
     end
     ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
     vDocument_id:=vDocument_id_syr;
     DM1.Kart.Insert;
     DM1.KartKsm_id.AsInteger:=IBZagruzka.FieldByName('Ksm_Id').AsInteger;
     DM1.KartRazdel_id.AsInteger:=IBZagruzka.FieldByName('Razdel_Id').AsInteger;
     DM1.KartKol_Rash_Ediz.AsFloat:=-(IBZagruzka.FieldByName('Kol_Rash_ediz').AsFloat);
     DM1.KartKei_id.AsInteger:=IBZagruzka.FieldByName('Kei_Id').AsInteger;
     dm1.Kart.Post;
    end;
//  корректировка приходa на препарате
    IBZagruzka.First;
    if IBZagruzka.locate('ksm_id;razdel_id;Tip_Op_Id',VarArrayOf([FactOstNez.FieldByName('ksm_ID').AsInteger,
     FactOstNez.FieldByName('RAZDEL_ID').AsInteger,30]),[]) then
    begin
     v_sum:=SelectToVarIB('select sum(kart.kol_prih_Ediz) FROM kart INNER JOIN document ON (kart.doc_ID = document.doc_ID) WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
     + ' AND kart.kart_id='+inttostr(IBZagruzka.FieldByName('Kart_Id').AsInteger)
     + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
     + ' AND (document.Tip_op_id=34)',dm1.belmed,dm1.ibt_read);
     If v_sum <> Null then
     dob_pered:=v_sum
     else dob_pered:=0;
     v_sum:=SelectToVarIB('select sum(kart.kol_rash_Ediz) FROM kart INNER JOIN document ON (kart.doc_ID = document.doc_ID) WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
     + ' AND kart.kart_id='+inttostr(IBZagruzka.FieldByName('Kart_Id').AsInteger)
     + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
     + ' AND (document.Tip_op_id=34 or document.Tip_op_id=32 )',dm1.belmed,dm1.ibt_read);
     If v_sum <> Null then
     ot_pered:=v_sum
     else ot_pered:=0;
     if (IBZagruzka.FieldByName('Kol_Prih_ediz').AsFloat+dob_pered-ot_pered)<>0 then
     begin
      if dm1.Ostatki.Active then dm1.Ostatki.Active:=false;
      DM1.Ostatki.ParamByName('struk_ID').AsInteger:=vstruk_id;
      DM1.Ostatki.MacroByName('usl').AsString:='  (ost.ksm_idpr is null or OST.KSM_IDPR=0) AND OST.KSM_ID='+INTTOSTR(IBZagruzka.FieldByName('Ksm_Id').AsInteger);
      dm1.Ostatki.Open;
      st_kart:=dm1.OstatkiKart_id.AsInteger;
      DM1.Document.first;
      If not DM1.Document.locate('klient_id;ndok',VarArrayOf([FactVipuskZagKsm_id.Asinteger,vNdoc_p]),[]) then
      begin
       vNdoc:=vNdoc_p;
       vTip_Op_Id:=30;
       vTip_Doc_Id:=37;
       vKlient_Id:=FactVipuskZagKsm_id.Asinteger;
       vDate_op:=strtodate(s_dat1);
       vDate_dok:=strtodate(s_dat1);
       dm1.Document.Insert;
       dm1.Document.Post;
       vDocument_id_pr:=vDocument_id;
      end
      ELSE VDOCUMENT_ID_pr:=DM1.DocumentDoc_id.AsInteger;
      vDocument_id:=vDocument_id_pr;
      DM1.Kart.Insert;
      DM1.KartKsm_id.AsInteger:=IBZagruzka.FieldByName('Ksm_Id').AsInteger;
      DM1.KartRazdel_id.AsInteger:=IBZagruzka.FieldByName('Razdel_Id').AsInteger;
      DM1.KartKol_Rash_Ediz.AsFloat:=-(IBZagruzka.FieldByName('Kol_Prih_ediz').AsFloat+dob_pered-ot_pered);
      DM1.KartKei_id.AsInteger:=IBZagruzka.FieldByName('Kei_Id').AsInteger;
      dm1.Kart.Post;
     end;
    end;
   end;
   FactOstNez.Next;
  end;
  FactVipuskZag.Next;
 end;
// dm1.ApplyUpdatesDoc;
// занесение распределенных данных
 vNdoc1:='Пз-'+inttostr(s_kodp);
 SyrieZag.DisableControls;
 SyrieZag.First;
 While not SyrieZag.Eof do
 begin
  vNdoc_z:='Пз-'+inttostr(s_kodp)+'-з-'+inttostr(SyrieZagKODP.Asinteger);
  vNdoc_p:='Пз-'+inttostr(s_kodp)+'-п-'+inttostr(SyrieZagKODP.Asinteger);
  vNdoc_r:='Пз-'+inttostr(s_kodp)+'-р-'+inttostr(SyrieZagKODP.Asinteger);
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT OSTATKI.KART_ID ');
  DM1.IBQuery1.SQL.Add(' FROM OSTATKI ');
  DM1.IBQuery1.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(SyrieZag.FieldByName('KSM_ID').ASINTEGER));
  DM1.IBQuery1.SQL.Add(' and OSTATKI.KSM_IDPR='+inttostr(SyrieZagKODP.Asinteger)+' and ostatki.razdel_id='+inttostr(SyrieZag.FieldByName('Razdel_ID').ASINTEGER));
  DM1.IBQuery1.Active := True;
  IF SyrieZagPRIX.AsFloat<>0 THEN
  BEGIN
   if dm1.Ostatki.Active then dm1.Ostatki.Active:=false;
   DM1.Ostatki.ParamByName('struk_ID').AsInteger:=vstruk_id;
   DM1.Ostatki.MacroByName('usl').AsString:='  (ost.ksm_idpr is null or OST.KSM_IDPR=0) AND OST.KSM_ID='+INTTOSTR(SyrieZag.FieldByName('Ksm_Id').AsInteger);
   dm1.Ostatki.Open;
   st_kart:=dm1.OstatkiKart_id.AsInteger;
   DM1.Document.first;
   If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagKodp.asInteger,vNdoc_p]),[]) then
   begin
    vTip_Op_Id:=30;
    vTip_Doc_Id:=37;
    vKlient_Id:=SyrieZagKodp.Asinteger;
    vDate_op:=strtodate(s_dat1);
    vDate_dok:=strtodate(s_dat1);
    dm1.Document.Insert;
    dm1.DocumentNdok.AsString:=vNdoc_p;
    dm1.Document.Post;
    vDocument_id_pr:=vDocument_id;
   end  ELSE VDOCUMENT_ID_pr:=DM1.DocumentDoc_id.AsInteger;
   vDocument_id:=vDocument_id_pr;
   DM1.Kart.Insert;
   DM1.KartKsm_id.AsInteger:=SyrieZag.FieldByName('KSM_ID').ASINTEGER;
   DM1.KartRazdel_id.AsInteger:=SyrieZag.FieldByName('Razdel_ID').ASINTEGER;
   DM1.KartKol_Rash_Ediz.AsFloat:=SyrieZagPRIX.AsFloat;
   DM1.KartKei_id.AsInteger:=SyrieZag.FieldByName('Kei_Id').AsInteger;
   dm1.Kart.Post;
  END;
  IF SyrieZagKol_Rash_Ediz.AsFloat<>0 THEN
  BEGIN
   st_kart:=DM1.IBQuery1.FieldByName('Kart_Id').AsInteger;
   DM1.Document.first;
   If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagKodp.Asinteger,vNdoc_z]),[]) then
   begin
    vNdoc:=vNdoc_z;
    vTip_Op_Id:=33;
    vTip_Doc_Id:=37;
    vKlient_Id:=SyrieZagKodp.Asinteger;
    vDate_op:=strtodate(s_dat1);
    vDate_dok:=strtodate(s_dat1);
    dm1.Document.Insert;
    dm1.Document.Post;
    vDocument_id_syr:=vDocument_id;
   end ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
   vDocument_id:=vDocument_id_syr;
   DM1.Kart.Insert;
   DM1.KartKsm_id.AsInteger:=SyrieZag.FieldByName('KSM_ID').ASINTEGER;
   DM1.KartRazdel_id.AsInteger:=SyrieZag.FieldByName('Razdel_ID').ASINTEGER;
   DM1.KartKol_Rash_Ediz.AsFloat:=SyrieZagKol_Rash_Ediz.AsFloat;
   DM1.KartKei_id.AsInteger:=SyrieZag.FieldByName('Kei_Id').AsInteger;
   dm1.Kart.Post;
  END;
  IF SyrieZagRasVir.AsFloat<>0 THEN
  BEGIN
   st_kart:=DM1.IBQuery1.FieldByName('Kart_Id').AsInteger;
   DM1.Document.first;
   If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagKodp.Asinteger,vNdoc_r]),[]) then
   begin
    vNdoc:=vNdoc_r;
    vTip_Op_Id:=35;
    vTip_Doc_Id:=37;
    vKlient_Id:=SyrieZagKodp.Asinteger;
    vDate_op:=strtodate(s_dat1);
    vDate_dok:=strtodate(s_dat1);
    dm1.Document.Insert;
    dm1.Document.Post;
    vDocument_id_syr:=vDocument_id;
   end
   ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
   vDocument_id:=vDocument_id_syr;
   DM1.Kart.Insert;
   DM1.KartKsm_id.AsInteger:=SyrieZag.FieldByName('KSM_ID').ASINTEGER;
   DM1.KartRazdel_id.AsInteger:=SyrieZag.FieldByName('Razdel_ID').ASINTEGER;
   DM1.KartKol_Rash_Ediz.AsFloat:=SyrieZagRasVir.AsFloat;
   DM1.KartKei_id.AsInteger:=SyrieZag.FieldByName('Kei_Id').AsInteger;
   dm1.Kart.Post;
  END;
  SyrieZag.NEXT;
 END;
 dm1.ApplyUpdatesDoc;
 SyrieZag.EnableControls;
 FactOstNez.First;
 FactVipuskZag.First;
 SyrieZag.First;
end;

procedure TFPererasZag.ToolButton4Click(Sender: TObject);
begin
 FactOstNez.DisableControls;
 vNdoc1:='Пз-'+inttostr(s_kodp);
 iF DM1.Document.Active=true THEN  DM1.Document.Close;
 DM1.Document.MacroByName('USL').AsString:=' WHERE document.NDOk containing '+ ''''+vNdoc1+''''+' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')';
 DM1.Document.open;
 DM1.Document.First;
 If not DM1.Document.Eof then
 begin
  if MessageDlg('Вы действительно хотите удалить старое перераспределение? ',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
// удаление старого перераспределения
    VNDOCY:='-у-';
    vNdoc_z:='Пз-'+inttostr(s_kodp)+'-з-у-';
    vNdoc_p:='Пз-'+inttostr(s_kodp)+'-п-у-';
    vNdoc_r:='Пз-'+inttostr(s_kodp)+'-р-у-';
    try
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc1+'''');
     DM1.IBQuery1.SQL.Add(' and DOCUMENT.NDOK not containing '+''''+VNDOCY+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=35');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc1+'''');
     DM1.IBQuery1.SQL.Add(' and DOCUMENT.NDOK not containing '+''''+VNDOCY+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=33');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc1+'''');
     DM1.IBQuery1.SQL.Add(' and DOCUMENT.NDOK not containing '+''''+VNDOCY+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=30');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc_p+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=30');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+VNDOC_z+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=33');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+VNDOC_r+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=35');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add(' delete from document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc1+'''');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')');
     DM1.IBQuery1.ExecSQL;
     DM1.IBT_WRITE.Commit;
     DM1.IBT_READ.CommitRetaining;
     dm1.IBT_Read.Active:=false;
     dm1.IBT_Read.StartTransaction;
     dm1.IBT_WRITE.Active:=false;
     dm1.IBT_WRITE.StartTransaction;
    except
     on E:EIBInterbaseError do
     begin
      ShowMessage(E.Message);
     end;
    end;
   end;
  end;
  FactOstNez.EnableControls;
  if FactVipuskZag.active then FactVipuskZag.active:=false;
  if FactOstNez.active then FactOstNez.active:=false;
  if SyrieZag.active then SyrieZag.active:=false;
  dbgrideh1.Refresh;
  dbgrideh2.Refresh;
  dbgrideh3.Refresh;
end;

procedure TFPererasZag.ToolButton5Click(Sender: TObject);
begin
 SyrieZag.DisableControls;
 dm1.Kart.Close;
 dm1.Ostatki.Close;
 dm1.Document.Close;
// ProsmZagRaspred;
 FrReport2.LoadFromFile(reportsPath + 'P_PererasZag.frf');
 FrReport2.ShowReport;
 SyrieZag.EnableControls;
end;

end.
