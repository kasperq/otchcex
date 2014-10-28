{ **** UBPFD *********** by delphibase.endimus.com ****
>> �������, �������������� ������������ ����� �������

����� �������, ������������� ����� � ������������ ����� � ���������
������������� (� ��������� ��������� � ���).

function FloatToText(R: Double; Precision: Integer): string;
����������� ������������ ����� � ��������� ������������� � ���������
�� Precision <= 4 ������ ����� �������.

function AmountOfUnits(AUnit: TRusWord; R: Double; Precision: Integer;
Options: TNumberToTextOptions): string;
�� ��, ��� � FloatToText, �� � ������ ������� ��������� � �������:
ntoExplicitZero: "���� �����"
ntoMinus, ntoPlus: "�����", "����".
ntoNotReduceFrac: "��������� �����" ������ "���� �������".

function CountOfUnits(AUnit: TRusWord; N: Int64;
Options: TNumberToTextOptions): string;
�� �� ��� ����� �����. ��� ������� ������ ����������� ����� ��.

function CurrencyToText(ASum: Currency): string;
��� ���� ���������� ����� ��������.

�����������: SysUtils
�����:       reonid, reonid@yahoo.com, ICQ:104985721, ������
Copyright:   ������� ������
����:        15 ���� 2002 �.
***************************************************** }

unit Num2Text;

interface

type

  TNumberToTextOptions = set of (ntoExplicitZero, ntoMinus, ntoPlus, ntoDigits,
    ntoNotReduceFrac);

  TGender = (genNeuter, genMasculine, genFeminine);
  // ���: �����������, �������, �������

  TRusWord = record
    Gender: TGender;
    Base: string;
    End1: string;
    End2: string;
    End5: string;
  end;

const

  MaxPrecision = 4; // �� ��������������

  WD_EMPTY: TRusWord = (
    Gender: genMasculine;
    Base: '';
    End1: '';
    End2: '';
    End5: '';
    );

  {�������}

  WD_THOUSEND: TRusWord = (
    Gender: genFeminine;
    Base: '�����';
    End1: '�';
    End2: '�';
    End5: '';
    );

  WD_MILLION: TRusWord = (
    Gender: genMasculine;
    Base: '�������';
    End1: '';
    End2: '�';
    End5: '��';
    );

  WD_MILLIARD: TRusWord = (
    Gender: genMasculine;
    Base: '��������';
    End1: '';
    End2: '�';
    End5: '��';
    );

  {������� �����}

  WD_INT: TRusWord = (
    Gender: genFeminine;
    Base: '���';
    End1: '��';
    End2: '��';
    End5: '��';
    );

  WD_FRAC: array[1..4] of TRusWord = (
    (Gender: genFeminine;
    Base: '�����';
    End1: '��';
    End2: '��';
    End5: '��'; ),

    (Gender: genFeminine;
    Base: 'co�';
    End1: '��';
    End2: '��';
    End5: '��'; ),

    (Gender: genFeminine;
    Base: '������';
    End1: '��';
    End2: '��';
    End5: '��'; ),

    (Gender: genFeminine;
    Base: '������������';
    End1: '��';
    End2: '��';
    End5: '��'; )
    );

  {�����, �������}

  WD_RUBLE: TRusWord = (
    Gender: genMasculine;
    Base: '����';
    End1: '�';
    End2: '�';
    End5: '��';
    );

  WD_KOPECK: TRusWord = (
    Gender: genFeminine;
    Base: '����';
    End1: '���';
    End2: '���';
    End5: '��';
    );

function CurrencyToText(ASum: Currency): string;
function FloatToText(R: Double; Precision: Integer): string;

function CountOfUnits(AUnit: TRusWord; N: Int64;
  Options: TNumberToTextOptions): string;
function AmountOfUnits(AUnit: TRusWord; R: Double; Precision: Integer;
  Options: TNumberToTextOptions): string;

implementation

uses
  SysUtils, CopyFiles;

const
  TenIn: array[1..4] of Integer = (10, 100, 1000, 10000);

type

  {------------------------------------------------------------------------------}

  TNumberAnalyser = class
  private
    FUnitWord: TRusWord;
    FNumber: Integer;
    FFirstLevel: Integer;
    FSecondLevel: Integer;
    FThirdLevel: Integer;
    function GetLevels(I: Integer): Integer;
    procedure SetNumber(AValue: Integer);
    function GetNumberInWord(N, Level: Integer): string;
    function GetGender: TGender;
    function Convert: string;
  public
    property Gender: TGender read GetGender;
    property Levels[I: Integer]: Integer read GetLevels;
    property Number: Integer read FNumber write SetNumber;
    property UnitWord: TRusWord read FUnitWord write FUnitWord;

    function UnitWordInRightForm: string;
    function ConvertToText(AUnit: TRusWord; ANumber: Integer): string;
  end;

var
  NumberAnalyser: TNumberAnalyser;

  {------------------------------------------------------------------------------}

function CurrencyToText(ASum: Currency): string;
var
  RubSum, KopSum: Int64;
begin
  RubSum := Trunc(ASum);
  KopSum := Round(Frac(ASum) * 100);

  Result := CountOfUnits(WD_RUBLE, RubSum, [{ntoExplicitZero, ntoMinus}]) + ' '
    + CountOfUnits(WD_KOPECK, KopSum, [ntoDigits]); // ������� � ������

  if Result <> '' then
    Result[1] := AnsiUpperCase(Result[1])[1]; // � ������� �����
end;

{------------------------------------------------------------------------------}

function FloatToText(R: Double; Precision: Integer): string;
begin
  Result := AmountOfUnits(WD_EMPTY, R, Precision, [ntoExplicitZero, ntoMinus]);
end;

{------------------------------------------------------------------------------}

function AmountOfUnits(AUnit: TRusWord; R: Double; Precision: Integer;
  Options: TNumberToTextOptions): string;
var
  n_int, n_frac: Int64;
begin
  Result := '';
  // ����� ntoDigits �� ������������ �� �������������

  // ���������� ���� ����� �������
  if Precision < 0 then
    Precision := 0;
  if Precision > MaxPrecision then
    Precision := MaxPrecision;

  if (R > 0) and (ntoPlus in Options) then
    Result := '���� ';
  if (R < 0) and (ntoMinus in Options) then
    Result := '����� ';

  R := Abs(R);

  // ���� Precision = 0, �.�. ��� ������� �����, ����������� � ������� �������
  if Precision > 0 then
    n_int := MyTrunc(R)
  else
    n_int := Round(R);

  // ������� �����
  n_frac := Round((R - n_int) * TenIn[Precision]);

  // ������������ ����� � ������� �����
  // ����� ntoNotReduceFrac �� �������� ��� n_frac = 0 (�.�. �� ����� "���� �����")
  if not (ntoNotReduceFrac in Options) then
    while (n_frac mod 10 = 0) and (Precision > 0) do
    begin
      n_frac := n_frac div 10;
      Dec(Precision);
    end;

  // ����� ������ ����
  if n_int = 0 then
    if n_frac = 0 then
    begin
      // ��� ���������� ������� ����� "����" ����������� ��� ����������� �� ����� ntoExplicitZero
      Result := {Result +} '���� ' + AUnit.Base + AUnit.End5;
      // "Result +" ���������, ����� �������� "����� ����"
      // ��� ����� ��������� ������� ����� �� ��������� ��������
      Exit;
    end
    else if (ntoExplicitZero in Options) then
      Result := Result + '���� ����� ';

  if {Precision = 0}  n_frac = 0 then
    Result := Result + CountOfUnits(AUnit, n_int, []) // N ������
  else
    Result := Result + CountOfUnits(WD_INT, n_int, []); // �������-�� �����

  if {(Precision = 0)}(n_frac = 0) then
    Exit;

  Result := Result + CountOfUnits(WD_FRAC[Precision], n_frac, []);
    // N �������, �����...
  Result := Result + AUnit.Base + AUnit.End2;
end;

{------------------------------------------------------------------------------}

function CountOfUnits(AUnit: TRusWord; N: Int64;
  Options: TNumberToTextOptions): string;
var
  Mrd, Mil, Th, Un: Integer;
begin
  Result := '';

  if (N = 0) and not (ntoExplicitZero in Options) then
    Exit;

  if not (ntoDigits in Options) then
  begin
    if (N < 0) and (ntoMinus in Options) then
      Result := '����� '
    else if (N > 0) and (ntoPlus in Options) then
      Result := '���� '
    else if (N = 0) then
    begin
      Result := '���� ' + AUnit.Base + AUnit.End5;
      Exit;
    end;
  end
  else
  begin
    if (N < 0) and (ntoMinus in Options) then
      Result := '-'
    else if (N > 0) and (ntoPlus in Options) then
      Result := '+';
  end;

  N := Abs(N);

  if ntoDigits in Options then
  begin
    NumberAnalyser.Number := N;
    NumberAnalyser.UnitWord := AUnit;
    Result := Result + Format('%d %s', [N, NumberAnalyser.UnitWordInRightForm]);
  end
  else
  begin
    with NumberAnalyser do
    begin
      Mrd := (N div 1000000000) mod 1000;
      Mil := (N div 1000000) mod 1000;
      Th := (N div 1000) mod 1000;
      Un := (N) mod 1000;

      Result := Result
        + ConvertToText(WD_MILLIARD, Mrd)
        + ConvertToText(WD_MILLION, Mil)
        + ConvertToText(WD_THOUSEND, Th);

      if Un > 0 then
        Result := Result + ConvertToText(AUnit, Un)
      else
        Result := Result + AUnit.Base + AUnit.End5;
    end;
  end;
end;

{------------------- TNumberAnalyser ------------------------------------------}

function TNumberAnalyser.GetLevels(I: Integer): Integer;
begin
  case I of
    1: Result := FFirstLevel;
    2: Result := FSecondLevel;
    3: Result := FThirdLevel;
    else
      result := FFirstLevel;
  end;
end;

procedure TNumberAnalyser.SetNumber(AValue: Integer);
begin
  if FNumber <> AValue then
  begin
    FNumber := AValue;
    FFirstLevel := FNumber mod 10;
    FSecondLevel := (FNumber div 10) mod 10;
    FThirdLevel := (FNumber div 100) mod 10;
    if FSecondLevel = 1 then
    begin
      FFirstLevel := FFirstLevel + 10;
      FSecondLevel := 0;
    end;
  end;
end;

function TNumberAnalyser.GetGender: TGender;
begin
  Result := FUnitWord.Gender;
end;

function TNumberAnalyser.GetNumberInWord(N, Level: Integer): string;
begin
  if Level = 1 then
    case N of
      0: Result := '';
      1: if Gender = genMasculine then
          Result := '����'
        else if Gender = genFeminine then
          Result := '����'
        else if Gender = genNeuter then
          Result := '����';
      2: if Gender = genMasculine then
          Result := '���'
        else if Gender = genFeminine then
          Result := '���'
        else if Gender = genNeuter then
          Result := '���';
      3: Result := '���';
      4: Result := '������';
      5: Result := '����';
      6: Result := '�����';
      7: Result := '����';
      8: Result := '������';
      9: Result := '������';
      10: Result := '������';
      11: Result := '�����������';
      12: Result := '����������';
      13: Result := '����������';
      14: Result := '������������';
      15: Result := '����������';
      16: Result := '�����������';
      17: Result := '����������';
      18: Result := '������������';
      19: Result := '������������';
    end
  else if Level = 2 then
    case N of
      0: Result := '';
      1: Result := '������';
      2: Result := '��������';
      3: Result := '��������';
      4: Result := '�����';
      5: Result := '���������';
      6: Result := '����������';
      7: Result := '���������';
      8: Result := '�����������';
      9: Result := '���������';
    end
  else if Level = 3 then
    case N of
      0: Result := '';
      1: Result := '���';
      2: Result := '������';
      3: Result := '������';
      4: Result := '���������';
      5: Result := '�������';
      6: Result := '��������';
      7: Result := '�������';
      8: Result := '���������';
      9: Result := '���������';
    end;
end;

function TNumberAnalyser.UnitWordInRightForm: string;
begin
  Result := UnitWord.Base;
  case Levels[1] of
    0, 5..19: Result := Result + UnitWord.End5;
    1: Result := Result + UnitWord.End1;
    2..4: Result := Result + UnitWord.End2;
  end;
end;

function TNumberAnalyser.Convert: string;
var
  i: Integer;
  s: string;
begin
  if FNumber = 0 then
    Result := ''
  else
  begin
    Result := '';
    for i := 3 downto 1 do
    begin
      s := GetNumberInWord(Levels[i], i);
      if s <> '' then
        Result := Result + s + ' ';
    end;
    Result := Result + UnitWordInRightForm + ' ';
  end;
end;

function TNumberAnalyser.ConvertToText(AUnit: TRusWord;
  ANumber: Integer): string;
begin
  UnitWord := AUnit;
  Number := ANumber;
  Result := Convert;
end;

{------------------------------------------------------------------------------}

initialization
  NumberAnalyser := TNumberAnalyser.Create;
finalization
  NumberAnalyser.Free;
end.
