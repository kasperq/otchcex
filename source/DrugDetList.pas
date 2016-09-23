unit DrugDetList;

interface

uses DrugRashList,
  Forms;

type
  TDrugDetList = class
  private
    rashDet : TFDrugRashList;

  public
    Constructor Create;
    Destructor Destroy; override;

    procedure showDetails;

  end;

implementation

Constructor TDrugDetList.Create;
begin
  inherited Create;

end;

Destructor TDrugDetList.Destroy;
begin

  inherited Destroy;
end;


procedure TDrugDetList.showDetails;
begin
  if (rashDet = nil) then
    rashDet := TFDrugRashList.Create(Application);
  rashDet.ShowModal;
end;

end.
