unit DrugReportEdit;

interface

uses SeriaOstatki, DrugLoad, DBDM, TexGurTypes, Ediz, Find_Matrop, razdel,

  IBDatabase, Controls, SysUtils, Dialogs, kbmMemTable, Forms, Variants;

type
  TDrugReportEdit = class
  private
    drSeriaLoad : TDrugLoad;
    db : TdDM;
    serOstDrug : TSeriaOstatki;

    m_strukId, m_ksmIdDrug, m_seriaIdDrug, m_year, m_month, m_keiId, m_ksmId : integer;
    m_seria, m_drugNmat : string;
    m_fullDrLoad : boolean;
    m_kolSeria : double;
    m_dateLoad : TDate;

  public
    Constructor Create(var db : TdDM; strukId : integer);
    Destructor Destroy; override;

    function getMemTexGur() : TkbmMemTable;
    procedure loadTexGurLoad(full : boolean; month, year, ksmIdDrug,
                             keiId, ksmId, razdelId, kraz, keiIdSyr : integer;
                             drugNmat, seria : string); // загружает загрузку по сериям с заданными текущими параметрами
    procedure saveTexGurLoad(); // сохраняет текущую загрузку по сериям
    procedure addTexGurLoadLine;
    procedure delTexGurLoadLine;
    procedure delTexGurLoadAllLines;

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

    property strukId : integer read m_strukId write m_strukId;
    property ksmIdDrug : integer read m_ksmIdDrug write m_ksmIdDrug;
    property ksmId : integer read m_ksmId write m_ksmId;
    property seriaIdDrug : integer read m_seriaIdDrug write m_seriaIdDrug;
    property year : integer read m_year write m_year;
    property month : integer read m_month write m_month;
    property keiId : integer read m_keiId write m_keiId;
    property seria : string read m_seria write m_seria;
    property drugNmat : string read m_drugNmat write m_drugNmat;
    property full : boolean read m_fullDrLoad write m_fullDrLoad;
    property kolSeria : double read m_kolSeria;
    property dateLoad : TDate read m_dateLoad write m_dateLoad;
    property dateBegin : TDate read getDateBegin;
    property dateEnd : TDate read getDateEnd;

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
                                         ksmIdDrug, keiId, ksmId, razdelId, kraz,
                                         keiIdSyr : integer; drugNmat, seria : string);
begin
  self.month := month;
  self.year := year;
  self.ksmIdDrug := ksmIdDrug;
  self.drugNmat := drugNmat;
  self.keiId := keiId;
  self.seria := seria;
  self.ksmId := ksmId;
  if {(seria = '') or }(year = 0) or (month = 0) or (ksmIdDrug = 0) or (strukId = 0)
     or (keiId = 0) then
  begin
    ShowMessage('Не все параметры были заданы для отображения загрузки сырья на препарат!');
    Abort;
  end;
  if (drSeriaLoad = nil) then
    drSeriaLoad := TDrugLoad.Create(db);
  self.full := full;
  if (self.full) then
  begin
    if (seria = '') then
      drSeriaLoad.createTexGur(TexGurTypes.drugLoadSum, '', self.drugNmat,
                               self.year, self.month, self.ksmIdDrug, self.strukId,
                               self.keiId, self.ksmId, 0, 0, 0, self.full)
    else
      drSeriaLoad.createTexGur(TexGurTypes.drugLoadSeria, self.seria, self.drugNmat,
                               self.year, self.month, self.ksmIdDrug, self.strukId,
                               self.keiId, self.ksmId, 0, 0, 0, self.full);
  end
  else
  begin
    drSeriaLoad.createTexGur(TexGurTypes.drugLoadList, '', self.drugNmat,
                             self.year, self.month, self.ksmIdDrug, self.strukId,
                             self.keiId, self.ksmId, keiIdSyr, razdelId, kraz, self.full)
  end;
end;

procedure TDrugReportEdit.saveTexGurLoad();
begin
  if (drSeriaLoad <> nil) then
  begin
    if (drSeriaLoad.saveTexGur()) then
      drSeriaLoad.createTexGur(TexGurTypes.drugLoadList, seria, drugNmat, year,
                               month, ksmIdDrug, strukId, keiId, 0, 0, 0, 0, full);
  end;
end;

procedure TDrugReportEdit.showRashDetails;
var
  rashDet : TDrugDetList;
begin
  rashDet := TDrugDetList.Create;
  rashDet.ShowDetails(db, month, year, ksmIdDrug, keiId,
                      drSeriaLoad.texGurLoad.FieldByName('ksm_id').AsInteger,
                      strukId, drSeriaLoad.texGurLoad.FieldByName('razdel_id').AsInteger,
                      drSeriaLoad.texGurLoad.FieldByName('kraz').AsInteger,
                      drSeriaLoad.getCurKeiId(), drugNmat);
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
  result := drSeriaLoad.getKolRashSum();
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

procedure TDrugReportEdit.copyTexGur(sourceTexGur : TDrugReportEdit);
begin
  //
end;

end.
