unit DMDrugLoad;

interface

uses
  SysUtils, Classes, kbmMemTable, DB, IBCustomDataSet, IBQuery, RxIBQuery,
  IBDatabase, Dialogs;

type
  TFDMDrugLoad = class(TDataModule)
    db: TIBDatabase;
    trans_read: TIBTransaction;
    RxIBQuery1: TRxIBQuery;
    mem_drugLoad: TkbmMemTable;
  private
    login, password, serverAddr, role : string;
    procedure startReadTrans;

  public
    procedure setDB(serverAddr, login, password, role : string);
    function connectToDB() : boolean;
    function disconnectFromDB() : boolean;

  end;

implementation

{$R *.dfm}

procedure TFDMDrugLoad.setDB(serverAddr, login, password, role : string);
begin
  db.Close;
  db.Params.Clear;
  db.Params.Add('lc_ctype=WIN1251');
  db.Params.Add('sql_role_name=' + role);
  db.Params.Add('user_name=' + login);
  db.Params.Add('password=' + AnsiLowerCase(password));
  db.LoginPrompt := false;
  db.DatabaseName := serverAddr;
  self.login := login;
  self.password := password;
  self.serverAddr := serverAddr;
  self.role := role;
end;

function TFDMDrugLoad.connectToDB() : boolean;
begin
  result := false;
  try
    db.Open;
    startReadTrans;
    if (db.Connected) and (trans_read.Active) then
      result := true;
  except
    ShowMessage('” пользовател€ ' + login + ' нет доступа к базе данных');
  end;
end;

function TFDMDrugLoad.disconnectFromDB() : boolean;
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

procedure TFDMDrugLoad.startReadTrans;
begin
  if (not trans_read.Active) then
    trans_read.StartTransaction;
end;

end.
