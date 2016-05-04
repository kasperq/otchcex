unit DMDrugLoad;

interface

uses
  SysUtils, Classes, kbmMemTable, DB, IBCustomDataSet, IBQuery, RxIBQuery,
  IBDatabase, Dialogs, IBStoredProc, IBUpdateSQL, IBUpdSQLW;

type
  TFDMDrugLoad = class(TDataModule)
    db: TIBDatabase;
    trans_read: TIBTransaction;
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
    upd_kart: TIBUpdateSQLW;
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
    trans_write: TIBTransaction;
    Matrop: TIBQuery;
    MatropNMAT: TIBStringField;
    MatropXARKT: TIBStringField;
    MatropKEI_ID: TSmallintField;
    MatropKSM_ID: TIntegerField;
    MatropNEIS: TIBStringField;
    MatropPRMAT: TIBStringField;
    MatropGOST: TIBStringField;
    Seria: TRxIBQuery;
    SeriaSERIA_ID: TIntegerField;
    SeriaKSM_ID: TIntegerField;
    SeriaSERIA: TIBStringField;
    SeriaSROK_GODN: TDateField;
    SeriaSERTIF: TIBStringField;
    SeriaDATE_SERTIF: TDateField;
    SeriaPASPORT: TIBStringField;
    SeriaDATE_PASPORT: TDateField;
    SeriaKOL_SERIA: TFMTBCDField;
    SeriaDATE_VIPUSK: TDateField;
    SeriaFORMA_VIPUSK: TIBStringField;
    SeriaKEI_ID: TSmallintField;
    SeriaDATE_TIME_UPDATE: TDateTimeField;
    SeriaUSER_NAME: TIBStringField;
    SeriaSHEMA: TIBStringField;
    SeriaKODTN: TIBStringField;
    SeriaDATE_ZAG: TDateField;
    SeriaFIO_RASH: TIBStringField;
    SeriaFIO_MASTER: TIBStringField;
    SeriaCOMMENT: TIBStringField;
    SeriaOB_ZAG: TFloatField;
    SeriaVLAG_TM: TFloatField;
    SeriaKOD_TM: TIntegerField;
    SeriaKOL_TM: TFloatField;
    IBUpdateSeria: TIBUpdateSQLW;
    Ostatki: TRxIBQuery;
    OstatkiKEI_ID: TSmallintField;
    OstatkiRAZDEL_ID: TSmallintField;
    OstatkiKSM_ID: TIntegerField;
    OstatkiKSM_IDPR: TIntegerField;
    OstatkiMES: TSmallintField;
    OstatkiGOD: TSmallintField;
    OstatkiONM_FD: TFMTBCDField;
    OstatkiONM_NZ: TFMTBCDField;
    OstatkiONM_S: TFMTBCDField;
    OstatkiOT_FD: TFMTBCDField;
    OstatkiOT_NZ: TFMTBCDField;
    OstatkiOT_S: TFMTBCDField;
    OstatkiSERIA_ID: TIntegerField;
    OstatkiSTRUK_ID: TIntegerField;
    OstatkiUSER_NAME: TIBStringField;
    OstatkiKOL_TRANS: TFloatField;
    OstatkiKOL_GRP: TFloatField;
    OstatkiVES_TRANS: TIBBCDField;
    OstatkiNMAT: TIBStringField;
    OstatkiNEIS: TIBStringField;
    OstatkiKART_ID: TIntegerField;
    OstatkiOT_DOKUM: TFloatField;
    OstatkiONM_DOKUM: TFMTBCDField;
    OstatkiNOMU_ID_TRANS: TSmallintField;
    OstatkiNOMU_ID_GRP: TSmallintField;
    OstatkiVOL_TRANS: TFMTBCDField;
    OstatkiUpdate: TIBUpdateSQLW;
    AddSeria: TIBStoredProc;
    Add_Ostatki: TIBStoredProc;
    ADD_KartDok: TIBStoredProc;
    procedure mem_texGurBeforePost(DataSet: TDataSet);
    procedure mem_texGurKSM_IDValidate(Sender: TField);
    procedure SeriaBeforeInsert(DataSet: TDataSet);
    procedure SeriaNewRecord(DataSet: TDataSet);
    procedure OstatkiBeforeInsert(DataSet: TDataSet);
    procedure OstatkiNewRecord(DataSet: TDataSet);
    procedure q_kartBeforeInsert(DataSet: TDataSet);
    procedure q_kartNewRecord(DataSet: TDataSet);
    procedure q_docBeforeInsert(DataSet: TDataSet);
    procedure q_docNewRecord(DataSet: TDataSet);
  private
    login, password, serverAddr, role : string;
    procedure startReadTrans;

  public
    procedure setDB(serverAddr, login, password, role : string); overload;
    procedure setDB(db : TIBDatabase); overload;
    function connectToDB() : boolean;
    function disconnectFromDB() : boolean;

  end;

implementation

{$R *.dfm}

procedure TFDMDrugLoad.setDB(serverAddr, login, password, role : string);
begin
  db.Close;
  db.Params.Clear;
  db.Params.Add('lc_ctype=WIN1251');
  db.Params.Add('sql_role_name=' + role);
  db.Params.Add('user_name=' + login);
  db.Params.Add('password=' + AnsiLowerCase(password));
  db.LoginPrompt := false;
  db.DatabaseName := serverAddr;
  self.login := login;
  self.password := password;
  self.serverAddr := serverAddr;
  self.role := role;
end;

procedure TFDMDrugLoad.setDB(db : TIBDatabase);
begin
  self.db := db;
end;

function TFDMDrugLoad.connectToDB() : boolean;
begin
  result := false;
  try
    db.Open;
    startReadTrans;
    if (db.Connected) and (trans_read.Active) then
      result := true;
  except
    ShowMessage('У пользователя ' + login + ' нет доступа к базе данных');
  end;
end;

function TFDMDrugLoad.disconnectFromDB() : boolean;
begin
  result := false;
  try
    if (trans_read.InTransaction) then
      trans_read.CommitRetaining;
    trans_read.Active := false;
    db.Close;
    result := not db.Connected;
  except

  end;
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

procedure TFDMDrugLoad.mem_texGurKSM_IDValidate(Sender: TField);
begin
  Matrop.Active := false;
  Matrop.ParamByName('ksm').AsInteger := mem_texGur.FieldByName('Ksm_Id').AsInteger;
  Matrop.Active := TRUE;
  if (not Matrop.eof) then
  begin
    mem_texGur.FieldByName('Nmat').AsString := Matrop.FieldByName('Nmat').AsString;
    mem_texGur.FieldByName('Kei_Id_kart').AsInteger := Matrop.FieldByName('Kei_id').AsInteger;
    mem_texGurNEIS.AsString := Matrop.FieldByName('Neis').AsString;
//    mem_texGurRAZDEL_ID.AsInteger := curRazdelId;
//    mem_texGurKRAZ.AsInteger := curKraz;
  end
  else
    showMessage('Нет такого кода! Воспользуйтесь справочником!');
end;

procedure TFDMDrugLoad.OstatkiBeforeInsert(DataSet: TDataSet);
begin
  Add_Ostatki.ExecProc;
//  vkart_Id := Add_Ostatki.Params.Items[0].AsInteger;
end;

procedure TFDMDrugLoad.OstatkiNewRecord(DataSet: TDataSet);
begin
//  Ostatki.FieldByName('Kart_Id').AsInteger := vKart_Id;
//  Ostatki.FieldByName('Ksm_Id').AsInteger := s_KSM;
//  IF (v_razdel <> 0) then
//    Ostatki.FieldByName('razdel_id').AsInteger := v_razdel;
//  IF (s_kodp <> 0) and (s_kodp <> s_ksm) then
//    Ostatki.FieldByName('ksm_idpr').AsInteger := s_kodp;
//  IF (vSeria_id <> 0) then
//    Ostatki.FieldByName('Seria_id').AsInteger := vseria_id;
//  Ostatki.FieldByName('Kei_Id').AsInteger := s_KEI;
//  Ostatki.FieldByName('Struk_Id').AsInteger := vstruk_id;
//  Ostatki.FieldByName('Mes').AsInteger := Mes_conf;
//  Ostatki.FieldByName('God').AsInteger := God_conf;
end;

procedure TFDMDrugLoad.q_docBeforeInsert(DataSet: TDataSet);
begin
  Add_KartDok.StoredProcName := 'ADD_DOCUMENT';
  Add_KartDok.ExecProc;
//  vDocument_Id := Add_KartDok.Params.Items[0].AsInteger;
//  curDocId := vDocument_Id;
end;

procedure TFDMDrugLoad.q_docNewRecord(DataSet: TDataSet);
begin
//  q_docDOC_ID.AsInteger := vDocument_Id;
//  curDocId := vDocument_Id;
  q_docTIP_OP_ID.AsInteger := 33;
  q_docTIP_DOK_ID.AsInteger := 34;
//  q_docSTRUK_ID.AsInteger := vStruk_Id;
//  q_docDATE_DOK.AsDateTime := dateEdit1.Date;
//  q_docDATE_OP.AsDateTime := dateEdit1.Date;
//  q_docKLIENT_ID.AsInteger := s_kodp;
end;

procedure TFDMDrugLoad.q_kartBeforeInsert(DataSet: TDataSet);
begin
//  DM1.Add_KartDok.StoredProcName := 'ADD_KART';
//  DM1.Add_KartDok.ExecProc;
//  vStroka_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
//  curStrokaId := vStroka_Id;
end;

procedure TFDMDrugLoad.q_kartNewRecord(DataSet: TDataSet);
begin
  q_kartDOC_ID.AsInteger := q_docDOC_ID.AsInteger;
//  q_kartSTROKA_ID.AsInteger := curStrokaId;
  q_kartTIP_OP_ID.AsInteger := 33;
  q_kartTIP_DOK_ID.AsInteger := 34;
  q_kartKOL_PRIH_EDIZ.AsFloat := 0.0;
end;

procedure TFDMDrugLoad.SeriaBeforeInsert(DataSet: TDataSet);
begin
  AddSeria.ExecProc;
//  vSERIA_ID := AddSeria.Params.Items[0].AsInteger;
end;

procedure TFDMDrugLoad.SeriaNewRecord(DataSet: TDataSet);
begin
//  SeriaSERIA_ID.AsInteger := vSeria_Id;
//  SeriaKSM_ID.AsInteger := S_KSM;
////  DM1.SeriaSrok_Godn.AsDateTime:=S_Srok_Godn;
//  SeriaSERIA.AsString := s_SERIA;
  if (SeriaKol_Seria.AsVariant = '') then
    SeriaKol_Seria.AsFloat := 0;
end;

procedure TFDMDrugLoad.startReadTrans;
begin
  if (not trans_read.Active) then
    trans_read.StartTransaction;
end;

end.
