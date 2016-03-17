unit DMDrugLoad;

interface

uses
  SysUtils, Classes, kbmMemTable, DB, IBCustomDataSet, IBQuery, RxIBQuery,
  IBDatabase;

type
  TFDMDrugLoad = class(TDataModule)
    db: TIBDatabase;
    trans_read: TIBTransaction;
    RxIBQuery1: TRxIBQuery;
    mem_drugLoad: TkbmMemTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDMDrugLoad: TFDMDrugLoad;

implementation

{$R *.dfm}

end.
