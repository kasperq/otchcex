unit PrihodDM;

interface

uses
  SysUtils, Classes, IBDatabase, RxIBQuery, DB, IBCustomDataSet, IBQuery, Dialogs,
  IBStoredProc, IBUpdateSQL, IBUpdSQLW, Variants, Controls, UtilRIB;

type
  TPrihDM = class(TDataModule)
    db: TIBDatabase;
    trans_read: TIBTransaction;
    IBQuery1: TRxIBQuery;
    Kart: TRxIBQuery;
    KartKSM_ID: TIntegerField;
    KartKEI_ID: TSmallintField;
    KartKRAZ: TSmallintField;
    KartDOC_ID: TIntegerField;
    KartSTROKA_ID: TIntegerField;
    KartPARENT: TIntegerField;
    KartRAZDEL_ID: TSmallintField;
    KartCENA: TIBBCDField;
    KartCENA_VP: TIBBCDField;
    KartSERIA_ID: TIntegerField;
    KartNEIS: TIBStringField;
    KartNEISN: TIBStringField;
    KartSERIA: TIBStringField;
    KartSROK_GODN: TDateField;
    KartGOD: TSmallintField;
    KartMES: TSmallintField;
    KartSTRUK_ID: TSmallintField;
    KartNDOK: TIBStringField;
    KartTIP_OP_ID: TSmallintField;
    KartDATE_OP: TDateField;
    KartDATE_DOK: TDateField;
    KartTIP_DOK_ID: TSmallintField;
    KartKLIENT_ID: TIntegerField;
    KartNAM_OP: TIBStringField;
    KartKOD_PROD: TIBStringField;
    KartNMAT: TIBStringField;
    KartXARKT: TIBStringField;
    KartKSM_IDPR: TIntegerField;
    KartKART_ID: TIntegerField;
    KartKOL_PRIH: TFMTBCDField;
    KartKOL_RASH: TFMTBCDField;
    KartKOL_PRIH_EDIZ: TFloatField;
    KartKOL_RASH_EDIZ: TFloatField;
    KartONM_NZ: TFMTBCDField;
    KartOT_S: TFMTBCDField;
    KartONM_S: TFMTBCDField;
    KartOT_NZ: TFMTBCDField;
    KartNAMRAZ: TIBStringField;
    KartGOST: TIBStringField;
    KartKEI_IDN: TSmallintField;
    KartOST_STRUK_ID: TIntegerField;
    KartCENA_UCH: TFloatField;
    IBUpdateKart: TIBUpdateSQLW;
    trans_write: TIBTransaction;
    ADD_KartDok: TIBStoredProc;
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
    IBdel: TIBQuery;
    Document: TRxIBQuery;
    DocumentTIP_DOK_ID: TSmallintField;
    DocumentNDOK: TIBStringField;
    DocumentDOC_ID: TIntegerField;
    DocumentDATE_OP: TDateField;
    DocumentDATE_DOK: TDateField;
    DocumentKLIENT_ID: TIntegerField;
    DocumentNAM: TIBStringField;
    DocumentTIP_OP_ID: TSmallintField;
    DocumentADRES: TIBStringField;
    DocumentDATE_VVOD: TDateTimeField;
    DocumentSTRUK_ID: TSmallintField;
    DocumentZADACHA_ID: TIBStringField;
    DocumentDOK_OSN_ID: TIntegerField;
    IBUpdateDoc: TIBUpdateSQLW;
    procedure KartBeforePost(DataSet: TDataSet);
    procedure KartBeforeInsert(DataSet: TDataSet);
    procedure KartNewRecord(DataSet: TDataSet);
    procedure SeriaBeforeInsert(DataSet: TDataSet);
    procedure SeriaNewRecord(DataSet: TDataSet);
    procedure OstatkiBeforeInsert(DataSet: TDataSet);
    procedure OstatkiNewRecord(DataSet: TDataSet);
    procedure DocumentBeforeDelete(DataSet: TDataSet);
    procedure DocumentBeforeInsert(DataSet: TDataSet);
    procedure DocumentNewRecord(DataSet: TDataSet);

  private
    vSERIA_ID : integer;
    S_KSM : integer;
    vStroka_Id : integer;
    vStruk_Id : integer;
    vKart_Id : integer;
    VDOCUMENT_ID : integer;
    vTip_op_id : integer;
    vTip_doc_id : integer;
    vKlient_Id : integer;
    st_kart : integer;
    s_kei : integer;
    v_Razdel : integer;
    S_KODP : integer;
    Mes_conf : integer;
    God_conf : integer;
    s_SERIA : string;
    vNdoc : string;
    vDate_dok, vDate_op : TDate;



  public
    procedure setDB(db : TIBDatabase);
    function connectToDB() : boolean;
    function disconnectFromDB() : boolean;
    procedure commitReadTrans(retaining : boolean);
    procedure commitWriteTrans(retaining : boolean);
    procedure startWriteTrans;
    procedure startReadTrans;

    procedure setValues2Kart(ksmId, klientId, razdelId, keiId, docId, kartId,
                             tipOpId, tipDokId : integer; kolRashEdiz, kolPrihEdiz,
                             kolRash, kolPrih : double);
    function Koef_per(kei_in : integer; kei_from : integer; ksm : integer) : double;

  end;


implementation

{$R *.dfm}

procedure TPrihDM.setDB(db : TIBDatabase);
begin
  self.db := db;
end;

function TPrihDM.connectToDB() : boolean;
begin
  result := false;
  try
    db.Open;
    startReadTrans;
    if (db.Connected) and (trans_read.Active) then
      result := true;
  except
//    ShowMessage('У пользователя ' + login + ' нет доступа к базе данных');
  end;
end;

function TPrihDM.disconnectFromDB() : boolean;
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

procedure TPrihDM.DocumentBeforeDelete(DataSet: TDataSet);
begin
  Kart.First;
  If (not Kart.Eof) then
  begin
    MessageDlg('Перед удалением документа необходимо удалить препараты.', mtWarning, [mbOK], 0);
    Abort;
  end;
end;

procedure TPrihDM.DocumentBeforeInsert(DataSet: TDataSet);
begin
  Add_KartDok.StoredProcName := 'ADD_DOCUMENT';
  Add_KartDok.ExecProc;
  vDocument_Id := Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TPrihDM.DocumentNewRecord(DataSet: TDataSet);
begin
  Document.FieldByName('Doc_Id').AsInteger := vDocument_Id;
  Document.FieldByName('Tip_Op_Id').AsInteger := vTip_Op_Id;
  Document.FieldByName('Struk_Id').AsInteger := vStruk_Id;
//  Document.FieldByName('Zadacha_Id').AsString := vZadacha_Id;
  Document.FieldByName('Tip_Dok_Id').AsInteger := vTip_Doc_Id;
  if (copy(vNdoc, 1, 5) = 'Старт') then
    vNdoc := vndoc + inttostr(vDocument_id);
  Document.FieldByName('NDok').AsString := vNDoc;
  Document.FieldByName('Klient_Id').AsInteger := vKlient_Id;
  Document.FieldByName('Date_Dok').AsDateTime := vDate_dok;
  Document.FieldByName('Date_Op').AsDateTime := vDate_op;
end;

procedure TPrihDM.startWriteTrans;
begin
  if (not trans_write.Active) then
    trans_write.StartTransaction;
end;

procedure TPrihDM.startReadTrans;
begin
  if (not trans_read.Active) then
    trans_read.StartTransaction;
end;

procedure TPrihDM.commitWriteTrans(retaining : boolean);
begin
  startWriteTrans;
  if (retaining) then
    trans_write.CommitRetaining
  else
    trans_write.Commit;
end;

procedure TPrihDM.commitReadTrans(retaining : boolean);
begin
  startReadTrans;
  if (retaining) then
    trans_read.CommitRetaining
  else
    trans_read.Commit;
end;

procedure TPrihDM.KartBeforeInsert(DataSet: TDataSet);
begin
  if st_kart = 0 then
    vKart_Id := 0
  else
    vkart_id := st_kart;
  s_seria := '';
  Add_KartDok.StoredProcName := 'ADD_KART';
  Add_KartDok.ExecProc;
  vStroka_Id := Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TPrihDM.KartBeforePost(DataSet: TDataSet);
begin
  s_ksm := KartKSM_ID.AsInteger;
  s_kei := KartKei_ID.AsInteger;
  v_Razdel := KartRazdel_ID.AsInteger;
  If Kart.FieldByName('Ksm_id').AsInteger = 0 then
  begin
    MessageDlg('Введите код сырья!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If (Kart.FieldByName('Kei_id').AsInteger = 0)
      and ((Kart.FieldByName('Kol_prih_ediz').AsFloat <> 0)
            or (Kart.FieldByName('Kol_rash_ediz').AsFloat <> 0)) then
  begin
    MessageDlg('Введите единицу измерения!', mtWarning, [mbOK], 0);
    Abort;
  end;
  try
    Seria.Active := False;
    Seria.ParamByName('ksm_id').AsInteger := KartKSM_ID.AsInteger;
    Seria.Active := true;
    if Seria.locate('seria', KartSeria.asstring, []) then
    begin
      s_seria := SeriaSeria.asstring;
      vseria_id := SeriaSERIA_ID.AsInteger;
      KartSROK_GODN.AsDateTime := SeriaSROK_GODN.AsDateTime;
    end
    else
    begin
      if (not KartSeria.IsNull) then
      begin
        s_seria := KartSeria.asstring;
        Seria.Insert;
        Seria.Post;
        Seria.ApplyUpdates;
      end
      else
        vSeria_id := 0;
    end;
    IF (vKart_Id = 0)  then
    begin
      if Ostatki.Active then
        Ostatki.Active := false;
      Ostatki.ParamByName('struk_ID').AsInteger := vstruk_id;
      if v_Razdel = 0 then
        Ostatki.MacroByName('usl').AsString := ' ((ost.razdel_id is null) OR (ost.razdel_id = 0))'
                                               + ' AND OST.KSM_ID = ' + INTTOSTR(KartKSM_ID.AsInteger)
      else
      begin
        Ostatki.MacroByName('usl').AsString := ' ost.razdel_id = ' + inttostr(v_Razdel)
                                                   + ' and ost.ksm_idpr = ' + inttostr(s_kodp)
                                                   + ' AND OST.KSM_ID = ' + INTTOSTR(KartKSM_ID.AsInteger);
      end;
      Ostatki.Open;
      Ostatki.First;
      if (Ostatki.Eof) then
        Ostatki.Insert
      else
        if (vSeria_id <> 0) then
          if (Ostatki.Locate('SERIA_ID;ksm_idpr', VarArrayOf([vseria_id, s_kodp]), [])) then
            vkart_id := OstatkiKART_ID.AsInteger
          else
          BEGIN
            IF (S_KODP = 0) THEN
            begin
              if (Ostatki.Locate('SERIA_ID;ksm_idpr', VarArrayOf([vseria_id, null]), [])) then
                vkart_id := OstatkiKART_ID.AsInteger
              else
                Ostatki.Insert
            end
            else
              Ostatki.Insert;
          END
          else
            vkart_id := OstatkiKART_ID.AsInteger;
    end;
    if (Ostatki.Modified)
        or (Ostatki.State = dsEdit)
        or (Ostatki.State = dsInsert) then
    begin
      Ostatki.Post;
      Ostatki.ApplyUpdates;
    end;
    Kart.FieldByName('Kart_Id').AsInteger := vKart_Id;
    Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
  except
    MessageDlg('Произошла ошибка при добавлении нового сырья в документ.', mtWarning, [mbOK], 0);
    Abort;
  end;
end;

procedure TPrihDM.KartNewRecord(DataSet: TDataSet);
begin
  Kart.FieldByName('Stroka_Id').AsInteger := vStroka_Id;
  Kart.FieldByName('Struk_Id').AsInteger := vStruk_Id;
  Kart.FieldByName('Kart_Id').AsInteger := vKart_Id;
  Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
  Kart.FieldByName('tip_op_id').AsInteger := vTip_op_id;
  Kart.FieldByName('tip_dok_id').AsInteger := vTip_doc_id;
  Kart.FieldByName('Klient_Id').AsInteger := vKlient_Id;
  if (Kart.FieldByName('kol_prih').AsVariant = null) then
    Kart.FieldByName('kol_prih').AsVariant := 0;
  if (Kart.FieldByName('kol_rash').AsVariant = null) then
    Kart.FieldByName('kol_rash').AsVariant := 0;
  if (Kart.FieldByName('kol_prih_ediz').AsVariant = null) then
    Kart.FieldByName('kol_prih_ediz').AsFloat := 0;
  if (Kart.FieldByName('kol_rash_ediz').AsVariant = null) then
    Kart.FieldByName('kol_rash_ediz').AsFloat := 0;
end;

procedure TPrihDM.OstatkiBeforeInsert(DataSet: TDataSet);
begin
  Add_Ostatki.ExecProc;
  vkart_Id := Add_Ostatki.Params.Items[0].AsInteger;
end;

procedure TPrihDM.OstatkiNewRecord(DataSet: TDataSet);
begin
  Ostatki.FieldByName('Kart_Id').AsInteger := vKart_Id;
  Ostatki.FieldByName('Ksm_Id').AsInteger := s_KSM;
  IF (v_razdel <> 0) then
    Ostatki.FieldByName('razdel_id').AsInteger := v_razdel;
  IF (s_kodp <> 0) and (s_kodp <> s_ksm) then
    Ostatki.FieldByName('ksm_idpr').AsInteger := s_kodp;
  IF (vSeria_id <> 0) then
    Ostatki.FieldByName('Seria_id').AsInteger := vseria_id;
  Ostatki.FieldByName('Kei_Id').AsInteger := s_KEI;
  Ostatki.FieldByName('Struk_Id').AsInteger := vstruk_id;
  Ostatki.FieldByName('Mes').AsInteger := Mes_conf;
  Ostatki.FieldByName('God').AsInteger := God_conf;
end;

procedure TPrihDM.SeriaBeforeInsert(DataSet: TDataSet);
begin
  AddSeria.ExecProc;
  vSERIA_ID := AddSeria.Params.Items[0].AsInteger;
end;

procedure TPrihDM.SeriaNewRecord(DataSet: TDataSet);
begin
  SeriaSERIA_ID.AsInteger := vSeria_Id;
  SeriaKSM_ID.AsInteger := S_KSM;
//  DM1.SeriaSrok_Godn.AsDateTime:=S_Srok_Godn;
  SeriaSERIA.AsString := s_SERIA;
  if (SeriaKol_Seria.AsVariant = '') then
    SeriaKol_Seria.AsFloat := 0;
end;

procedure TPrihDM.setValues2Kart(ksmId, klientId, razdelId, keiId, docId, kartId,
                              tipOpId, tipDokId : integer; kolRashEdiz, kolPrihEdiz,
                              kolRash, kolPrih : double);
begin
  Kart.FieldByName('Ksm_Id').AsInteger := ksmId;
  KartKol_rash_ediz.AsFloat := kolRashEdiz;
  KartKol_prih_ediz.AsFloat := kolPrihEdiz;
//  KartKol_rash.AsFloat := kolRash;
//  KartKol_prih.AsFloat := kolPrih;
  Kart.FieldByName('klient_Id').AsInteger := klientId;
  Kart.FieldByName('razdel_Id').AsInteger := razdelId;
  Kart.FieldByName('kei_Id').AsInteger := keiId;
  Kart.FieldByName('Doc_Id').AsInteger := docId;
  Kart.FieldByName('KART_Id').AsInteger := kartId;
  Kart.FieldByName('TIP_OP_Id').AsInteger := tipOpId;
  Kart.FieldByName('TIP_DOK_Id').AsInteger := tipDokId;
end;

function TPrihDM.Koef_per(kei_in : integer; kei_from : integer; ksm : integer) : double;
var
  vKoef : variant;
begin
  if (kei_in <> kei_from) and (kei_in <> 0) and (kei_from <> 0) then
  begin
// Коэффициент перевода  из одной единицы измерения в другую
    vKoef := SelectToVarIB('SELECT KOEFPR.KOEF FROM KOEFPR WHERE KOEFPR.KEIR = '
                           + IntToStr(kei_in) + ' AND KOEFPR.KEI_ID = '
                           + IntToStr(kei_from) + ' AND KOEFPR.KSM_ID = 0 AND KOEFPR.KOEF <> 0 ',
                           db, trans_read);
    if (vKoef = NULL) then
    begin
      vKoef := SelectToVarIB('SELECT KOEFPR.KOEF FROM KOEFPR WHERE KOEFPR.KEIR = '
                             + IntToStr(kei_in) + ' AND KOEFPR.KEI_ID = '
                             + IntToStr(kei_from) + ' AND KOEFPR.KSM_ID =' + IntToStr(Ksm)
                             + ' AND KOEFPR.KOEF <> 0 ',
                             db, trans_read);
      if (vKoef = NULL) then
        vKoef := 1;
    end;
    result := vKoef;
  end
  else
    result := 1;
end;

end.
