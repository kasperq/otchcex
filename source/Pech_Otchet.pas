unit Pech_Otchet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Grids, DBGridEh, StdCtrls, Spin, ComCtrls, ToolWin, DB,
  DBTables, IBCustomDataSet, IBQuery, RxIBQuery, RxMemDS,UtilRIB,SplshWnd,
  DBGrids, ExtCtrls;

type
  TFPerOtchet = class(TForm)
    Otchet: TTable;
    regot: TTable;
    Prizpr: TTable;
    regotDATCEX: TStringField;
    regotSNZAP: TStringField;
    regotDATACY: TStringField;
    regotCEX: TStringField;
    regotMES: TSmallintField;
    PrizprPRGOD: TStringField;
    PrizprPRMES: TStringField;
    PrizprSPROD: TStringField;
    PrizprSPPOL: TStringField;
    PrizprSPPRN: TStringField;
    PrizprSPVIS: TStringField;
    PrizprPRSHAP: TStringField;
    PrizprPRGRA: TStringField;
    PrizprPRG1: TFloatField;
    PrizprPRG2: TFloatField;
    PrizprPRG3: TFloatField;
    PrizprPRG4: TFloatField;
    PrizprPRG5: TFloatField;
    PrizprSPCEH: TStringField;
    PrizprKOLG1: TFloatField;
    PrizprKOLG2: TFloatField;
    PrizprKOLG3: TFloatField;
    PrizprKOLG4: TFloatField;
    PrizprKOLGS1: TFloatField;
    PrizprKOLGS2: TFloatField;
    PrizprKOLGS3: TFloatField;
    PrizprKOLGS4: TFloatField;
    PrizprKOLK1: TFloatField;
    PrizprKOLK2: TFloatField;
    PrizprKOLK3: TFloatField;
    PrizprKOLK4: TFloatField;
    PrizprKOLKS1: TFloatField;
    PrizprKOLKS2: TFloatField;
    PrizprKOLKS3: TFloatField;
    PrizprKOLKS4: TFloatField;
    PrizprKSM_ID: TFloatField;
    PrizprSPROD_S: TStringField;
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
    Query_Otchet: TRxIBQuery;
    Query_OtchetKSM_ID: TIntegerField;
    Query_OtchetOSTATOK_END_S: TFMTBCDField;
    Query_OtchetOSTATOK_END_NZ: TFMTBCDField;
    Query_OtchetOSTATOK_BEGIN_NZ: TFMTBCDField;
    Query_OtchetOSTATOK_BEGIN_S: TFMTBCDField;
    Query_OtchetNMAT: TIBStringField;
    Query_OtchetZAG_PERIOD: TFMTBCDField;
    Query_OtchetRASH_VIRAB_PERIOD: TFMTBCDField;
    Query_OtchetPRIX_PERIOD: TFMTBCDField;
    Query_OtchetRASX_PERIOD: TFMTBCDField;
    Query_OtchetPERS: TFMTBCDField;
    Query_OtchetPERNZ: TFMTBCDField;
    Query_OtchetKRAZ: TSmallintField;
    Query_OtchetKEI_IDN: TSmallintField;
    Query_OtchetKEI_ID: TSmallintField;
    Query_OtchetRAZDEL_ID: TSmallintField;
    Query_OtchetKART_ID: TIntegerField;
    Otchets: TTable;
    OtchetsMES1: TStringField;
    OtchetsOTSTRK: TStringField;
    OtchetsOTPROD: TStringField;
    OtchetsOTKPN: TStringField;
    OtchetsOTKVI: TStringField;
    OtchetsOTMATR: TStringField;
    OtchetsOTCENA: TFloatField;
    OtchetsCENAZA: TFloatField;
    OtchetsOSTSN: TFloatField;
    OtchetsOSTNZN: TFloatField;
    OtchetsPRIX: TFloatField;
    OtchetsZAG: TFloatField;
    OtchetsRASM: TFloatField;
    OtchetsRASG: TFloatField;
    OtchetsPERS: TFloatField;
    OtchetsPERP: TFloatField;
    OtchetsOSTSK: TFloatField;
    OtchetsOSTZK: TFloatField;
    OtchetsPRIXK: TFloatField;
    OtchetsRASK: TFloatField;
    OtchetsFACTK: TFloatField;
    OtchetsFACTM: TFloatField;
    OtchetsPEREM: TFloatField;
    OtchetsPEREG: TFloatField;
    OtchetsOTRAZ: TStringField;
    OtchetsPKV: TStringField;
    OtchetsPGD: TStringField;
    OtchetsMES: TStringField;
    OtchetsPR: TSmallintField;
    OtchetsKSM_ID: TFloatField;
    OtchetsOTPROD_S: TStringField;
    Spisok: TTable;
    SpisokOTPROD: TStringField;
    SpisokNMAT: TStringField;
    SpisokOTSTRK: TStringField;
    SpisokMES: TSmallintField;
    SpisokGOD: TSmallintField;
    ncmatrd: TTable;
    ncmatrdNCPROD: TStringField;
    ncmatrdNCKPN: TStringField;
    ncmatrdNCKVI: TStringField;
    ncmatrdNCEDIZ: TStringField;
    ncmatrdNCSTRK: TStringField;
    ncmatrdNCRAZ: TStringField;
    ncmatrdNCMATR: TStringField;
    ncmatrdNCPROC: TFloatField;
    ncmatrdNCEDIZM: TStringField;
    ncmatrdNCNRDS: TFloatField;
    ncmatrdNCNRFK: TFloatField;
    ncmatrdNMATS: TStringField;
    ncmatrdNCCENA: TFloatField;
    ncmatrdKSM_ID: TFloatField;
    ncmatrdNCPROD_S: TStringField;
    Ras_Vir: TIBQuery;
    normt: TIBQuery;
    Panel1: TPanel;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton4Click(Sender: TObject);
    procedure Otchet_ST;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPerOtchet: TFPerOtchet;
  vxod: boolean;
  mes_vib: integer;
  god_vib: integer;
  st_kodp: string;
  v_vipusk: double;
  s_spprn: string;
  s_spvis: string;
  sv_keip: string;
  s_keip:integer;
implementation
 uses dm,vipusk, Find_Spprod,Pech_Vibor;
{$R *.dfm}

procedure TFPerOtchet.Otchet_ST;
VAR
s_fnorm: double;
s_pereras: double;
s_fnormg: double;
s_pererasg: double;
v_PERE: VARIANT;
s_RASXG: DOUBLE;
st_ksm: string;
v_rasm: double;
s_kart: integer;
sv_keiN: string;
v_norm: double;
begin
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT DISTINCT NORM.KSM_ID,');
 DM1.IBQuery1.SQL.Add('NORM.KRAZ,NORM.PLNORM,NORM.KEI_ID KEIN,MATROP.KEI_ID');
 DM1.IBQuery1.SQL.Add(' FROM NORM');
 DM1.IBQuery1.SQL.Add(' LEFT JOIN MATROP ON (NORM.KSM_ID = MATROP.KSM_ID)');
 DM1.IBQuery1.SQL.Add(' WHERE  NORM.KODP='+INTTOSTR(s_KODP)
 + ' AND NORM.mes='+INTTOSTR(mes)
 + ' AND NORM.god='+INTTOSTR(god));
 DM1.IBQuery1.Active := True;
 Query_Otchet.Active:=False;
 Query_otchet.ParamByName('struk').AsInteger:=vStruk_id;
 Query_otchet.ParamByName('KODP').AsInteger:=s_kodp;
 Query_otchet.MacroByName('DAT1').AsSTRING:=''''+s_DAT1+'''';
 Query_otchet.MacroByName('DAT2').AsSTRING:=''''+s_DAT2+'''';
// Query_otchet.MacroByName('Mes').AsSTRING:=inttostr(mes);
// Query_otchet.MacroByName('God').AsSTRING:=inttostr(god);
 Query_Otchet.Active:=True;
 While not Query_Otchet.Eof do
 begin
  if Length(trim(inttostr(Query_OtchetKSM_ID.AsInteger)))=1 then sT_ksm:='0000'+trim(inttostr(Query_OtchetKSM_ID.AsInteger));
  if length(trim(inttostr(Query_OtchetKSM_ID.AsInteger)))=2 then sT_ksm:='000'+trim(inttostr(Query_OtchetKSM_ID.AsInteger));
  if length(trim(inttostr(Query_OtchetKSM_ID.AsInteger)))=3 then sT_ksm:='00'+trim(inttostr(Query_OtchetKSM_ID.AsInteger));
  if length(trim(inttostr(Query_OtchetKSM_ID.AsInteger)))=4 then sT_ksm:='0'+trim(inttostr(Query_OtchetKSM_ID.AsInteger));
  if length(trim(inttostr(Query_OtchetKSM_ID.AsInteger)))=5 then sT_ksm:=trim(inttostr(Query_OtchetKSM_ID.AsInteger));
  s_kei:=Query_OtchetKEI_ID.AsInteger;
  v_keiN:=Query_OtchetKEI_IDN.AsInteger;
  s_ksm:=Query_OtchetKsm_ID.AsInteger;
  s_kART:=Query_OtchetKART_ID.AsInteger;
  v_rasm:=Query_OtchetRash_virab_period.AsFloat*dm1.Koef_per(v_kein,s_kei,s_ksm);
  DM1.IBQuery1.First;
  IF DM1.IBQuery1.Locate('ksm_id;Kraz',VarArrayOf([Query_OtchetKsm_id.AsInteger,Query_OtchetKRaz.AsInteger]),[]) THEN
   s_pereras:=v_rasm-DM1.IBQuery1.FieldByName('PLNORM').AsFloat*v_vipusk else s_pereras:=0;
  Otchet.Insert;
  Otchet.FieldByName('otstrk').AsVariant :=s_stkod;
  Otchet.FieldByName('otprod').AsVariant:= st_kodp;
  Otchet.FieldByName('otmatr').AsVariant := st_ksm;
  Otchet.FieldByName('mes').AsVariant := inttostr(mes);
  Otchet.FieldByName('otraz').AsVariant :=inttostr(Query_OtchetKraz.AsInteger);
  Otchet.FieldByName('NMAT').AsVariant := Query_OtchetNMAT.AsString;
  Otchet.FieldByName('OTKPN').AsVariant := s_spprn;
  Otchet.FieldByName('OTKVI').AsVariant := s_spvis;
  Otchet.FieldByName('Ostsn').AsVariant := Query_Otchet.FieldByName('Ostatok_begin_S').AsFloat*dm1.Koef_per(v_kein,s_kei,s_ksm);
  Otchet.FieldByName('Ostnzn').AsVariant := Query_Otchet.FieldByName('Ostatok_begin_NZ').AsFloat*dm1.Koef_per(v_kein,s_kei,s_ksm);
  Otchet.FieldByName('Prix').AsVariant := Query_OtchetPrix_period.AsFloat*dm1.Koef_per(v_kein,s_kei,s_ksm);
  Otchet.FieldByName('Rasm').AsVariant := v_rasm;
  Otchet.FieldByName('Zag').AsVariant := Query_OtchetZag_period.AsFloat*dm1.Koef_per(v_kein,s_kei,s_ksm);
  Otchet.FieldByName('Pers').AsVariant := Query_OtchetPers.AsFloat*dm1.Koef_per(v_kein,s_kei,s_ksm);
  Otchet.FieldByName('Perp').AsVariant := Query_OtchetPernz.AsFloat*dm1.Koef_per(v_kein,s_kei,s_ksm);
  Otchet.FieldByName('Ostsk').AsVariant := Query_Otchet.FieldByName('Ostatok_end_S').AsFloat*dm1.Koef_per(v_kein,s_kei,s_ksm);
  Otchet.FieldByName('Ostzk').AsVariant := Query_Otchet.FieldByName('Ostatok_end_NZ').AsFloat*dm1.Koef_per(v_kein,s_kei,s_ksm);
  Otchet.FieldByName('perem').AsVariant:=s_pereras;
  if Query_OtchetPers.AsFloat<>0 then
  begin
   V_PERE := SelectToVarIB('SELECT DOCUMENT.TIP_OP_ID '
   +' FROM document'
   +' INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
   +' WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   +' AND DOCUMENT.TIP_OP_ID=34'
   +' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
   +' AND KART.KART_ID='+ INTTOSTR(S_KART),dm1.belmed,dm1.ibt_read);
   if v_PERE <> NULL then OtchetPrs.AsVariant:=1
   else
    OtchetPrs.AsInteger:=0;
  end
  else  OtchetPrs.AsInteger:=0;

  if Query_OtchetPerNZ.AsFloat<>0 then
  begin
   V_PERE := SelectToVarIB('SELECT DOCUMENT.TIP_OP_ID '
   +' FROM document'
   +' INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
   +' WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   +' AND DOCUMENT.TIP_OP_ID=37'
   +' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
   +' AND KART.KART_ID='+ INTTOSTR(S_KART),dm1.belmed,dm1.ibt_read);
   if v_PERE <> NULL then OtchetPr.AsVariant:=1 else
    OtchetPr.AsInteger:=0;
  end
  else OtchetPr.AsInteger:=0;
  if v_vipusk<>0 then
   Otchet.FieldByName('factm').AsVariant:=v_rasm/v_vipusk
  else
   Otchet.FieldByName('factm').AsVariant:=0;
  dm1.CEH_OTCHET.First;
  if dm1.CEH_OTCHET.Locate('kart_id',VarArrayOf([Query_Otchet.FieldByName('KART_ID').AsInteger]),[]) then
  begin
   Otchet.FieldByName('rasg').AsVariant :=dm1.CEH_OtchetKol_Rasx.AsVariant;
   Otchet.FieldByName('pereg').AsVariant :=dm1.CEH_OtchetKol.AsVariant;
  end
  else
  BEGIN
   Otchet.FieldByName('rasg').AsVariant :=v_rasm;
   Otchet.FieldByName('pereg').AsVariant :=s_pereras;
  END;
// расход с на выпуск начала квартала
  Ras_Vir.First;
  if Ras_Vir.Locate('kart_id',VarArrayOf([Query_Otchet.FieldByName('KART_ID').AsInteger]),[]) then
     Otchet.FieldByName('rask').AsVariant :=Ras_Vir.FieldByName('Rash_virab_period').AsVariant
  else Otchet.FieldByName('rask').AsVariant :=v_rasm;
// ввод цены прихода
  if Otchets.Active=false then Otchets.Active:=true;
  otchets.First;
  if otchets.Locate('otstrk;otmatr',VarArrayOf([s_stkod,sT_ksm]),[]) then
   Otchet.FieldByName('otcena').AsVariant :=Otchets.FieldByName('otcena').AsVariant
  else
   Otchet.FieldByName('otcena').AsVariant :=0;
   Otchet.Post;
// добавление в NCMATRD
  Normt.first;
  if Normt.Locate('razdel_id;ksm_id',VarArrayOf([Query_Otchetrazdel_id.AsInteger,Query_OtchetKsm_id.AsInteger]),[]) then
    v_norm:=Normt.FieldByName('plnorm').asfloat
  else
    v_norm:=0;
  if Ncmatrd.Active=false then Ncmatrd.Active:=true;
  Ncmatrd.First;
  if not Ncmatrd.Locate('ncstrk;ncprod;ncraz;ncmatr',VarArrayOf([s_stkod,sT_kodp,inttostr(Query_OtchetKraz.AsInteger),sT_ksm]),[]) then
  begin
   if Length(trim(inttostr(v_kein)))=1 then sv_kein:='00'+trim(inttostr(v_kein))+' ';
   if Length(trim(inttostr(v_kein)))=2 then sv_kein:='0'+trim(inttostr(v_kein))+' ';
   if Length(trim(inttostr(v_kein)))=3 then sv_kein:=trim(inttostr(v_kein))+' ';
   if Length(trim(inttostr(S_keiP)))=1 then sv_keiP:='00'+trim(inttostr(S_keiP))+' ';
   if Length(trim(inttostr(S_keiP)))=2 then sv_keiP:='0'+trim(inttostr(S_keiP))+' ';
   if Length(trim(inttostr(S_keiP)))=3 then sv_keiP:=trim(inttostr(S_keiP))+' ';
   Ncmatrd.Append;
   Ncmatrd.FieldByName('ncstrk').AsVariant :=s_stkod;
   Ncmatrd.FieldByName('ncprod').AsVariant:= st_kodp;
   Ncmatrd.FieldByName('ncmatr').AsVariant := st_ksm;
   Ncmatrd.FieldByName('ncraz').AsVariant :=inttostr(Query_OtchetKraz.AsInteger);
   Ncmatrd.FieldByName('NMATs').AsVariant := Query_OtchetNMAT.AsString;
   Ncmatrd.FieldByName('ncKPN').AsVariant := s_spprn;
   Ncmatrd.FieldByName('ncKVI').AsVariant := s_spvis;
   Ncmatrd.FieldByName('nccena').AsVariant :=Otchets.FieldByName('otcena').AsVariant;
   Ncmatrd.FieldByName('ncediz').AsVariant := sv_keip;
   Ncmatrd.FieldByName('ncedizm').AsVariant := sv_keiN;
   Ncmatrd.FieldByName('ncnrds').AsVariant :=v_norm;
   Ncmatrd.Post;
  end
  else
  begin
   Ncmatrd.Edit;
   Ncmatrd.FieldByName('ncnrds').AsVariant :=v_norm;
   Ncmatrd.Post;
  end;
  Query_Otchet.Next;
 end;

end;

procedure TFPerOtchet.ToolButton1Click(Sender: TObject);
begin
 dm1.ApplyUpdatesDoc;
end;

procedure TFPerOtchet.FormShow(Sender: TObject);
begin
 if FPech_Vibor=nil then FPech_Vibor:=TfPech_Vibor.Create(Application);
 FPech_Vibor.ShowModal;
 if FPech_Vibor.ModalResult=mrOk then
 begin
  While not FPech_Vibor.PechVipusk.Eof do
  begin
   if FPech_Vibor.PechVipuskVib.AsBoolean then
   begin

   end;
  end;
 END;
end;

procedure TFPerOtchet.FormCreate(Sender: TObject);
begin
//First_vxod:=true;
end;

procedure TFPerOtchet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm1.VoprosWriteDoc;
//mes:=mes_vib;
//god:=god_vib;
end;


procedure TFPerOtchet.ToolButton4Click(Sender: TObject);
 var
 S_DATN: string;
 S_DATk: string;
 v_vipuskg: double;
 v_vipuskk: double;
begin
 IF (VDOCUMENT_ID<>0) and (not DM1.KARTV.Eof) THEN
 begin
  Splash := ShowSplashWindow(AniBmp1,
 'Передача данных из цеха в АСУ. Подождите, пожалуйста...', True, nil);
{  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT STRUK.STKOD ');
  DM1.IBQuery1.SQL.Add('FROM STRUK ');
  DM1.IBQuery1.SQL.Add('WHERE STRUK.STRUK_ID='+INTTOSTR(VsTRUK_ID));
  DM1.IBQuery1.Active := True;
  S_STKOD:=dm1.IBQuery1.FieldByName('STKOD').AsString;}
  regot.Filter:='CEX='+''''+S_STKOD+''''+' AND MES='+INTTOSTR(MES);
  regot.Filtered:=TRUE;
  regot.Open;
  IF REGOT.Eof THEN
  BEGIN
   regot.Insert;
   regotdatcex.AsString:=datetostr(date);
   regotCex.AsString:=s_stkod;
   regotMes.AsInteger:=mes;
   regot.Post;
  END
  ELSE
  BEGIN
   regot.Last;
   IF regotDATACY.AsString='' THEN
   BEGIN
    regot.Edit;
    regotdatcex.AsString:=datetostr(date);
    regot.Post;
   END
   ELSE
   BEGIN
    Splash.Free;
    MessageDlg(' Данные НЕ переданы, т.к. они были уже переданы и использованы!', mtWarning, [mbOK], 0);
    Abort;
   END;
  END;
  if Otchets.Active=false then Otchets.Active:=true;
  Otchet.Close;
  otchet.Filter:='otstrk='+''''+s_stkod+'''';
  Otchet.Open;
  otchet.Filtered:=true;
  otchet.First;
  while (not otchet.Eof) do otchet.Delete;
  if Spisok.Active=false then Spisok.Active:=true;
  Spisok.Close;
  Spisok.Filter:='otstrk='+''''+s_stkod+'''';
  Spisok.Open;
  Spisok.Filtered:=true;
  Spisok.First;
  while (not Spisok.Eof) do Spisok.Delete;
  DM1.KARTV.First;
  while not DM1.KARTV.Eof do
  begin
   S_KODP:=DM1.KARTVKSM_ID.ASINTEGER;
   v_vipusk:=dm1.KartVKOL_PRIH.AsFloat;
   s_spprn:=INTTOSTR(DM1.KARTVSpprn.AsInteger);
   s_spvis:=inttostr(DM1.KARTVSpvis.AsInteger);
   s_keip:=DM1.KARTVKei_id.AsInteger;
   S_DATN:='01.01.'+INTTOSTR(GOD);
   if (mes<4)and (mes>=1)  then S_DATk:='01.01.'+INTTOSTR(GOD);
   if (mes<7)and (mes>3)  then S_DATk:='01.04.'+INTTOSTR(GOD);
   if (mes<10)and (mes>6)  then S_DATk:='01.07.'+INTTOSTR(GOD);
   if (mes<=12)and (mes>9)  then S_DATk:='01.10.'+INTTOSTR(GOD);
// расход с начала года
   dm1.CEH_OTCHET.Active:=FALSE;
   dm1.CEH_OTCHET.ParamByName('MES').AsInteger:=mes;
   dm1.CEH_OTCHET.ParamByName('GOD').AsInteger:=GOD;
   dm1.CEH_OTCHET.Active:=TRUE;
// нормы

   Normt.Active := False;
   Normt.SQL.Clear;
   Normt.SQL.Add('SELECT norm.ksm_id,norm.Kraz,razdel.razdel_id,norm.plnorm');
   Normt.SQL.Add(' FROM  norm');
   Normt.SQL.Add(' inner join razdel on (norm.kraz=razdel.kraz)');
   Normt.SQL.Add(' where norm.mes='+inttostr(mes)+' and norm.god='+inttostr(god));
   Normt.SQL.Add(' and norm.kodp='+inttostr(s_kodp));
   Normt.Active :=true;
// расход на выработку с начала квартала
   Ras_Vir.Active := False;
   Ras_Vir.SQL.Clear;
   Ras_Vir.SQL.Add('SELECT DISTINCT ost.ksm_id,ost.razdel_id,ost.KART_ID,');
   Ras_Vir.SQL.Add('ost.rash_virab_period');
   Ras_Vir.SQL.Add(' FROM  SELECT_OB_VED ('+''''+s_datk+''''+','+''''+s_dat2+''''+','+inttostr(s_kodp)+') ost');
   Ras_Vir.Active :=true;
//выпуск с начала года
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng');
   DM1.IBQuery1.SQL.Add(' FROM KARTv');
   DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=36'
   + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
   + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then  V_VIPUSKG:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat
   ELSE V_VIPUSKG:=0;
//выпуск с начала квартала
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_k');
   DM1.IBQuery1.SQL.Add(' FROM KARTv');
   DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=36'
   + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
   + ' AND Document.Date_op between '+''''+s_datk+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then  V_VIPUSKk:=DM1.IBQuery1.FieldByName('VIPUSK_k').AsFloat
   ELSE V_VIPUSKk:=0;
   if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger)))=1 then sT_kodp:='00000'+trim(inttostr(dm1.KartvKSM_ID.AsInteger));
   if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger)))=2 then sT_kodp:='0000'+trim(inttostr(dm1.KartvKSM_ID.AsInteger));
   if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger)))=3 then sT_kodp:='000'+trim(inttostr(dm1.KartvKSM_ID.AsInteger));
   if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger)))=4 then sT_kodp:='00'+trim(inttostr(dm1.KartvKSM_ID.AsInteger));
   if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger)))=5 then sT_kodp:='0'+trim(inttostr(dm1.KartvKSM_ID.AsInteger));
   if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger)))=6 then sT_kodp:=trim(inttostr(dm1.KartvKSM_ID.AsInteger));
   prizpr.Open;
   if prizpr.Locate('sprod',st_kodp,[]) then
    prizpr.Edit
   else
   begin
    prizpr.Insert;
    prizprSprod.AsString:=sT_kodp;
    prizprSpceh.AsString:=s_stkod;
    prizprSpprn.AsString:=s_spprn;
    prizprSpvis.AsString:=s_spvis;
   end;
   prizprPrgod.AsString:=inttostr(god);
   if mes<10 then prizprPrmes.AsString:=' '+inttostr(mes) else prizprPrmes.AsString:=inttostr(mes);
   prizprPrg1.AsVariant:=dm1.KartVKOL_PRIH.AsFloat;
   prizprKolg1.AsVariant:=v_vipuskg;
   prizprKolgs1.AsVariant:=v_vipuskg-dm1.KartVKOL_PRIH.AsFloat;
   prizprKolk1.AsVariant:=v_vipuskk;
   prizprKolks1.AsVariant:=v_vipuskk-dm1.KartVKOL_PRIH.AsFloat;
   prizpr.Post;
// формирование списка препаратов для передачи
   Spisok.Append;
   spisokOtprod.AsString:=sT_kodp;
   spisokOtstrk.AsString:=s_stkod;
   spisokNmat.AsString:=DM1.KARTVNmat.AsString;
   spisokMes.AsInteger:=mes;
   spisokGod.AsInteger:=god;
   OTCHET_ST;
   DM1.KARTV.Next;
  end;
  Splash.Free;
 end
 else
 begin
  MessageDlg('Нет отчетов за заданный месяц !', mtWarning, [mbOK], 0);
  Abort;
 end;
end;

end.
