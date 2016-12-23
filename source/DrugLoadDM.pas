unit DrugLoadDM;

interface

uses SprFormul, ediz, DBDM,
  SysUtils, Classes, kbmMemTable, DB, IBCustomDataSet, IBQuery, RxIBQuery,
  IBDatabase, Dialogs, IBStoredProc, IBUpdateSQL, IBUpdSQLW, Variants, UtilRIB,
  Controls;

type
  TFDMDrugLoad = class(TDataModule)
    ds_texGur: TDataSource;
    ostceh: TIBQuery;
    ostcehKSM_ID: TIntegerField;
    ostcehOSTATOK_END_S: TFMTBCDField;
    ostcehKEI_ID: TSmallintField;
    ostcehNMAT: TIBStringField;
    ostcehNEIS: TIBStringField;
    q_ost: TRxIBQuery;
    q_ostKART_ID: TIntegerField;
    q_ostKEI_ID: TSmallintField;
    q_ostKSM_ID: TIntegerField;
    q_ostKODP: TIntegerField;
    q_ostNEIS_OST: TIBStringField;
    q_ostRAZDEL_ID: TSmallintField;
    q_ostNMAT: TIBStringField;
    q_ostOSTATOK_END_S: TFMTBCDField;
    q_ostOSTATOK_END_NZ: TFMTBCDField;
    q_ostOSTATOK_BEGIN_S: TFMTBCDField;
    q_ostOSTATOK_BEGIN_NZ: TFMTBCDField;
    q_ostKRAZ: TSmallintField;
    q_ostZAG_PERIOD: TFMTBCDField;
    q_ostPRIX_PERIOD: TFMTBCDField;
    q_ostPEREDANO_RASH_S: TFMTBCDField;
    q_ostPEREDANO_RASH_NZ: TFMTBCDField;
    q_ostRASH_VIRAB_PERIOD: TFMTBCDField;
    q_ostZAG: TFMTBCDField;
    q_ostPRIX: TFMTBCDField;
    q_ostPEREDANO_PRIH_NZ: TFMTBCDField;
    q_ostXARKT: TIBStringField;
    q_ostGOST: TIBStringField;
    q_norm: TRxIBQuery;
    q_normPLNORM: TFMTBCDField;
    q_normKODP: TIntegerField;
    q_normKEIN: TSmallintField;
    q_normKSM_ID: TIntegerField;
    q_normKRAZ: TSmallintField;
    q_normMES: TSmallintField;
    q_normGOD: TSmallintField;
    q_normNAZPRPF: TIBStringField;
    q_normNMAT: TIBStringField;
    q_normXARKT: TIBStringField;
    q_normGOST: TIBStringField;
    q_normKEI_ID: TSmallintField;
    q_normNEIS: TIBStringField;
    q_normRAZDEL_ID: TSmallintField;
    q_prixKart: TRxIBQuery;
    q_prixKartDOC_ID: TIntegerField;
    q_prixKartSTROKA_ID: TIntegerField;
    q_prixKartKSM_ID: TIntegerField;
    q_prixKartCENA: TIBBCDField;
    q_prixKartKOL_PRIH: TFMTBCDField;
    q_prixKartCENA_VP: TIBBCDField;
    q_prixKartNDS: TIBBCDField;
    q_prixKartSUM_NDS: TIBBCDField;
    q_prixKartSUM_NDS_VP: TIBBCDField;
    q_prixKartKOL_RASH: TFMTBCDField;
    q_prixKartKART_ID: TIntegerField;
    q_prixKartORG_ID_BRAK: TIntegerField;
    q_prixKartOSNOV_BRAK_ID: TSmallintField;
    q_prixKartUSER_NAME: TIBStringField;
    q_prixKartDATE_TIME_UPDATE: TDateTimeField;
    q_prixKartPARENT: TIntegerField;
    q_prixKartRAZDEL_ID: TSmallintField;
    q_prixKartSKIDKA: TIBBCDField;
    q_prixKartKEI_ID: TSmallintField;
    q_prixKartSUMMA: TIBBCDField;
    q_prixKartSUMMA_VP: TIBBCDField;
    q_prixKartSUM_SKID: TIBBCDField;
    q_prixKartSUM_SKID_VP: TIBBCDField;
    q_prixKartSUMMA_S_NDS: TIBBCDField;
    q_prixKartSUMMA_S_NDS_VP: TIBBCDField;
    q_prixKartTAG: TIntegerField;
    q_prixKartKOL_PRIH_EDIZ: TFloatField;
    q_prixKartKOL_RASH_EDIZ: TFloatField;
    q_prixKartTIP_OP_ID: TSmallintField;
    q_prixKartTIP_DOK_ID: TSmallintField;
    q_prixKartTAG1: TIntegerField;
    q_prixKartTOV_SKIDKA: TSmallintField;
    q_prixKartKEI_ID2: TSmallintField;
    q_prixKartCENA_PRICE: TIBBCDField;
    q_prixKartSKID_CEN: TIBBCDField;
    q_prixKartCOMMENT: TIBStringField;
    q_prixKartDOP_SUM: TIBBCDField;
    q_prixKartDEBET: TIBStringField;
    q_prixKartDTYPESUB_ID: TSmallintField;
    q_prixKartDCODE: TIntegerField;
    q_prixKartCREDIT: TIBStringField;
    q_prixKartCTYPESUB_ID: TSmallintField;
    q_prixKartCCODE: TIntegerField;
    q_prixKartSROK: TSmallintField;
    q_prixKartDATE_VID: TDateField;
    q_prixKartDOP_RASH: TIBBCDField;
    q_prixKartDOP_RASH_ID: TSmallintField;
    q_prixKartNORM_RASH: TFMTBCDField;
    q_prixKartKOL_RAB: TFMTBCDField;
    upd_prixKart: TIBUpdateSQLW;
    q_prixDoc: TRxIBQuery;
    q_prixDocNDOK: TIBStringField;
    q_prixDocDOC_ID: TIntegerField;
    q_prixDocPRIZ_ID: TSmallintField;
    q_prixDocTIP_OP_ID: TSmallintField;
    q_prixDocTIP_DOK_ID: TSmallintField;
    q_prixDocDATE_DOK: TDateField;
    q_prixDocDOK_OSN_ID: TIntegerField;
    q_prixDocSTRUK_ID: TSmallintField;
    q_prixDocVP_ID: TSmallintField;
    q_prixDocKPV: TFMTBCDField;
    q_prixDocKLIENT_ID: TIntegerField;
    q_prixDocSUM_BRB: TIBBCDField;
    q_prixDocSUM_ISP1: TIBBCDField;
    q_prixDocSUM_ISP2: TIBBCDField;
    q_prixDocSUM_VP: TIBBCDField;
    q_prixDocSUM_ISP1_VP: TIBBCDField;
    q_prixDocSUM_ISP2_VP: TIBBCDField;
    q_prixDocNDS: TIBBCDField;
    q_prixDocSUM_NDS: TIBBCDField;
    q_prixDocSUM_NDS_VP: TIBBCDField;
    q_prixDocDATE_OP: TDateField;
    q_prixDocDATE_VVOD: TDateTimeField;
    q_prixDocZADACHA_ID: TIBStringField;
    q_prixDocUSER_NAME: TIBStringField;
    q_prixDocDOV: TIntegerField;
    q_prixDocDATE_TIME_UPDATE: TDateTimeField;
    q_prixDocJORN_ID: TSmallintField;
    q_prixDocRCHET_ID: TIntegerField;
    q_prixDocTAG: TIntegerField;
    q_prixDocKPV_OLD: TFMTBCDField;
    q_prihSum: TRxIBQuery;
    q_prihSumKSM_ID: TIntegerField;
    q_prihSumRAZDEL_ID: TSmallintField;
    q_prihSumPRIHSUM: TFloatField;
    q_ostatki: TRxIBQuery;
    q_ostatkiSTRUK_ID: TIntegerField;
    q_ostatkiKSM_ID: TIntegerField;
    q_ostatkiOT_S: TFMTBCDField;
    q_ostatkiKEI_ID: TSmallintField;
    q_ostatkiRAZDEL_ID: TSmallintField;
    q_ostatkiKSM_IDPR: TIntegerField;
    q_ostatkiSTRUK_ID_RELA: TIntegerField;
    q_ostatkiKART_ID: TIntegerField;
    q_ostatkiSERIA_ID: TIntegerField;
    q_ostatkiACCOUNT: TIBStringField;
    q_ostatkiMES: TSmallintField;
    q_ostatkiGOD: TSmallintField;
    upd_ostatki: TIBUpdateSQLW;
    Matrop: TIBQuery;
    MatropNMAT: TIBStringField;
    MatropXARKT: TIBStringField;
    MatropKEI_ID: TSmallintField;
    MatropKSM_ID: TIntegerField;
    MatropNEIS: TIBStringField;
    MatropPRMAT: TIBStringField;
    MatropGOST: TIBStringField;
    q_seria: TRxIBQuery;
    q_seriaSERIA_ID: TIntegerField;
    q_seriaKSM_ID: TIntegerField;
    q_seriaSERIA: TIBStringField;
    q_seriaSROK_GODN: TDateField;
    q_seriaSERTIF: TIBStringField;
    q_seriaDATE_SERTIF: TDateField;
    q_seriaPASPORT: TIBStringField;
    q_seriaDATE_PASPORT: TDateField;
    q_seriaKOL_SERIA: TFMTBCDField;
    q_seriaDATE_VIPUSK: TDateField;
    q_seriaFORMA_VIPUSK: TIBStringField;
    q_seriaKEI_ID: TSmallintField;
    q_seriaDATE_TIME_UPDATE: TDateTimeField;
    q_seriaUSER_NAME: TIBStringField;
    q_seriaSHEMA: TIBStringField;
    q_seriaKODTN: TIBStringField;
    q_seriaDATE_ZAG: TDateField;
    q_seriaFIO_RASH: TIBStringField;
    q_seriaFIO_MASTER: TIBStringField;
    q_seriaCOMMENT: TIBStringField;
    q_seriaOB_ZAG: TFloatField;
    q_seriaVLAG_TM: TFloatField;
    q_seriaKOD_TM: TIntegerField;
    q_seriaKOL_TM: TFloatField;
    IBUpdateSeria: TIBUpdateSQLW;
    q_ostatki11: TRxIBQuery;
    q_ostatki11KEI_ID: TSmallintField;
    q_ostatki11RAZDEL_ID: TSmallintField;
    q_ostatki11KSM_ID: TIntegerField;
    q_ostatki11KSM_IDPR: TIntegerField;
    q_ostatki11MES: TSmallintField;
    q_ostatki11GOD: TSmallintField;
    q_ostatki11ONM_FD: TFMTBCDField;
    q_ostatki11ONM_NZ: TFMTBCDField;
    q_ostatki11ONM_S: TFMTBCDField;
    q_ostatki11OT_FD: TFMTBCDField;
    q_ostatki11OT_NZ: TFMTBCDField;
    q_ostatki11OT_S: TFMTBCDField;
    q_ostatki11SERIA_ID: TIntegerField;
    q_ostatki11STRUK_ID: TIntegerField;
    q_ostatki11USER_NAME: TIBStringField;
    q_ostatki11KOL_TRANS: TFloatField;
    q_ostatki11KOL_GRP: TFloatField;
    q_ostatki11VES_TRANS: TIBBCDField;
    q_ostatki11NMAT: TIBStringField;
    q_ostatki11NEIS: TIBStringField;
    q_ostatki11KART_ID: TIntegerField;
    q_ostatki11OT_DOKUM: TFloatField;
    q_ostatki11ONM_DOKUM: TFMTBCDField;
    q_ostatki11NOMU_ID_TRANS: TSmallintField;
    q_ostatki11NOMU_ID_GRP: TSmallintField;
    q_ostatki11VOL_TRANS: TFMTBCDField;
    OstatkiUpdate: TIBUpdateSQLW;
    AddSeria: TIBStoredProc;
    Add_Ostatki: TIBStoredProc;
    ADD_KartDok: TIBStoredProc;
    mem_texGur: TkbmMemTable;
    mem_texGurKART_ID: TIntegerField;
    mem_texGurKEI_ID_KART: TIntegerField;
    mem_texGurKEI_ID_NORM: TIntegerField;
    mem_texGurKEI_ID_OST_PREP: TIntegerField;
    mem_texGurKEI_ID_OST_CEX: TIntegerField;
    mem_texGurRAZDEL_ID: TIntegerField;
    mem_texGurKSM_ID: TIntegerField;
    mem_texGurSTROKA_ID: TIntegerField;
    mem_texGurSERIA_ID: TIntegerField;
    mem_texGurDOC_ID: TIntegerField;
    mem_texGurDATE_DOK: TDateField;
    mem_texGurNEIS: TStringField;
    mem_texGurNDOK: TStringField;
    mem_texGurNMAT: TStringField;
    mem_texGurKOL_RASH_EDIZ: TFloatField;
    mem_texGurPLNORM: TFloatField;
    mem_texGurOSTATOK_END_S: TFloatField;
    mem_texGurOSTATOK_END_NZ: TFloatField;
    mem_texGurOSTATOK_END_S_CEX: TFloatField;
    mem_texGurKRAZ: TIntegerField;
    mem_texGurZAG_ALL: TFloatField;
    mem_texGurDELETE: TBooleanField;
    mem_texGurADD: TBooleanField;
    mem_texGurOSTATOK_BEGIN_S: TFloatField;
    mem_texGurOSTATOK_BEGIN_NZ: TFloatField;
    mem_texGurPRIX: TFloatField;
    mem_texGurPEREDANO_PRIH_NZ: TFloatField;
    mem_texGurPRIX_PERIOD: TFloatField;
    mem_texGurZAG: TFloatField;
    mem_texGurZAG_PERIOD: TFloatField;
    mem_texGurRASH_VIRAB_PERIOD: TFloatField;
    mem_texGurPEREDANO_RASH_S: TFloatField;
    mem_texGurPEREDANO_RASH_NZ: TFloatField;
    mem_texGurCHANGED: TBooleanField;
    mem_texGurXARKT: TStringField;
    mem_texGurGOST: TStringField;
    mem_texGurKSM_ID_PREP: TIntegerField;
    mem_texGurOLD_DATE_DOK: TDateField;
    mem_texGurUSER_NAME: TStringField;
    q_kart: TRxIBQuery;
    q_kartDOC_ID: TIntegerField;
    q_kartSTROKA_ID: TIntegerField;
    q_kartKART_ID: TIntegerField;
    q_kartKOL_RASH: TFMTBCDField;
    q_kartKOL_RASH_EDIZ: TFloatField;
    q_kartRAZDEL_ID: TSmallintField;
    q_kartKEI_ID: TSmallintField;
    q_kartKSM_ID: TIntegerField;
    q_kartNEIS: TIBStringField;
    q_kartNMAT: TIBStringField;
    q_kartKRAZ: TSmallintField;
    q_kartXARKT: TIBStringField;
    q_kartGOST: TIBStringField;
    q_kartTIP_OP_ID: TSmallintField;
    q_kartTIP_DOK_ID: TSmallintField;
    q_kartKOL_PRIH_EDIZ: TFloatField;
    q_kartUSER_NAME: TIBStringField;
    upd_kart: TIBUpdateSQLW;
    q_doc: TRxIBQuery;
    q_docDOC_ID: TIntegerField;
    q_docNDOK: TIBStringField;
    q_docDATE_DOK: TDateField;
    q_docSTRUK_ID: TSmallintField;
    q_docKLIENT_ID: TIntegerField;
    q_docDATE_OP: TDateField;
    q_docTIP_OP_ID: TSmallintField;
    q_docTIP_DOK_ID: TSmallintField;
    upd_doc: TIBUpdateSQLW;
    razdel: TIBQuery;
    razdelRAZDEL_ID: TSmallintField;
    razdelKODRAZ: TIBStringField;
    razdelNAMRAZ: TIBStringField;
    razdelKRAZ: TSmallintField;
    mem_texGurTIP_OP_ID: TIntegerField;
    mem_texGurTIP_DOK_ID: TIntegerField;
    mem_texGurSERIA: TStringField;
    mem_texGurOLD_SERIA_ID: TIntegerField;
    mem_texGurOLD_SERIA: TStringField;
    mem_texGurKOL_RASH_VIRAB: TFloatField;
    mem_texGurDATE_DOK_RASH: TDateField;
    mem_texGurSTROKA_ID_RASH: TIntegerField;
    mem_texGurKOL_PRIH: TFloatField;
    q_kartKOL_PRIH: TFMTBCDField;
    mem_texGurSTROKA_ID_PRIH: TIntegerField;
    q_empyDoc: TRxIBQuery;
    upd_emptyDoc: TIBUpdateSQLW;
    q_empyDocDOC_ID: TIntegerField;
    q_empyDocDOC_ID1: TIntegerField;
    procedure mem_texGurBeforePost(DataSet: TDataSet);
    procedure mem_texGurKSM_IDValidate(Sender: TField);
    procedure q_seriaBeforeInsert(DataSet: TDataSet);
    procedure q_seriaNewRecord(DataSet: TDataSet);
    procedure q_ostatkiBeforeInsert(DataSet: TDataSet);
    procedure q_ostatkiNewRecord(DataSet: TDataSet);
    procedure q_kartBeforeInsert(DataSet: TDataSet);
    procedure q_kartNewRecord(DataSet: TDataSet);
    procedure q_docBeforeInsert(DataSet: TDataSet);
    procedure q_docNewRecord(DataSet: TDataSet);
    procedure mem_texGurKRAZValidate(Sender: TField);
    procedure q_ostatki1BeforeInsert(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure mem_texGurKOL_RASH_EDIZChange(Sender: TField);

  private
//    login, password, serverAddr, role : string;
    m_seriaId, m_ksmId, m_kartId, m_ksmIdPrep, m_keiId, m_year, m_month,
    m_razdelId, m_strukId, m_strokaId, m_docId, m_tipOpId, m_tipDokId : integer;
    seria : string;
    m_dateDok : TDate;

//    procedure startReadTrans;

  public
//    procedure setDB(serverAddr, login, password, role : string); overload;
//    procedure setDB(var db : TIBDatabase);
//    function connectToDB() : boolean;
//    function disconnectFromDB() : boolean;
//    procedure commitWriteTrans(retaining : boolean);
//    procedure startWriteTrans;
    function getTochn(ksmIdPrep, ksm_id : integer) : integer;
    function Koef_per(kei_in : integer; kei_from : integer; ksm : integer; var db : TdDM) : double;
    procedure delTexGurRecord;
    procedure delAllTexGurRecords;
    procedure addTexGurRecord(month : integer; dateEnd : TDate);
    procedure setDefaultDateDok(curMonth : integer; dateEnd : TDate);
    procedure changeKeiId(keiId : integer; neis : string);
    procedure changeKsmId(ksmId : integer; nmat : string);
    procedure changeRazdel(razdelId, kraz : integer);
    procedure changeSeria(seria: string; seriaId: integer);

    property ksmId : integer read m_ksmId write m_ksmId;
    property ksmIdPrep : integer read m_ksmIdPrep write m_ksmIdPrep;
    property keiId : integer read m_keiId write m_keiId;
    property razdelId : integer read m_razdelId write m_razdelId;
    property year : integer read m_year write m_year;
    property month : integer read m_month write m_month;
    property strukId : integer read m_strukId write m_strukId;
    property seriaId : integer read m_seriaId write m_seriaId;
    property tipOpId : integer read m_tipOpId write m_tipOpId;
    property tipDokId : integer read m_tipDokId write m_tipDokId;
    property dateDok : TDate read m_dateDok write m_dateDok;

  end;

implementation

{$R *.dfm}

//procedure TFDMDrugLoad.setDB(serverAddr, login, password, role : string);
//begin
//  db.Close;
//  db.Params.Clear;
//  db.Params.Add('lc_ctype=WIN1251');
//  db.Params.Add('sql_role_name=' + role);
//  db.Params.Add('user_name=' + login);
//  db.Params.Add('password=' + AnsiLowerCase(password));
//  db.LoginPrompt := false;
//  db.DatabaseName := serverAddr;
//  self.login := login;
//  self.password := password;
//  self.serverAddr := serverAddr;
//  self.role := role;
//end;

//procedure TFDMDrugLoad.setDB(var db : TIBDatabase);
//begin
//  self.db := db;
//end;

//function TFDMDrugLoad.connectToDB() : boolean;
//begin
//  result := false;
//  try
//    db.Open;
//    startReadTrans;
//    if (db.Connected) and (trans_read.Active) then
//      result := true;
//  except
//    ShowMessage('У пользователя ' + login + ' нет доступа к базе данных');
//  end;
//end;

procedure TFDMDrugLoad.DataModuleDestroy(Sender: TObject);
begin
  mem_texGur.EmptyTable;
  mem_texGur.Close;
end;

//function TFDMDrugLoad.disconnectFromDB() : boolean;
//begin
//  result := false;
//  try
//    if (trans_read.InTransaction) then
//      trans_read.CommitRetaining;
//    trans_read.Active := false;
//    db.Close;
//    result := not db.Connected;
//  except
//
//  end;
//end;

//procedure TFDMDrugLoad.commitWriteTrans(retaining : boolean);
//begin
//  startWriteTrans;
//  if (retaining) then
//    trans_write.CommitRetaining
//  else
//    trans_write.Commit;
//end;

//procedure TFDMDrugLoad.startWriteTrans;
//begin
//  if (not trans_write.Active) then
//    trans_write.StartTransaction;
//end;

function TFDMDrugLoad.getTochn(ksmIdPrep, ksm_id : integer) : integer;
begin
  if (FSprFormul = nil) then
    FSprFormul := TfSprFormul.Create(self);
  if (FSprFormul.Ceh_Normz.Active = true) then
    FSprFormul.CEH_NormZ.Close;
  FSprFormul.CEH_NormZ.MacroByName('SORT').AsString := '';
  FSprFormul.CEH_NormZ.MacroByName('USL').AsString := ' Where CEH_NORMZ.KSM_ID_PR = '
                                                      + INTTOSTR(ksmIdPrep)
                                                      + ' and CEH_NORMZ.KSM_ID_MAt = '
                                                      + INTTOSTR(ksm_id);
  FSprFormul.CEH_NormZ.Open;
  if (not FSprFormul.CEH_NORMZ.eof) then
    if (FSprFormul.CEH_NORMZDecznak.AsVariant <> null)  then
      result := -FSprFormul.CEH_NORMZDecznak.asinteger
    else
      result := -3
  else
      result := -3;
end;

function TFDMDrugLoad.Koef_per(kei_in : integer; kei_from : integer; ksm : integer; var db : TdDM) : double;
var
  vKoef : variant;
begin
  if (kei_in <> kei_from) and (kei_in <> 0) and (kei_from <> 0) then
  begin
// Коэффициент перевода  из одной единицы измерения в другую
    vKoef := SelectToVarIB('SELECT KOEFPR.KOEF FROM KOEFPR WHERE KOEFPR.KEIR = '
                           + IntToStr(kei_in) + ' AND KOEFPR.KEI_ID = '
                           + IntToStr(kei_from) + ' AND KOEFPR.KSM_ID = 0 AND KOEFPR.KOEF <> 0 ',
                           db.db, db.trans_read);
    if (vKoef = NULL) then
    begin
      vKoef := SelectToVarIB('SELECT KOEFPR.KOEF FROM KOEFPR WHERE KOEFPR.KEIR = '
                             + IntToStr(kei_in) + ' AND KOEFPR.KEI_ID = '
                             + IntToStr(kei_from) + ' AND KOEFPR.KSM_ID =' + IntToStr(Ksm)
                             + ' AND KOEFPR.KOEF <> 0 ',
                             db.db, db.trans_read);
      if (vKoef = NULL) then
        vKoef := 1;
    end;
    result := vKoef;
  end
  else
    result := 1;
end;



procedure TFDMDrugLoad.mem_texGurBeforePost(DataSet: TDataSet);
begin
  If (mem_texGurRazdel_id.AsInteger = 0) then
  begin
    MessageDlg('Введите раздел!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If (mem_texGur.FieldByName('ksm_id').AsInteger = 0) then
  begin
    MessageDlg('Введите код сырья!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If (mem_texGur.FieldByName('kei_id_kart').AsInteger = 0) and
      (mem_texGur.FieldByName('kei_id_norm').AsInteger = 0) and
      (mem_texGur.FieldByName('kei_id_ost_prep').AsInteger = 0) and
      (mem_texGur.FieldByName('kei_id_ost_cex').AsInteger = 0) then
  begin
    MessageDlg('Введите единицу измерения!', mtWarning, [mbOK], 0);
    Abort;
  end;
end;

procedure TFDMDrugLoad.mem_texGurKOL_RASH_EDIZChange(Sender: TField);
begin
  mem_texGurKOL_PRIH.AsFloat := mem_texGurKOL_RASH_EDIZ.AsFloat;
end;

procedure TFDMDrugLoad.mem_texGurKRAZValidate(Sender: TField);
begin
  razdel.Open;
  if (razdel.Locate('kraz', mem_texGurKraz.AsInteger,[])) then
    mem_texGurRazdel_id.AsInteger := razdelRazdel_id.AsInteger
  else
    showMessage('Нет такого кода! Воспользуйтесь справочником!');
end;

procedure TFDMDrugLoad.mem_texGurKSM_IDValidate(Sender: TField);
begin
  Matrop.close;
  Matrop.ParamByName('ksm').AsInteger := mem_texGur.FieldByName('Ksm_Id').AsInteger;
  Matrop.open;
  if (not Matrop.eof) then
  begin
    mem_texGur.FieldByName('Nmat').AsString := Matrop.FieldByName('Nmat').AsString;
    mem_texGur.FieldByName('Kei_Id_kart').AsInteger := Matrop.FieldByName('Kei_id').AsInteger;
    mem_texGurNEIS.AsString := Matrop.FieldByName('Neis').AsString;
  end
  else
    showMessage('Нет такого кода! Воспользуйтесь справочником!');
end;

procedure TFDMDrugLoad.q_ostatkiBeforeInsert(DataSet: TDataSet);
begin
  Add_Ostatki.ExecProc;
  m_kartId := Add_Ostatki.Params.Items[0].AsInteger;
end;

procedure TFDMDrugLoad.q_ostatkiNewRecord(DataSet: TDataSet);
begin
  q_ostatki.FieldByName('Kart_Id').AsInteger := m_kartId;
  q_ostatki.FieldByName('Ksm_Id').AsInteger := m_ksmId;
  IF (m_razdelId <> 0) then
    q_ostatki.FieldByName('razdel_id').AsInteger := m_razdelId;
  IF (m_ksmIdPrep <> 0) and (m_ksmIdPrep <> m_ksmId) then
    q_ostatki.FieldByName('ksm_idpr').AsInteger := m_ksmIdPrep;
  IF (m_seriaId <> 0) then
    q_ostatki.FieldByName('Seria_id').AsInteger := m_seriaId;
  q_ostatki.FieldByName('Kei_Id').AsInteger := m_keiId;
  q_ostatki.FieldByName('Struk_Id').AsInteger := m_strukId;
  q_ostatki.FieldByName('Mes').AsInteger := m_month;
  q_ostatki.FieldByName('God').AsInteger := m_year;
end;

procedure TFDMDrugLoad.q_docBeforeInsert(DataSet: TDataSet);
begin
  Add_KartDok.StoredProcName := 'ADD_DOCUMENT';
  Add_KartDok.ExecProc;
  m_docId := Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFDMDrugLoad.q_docNewRecord(DataSet: TDataSet);
begin
  q_docDOC_ID.AsInteger := m_docId;
  q_docTIP_OP_ID.AsInteger := m_tipOpId;
  q_docTIP_DOK_ID.AsInteger := m_tipDokId;
  q_docSTRUK_ID.AsInteger := m_strukId;
  q_docDATE_DOK.AsDateTime := m_dateDok;
  q_docDATE_OP.AsDateTime := m_dateDok;
  q_docKLIENT_ID.AsInteger := m_ksmIdPrep;
end;

procedure TFDMDrugLoad.q_kartBeforeInsert(DataSet: TDataSet);
begin
  Add_KartDok.StoredProcName := 'ADD_KART';
  Add_KartDok.ExecProc;
  m_strokaId := Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFDMDrugLoad.q_kartNewRecord(DataSet: TDataSet);
begin
  q_kartDOC_ID.AsInteger := q_docDOC_ID.AsInteger;
  q_kartSTROKA_ID.AsInteger := m_strokaId;
  q_kartTIP_OP_ID.AsInteger := m_tipOpId;
  q_kartTIP_DOK_ID.AsInteger := m_tipDokId;
//  q_kartKOL_PRIH_EDIZ.AsFloat := 0.0;
end;

procedure TFDMDrugLoad.q_ostatki1BeforeInsert(DataSet: TDataSet);
begin
  Add_Ostatki.ExecProc;
  m_kartId := Add_Ostatki.Params.Items[0].AsInteger;
end;

procedure TFDMDrugLoad.q_seriaBeforeInsert(DataSet: TDataSet);
begin
  AddSeria.ExecProc;
  m_seriaId := AddSeria.Params.Items[0].AsInteger;
end;

procedure TFDMDrugLoad.q_seriaNewRecord(DataSet: TDataSet);
begin
  q_seriaSERIA_ID.AsInteger := m_seriaId;
  q_seriaKSM_ID.AsInteger := ksmId;
  q_seriaSERIA.AsString := seria;
  if (q_seriaKol_Seria.AsVariant = '') then
    q_seriaKol_Seria.AsFloat := 0;
end;

//procedure TFDMDrugLoad.startReadTrans;
//begin
//  if (not trans_read.Active) then
//    trans_read.StartTransaction;
//end;

procedure TFDMDrugLoad.delTexGurRecord;
begin
  mem_texGur.Edit;
  mem_texGurDELETE.AsBoolean := true;
  mem_texGur.Post;
end;

procedure TFDMDrugLoad.addTexGurRecord(month : integer; dateEnd : TDate);
var
  curKsmIdPrep : integer;
begin
  curKsmIdPrep := mem_texGurKSM_ID_PREP.AsInteger;

  mem_texGur.BeforePost := nil;
  mem_texGur.Insert;
  mem_texGurADD.AsBoolean := true;
  mem_texGurKSM_ID_PREP.AsInteger := curKsmIdPrep;
  setDefaultDateDok(month, dateEnd);
  mem_texGur.BeforePost := mem_texGurBeforePost;
end;

procedure TFDMDrugLoad.setDefaultDateDok(curMonth : integer; dateEnd : TDate);
var
  day, month, year : word;
begin
  DecodeDate(now, year, month, day);
  if (month > curMonth) then
  begin
    mem_texGurDATE_DOK.AsDateTime := dateEnd;
    mem_texGurOLD_DATE_DOK.AsDateTime := dateEnd;
    mem_texGurDATE_DOK_RASH.AsDateTime := dateEnd;
  end
  else
  begin
    mem_texGurDATE_DOK.AsDateTime := now;
    mem_texGurOLD_DATE_DOK.AsDateTime := now;
    mem_texGurDATE_DOK_RASH.AsDateTime := now;
  end;
end;

procedure TFDMDrugLoad.delAllTexGurRecords;
begin
  mem_texGur.DisableControls;
  mem_texGur.First;
  while (not mem_texGur.Eof) do
  begin
    delTexGurRecord;
    mem_texGur.Next;
  end;
  mem_texGur.EnableControls;
end;

procedure TFDMDrugLoad.changeKeiId(keiId : integer; neis : string);
begin
  mem_texGur.Edit;
  mem_texGurKEI_ID_KART.AsInteger := keiId;
  mem_texGurKEI_ID_NORM.AsInteger := keiId;
  mem_texGurNEIS.AsString := neis;
  mem_texGur.Post;
end;

procedure TFDMDrugLoad.changeKsmId(ksmId : integer; nmat : string);
begin
  mem_texGur.Edit;
  mem_texGurKSM_ID.AsInteger := ksmId;
  mem_texGurNMAT.AsString := nmat;
  mem_texGur.Post;
end;

procedure TFDMDrugLoad.changeRazdel(razdelId, kraz : integer);
begin
  mem_texGur.Edit;
  mem_texGurRAZDEL_ID.AsInteger := razdelId;
  mem_texGurKRAZ.AsInteger := kraz;
  mem_texGur.Post;
end;

procedure TFDMDrugLoad.changeSeria(seria: string; seriaId: integer);
begin
  if (seria <> mem_texGurSERIA.AsString)
     or (seriaId <> mem_texGurSERIA_ID.AsInteger) then
  begin
    mem_texGur.Edit;
    mem_texGurSERIA_ID.AsInteger := seriaId;
    mem_texGurSERIA.AsString := seria;
    mem_texGur.Post;
  end;
end;

end.
