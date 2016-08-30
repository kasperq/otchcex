unit CopyFiles;

interface
uses
  Windows, Messages, SysUtils, Math, Forms, Controls;

  Procedure FileCopy(Const SourceFileName, TargetFileName: String);
  function WindowsCopyFile(FromFile, ToDir : string) : boolean;
  function DeleteFile() : boolean;
  function KolZnakovPosleZap(value : extended) : integer;
  function SumToString(x: Integer): string;
  function MesName(Mes: integer): string;
  function MyTrunc(value : double) : Int64;
	function MyFrac(value : double) : double;
	function MyCeil(const X: Extended): Integer;
  function getCurZnak(value : double; znak : integer) : integer;
  procedure FormToObject(PopupForm : TForm; ControlObject : TControl; HTop:Integer = 0;
                         YesWidth:Integer = 1);

implementation

uses ShellApi, classes;

{
 ����� ������������ �� ������� *.��� ���� � ���� ����������� ��� ��������
 ����������:
  1. ���������� � ������� ����� ������� ���� CopyFiles.pas � ShellApi
        uses CopyFiles, ShellApi;
  2. � ������� OnShow ������� ����� �������� ��������� ���
        if paramstr(0) = 'C:\MyProg\restored\OTK.exe' then
          Close
        else
        begin
          ��� �������� ���
        end;
  3. � ������� OnCreate ��������
        if paramstr(0) = 'C:\MyProg\restored\OTK.exe' then
          if not WindowsCopyFile('C:\MyProg\restored\OTK.EXE', 'c:\') then
            ShowMessage('Copy Failed')
          else
          begin
            WindowsCopyFile('C:\MyProg\restored\Otchet.fr3', 'c:\');    ���� � �����, ������� ����� ����������, � ����, ���� ����� ����������
            WindowsCopyFile('C:\MyProg\restored\OtchetKriw.fr3', 'c:\');
            ShellExecute(Handle, 'Open', PChar('C:\OTK.exe'), nil, nil, sw_normal);
          end;
  4. � ������� OnDestroy ��������
        var
          f: textFile;
          FileName: string;
        begin
          if paramstr(0) = 'C:\OTK.exe' then
          begin
            FileName := changefileext(paramstr(0), '.bat');
            assignFile(f, FileName);
            rewrite(f);
            writeln(f, ':1');
            writeln(f, format('Erase "%s"', [paramstr(0)]));
            writeln(f, format('If exist "%s" Goto 1', [paramstr(0)]));
            writeln(f, 'Erase "c:\settings.ini"');                           ��� ����������� ��� ����� ������� ���� �������
            writeln(f, 'Erase "C:\Otchet.fr3"');
            writeln(f, 'Erase "C:\OtchetKriw.fr3"');
            writeln(f, format('Erase "%s"', [FileName]));
            closefile(f);
            ShellExecute(Handle, 'Open', PChar(FileName), nil, nil, sw_hide);
          end;
}

Procedure FileCopy(Const SourceFileName, TargetFileName: String);
Var
  S,T : TFileStream;
Begin
  S := TFileStream.Create(sourcefilename, fmOpenRead );
  try
    T := TFileStream.Create(targetfilename, fmOpenWrite or fmCreate);
    try
      T.CopyFrom(S, S.Size ) ;
      FileSetDate(T.Handle, FileGetDate(S.Handle));
    finally
      T.Free;
    end;
  finally
    S.Free;
  end;
end;

function WindowsCopyFile(FromFile, ToDir : string) : boolean;
var F : TShFileOpStruct;
begin  
  F.Wnd := 0; F.wFunc := FO_COPY;
  FromFile:=FromFile+#0; F.pFrom:=pchar(FromFile);   
  ToDir:=ToDir+#0; F.pTo:=pchar(ToDir);   
  F.fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION;   
  result:=ShFileOperation(F) = 0;   
end;

function DeleteFile() : boolean;
var f: textFile;
  FileName: string;
begin
  FileName := changefileext(paramstr(0), '.bat');
  assignFile(f, FileName);
  rewrite(f);
  writeln(f, ':1');
  writeln(f, format('Erase "%s"', [paramstr(0)]));
  writeln(f, format('If exist "%s" Goto 1', [paramstr(0)]));
  writeln(f, format('Erase "%s"', [FileName]));
  closefile(f);
//  ShellExecute(Handle, 'Open', PChar(FileName), nil, nil, sw_hide);
  result := true;
end;

function KolZnakovPosleZap(value : extended) : integer;
var
  s : string;
  i : Integer;
  kolZn : integer;
begin
  kolZn := 0;
  s := floattostr(value);
  for i := length(s) downto 0 do
  begin
    if s[i] = ',' then
      break;
    if i > 0 then
    begin
      if s[i] = '0' then
      begin
        if kolZn > 0 then
          kolZn := kolZn + 1;
      end
      else
        kolZn := kolZn + 1;
    end
    else
      kolZn := 0;
  end;
  result := kolZn;
end;

//������ �������� ����� ��������
function SumToString(x: Integer): string;
  label 1;
  Var ed: array[0..12] of  string;
  Var dec1: array[0..10] of  string;
  Var dec: array[0..8] of  string;
  Var cot: array[0..10] of  string;
  Var ts: array[0..4] of  string;
  Var ts1: array[0..4] of  string;
  Var ts2: array[0..4] of  string;
  Var x_n1,x_n3,n,x_f,x_f1,x_r1,x_r2,x_r3,x_pr: Integer;
    s,x_nf:string;
    i:integer;
begin
  s := '';
  ed[1]:='����'; ed[2]:= '���'; ed[3]:='���'; ed[4]:='������'; ed[5]:='����';
  ed[6]:='�����'; ed[7]:='����'; ed[8]:='������'; ed[9]:='������'; ed[10]:='����';
  ed[11]:='���'; ed[12]:='';
  dec1[1]:='������';dec1[2]:='�����������';dec1[3]:='����������';dec1[4]:='����������';
  dec1[5]:='������������';dec1[6]:='����������';dec1[7]:='�����������';
  dec1[8]:='����������';dec1[9]:='������������';dec1[10]:='������������';
  dec[1]:='��������';dec[2]:='��������';dec[3]:='�����';dec[4]:='���������';
  dec[5]:='����������';dec[6]:='���������';dec[7]:='�����������';dec[8]:='���������';
  cot[1]:='���';cot[2]:='������';cot[3]:='������';cot[4]:='���������';cot[5]:='�������';
  cot[6]:='��������';cot[7]:='�������';cot[8]:='���������';cot[9]:='���������';
  cot[10]:='���';
  ts[1]:=' ';ts[2]:='�����';ts[3]:='���������';ts[4]:='����������';
  ts1[1]:=' ';ts1[2]:='������';ts1[3]:='��������';ts1[4]:='���������';
  ts2[1]:=' ';ts2[2]:='������';ts2[3]:='�������';ts2[4]:='��������';
  s:='';
  x_f1:=0; //x_n1:=0; x_n3:=0;  n:=0;
  n:=x;
  x_f:=length(trim(IntToStr(n)));
  if n=0 then
  begin
    Result:='0';
    Exit;
  end;
  if n<1000000000000000 then x_f1:=5;
  if n<1000000000000 then x_f1:=4;
  if n<1000000000 then x_f1:=3;
  if n<1000000 then x_f1:=2;
  if n<1000 then x_f1:=1;
  i:=1;
  case x_f of
    12: x_nf:=IntToStr(n);
    11: x_nf:='0'+IntToStr(n);
    10: x_nf:='00'+IntToStr(n);
    9: x_nf:=IntToStr(n);
    8: x_nf:='0'+IntToStr(n);
    7: x_nf:='00'+IntToStr(n);
    6: x_nf:=IntToStr(n);
    5: x_nf:='0'+IntToStr(n);
    4: x_nf:='00'+IntToStr(n);
    3: x_nf:=IntToStr(n);
    2: x_nf:='0'+IntToStr(n);
    1: x_nf:='00'+IntToStr(n);
    else
    begin
      s:=IntToStr(x);
      Result:=Trim(s);
      Exit;
    end;
  end;

  while x_f1>0 do
  begin
    x_r1:=i*3-2;
    x_r2:=i*3-1;
    x_r3:=i*3;
    x_pr:=0;
    x_n3:=0;
    x_n1:=StrToInt(copy(x_nf,x_r1,1));
    if x_n1<>0 then
    begin
      s:=s+cot[x_n1]+' ';
      x_pr:=1;
    end;
    x_n1:=StrToInt(copy(x_nf,x_r2,1));
    case x_n1 of
      2..99:
      begin   //
        s:=s+dec[x_n1-1]+' ';
        x_pr:=1;
        x_n1:=StrToInt(copy(x_nf,x_r3,1));
        if x_n1<>0 then
        begin
          if x_f1=2 then
          begin
            if x_n1=1 then s:=s+ed[10]+' ';
            if x_n1=2 then s:=s+ed[11]+' ';
            if x_n1>2 then s:=s+ed[x_n1]+' ';
          end
          else s:=s+ed[x_n1]+' ';
            x_pr:=1;
          end;
      end;  //
      1:
      begin
        x_pr:=1;
        x_n1:=StrToInt(copy(x_nf,x_r3,1));
        s:=s+dec1[x_n1+1]+' ';
        x_n3:=x_n1;
      end;
      0:
      begin //
        x_n1:=StrToInt(copy(x_nf,x_r3,1));
        if x_n1<>0 then
        begin
          if x_f1=2 then
          begin
            if x_n1=1 then s:=s+ed[10]+' ';
            if x_n1=2 then s:=s+ed[11]+' ';
            if x_n1>2 then s:=s+ed[x_n1]+' ';
          end
          else
            s:=s+ed[x_n1]+' ';
          x_pr:=1;
        end;
      end;
    end;
    if x_pr=1 then
    begin
      if x_n3<>0 then
      begin
        s:=s+ts[x_f1]+' ';
        goto 1;
      end;
      if (x_n1=3)or(x_n1=2)or(x_n1=4) then
      begin
        s:=s+ts1[x_f1]+' ';
        goto 1;
      end;
      if x_n1=1 then
      begin
        s:=s+ts2[x_f1]+' ';
        goto 1;
      end;
      s:=s+ts[x_f1]+' ';
    end;
    1: x_f1:=x_f1-1;
       i:=i+1;
  end;
  Result:=Trim(s);
end;

function MesName(Mes: integer): string;
begin
  case Mes of
    1: Result:='������';
    2: Result:='�������';
    3: Result:='�����';
    4: Result:='������';
    5: Result:='���';
    6: Result:='����';
    7: Result:='����';
    8: Result:='�������';
    9: Result:='��������';
    10: Result:='�������';
    11: Result:='������';
    12: Result:='�������';
  end;
end;

function MyTrunc(value : double) : Int64;
var
  strValue, intStr : string;
  i : integer;
begin
  result := 0;
	strValue := FloatToStr(value);
  for i := 1 to length(strValue) do
	begin
  	if (strValue[i] <> ',') then
    	intStr := intStr + strValue[i]
    else
    	break;
  end;
  result := StrToInt64(intStr);
end;

function MyFrac(value : double) : double;
var
  strValue, intStr : string;
  i : integer;
begin
  result := 0;
	strValue := FloatToStr(value);
  if (pos(',', strValue) <> 0) then
    for i := pos(',', strValue) to length(strValue) do
    	intStr := intStr + strValue[i]
  else
  	intStr := '0,0';
  result := StrToFloat(intStr);
end;

function MyCeil(const X: Extended): Integer;
begin
  Result := Integer(MyTrunc(X));
  if (MyFrac(X) > 0) then
    Inc(Result);
end;

function getCurZnak(value : double; znak : integer) : integer;
var
  curZnak : integer;
  strValue : string;
begin
  curZnak := KolZnakovPosleZap(value);
  if (curZnak > 6) then
  begin
    strValue := FloatToStr(SimpleRoundTo(value, -6));
    if (strValue[length(strValue)] = '9') and (KolZnakovPosleZap(SimpleRoundTo(value, -6)) = 6) then
      if (StrToInt(strValue[length(strValue) - 1]) > 7) then
        curZnak := KolZnakovPosleZap(SimpleRoundTo(value, -4))
      else
        curZnak := KolZnakovPosleZap(SimpleRoundTo(value, -5))
    else
      curZnak := KolZnakovPosleZap(SimpleRoundTo(value, -6));
  end;
  if (znak < curZnak) then
    znak := curZnak;
  result := znak;
end;

procedure FormToObject(PopupForm : TForm; ControlObject : TControl; HTop:Integer = 0;
                       YesWidth:Integer = 1);
var
  xy : TPoint;
begin
  xy.Y := 0;
  xy.X := 0;
  xy:= ControlObject.ClientToScreen(xy);
  PopupForm.Position := poDesigned;
  PopupForm.BorderStyle := bsNone;
  PopupForm.Top := xy.Y+ControlObject.Height;
  if PopupForm.Top+PopupForm.Height > Screen.Height then
    PopupForm.Top := PopupForm.Top-PopupForm.Height-ControlObject.Height;
  if PopupForm.Top < 0 then
  begin
    PopupForm.Height := PopupForm.Height+PopupForm.Top-HTop;
    PopupForm.Top := HTop;
  end;
  PopupForm.Left := xy.X;
  if YesWidth = 1 then
    PopupForm.Width := ControlObject.Width;
end;



end.
