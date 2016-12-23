unit PrihodDM;

interface

uses DBDM,
  SysUtils, Classes, IBDatabase, RxIBQuery, DB, IBCustomDataSet, IBQuery, Dialogs,
  IBStoredProc, IBUpdateSQL, IBUpdSQLW, Variants, Controls, UtilRIB;

type
  TPrihDM = class(TDataModule)
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
    ADD_KartDok: TIBStoredProc;
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
    trans_read: TIBTransaction;
    trans_write: TIBTransaction;
    procedure KartBeforePost(DataSet: TDataSet);
    procedure KartBeforeInsert(DataSet: TDataSet);
    procedure KartNewRecord(DataSet: TDataSet);

    procedure DocumentBeforeDelete(DataSet: TDataSet);
    procedure DocumentBeforeInsert(DataSet: TDataSet);
    procedure DocumentNewRecord(DataSet: TDataSet);

  private
    vSERIA_ID : integer;
    m_ksmId : integer;
    newStrokaId : integer;

    vKart_Id : integer;

    st_kart : integer;
    s_kei : integer;
    v_Razdel : integer;
    S_KODP : integer;
    Mes_conf : integer;
    God_conf : integer;
    s_SERIA : string;

    m_vNdoc : string;
    m_dateDok, m_dateOp : TDate;
    m_strukId : integer;
    m_newDocId : integer;
    m_tipOpId : integer;
    m_tipDokId : integer;
    m_ksmIdPrep : integer;

    procedure startWriteTrans;

  public
    procedure setValues2Kart(ksmId, klientId, razdelId, keiId, docId, kartId,
                             tipOpId, tipDokId : integer; kolRashEdiz, kolPrihEdiz,
                             kolRash, kolPrih : double);
    function Koef_per(kei_in : integer; kei_from : integer; ksm : integer; var db : TdDM) : double;
    procedure commitWriteTrans(retaining: boolean);

    property dateDok : TDate read m_dateDok write m_dateDok;
    property dateOp : TDate read m_dateOp write m_dateOp;
    property strukId : integer read m_strukId write m_strukId;
    property newDocId : integer read m_newDocId write m_newDocId;
    property tipOpId : integer read m_tipOpId write m_tipOpId;
    property tipDokId : integer read m_tipDokId write m_tipDokId;
    property ksmIdPrep : integer read m_ksmIdPrep write m_ksmIdPrep;
    property vNdoc : string read m_vNdoc write m_vNdoc;

  end;


implementation

{$R *.dfm}

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
  m_newDocId := Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TPrihDM.DocumentNewRecord(DataSet: TDataSet);
begin
  Document.FieldByName('Doc_Id').AsInteger := m_newDocId;
  Document.FieldByName('Tip_Op_Id').AsInteger := m_tipOpId;
  Document.FieldByName('Struk_Id').AsInteger := m_strukId;
//  Document.FieldByName('Zadacha_Id').AsString := vZadacha_Id;
  Document.FieldByName('Tip_Dok_Id').AsInteger := m_tipDokId;
  if (copy(vNdoc, 1, 5) = 'Старт') then
    vNdoc := vndoc + IntToStr(m_newDocId);
  Document.FieldByName('NDok').AsString := m_vNDoc;
  Document.FieldByName('Klient_Id').AsInteger := m_ksmIdPrep;
  Document.FieldByName('Date_Dok').AsDateTime := m_dateDok;
  Document.FieldByName('Date_Op').AsDateTime := m_dateOp;
end;

procedure TPrihDM.KartBeforeInsert(DataSet: TDataSet);
begin
  Add_KartDok.StoredProcName := 'ADD_KART';
  Add_KartDok.ExecProc;
  newStrokaId := Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TPrihDM.KartBeforePost(DataSet: TDataSet);
begin
{  m_ksmId := KartKSM_ID.AsInteger;
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
      Ostatki.ParamByName('struk_ID').AsInteger := m_strukId;
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
    Kart.FieldByName('Doc_Id').AsInteger := m_newDocId;
  except
    MessageDlg('Произошла ошибка при добавлении нового сырья в документ.', mtWarning, [mbOK], 0);
    Abort;
  end;  }
end;

procedure TPrihDM.KartNewRecord(DataSet: TDataSet);
begin
  Kart.FieldByName('Stroka_Id').AsInteger := newStrokaId;
  Kart.FieldByName('Struk_Id').AsInteger := m_strukId;
  Kart.FieldByName('Kart_Id').AsInteger := vKart_Id;
  Kart.FieldByName('Doc_Id').AsInteger := m_newDocId;
  Kart.FieldByName('tip_op_id').AsInteger := m_tipOpId;
  Kart.FieldByName('tip_dok_id').AsInteger := m_tipDokId;
  Kart.FieldByName('Klient_Id').AsInteger := m_ksmIdPrep;
  if (Kart.FieldByName('kol_prih').AsVariant = null) then
    Kart.FieldByName('kol_prih').AsVariant := 0;
  if (Kart.FieldByName('kol_rash').AsVariant = null) then
    Kart.FieldByName('kol_rash').AsVariant := 0;
  if (Kart.FieldByName('kol_prih_ediz').AsVariant = null) then
    Kart.FieldByName('kol_prih_ediz').AsFloat := 0;
  if (Kart.FieldByName('kol_rash_ediz').AsVariant = null) then
    Kart.FieldByName('kol_rash_ediz').AsFloat := 0;
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

function TPrihDM.Koef_per(kei_in : integer; kei_from : integer; ksm : integer; var db : TdDM) : double;
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

procedure TPrihDM.startWriteTrans;
begin
  if (not trans_write.Active) then
    trans_write.StartTransaction;
end;

procedure TPrihDM.commitWriteTrans(retaining: boolean);
begin
  startWriteTrans;
  if (retaining) then
    trans_write.CommitRetaining
  else
    trans_write.Commit;
end;

end.
