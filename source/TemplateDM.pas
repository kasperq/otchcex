unit TemplateDM;

interface

uses
  SysUtils, Classes, IBDatabase, DB, Dialogs;

type
  TTempDM = class(TDataModule)
    db: TIBDatabase;
    trans_read: TIBTransaction;
    trans_write: TIBTransaction;
  private
    { Private declarations }
  public
    procedure setDB(var db : TIBDatabase);
    function connectToDB() : boolean;
    function disconnectFromDB() : boolean;
    procedure commitWriteTrans(retaining : boolean);
    procedure startWriteTrans;
    procedure startReadTrans;

  end;

implementation

{$R *.dfm}

{ TTempDM }

procedure TTempDM.commitWriteTrans(retaining: boolean);
begin
  startWriteTrans;
  if (retaining) then
    trans_write.CommitRetaining
  else
    trans_write.Commit;
end;

function TTempDM.connectToDB(): boolean;
begin
  result := false;
  try
    db.Open;
    startReadTrans;
    if (db.Connected) and (trans_read.Active) then
      result := true;
  except
    ShowMessage('” пользовател€ нет доступа к базе данных');
  end;
end;

function TTempDM.disconnectFromDB(): boolean;
begin
  result := false;
  try
    if (trans_read.InTransaction) then
      trans_read.CommitRetaining;
    trans_read.Active := false;
    db.Close;
    result := not db.Connected;
  except

  end;
end;

procedure TTempDM.setDB(var db: TIBDatabase);
begin
  self.db := db;
end;

procedure TTempDM.startReadTrans;
begin
  if (not trans_read.Active) then
    trans_read.StartTransaction;
end;

procedure TTempDM.startWriteTrans;
begin
  if (not trans_write.Active) then
    trans_write.StartTransaction;
end;

end.
