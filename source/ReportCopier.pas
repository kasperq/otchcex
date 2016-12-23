unit ReportCopier;

interface

uses DBDM, SeriaOstatki, DrugReportEdit,
  Dialogs, SysUtils;

type
  TReportCopier = class
  private
    db : TdDM;
    seriaDrugTo, seriaDrugFrom : TSeriaOstatki;
    drugFrom, drugTo : TDrugReportEdit;
    seriaIdTo : integer;

    procedure findOrCreateSeria(ksmIdDrugFrom, ksmIdDrugTo : integer; seria : string);
    procedure addDrugToDrug(ksmIdPrep, seriaId : integer);
    function saveDrugTo() : boolean;

  public
    Constructor Create(var db : TdDM);
    Destructor Destroy; override;

    function copySeria(strukId, ksmIdDrugFrom, ksmIdDrugTo, month, year, keiIdFrom,
                       keiIdTo, seriaIdFrom : integer; seria, nmatFrom, nmatTo : string) : boolean;
    function deleteDrugFromSeries() : boolean;


  end;

implementation

procedure TReportCopier.addDrugToDrug(ksmIdPrep, seriaId : integer);
begin
  drugFrom.texGurLoad.First;
  while (not drugFrom.texGurLoad.Eof) do
  begin
    drugTo.texGurLoad.Append;
    drugTo.texGurLoad.FieldByName('razdel_id').AsInteger := drugFrom.texGurLoad.FieldByName('razdel_id').AsInteger;
    drugTo.texGurLoad.FieldByName('kraz').AsInteger := drugFrom.texGurLoad.FieldByName('kraz').AsInteger;
    drugTo.texGurLoad.FieldByName('ksm_id').AsInteger := drugFrom.texGurLoad.FieldByName('ksm_id').AsInteger;
    drugTo.texGurLoad.FieldByName('kei_id_kart').AsInteger := drugFrom.texGurLoad.FieldByName('kei_id_kart').AsInteger;
    drugTo.texGurLoad.FieldByName('ksm_id_prep').AsInteger := ksmIdPrep;
    drugTo.texGurLoad.FieldByName('seria_id').AsInteger := seriaId;
    drugTo.texGurLoad.FieldByName('seria').AsString := drugFrom.texGurLoad.FieldByName('seria').AsString;
    drugTo.texGurLoad.FieldByName('kol_prih').AsFloat := drugFrom.texGurLoad.FieldByName('kol_prih').AsFloat;
    drugTo.texGurLoad.FieldByName('kol_rash_ediz').AsFloat := drugFrom.texGurLoad.FieldByName('kol_rash_ediz').AsFloat;
    drugTo.texGurLoad.FieldByName('kol_rash_virab').AsFloat := drugFrom.texGurLoad.FieldByName('kol_rash_virab').AsFloat;
    drugTo.texGurLoad.FieldByName('date_dok').AsDateTime := drugFrom.texGurLoad.FieldByName('date_dok').AsDateTime;
    drugTo.texGurLoad.FieldByName('date_dok_rash').AsDateTime := drugFrom.texGurLoad.FieldByName('date_dok_rash').AsDateTime;
    drugTo.texGurLoad.Post;
    drugFrom.texGurLoad.Next;
  end;
end;

function TReportCopier.copySeria(strukId, ksmIdDrugFrom, ksmIdDrugTo, month,
                                 year, keiIdFrom, keiIdTo, seriaIdFrom: integer;
                                 seria, nmatFrom, nmatTo: string): boolean;
begin
  result := false;
  try
    if (seria <> '') then
      findOrCreateSeria(ksmIdDrugFrom, ksmIdDrugTo, seria);


    if (drugFrom = nil) then
      drugFrom := TDrugReportEdit.Create(db, strukId, true);
    if (seria <> '') then
      drugFrom.loadDrugSeria(month, year, ksmIdDrugFrom, keiIdFrom, 0, seriaIdFrom,
                             nmatFrom, seria, false)
    else
      drugFrom.loadDrugUsual(month, year, ksmIdDrugFrom, keiIdFrom, 0, nmatFrom, false);

    if (drugTo = nil) then
      drugTo := TDrugReportEdit.Create(db, strukId, true);
    if (seria <> '') then
      drugTo.loadDrugSeria(month, year, ksmIdDrugTo, keiIdTo, 0, seriaDrugTo.seriaId,
                           nmatTo, seria, false)
    else
      drugTo.loadDrugUsual(month, year, ksmIdDrugTo, keiIdTo, 0, nmatTo, false);

    addDrugToDrug(ksmIdDrugTo, seriaIdTo);

    if (saveDrugTo()) then
    begin
      result := true;
    end;             
  except
  on e : exception do
  begin
    ShowMessage(e.message);
  end;
  end;
end;

Constructor TReportCopier.Create(var db : TdDM);
begin
  inherited Create;
  self.db := db;
end;

function TReportCopier.deleteDrugFromSeries(): boolean;
begin
  drugFrom.delTexGurLoadAllLines;
  drugFrom.saveTexGurLoad();
  result := true;
end;

Destructor TReportCopier.Destroy;
begin

  inherited Destroy;
end;

procedure TReportCopier.findOrCreateSeria(ksmIdDrugFrom, ksmIdDrugTo: integer; seria: string);
begin
  if (seriaDrugTo = nil) then
    seriaDrugTo := TSeriaOstatki.Create(db);
  if (not seriaDrugTo.openSeria(ksmIdDrugTo, seria)) then
  begin
    seriaDrugTo.insertSeria(ksmIdDrugTo, seria);
  end;
  if (seriaDrugFrom = nil) then
    seriaDrugFrom := TSeriaOstatki.Create(db);
  seriaDrugFrom.openSeria(ksmIdDrugFrom, seria);
  seriaIdTo := seriaDrugFrom.seriaId;
end;

function TReportCopier.saveDrugTo(): boolean;
begin
//  result := false;

  if (seriaDrugTo <> nil) then
  begin
    seriaDrugTo.setDateZagAndKolSeria(seriaDrugFrom.dateLoad, seriaDrugFrom.kolSeria);
    seriaDrugTo.saveSeria;
  end;
  drugTo.saveTexGurLoad();
  result := true;
end;

end.
