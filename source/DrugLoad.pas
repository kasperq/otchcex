unit DrugLoad;

interface

uses DrugLoadDM, Prihod, DBDM, TexGurTypes, TexGurDoc, SeriaOstatki,

  kbmMemTable, IBDatabase, Forms, SysUtils, Controls, DB, SplshWnd, Windows,
  VCLUtils, Variants, Math, Dialogs, Graphics, UtilRIB;

type
  TDrugLoad = class
  private
    dm : TFDMDrugLoad;
    prih : TPrihod;
    db : TdDM;
    texGurT : TTexGurType;
    texGurD : TTexGurDoc;
    drugSeria : TSeriaOstatki;

    Splash : TForm;
    bmpBook: TBitmap;
    curMonth, curYear : integer;
    m_dateBegin, m_dateEnd : TDate;
//    docName : string;
    prepNmat : string;
    keiId : integer;
    seria : string;
    seriaId : integer;
//    seriaId : integer;
//    kartId : integer;
    ksmIdPrep : integer;
    strukId : integer;
    ksmId : integer;
    keiIdSyr : integer;
    razdelId : integer;
    kraz : integer;
    curRecYear, curRecMonth, curRecDay : word;
//    kolSeria : double;
//    dateLoadSeria : TDate;

    function getMemTexGur() : TkbmMemTable;
    // loading
    function openNorms(year, month, ksmIdPrep, strukId, ksmId : integer) : boolean;
    procedure insertNormsToTexGur(ksmIdPrep : integer);

    function openZagrDoc(docName : string; strukId, ksmIdPrep, tipOpId, tipDokId : integer;
                         dateBegin, dateEnd : TDate) : boolean;
    procedure openZagrKart(docId, ksmId : integer);
    procedure insertKartToTexGur(docNumber, seria: string; ksmIdPrep, tipOpId,
                                 tipDokId, seriaId : integer);
    function getCurSeriaId(seria : string) : integer;

    function openPrepOst(strukId, ksmIdPrep, ksmId : integer; dateBegin, dateEnd : TDate) : boolean;
    procedure insertPrepOstToTexGur(ksmIdPrep : integer);

    function openCexOst(dateBegin, dateEnd : TDate; strukId : integer) : boolean;
    procedure insertCexOstToTexGur;

    procedure convertKeiId(ksmIdPrep : integer);

    // saving

    procedure delEmptyZagrDocuments(seria : string; year, month, ksmIdPrep, strukId : integer);
    function saveMemTexGur() : boolean;

//     Сохранение загрузки
    procedure deletePrih(ksmIdPrep, ksmId, strukId, razdelId : integer); overload;
    procedure deletePrih(ksmIdPrep, ksmId, strukId, razdelId, docId : integer); overload;
    procedure saveExistingRecord(keiId : integer);
    procedure saveExistingIncRecord(keiId : integer);
    procedure saveNewRecord(keiId, kartId : integer);
    function findOrCreateZagrDocument(seria : string;dateDok : TDate; docId, strukId,
                                      ksmIdPrep, month, year : integer) : boolean;

    function findKsmIdAndRazdelIdAndKsmIdPrInOstatki(ksmId, razdelId, ksmIdPrep, strukId : integer) : boolean;
    procedure createKartId(ksmId, razdelId, ksmIdPrep, strukId, keiId, seriaId : integer);

    procedure addPrihod(kolRash : double; ksmId, keiId, klientId, razdelId : integer); overload;
    procedure addPrihod(kolRash : double; ksmId, keiId, klientId, razdelId, docId : integer); overload;
    procedure deletePrixKart(ksmId, ksmIdPr, strukId, razdelId, docId : integer);
    procedure openPrixKart(ksmIdPr, strukId, ksmId, razdelId, docId : integer);
    procedure openPrihSum(ksmIdPr, strukId, ksmId, razdelId : integer);
    // ^^^ Сохранение загрузки :))

  public
    constructor Create; overload;
//    constructor Create(serverAddr, login, password, role  : string); overload;
    constructor Create(var db : TdDM); overload;
    destructor Destroy; override;

    procedure createTexGur(texGurT : TTexGurType; seria, prepNmat : string; year,
                           month, ksmIdPrep, strukId, keiId, ksmId, keiIdSyr, razdelId,
                           kraz, seriaId : integer; withOst, withPrepOst, withNorm : boolean);
    function saveTexGur() : boolean;
    procedure delEmptyDrugDocuments(year, month, ksmIdPrep, strukId : integer);
    procedure clearTexGurLoad;
    procedure addTexGurLine;
    procedure delTexGurRecord;
    procedure delAllTexGurRecords;
    procedure changeKeiId(keiId : integer; neis : string);
    procedure changeKsmId(ksmId : integer; nmat : string);
    procedure changeRazdel(razdelId, kraz : integer);
    function isKeiIdChangeable() : boolean;
    procedure changeSeria(seria : string; seriaId : integer);
    function getCurKeiId() : integer;
    function getKolRashSum() : double;
    procedure convertRecord(var value : TFloatField; keiFrom, keiTo, tochn : integer); overload;
    procedure convertRecord(plNorm : double); overload;
    function getTochn(ksmIdPrep, ksmId : integer) : integer;
    function getKolRashField() : TFloatField;
    procedure setKolRashField(value : TFloatField);

    property texGurLoad : TkbmMemTable read getMemTexGur;
    property dateBegin : TDate read m_dateBegin;
    property dateEnd : TDate read m_dateEnd;
    property kolRash : TFloatField read getKolRashField write setKolRashField;

  end;

implementation

constructor TDrugLoad.Create;
begin
  inherited Create;
  //
end;

//constructor TDrugLoad.Create(serverAddr, login, password, role  : string);
//begin
//  inherited Create;
//  dm := TFDMDrugLoad.Create(Application);
//  dm.setDB(serverAddr, login, password, role);
//  dm.connectToDB;
//  bmpBook := TBitmap.Create;
//  bmpBook.LoadFromResourceName(HInstance,'booka');
//end;

constructor TDrugLoad.Create(var db : TdDM);
begin
  inherited Create;
  dm := TFDMDrugLoad.Create(Application);
  self.db := db;
//  dm.setDB(db);
//  dm.connectToDB;
  bmpBook := TBitmap.Create;
  bmpBook.LoadFromResourceName(HInstance,'booka');
  dm.AddSeria.Database := db.db;
  dm.AddSeria.Transaction := db.trans_read;
  dm.Add_Ostatki.Database := db.db;
  dm.Add_Ostatki.Transaction := db.trans_read;
  dm.Add_KartDok.Database := db.db;
  dm.Add_KartDok.Transaction := db.trans_read;
  dm.Matrop.Database := db.db;
  dm.Matrop.Transaction := db.trans_read;
  dm.razdel.Database := db.db;
  dm.razdel.Transaction := db.trans_read;
  dm.q_kart.Database := db.db;
  dm.q_kart.Transaction := db.trans_read;
  dm.q_prixKart.Database := db.db;
  dm.q_prixKart.Transaction := db.trans_read;
  dm.q_norm.Database := db.db;
  dm.q_norm.Transaction := db.trans_read;
  dm.q_ost.Database := db.db;
  dm.q_ost.Transaction := db.trans_read;
  dm.ostceh.Database := db.db;
  dm.ostceh.Transaction := db.trans_read;
  dm.q_seria.Database := db.db;
  dm.q_seria.Transaction := db.trans_read;
  dm.q_ostatki11.Database := db.db;
  dm.q_ostatki11.Transaction := db.trans_read;
  dm.q_ostatki.Database := db.db;
  dm.q_ostatki.Transaction := db.trans_read;
  dm.q_prihSum.Database := db.db;
  dm.q_prihSum.Transaction := db.trans_read;
  dm.q_prixDoc.Database := db.db;
  dm.q_prixDoc.Transaction := db.trans_read;
  dm.q_doc.Database := db.db;
  dm.q_doc.Transaction := db.trans_read;
  dm.upd_prixKart.UpdateTransaction := db.trans_write;
  dm.upd_ostatki.UpdateTransaction := db.trans_write;
  dm.upd_kart.UpdateTransaction := db.trans_write;
  dm.upd_doc.UpdateTransaction := db.trans_write;
  dm.IBUpdateSeria.UpdateTransaction := db.trans_write;
  dm.OstatkiUpdate.UpdateTransaction := db.trans_write;

//  if (prih = nil) then
//    prih := TPrihod.Create(db);
end;

destructor TDrugLoad.Destroy;
begin
//  dm.mem_texGur.EmptyTable;
//  dm.mem_texGur.Close;
  dm := nil;
  dm.Free;
  inherited Destroy;
end;

function TDrugLoad.getMemTexGur() : TkbmMemTable;
begin
  result := dm.mem_texGur;
end;

function TDrugLoad.getTochn(ksmIdPrep, ksmId: integer): integer;
begin
  result := dm.getTochn(ksmIdPrep, ksmId);
end;

procedure TDrugLoad.createTexGur(texGurT : TTexGurType; seria, prepNmat : string; year, month, ksmIdPrep,
                                 strukId, keiId, ksmId, keiIdSyr, razdelId,
                                 kraz, seriaId : integer; withOst, withPrepOst, withNorm : boolean);    // ful=true загружать остатки
var
  index : integer;
  curSeriaId : integer;
begin
//  Splash := ShowSplashWindow(bmpBook,
//                                 'Загрузка данных. Подождите, пожалуйста...', True, nil);
  dm.q_seria.Close;
//  db.trans_write.Active := FALSE;
//  db.trans_read.Active := FALSE;
  self.texGurT := texGurT;
  curMonth := month;
  curYear := year;
  self.ksmIdPrep := ksmIdPrep;
  self.seria := seria;
  self.seriaId := seriaId;
  self.strukId := strukId;
  self.keiId := keiId;
  self.prepNmat := prepNmat;
  self.ksmId := ksmId;
  self.razdelId := razdelId;
  self.kraz := kraz;
  self.keiIdSyr := keiIdSyr;

  dm.mem_texGur.EmptyTable;
  dm.mem_texGur.Open;
  dm.mem_texGur.DisableControls;
  dm.mem_texGurKSM_ID.OnValidate := nil;
  dm.mem_texGur.BeforePost := nil;

  m_dateBegin := StrToDate('01.' + IntToStr(month) + '.' + IntToStr(year));
  m_dateEnd := IncMonth(m_dateBegin, 1) - 1;

//  docName := 'Заг_' + copy(prepNmat, 1, 5) + '_' + seria;

//  if (openNorms(year, month, ksmIdPrep, strukId)) then
//    insertNormsToTexGur(ksmIdPrep);
  dm.mem_texGurKOL_RASH_EDIZ.OnChange := nil;
  if (texGurT = drugLoadList) or (texGurT = drugLoadSeria) or (texGurT = drugLoadSeries)
     or (texGurT = drugLoadUsual)
     or (texGurT = drugConsList) or (texGurT = drugConsSeria) or (texGurT = drugConsSeries)
     or (texGurT = drugConsUsual)
     or (texGurT = drugIncList) or (texGurT = drugIncSeria) or (texGurT = drugIncSeries)
     or (texGurT = drugIncUsual) then
  begin
    if (texGurD = nil) then
      texGurD := TTexGurDoc.Create;
    texGurD.formDocumentParams(texGurT, prepNmat, seria, ksmIdPrep, month, year);
    for index := 0 to texGurD.size - 1 do
    begin
      if (openZagrDoc(texGurD.docNumber[index], strukId, ksmIdPrep,
                      texGurD.tipOpId, texGurD.tipDokId[index], m_dateBegin, m_dateEnd)) then
      begin
        dm.q_doc.First;
        while (not dm.q_doc.Eof) do
        begin
          curSeriaId := 0;
          if ((texGurT = drugLoadList) or (texGurT = drugLoadSeries)
              or (texGurT = drugConsList) or (texGurT = drugConsSeries)
              or (texGurT = drugIncList) or (texGurT = drugIncSeries))
             and (texGurD.tipDokId[index] = 34) then         // технологический журнал
          begin
            seria := copy(dm.q_docNDOK.AsString, 11, length(dm.q_docNDOK.AsString) - 10);
            curSeriaId := getCurSeriaId(seria);
          end;
          openZagrKart(dm.q_docDOC_ID.AsInteger, self.ksmId);
          insertKartToTexGur(dm.q_docNDOK.AsString, seria, ksmIdPrep, texGurD.tipOpId, texGurD.tipDokId[index], curSeriaId);
          dm.q_doc.Next;
        end;
      end;
    end;
  end;

  if (withNorm) then
  begin
    if (openNorms(year, month, ksmIdPrep, strukId, ksmId)) then
      insertNormsToTexGur(ksmIdPrep);
  end;

  if (withPrepOst) then
  begin
    if (openPrepOst(strukId, ksmIdPrep, ksmId, m_dateBegin, m_dateEnd)) then
      insertPrepOstToTexGur(ksmIdPrep);
  end;
  if (withOst) then
  begin
    if (openCexOst(m_dateBegin, m_dateEnd, strukId)) then
      insertCexOstToTexGur;
  end;
  convertKeiId(ksmIdPrep);
  dm.mem_texGurKOL_RASH_EDIZ.OnChange := dm.mem_texGurKOL_RASH_EDIZChange;
  dm.mem_texGur.SortOn('kraz;nmat;date_dok;seria', []);
  dm.mem_texGur.First;
  dm.mem_texGur.BeforePost := dm.mem_texGurBeforePost;
  dm.mem_texGurKSM_ID.OnValidate := dm.mem_texGurKSM_IDValidate;
  dm.mem_texGur.EnableControls;

//  if (Splash <> nil) and (Splash.Active) then
//    Splash.Free;
end;

function TDrugLoad.openNorms(year, month, ksmIdPrep, strukId, ksmId : integer) : boolean;
begin
  dm.q_norm.Close;
  dm.q_norm.ParamByName('god').AsInteger := year;
  dm.q_norm.ParamByName('mes').AsInteger := month;
  dm.q_norm.ParamByName('kodp').AsInteger := ksmIdPrep;
  dm.q_norm.ParamByName('struk_id').AsInteger := strukId;
  dm.q_norm.ParamByName('ksm_id').AsInteger := ksmId;
  dm.q_norm.Open;
  dm.q_norm.First;
  result := not dm.q_norm.Eof;
end;

procedure TDrugLoad.insertNormsToTexGur(ksmIdPrep : integer);
begin
  dm.q_norm.First;
  while (not dm.q_norm.Eof) do
  begin
    if (ksmId = 0) or (ksmId = dm.q_normKSM_ID.AsInteger) then
    begin
      if (dm.mem_texGur.Locate('ksm_id;razdel_id',
                               VarArrayOf([dm.q_normKSM_ID.AsInteger,
                                           dm.q_normRAZDEL_ID.AsInteger]),
                               [])) then
      begin
        dm.mem_texGur.Edit;
        dm.mem_texGurKEI_ID_NORM.AsInteger := dm.q_normKEIN.AsInteger;
//        dm.mem_texGurKEI_ID_KART.AsInteger := dm.q_normKEIN.AsInteger;
        dm.mem_texGurNEIS.AsString := dm.q_normNEIS.AsString;
        dm.mem_texGurPLNORM.AsFloat := dm.q_normPLNORM.AsFloat;
        dm.mem_texGurGOST.AsString := dm.q_normGOST.AsString;
        dm.mem_texGurXARKT.AsString := dm.q_normXARKT.AsString;
        dm.mem_texGur.Post;
      end
      else
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
        dm.setDefaultDateDok(curMonth, m_dateEnd);
        if (texGurT = drugLoadSeria) then
        begin
          dm.mem_texGurSERIA.AsString := seria;
          dm.mem_texGurSERIA_ID.AsInteger := seriaId;
          dm.mem_texGurOLD_SERIA.AsString := seria;
          dm.mem_texGurOLD_SERIA_ID.AsInteger := seriaId;
        end;
        dm.mem_texGur.Post;
      end;
    end;
    dm.q_norm.Next;
  end;
  dm.mem_texGur.First;
  while (not dm.mem_texGur.Eof) do
  begin
    if (dm.q_norm.Locate('ksm_id;razdel_id',
                               VarArrayOf([dm.mem_texGurKSM_ID.AsInteger,
                                           dm.mem_texGurRAZDEL_ID.AsInteger]),
                               []))
       and (dm.mem_texGurKEI_ID_NORM.AsInteger = 0) then
    begin
      dm.mem_texGur.Edit;
      dm.mem_texGurKEI_ID_NORM.AsInteger := dm.q_normKEIN.AsInteger;
      dm.mem_texGurKEI_ID_KART.AsInteger := dm.q_normKEIN.AsInteger;
      dm.mem_texGurNEIS.AsString := dm.q_normNEIS.AsString;
      dm.mem_texGurPLNORM.AsFloat := dm.q_normPLNORM.AsFloat;
      dm.mem_texGurGOST.AsString := dm.q_normGOST.AsString;
      dm.mem_texGurXARKT.AsString := dm.q_normXARKT.AsString;
      dm.mem_texGur.Post;
    end;
    dm.mem_texGur.Next;
  end;
end;

function TDrugLoad.openZagrDoc(docName : string; strukId, ksmIdPrep,
                               tipOpId, tipDokId : integer;
                               dateBegin, dateEnd : TDate) : boolean;
begin
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
  dm.q_doc.MacroByName('doc_id').AsString := ' document.ndok like ''' + docName + ''' ';
  dm.q_doc.ParamByName('tip_op_id').AsInteger := tipOpId;
  dm.q_doc.ParamByName('tip_dok_id').AsInteger := tipDokId;
  dm.q_doc.Open;
  dm.q_doc.First;
  result := not dm.q_doc.Eof;
end;

procedure TDrugLoad.openZagrKart(docId, ksmId : integer);
begin
  dm.q_kart.Close;
  dm.q_kart.ParamByName('doc_id').AsInteger := docId;
  if (ksmId = 0) then
    dm.q_kart.MacroByName('ksm_id').AsString := '0=0'
  else
    dm.q_kart.MacroByName('ksm_id').AsString := 'kart.ksm_id = ' + IntToStr(ksmId);
  if (texGurT = drugLoadList) or (texGurT = drugLoadSeria) or (texGurT = drugLoadSeries)
     or (texGurT = drugLoadUsual)
     or (texGurT = drugConsList) or (texGurT = drugConsSeria) or (texGurT = drugConsSeries)
     or (texGurT = drugConsUsual) then
    dm.q_kart.MacroByName('usl').AsString := '0=0';
  if (texGurT = drugIncSum) or (texGurT = drugIncList) or (texGurT = drugIncSeria)
     or (texGurT = drugIncSeries) then
    dm.q_kart.MacroByName('usl').AsString := 'kart.kol_prih_ediz <> 0';
  dm.q_kart.Open;
end;

procedure TDrugLoad.insertKartToTexGur(docNumber, seria: string; ksmIdPrep,
                                       tipOpId, tipDokId, seriaId : integer);
begin
  dm.q_kart.First;
  while (not dm.q_kart.eof) do
  begin
    if (ksmId = 0) or (ksmId = dm.q_kartKSM_ID.AsInteger) then
    begin
      if (dm.mem_texGur.Locate('ksm_id;razdel_id',
                               VarArrayOf([dm.q_kartKSM_ID.AsInteger,
                                           dm.q_kartRAZDEL_ID.AsInteger]),
                               [])) and (dm.mem_texGurKOL_RASH_EDIZ.AsFloat = 0) then
      begin
        dm.mem_texGur.Edit;
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
      end;

      if (texGurT = drugLoadList) or (texGurT = drugLoadSeria) or (texGurT = drugLoadSeries)
         or (texGurT = drugLoadUsual)
         or (texGurT = drugConsList) or (texGurT = drugConsSeria) or (texGurT = drugConsSeries)
         or (texGurT = drugConsUsual) then
        dm.mem_texGurKOL_RASH_EDIZ.AsFloat := dm.q_kartKOL_RASH_EDIZ.AsFloat;
      if (texGurT = drugIncSum) or (texGurT = drugIncList) or (texGurT = drugIncSeria) or
         (texGurT = drugIncSeries) or (texGurT = drugIncUsual) then
        dm.mem_texGurKOL_RASH_EDIZ.AsFloat := dm.q_kartKOL_PRIH_EDIZ.AsFloat;
      dm.mem_texGurKEI_ID_KART.AsInteger := dm.q_kartKEI_ID.AsInteger;
      dm.mem_texGurDOC_ID.AsInteger := dm.q_kartDOC_ID.AsInteger;
      dm.mem_texGurKART_ID.AsInteger := dm.q_kartKART_ID.AsInteger;
      dm.mem_texGurSTROKA_ID.AsInteger := dm.q_kartSTROKA_ID.AsInteger;
      dm.mem_texGurDATE_DOK.AsDateTime := dm.q_docDATE_OP.AsDateTime;
      dm.mem_texGurOLD_DATE_DOK.AsDateTime := dm.q_docDATE_OP.AsDateTime;
      dm.mem_texGurDATE_DOK_RASH.AsDateTime := dm.mem_texGurDATE_DOK.AsDateTime;
      dm.mem_texGurUSER_NAME.AsString := dm.q_kartUSER_NAME.AsString;
      dm.mem_texGurNDOK.AsString := docNumber;
      dm.mem_texGurSERIA.AsString := seria;
      dm.mem_texGurSERIA_ID.AsInteger := seriaId;
      dm.mem_texGurOLD_SERIA.AsString := seria;
      dm.mem_texGurOLD_SERIA_ID.AsInteger := seriaId;
      dm.mem_texGurTIP_OP_ID.AsInteger := tipOpId;
      dm.mem_texGurTIP_DOK_ID.AsInteger := tipDokId;
      dm.mem_texGurKSM_ID_PREP.AsInteger := ksmIdPrep;
      dm.mem_texGur.Post;
    end;
    dm.q_kart.Next;
  end;
end;

function TDrugLoad.openPrepOst(strukId, ksmIdPrep, ksmId : integer;
                               dateBegin, dateEnd : TDate) : boolean;
begin
  dm.q_ost.Close;
  dm.q_ost.ParamByName('ksm_id').AsInteger := ksmId;
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
      if (texGurT = drugLoadSum) then
      begin
        dm.mem_texGurKOL_RASH_EDIZ.AsFloat := dm.q_ostZAG_PERIOD.AsFloat;
      end;
      if (texGurT = drugConsSum) then
      begin
        dm.mem_texGurKOL_RASH_EDIZ.AsFloat := dm.q_ostRASH_VIRAB_PERIOD.AsFloat;
      end;
      dm.mem_texGurRASH_VIRAB_PERIOD.AsFloat := dm.q_ostRASH_VIRAB_PERIOD.AsFloat;
      if (texGurT = drugConsSum) then
      begin
        dm.mem_texGurKOL_RASH_EDIZ.AsFloat := dm.q_ostRASH_VIRAB_PERIOD.AsFloat;
      end;
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
      if (texGurT = drugLoadSum) then
      begin
        dm.mem_texGurKOL_RASH_EDIZ.AsFloat := dm.q_ostZAG_PERIOD.AsFloat;
      end;
      dm.mem_texGurRASH_VIRAB_PERIOD.AsFloat := dm.q_ostRASH_VIRAB_PERIOD.AsFloat;
      if (texGurT = drugConsSum) then
      begin
        dm.mem_texGurKOL_RASH_EDIZ.AsFloat := dm.q_ostRASH_VIRAB_PERIOD.AsFloat;
      end;
      dm.mem_texGurPEREDANO_RASH_S.AsFloat := dm.q_ostPEREDANO_RASH_S.AsFloat;
      dm.mem_texGurPEREDANO_RASH_NZ.AsFloat := dm.q_ostPEREDANO_RASH_NZ.AsFloat;
      dm.mem_texGurKEI_ID_OST_PREP.AsInteger := dm.q_ostKEI_ID.AsInteger;
      dm.setDefaultDateDok(curMonth, m_dateEnd);
      if (texGurT = drugLoadSeria) or (texGurT = drugConsSeria) then
      begin
        dm.mem_texGurSERIA.AsString := seria;
        dm.mem_texGurSERIA_ID.AsInteger := seriaId;
        dm.mem_texGurOLD_SERIA.AsString := seria;
        dm.mem_texGurOLD_SERIA_ID.AsInteger := seriaId;
      end;
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
begin
  dm.mem_texGur.First;
  while (not dm.mem_texGur.Eof) do
  begin
    convertRecord(dm.mem_texGurPLNORM.AsFloat);
    dm.mem_texGur.Next;
  end;
end;

procedure TDrugLoad.convertRecord(var value : TFloatField; keiFrom, keiTo, tochn : integer);
begin
  if (value.AsFloat <> 0) then
  begin
    if (keiFrom <> keiTo) then
      value.AsFloat := RoundTo(value.AsFloat * dm.Koef_per(keiTo,
                                                           keiFrom,
                                                           dm.mem_texGurKSM_ID.AsInteger, db),
                               tochn);
  end;
end;

procedure TDrugLoad.convertRecord(plNorm : double);
var
  tochn, keiTo : integer;
begin
  dm.mem_texGurKOL_RASH_EDIZ.OnChange := nil;
  if (plNorm = 0) then
    keiTo := dm.mem_texGurKEI_ID_KART.AsInteger
  else
    keiTo := dm.mem_texGurKEI_ID_NORM.AsInteger;
  tochn := dm.getTochn(ksmIdPrep, dm.mem_texGurKSM_ID.AsInteger);
  dm.mem_texGur.Edit;
  convertRecord(dm.mem_texGurKOL_RASH_EDIZ, dm.mem_texGurKEI_ID_KART.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurOSTATOK_END_S, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurOSTATOK_END_NZ, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurOSTATOK_BEGIN_S, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurOSTATOK_BEGIN_NZ, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurPRIX, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurPEREDANO_PRIH_NZ, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurPRIX_PERIOD, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurZAG, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurZAG_PERIOD, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurRASH_VIRAB_PERIOD, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurPEREDANO_RASH_S, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurPEREDANO_RASH_NZ, dm.mem_texGurKEI_ID_OST_PREP.AsInteger, keiTo, tochn);
  convertRecord(dm.mem_texGurOSTATOK_END_S_CEX, dm.mem_texGurKEI_ID_OST_CEX.AsInteger, keiTo, tochn);
  dm.mem_texGur.Post;
  dm.mem_texGurKOL_RASH_EDIZ.OnChange := dm.mem_texGurKOL_RASH_EDIZChange;
end;

function TDrugLoad.saveTexGur() : boolean;
begin
  result := false;
  if (dm.mem_texGur.Modified)
     or (dm.mem_texGur.State = dsEdit)
     or (dm.mem_texGur.State = dsInsert) then
    dm.mem_texGur.Post;

//  Splash := ShowSplashWindow(bmpBook, 'Сохранение данных. Подождите, пожалуйста...', True, nil);
  try
    dm.mem_texGur.DisableControls;
    saveMemTexGur;
    result := true;

//    delEmptyZagrDocuments(seria, curYear, curMonth, ksmIdPrep, strukId);
//    db.commitWriteTrans(true);
//    Splash.Free;
    dm.mem_texGur.EnableControls;

  except
    on E : exception do
    begin
      MessageDlg('Произошла ошибка при записи!', mtWarning, [mbOK], 0);
      dm.mem_texGur.EnableControls;
      db.trans_read.RollbackRetaining;
//      if (Splash.Active) then
//        Splash.Free;
    end;
  end;
end;


procedure TDrugLoad.setKolRashField(value: TFloatField);
begin
  dm.mem_texGurKOL_RASH_EDIZ := value;
end;

procedure TDrugLoad.delEmptyDrugDocuments(year, month, ksmIdPrep, strukId : integer);
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
  dm.q_empyDoc.Close;
  dm.q_empyDoc.ParamByName('struk_id').AsInteger := strukId;
  dm.q_empyDoc.ParamByName('klient_id').AsInteger := ksmIdPrep;
  dm.q_empyDoc.ParamByName('dat1').AsDate := dateBegin;
  dm.q_empyDoc.ParamByName('dat2').AsDate := dateEnd;
  dm.q_empyDoc.Open;
  dm.q_empyDoc.First;
  while (not dm.q_empyDoc.Eof) do
  begin
    dm.q_empyDoc.Delete;
  end;
  if (dm.q_empyDoc.UpdatesPending) then
  begin
    dm.q_empyDoc.ApplyUpdates;
    db.commitWriteTrans(true);
  end;

end;

procedure TDrugLoad.delEmptyZagrDocuments(seria : string; year, month, ksmIdPrep, strukId : integer);
var
  dateBegin, dateEnd : TDate;
  str_month : string;
  index : integer;
begin
  if (month < 10) then
    str_month := '0' + IntToStr(month)
  else
    str_month := IntToStr(month);
  dateBegin := StrToDate('01.' + str_month + '.' + IntToStr(year));
  dateEnd := IncMonth(dateBegin, 1) - 1;

  for index := 0 to texGurD.size - 1 do
  begin
    if (openZagrDoc(texGurD.docNumber[index], strukId, ksmIdPrep,
                    texGurD.tipOpId, texGurD.tipDokId[index], dateBegin, dateEnd)) then
    begin
      dm.q_doc.First;
      while (not dm.q_doc.Eof) do
      begin
        openZagrKart(dm.q_docDOC_ID.AsInteger, 0);
        dm.q_kart.FetchAll;
        if (dm.q_kart.RecordCount = 0) then
          dm.q_doc.Delete
        else
          dm.q_doc.Next;
      end;
      if (dm.q_doc.UpdatesPending) then
      begin
        dm.q_doc.ApplyUpdates;
        db.commitWriteTrans(true);
      end;
    end;
  end;
end;

procedure TDrugLoad.saveExistingRecord(keiId : integer);
begin
  if (dm.mem_texGurKOL_RASH_EDIZ.AsFloat = 0)
     or (dm.mem_texGurDELETE.AsBoolean)  // строка занулена или помечена на удаление
     and (dm.mem_texGurDATE_DOK.AsDateTime = dm.mem_texGurOLD_DATE_DOK.AsDateTime) then
  begin
    deletePrih(dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurKSM_ID.AsInteger,
               strukId, dm.q_kartRAZDEL_ID.AsInteger);
    dm.q_kart.Delete;
  end;

  if (dm.mem_texGurKOL_RASH_EDIZ.AsFloat <> 0) and (not dm.mem_texGurDELETE.AsBoolean)
     and (dm.mem_texGurDATE_DOK.AsDateTime = dm.mem_texGurOLD_DATE_DOK.AsDateTime)
     and (dm.mem_texGurSERIA.AsString = dm.mem_texGurOLD_SERIA.AsString) then
  begin
    if ((dm.mem_texGurKOL_RASH_EDIZ.AsFloat <> dm.q_kartKOL_RASH_EDIZ.AsFloat)
        or (keiId <> dm.q_kartKEI_ID.AsInteger))
       and (dm.q_kartRAZDEL_ID.AsInteger = dm.mem_texGurRAZDEL_ID.AsInteger) then
    begin
      dm.q_kart.Edit;
      dm.q_kartKOL_RASH_EDIZ.AsFloat := dm.mem_texGurKOL_RASH_EDIZ.AsFloat;
      dm.q_kartKOL_PRIH_EDIZ.AsFloat := 0;
      dm.q_kartKEI_ID.AsInteger := keiId;
      dm.q_kart.Post;
      deletePrih(dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurKSM_ID.AsInteger,
                 strukId, dm.q_kartRAZDEL_ID.AsInteger);
    end;
    if (dm.q_kartRAZDEL_ID.AsInteger <> dm.mem_texGurRAZDEL_ID.AsInteger) then
    begin
      deletePrih(dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurKSM_ID.AsInteger,
                 strukId, dm.q_kartRAZDEL_ID.AsInteger);
      dm.q_kart.Delete;
      dm.q_kart.ApplyUpdates;
      saveNewRecord(keiId, 0);
      dm.delTexGurRecord;
    end;
  end;

  if (dm.mem_texGurDATE_DOK.AsDateTime <> dm.mem_texGurOLD_DATE_DOK.AsDateTime)
      or (dm.mem_texGurSERIA.AsString <> dm.mem_texGurOLD_SERIA.AsString) then
  begin
    deletePrih(dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurKSM_ID.AsInteger, strukId, dm.q_kartRAZDEL_ID.AsInteger);
    dm.q_kart.Delete;
    dm.q_kart.ApplyUpdates;
    if (findOrCreateZagrDocument(dm.mem_texGurSERIA.AsString, dm.mem_texGurDATE_DOK.AsDateTime,
                                 dm.mem_texGurDOC_ID.AsInteger, strukId, ksmIdPrep,
                                 curRecMonth, curRecYear)) then
      saveNewRecord(keiId, dm.mem_texGurKART_ID.AsInteger);
  end;
end;

procedure TDrugLoad.saveExistingIncRecord(keiId : integer);
begin
  if (dm.mem_texGurKOL_RASH_EDIZ.AsFloat = 0) or (dm.mem_texGurDELETE.AsBoolean) then
  begin
    deletePrih(dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurKSM_ID.AsInteger,
               strukId, dm.q_kartRAZDEL_ID.AsInteger, dm.mem_texGurDOC_ID.AsInteger);
    dm.q_kart.Close;
    db.commitWriteTrans(true);
  end
  else
  begin
    if (dm.mem_texGurKOL_RASH_EDIZ.AsFloat <> dm.q_kartKOL_PRIH_EDIZ.AsFloat)
       or (keiId <> dm.q_kartKEI_ID.AsInteger)
       or (dm.q_kartRAZDEL_ID.AsInteger <> dm.mem_texGurRAZDEL_ID.AsInteger)
       or (dm.mem_texGurDATE_DOK.AsDateTime <> dm.mem_texGurOLD_DATE_DOK.AsDateTime)
       or (dm.mem_texGurSERIA.AsString <> dm.mem_texGurOLD_SERIA.AsString) then
    begin
      deletePrih(dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurKSM_ID.AsInteger,
                 strukId, dm.q_kartRAZDEL_ID.AsInteger, dm.mem_texGurDOC_ID.AsInteger);
      dm.q_kart.Close;
      db.commitWriteTrans(true);
      if (findOrCreateZagrDocument(dm.mem_texGurSERIA.AsString, dm.mem_texGurDATE_DOK.AsDateTime,
                                   dm.mem_texGurDOC_ID.AsInteger, strukId, ksmIdPrep,
                                   curRecMonth, curRecYear)) then
      begin
        db.commitWriteTrans(true);
        addPrihod(dm.mem_texGurKOL_RASH_EDIZ.AsFloat, dm.mem_texGurKSM_ID.AsInteger,
                  keiId, dm.mem_texGurKSM_ID_PREP.AsInteger,
                  dm.mem_texGurRAZDEL_ID.AsInteger, dm.q_docDOC_ID.AsInteger);
      end;
    end;
  end;
//  if (dm.mem_texGurKOL_RASH_EDIZ.AsFloat = 0)
//     or (dm.mem_texGurDELETE.AsBoolean)  // строка занулена или помечена на удаление
//     and (dm.mem_texGurDATE_DOK.AsDateTime = dm.mem_texGurOLD_DATE_DOK.AsDateTime) then
//  begin
//    deletePrih(dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurKSM_ID.AsInteger,
//               strukId, dm.q_kartRAZDEL_ID.AsInteger, dm.mem_texGurDOC_ID.AsInteger);
//    dm.q_kart.Close;
//    db.commitWriteTrans(true);
//  end
//  else
//  begin
//    if (dm.mem_texGurKOL_RASH_EDIZ.AsFloat <> 0) and (not dm.mem_texGurDELETE.AsBoolean)
//       and (dm.mem_texGurDATE_DOK.AsDateTime = dm.mem_texGurOLD_DATE_DOK.AsDateTime)
//       and (dm.mem_texGurSERIA.AsString = dm.mem_texGurOLD_SERIA.AsString) then
//    begin
//      if (((dm.mem_texGurKOL_RASH_EDIZ.AsFloat <> dm.q_kartKOL_PRIH_EDIZ.AsFloat)
//           or (keiId <> dm.q_kartKEI_ID.AsInteger))
//          and (dm.q_kartRAZDEL_ID.AsInteger = dm.mem_texGurRAZDEL_ID.AsInteger))
//         or (dm.q_kartRAZDEL_ID.AsInteger <> dm.mem_texGurRAZDEL_ID.AsInteger) then
//      begin
//        deletePrih(dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurKSM_ID.AsInteger,
//                   strukId, dm.q_kartRAZDEL_ID.AsInteger, dm.mem_texGurDOC_ID.AsInteger);
//        dm.q_kart.Close;
//        db.commitWriteTrans(true);
//        addPrihod(dm.mem_texGurKOL_RASH_EDIZ.AsFloat, dm.mem_texGurKSM_ID.AsInteger,
//                  keiId, dm.mem_texGurKSM_ID_PREP.AsInteger,
//                  dm.mem_texGurRAZDEL_ID.AsInteger, dm.q_docDOC_ID.AsInteger);
//      end;
//    end;
//
//    if (dm.mem_texGurDATE_DOK.AsDateTime <> dm.mem_texGurOLD_DATE_DOK.AsDateTime)
//        or (dm.mem_texGurSERIA.AsString <> dm.mem_texGurOLD_SERIA.AsString) then
//    begin
//      deletePrih(dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurKSM_ID.AsInteger,
//                 strukId, dm.q_kartRAZDEL_ID.AsInteger, dm.mem_texGurDOC_ID.AsInteger);
//      dm.q_kart.Close;
//      db.commitWriteTrans(true);
//      if (findOrCreateZagrDocument(dm.mem_texGurSERIA.AsString, dm.mem_texGurDATE_DOK.AsDateTime,
//                                   dm.mem_texGurDOC_ID.AsInteger, strukId, ksmIdPrep,
//                                   curRecMonth, curRecYear)) then
//      begin
//        db.commitWriteTrans(true);
//        addPrihod(dm.mem_texGurKOL_RASH_EDIZ.AsFloat, dm.mem_texGurKSM_ID.AsInteger,
//                          keiId, dm.mem_texGurKSM_ID_PREP.AsInteger,
//                          dm.mem_texGurRAZDEL_ID.AsInteger, dm.q_docDOC_ID.AsInteger);
//      end;
//    end;
//  end;
end;

procedure TDrugLoad.deletePrih(ksmIdPrep, ksmId, strukId, razdelId, docId : integer);
begin
  deletePrixKart(ksmId, ksmIdPrep, strukId, razdelId, docId);
end;

procedure TDrugLoad.deletePrih(ksmIdPrep, ksmId, strukId, razdelId : integer);
begin
  if (texGurT = drugLoadSum) or (texGurT = drugLoadList)
     {or (texGurT = drugLoadSeria)} or (texGurT = drugLoadUsual)
     {or (texGurT = drugLoadSeries)} then
  begin
    openPrihSum(ksmIdPrep, strukId, ksmId, razdelId);
    if (dm.q_prihSumPRIHSUM.AsFloat <> 0) then
    begin
      dm.q_prihSum.Close;
      deletePrixKart(ksmId, ksmIdPrep, strukId, razdelId, 0);
    end;
    dm.q_prihSum.Close;
  end;
end;

procedure TDrugLoad.deletePrixKart(ksmId, ksmIdPr, strukId, razdelId, docId : integer);
begin
  openPrixKart(ksmIdPr, strukId, ksmId, razdelId, docId);
  if (dm.q_prixKart.RecordCount > 0) then
  begin
    dm.q_prixKart.First;
    while (not dm.q_prixKart.Eof) do
      dm.q_prixKart.Delete;
    dm.q_prixKart.ApplyUpdates;
  end;
end;

procedure TDrugLoad.openPrixKart(ksmIdPr, strukId, ksmId, razdelId, docId : integer);
var
  i : integer;
begin
  dm.q_prixKart.Close;
  dm.q_prixKart.ParamByName('struk_id').AsInteger := strukId;
  dm.q_prixKart.ParamByName('klient_id').AsInteger := ksmIdPr;
  dm.q_prixKart.ParamByName('dat1').AsDate := m_dateBegin;
  dm.q_prixKart.ParamByName('dat2').AsDate := m_dateEnd;
  dm.q_prixKart.ParamByName('ksm_id').AsInteger := ksmId;
  dm.q_prixKart.ParamByName('razdel_id').AsInteger := razdelId;
  if (docId <> 0) then
    dm.q_prixKart.ParamByName('doc_id').AsInteger := docId
  else
    dm.q_prixKart.ParamByName('doc_id').Clear;
  dm.q_prixKart.MacroByName('tip_dok_id').AsString := '';
  texGurD.formDocumentParams(texGurT, prepNmat, seria, ksmIdPrep, curMonth, curYear);
  for i := 0 to texGurD.size - 1 do
  begin
    dm.q_prixKart.MacroByName('tip_dok_id').AsString := dm.q_prixKart.MacroByName('tip_dok_id').AsString
                                                        + IntToStr(texGurD.tipDokId[i]);
    if (i < texGurD.size - 1) then
      dm.q_prixKart.MacroByName('tip_dok_id').AsString := dm.q_prixKart.MacroByName('tip_dok_id').AsString + ', ';
  end;
  dm.q_prixKart.Open;
end;

procedure TDrugLoad.openPrihSum(ksmIdPr, strukId, ksmId, razdelId : integer);
begin
  dm.q_prihSum.Close;
  dm.q_prihSum.ParamByName('struk_id').AsInteger := strukId;
  dm.q_prihSum.ParamByName('klient_id').AsInteger := ksmIdPr;
  dm.q_prihSum.ParamByName('dat1').AsDate := m_dateBegin;
  dm.q_prihSum.ParamByName('dat2').AsDate := m_dateEnd;
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
var
  keiIdMatrop_var : Variant;
  keiIdMatrop : integer;
begin
  if (kartId = 0) then
  begin
    keiIdMatrop_var := SelectToVarIB('select matrop.kei_id '
                                     + 'FROM matrop '
                                     + 'WHERE matrop.ksm_id = ' + IntToStr(ksmId),
                                     db.db, db.trans_read);
    keiIdMatrop := 0;
    if (keiIdMatrop_var <> NULL) then
      keiIdMatrop := keiIdMatrop_var;
    if (not findKsmIdAndRazdelIdAndKsmIdPrInOstatki(dm.mem_texGurKSM_ID.AsInteger,
                                                    dm.mem_texGurRAZDEL_ID.AsInteger,
                                                    dm.mem_texGurKSM_ID_PREP.AsInteger,
                                                    strukId))
       or ((keiIdMatrop <> 0) and (dm.q_ostatkiKEI_ID.AsInteger <> keiIdMatrop)) then
    begin
      createKartId(dm.mem_texGurKSM_ID.AsInteger, dm.mem_texGurRAZDEL_ID.AsInteger,
                   dm.mem_texGurKSM_ID_PREP.AsInteger, strukId,
                   keiIdMatrop_var, 0);
    end;
    dm.mem_texGur.Edit;
    dm.mem_texGurKART_ID.AsInteger := dm.q_ostatkiKART_ID.AsInteger;
    dm.mem_texGur.Post;
  end;
  dm.q_kart.Insert;
  dm.q_kart.FieldByName('Ksm_Id').AsInteger := dm.mem_texGurKsm_id.AsInteger;
  dm.q_kartKOL_RASH_EDIZ.AsFloat := dm.mem_texGurKOL_RASH_EDIZ.AsFloat;
  dm.q_kartKOL_PRIH_EDIZ.AsFloat := 0;
  dm.q_kart.FieldByName('razdel_Id').AsInteger := dm.mem_texGurRazdel_id.AsInteger;
  dm.q_kart.FieldByName('kei_Id').AsInteger := keiId;
  dm.q_kart.FieldByName('Doc_Id').AsInteger := dm.q_docDOC_ID.AsInteger;
  dm.q_kart.FieldByName('KART_Id').AsInteger := dm.mem_texGurKart_id.AsInteger;
  dm.q_kart.FieldByName('TIP_OP_Id').AsInteger := texGurD.tipOpId;
  dm.q_kart.FieldByName('TIP_DOK_Id').AsInteger := texGurD.tipDokId[0];
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

  dm.q_ostatki.Insert;
  dm.q_ostatki.Post;
  dm.q_ostatki.ApplyUpdates;
//  db.commitWriteTrans(true);
end;

function TDrugLoad.findOrCreateZagrDocument(seria : string; dateDok : TDate; docId,
                                           strukId, ksmIdPrep, month, year : integer) : boolean;
begin
  if (texGurD = nil) then
    texGurD := TTexGurDoc.Create;
  if (seria = '') then
  begin
    if (texGurT = drugLoadUsual) or (texGurT = drugLoadList) then
      texGurD.formDocumentParams(drugLoadUsual, prepNmat, seria, ksmIdPrep, month, year);
    if (texGurT = drugConsUsual) or (texGurT = drugConsList) then
      texGurD.formDocumentParams(drugConsUsual, prepNmat, seria, ksmIdPrep, month, year);
    if (texGurT = drugIncUsual) or (texGurT = drugIncList) then
      texGurD.formDocumentParams(drugIncUsual, prepNmat, seria, ksmIdPrep, month, year);
  end
  else
  begin
    if (texGurT = drugLoadSeria) or (texGurT = drugLoadList) or (texGurT = drugLoadSeries) then
      texGurD.formDocumentParams(drugLoadSeria, prepNmat, seria, ksmIdPrep, month, year);
    if (texGurT = drugConsSeria) or (texGurT = drugConsList) or (texGurT = drugConsSeries) then
      texGurD.formDocumentParams(drugConsSeria, prepNmat, seria, ksmIdPrep, month, year);
    if (texGurT = drugIncSeria) or (texGurT = drugIncList) or (texGurT = drugIncSeries) then
      texGurD.formDocumentParams(drugIncSeria, prepNmat, seria, ksmIdPrep, month, year);
  end;
  result := openZagrDoc(texGurD.docNumber[0], strukId, ksmIdPrep, texGurD.tipOpId,
                        texGurD.tipDokId[0], dateDok, dateDok);
  if (not result) {or ((dm.q_docDOC_ID.AsInteger <> docId) and (docId <> 0))} then
  begin
    dm.dateDok := dateDok;
    dm.strukId := strukId;
    dm.ksmIdPrep := ksmIdPrep;
    dm.tipOpId := texGurD.tipOpId;
    dm.tipDokId := texGurD.tipDokId[0];
    dm.q_doc.Insert;
    dm.q_docNDOK.AsString := texGurD.docNumber[0];
    dm.q_docDATE_DOK.AsDateTime := dateDok;
    dm.q_docDATE_OP.AsDateTime := dateDok;
    if (dm.q_doc.Modified) or (dm.q_doc.State = dsInsert) or (dm.q_doc.State = dsEdit) then
      dm.q_doc.Post;
    dm.q_doc.ApplyUpdates;
//    db.commitWriteTrans(true);
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
      DecodeDate(dm.mem_texGurDATE_DOK.AsDateTime, curRecYear, curRecMonth, curRecDay);
      if (dm.mem_texGurDOC_ID.AsInteger <> 0) then
      begin
        openZagrKart(dm.mem_texGurDOC_ID.AsInteger, ksmId);
        if (dm.q_kart.Locate('kart_id;doc_id;stroka_id',
                          VarArrayOf([dm.mem_texGurKART_ID.AsInteger,
                                      dm.mem_texGurDOC_ID.AsInteger,
                                      dm.mem_texGurSTROKA_ID.AsInteger]),
                          [])) then
        begin
          if (texGurT = drugLoadList) or (texGurT = drugLoadSeria) or (texGurT = drugLoadSeries)
           or (texGurT = drugLoadUsual)
           or (texGurT = drugConsList) or (texGurT = drugConsSeria) or (texGurT = drugConsSeries)
           or (texGurT = drugConsUsual) then
          begin
            saveExistingRecord(curKeiId);
          end
          else
            saveExistingIncRecord(curKeiId);
        end;
      end
      else
      begin
        if (dm.mem_texGurKOL_RASH_EDIZ.AsFloat <> 0) then
        begin
          if (findOrCreateZagrDocument(dm.mem_texGurSERIA.AsString, dm.mem_texGurDATE_DOK.AsDateTime,
                                       0, strukId, ksmIdPrep, curRecMonth, curRecYear)) then
          begin
            if (texGurT = drugLoadList) or (texGurT = drugLoadSeria)
               or (texGurT = drugLoadSeries) or (texGurT = drugLoadUsual)
               or (texGurT = drugConsList) or (texGurT = drugConsSeria)
               or (texGurT = drugConsSeries) or (texGurT = drugConsUsual) then
            begin
              openZagrKart(dm.q_docDOC_ID.AsInteger, ksmId);
              saveNewRecord(curKeiId, dm.mem_texGurKART_ID.AsInteger);
            end
            else
            begin
              dm.q_kart.Close;
              db.commitWriteTrans(true);
              addPrihod(dm.mem_texGurKOL_RASH_EDIZ.AsFloat, dm.mem_texGurKSM_ID.AsInteger,
                        curKeiId, dm.mem_texGurKSM_ID_PREP.AsInteger,
                        dm.mem_texGurRAZDEL_ID.AsInteger, dm.q_docDOC_ID.AsInteger);
            end;
          end;
        end;
      end;

      if (dm.q_kart.UpdatesPending) then
      begin
        dm.q_kart.ApplyUpdates;
        db.commitWriteTrans(true);
        addPrihod(dm.mem_texGurKOL_RASH_EDIZ.AsFloat, dm.mem_texGurKSM_ID.AsInteger,
                  curKeiId, dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurRAZDEL_ID.AsInteger);
      end
      else
      begin
        if (dm.mem_texGurOSTATOK_END_S.AsFloat < 0)
           or (dm.mem_texGurPRIX_PERIOD.AsFloat <> dm.mem_texGurZAG_PERIOD.AsFloat) then
        begin
          db.commitWriteTrans(true);
          addPrihod(dm.mem_texGurKOL_RASH_EDIZ.AsFloat, dm.mem_texGurKSM_ID.AsInteger,
                  curKeiId, dm.mem_texGurKSM_ID_PREP.AsInteger, dm.mem_texGurRAZDEL_ID.AsInteger);
        end;
//        if (texGurT = drugIncList) or (texGurT = drugIncSeria)
//           or (texGurT = drugIncSeries) or (texGurT = drugIncUsual) then
//        begin
//          db.commitWriteTrans(true);
//        end;

      end;
    except
      on e : exception do
      begin
        MessageDlg('Произошла ошибка при сохранении сырья: ' + dm.mem_texGurKSM_ID.AsString
                   + '. ' + e.Message, mtWarning, [mbOK], 0);
        db.trans_write.RollbackRetaining;
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

function TDrugLoad.getCurSeriaId(seria : string) : integer;
begin
  result := 0;
  if (drugSeria = nil) then
    drugSeria := TSeriaOstatki.Create(db);
  if (drugSeria.openSeria(self.ksmIdPrep, seria)) then
    result := drugSeria.seriaId;
end;

function TDrugLoad.getKolRashField: TFloatField;
begin
  result := dm.mem_texGurKOL_RASH_EDIZ;
end;

function TDrugLoad.getKolRashSum() : double;
var
  curKsmId, curRazdelId, curStrokaId : integer;
  curRashKol : double;
begin
  curStrokaId := 0;
  curKsmId := 0;
  curRazdelId := 0;
  curRashKol := 0;
  if (dm.mem_texGur.FieldByName('stroka_id').AsInteger <> 0) then
    curStrokaId := dm.mem_texGur.FieldByName('stroka_id').AsInteger
  else
  begin
    curKsmId := dm.mem_texGur.FieldByName('ksm_id').AsInteger;
    curRazdelId := dm.mem_texGur.FieldByName('razdel_id').AsInteger;
    curRashKol := dm.mem_texGur.FieldByName('kol_rash_ediz').AsFloat;
  end;

  result := 0;
  dm.mem_texGur.DisableControls;
  dm.mem_texGur.First;
  while (not dm.mem_texGur.Eof) do
  begin
    if (not dm.mem_texGurDELETE.AsBoolean) then    
      result := result + dm.mem_texGurKOL_RASH_EDIZ.AsFloat;
    dm.mem_texGur.Next;
  end;

  if (curStrokaId <> 0) then
    dm.mem_texGur.Locate('stroka_id', VarArrayOf([curStrokaId]), [])
  else
    dm.mem_texGur.Locate('ksm_id;razdel_id;kol_rash_ediz',
                                  VarArrayOf([curKsmId, curRazdelId, curRashKol]), []);
  dm.mem_texGur.EnableControls;
end;

procedure TDrugLoad.addTexGurLine;
begin
  dm.addTexGurRecord(curMonth, m_dateEnd);
  if (texGurT = drugLoadList) or (texGurT = drugConsList) then
  begin
    dm.mem_texGur.Edit;
    dm.mem_texGurKSM_ID.AsInteger := self.ksmId;
    dm.mem_texGurRAZDEL_ID.AsInteger := self.razdelId;
    dm.mem_texGurKRAZ.AsInteger := self.kraz;
    dm.mem_texGurKEI_ID_KART.AsInteger := self.keiIdSyr;
    dm.mem_texGurKEI_ID_NORM.AsInteger := self.keiIdSyr;
  end;
end;

procedure TDrugLoad.delTexGurRecord;
begin
  dm.delTexGurRecord;
end;

procedure TDrugLoad.delAllTexGurRecords;
begin
  dm.delAllTexGurRecords;
end;

procedure TDrugLoad.changeKeiId(keiId : integer; neis : string);
begin
  dm.changeKeiId(keiId, neis);
end;

procedure TDrugLoad.changeKsmId(ksmId : integer; nmat : string);
begin
  dm.changeKsmId(ksmId, nmat);
end;

procedure TDrugLoad.changeRazdel(razdelId, kraz : integer);
begin
  dm.changeRazdel(razdelId, kraz);
end;

procedure TDrugLoad.changeSeria(seria: string; seriaId: integer);
begin
  dm.changeSeria(seria, seriaId);
end;

procedure TDrugLoad.clearTexGurLoad;
begin
  dm.mem_texGur.EmptyTable;
end;

function TDrugLoad.isKeiIdChangeable() : boolean;
begin
  result := false;
  if (dm.mem_texGur.FieldByName('plnorm').AsFloat = 0) then
    result := true;
end;

procedure TDrugLoad.addPrihod(kolRash : double; ksmId, keiId, klientId, razdelId : integer);
var
  curMes, curGod : integer;
begin
  if (texGurT = drugLoadSum) {or (texGurT = drugLoadList)}
     {or (texGurT = drugLoadSeria) or (texGurT = drugLoadUsual)}
     {or (texGurT = drugLoadSeries)} then
  begin
    if (prih = nil) then
      prih := TPrihod.Create(db);
    curMes := self.curMonth;
    curGod := self.curYear;
    if (dm.mem_texGurDATE_DOK.AsDateTime < m_dateBegin)
       or (dm.mem_texGurDATE_DOK.AsDateTime > m_dateEnd) then
    begin
      curMes := StrToInt(copy(dm.mem_texGurDATE_DOK.AsString, 4, 2));
      curGod := StrToInt(copy(dm.mem_texGurDATE_DOK.AsString, 9, 2));
    end;
    prih.DobPrixPrep(false, ksmId, keiId, ksmIdPrep, strukId, razdelId, curMes,
                     curGod, kolRash);
//  FreeAndNil(prih);
  end;
end;

procedure TDrugLoad.addPrihod(kolRash : double; ksmId, keiId, klientId, razdelId, docId : integer);
var
  curMes, curGod : integer;
begin
  if (prih = nil) then
    prih := TPrihod.Create(db);
  curMes := self.curMonth;
  curGod := self.curYear;
  if (dm.mem_texGurDATE_DOK.AsDateTime < m_dateBegin)
     or (dm.mem_texGurDATE_DOK.AsDateTime > m_dateEnd) then
  begin
    curMes := StrToInt(copy(dm.mem_texGurDATE_DOK.AsString, 4, 2));
    curGod := StrToInt(copy(dm.mem_texGurDATE_DOK.AsString, 9, 2));
  end;
  prih.DobPrixPrep(false, ksmId, keiId, ksmIdPrep, strukId, razdelId, curMes,
                   curGod, docId, kolRash);


end;

end.
