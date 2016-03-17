unit DrugLoad;

interface

uses DMDrugLoad,
kbmMemTable, IBDatabase, Forms;

type
  TDrugLoad = class
    private
      dm : FDMDrugLoad;

    public
      constructor Create; overload;
      constructor Create(serverAddr, dbName, login, password, role  : string);
      destructor Destroy; override;

      function getDrugLoad(month, year, ksmIdPrep, seriaId : integer) : TkbmMemTable;

  end;

implementation

constructor TDrugLoad.Create;
begin
  inherited Create;
  //
end;

constructor TDrugLoad.Create(serverAddr, dbName, login, password, role  : string);
begin
  inherited Create;
  dm := FDMDrugLoad.Create(Application);
  dm.setDB(serverAddr, dbName, login, password, role);
  dm.connectToDB;
end;

destructor TDrugLoad.Destroy;
begin
  dm.disconnectFromDB;
  inherited Destroy;
end;

function TDrugLoad.getDrugLoad(month, year, ksmIdPrep, seriaId : integer) : TkbmMemTable;
begin
  getDrugLoadDocument;
  getDrugNorms;
  getDrugLoadKart;
  getDrugMovement;
  result := dm.mem_drugLoad;
end;

end.
