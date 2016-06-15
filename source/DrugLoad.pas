unit DrugLoad;

interface

uses DMDrugLoad,
  kbmMemTable, IBDatabase, Forms, SysUtils, Controls, DB, SplshWnd, Windows,
  VCLUtils, Variants, Math;

type
  TDrugLoad = class
  private
    dm : TFDMDrugLoad;
    Splash : TForm;
    AniBmp1: TBitmap;
    curMonth, curYear : integer;
    dateBegin, dateEnd : TDate;
    docName : string;
    prepNmat : string;

    function getMemTexGur() : TkbmMemTable;

    function openNorms(year, month, ksmIdPrep, strukId : integer) : boolean;
    procedure insertNormsToTexGur(ksmIdPrep : integer);
    procedure setDefaultDateDok;

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
//    procedure delTexGurRecord;
//    procedure delAllTexGurRecords;
//
//     Сохранение загрузки
//    function saveZagrDocument() : boolean;
//    procedure deletePrih(ksmIdPrep, ksmId, strukId, razdelId : integer);
//    procedure saveExistingRecord(keiId : integer);
//    procedure saveNewRecord(keiId, kartId : integer);
//    function saveMemTexGur() : boolean;
//    procedure saveSeriaAndOstatki;
//    function findKsmRazdelKsmIdPrInOstatki(ksmId, razdelId, ksmIdPrep, strukId : integer) : boolean;
//    procedure createKartId(ksmId, razdelId, ksmIdPrep, strukId, keiId, seriaId : integer);
//
//    procedure addPrihod(kolRash : double; ksmId, keiId, klientId, razdelId : integer);
//    procedure deletePrixKart(ksmId, ksmIdPr, strukId, razdelId : integer);
//    procedure openPrixKart(ksmIdPr, strukId, ksmId, razdelId : integer);
//    procedure openPrihSum(ksmIdPr, strukId, ksmId, razdelId : integer);
    // ^^^ Сохранение загрузки :))
//    procedure setSeriaDateZag(ksmIdPrep : integer; seria, dateZag : string);

  public
    constructor Create; overload;
    constructor Create(serverAddr, login, password, role  : string); overload;
    constructor Create(db : TIBDatabase); overload;
    destructor Destroy; override;

    procedure createTexGur(seria, prepNmat : string; year, month, ksmIdPrep, strukId : integer);

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
end;

constructor TDrugLoad.Create(db : TIBDatabase);
begin
  inherited Create;
  dm := TFDMDrugLoad.Create(Application);
  dm.setDB(db);
  dm.connectToDB;
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

procedure TDrugLoad.createTexGur(seria, prepNmat : string; year, month, ksmIdPrep, strukId : integer);
begin
//  Splash := ShowSplashWindow(AniBmp1,
//                                 'Загрузка данных. Подождите, пожалуйста...', True, nil);
  dm.Seria.Close;
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
    setDefaultDateDok;
    dm.mem_texGur.Post;
    dm.q_norm.Next;
  end;
end;

procedure TDrugLoad.setDefaultDateDok;
var
  day, month, year : word;
begin
  DecodeDate(now, year, month, day);
  if (month > curMonth) then
  begin
    dm.mem_texGurDATE_DOK.AsDateTime := dateEnd;
    dm.mem_texGurOLD_DATE_DOK.AsDateTime := dateEnd;
  end
  else
  begin
    dm.mem_texGurDATE_DOK.AsDateTime := now;
    dm.mem_texGurOLD_DATE_DOK.AsDateTime := now;
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
      setDefaultDateDok;
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

end.
