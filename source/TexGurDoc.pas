unit TexGurDoc;

interface

uses TexGurTypes,
  SysUtils;

type
  TStringArray = array[0..1] of string;
  TIntArray = array[0..1] of integer;
  TTexGurDoc = class
  private
    m_prepNmat, m_seria : string;
    m_docNumber : TStringArray;
    m_amountOfTypes : word;
    m_ksmIdPrep, m_month, m_year : integer;
    m_texGurT : TTexGurType;
    m_tipOpId : integer;
    m_tipDokId : TIntArray;

    function createParams() : boolean;

  public
    Constructor Create(texGurT: TTexGurType; prepNmat, seria : string; ksmIdPrep,
                       month, year : integer);
    Destructor Destroy; override;

    function formDocumentParams(texGurT: TTexGurType; prepNmat, seria : string;
                                ksmIdPrep, month, year : integer) : boolean;

    property docNumber : TStringArray  read m_docNumber;
    property tipOpId : integer read m_tipOpId;
    property tipDokId : TIntArray read m_tipDokId;
    property size : word read m_amountOfTypes;
  end;

implementation

Constructor TTexGurDoc.Create(texGurT: TTexGurType; prepNmat, seria : string;
                              ksmIdPrep, month, year : integer);
begin
  inherited Create;
  m_texGurT := texGurT;
  m_prepNmat := prepNmat;
  m_ksmIdPrep := ksmIdPrep;
  m_month := month;
  m_year := year;
  m_seria := seria;
  createParams();
end;

Destructor TTexGurDoc.Destroy;
begin

  inherited Destroy;
end;

function TTexGurDoc.formDocumentParams(texGurT: TTexGurType; prepNmat, seria : string;
                                       ksmIdPrep, month, year : integer) : boolean;
begin
  result := false;
  m_texGurT := texGurT;
  m_prepNmat := prepNmat;
  m_ksmIdPrep := ksmIdPrep;
  m_month := month;
  m_year := year;
  m_seria := seria;
  createParams();
end;

function TTexGurDoc.createParams() : boolean;
begin
  result := false;
  m_amountOfTypes := 0;
  m_docNumber[0] := '';
  m_docNumber[1] := '';
  m_tipDokId[0] := 0;
  m_tipDokId[1] := 0;

  if (m_texGurT = drugLoadSum) or (m_texGurT = drugLoadList)
     or (m_texGurT = drugLoadSeria) or (m_texGurT = drugLoadUsual)
     or (m_texGurT = drugLoadSeries) then
  begin
    m_tipOpId := 33;

    if (m_texGurT = drugLoadList) or (m_texGurT = drugLoadSum)
       or (m_texGurT = drugLoadUsual)then
    begin
      m_docNumber[m_amountOfTypes] := 'Рз-' + IntToStr(m_ksmIdPrep) + '-'
                                      + IntToStr(m_month) + '.' + IntToStr(m_year);
      m_tipDokId[m_amountOfTypes] := 37;
      m_amountOfTypes := m_amountOfTypes + 1;
    end;

    if (m_texGurT = drugLoadSeria) then
    begin
      m_docNumber[m_amountOfTypes] := 'Заг_' + copy(m_prepNmat, 1, 5) + '_' + m_seria;
      m_tipDokId[m_amountOfTypes] := 34;
      m_amountOfTypes := m_amountOfTypes + 1;
    end;
    if (m_texGurT = drugLoadList) or (m_texGurT = drugLoadSeries)
       or (m_texGurT = drugLoadSum) then
    begin
      m_docNumber[m_amountOfTypes] := 'Заг_' + copy(m_prepNmat, 1, 5) + '_%';
      m_tipDokId[m_amountOfTypes] := 34;
      m_amountOfTypes := m_amountOfTypes + 1;
    end;
  end;

  if (m_texGurT = drugConsSum) or (m_texGurT = drugCons)
     or (m_texGurT = drugConsSeria) or (m_texGurT = drugConsUsual) then
  begin
    m_tipOpId := 35;


    if (m_texGurT = drugCons) or (m_texGurT = drugConsSum) then
    begin
      m_docNumber[m_amountOfTypes] := 'Рп-' + IntToStr(m_ksmIdPrep) + '-' + IntToStr(m_month)
                     + '.' + IntToStr(m_year);
      m_tipDokId[m_amountOfTypes] := 37;
      m_amountOfTypes := m_amountOfTypes + 1;

    end;
    if (m_texGurT = drugConsSeria) or (m_texGurT = drugCons) then
    begin
      m_docNumber[m_amountOfTypes] := 'Рас_' + copy(m_prepNmat, 1, 5) + '_' + m_seria;
      m_tipDokId[m_amountOfTypes] := 34;
      m_amountOfTypes := m_amountOfTypes + 1;
    end;
  end;
  
end;

end.
