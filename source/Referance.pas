unit Referance;

interface
uses ReferanceDM, Find_Spprod,
  IBDatabase, Forms, SysUtils, kbmMemTable, Variants, Dialogs;

type
  TReferance = class
  private
    dm : TRefDM;

  public
    Constructor Create(var db : TIBDatabase);
    Destructor Destroy; override;

    function findDrug(kodProd : string; strukId : integer) : boolean; overload;
    function findDrug(ksmId : integer) : boolean; overload;
    function openSpprodSpr(strukId : integer) : boolean;
    function getSpprod() : TkbmMemTable;

    property spprod : TkbmMemTable read getSpprod;
  end;

implementation

{ TReferance }

constructor TReferance.Create(var db: TIBDatabase);
begin
  inherited Create;
  dm := TRefDM.Create(Application);
  dm.setDB(db);
//  dm.connectToDB;
  dm.q_spprod.Database := db;
end;

destructor TReferance.Destroy;
begin
//  dm.disconnectFromDB;
  dm := nil;
  dm.Free;
  inherited Destroy;
end;

function TReferance.findDrug(ksmId: integer): boolean;
begin
  result := false;
  dm.q_spprod.Close;
  dm.q_spprod.MacroByName('usl').AsString := 'spprod.ksm_id = ' + IntToStr(ksmId);
  dm.q_spprod.Open;
  if (dm.q_spprod.RecordCount > 0) then
  begin
    dm.mem_spprod.EmptyTable;
    dm.mem_spprod.LoadFromDataSet(dm.q_spprod, [mtcpoAppend]);
    dm.mem_spprod.Open;
    result := true;
  end;
end;

function TReferance.findDrug(kodProd: string; strukId : integer): boolean;
begin
  result := false;
  dm.q_spprod.Close;
  dm.q_spprod.MacroByName('usl').AsString := 'spprod.kod_prod like '''
                                             + kodProd + '%'' and spprod.struk_id = '
                                             + IntToStr(strukId);
  dm.q_spprod.Open;
  dm.q_spprod.First;
  if (dm.q_spprod.RecordCount > 0) then
  begin
    dm.mem_spprod.EmptyTable;
    dm.mem_spprod.LoadFromDataSet(dm.q_spprod, [mtcpoAppend]);
    dm.mem_spprod.Open;
    dm.mem_spprod.First;
    result := true;
  end;
end;

function TReferance.getSpprod(): TkbmMemTable;
begin
  result := dm.mem_spprod;
end;

function TReferance.openSpprodSpr(strukId : integer): boolean;
begin
  result := false;
  if (FindSpprod = nil) then
    FindSpprod := TfindSpprod.Create(Application);
  FindSpprod.DataBaseName := dm.db;
  FindSpprod.ReadOnly := true;
  FindSpprod.Usl_Struk := 'spprod.struk_id=' + IntToStr(strukId);
  FindSpprod.ShowModal;
  if (FindSpprod.ModalResult > 50) then
  begin
    dm.mem_spprod.EmptyTable;
    dm.mem_spprod.LoadFromDataSet(FindSpprod.IBSpprod, [mtcpoAppend]);
    dm.mem_spprod.Open;
    dm.mem_spprod.Locate('kod_prod', VarArrayOf([FindSpprod.IBSpprodKOD_PROD.AsString]), []);
    result := true;
  end;
  FreeAndNil(FindSpprod);
end;

end.
