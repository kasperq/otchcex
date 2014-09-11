unit Otchet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, DB, RxIBQuery, IBQuery,
  RxMemDS, Menus, FindDlgEh, ImgList, StdCtrls, Mask, DBCtrls, Grids,
  DBGridEh, Spin, ComCtrls, ExtCtrls, ToolWin,
  SplshWnd,IBStoredProc,
  IBDatabase,IB;
//  ,DBCtrlsEh,DBLookupEh, BDEUtils, UtilR, UtilRIB,Math,Buttons;
type
  TFOtchet1 = class(TForm)
    Label2: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    Label19: TLabel;
    Label29: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label5: TLabel;
    Label41: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    ToolBar1: TToolBar;
    DBNavigator1: TDBNavigator;
    ToolButton6: TToolButton;
    ToolButton3: TToolButton;
    ToolButton8: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    Label4: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    Edit1: TEdit;
    DBGridEh3: TDBGridEh;
    DBEdit1: TDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    ImageList1: TImageList;
    FindDlgEh1: TFindDlgEh;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N5: TMenuItem;
    Otchet: TRxMemoryData;
    Otchetkraz: TIntegerField;
    OtchetNMAT: TStringField;
    Otchetkol_rash: TFloatField;
    Otchetneis: TStringField;
    OtchetOt_s: TFloatField;
    OtchetOt_nz: TFloatField;
    OtchetOnm_s: TFloatField;
    OtchetOnm_nz: TFloatField;
    Otchetplnorm: TFloatField;
    Otchetfnorm: TFloatField;
    Otchetfnormg: TFloatField;
    Otchetkol_prih: TFloatField;
    Otchetzag: TFloatField;
    Otchetper_s: TFloatField;
    Otchetper_nz: TFloatField;
    Otchetpereras: TFloatField;
    Otchetpererasg: TFloatField;
    Otchetksm_id: TIntegerField;
    Otchetprpf: TBooleanField;
    OtchetRAZDEL_ID: TIntegerField;
    DSOtchet: TDataSource;
    Query_Otchet: TIBQuery;
    Query_OtchetKOLR: TFMTBCDField;
    Query_OtchetTIP_OP_ID: TSmallintField;
    Query_OtchetKSM_ID: TIntegerField;
    Query_OtchetKOLP: TFMTBCDField;
    Query_OtchetRAZDEL_ID: TSmallintField;
    Query_OtchetKART_ID: TSmallintField;
    DS_Ceh_Otchet: TDataSource;
    Ceh_Otchet: TRxIBQuery;
    Ceh_OtchetSERIA_ID: TIntegerField;
    Ceh_OtchetKSM_ID: TIntegerField;
    Ceh_OtchetSERIA: TIBStringField;
    Ceh_OtchetSROK_GODN: TDateField;
    Ceh_OtchetSERTIF: TIBStringField;
    Ceh_OtchetDATE_SERTIF: TDateField;
    Ceh_OtchetPASPORT: TIBStringField;
    Ceh_OtchetDATE_PASPORT: TDateField;
    Ceh_OtchetKOL_SERIA: TFMTBCDField;
    Ceh_OtchetDATE_VIPUSK: TDateField;
    Ceh_OtchetFORMA_VIPUSK: TIBStringField;
    Ceh_OtchetKEI_ID: TSmallintField;
    Ceh_OtchetDATE_TIME_UPDATE: TDateTimeField;
    Ceh_OtchetUSER_NAME: TIBStringField;
    Ceh_OtchetSHEMA: TIBStringField;
    Ceh_OtchetKODTN: TIBStringField;
    Ceh_OtchetDATE_ZAG: TDateField;
    Ceh_OtchetFIO_RASH: TIBStringField;
    Ceh_OtchetFIO_MASTER: TIBStringField;
    Ceh_OtchetCOMMENT: TIBStringField;
    Ceh_OtchetOB_ZAG: TFloatField;
    CehOtchetUpdate: TIBUpdateSQLW;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
//    procedure SostOtchet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOtchet1: TFOtchet1;
  Splash: TForm;
  AniBmp1: TBitmap;
  V_VIPUSK: DOUBLE;
  v_mes: integer;
  v_god: integer;
  S_DATN: STRING;
  v_vipuskg: double;
implementation

uses dm;

{$R *.dfm}

procedure TFOtchet1.Edit1Change(Sender: TObject);
var
skod:string;
begin
if edit1.text<>''   then begin
skod:=edit1.text+'%';
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
 DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM');
 DM1.IBQuery1.SQL.Add(' FROM SPPROD');
 DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add('  INNER JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
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

procedure TFOtchet1.Edit1Click(Sender: TObject);
begin
edit1.text:='';
end;

procedure TFOtchet1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
//  Splash := ShowSplashWindow(AniBmp1,
//  'Загрузка данных. Подождите, пожалуйста...', True, nil);
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
   label19.caption:=s_NMAT;
   label29.caption:=s_namorg;
   label21.caption:=s_Neiz;
   label22.caption:=s_GOST;
   label41.caption:=s_Xarkt;
  end;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT  KART.KOL_PRIH');
  DM1.IBQuery1.SQL.Add(' FROM KART');
  DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KATR.DOC_ID = DOCUMENT.DOC_ID)');
  DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.TIP_OP_ID=36'
  + ' AND DOCUMENT.KLIENT_ID='+INTTOSTR(s_KODP)
  + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
 begin
  V_VIPUSK:=DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
  label1.caption:=FLOATTOSTR(V_VIPUSK);
 END
 ELSE
 BEGIN
  V_VIPUSK:=0;
  label1.caption:='Нет данных о выпуске';
 END;
 S_DATN:='01.01.'+INTTOSTR(GOD);
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT  sum(KART.KOL_PRIH) vipusk_ng,KART.KSM_ID');
 DM1.IBQuery1.SQL.Add(' FROM KART');
 DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KATR.DOC_ID = DOCUMENT.DOC_ID)');
 DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID=36'
 + ' AND DOCUMENT.KLIENT_ID='+INTTOSTR(s_KODP)
 + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
 DM1.IBQuery1.SQL.Add(' GROUP BY KATR.KSM_ID');
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
 begin
  V_VIPUSKG:=DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
  label14.caption:=FLOATTOSTR(V_VIPUSKG);
 END
 ELSE
 BEGIN
  V_VIPUSKG:=0;
  label14.caption:='';
 END;
// SostOtchet;
// Splash.Free;
 end;
end;

{ procedure TFOtchet1.SostOtchet;
VAR
s_fnorm: double;
s_pereras: double;
s_fnormg: double;
s_pererasg: double;
v_PERE: VARIANT;
begin
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT  OSTATKI.KSM_ID,OSTATKI.OT_S,OSTATKI.OT_NZ,OSTATKI.ONM.NZ,OSTATKI.ONM.S,OSTATKI.RAZDEL_ID');
 DM1.IBQuery1.SQL.Add('NORM.KRAZ,NORM.PLNORM,NORM.PRPF,EDIZ.NEIS,NORM.KEI_ID KEIN,MATROP.NMAT,OSTATKI.KEI_ID');
 DM1.IBQuery1.SQL.Add(' FROM OSTATKI');
 DM1.IBQuery1.SQL.Add(' INNER JOIN RAZDEL ON (OSTATKI.RAZDEL_ID = RAZDEL.RAZDEL_ID)');
 DM1.IBQuery1.SQL.Add(' LEFT JOIN NORM ON (OSTATKI.KSM_ID_PR = NORM.KODP AND OSTATKI.KSM_ID=NORM.KSM_ID AND RAZDEL.KRAZ=NORM.KRAZ)');
 DM1.IBQuery1.SQL.Add(' INNER JOIN MATROP ON (OSTATKI.KSM_ID = MATROP.KSM_ID)');
 DM1.IBQuery1.SQL.Add(' INNER JOIN EDIZ ON (NORM.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add(' WHERE OSTATKI.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND OSTATKI.KSM_ID_PR='+INTTOSTR(s_KODP));
 DM1.IBQuery1.SQL.Add(' ORDER BY OSTATKI.KSM_ID,OSTATKI.RAZDEL_ID');
 DM1.IBQuery1.Active := True;
 Query_Otchet.Active:=False;
 Query_otchet.ParamByName('KODP').AsInteger:=s_kodp;
 Query_otchet.ParamByName('SDAT1').AsSTRING:=s_DAT1;
 Query_otchet.ParamByName('SDAT2').AsSTRING:=s_DAT2;
 Query_Otchet.Active:=True;
 Otchet.EmptyTable;
 Otchet.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
 S_DATN:='01.01.'+INTTOSTR(V_GOD);
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT  sum(kart.KOL_RASH) rasg,KART.RAZDEL_ID,KART.KSM_ID');
 DM1.IBQuery1.SQL.Add(' FROM KART');
 DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOK_ID = DOCUMENT.DOK_ID)');
 DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.TOP_OP_ID=35 AND DOCUMENT.KLIENT_ID='+INTTOSTR(S_KODP)
 + ' AND Document.Date_op between '+''''+s_datN+'''' +' and '+''''+s_dat2+''''
 + ' AND DOCUMENT.STRUK_ID='+INTTOSTR(VSTRUK_ID));
 DM1.IBQuery1.SQL.Add(' GROUP BY KART.KSM_ID,KART.RAZDEL_ID');
 DM1.IBQuery1.Active := True;
 Query_Otchet.Active:=False;
 Query_otchet.ParamByName('KODP').AsInteger:=s_kodp;
 Query_otchet.ParamByName('SDAT1').AsSTRING:=s_DAT1;
 Query_otchet.ParamByName('SDAT2').AsSTRING:=s_DAT2;
 Query_Otchet.Active:=True;
 Otchet.Active := True;
 Otchet.DisableControls;
  While not Query_Otchet.Eof do
  begin
   Otchet.First;
   IF Otchet.Locate('ksm_id;razdel_id',VarArrayOf([Query_OtchetKsm_id.AsInteger,Query_OtchetRazdel_id.AsInteger]),[]) THEN
   BEGIN
    Otchet.Edit;
    if Query_OtchetTip_Op_Id.AsInteger=30 then Otchet.FieldByName('kol_Prih').AsFloat := Query_OtchetKolp.AsFloat;
    if Query_OtchetTip_Op_Id.AsInteger=33 then Otchet.FieldByName('Zag').AsFloat := Query_OtchetKolr.AsFloat;
    if Query_OtchetTip_Op_Id.AsInteger=35 then Otchet.FieldByName('kol_Rash').AsFloat := Query_OtchetKolr.AsFloat;
    if Query_OtchetTip_Op_Id.AsInteger=34 then Otchet.FieldByName('Per_s').AsFloat := Query_OtchetKolr.AsFloat;
    if Query_OtchetTip_Op_Id.AsInteger=34 then Otchet.FieldByName('Per_nz').AsFloat := Query_OtchetKolr.AsFloat;
    Otchet.Post;
   END;
   Query_Otchet.Next;
  end;
  Otchet.First;
  While not Otchet.Eof do
  begin
   S_KSM:=Otchet.FieldByName('KSM_ID').AsInteger;
   if v_vipusk<>0 then
   begin
    s_fnorm:=Otchet.FieldByName('kol_Rash').AsFloat/v_vipusk;
    s_pereras:=Otchet.FieldByName('kol_Rash').AsFloat-Otchet.FieldByName('PLNORM').AsFloat*v_vipusk;
   end
   else
   begin
    s_fnorm:=0;
    s_pereras:=0;
   end;
   DM1.IBQuery1.First;
   if DM1.IBQuery1.Locate('ksm_id;razdel_id',VarArrayOf([OtchetKsm_id.AsInteger,OtchetRazdel_id.AsInteger]),[]) THEN
    if v_vipuskg<>0 then s_fnormg:=DM1.IBQuery1.FieldByName('RASG').AsFloat/v_vipuskg
    else s_fnormg:=0
   else s_fnormg:=0;
   V_PERE := SelectToVarIB('SELECT sum(CEH_OTCHET.KOL) pereras_g,ceh_otchet.kart_ID,ostatki.ksm_id '
   +' FROM ceh_otchet'
   +' INNER JOIN ostatki ON (ceh_otchet.kart_ID = ostatki.kart_ID)'
   +' WHERE CEH_OTCHET.MES<'+ INTTOSTR(V_MES)+' AND CEH_OTCHET.GOD='+INTTOSTR(GOD)
   +' AND OSTATKI.KSM_ID_PR='+INTTOSTR(S_KODP)+' AND CEH.PRIZ_KOL=1 and OSTATKI.KSM_ID='+INTTOSTR(S_KSM)
   +' GROUP BY CEH_OTCHET.KART_ID,ostatki.ksm_id',dm1.BELMED,dm1.IBT_Read);
   if v_PERE = NULL then S_PERERASG:=0 ELSE S_PERERASG:=V_PERE;
   Otchet.Edit;
   Otchet.FieldByName('FNORM').AsFloat :=S_FNORM;
   Otchet.FieldByName('FNORMG').AsFloat :=S_FNORMG;
   Otchet.FieldByName('PERERAS').AsFloat :=S_PERERAS;
   Otchet.FieldByName('PERERASG').AsFloat :=S_PERERASG;
   CEH_OTCHET.Active:=FALSE;
   CEH_OTCHET.ParamByName('KART_ID').AsInteger:=Otchet.FieldByName('KART_ID').AsInteger;
   CEH_OTCHET.ParamByName('MES').AsInteger:=V_MES;
   CEH_OTCHET.ParamByName('GOD').AsInteger:=V_GOD;
   CEH_OTCHET.ParamByName('PRIZ_KOL').AsInteger:=1;
   CEH_OTCHET.Active:=TRUE;
   IF CEH_OTCHET.Eof THEN
   BEGIN
    CEH_OTCHET.Insert;
    CEH_OTCHET.FieldByName('KOL').AsFloat:=S_PERERAS;
    CEH_OTCHET.FieldByName('MES').AsFloat:=V_MES;
    CEH_OTCHET.FieldByName('GOD').AsFloat:=V_GOD;
    CEH_OTCHET.FieldByName('PRIZ_KOL').AsFloat:=1;
   END
   ELSE
   BEGIN
    CEH_OTCHET.EDIT;
    CEH_OTCHET.FieldByName('KOL').AsFloat:=S_PERERAS;
   END;
   CEH_OTCHET.Post;
   Otchet.Next;
  end;
  try
   if CEH_OTCHET.UpdatesPending then CEH_OTCHET.ApplyUpdates;
   DM1.IBT_READ.Commit;
  except
   MessageDlg('Произошла ошибка при записи данных!', mtWarning, [mbOK], 0);
   DM1.IBT_Read.RollbackRetaining;
  end;
 Otchet.SortOnFields('kraz;nmat',true);
 Otchet.First;
 Otchet.EnableControls;
end;}
end.
