unit DrugReportEdit;

interface

uses SeriaOstatki, DrugLoad, DBDM, TexGurTypes, Ediz, Find_Matrop, razdel,

  DateUtils,
  IBDatabase, Controls, SysUtils, Dialogs, kbmMemTable, Forms, Variants, DB,
  SplshWnd, Graphics;

type
  TDrugReportEdit = class
  private
    drSeriaLoad : TDrugLoad;
    drSeriaCons : TDrugLoad;
    drSeriaInc : TDrugLoad;
    db : TdDM;
    texGurTLoad : TTexGurType;
//    texGurTCons : TTexGurType;
//    serOstDrug : TSeriaOstatki;

    m_strukId, m_ksmIdDrug, m_seriaIdDrug, m_year, m_month, m_keiId, m_ksmId,
    m_keiIdSyr, m_razdelId, m_kraz : integer;
    m_seria, m_drugNmat : string;
    m_fullDrLoad, withAllOst : boolean;
    m_kolSeria : double;
    m_dateLoad : TDate;
    m_stateDrugLoad : boolean;
    procN : word;

    Splash : TForm;
    bmpBook: TBitmap;

    procedure addConsToDrugMem;
    procedure addDrugMemToCons;
    procedure addIncToDrugMem;
    procedure addDrugMemToInc;

  public
    Constructor Create(var db : TdDM; strukId : integer); overload;
    Constructor Create(var db : TdDM; strukId : integer; stateDrugLoad : boolean); overload;
    Destructor Destroy; override;
    procedure texGurLoadScroll(DataSet: TDataSet);
    procedure texGurConsScroll(DataSet: TDataSet);

    function getMemTexGurLoad() : TkbmMemTable;
    function getMemTexGurCons() : TkbmMemTable;
    // загрузка всего препарата
    procedure loadDrugSum(month, year, ksmIdDrug, keiId, ksmId : integer;                 // procN = 1
                              drugNmat : string);
    procedure loadDrugSeria(month, year, ksmIdDrug, keiId, ksmId, seriaId : integer;    // 2
                                drugNmat, seria : string; withAllOst : boolean);
    procedure loadDrugUsual(month, year, ksmIdDrug, keiId, ksmId : integer;             // 3
                                drugNmat : string; withAllOst : boolean);
    procedure loadDrugList(month, year, ksmIdDrug, keiId, ksmId, razdelId,              // 4
                               kraz, keiIdSyr : integer; drugNmat : string);

    // приход всего препарата
    procedure loadDrugIncSum(month, year, ksmIdDrug, keiId, ksmId : integer;                 // 11
                              drugNmat : string);
    procedure loadDrugIncSeria(month, year, ksmIdDrug, keiId, ksmId, seriaId : integer;    // 12
                                drugNmat, seria : string);
    procedure loadDrugIncUsual(month, year, ksmIdDrug, keiId, ksmId : integer;             // 13
                                drugNmat : string);
    procedure loadDrugIncList(month, year, ksmIdDrug, keiId, ksmId, razdelId,              // 14
                               kraz, keiIdSyr : integer; drugNmat : string);

    // загрузка расхода
    procedure loadDrugConsSum(month, year, ksmIdDrug, keiId, ksmId : integer;           // 31
                              drugNmat : string);
    procedure loadDrugConsSeria(month, year, ksmIdDrug, keiId, ksmId, seriaId : integer;  // 32
                                drugNmat, seria : string);
    procedure loadDrugConsUsual(month, year, ksmIdDrug, keiId, ksmId : integer;         // 33
                                drugNmat : string);
    procedure loadDrugConsList(month, year, ksmIdDrug, keiId, ksmId, razdelId,          // 34
                               kraz, keiIdSyr : integer; drugNmat : string);
    // загрузка загрузки
    procedure loadDrugLoadSum(month, year, ksmIdDrug, keiId, ksmId : integer;           // 21
                              drugNmat : string);
    procedure loadDrugLoadSeria(month, year, ksmIdDrug, keiId, ksmId, seriaId : integer;  // 22
                                drugNmat, seria : string; withAllOst : boolean);
    procedure loadDrugLoadUsual(month, year, ksmIdDrug, keiId, ksmId : integer;         // 23
                                drugNmat : string; withAllOst : boolean);
    procedure loadDrugLoadList(month, year, ksmIdDrug, keiId, ksmId, razdelId,          // 24
                               kraz, keiIdSyr : integer; drugNmat : string);

    procedure saveTexGurLoad(); // сохраняет текущую загрузку по сериям
    procedure loadCurrentDrugReport;
    procedure addTexGurLoadLine;
    procedure delTexGurLoadLine;
    procedure delTexGurLoadAllLines;
    procedure delDrugSeria(month, year, ksmIdDrug, keiId, ksmId, seriaId : integer;
                           drugNmat, seria : string);

    function isKeiIdChangeable() : boolean;
    procedure changeKeiId(keiId : integer; neis : string);
    procedure changeKsmId(ksmId : integer; nmat : string);
    procedure changeRazdel(razdelId, kraz : integer);
    procedure changeSeria(seria: string; seriaId : integer);
    procedure changeKeiIdGUI;
    procedure changeKsmIdGUI;
    procedure changeRazdelGUI;
    procedure chooseSeriaGUI(edit_seria : TControl);
    procedure copyTexGur(sourceTexGur : TDrugReportEdit);
    procedure showRashDetails;
    function getKolRashSum() : double;

    function getDateBegin() : TDate;
    function getDateEnd() : TDate;
    procedure clearGrid;

    procedure setDrugParams(month, year, ksmIdDrug, keiId, ksmId, razdelId, kraz,
                            keiIdSyr, seriaId : integer; drugNmat, seria : string);

    property strukId : integer read m_strukId write m_strukId;
    property ksmIdDrug : integer read m_ksmIdDrug write m_ksmIdDrug;
    property ksmId : integer read m_ksmId write m_ksmId;
    property seriaIdDrug : integer read m_seriaIdDrug write m_seriaIdDrug;
    property year : integer read m_year write m_year;
    property month : integer read m_month write m_month;
    property keiId : integer read m_keiId write m_keiId;
    property seria : string read m_seria write m_seria;
    property drugNmat : string read m_drugNmat write m_drugNmat;
    property withOst : boolean read m_fullDrLoad write m_fullDrLoad;
    property kolSeria : double read m_kolSeria;
    property dateLoad : TDate read m_dateLoad write m_dateLoad;
    property dateBegin : TDate read getDateBegin;
    property dateEnd : TDate read getDateEnd;
    property keiIdSyr : integer read m_keiIdSyr write m_keiIdSyr;
    property razdelId : integer read m_razdelId write m_razdelId;
    property kraz : integer read m_kraz write m_kraz;
    property stateDrugLoad : boolean read m_stateDrugLoad write m_stateDrugLoad;

    property texGurLoad : TkbmMemTable read getMemTexGurLoad;
    property texGurCons : TkbmMemTable read getMemTexGurCons;


  end;

implementation

uses DrugDetList;

Constructor TDrugReportEdit.Create(var db : TdDM; strukId : integer);
begin
  inherited Create;
  self.db := db;
  m_strukId := strukId;
  self.stateDrugLoad := true;
end;

Constructor TDrugReportEdit.Create(var db : TdDM; strukId : integer; stateDrugLoad : boolean);
begin
  inherited Create;
  self.db := db;
  m_strukId := strukId;
  self.stateDrugLoad := stateDrugLoad;
  procN := 0;
end;

Destructor TDrugReportEdit.Destroy;
begin
  FreeAndNil(drSeriaLoad);
  FreeAndNil(drSeriaCons);
  inherited Destroy;
end;

procedure TDrugReportEdit.texGurLoadScroll(DataSet: TDataSet);
begin
  drSeriaCons.texGurLoad.AfterScroll := nil;
  if (drSeriaCons <> nil) and (drSeriaCons.texGurLoad.RecordCount > 0) then
  begin
    drSeriaCons.texGurLoad.Locate('ksm_id;razdel_id;seria_id',
                                  VarArrayOf([drSeriaLoad.texGurLoad.FieldByName('ksm_id').AsInteger,
                                              drSeriaLoad.texGurLoad.FieldByName('razdel_id').AsInteger,
                                              drSeriaLoad.texGurLoad.FieldByName('seria_id').AsInteger]),
                                  []);
  end;
  drSeriaCons.texGurLoad.AfterScroll := texGurConsScroll;
end;

procedure TDrugReportEdit.texGurConsScroll(DataSet: TDataSet);
begin
  drSeriaLoad.texGurLoad.AfterScroll := nil;
  if (drSeriaLoad <> nil) and (drSeriaLoad.texGurLoad.RecordCount > 0) then
    drSeriaLoad.texGurLoad.Locate('ksm_id;razdel_id;seria_id',
                                  VarArrayOf([drSeriaCons.texGurLoad.FieldByName('ksm_id').AsInteger,
                                              drSeriaCons.texGurLoad.FieldByName('razdel_id').AsInteger,
                                              drSeriaCons.texGurLoad.FieldByName('seria_id').AsInteger]),
                                  []);
  drSeriaLoad.texGurLoad.AfterScroll := texGurLoadScroll;
end;

procedure TDrugReportEdit.loadDrugLoadSum(month, year, ksmIdDrug, keiId, ksmId : integer;
                                          drugNmat : string);
begin
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, 0, 0, 0, 0, drugNmat, '');
  self.withOst := true;
  if (drSeriaLoad = nil) then
    drSeriaLoad := TDrugLoad.Create(db);
  if (m_stateDrugLoad) then
    texGurTLoad := TexGurTypes.drugLoadSum
  else
    texGurTLoad := TexGurTypes.drugConsSum;
  drSeriaLoad.createTexGur(texGurTLoad, '', self.drugNmat, self.year, self.month,
                           self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                           0, 0, 0, 0, self.withOst, true, true);
//  drSeriaLoad.texGurLoad.AfterScroll := texGurLoadScroll;
  procN := 21;
end;

procedure TDrugReportEdit.loadDrugLoadSeria(month, year, ksmIdDrug, keiId, ksmId,
                                            seriaId : integer; drugNmat, seria : string;
                                            withAllOst : boolean);
begin
  self.withOst := withAllOst;
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, 0, 0, 0, seriaId, drugNmat, seria);
  if (drSeriaLoad = nil) then
    drSeriaLoad := TDrugLoad.Create(db);
  if (m_stateDrugLoad) then
    texGurTLoad := TexGurTypes.drugLoadSeria
  else
    texGurTLoad := TexGurTypes.drugConsSeria;
  drSeriaLoad.createTexGur(texGurTLoad, self.seria, self.drugNmat, self.year, self.month,
                           self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                           0, 0, 0, self.seriaIdDrug, self.withOst, withAllOst, withAllOst);
  procN := 22;
end;

procedure TDrugReportEdit.loadDrugLoadUsual(month, year, ksmIdDrug, keiId, ksmId : integer;
                                            drugNmat : string; withAllOst : boolean);
begin
  self.withOst := withAllOst;
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, 0, 0, 0, 0, drugNmat, '');
  if (drSeriaLoad = nil) then
    drSeriaLoad := TDrugLoad.Create(db);
  if (m_stateDrugLoad) then
    texGurTLoad := TexGurTypes.drugLoadUsual
  else
    texGurTLoad := TexGurTypes.drugConsUsual;
  drSeriaLoad.createTexGur(texGurTLoad, self.seria, self.drugNmat, self.year, self.month,
                           self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                           0, 0, 0, self.seriaIdDrug, self.withOst, true, true);
  procN := 23;
end;

procedure TDrugReportEdit.loadDrugConsList(month, year, ksmIdDrug, keiId, ksmId,
  razdelId, kraz, keiIdSyr: integer; drugNmat: string);
begin
  self.withOst := false;
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, razdelId, kraz, keiIdSyr,
                0, drugNmat, '');
  if (drSeriaCons = nil) then
    drSeriaCons := TDrugLoad.Create(db);
  texGurTLoad := TexGurTypes.drugConsList;
  drSeriaCons.createTexGur(texGurTLoad, '', self.drugNmat, self.year, self.month,
                           self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                           keiIdSyr, razdelId, kraz, 0, self.withOst, false, false);
  procN := 34;
end;

procedure TDrugReportEdit.loadDrugConsSeria(month, year, ksmIdDrug, keiId, ksmId,
                                            seriaId : integer; drugNmat, seria : string);
begin
  self.withOst := false;
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, 0, 0, 0, seriaId, drugNmat, seria);
  if (drSeriaCons = nil) then
    drSeriaCons := TDrugLoad.Create(db);
  texGurTLoad := TexGurTypes.drugConsSeria;
  drSeriaCons.createTexGur(texGurTLoad, self.seria, self.drugNmat, self.year, self.month,
                           self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                           0, 0, 0, self.seriaIdDrug, self.withOst, false, false);
  procN := 32;
end;

procedure TDrugReportEdit.loadDrugConsSum(month, year, ksmIdDrug, keiId,
  ksmId: integer; drugNmat: string);
begin
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, 0, 0, 0, 0, drugNmat, '');
  self.withOst := false;
  if (drSeriaCons = nil) then
    drSeriaCons := TDrugLoad.Create(db);
  texGurTLoad := TexGurTypes.drugConsSum;
  drSeriaCons.createTexGur(texGurTLoad, '', self.drugNmat, self.year, self.month,
                           self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                           0, 0, 0, 0, self.withOst, false, false);
  procN := 31;
end;

procedure TDrugReportEdit.loadDrugConsUsual(month, year, ksmIdDrug, keiId,
  ksmId: integer; drugNmat: string);
begin
  self.withOst := true;
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, 0, 0, 0, 0, drugNmat, '');
  if (drSeriaCons = nil) then
    drSeriaCons := TDrugLoad.Create(db);
  texGurTLoad := TexGurTypes.drugConsUsual;
  drSeriaCons.createTexGur(texGurTLoad, self.seria, self.drugNmat, self.year, self.month,
                           self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                           0, 0, 0, self.seriaIdDrug, self.withOst, false, false);
  procN := 33;
end;

procedure TDrugReportEdit.loadDrugIncList(month, year, ksmIdDrug, keiId, ksmId,
  razdelId, kraz, keiIdSyr: integer; drugNmat: string);
begin
  self.withOst := false;
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, razdelId, kraz, keiIdSyr,
                0, drugNmat, '');
  if (drSeriaInc = nil) then
    drSeriaInc := TDrugLoad.Create(db);
  texGurTLoad := TexGurTypes.drugIncList;
  drSeriaInc.createTexGur(texGurTLoad, '', self.drugNmat, self.year, self.month,
                          self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                          keiIdSyr, razdelId, kraz, 0, self.withOst, false, false);
  procN := 14;
end;

procedure TDrugReportEdit.loadDrugIncSeria(month, year, ksmIdDrug, keiId, ksmId,
  seriaId: integer; drugNmat, seria: string);
begin
  self.withOst := false;
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, 0, 0, 0, seriaId, drugNmat, seria);
  if (drSeriaInc = nil) then
    drSeriaInc := TDrugLoad.Create(db);
  texGurTLoad := TexGurTypes.drugIncSeria;
  drSeriaInc.createTexGur(texGurTLoad, self.seria, self.drugNmat, self.year, self.month,
                           self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                           0, 0, 0, self.seriaIdDrug, self.withOst, false, false);
  procN := 12;
end;

procedure TDrugReportEdit.loadDrugIncSum(month, year, ksmIdDrug, keiId,
  ksmId: integer; drugNmat: string);
begin
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, 0, 0, 0, 0, drugNmat, '');
  self.withOst := false;
  if (drSeriaInc = nil) then
    drSeriaCons := TDrugLoad.Create(db);
  texGurTLoad := TexGurTypes.drugIncSum;
  drSeriaInc.createTexGur(texGurTLoad, '', self.drugNmat, self.year, self.month,
                           self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                           0, 0, 0, 0, self.withOst, false, false);
  procN := 11;
end;

procedure TDrugReportEdit.loadDrugIncUsual(month, year, ksmIdDrug, keiId,
  ksmId: integer; drugNmat: string);
begin
  self.withOst := false;
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, 0, 0, 0, 0, drugNmat, '');
  if (drSeriaInc = nil) then
    drSeriaInc := TDrugLoad.Create(db);
  texGurTLoad := TexGurTypes.drugIncUsual;
  drSeriaInc.createTexGur(texGurTLoad, self.seria, self.drugNmat, self.year, self.month,
                          self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                          0, 0, 0, self.seriaIdDrug, self.withOst, false, false);
end;

procedure TDrugReportEdit.loadDrugList(month, year, ksmIdDrug, keiId, ksmId,
  razdelId, kraz, keiIdSyr: integer; drugNmat: string);
begin
  if (Splash <> nil) and (Splash.Active) then
    Splash.Free;
  Splash := ShowSplashWindow(bmpBook,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  try
    loadDrugLoadList(month, year, ksmIdDrug, keiId, ksmId, razdelId,kraz, keiIdSyr, drugNmat);
    loadDrugConsList(month, year, ksmIdDrug, keiId, ksmId, razdelId,kraz, keiIdSyr, drugNmat);
    addConsToDrugMem;
    loadDrugIncList(month, year, ksmIdDrug, keiId, ksmId, razdelId,kraz, keiIdSyr, drugNmat);
    addIncToDrugMem;
    procN := 4;
    if (Splash <> nil) and (Splash.Active) then
      Splash.Free;
  except
  on e : exception do
    if (Splash <> nil) and (Splash.Active) then
      Splash.Free;
  end;
end;

procedure TDrugReportEdit.loadDrugSeria(month, year, ksmIdDrug, keiId, ksmId,
  seriaId: integer; drugNmat, seria: string; withAllOst : boolean);
//var
//  d1 : TDateTime;
begin
//  d1 := Now;
  if (Splash <> nil) and (Splash.Active) then
    Splash.Free;
  Splash := ShowSplashWindow(bmpBook,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  try
    self.withAllOst := withAllOst;
    loadDrugLoadSeria(month, year, ksmIdDrug, keiId, ksmId, seriaId, drugNmat, seria, withAllOst);
    loadDrugConsSeria(month, year, ksmIdDrug, keiId, ksmId, seriaId, drugNmat, seria);
    addConsToDrugMem;
    loadDrugIncSeria(month, year, ksmIdDrug, keiId, ksmId, seriaId, drugNmat, seria);
    addIncToDrugMem;
    procN := 2;
    if (Splash <> nil) and (Splash.Active) then
      Splash.Free;
  except
  on e : exception do
    if (Splash <> nil) and (Splash.Active) then
      Splash.Free;
  end;
//  ShowMessage(DateTimeToStr(d1) + ' - ' + DateTimeToStr(Now));
end;

procedure TDrugReportEdit.loadDrugSum(month, year, ksmIdDrug, keiId,
  ksmId: integer; drugNmat: string);
begin
  if (Splash <> nil) and (Splash.Active) then
    Splash.Free;
  Splash := ShowSplashWindow(bmpBook,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  try
    loadDrugLoadSum(month, year, ksmIdDrug, keiId, ksmId, drugNmat);
    drSeriaLoad.texGurLoad.First;
    while (not drSeriaLoad.texGurLoad.Eof) do
    begin
      drSeriaLoad.texGurLoad.Edit;
      drSeriaLoad.texGurLoad.FieldByName('KOL_RASH_VIRAB').AsFloat := drSeriaLoad.texGurLoad.FieldByName('RASH_VIRAB_PERIOD').AsFloat;
      drSeriaLoad.texGurLoad.FieldByName('KOL_PRIH').AsFloat := drSeriaLoad.texGurLoad.FieldByName('PRIX').AsFloat;
      drSeriaLoad.texGurLoad.Post;
      drSeriaLoad.texGurLoad.Next;
    end;
  //  loadDrugConsSum(month, year, ksmIdDrug, keiId, ksmId, drugNmat);
  //  addConsToDrugMem;
  //  loadDrugIncSum(month, year, ksmIdDrug, keiId, ksmId, drugNmat);
  //  addIncToDrugMem;
    procN := 1;
  if (Splash <> nil) and (Splash.Active) then
      Splash.Free;
  except
  on e : exception do
    if (Splash <> nil) and (Splash.Active) then
      Splash.Free;
  end;
end;

procedure TDrugReportEdit.loadDrugUsual(month, year, ksmIdDrug, keiId,
                                        ksmId: integer; drugNmat: string; withAllOst : boolean);
begin
  if (Splash <> nil) and (Splash.Active) then
    Splash.Free;
  Splash := ShowSplashWindow(bmpBook,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  try
    self.withAllOst := withAllOst;
    loadDrugLoadUsual(month, year, ksmIdDrug, keiId, ksmId, drugNmat, withAllOst);
    loadDrugConsUsual(month, year, ksmIdDrug, keiId, ksmId, drugNmat);
    addConsToDrugMem;
    loadDrugIncUsual(month, year, ksmIdDrug, keiId, ksmId, drugNmat);
    addIncToDrugMem;
    procN := 3;
    if (Splash <> nil) and (Splash.Active) then
      Splash.Free;
  except
  on e : exception do
    if (Splash <> nil) and (Splash.Active) then
      Splash.Free;
  end;
end;

procedure TDrugReportEdit.loadDrugLoadList(month, year, ksmIdDrug, keiId, ksmId,
                                           razdelId, kraz, keiIdSyr : integer; drugNmat : string);
begin
  self.withOst := false;
  setDrugParams(month, year, ksmIdDrug, keiId, ksmId, razdelId, kraz, keiIdSyr,
                0, drugNmat, '');
  if (drSeriaLoad = nil) then
    drSeriaLoad := TDrugLoad.Create(db);
  if (m_stateDrugLoad) then
    texGurTLoad := TexGurTypes.drugLoadList
  else
    texGurTLoad := TexGurTypes.drugConsList;
  drSeriaLoad.createTexGur(texGurTLoad, '', self.drugNmat, self.year, self.month,
                           self.ksmIdDrug, self.strukId, self.keiId, self.ksmId,
                           keiIdSyr, razdelId, kraz, 0, self.withOst, true, true);
  procN := 24;
end;

procedure TDrugReportEdit.loadCurrentDrugReport;
begin
  if (procN = 1) then
    loadDrugSum(month, year, ksmIdDrug, keiId, ksmId, drugNmat);
  if (procN = 2) then
    loadDrugSeria(month, year, ksmIdDrug, keiId, ksmId, seriaIdDrug, drugNmat, seria, withAllOst);
  if (procN = 3) then
    loadDrugUsual(month, year, ksmIdDrug, keiId, ksmId, drugNmat, withAllOst);
  if (procN = 4) then
    loadDrugList(month, year, ksmIdDrug, keiId, ksmId, razdelId, kraz, keiIdSyr, drugNmat);

  if (procN = 21) then
    loadDrugLoadSum(month, year, ksmIdDrug, keiId, ksmId, drugNmat);
  if (procN = 22) then
    loadDrugLoadSeria(month, year, ksmIdDrug, keiId, ksmId, seriaIdDrug, drugNmat, seria, withAllOst);
  if (procN = 23) then
    loadDrugLoadUsual(month, year, ksmIdDrug, keiId, ksmId, drugNmat, withAllOst);
  if (procN = 24) then
    loadDrugLoadList(month, year, ksmIdDrug, keiId, ksmId, razdelId, kraz, keiIdSyr, drugNmat);

  if (procN = 31) then
    loadDrugConsSum(month, year, ksmIdDrug, keiId, ksmId, drugNmat);
  if (procN = 32) then
    loadDrugConsSeria(month, year, ksmIdDrug, keiId, ksmId, seriaIdDrug, drugNmat, seria);
  if (procN = 33) then
    loadDrugConsUsual(month, year, ksmIdDrug, keiId, ksmId, drugNmat);
  if (procN = 34) then
    loadDrugConsList(month, year, ksmIdDrug, keiId, ksmId, razdelId, kraz, keiIdSyr, drugNmat);

  if (procN = 11) then
    loadDrugIncSum(month, year, ksmIdDrug, keiId, ksmId, drugNmat);
  if (procN = 12) then
    loadDrugIncSeria(month, year, ksmIdDrug, keiId, ksmId, seriaIdDrug, drugNmat, seria);
  if (procN = 13) then
    loadDrugIncUsual(month, year, ksmIdDrug, keiId, ksmId, drugNmat);
  if (procN = 14) then
    loadDrugIncList(month, year, ksmIdDrug, keiId, ksmId, razdelId, kraz, keiIdSyr, drugNmat);
end;

procedure TDrugReportEdit.saveTexGurLoad();
begin
  if (Splash <> nil) and (Splash.Active) then
    Splash.Free;
  Splash := ShowSplashWindow(bmpBook, 'Сохранение данных. Подождите, пожалуйста...', True, nil);
  try
    addDrugMemToCons;
    addDrugMemToInc;
    if (procN < 10) then
    begin
      if (drSeriaInc <> nil) then
      begin
        if (drSeriaInc.saveTexGur()) then
        begin
          if (drSeriaLoad <> nil) then
          begin
            if (drSeriaLoad.saveTexGur()) then
            begin
              if (drSeriaCons <> nil) then
              begin
                if (drSeriaCons.saveTexGur()) then
                begin
                  loadCurrentDrugReport;
                end;
              end;
            end;
          end;
        end;
      end;
    end;

    if (procN > 20) and (procN < 30) then
    begin
      if (drSeriaInc <> nil) then
      begin
        if (drSeriaInc.saveTexGur()) then
        begin
          if (drSeriaLoad <> nil) then
          begin
            if (drSeriaLoad.saveTexGur()) then
            begin
              loadCurrentDrugReport;
            end;
          end;
        end;
      end;
    end;

    if (procN > 30) and (procN < 40) then
    begin
      if (drSeriaCons <> nil) then
      begin
        if (drSeriaCons.saveTexGur()) then
        begin
          loadCurrentDrugReport;
        end;
      end;
    end;

    if (procN > 10) and (procN < 20) then
    begin
      if (drSeriaInc <> nil) then
      begin
        if (drSeriaInc.saveTexGur()) then
        begin
          loadCurrentDrugReport;
        end;
      end;
    end;

    if (drSeriaLoad <> nil) then
      drSeriaLoad.delEmptyDrugDocuments(year, month, ksmIdDrug, strukId)
    else
      if (drSeriaCons <> nil) then
        drSeriaCons.delEmptyDrugDocuments(year, month, ksmIdDrug, strukId)
      else
        if (drSeriaInc <> nil) then
          drSeriaInc.delEmptyDrugDocuments(year, month, ksmIdDrug, strukId);
    if (Splash <> nil) and (Splash.Active) then
      Splash.Free;
  except
  on e : exception do
    if (Splash <> nil) and (Splash.Active) then
      Splash.Free;
  end;
end;

procedure TDrugReportEdit.setDrugParams(month, year, ksmIdDrug, keiId, ksmId,
                                        razdelId, kraz, keiIdSyr, seriaId : integer;
                                        drugNmat, seria : string);
begin
  self.month := month;
  self.year := year;
  self.ksmIdDrug := ksmIdDrug;
  self.drugNmat := drugNmat;
  self.keiId := keiId;
  self.seria := seria;
  self.ksmId := ksmId;
  self.seriaIdDrug := seriaIdDrug;
  self.keiIdSyr := keiIdSyr;
  self.razdelId := razdelId;
  self.kraz := kraz;
  if (year = 0) or (month = 0) or (ksmIdDrug = 0) or (strukId = 0) or (keiId = 0) then
  begin
    ShowMessage('Не все параметры были заданы для отображения загрузки сырья на препарат!');
    Abort;
  end;
end;

procedure TDrugReportEdit.showRashDetails;
var
  rashDet : TDrugDetList;
  curKsmId, curRazdelId : integer;
begin
  rashDet := TDrugDetList.Create;
  rashDet.ShowDetails(db, month, year, ksmIdDrug, keiId,
                      drSeriaLoad.texGurLoad.FieldByName('ksm_id').AsInteger,
                      strukId, drSeriaLoad.texGurLoad.FieldByName('razdel_id').AsInteger,
                      drSeriaLoad.texGurLoad.FieldByName('kraz').AsInteger,
                      drSeriaLoad.getCurKeiId(), drugNmat);
  curKsmId := drSeriaLoad.texGurLoad.FieldByName('ksm_id').AsInteger;
  curRazdelId := drSeriaLoad.texGurLoad.FieldByName('razdel_id').AsInteger;
  if (rashDet.modified) then
  begin
    loadCurrentDrugReport;
    drSeriaLoad.texGurLoad.Locate('ksm_id;razdel_id', VarArrayOf([curKsmId, curRazdelId]), []);
  end;
end;

procedure TDrugReportEdit.addIncToDrugMem;
begin
  drSeriaInc.texGurLoad.First;
  while (not drSeriaInc.texGurLoad.Eof) do
  begin
    if (drSeriaLoad.texGurLoad.Locate('ksm_id;razdel_id;kol_prih;seria',
                                      VarArrayOf([drSeriaInc.texGurLoad.FieldByName('KSM_ID').AsInteger,
                                                  drSeriaInc.texGurLoad.FieldByName('RAZDEL_ID').AsInteger,
                                                  0,
                                                  drSeriaInc.texGurLoad.FieldByName('SERIA').AsString]),
                                      [])) then
    begin
      drSeriaLoad.texGurLoad.Edit
    end
    else
    begin
      drSeriaLoad.texGurLoad.Append;
    end;
    drSeriaInc.convertRecord(drSeriaLoad.texGurLoad.FieldByName('PLNORM').AsFloat);
    drSeriaLoad.texGurLoad.FieldByName('KSM_ID').AsInteger := drSeriaInc.texGurLoad.FieldByName('KSM_ID').AsInteger;
    drSeriaLoad.texGurLoad.FieldByName('RAZDEL_ID').AsInteger := drSeriaInc.texGurLoad.FieldByName('RAZDEL_ID').AsInteger;
    drSeriaLoad.texGurLoad.FieldByName('KRAZ').AsInteger := drSeriaInc.texGurLoad.FieldByName('KRAZ').AsInteger;
    drSeriaLoad.texGurLoad.FieldByName('KOL_PRIH').AsFloat := drSeriaLoad.texGurLoad.FieldByName('KOL_PRIH').AsFloat
                                                              + drSeriaInc.texGurLoad.FieldByName('KOL_RASH_EDIZ').AsFloat;
    if (drSeriaLoad.texGurLoad.FieldByName('KOL_RASH_EDIZ').AsInteger = 0) then
      drSeriaLoad.texGurLoad.FieldByName('DATE_DOK').AsDateTime := drSeriaInc.texGurLoad.FieldByName('DATE_DOK').AsDateTime;
    drSeriaLoad.texGurLoad.FieldByName('STROKA_ID_PRIH').AsInteger := drSeriaInc.texGurLoad.FieldByName('STROKA_ID').AsInteger;
    drSeriaLoad.texGurLoad.FieldByName('NMAT').AsString := drSeriaInc.texGurLoad.FieldByName('NMAT').AsString;
    drSeriaLoad.texGurLoad.FieldByName('SERIA').AsString := drSeriaInc.texGurLoad.FieldByName('SERIA').AsString;
    drSeriaLoad.texGurLoad.FieldByName('SERIA_ID').AsInteger := drSeriaInc.texGurLoad.FieldByName('SERIA_ID').AsInteger;
    drSeriaLoad.texGurLoad.FieldByName('KSM_ID_PREP').AsInteger := drSeriaInc.texGurLoad.FieldByName('KSM_ID_PREP').AsInteger;
    drSeriaLoad.texGurLoad.Post;
    drSeriaInc.texGurLoad.Next;
  end;
end;

procedure TDrugReportEdit.addConsToDrugMem;
begin
  drSeriaCons.texGurLoad.First;
  while (not drSeriaCons.texGurLoad.Eof) do
  begin
    if (drSeriaLoad.texGurLoad.Locate('ksm_id;razdel_id;kol_rash_virab;seria',
                                      VarArrayOf([drSeriaCons.texGurLoad.FieldByName('KSM_ID').AsInteger,
                                                  drSeriaCons.texGurLoad.FieldByName('RAZDEL_ID').AsInteger,
                                                  0,
                                                  drSeriaCons.texGurLoad.FieldByName('SERIA').AsString]),
                                      [])) then
    begin
      drSeriaLoad.texGurLoad.Edit
    end
    else
    begin
      drSeriaLoad.texGurLoad.Append;
    end;
    drSeriaCons.convertRecord(drSeriaLoad.texGurLoad.FieldByName('PLNORM').AsFloat);
    drSeriaLoad.texGurLoad.FieldByName('KSM_ID').AsInteger := drSeriaCons.texGurLoad.FieldByName('KSM_ID').AsInteger;
    drSeriaLoad.texGurLoad.FieldByName('RAZDEL_ID').AsInteger := drSeriaCons.texGurLoad.FieldByName('RAZDEL_ID').AsInteger;
    drSeriaLoad.texGurLoad.FieldByName('KRAZ').AsInteger := drSeriaCons.texGurLoad.FieldByName('KRAZ').AsInteger;
    drSeriaLoad.texGurLoad.FieldByName('KOL_RASH_VIRAB').AsFloat := drSeriaLoad.texGurLoad.FieldByName('KOL_RASH_VIRAB').AsFloat
                                                                    + drSeriaCons.texGurLoad.FieldByName('KOL_RASH_EDIZ').AsFloat;
    drSeriaLoad.texGurLoad.FieldByName('DATE_DOK_RASH').AsDateTime := drSeriaCons.texGurLoad.FieldByName('DATE_DOK').AsDateTime;
    drSeriaLoad.texGurLoad.FieldByName('STROKA_ID_RASH').AsInteger := drSeriaCons.texGurLoad.FieldByName('STROKA_ID').AsInteger;
    drSeriaLoad.texGurLoad.FieldByName('NMAT').AsString := drSeriaCons.texGurLoad.FieldByName('NMAT').AsString;
    drSeriaLoad.texGurLoad.FieldByName('SERIA').AsString := drSeriaCons.texGurLoad.FieldByName('SERIA').AsString;
    drSeriaLoad.texGurLoad.FieldByName('SERIA_ID').AsInteger := drSeriaCons.texGurLoad.FieldByName('SERIA_ID').AsInteger;
    drSeriaLoad.texGurLoad.FieldByName('KSM_ID_PREP').AsInteger := drSeriaCons.texGurLoad.FieldByName('KSM_ID_PREP').AsInteger;
    drSeriaLoad.texGurLoad.Post;
    drSeriaCons.texGurLoad.Next;
  end;
end;

procedure TDrugReportEdit.addDrugMemToCons;
begin
  drSeriaLoad.texGurLoad.DisableControls;
  drSeriaLoad.texGurLoad.First;
  while (not drSeriaLoad.texGurLoad.Eof) do
  begin
    if (drSeriaLoad.texGurLoad.FieldByName('STROKA_ID_RASH').AsInteger <> 0) then
    begin
      if (drSeriaCons.texGurLoad.Locate('stroka_id',
                                        VarArrayOf([drSeriaLoad.texGurLoad.FieldByName('STROKA_ID_RASH').AsInteger]),
                                        [])) then
      begin
        drSeriaCons.texGurLoad.Edit
      end
      else
      begin
        drSeriaCons.texGurLoad.Append;
      end;
    end
    else
    begin
      if (drSeriaCons.texGurLoad.Locate('ksm_id;razdel_id;stroka_id;seria',
                                        VarArrayOf([drSeriaLoad.texGurLoad.FieldByName('KSM_ID').AsInteger,
                                                    drSeriaLoad.texGurLoad.FieldByName('RAZDEL_ID').AsInteger,
                                                    0,
                                                    drSeriaLoad.texGurLoad.FieldByName('SERIA').AsString]),
                                        [])) then
      begin
        drSeriaCons.texGurLoad.Edit
      end
      else
      begin
        drSeriaCons.texGurLoad.Append;
      end;
    end;
    drSeriaCons.texGurLoad.FieldByName('KSM_ID').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KSM_ID').AsInteger;
    drSeriaCons.texGurLoad.FieldByName('RAZDEL_ID').AsInteger := drSeriaLoad.texGurLoad.FieldByName('RAZDEL_ID').AsInteger;
    drSeriaCons.texGurLoad.FieldByName('KRAZ').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KRAZ').AsInteger;
    drSeriaCons.texGurLoad.FieldByName('KOL_RASH_EDIZ').AsFloat := drSeriaLoad.texGurLoad.FieldByName('KOL_RASH_VIRAB').AsFloat;
    drSeriaCons.texGurLoad.FieldByName('DATE_DOK').AsDateTime := drSeriaLoad.texGurLoad.FieldByName('DATE_DOK_RASH').AsDateTime;
    drSeriaCons.texGurLoad.FieldByName('STROKA_ID').AsInteger := drSeriaLoad.texGurLoad.FieldByName('STROKA_ID_RASH').AsInteger;
    drSeriaCons.texGurLoad.FieldByName('NMAT').AsString := drSeriaLoad.texGurLoad.FieldByName('NMAT').AsString;
    drSeriaCons.texGurLoad.FieldByName('KEI_ID_KART').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KEI_ID_KART').AsInteger;
    drSeriaCons.texGurLoad.FieldByName('KEI_ID_NORM').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KEI_ID_NORM').AsInteger;
    drSeriaCons.texGurLoad.FieldByName('NEIS').AsString := drSeriaLoad.texGurLoad.FieldByName('NEIS').AsString;
    drSeriaCons.texGurLoad.FieldByName('ADD').AsBoolean := drSeriaLoad.texGurLoad.FieldByName('ADD').AsBoolean;
    drSeriaCons.texGurLoad.FieldByName('DELETE').AsBoolean := drSeriaLoad.texGurLoad.FieldByName('DELETE').AsBoolean;
    drSeriaCons.texGurLoad.FieldByName('KEI_ID_KART').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KEI_ID_KART').AsInteger;
    drSeriaCons.texGurLoad.FieldByName('KEI_ID_NORM').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KEI_ID_NORM').AsInteger;
    drSeriaCons.texGurLoad.FieldByName('KSM_ID_PREP').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KSM_ID_PREP').AsInteger;
    drSeriaCons.texGurLoad.FieldByName('SERIA').AsString := drSeriaLoad.texGurLoad.FieldByName('SERIA').AsString;
    drSeriaCons.texGurLoad.FieldByName('SERIA_ID').AsInteger := drSeriaLoad.texGurLoad.FieldByName('SERIA_ID').AsInteger;
    drSeriaCons.texGurLoad.Post;
    drSeriaLoad.texGurLoad.Next;
  end;
  drSeriaLoad.texGurLoad.EnableControls;
end;

procedure TDrugReportEdit.addDrugMemToInc;
begin
  drSeriaLoad.texGurLoad.DisableControls;
  drSeriaLoad.texGurLoad.First;
  while (not drSeriaLoad.texGurLoad.Eof) do
  begin
    if (drSeriaLoad.texGurLoad.FieldByName('STROKA_ID_PRIH').AsInteger <> 0) then
    begin
      if (drSeriaInc.texGurLoad.Locate('stroka_id',
                                        VarArrayOf([drSeriaLoad.texGurLoad.FieldByName('STROKA_ID_PRIH').AsInteger]),
                                        [])) then
      begin
        drSeriaInc.texGurLoad.Edit
      end
      else
      begin
        drSeriaInc.texGurLoad.Append;
      end;
    end
    else
    begin
      if (drSeriaInc.texGurLoad.Locate('ksm_id;razdel_id;stroka_id;seria',
                                        VarArrayOf([drSeriaLoad.texGurLoad.FieldByName('KSM_ID').AsInteger,
                                                    drSeriaLoad.texGurLoad.FieldByName('RAZDEL_ID').AsInteger,
                                                    0,
                                                    drSeriaLoad.texGurLoad.FieldByName('SERIA').AsString]),
                                        [])) then
      begin
        drSeriaInc.texGurLoad.Edit
      end
      else
      begin
        drSeriaInc.texGurLoad.Append;
      end;
    end;
    drSeriaInc.texGurLoad.FieldByName('KSM_ID').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KSM_ID').AsInteger;
    drSeriaInc.texGurLoad.FieldByName('RAZDEL_ID').AsInteger := drSeriaLoad.texGurLoad.FieldByName('RAZDEL_ID').AsInteger;
    drSeriaInc.texGurLoad.FieldByName('KRAZ').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KRAZ').AsInteger;
    drSeriaInc.texGurLoad.FieldByName('KOL_RASH_EDIZ').AsFloat := drSeriaLoad.texGurLoad.FieldByName('KOL_PRIH').AsFloat;
    drSeriaInc.texGurLoad.FieldByName('DATE_DOK').AsDateTime := drSeriaLoad.texGurLoad.FieldByName('DATE_DOK').AsDateTime;
//    drSeriaInc.texGurLoad.FieldByName('STROKA_ID').AsInteger := drSeriaLoad.texGurLoad.FieldByName('STROKA_ID_RASH').AsInteger;
    drSeriaInc.texGurLoad.FieldByName('NMAT').AsString := drSeriaLoad.texGurLoad.FieldByName('NMAT').AsString;
    drSeriaInc.texGurLoad.FieldByName('KEI_ID_KART').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KEI_ID_KART').AsInteger;
    drSeriaInc.texGurLoad.FieldByName('KEI_ID_NORM').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KEI_ID_NORM').AsInteger;
    drSeriaInc.texGurLoad.FieldByName('NEIS').AsString := drSeriaLoad.texGurLoad.FieldByName('NEIS').AsString;
    drSeriaInc.texGurLoad.FieldByName('ADD').AsBoolean := drSeriaLoad.texGurLoad.FieldByName('ADD').AsBoolean;
    drSeriaInc.texGurLoad.FieldByName('DELETE').AsBoolean := drSeriaLoad.texGurLoad.FieldByName('DELETE').AsBoolean;
    drSeriaInc.texGurLoad.FieldByName('KEI_ID_KART').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KEI_ID_KART').AsInteger;
    drSeriaInc.texGurLoad.FieldByName('KEI_ID_NORM').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KEI_ID_NORM').AsInteger;
    drSeriaInc.texGurLoad.FieldByName('KSM_ID_PREP').AsInteger := drSeriaLoad.texGurLoad.FieldByName('KSM_ID_PREP').AsInteger;
    drSeriaInc.texGurLoad.FieldByName('SERIA').AsString := drSeriaLoad.texGurLoad.FieldByName('SERIA').AsString;
    drSeriaInc.texGurLoad.FieldByName('SERIA_ID').AsInteger := drSeriaLoad.texGurLoad.FieldByName('SERIA_ID').AsInteger;
    drSeriaInc.texGurLoad.Post;
    drSeriaLoad.texGurLoad.Next;
  end;
  drSeriaLoad.texGurLoad.EnableControls;
end;

procedure TDrugReportEdit.addTexGurLoadLine;
begin
  if (drSeriaLoad <> nil) then
    drSeriaLoad.addTexGurLine;
end;

procedure TDrugReportEdit.delTexGurLoadLine;
begin
  if (drSeriaLoad <> nil) then
    drSeriaLoad.delTexGurRecord;
end;

procedure TDrugReportEdit.delDrugSeria(month, year, ksmIdDrug, keiId, ksmId,
                                       seriaId: integer; drugNmat, seria: string);
begin
  self.withAllOst := false;
  if (seria = '') then
    loadDrugUsual(month, year, ksmIdDrug, keiId, ksmId, drugNmat, withAllOst)
  else
    loadDrugSeria(month, year, ksmIdDrug, keiId, ksmId, seriaId, drugNmat, seria, withAllOst);
  delTexGurLoadAllLines;
  saveTexGurLoad;
end;

procedure TDrugReportEdit.delTexGurLoadAllLines;
begin
  if (drSeriaLoad <> nil) then
    drSeriaLoad.delAllTexGurRecords;
end;

function TDrugReportEdit.getDateBegin: TDate;
begin
  result := drSeriaLoad.dateBegin;
end;

function TDrugReportEdit.getDateEnd: TDate;
begin
  result := drSeriaLoad.dateEnd;
end;

function TDrugReportEdit.getKolRashSum() : double;
begin
  result := 0;
  if (drSeriaLoad <> nil) then
    result := drSeriaLoad.getKolRashSum();
end;

function TDrugReportEdit.getMemTexGurLoad() : TkbmMemTable;
begin
  result := drSeriaLoad.texGurLoad;
//  result := dm.mem_texGur;
end;

function TDrugReportEdit.getMemTexGurCons() : TkbmMemTable;
begin
  result := drSeriaCons.texGurLoad;
//  result := dm.mem_texGur;
end;

function TDrugReportEdit.isKeiIdChangeable() : boolean;
begin
  result := drSeriaLoad.isKeiIdChangeable();
end;

procedure TDrugReportEdit.changeKeiId(keiId : integer; neis : string);
begin
  drSeriaLoad.changeKeiId(keiId, neis);
end;

procedure TDrugReportEdit.changeKeiIdGUI;
begin
  if (drSeriaLoad.isKeiIdChangeable()) then
  begin
    if (FEdiz = nil) then
      FEdiz := TFEdiz.Create(Application);
    FEdiz.ShowModal;
    if (FEdiz.ModalResult > 50) then
      drSeriaLoad.changeKeiId(FEdiz.EdizKei_id.AsInteger, FEdiz.EdizNeis.AsString);
  end
  else
    MessageDlg('Нельзя менять единицу измерения на занормированном сырье!',
               mtWarning, [mbOK], 0);
end;

procedure TDrugReportEdit.changeKsmId(ksmId : integer; nmat : string);
begin
  drSeriaLoad.changeKsmId(ksmId, nmat);
end;

procedure TDrugReportEdit.changeKsmIdGUI;
begin
  if (drSeriaLoad.isKeiIdChangeable()) then
  begin
    if (FindMatrop = nil) then
      FindMatrop := TfindMatrop.Create(Application);
    FindMatrop.DataBaseName := db.db;
    FindMatrop.ReadOnly := true;
    FindMatrop.ShowModal;
    if (FindMatrop.ModalResult > 50) then
    begin
      drSeriaLoad.changeKsmId(FindMatrop.ModalResult - 50, FindMatrop.IBMatropNMAT.AsString);
      drSeriaLoad.changeKeiId(FindMatrop.IBMatropKei_id.AsInteger, FindMatrop.IBMatropNEIS.AsString);
    end;
  end
  else
    MessageDlg('Нельзя менять код занормированного сырья! Вставьте новую строку в отчет.',
               mtWarning, [mbOK], 0);
end;

procedure TDrugReportEdit.changeRazdel(razdelId, kraz : integer);
begin
  drSeriaLoad.changeRazdel(razdelId, kraz);
end;

procedure TDrugReportEdit.changeRazdelGUI;
begin
  if (drSeriaLoad.isKeiIdChangeable()) then
  begin
    if (FRazdel = nil) then
      FRazdel := TFRazdel.Create(Application);
    FRazdel.ShowModal;
    if (FRazdel.ModalResult > 50) then
      drSeriaLoad.changeRazdel(FRazdel.razdelId, FRazdel.kraz);
  end
  else
    MessageDlg('Нельзя менять раздел занормированного сырья! Вставьте новую строку в отчет.',
               mtWarning, [mbOK], 0);
end;

procedure TDrugReportEdit.changeSeria(seria: string; seriaId: integer);
begin
  drSeriaLoad.changeSeria(seria, seriaId);
end;

procedure TDrugReportEdit.chooseSeriaGUI(edit_seria : TControl);
begin
//  if (serOstDrug = nil) then
//      serOstDrug := TSeriaOstatki.Create(dm);
//    if (serOstDrug.openSeria(self.ksmIdDrug, '')) then
//    begin
//      if (serOstDrug.showViborSeria(edit_seria)) then
//      begin
//
//      end;
//    end;
end;

procedure TDrugReportEdit.clearGrid;
begin
  if (drSeriaLoad <> nil) then
    drSeriaLoad.clearTexGurLoad;
  if (drSeriaCons <> nil) then
    drSeriaCons.clearTexGurLoad;
  if (drSeriaInc <> nil) then
    drSeriaInc.clearTexGurLoad;
end;

procedure TDrugReportEdit.copyTexGur(sourceTexGur : TDrugReportEdit);
begin
  //
end;

end.
