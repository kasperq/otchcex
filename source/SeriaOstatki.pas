unit SeriaOstatki;

interface

uses SeriaOstatkiDM,
  IBDatabase, Forms, Controls, SysUtils, DB;

type
  TSeriaOstatki = class
  private
    dm : TSerOstDM;

  public
    Constructor Create(db : TIBDatabase);
    Destructor Destroy; override;

    function openSeria(ksmId, strukId : integer; seria : string) : boolean;
    function insertSeria(ksmId : integer; seria : string) : integer;
    procedure setFormaVipusk(value : string);
    procedure setDateZagAndKolSeria(dateZag : TDate; kolSeria : double);
    procedure saveSeria;

    function openOstatki(ksmId, seriaId, strukId : integer) : boolean;
    procedure insertOstatki(ksmId, ksmIdPrep, razdelId, seriaId, keiId, strukId,
                            month, year : integer);
    procedure saveOstatki;

  end;

implementation

Constructor TSeriaOstatki.Create(db : TIBDatabase);
begin
  inherited Create;
  dm := TSerOstDM.Create(Application);
  dm.setDB(db);
  dm.connectToDB;
end;

Destructor TSeriaOstatki.Destroy;
begin
  dm.disconnectFromDB;
  dm := nil;
  dm.Free;
  inherited Destroy;
end;

function TSeriaOstatki.openSeria(ksmId, strukId : integer; seria : string) : boolean;
begin
  dm.q_seria.close;
  dm.q_seria.ParamByName('ksm_id').AsInteger := ksmId;
  dm.q_seria.ParamByName('struk_id').AsInteger := strukId;
  dm.q_seria.Open;
  result := true;
  if (seria <> '') and (not dm.q_seria.Locate('seria', seria, [])) then
    result := false;
end;

function TSeriaOstatki.insertSeria(ksmId : integer; seria : string) : integer;
begin
  dm.ksmId := ksmId;
  dm.seria := seria;
  dm.q_seria.Insert;
  dm.q_seria.Post;
end;

procedure TSeriaOstatki.setFormaVipusk(value : string);
begin
  dm.q_seria.Edit;
  dm.q_seriaFORMA_VIPUSK.AsString := value;
  dm.q_seria.Post;
end;

procedure TSeriaOstatki.setDateZagAndKolSeria(dateZag : TDate; kolSeria : double);
begin
  dm.q_seria.Edit;
  dm.q_seriaDATE_ZAG.AsDateTime := dateZag;
  dm.q_seriaKOL_SERIA.AsFloat := kolSeria;
  dm.q_seria.Post;
end;

function TSeriaOstatki.openOstatki(ksmId, seriaId, strukId : integer) : boolean;
begin
  result := false;
  dm.q_ostatki.Close;
  dm.q_ostatki.ParamByName('struk_id').AsInteger := strukId;
  dm.q_ostatki.MacroByName('usl').AsString := ' OST.KSM_ID=' + IntToStr(ksmId)
                                              + ' and ost.seria_id=' + IntToStr(seriaId);
  dm.q_ostatki.Open;
  dm.q_ostatki.First;
  if (not dm.q_ostatki.Eof) then
    result := true;
end;

procedure TSeriaOstatki.insertOstatki(ksmId, ksmIdPrep, razdelId, seriaId, keiId,
                                      strukId, month, year : integer);
begin
  dm.ksmId := ksmIdPrep;
  dm.ksmIdPrep := ksmIdPrep;
  dm.keiId := keiId;
  dm.strukId := strukId;
  dm.seriaId := seriaId;
  dm.month := month;
  dm.year := year;
  dm.razdelId := razdelId;
  dm.q_ostatki.Insert;
  dm.q_ostatki.Post;
end;

procedure TSeriaOstatki.saveSeria;
begin
  if (dm.q_seria.Modified) or (dm.q_seria.State = dsEdit)
     or (dm.q_seria.State = dsInsert) then
    dm.q_seria.Post;
  if (dm.q_seria.UpdatesPending) then
    dm.q_seria.ApplyUpdates;
end;

procedure TSeriaOstatki.saveOstatki;
begin
  if (dm.q_ostatki.Modified) or (dm.q_ostatki.State = dsEdit)
     or (dm.q_ostatki.State = dsInsert) then
    dm.q_ostatki.Post;
  if (dm.q_ostatki.UpdatesPending) then
    dm.q_ostatki.ApplyUpdates;
end;

end.
