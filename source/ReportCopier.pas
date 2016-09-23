unit ReportCopier;

interface

uses DBDM;

type
  TReportCopier = class
  private

  public
    Constructor Create(var db : TdDM);
    Destructor Destroy; override;


  end;

implementation

Constructor TReportCopier.Create(var db : TdDM);
begin
  inherited Create;

end;

Destructor TReportCopier.Destroy;
begin

  inherited Destroy;
end;

end.
