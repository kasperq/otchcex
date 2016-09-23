unit DrugReportEdit;

interface

uses SeriaOstatki, DrugLoad, DBDM, TexGurTypes,
  IBDatabase, Controls, SysUtils, Dialogs, kbmMemTable, Forms;

type
  TDrugReportEdit = class
  private
    drSeriaLoad : TDrugLoad;
    db : TdDM;

    m_strukId, m_ksmIdDrug, m_seriaIdDrug, m_year, m_month, m_keiId : integer;
    m_seria, m_drugNmat : string;
    m_fullDrLoad : boolean;
    m_kolSeria : double;
    m_dateLoad : TDate;

//    db : TIBDatabase;

  public
    Constructor Create(var db : TdDM; strukId : integer);
    Destructor Destroy; override;

    function getMemTexGur() : TkbmMemTable;
    procedure loadTexGurLoad(full : boolean; month, year, ksmIdDrug,
                             keiId, ksmId : integer; drugNmat, seria : string); // загружает загрузку по сериям с заданными текущими параметрами
    procedure saveTexGurLoad(); // сохраняет текущую загрузку по сериям
    procedure addTexGurLoadLine;
    procedure delTexGurLoadLine;
    procedure delTexGurLoadAllLines;

    function isKeiIdChangeable() : boolean;
    procedure changeKeiId(keiId : integer; neis : string);
    procedure changeKsmId(ksmId : integer; nmat : string);
    procedure changeRazdel(razdelId, kraz : integer);
    procedure copyTexGur(sourceTexGur : TDrugReportEdit);
    procedure showRashDetails;

    property strukId : integer read m_strukId write m_strukId;
    property ksmIdDrug : integer read m_ksmIdDrug write m_ksmIdDrug;
    property seriaIdDrug : integer read m_seriaIdDrug write m_seriaIdDrug;
    property year : integer read m_year write m_year;
    property month : integer read m_month write m_month;
    property keiId : integer read m_keiId write m_keiId;
    property seria : string read m_seria write m_seria;
    property drugNmat : string read m_drugNmat write m_drugNmat;
    property full : boolean read m_fullDrLoad write m_fullDrLoad;
    property kolSeria : double read m_kolSeria;
    property dateLoad : TDate read m_dateLoad write m_dateLoad;

    property texGurLoad : TkbmMemTable read getMemTexGur;


  end;

implementation

uses DrugDetList;

Constructor TDrugReportEdit.Create(var db : TdDM; strukId : integer);
begin
  inherited Create;
  self.db := db;
  m_strukId := strukId;
end;

Destructor TDrugReportEdit.Destroy;
begin
  FreeAndNil(drSeriaLoad);
  inherited Destroy;
end;

procedure TDrugReportEdit.loadTexGurLoad(full : boolean; month, year,
                                         ksmIdDrug, keiId, ksmId : integer; drugNmat, seria : string);
begin
  self.month := month;
  self.year := year;
  self.ksmIdDrug := ksmIdDrug;
  self.drugNmat := drugNmat;
  self.keiId := keiId;
  self.seria := seria;
  if {(seria = '') or }(year = 0) or (month = 0) or (ksmIdDrug = 0) or (strukId = 0)
     or (keiId = 0) then
  begin
    ShowMessage('Не все параметры были заданы для отображения загрузки сырья на препарат!');
    Abort;
  end;
  if (drSeriaLoad = nil) then
    drSeriaLoad := TDrugLoad.Create(db);
  self.full := full;
  if (seria = '') then
    drSeriaLoad.createTexGur(TexGurTypes.drugLoadSum, '', self.drugNmat,
                             self.year, self.month, self.ksmIdDrug, self.strukId,
                             self.keiId, 0, self.full)
  else
    drSeriaLoad.createTexGur(TexGurTypes.drugLoadSeria, self.seria, self.drugNmat,
                             self.year, self.month, self.ksmIdDrug, self.strukId,
                             self.keiId, 0, self.full);
end;

procedure TDrugReportEdit.saveTexGurLoad();
begin
  if (drSeriaLoad <> nil) then
  begin
    if (drSeriaLoad.saveTexGur()) then
      drSeriaLoad.createTexGur(TexGurTypes.drugLoadList, seria, drugNmat, year,
                               month, ksmIdDrug, strukId, keiId, 0, full);
  end;
end;

procedure TDrugReportEdit.showRashDetails;
var
  rashDet : TDrugDetList;
begin
  if (rashDet = nil) then
    rashDet := TDrugDetList.Create;
  rashDet.ShowDetails;
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

procedure TDrugReportEdit.delTexGurLoadAllLines;
begin
  if (drSeriaLoad <> nil) then
    drSeriaLoad.delAllTexGurRecords;
end;

function TDrugReportEdit.getMemTexGur() : TkbmMemTable;
begin
  result := drSeriaLoad.texGurLoad;
end;

function TDrugReportEdit.isKeiIdChangeable() : boolean;
begin
  result := drSeriaLoad.isKeiIdChangeable();
end;

procedure TDrugReportEdit.changeKeiId(keiId : integer; neis : string);
begin
  drSeriaLoad.changeKeiId(keiId, neis);
end;

procedure TDrugReportEdit.changeKsmId(ksmId : integer; nmat : string);
begin
  drSeriaLoad.changeKsmId(ksmId, nmat);
end;

procedure TDrugReportEdit.changeRazdel(razdelId, kraz : integer);
begin
  drSeriaLoad.changeRazdel(razdelId, kraz);
end;

procedure TDrugReportEdit.copyTexGur(sourceTexGur : TDrugReportEdit);
begin
  //
end;

end.
