unit DrugLoad;

interface

uses DMDrugLoad,
  kbmMemTable, IBDatabase, Forms, SysUtils, Controls, DB, SplshWnd, Windows,
  VCLUtils;

type
  TDrugLoad = class
  private
    dm : TFDMDrugLoad;
    Splash : TForm;
    AniBmp1: TBitmap;

//    function openNorms(year, month, ksmIdPrep, strukId : integer) : boolean;
//    procedure insertNormsToTexGur(ksmIdPrep : integer);
//
//    function openZagrDoc(seria : string; strukId, ksmIdPrep : integer;
//                         dateBegin, dateEnd : TDate) : boolean;
//    procedure openZagrKart;
//    procedure insertKartToTexGur(ksmIdPrep : integer);
//
//    function openPrepOst(strukId, ksmIdPrep : integer; dateBegin, dateEnd : TDate) : boolean;
//    procedure insertPrepOstToTexGur(ksmIdPrep : integer);
//
//    function openCexOst(dateBegin, dateEnd : TDate; strukId : integer) : boolean;
//    procedure insertCexOstToTexGur;
//
//    procedure convertKeiId(ksmIdPrep : integer);
//    procedure convertRecord(var value : TFloatField; kart, ostPrep, ostCex : boolean;
//                            tochn : integer);
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

//    procedure createTexGur(seria : string; year, month, ksmIdPrep, strukId : integer);

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

{procedure TDrugLoad.createTexGur(seria : string; year, month, ksmIdPrep, strukId : integer);
var
  dateBegin, dateEnd : TDate;
begin
//  Splash := ShowSplashWindow(AniBmp1,
//                                 'Загрузка данных. Подождите, пожалуйста...', True, nil);
  dm.Seria.Close;
  dm.trans_write.Active := FALSE;
  dm.trans_read.Active := FALSE;
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
//    if (openNorms(year, month, ksmIdPrep, strukId)) then
      insertNormsToTexGur(ksmIdPrep);
    if (openZagrDoc(seria, strukId, ksmIdPrep, dateBegin, dateEnd)) then
    begin
      openZagrKart;
      insertKartToTexGur(ksmIdPrep);
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
end;  }

end.
