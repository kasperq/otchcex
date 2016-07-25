unit DrugLoad;

interface

uses DMDrugLoad,
  kbmMemTable, IBDatabase, Forms, SysUtils, Controls, DB, SplshWnd, Windows,
  VCLUtils, Variants, Math, Dialogs, Graphics;

type
  TDrugLoad = class
  private
    dm : TFDMDrugLoad;
    Splash : TForm;
    bmpBook: TBitmap;
    curMonth, curYear : integer;
    dateBegin, dateEnd : TDate;
    docName : string;
    prepNmat : string;
    keiId : integer;
    seria : string;
    seriaId : integer;
    kartId : integer;
    ksmIdPrep : integer;
    strukId : integer;
    kolSeria : double;
    dateLoadSeria : TDate;

    function getMemTexGur() : TkbmMemTable;
    // loading
    function openNorms(year, month, ksmIdPrep, strukId : integer) : boolean;
    procedure insertNormsToTexGur(ksmIdPrep : integer);

    function openZagrDoc(seria : string; strukId, ksmIdPrep : integer;
                         dateBegin, dateEnd : TDate) : boolean;
    procedure openZagrKart(docId : integer);
    procedure insertKartToTexGur(ksmIdPrep : integer);

    function openPrepOst(strukId, ksmIdPrep : integer; dateBegin, dateEnd : TDate) : boolean;
    procedure insertPrepOstToTexGur(ksmIdPrep : integer);

    function openCexOst(dateBegin, dateEnd : TDate; strukId : integer) : boolean;
    procedure insertCexOstToTexGur;

    procedure convertKeiId(ksmIdPrep : integer);
    procedure convertRecord(var value : TFloatField; kart, ostPrep, ostCex : boolean;
                            tochn : integer);
    // saving

    procedure delEmptyZagrDocuments(seria : string; year, month, ksmIdPrep, strukId : integer);
    procedure saveSeriaAndOstatki;
    function saveMemTexGur() : boolean;
    function getCurKeiId() : integer;

//     Сохранение загрузки
    procedure deletePrih(ksmIdPrep, ksmId, strukId, razdelId : integer);
    procedure saveExistingRecord(keiId : integer);
    procedure saveNewRecord(keiId, kartId : integer);
    function findOrCreateZagrDocument(seria : string;dateDok : TDate; docId, strukId,
                                      ksmIdPrep : integer) : boolean;

    function findKsmIdAndRazdelIdAndKsmIdPrInOstatki(ksmId, razdelId, ksmIdPrep, strukId : integer) : boolean;
    procedure createKartId(ksmId, razdelId, ksmIdPrep, strukId, keiId, seriaId : integer);

    procedure addPrihod(kolRash : double; ksmId, keiId, klientId, razdelId : integer);
    procedure deletePrixKart(ksmId, ksmIdPr, strukId, razdelId : integer);
    procedure openPrixKart(ksmIdPr, strukId, ksmId, razdelId : integer);
    procedure openPrihSum(ksmIdPr, strukId, ksmId, razdelId : integer);
    // ^^^ Сохранение загрузки :))

  public
    constructor Create; overload;
    constructor Create(serverAddr, login, password, role  : string); overload;
    constructor Create(db : TIBDatabase); overload;
    destructor Destroy; override;

    procedure createTexGur(seria, prepNmat : string; year, month, ksmIdPrep, strukId, keiId : integer);
    function saveTexGur(kolSeria : double; dateLoadSeria : TDate) : boolean;
    procedure addTexGurLine;
    procedure delTexGurRecord;
    procedure delAllTexGurRecords;
    procedure changeKeiId;

    property texGurLoad : TkbmMemTable read getMemTexGur;

  end;

implementation

constructor TDrugLoad.Create;
begin
  inherited Create;
  //
end;

constructor TDrugLoad.Create(serverAddr, login, password, role  : string);
begin
  inherited Create;
  dm := TFDMDrugLoad.Create(Application);
  dm.setDB(serverAddr, login, password, role);
  dm.connectToDB;
  bmpBook := TBitmap.Create;
  bmpBook.LoadFromResourceName(HInstance,'booka');
end;

constructor TDrugLoad.Create(db : TIBDatabase);
begin
  inherited Create;
  dm := TFDMDrugLoad.Create(Application);
  dm.setDB(db);
  dm.connectToDB;
  bmpBook := TBitmap.Create;
  bmpBook.LoadFromResourceName(HInstance,'booka');
end;

destructor TDrugLoad.Destroy;
begin
  dm.disconnectFromDB;
  dm := nil;
  dm.Free;
  inherited Destroy;
end;

function TDrugLoad.getMemTexGur() : TkbmMemTable;
begin
  result := dm.mem_texGur;
end;

procedure TDrugLoad.createTexGur(seria, prepNmat : string; year, month, ksmIdPrep,
                                 strukId, keiId : integer);
begin
//  Splash := ShowSplashWindow(AniBmp1,
//                                 'Загрузка данных. Подождите, пожалуйста...', True, nil);
  dm.q_seria.Close;
  dm.trans_write.Active := FALSE;
  dm.trans_read.Active := FALSE;
  curMonth := month;
  curYear := year;
  StartWait;
  if (seria <> '') then
  begin
    dm.mem_texGur.EmptyTable;
    dm.mem_texGur.Open;
    dm.mem_texGur.DisableControls;
    dm.mem_texGurKSM_ID.OnValidate := nil;
    dm.mem_texGur.BeforePost := nil;
    dateBegin := StrToDate('01.' + IntToStr(month) + '.' + IntToStr(year));
    dateEnd := IncMonth(dateBegin, 1) - 1;
    self.prepNmat := prepNmat;
    docName := 'Заг_' + copy(prepNmat, 1, 5) + '_' + seria;
    if (openNorms(year, month, ksmIdPrep, strukId)) then
      insertNormsToTexGur(ksmIdPrep);
    if (openZagrDoc(seria, strukId, ksmIdPrep, dateBegin, dateEnd)) then
    begin
      dm.q_doc.First;
      while (not dm.q_doc.Eof) do
      begin
        openZagrKart(dm.q_docDOC_ID.AsInteger);
        insertKartToTexGur(ksmIdPrep);
        dm.q_doc.Next;
      end;
    end;
    if (openPrepOst(strukId, ksmIdPrep, dateBegin, dateEnd)) then
      insertPrepOstToTexGur(ksmIdPrep);
    if (openCexOst(dateBegin, dateEnd, strukId)) then
      insertCexOstToTexGur;
    convertKeiId(ksmIdPrep);
    dm.mem_texGur.SortOn('kraz;nmat', []);
    dm.mem_texGur.First;
    dm.mem_texGur.BeforePost := dm.mem_texGurBeforePost;
    dm.mem_texGurKSM_ID.OnValidate := dm.mem_texGurKSM_IDValidate;
    dm.mem_texGur.EnableControls;
  end;
  StopWait;
  Splash.Free;
end;

function TDrugLoad.openNorms(year, month, ksmIdPrep, strukId : integer) : boolean;
begin
  dm.q_norm.Close;
  dm.q_norm.ParamByName('god').AsInteger := year;
  dm.q_norm.ParamByName('mes').AsInteger := month;
  dm.q_norm.ParamByName('kodp').AsInteger := ksmIdPrep;
  dm.q_norm.ParamByName('struk_id').AsInteger := strukId;
  dm.q_norm.Open;
  dm.q_norm.First;
  result := not dm.q_norm.Eof;
end;

procedure TDrugLoad.insertNormsToTexGur(ksmIdPrep : integer);
begin
  dm.q_norm.First;
  while (not dm.q_norm.Eof) do
  begin
    dm.mem_texGur.Append;
    dm.mem_texGurKSM_ID.AsInteger := dm.q_normKSM_ID.AsInteger;
    dm.mem_texGurRAZDEL_ID.AsInteger := dm.q_normRAZDEL_ID.AsInteger;
    dm.mem_texGurKRAZ.AsInteger := dm.q_normKRAZ.AsInteger;
    dm.mem_texGurNMAT.AsString := dm.q_normNMAT.AsString;
    dm.mem_texGurKEI_ID_NORM.AsInteger := dm.q_normKEIN.AsInteger;
    dm.mem_texGurKEI_ID_KART.AsInteger := dm.q_normKEIN.AsInteger;
    dm.mem_texGurNEIS.AsString := dm.q_normNEIS.AsString;
    dm.mem_texGurPLNORM.AsFloat := dm.q_normPLNORM.AsFloat;
    dm.mem_texGurGOST.AsString := dm.q_normGOST.AsString;
    dm.mem_texGurXARKT.AsString := dm.q_normXARKT.AsString;
    dm.mem_texGurKSM_ID_PREP.AsInteger := ksmIdPrep;
    dm.setDefaultDateDok(curMonth, dateEnd);
    dm.mem_texGur.Post;
    dm.q_norm.Next;
  end;
end;

function TDrugLoad.openZagrDoc(seria : string; strukId, ksmIdPrep : integer;
                               dateBegin, dateEnd : TDate) : boolean;
begin
  docName := 'Заг_' + copy(prepNmat, 1, 5) + '_' + seria;
  dm.q_doc.Close;
  if (dateBegin = dateEnd) then
    dm.q_doc.MacroByName('date_dok').AsString := ' document.date_op = '''
                                              + DateToStr(dateBegin) + ''' '
  else
    dm.q_doc.MacroByName('date_dok').AsString := ' document.date_op between '''
                                              + DateToStr(dateBegin) + ''' and '''
                                              + DateToStr(dateEnd) + ''' ';
  dm.q_doc.ParamByName('struk_id').AsInteger := strukId;
  dm.q_doc.ParamByName('klient_id').AsInteger := ksmIdPrep;
  dm.q_doc.MacroByName('doc_id').AsString := ' document.ndok = ' + '''' + docName + ''' ';
  dm.q_doc.Open;
  dm.q_doc.First;
  result := not dm.q_doc.Eof;
end;

procedure TDrugLoad.openZagrKart(docId : integer);
begin
  dm.q_kart.Close;
  dm.q_kart.ParamByName('doc_id').AsInteger := docId;
  dm.q_kart.Open;
end;

procedure TDrugLoad.insertKartToTexGur(ksmIdPrep : integer);
begin
  dm.q_kart.First;
  while (not dm.q_kart.eof) do
  begin
    if (dm.mem_texGur.Locate('ksm_id;razdel_id',
                             VarArrayOf([dm.q_kartKSM_ID.AsInteger,
                                         dm.q_kartRAZDEL_ID.AsInteger]),
                             [])) and (dm.mem_texGurKOL_RASH_EDIZ.AsFloat = 0) then
    begin
      dm.mem_texGur.Edit;
      dm.mem_texGurKOL_RASH_EDIZ.AsFloat := dm.q_kartKOL_RASH_EDIZ.AsFloat;
      dm.mem_texGurKEI_ID_KART.AsInteger := dm.q_kartKEI_ID.AsInteger;
      dm.mem_texGurDOC_ID.AsInteger := dm.q_kartDOC_ID.AsInteger;
      dm.mem_texGurKART_ID.AsInteger := dm.q_kartKART_ID.AsInteger;
      dm.mem_texGurSTROKA_ID.AsInteger := dm.q_kartSTROKA_ID.AsInteger;
      dm.mem_texGurDATE_DOK.AsDateTime := dm.q_docDATE_OP.AsDateTime;
      dm.mem_texGurOLD_DATE_DOK.AsDateTime := dm.q_docDATE_OP.AsDateTime;
      dm.mem_texGurUSER_NAME.AsString := dm.q_kartUSER_NAME.AsString;
      dm.mem_texGur.Post;
    end
    else
    begin
      dm.mem_texGur.Append;
      dm.mem_texGurKSM_ID.AsInteger := dm.q_kartKSM_ID.AsInteger;
      dm.mem_texGurRAZDEL_ID.AsInteger := dm.q_kartRAZDEL_ID.AsInteger;
      dm.mem_texGurNEIS.AsString := dm.q_kartNEIS.AsString;
      dm.mem_texGurKRAZ.AsInteger := dm.q_kartKRAZ.AsInteger;
      dm.mem_texGurNMAT.AsString := dm.q_kartNMAT.AsString;
      dm.mem_texGurGOST.AsString := dm.q_kartGOST.AsString;
      dm.mem_texGurXARKT.AsString := dm.q_kartXARKT.AsString;
      dm.mem_texGurKSM_ID_PREP.AsInteger := ksmIdPrep;

      dm.mem_texGurKOL_RASH_EDIZ.AsFloat := dm.q_kartKOL_RASH_EDIZ.AsFloat;
      dm.mem_texGurKEI_ID_KART.AsInteger := dm.q_kartKEI_ID.AsInteger;
      dm.mem_texGurDOC_ID.AsInteger := dm.q_kartDOC_ID.AsInteger;
      dm.mem_texGurKART_ID.AsInteger := dm.q_kartKART_ID.AsInteger;
      dm.mem_texGurSTROKA_ID.AsInteger := dm.q_kartSTROKA_ID.AsInteger;
      dm.mem_texGurDATE_DOK.AsDateTime := dm.q_docDATE_OP.AsDateTime;
      dm.mem_texGurOLD_DATE_DOK.AsDateTime := dm.q_docDATE_OP.AsDateTime;
      dm.mem_texGurUSER_NAME.AsString := dm.q_kartUSER_NAME.AsString;
      dm.mem_texGur.Post;
    end;
    dm.q_kart.Next;
  end;
end;

function TDrugLoad.openPrepOst(strukId, ksmIdPrep : integer;
                               dateBegin, dateEnd : TDate) : boolean;
begin
  dm.q_ost.Close;
  dm.q_ost.ParamByName('struk_id').AsInteger := strukId;
  dm.q_ost.ParamByName('kodp').AsInteger := ksmIdPrep;
  dm.q_ost.ParamByName('dat1').AsDate := dateBegin;
  dm.q_ost.ParamByName('dat2').AsDate := dateEnd;
  dm.q_ost.Open;
  dm.q_ost.First;
  result := not dm.q_ost.Eof;
end;

procedure TDrugLoad.insertPrepOstToTexGur(ksmIdPrep : integer);
begin
  dm.q_ost.First;
  while (not dm.q_ost.Eof) do
  begin
    if (dm.mem_texGur.Locate('ksm_id;razdel_id',
                             VarArrayOf([dm.q_ostKSM_ID.AsInteger,
                                         dm.q_ostRAZDEL_ID.AsInteger]),
                          [])) then
    begin
      dm.mem_texGur.Edit;
      dm.mem_texGurOSTATOK_END_S.AsFloat := dm.q_ostOSTATOK_END_S.AsFloat;
      dm.mem_texGurOSTATOK_END_NZ.AsFloat := dm.q_ostOSTATOK_END_NZ.AsFloat;
      dm.mem_texGurKEI_ID_OST_PREP.AsInteger := dm.q_ostKEI_ID.AsInteger;

      dm.mem_texGurOSTATOK_BEGIN_S.AsFloat := dm.q_ostOSTATOK_BEGIN_S.AsFloat;
      dm.mem_texGurOSTATOK_BEGIN_NZ.AsFloat := dm.q_ostOSTATOK_BEGIN_NZ.AsFloat;
      dm.mem_texGurPRIX.AsFloat := dm.q_ostPRIX.AsFloat;
      dm.mem_texGurPEREDANO_PRIH_NZ.AsFloat := dm.q_ostPEREDANO_PRIH_NZ.AsFloat;
      dm.mem_texGurPRIX_PERIOD.AsFloat := dm.q_ostPRIX_PERIOD.AsFloat;
      dm.mem_texGurZAG.AsFloat := dm.q_ostZAG.AsFloat;
      dm.mem_texGurZAG_PERIOD.AsFloat := dm.q_ostZAG_PERIOD.AsFloat;
      dm.mem_texGurRASH_VIRAB_PERIOD.AsFloat := dm.q_ostRASH_VIRAB_PERIOD.AsFloat;
      dm.mem_texGurPEREDANO_RASH_S.AsFloat := dm.q_ostPEREDANO_RASH_S.AsFloat;
      dm.mem_texGurPEREDANO_RASH_NZ.AsFloat := dm.q_ostPEREDANO_RASH_NZ.AsFloat;
      dm.mem_texGur.Post;
    end
    else
    begin
      dm.mem_texGur.Append;
      dm.mem_texGurKSM_ID.AsInteger := dm.q_ostKSM_ID.AsInteger;
      dm.mem_texGurRAZDEL_ID.AsInteger := dm.q_ostRAZDEL_ID.AsInteger;
      dm.mem_texGurNEIS.AsString := dm.q_ostNEIS_OST.AsString;
      dm.mem_texGurKRAZ.AsInteger := dm.q_ostKRAZ.AsInteger;
      dm.mem_texGurNMAT.AsString := dm.q_ostNMAT.AsString;
      dm.mem_texGurKART_ID.AsInteger := dm.q_ostKART_ID.AsInteger;
      dm.mem_texGurGOST.AsString := dm.q_ostGOST.AsString;
      dm.mem_texGurXARKT.AsString := dm.q_ostXARKT.AsString;
      dm.mem_texGurKSM_ID_PREP.AsInteger := ksmIdPrep;

      dm.mem_texGurOSTATOK_END_S.AsFloat := dm.q_ostOSTATOK_END_S.AsFloat;
      dm.mem_texGurOSTATOK_END_NZ.AsFloat := dm.q_ostOSTATOK_END_NZ.AsFloat;
      dm.mem_texGurOSTATOK_BEGIN_S.AsFloat := dm.q_ostOSTATOK_BEGIN_S.AsFloat;
      dm.mem_texGurOSTATOK_BEGIN_NZ.AsFloat := dm.q_ostOSTATOK_BEGIN_NZ.AsFloat;
      dm.mem_texGurPRIX.AsFloat := dm.q_ostPRIX.AsFloat;
      dm.mem_texGurPEREDANO_PRIH_NZ.AsFloat := dm.q_ostPEREDANO_PRIH_NZ.AsFloat;
      dm.mem_texGurPRIX_PERIOD.AsFloat := dm.q_ostPRIX_PERIOD.AsFloat;
      dm.mem_texGurZAG.AsFloat := dm.q_ostZAG.AsFloat;
      dm.mem_texGurZAG_PERIOD.AsFloat := dm.q_ostZAG_PERIOD.AsFloat;
      dm.mem_texGurRASH_VIRAB_PERIOD.AsFloat := dm.q_ostRASH_VIRAB_PERIOD.AsFloat;
      dm.mem_texGurPEREDANO_RASH_S.AsFloat := dm.q_ostPEREDANO_RASH_S.AsFloat;
      dm.mem_texGurPEREDANO_RASH_NZ.AsFloat := dm.q_ostPEREDANO_RASH_NZ.AsFloat;
      dm.mem_texGurKEI_ID_OST_PREP.AsInteger := dm.q_ostKEI_ID.AsInteger;
      dm.setDefaultDateDok(curMonth, dateEnd);
      dm.mem_texGur.Post;
    end;
    dm.q_ost.Next;
  end;
end;

function TDrugLoad.openCexOst(dateBegin, dateEnd : TDate; strukId : integer) : boolean;
var
  ksmArr : string;
  i, ksmLength : integer;
  findedKsm : boolean;
  ksmArray : array of integer;
begin
  result := false;
  ksmLength := 0;
  if (dm.mem_texGur.RecordCount > 0) then
  begin
    for i := 0 to ksmLength - 1 do
      ksmArray[i] := 0;
    SetLength(ksmArray, 0);
    ksmLength := 0;
    ksmArr := '';
    dm.mem_texGur.First;
    while (not dm.mem_texGur.Eof) do
    begin
      findedKsm := false;
      for i := 0 to ksmLength - 1 do
      begin
        if (ksmArray[i] = dm.mem_texGurKSM_ID.AsInteger) then
          findedKsm := true;
      end;
      if (not findedKsm) then
      begin
        ksmLength := ksmLength + 1;
        SetLength(ksmArray, ksmLength);
        ksmArray[ksmLength - 1] := dm.mem_texGurKSM_ID.AsInteger;
      end;
      dm.mem_texGur.Next;
    end;
    for i := 0 to ksmLength - 1 do
    begin
      ksmArr := ksmArr + IntToStr(ksmArray[i]);
      if (i <> (ksmLength - 1)) then
        ksmArr := ksmArr + ', '
      else
        ksmArr := ksmArr + '  ';
    end;
    dm.ostceh.Close;
    dm.ostceh.ParamByName('dat1').AsDateTime := dateBegin;
    dm.ostceh.ParamByName('dat2').AsDateTime := dateEnd;
    dm.ostceh.ParamByName('struk_id').AsInteger := strukId;
    dm.ostceh.ParamByName('ksm_id').AsInteger := 0;
    if (strukId = 540) then
      dm.ostceh.ParamByName('struk_id_rela').AsInteger := 1
    else
      dm.ostceh.ParamByName('struk_id_rela').AsInteger := 0;
    dm.ostceh.ParamByName('ksm_array').AsString := ksmArr;
    dm.ostceh.Open;
    dm.ostCeh.First;
    result := not dm.ostCeh.Eof;
  end;
end;

procedure TDrugLoad.insertCexOstToTexGur;
begin
  dm.mem_texGur.First;
  while (not dm.mem_texGur.Eof) do
  begin
    dm.ostceh.First;
    if (dm.ostceh.Locate('ksm_id', dm.mem_texGur.FieldByName('Ksm_id').AsInteger, [])) THEN
    begin
      dm.mem_texGur.Edit;
      dm.mem_texGurOSTATOK_END_S_CEX.AsFloat := dm.ostcehOSTATOK_END_S.asfloat;
      dm.mem_texGurKEI_ID_OST_CEX.AsInteger := dm.ostcehKEI_ID.AsInteger;
      dm.mem_texGur.Post;
    end;
    dm.mem_texGur.Next;
  end;
end;

procedure TDrugLoad.convertKeiId(ksmIdPrep : integer);
var
  tochn : integer;
begin
  dm.mem_texGur.First;
  while (not dm.mem_texGur.Eof) do
  begin
    tochn := dm.getTochn(ksmIdPrep, dm.mem_texGurKSM_ID.AsInteger);
    dm.mem_texGur.Edit;
    convertRecord(dm.mem_texGurKOL_RASH_EDIZ, true, false, false, tochn);
    convertRecord(dm.mem_texGurOSTATOK_END_S, false, true, false, tochn);
    convertRecord(dm.mem_texGurOSTATOK_END_NZ, false, true, false, tochn);
    convertRecord(dm.mem_texGurOSTATOK_BEGIN_S, false, true, false, tochn);
    convertRecord(dm.mem_texGurOSTATOK_BEGIN_NZ, false, true, false, tochn);
    convertRecord(dm.mem_texGurPRIX, false, true, false, tochn);
    convertRecord(dm.mem_texGurPEREDANO_PRIH_NZ, false, true, false, tochn);
    convertRecord(dm.mem_texGurPRIX_PERIOD, false, true, false, tochn);
    convertRecord(dm.mem_texGurZAG, false, true, false, tochn);
    convertRecord(dm.mem_texGurZAG_PERIOD, false, true, false, tochn);
    convertRecord(dm.mem_texGurRASH_VIRAB_PERIOD, false, true, false, tochn);
    convertRecord(dm.mem_texGurPEREDANO_RASH_S, false, true, false, tochn);
    convertRecord(dm.mem_texGurPEREDANO_RASH_NZ, false, true, false, tochn);
    convertRecord(dm.mem_texGurOSTATOK_END_S_CEX, false, false, true, tochn);
    dm.mem_texGur.Post;
    dm.mem_texGur.Next;
  end;
end;

procedure TDrugLoad.convertRecord(var value : TFloatField; kart, ostPrep, ostCex : boolean;
                                  tochn : integer);
var
  keiFrom, keiTo : integer;
begin
  keiFrom := 0;
  if (value.AsFloat <> 0) then
  begin
    if (kart) then
      keiFrom := dm.mem_texGurKEI_ID_KART.AsInteger;
    if (ostPrep) then
      keiFrom := dm.mem_texGurKEI_ID_OST_PREP.AsInteger;
    if (ostCex) then
      keiFrom := dm.mem_texGurKEI_ID_OST_CEX.AsInteger;
    if (dm.mem_texGurPLNORM.AsFloat = 0) then
      keiTo := dm.mem_texGurKEI_ID_KART.AsInteger
    else
      keiTo := dm.mem_texGurKEI_ID_NORM.AsInteger;
    if (keiFrom <> keiTo) then
      value.AsFloat := RoundTo(value.AsFloat * dm.Koef_per(keiTo,
                                                           keiFrom,
                                                           dm.mem_texGurKSM_ID.AsInteger),
                               tochn);
  end;
end;

function TDrugLoad.saveTexGur(kolSeria : double; dateLoadSeria : TDate) : boolean;
begin
  result := false;
  if (dm.mem_texGur.Modified)
     or (dm.mem_texGur.State = dsEdit)
     or (dm.mem_texGur.State = dsInsert) then
    dm.mem_texGur.Post;

  Splash := ShowSplashWindow(bmpBook, 'Сохранение данных. Подождите, пожалуйста...', True, nil);
  try
    dm.mem_texGur.DisableControls;
    self.kolSeria := kolSeria;
    self.dateLoadSeria := dateLoadSeria;
    saveSeriaAndOstatki;
    saveMemTexGur;

    delEmptyZagrDocuments(seria, curYear, curMonth, ksmIdPrep, strukId);
    dm.commitWriteTrans(true);
    Splash.Free;

    createTexGur(seria, prepNmat, curYear, curMonth, ksmIdPrep, strukId, keiId);
    dm.mem_texGur.EnableControls;
  except
    on E : exception do
    begin
      MessageDlg('Произошла ошибка при записи!', mtWarning, [mbOK], 0);
      dm.mem_texGur.EnableControls;
      dm.trans_read.RollbackRetaining;
      Splash.Free;
    end;
  end;
end;

procedure TDrugLoad.delEmptyZagrDocuments(seria : string; year, month, ksmIdPrep, strukId : integer);
var
  dateBegin, dateEnd : TDate;
  str_month : string;
begin
  if (month < 10) then
    str_month := '0' + IntToStr(month)
  else
    str_month := IntToStr(month);
  dateBegin := StrToDate('01.' + str_month + '.' + IntToStr(year));
  dateEnd := IncMonth(dateBegin, 1) - 1;
  if (openZagrDoc(seria, strukId, ksmIdPrep, dateBegin, dateEnd)) then
  begin
    dm.q_doc.First;
    while (not dm.q_doc.Eof) do
    begin
      openZagrKart(dm.q_docDOC_ID.AsInteger);
      dm.q_kart.FetchAll;
      if (dm.q_kart.RecordCount = 0) then
        dm.q_doc.Delete
      else
        dm.q_doc.Next;
    end;
    if (dm.q_doc.UpdatesPending) then
    begin
      dm.q_doc.ApplyUpdates;
      dm.commitWriteTrans(true);
    end;
  end;
end;

procedure TDrugLoad.saveSeriaAndOstatki;
var
  usl_ser : string;
begin
  if (not dm.q_seria.Active) then
  begin
    dm.q_seria.ParamByName('Ksm_id').AsInteger := ksmIdPrep;
    dm.q_seria.MacroByName('usl').AsString := 'SERIA.SERIA=' + '''' + seria + '''';
    dm.q_seria.Open;
    dm.q_seria.First;
    seriaId := dm.q_seriaSeria_id.AsInteger;
  end;
  dm.q_seria.Edit;
  dm.q_seriaDate_ZAG.AsDateTime := dateLoadSeria;
  dm.q_seriaKol_seria.AsFloat := kolSeria;
  dm.q_seria.Post;
  dm.q_seria.ApplyUpdates;
  if (dm.ql_ostatki.Active) then
  begin
    if (dm.ql_ostatki.UpdatesPending) then
      dm.ql_ostatki.ApplyUpdates;
    dm.ql_ostatki.close;
  end;
  usl_ser := '  OST.KSM_ID=' + INTTOSTR(ksmIdPrep) + ' and ost.seria_id=' + inttostr(seriaId);
  dm.ql_ostatki.ParamByName('struk_ID').AsInteger := strukId;
  dm.ql_ostatki.MacroByName('usl').AsString := usl_ser;
  dm.ql_ostatki.Open;
  if (not dm.ql_ostatki.Eof) then
    kartId := dm.ql_ostatkiKart_id.AsInteger
  else
  begin
    dm.ksmId := ksmIdPrep;
    dm.ksmIdPrep := ksmIdPrep;
    dm.keiId := keiId;
    dm.strukId := strukId;
    dm.seriaId := seriaId;
    dm.month := curMonth;
    dm.year := curYear;
    dm.razdelId := 0;
    dm.ql_ostatki.Insert;
    dm.ql_ostatki.Post;
    dm.ql_ostatki.ApplyUpdates;
  end;
  if (dm.q_seria.Modified) or (dm.q_seria.State = dsEdit)
     or (dm.q_seria.State = dsInsert) then
    dm.q_seria.Post;
  if (dm.ql_ostatki.Modified) or (dm.ql_ostatki.State = dsEdit)
     or (dm.ql_ostatki.State = dsInsert) then
    dm.ql_ostatki.Post;
  if (dm.q_seria.UpdatesPending) then
    dm.q_seria.ApplyUpdates;
  if (dm.ql_ostatki.UpdatesPending) then
    dm.ql_ostatki.ApplyUpdates;
end;

procedure TDrugLoad.saveExistingRecord(keiId : integer);
begin
  if (dm.mem_texGurKOL_RASH_EDIZ.AsFloat = 0) or (dm.mem_texGurDELETE.AsBoolean)
     and (dm.mem_texGurDATE_DOK.AsDateTime = dm.mem_texGurOLD_DATE_DOK.AsDateTime) then
  begin
    dm.q_kart.Delete;
  end;
  if (dm.mem_texGurKOL_RASH_EDIZ.AsFloat <> 0) and (not dm.mem_texGurDELETE.AsBoolean)
     and (dm.mem_texGurDATE_DOK.AsDateTime = dm.mem_texGurOLD_DATE_DOK.AsDateTime) then
  begin
    if ((dm.mem_texGurKOL_RASH_EDIZ.AsFloat <> dm.q_kartKOL_RASH_EDIZ.AsFloat)
        or (keiId <> dm.q_kartKEI_ID.AsInteger))
       and (dm.q_kartRAZDEL_ID.AsInteger = dm.mem_texGurRAZDEL_ID.AsInteger) then
    begin
      dm.q_kart.Edit;
      dm.q_kartKOL_RASH_EDIZ.AsFloat := dm.mem_texGurKOL_RASH_EDIZ.AsFloat;
      dm.q_kartKEI_ID.AsInteger := keiId;
      dm.q_kartKOL_PRIH_EDIZ.AsFloat := 0;
      dm.q_kart.Post;
    end;
    if (dm.q_kartRAZDEL_ID.AsInteger <> dm.mem_texGurRAZDEL_ID.AsInteger) then
    begin
      deletePrih(dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurKSM_ID.AsInteger,
                 strukId, dm.q_kartRAZDEL_ID.AsInteger);
      dm.q_kart.Delete;
      saveNewRecord(keiId, 0);
      dm.delTexGurRecord;
    end;
  end;
  if (dm.mem_texGurDATE_DOK.AsDateTime <> dm.mem_texGurOLD_DATE_DOK.AsDateTime) then
  begin
    deletePrih(dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurKSM_ID.AsInteger, strukId, dm.q_kartRAZDEL_ID.AsInteger);
    dm.q_kart.Delete;
    if (findOrCreateZagrDocument(seria, dm.mem_texGurDATE_DOK.AsDateTime,
                                 dm.mem_texGurDOC_ID.AsInteger, strukId, ksmIdPrep)) then
      saveNewRecord(keiId, dm.mem_texGurKART_ID.AsInteger);
  end;
end;

procedure TDrugLoad.deletePrih(ksmIdPrep, ksmId, strukId, razdelId : integer);
begin
  openPrihSum(ksmIdPrep, strukId, ksmId, razdelId);
  if (dm.q_prihSumPRIHSUM.AsFloat <> 0) then
  begin
    dm.q_prihSum.Close;
    deletePrixKart(ksmId, ksmIdPrep, strukId, razdelId);
  end;
end;

procedure TDrugLoad.deletePrixKart(ksmId, ksmIdPr, strukId, razdelId : integer);
begin
  openPrixKart(ksmIdPr, strukId, ksmId, razdelId);
  if (dm.q_prixKart.RecordCount > 0) then
  begin
    dm.q_prixKart.First;
    while (not dm.q_prixKart.Eof) do
      dm.q_prixKart.Delete;
    dm.q_prixKart.ApplyUpdates;
    dm.commitWriteTrans(true);
  end;
end;

procedure TDrugLoad.openPrixKart(ksmIdPr, strukId, ksmId, razdelId : integer);
begin
  dm.q_prixKart.Close;
  dm.q_prixKart.ParamByName('struk_id').AsInteger := strukId;
  dm.q_prixKart.ParamByName('klient_id').AsInteger := ksmIdPr;
  dm.q_prixKart.ParamByName('dat1').AsDate := dateBegin;
  dm.q_prixKart.ParamByName('dat2').AsDate := dateEnd;
  dm.q_prixKart.ParamByName('ksm_id').AsInteger := ksmId;
  dm.q_prixKart.ParamByName('razdel_id').AsInteger := razdelId;
  dm.q_prixKart.Open;
end;

procedure TDrugLoad.openPrihSum(ksmIdPr, strukId, ksmId, razdelId : integer);
begin
  dm.q_prihSum.Close;
  dm.q_prihSum.ParamByName('struk_id').AsInteger := strukId;
  dm.q_prihSum.ParamByName('klient_id').AsInteger := ksmIdPr;
  dm.q_prihSum.ParamByName('dat1').AsDate := dateBegin;
  dm.q_prihSum.ParamByName('dat2').AsDate := dateEnd;
  dm.q_prihSum.ParamByName('ksm_id').AsInteger := ksmId;
  dm.q_prihSum.ParamByName('razdel_id').AsInteger := razdelId;
  dm.q_prihSum.Open;
  dm.q_prihSum.First;
end;

function TDrugLoad.findKsmIdAndRazdelIdAndKsmIdPrInOstatki(ksmId, razdelId, ksmIdPrep, strukId : integer) : boolean;
begin
  result := false;
  dm.q_ostatki.Close;
  dm.q_ostatki.MacroByName('usl').AsString := ' ostatki.struk_id = ' + IntToStr(strukId)
                                           + ' and ostatki.ksm_id = ' + IntToStr(ksmId)
                                           + ' and ostatki.razdel_id = ' + IntToStr(razdelId)
                                           + ' and coalesce(ostatki.ksm_idpr, 0) = '
                                           + IntToStr(ksmIdPrep) + ' ';
  dm.q_ostatki.Open;
  dm.q_ostatki.First;
  if (not dm.q_ostatki.Eof) then
    result := true;
end;

procedure TDrugLoad.saveNewRecord(keiId, kartId : integer);
begin
  if (kartId = 0) then
  begin
    if (not findKsmIdAndRazdelIdAndKsmIdPrInOstatki(dm.mem_texGurKSM_ID.AsInteger,
                                                    dm.mem_texGurRAZDEL_ID.AsInteger,
                                                    dm.mem_texGurKSM_ID_PREP.AsInteger,
                                                    strukId)) then
    begin
      createKartId(dm.mem_texGurKSM_ID.AsInteger, dm.mem_texGurRAZDEL_ID.AsInteger,
                   dm.mem_texGurKSM_ID_PREP.AsInteger, strukId,
                   keiId, 0);
    end;
    dm.mem_texGur.Edit;
    dm.mem_texGurKART_ID.AsInteger := dm.q_ostatkiKART_ID.AsInteger;
    dm.mem_texGur.Post;
  end;
  dm.q_kart.Insert;
  dm.q_kart.FieldByName('Ksm_Id').AsInteger := dm.mem_texGurKsm_id.AsInteger;
  dm.q_kartKol_rash_ediz.AsFloat := dm.mem_texGurKol_Rash_Ediz.AsFloat;
  dm.q_kart.FieldByName('razdel_Id').AsInteger := dm.mem_texGurRazdel_id.AsInteger;
  dm.q_kart.FieldByName('kei_Id').AsInteger := keiId;
  dm.q_kart.FieldByName('Doc_Id').AsInteger := dm.q_docDOC_ID.AsInteger;
  dm.q_kart.FieldByName('KART_Id').AsInteger := dm.mem_texGurKart_id.AsInteger;
  dm.q_kart.FieldByName('TIP_OP_Id').AsInteger := 33;
  dm.q_kart.FieldByName('TIP_DOK_Id').AsInteger := 34;
  dm.q_kart.Post;
end;

procedure TDrugLoad.createKartId(ksmId, razdelId, ksmIdPrep, strukId, keiId, seriaId : integer);
begin
  dm.ksmId := ksmId;
  dm.ksmIdPrep := ksmIdPrep;
  dm.seriaId := seriaId;
  dm.strukId := strukId;
  dm.year := curYear;
  dm.month := curMonth;
  dm.keiId := keiId;
  dm.razdelId := razdelId;

  dm.ql_ostatki.Insert;
  dm.ql_ostatki.Post;
  dm.ql_ostatki.ApplyUpdates;
  dm.commitWriteTrans(true);
end;

function TDrugLoad.findOrCreateZagrDocument(seria : string; dateDok : TDate; docId,
                                           strukId, ksmIdPrep : integer) : boolean;
begin
  result := openZagrDoc(seria, strukId, ksmIdPrep, dateDok, dateDok);
  if (not result) or (dm.q_docDOC_ID.AsInteger <> docId) then
  begin
    dm.q_doc.Insert;
    dm.q_docNDOK.AsString := docName;
    dm.q_docDATE_DOK.AsDateTime := dateDok;
    dm.q_docDATE_OP.AsDateTime := dateDok;
    if (dm.q_doc.Modified) or (dm.q_doc.State = dsInsert) or (dm.q_doc.State = dsEdit) then
      dm.q_doc.Post;
    dm.q_doc.ApplyUpdates;
    result := true;
  end;
end;

function TDrugLoad.saveMemTexGur() : boolean;
var
  curKeiId : integer;
begin
  dm.mem_texGur.First;
  while (not dm.mem_texGur.Eof) do
  begin
    try
      curKeiId := getCurKeiId();
      if (dm.mem_texGurDOC_ID.AsInteger <> 0) then
      begin
        openZagrKart(dm.mem_texGurDOC_ID.AsInteger);
        if (dm.q_kart.Locate('kart_id;doc_id;stroka_id',
                          VarArrayOf([dm.mem_texGurKART_ID.AsInteger,
                                      dm.mem_texGurDOC_ID.AsInteger,
                                      dm.mem_texGurSTROKA_ID.AsInteger]),
                          [])) then
        begin
          saveExistingRecord(curKeiId);
        end;
      end
      else
      begin
        if (dm.mem_texGurKOL_RASH_EDIZ.AsFloat <> 0) then
        begin
          if (findOrCreateZagrDocument(seria, dm.mem_texGurDATE_DOK.AsDateTime,
                                       dm.mem_texGurDOC_ID.AsInteger, strukId, ksmIdPrep)) then
          begin
            openZagrKart(dm.q_docDOC_ID.AsInteger);
            saveNewRecord(curKeiId, dm.mem_texGurKART_ID.AsInteger);
          end;
        end;
      end;

      if (dm.q_kart.UpdatesPending) then
      begin
        dm.q_kart.ApplyUpdates;
        addPrihod(dm.mem_texGurKOL_RASH_EDIZ.AsFloat, dm.mem_texGurKSM_ID.AsInteger,
                  curKeiId, dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurRAZDEL_ID.AsInteger);
        dm.commitWriteTrans(true);
      end
      else
      begin
        if (dm.mem_texGurOSTATOK_END_S.AsFloat < 0)
           or (dm.mem_texGurPRIX_PERIOD.AsFloat <> dm.mem_texGurZAG_PERIOD.AsFloat) then
        begin
          addPrihod(dm.mem_texGurKOL_RASH_EDIZ.AsFloat, dm.mem_texGurKSM_ID.AsInteger,
                  curKeiId, dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurRAZDEL_ID.AsInteger);
          dm.commitWriteTrans(true);
        end;
      end;
    except
      on e : exception do
      begin
        MessageDlg('Произошла ошибка при сохранении сырья: ' + dm.mem_texGurKSM_ID.AsString
                   + '. ' + e.Message, mtWarning, [mbOK], 0);
        dm.trans_write.RollbackRetaining;
      end;
    end;
    dm.mem_texGur.Next;
  end;
//  q_kart.ApplyUpdates;
  result := true;
end;

function TDrugLoad.getCurKeiId() : integer;
begin
  result := dm.mem_texGurKEI_ID_OST_PREP.AsInteger;
  if (dm.mem_texGurKEI_ID_NORM.AsInteger <> 0) then
    result := dm.mem_texGurKEI_ID_NORM.AsInteger
  else
    if (dm.mem_texGurKEI_ID_KART.AsInteger <> 0) then
      result := dm.mem_texGurKEI_ID_KART.AsInteger;
end;

procedure TDrugLoad.addTexGurLine;
begin
  dm.addTexGurRecord(curMonth, dateEnd);
end;

procedure TDrugLoad.delTexGurRecord;
begin
  dm.delTexGurRecord;
end;

procedure TDrugLoad.delAllTexGurRecords;
begin
  dm.delAllTexGurRecords;
end;

procedure TDrugLoad.changeKeiId;
begin

end;

procedure TDrugLoad.addPrihod(kolRash : double; ksmId, keiId, klientId, razdelId : integer);
var
  curSDat1, curSDat2, str_month : string;
  curMes, curGod : integer;
  day, month, year : word;
begin
//  v_raspred_dob := kolRash;
//  s_ksm := ksmId;
//  s_kei := keiId;
//  v_kein := keiId;
//  vklient_id := klientId;
//  v_razdel := razdelId;
//  tochn := -6;
//  pr_kor := 0;
//
//  curSDat1 := '01.01.0001';
//  curSDat2 := '01.01.0001';
//  curMes := 1;
//  curGod := 1;
//  if (dm.mem_texGurDATE_DOK.AsDateTime < dateBegin)
//     or (dm.mem_texGurDATE_DOK.AsDateTime > dateEnd) then
//  begin
//    curSDat1 := DateToStr(dateBegin);
//    curSDat2 := DateToStr(dateEnd);
//    curMes := curMonth;
//    curGod := curYear;
//    DecodeDate(dm.mem_texGurDATE_DOK.AsDateTime, year, month, day);
//    if (month < 10) then
//      str_month := '0' + IntToStr(month)
//    else
//      str_month := IntToStr(month);
//    dateBegin :=  '01.' + str_month + '.' + IntToStr(year);
//    dateBegin := datetostr(IncMonth(dateBegin, 1) -1);
//    curMonth := month;
//    curYear := year;
//  end;
//
//  dm1.DobPrixPrep;
//
//  if (curSDat1 <> '01.01.0001') then
//    if (mem_texGurDATE_DOK.AsDateTime < StrToDate(curSDat1))
//       or (mem_texGurDATE_DOK.AsDateTime > StrToDate(curSDat2)) then
//    begin
//      dateBegin := curSDat1;
//      dateEnd := curSDat2;
//      mes := curMes;
//      god := curGod;
//    end;

//  dm1.commitWriteTrans(true);
end;

end.
