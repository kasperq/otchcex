unit SelectOstKsm;

interface



type
  TSelectOstKsm = class
  public
    Constructor Create;
    Destructor Destroy; override;

    function getDateBegin() : TDateTime;
    function getDateEnd() : TDateTime;
    function getStrukId() : integer;
    function getKsmId() : integer;
    function getProdKsmId() : integer;
    procedure setDateBegin(value : TDateTime);
    procedure setDateEnd(value : TDateTime);
    procedure setStrukId(value : integer);
    procedure setKsmId(value : integer);
    procedure setProdKsmId(value : integer);
    property dateBegin : TDateTime read getDateBegin write setDateBegin;
    property dateEnd : TDateTime read getDateEnd write setDateEnd;
    property strukId : integer read getStrukId write setStrukId;
    property ksmId : integer read getKsmId write setKsmId;
    property prodKsmId : integer read getProdKsmId write setProdKsmId;

  private

    m_dateBegin : TDateTime;
    m_dateEnd : TDateTime;
    m_strukId : integer;
    m_ksmId : integer;
    m_prodKsmId : integer;
    m_struk_id_rela : integer;
    m_account : string;

  end;

implementation

uses SysUtils, Windows;

Constructor TSelectOstKsm.Create;
begin
  inherited Create;
  m_dateBegin := now;
  m_dateEnd := now + 1;
  m_strukId := 0;
  m_ksmId := 0;
  m_prodKsmId := 0;
end;

Destructor TSelectOstKsm.Destroy;
begin
  m_dateBegin := StrToDate('00.00.0000');
  m_dateEnd := StrToDate('00.00.0000');
  m_strukId := 0;
  m_ksmId := 0;
  m_prodKsmId := 0;
  inherited Destroy;
end;

function TSelectOstKsm.getDateBegin() : TDateTime;
begin
  result := m_dateBegin;
end;
function TSelectOstKsm.getDateEnd() : TDateTime;
begin
  result := m_dateEnd;
end;
function TSelectOstKsm.getStrukId() : integer;
begin
  result := m_strukId;
end;
function TSelectOstKsm.getKsmId() : integer;
begin
  result := m_ksmId;
end;
function TSelectOstKsm.getProdKsmId() : integer;
begin
  result := m_prodKsmId;
end;

procedure TSelectOstKsm.setDateBegin(value : TDateTime);
begin
  m_dateBegin := value;
end;
procedure TSelectOstKsm.setDateEnd(value : TDateTime);
begin
  m_dateEnd := value;
end;
procedure TSelectOstKsm.setStrukId(value : integer);
begin
  m_strukId := value;
end;
procedure TSelectOstKsm.setKsmId(value : integer);
begin
  m_ksmId := value;
end;
procedure TSelectOstKsm.setProdKsmId(value : integer);
begin
  m_prodKsmId := value;
end;


end.
