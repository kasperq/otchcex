unit UnderSign;

interface

uses UnderSignDM,
  IBDatabase, Forms, SysUtils, DB, kbmMemTable;

type
  TUnderSign = class
  private
    dm : TdmUnd;
    function getDSUnderSign() : TDataSource;

  public
    Constructor Create(var db : TIBDatabase); overload;
    Destructor Destroy; override;
    function getUnderSign() : TkbmMemTable;

    procedure loadUnderSign(strukId, tipOpId, tipDokId, docId, klientId : integer);
    procedure saveUnderSign(strukId, tipOpId, tipDokId, docId, klientId : integer);
    procedure insertUnderSign;
    procedure appendUnderSign;
    procedure delete;
    procedure deleteAll;
    procedure moveUp;
    procedure moveDown;

    property ds_underSign : TDataSource read getDSUnderSign;
    property underSign : TkbmMemTable read getUnderSign;
  end;

implementation

Constructor TUnderSign.Create(var db : TIBDatabase);
begin
  dm := TdmUnd.Create(Application);
  dm.setDB(db);
end;

Destructor TUnderSign.Destroy;
begin
  FreeAndNil(dm);
  inherited Destroy;
end;

function TUnderSign.getDSUnderSign() : TDataSource;
begin
  result := dm.DSDocTipParam;
end;

procedure TUnderSign.loadUnderSign(strukId, tipOpId, tipDokId, docId, klientId : integer);
begin
  if (dm.loadUnderSign(docId)) then
    dm.appendQueryToMem()
  else
  begin
    if (dm.getLastUnderSign(strukId, klientId, tipOpId, tipDokId)) then
      dm.appendQueryToMem()
    else
      dm.loadDefaultUnderSign(strukId, tipDokId, docId);
  end;
end;

function TUnderSign.getUnderSign() : TkbmMemTable;
begin
  result := dm.mem_underSign;
end;

procedure TUnderSign.saveUnderSign(strukId, tipOpId, tipDokId, docId, klientId : integer);
begin
  if (dm.loadUnderSign(docId)) then
    dm.deleteUnderSign;
  dm.appendUnderSignToQuery(docId, tipDokId);
  dm.saveUnderSign;
end;

procedure TUnderSign.insertUnderSign;
begin
  dm.insertUnderSign(false);
end;

procedure TUnderSign.appendUnderSign;
begin
  dm.insertUnderSign(true);
end;

procedure TUnderSign.delete;
begin
  dm.deleteUnderSignRecord;
end;

procedure TUnderSign.deleteAll;
begin
  dm.deleteAllUnderSign;
end;

procedure TUnderSign.moveUp;
begin
  dm.swapRecord(true);
end;

procedure TUnderSign.moveDown;
begin
  dm.swapRecord(false);
end;

end.
