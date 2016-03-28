unit DMSelectOstKsm;

interface

uses
  SysUtils, Classes, DB, IBDatabase, kbmMemTable, Dialogs, IBCustomDataSet,
  IBQuery, RxIBQuery;

type
  TdmSelOstKsm = class(TDataModule)
    trans_read: TIBTransaction;
    db: TIBDatabase;
    mem_ost: TkbmMemTable;
    mem_ostKSM_ID: TIntegerField;
    mem_ostKART_ID: TIntegerField;
    mem_ostSTRUK_ID: TIntegerField;
    mem_ostKEI_ID: TIntegerField;
    mem_ostKSM_IDPR: TIntegerField;
    mem_ostSERIA_ID: TIntegerField;
    mem_ostRAZDEL_ID: TIntegerField;
    mem_ostOST_BEG_S: TFloatField;
    mem_ostOST_BEG_NZ: TFloatField;
    mem_ostPRIH_PERIOD: TFloatField;
    mem_ostRASH_PERIOD: TFloatField;
    mem_ostZAG_PERIOD: TFloatField;
    mem_ostRASH_VIRAB_PERIOD: TFloatField;
    mem_ostPEREDANO_PRIH_S: TFloatField;
    mem_ostPEREDANO_RASH_S: TFloatField;
    mem_ostPEREDANO_PRIH_NZ: TFloatField;
    mem_ostPEREDANO_RASH_NZ: TFloatField;
    mem_ostOST_END_S: TFloatField;
    mem_ostOST_END_NZ: TFloatField;
    q_ostatki: TRxIBQuery;
    q_prihPeriod: TRxIBQuery;
    RxIBQuery1: TRxIBQuery;
    q_prihAll: TRxIBQuery;
    q_rashPeriod: TRxIBQuery;
    q_rashAll: TRxIBQuery;
    q_zagPeriod: TRxIBQuery;
    q_zagAll: TRxIBQuery;
    q_rashVirPeriod: TRxIBQuery;
    q_rashVirAll: TRxIBQuery;
    q_perPrihS: TRxIBQuery;
    q_perRashS: TRxIBQuery;
    q_perPrihNzPeriod: TRxIBQuery;
    q_perPrihNzAll: TRxIBQuery;
    q_perRashNzPeriod: TRxIBQuery;
    q_perRashNzAll: TRxIBQuery;
  private
    procedure startReadTrans;

  public
    procedure setDB(db : TIBDatabase); overload;
    function connectToDB() : boolean;
    function disconnectFromDB() : boolean;

  end;

implementation

{$R *.dfm}

procedure TdmSelOstKsm.startReadTrans;
begin
  if (not trans_read.Active) then
    trans_read.StartTransaction;
end;

procedure TdmSelOstKsm.setDB(db : TIBDatabase);
begin
  self.db := db;
end;

function TdmSelOstKsm.connectToDB() : boolean;
begin
  result := false;
  try
    db.Open;
    startReadTrans;
    if (db.Connected) and (trans_read.Active) then
      result := true;
  except
//    ShowMessage('” пользовател€ ' + login + ' нет доступа к базе данных');
  end;
end;

function TdmSelOstKsm.disconnectFromDB() : boolean;
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

end.
