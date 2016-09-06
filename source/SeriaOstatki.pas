unit SeriaOstatki;

interface

uses SeriaOstatkiDM, SeriaForm, CopyFiles,
  IBDatabase, Forms, Controls, SysUtils, DB, Variants;

type
  TSeriaOstatki = class
  private
    dm : TSerOstDM;
    serForm : TFSeriaForm;
    m_seriaId, m_ksmId, m_kartId, m_ksmIdPrep, m_strukId, m_keiId : integer;
    m_seria : string;
    m_kolSeria : double;
    m_dateZag : TDate;


  public
    Constructor Create(db : TIBDatabase);
    Destructor Destroy; override;

    function openSeria(ksmId : integer; seria : string) : boolean;
    function insertSeria(ksmId : integer; seria : string) : integer;
    procedure setFormaVipusk(value : string);
    procedure setDateZagAndKolSeria(dateZag : TDate; kolSeria : double);
    procedure saveSeria;

    function showViborSeria(parentControl : TControl) : boolean;

    function openOstatki(ksmId, seriaId, strukId, ksmIdPrep : integer) : boolean;
    procedure insertOstatki(ksmId, ksmIdPrep, razdelId, seriaId, keiId, strukId,
                            month, year : integer);
    procedure saveSeriaAndOstatki(dateLoad : TDate; kolSeria : double; month, year : integer);
    procedure saveOstatki;

    property seriaId : integer read m_seriaId write m_seriaId;
    property ksmId : integer read m_ksmId write m_ksmId;
    property ksmIdPrep : integer read m_ksmIdPrep write m_ksmIdPrep;
    property strukId : integer read m_strukId write m_strukId;
    property keiId : integer read m_keiId write m_keiId;
    property seria : string read m_seria write m_seria;
    property kolSeria : double read m_kolSeria write m_kolSeria;
    property dateLoad : TDate read m_dateZag write m_dateZag;
    property kartId : integer read m_kartId write m_kartId;
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

function TSeriaOstatki.openSeria(ksmId : integer; seria : string) : boolean;
begin
  result := false;
  self.ksmId := ksmId;
  self.seria := seria;
  dm.q_seria.close;
  dm.q_seria.ParamByName('ksm_id').AsInteger := ksmId;
  dm.q_seria.Open;
  if (dm.q_seria.RecordCount > 0) then  
    result := true;
  if (seria <> '') and (not dm.q_seria.Locate('seria', seria, [])) then
    result := false
  else
  begin
    self.seria := dm.q_seriaSERIA.AsString;
    self.seriaId := dm.q_seriaSERIA_ID.AsInteger;
    self.kolSeria := dm.q_seriaKOL_SERIA.AsFloat;
    self.dateLoad := dm.q_seriaDATE_ZAG.AsDateTime;
  end;
end;

function TSeriaOstatki.insertSeria(ksmId : integer; seria : string) : integer;  // returns SERIA_ID of a new SERIA
begin
  dm.ksmId := ksmId;
  dm.seria := seria;
  dm.q_seria.Insert;
  dm.q_seriaKOL_SERIA.AsFloat := 0;
  dm.q_seria.Post;
  self.seriaId := dm.q_seriaSERIA_ID.AsInteger;
  result := dm.q_seriaSERIA_ID.AsInteger;
end;

procedure TSeriaOstatki.setFormaVipusk(value : string);
begin
  dm.q_seria.Edit;
  dm.q_seriaFORMA_VIPUSK.AsString := value;
  dm.q_seria.Post;
end;

procedure TSeriaOstatki.setDateZagAndKolSeria(dateZag : TDate; kolSeria : double);
begin
  if (dm.q_seriaDATE_ZAG.AsDateTime <> dateZag) or (dm.q_seriaKOL_SERIA.AsFloat <> kolSeria) then
  begin
    dm.q_seria.Edit;
    dm.q_seriaDATE_ZAG.AsDateTime := dateZag;
    dm.q_seriaKOL_SERIA.AsFloat := kolSeria;
    dm.q_seria.Post;
  end;
end;

function TSeriaOstatki.openOstatki(ksmId, seriaId, strukId, ksmIdPrep : integer) : boolean;
begin
  result := false;
  self.ksmId := ksmId;
  dm.q_ostatki.Close;
  dm.q_ostatki.ParamByName('struk_id').AsInteger := strukId;
  dm.q_ostatki.MacroByName('usl').AsString := ' OST.KSM_ID=' + IntToStr(ksmId);
  if (seriaId <> -1) then
    dm.q_ostatki.MacroByName('usl').AsString := dm.q_ostatki.MacroByName('usl').AsString
                                                + ' and coalesce(ost.seria_id, 0) = '
                                                + IntToStr(seriaId);
  if (ksmIdPrep <> -1) then
    dm.q_ostatki.MacroByName('usl').AsString := dm.q_ostatki.MacroByName('usl').AsString
                                                + ' and coalesce(ost.ksm_idpr, 0) = '
                                                + IntToStr(ksmIdPrep);


  dm.q_ostatki.Open;
  dm.q_ostatki.First;
  if (not dm.q_ostatki.Eof) then
  begin
    kartId := dm.q_ostatki.FieldByName('kart_id').AsInteger;
    result := true;
  end;
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

procedure TSeriaOstatki.saveSeriaAndOstatki(dateLoad : TDate; kolSeria : double; month, year : integer);
var
  usl_ser : string;
begin
  self.dateLoad := dateLoad;
  self.kolSeria := kolSeria;
  if (not dm.q_seria.Active) then
  begin
    dm.q_seria.ParamByName('Ksm_id').AsInteger := ksmIdPrep;
    dm.q_seria.MacroByName('usl').AsString := 'SERIA.SERIA=' + '''' + seria + '''';
    dm.q_seria.Open;
    dm.q_seria.First;
    seriaId := dm.q_seriaSeria_id.AsInteger;
  end;
  dm.q_seria.Edit;
  dm.q_seriaDate_ZAG.AsDateTime := dateLoad;
  dm.q_seriaKol_seria.AsFloat := kolSeria;
  dm.q_seria.Post;
  dm.q_seria.ApplyUpdates;

  if (dm.q_ostatki.Active) then
  begin
    if (dm.q_ostatki.UpdatesPending) then
      dm.q_ostatki.ApplyUpdates;
    dm.q_ostatki.close;
  end;
  usl_ser := '  OST.KSM_ID=' + INTTOSTR(ksmIdPrep) + ' and ost.seria_id=' + inttostr(seriaId);
  dm.q_ostatki.ParamByName('struk_ID').AsInteger := strukId;
  dm.q_ostatki.MacroByName('usl').AsString := usl_ser;
  dm.q_ostatki.Open;
  if (not dm.q_ostatki.Eof) then
    m_kartId := dm.q_ostatkiKart_id.AsInteger
  else
  begin
    dm.ksmId := ksmIdPrep;
    dm.ksmIdPrep := ksmIdPrep;
    dm.keiId := keiId;
    dm.strukId := strukId;
    dm.seriaId := seriaId;
    dm.month := month;
    dm.year := year;
    dm.razdelId := 0;
    dm.q_ostatki.Insert;
    dm.q_ostatki.Post;
    dm.q_ostatki.ApplyUpdates;
  end;

  saveSeria;
  saveOstatki;
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

function TSeriaOstatki.showViborSeria(parentControl : TControl) : boolean;
begin
  result := false;
  if (serForm = nil) then
    serForm := TFSeriaForm.Create(Application);
  FormToObject(serForm, parentControl, 0, 0);
  serForm.loadSeriaDS(dm.q_seria);
  serForm.ShowModal;
  if (serForm.ModalResult > 50) then
  begin
    self.seria := serForm.mem_seriaSERIA.AsString;
    self.seriaId := serForm.mem_seriaSERIA_ID.AsInteger;
    self.kolSeria := serForm.mem_seriaKOL_SERIA.AsFloat;
    self.dateLoad := serForm.mem_seriaDATE_ZAG.AsDateTime;
    result := true;
  end;
end;

end.
