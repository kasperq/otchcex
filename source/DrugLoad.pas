unit DrugLoad;

interface

uses DMDrugLoad,
kbmMemTable, IBDatabase, Forms, SysUtils;

type
  TDrugLoad = class
    private
      dm : TFDMDrugLoad;

    public
      constructor Create; overload;
      constructor Create(serverAddr, login, password, role  : string); overload;
      constructor Create(db : TIBDatabase); overload;
      destructor Destroy; override;

      function getDrugLoad(month, year, ksmIdPrep, seriaId : integer) : TkbmMemTable;

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

function TDrugLoad.getDrugLoad(month, year, ksmIdPrep, seriaId : integer) : TkbmMemTable;
begin
//  getDrugLoadDocuments;
//  getDrugNorms;
//  getDrugLoadKart;
//  getDrugMovement;
  result := dm.mem_drugLoad;
end;

end.
