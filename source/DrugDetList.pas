unit DrugDetList;

interface

uses DrugRashList, DBDM,

  Forms;

type
  TDrugDetList = class
  private
    rashDetForm : TFDrugRashList;

  public
    Constructor Create;
    Destructor Destroy; override;

    procedure showDetails(var db : TdDM; month, year, ksmIdDrug, keiId, ksmId,
                          strukId, razdelId, kraz, keiIdSyr : integer; drugNmat : string);

  end;

implementation

Constructor TDrugDetList.Create;
begin
  inherited Create;
  if (rashDetForm = nil) then
    rashDetForm := TFDrugRashList.Create(Application);
end;

Destructor TDrugDetList.Destroy;
begin

  inherited Destroy;
end;


procedure TDrugDetList.showDetails(var db : TdDM; month, year, ksmIdDrug, keiId,
                                   ksmId, strukId, razdelId, kraz, keiIdSyr : integer; drugNmat : string);
begin
  if (rashDetForm = nil) then
    rashDetForm := TFDrugRashList.Create(Application);
  rashDetForm.setDB(db, strukId);
  rashDetForm.month := month;
  rashDetForm.year := year;
  rashDetForm.ksmIdDrug := ksmIdDrug;
  rashDetForm.keiId := keiId;
  rashDetForm.ksmId := ksmId;
  rashDetForm.drugNmat := drugNmat;
  rashDetForm.razdelId := razdelId;
  rashDetForm.kraz := kraz;
  rashDetForm.keiIdSyr := keiIdSyr;

  rashDetForm.ShowModal;
end;

end.
