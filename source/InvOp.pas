unit InvOp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, frxDCtrl, frxClass, frxDBSet, StdCtrls,
  Mask, DBCtrlsEh, ToolEdit, Grids, DBGridEh, Math, FileUtil;

type
  TFInvOp = class(TForm)
    frxReport1: TfrxReport;
    frxMainQ: TfrxDBDataset;
    frxDialogControls1: TfrxDialogControls;
    MainQ: TIBQuery;
    Button1: TButton;
    dateEnd: TDateEdit;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit5: TEdit;
    Label12: TLabel;
    Edit6: TEdit;
    Label13: TLabel;
    Edit7: TEdit;
    Label14: TLabel;
    Edit8: TEdit;
    Label15: TLabel;
    Edit9: TEdit;
    Label16: TLabel;
    Edit10: TEdit;
    Label17: TLabel;
    Edit11: TEdit;
    Label18: TLabel;
    Edit12: TEdit;
    Label19: TLabel;
    Edit13: TEdit;
    Label20: TLabel;
    Edit14: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit15: TEdit;
    Edit16: TEdit;
    Label24: TLabel;
    Edit17: TEdit;
    MainQKSM_ID: TIntegerField;
    MainQKSM_IDPR: TIntegerField;
    MainQNMAT: TIBStringField;
    MainQKOD_PREP: TIBStringField;
    MainQNMAT_PREP: TIBStringField;
    MainQOSTATOK_END_S: TFMTBCDField;
    MainQOSTATOK_END_NZ: TFMTBCDField;
    MainQKRAZ: TSmallintField;
    MainQNEIS: TIBStringField;
    MainQNEISP: TIBStringField;
    MainQPRMAT: TIBStringField;
    MainQSTNAME: TIBStringField;
    MainQREGION: TIBStringField;
    ZnakQuery: TIBQuery;
    ZnakQueryKSM_ID_MAT: TIntegerField;
    ZnakQueryKSM_ID_PR: TIntegerField;
    ZnakQueryDECZNAK: TSmallintField;
    MainQZNAK: TSmallintField;
    MainQSUMSNZ: TFloatField;
    Label25: TLabel;
    monthCombo: TComboBox;
    yearEdit: TEdit;
    function SumToString(x: Integer): string;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MainQCalcFields(DataSet: TDataSet);

    procedure getInvDate;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInvOp: TFInvOp;
  begDate, endDate: string;



implementation

uses dm, CopyFiles;

{$R *.dfm}

function TFInvOp.SumToString(x: Integer): string;
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
  ed[1]:='Œƒ»Õ'; ed[2]:= 'ƒ¬¿'; ed[3]:='“–»'; ed[4]:='◊≈“€–≈'; ed[5]:='œﬂ“‹';
  ed[6]:='ÿ≈—“‹'; ed[7]:='—≈Ã‹'; ed[8]:='¬Œ—≈Ã‹'; ed[9]:='ƒ≈¬ﬂ“‹'; ed[10]:='ŒƒH¿';
  ed[11]:='ƒ¬≈'; ed[12]:='';
  dec1[1]:='ƒ≈—ﬂ“‹';dec1[2]:='Œƒ»HH¿ƒ÷¿“‹';dec1[3]:='ƒ¬≈H¿ƒ÷¿“‹';dec1[4]:='“–»H¿ƒ÷¿“‹';
  dec1[5]:='◊≈“€–H¿ƒ÷¿“‹';dec1[6]:='œﬂ“H¿ƒ÷¿“‹';dec1[7]:='ÿ≈—“H¿ƒ÷¿“‹';
  dec1[8]:='—≈ÃH¿ƒ÷¿“‹';dec1[9]:='¬Œ—≈ÃH¿ƒ÷¿“‹';dec1[10]:='ƒ≈¬ﬂ“H¿ƒ÷¿“‹';
  dec[1]:='ƒ¬¿ƒ÷¿“‹';dec[2]:='“–»ƒ÷¿“‹';dec[3]:='—Œ–Œ ';dec[4]:='œﬂ“‹ƒ≈—ﬂ“';
  dec[5]:='ÿ≈—“‹ƒ≈—ﬂ“';dec[6]:='—≈Ã‹ƒ≈—ﬂ“';dec[7]:='¬Œ—≈Ã‹ƒ≈—ﬂ“';dec[8]:='ƒ≈¬ﬂHŒ—“Œ';
  cot[1]:='—“Œ';cot[2]:='ƒ¬≈—“»';cot[3]:='“–»—“¿';cot[4]:='◊≈“€–≈—“¿';cot[5]:='œﬂ“‹—Œ“';
  cot[6]:='ÿ≈—“‹—Œ“';cot[7]:='—≈Ã‹—Œ“';cot[8]:='¬Œ—≈Ã‹—Œ“';cot[9]:='ƒ≈¬ﬂ“‹—Œ“';
  cot[10]:='—“Œ';
  ts[1]:=' ';ts[2]:='“€—ﬂ◊';ts[3]:='Ã»ÀÀ»ŒHŒ¬';ts[4]:='Ã»ÀÀ»¿–ƒŒ¬';
  ts1[1]:=' ';ts1[2]:='“€—ﬂ◊»';ts1[3]:='Ã»ÀÀ»ŒH¿';ts1[4]:='Ã»ÀÀ»¿–ƒ¿';
  ts2[1]:=' ';ts2[2]:='“€—ﬂ◊¿';ts2[3]:='Ã»ÀÀ»ŒH';ts2[4]:='Ã»ÀÀ»¿–ƒ';
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

procedure TFInvOp.Button1Click(Sender: TObject);
var
  rows : integer;
begin
  getInvDate;
  
  rows := 0;
  MainQ.Active := False;
//  MainQ.ParamByName('data1').AsString := DateEdit1.Text;
//  MainQ.ParamByName('data2').AsString := DateEdit2.Text;
  MainQ.ParamByName('data1').AsString := begDate;
  MainQ.ParamByName('data2').AsString := endDate;
  MainQ.ParamByName('struk_id').AsInteger := vStruk_id;
  MainQ.Active := True;
  MainQ.First;
  while not MainQ.Eof  do
  begin
    rows := rows + 1;
    MainQ.Next;
  end;
  MainQ.First;

  frxReport1.Script.Variables['rD1'] := StrToDate(DateEnd.Text);
  frxReport1.Script.Variables['rD2'] := StrToDate(DateEdit1.Text);
  frxReport1.Script.Variables['rD3'] := StrToDate(DateEdit2.Text);
  frxReport1.Script.Variables['e1'] := Edit1.Text;
  frxReport1.Script.Variables['e2'] := Edit2.Text;
  frxReport1.Script.Variables['e3'] := Edit3.Text;
  frxReport1.Script.Variables['e4'] := Edit4.Text;
  frxReport1.Script.Variables['e5'] := Edit5.Text;
  frxReport1.Script.Variables['e6'] := Edit6.Text;
  frxReport1.Script.Variables['e7'] := Edit7.Text;
  frxReport1.Script.Variables['e8'] := Edit8.Text;
  frxReport1.Script.Variables['e9'] := Edit9.Text;
  frxReport1.Script.Variables['e10'] := Edit10.Text;
  frxReport1.Script.Variables['e11'] := Edit11.Text;
  frxReport1.Script.Variables['e12'] := Edit12.Text;
  frxReport1.Script.Variables['e13'] := Edit13.Text;
  frxReport1.Script.Variables['e14'] := Edit14.Text;
  frxReport1.Script.Variables['e15'] := Edit15.Text;
  frxReport1.Script.Variables['e16'] := Edit16.Text;
  frxReport1.Script.Variables['nom'] := Edit17.Text;
  frxReport1.Script.Variables['kol'] := SumToString(rows);
  if (vStruk_Id = 1) then
    frxReport1.LoadFromFile(reportsPath + 'InvOpOtchCex1.fr3')
  else
    frxReport1.LoadFromFile(reportsPath + 'InvOpOtch.fr3');
  frxReport1.ShowReport(true);
end;

procedure TFInvOp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainQ.Active := False;
  ZnakQuery.Active := false;
end;

procedure TFInvOp.FormShow(Sender: TObject);
begin
  yearEdit.Text := IntToStr(GOD_conf);
end;

procedure TFInvOp.MainQCalcFields(DataSet: TDataSet);
var
  factOstSyrZnak, factOstNzZnak, factSumZnak, znak : integer;
begin
//  ZnakQuery.Active := false;
//  ZnakQuery.ParamByName('ksm_prep').AsInteger := MainQKSM_IDPR.AsInteger;
//  ZnakQuery.ParamByName('ksm_syr').AsInteger := MainQKSM_ID.AsInteger;
//  ZnakQuery.Active := True;
//  if ZnakQueryDECZNAK.AsInteger <> 0 then
//    MainQZNAK.AsInteger := ZnakQueryDECZNAK.AsInteger
//  else
//    MainQZNAK.AsInteger := 3;
//  MainQSUMSNZ.AsFloat := SimpleRoundTo(MainQOSTATOK_END_S.AsFloat
//                                       + MainQOSTATOK_END_NZ.AsFloat,
//                                       - MainQZNAK.AsInteger);

  MainQSUMSNZ.AsFloat := MainQOSTATOK_END_S.AsFloat
                         + MainQOSTATOK_END_NZ.AsFloat;
  factOstSyrZnak := KolZnakovPosleZap(MainQOSTATOK_END_S.AsFloat);
  factOstNzZnak := KolZnakovPosleZap(MainQOSTATOK_END_NZ.AsFloat);
  factSumZnak := KolZnakovPosleZap(MainQSUMSNZ.AsFloat);
  if (factOstSyrZnak >= factOstNzZnak) then
    znak := factOstSyrZnak
  else
    znak := factOstNzZnak;
  if (znak < factSumZnak) then
    znak := factSumZnak;
  if (znak <> 0) then
    MainQZNAK.AsInteger := znak
  else
    MainQZNAK.AsInteger := 3;  
end;

procedure TFInvOp.getInvDate;
var  
  year: integer;
begin
  year := StrToInt(yearEdit.text);
  begDate := DateToStr(EncodeDate(year, monthCombo.ItemIndex + 1, 1));
  endDate := DateToStr(dm1.LastDayOfMonth(monthCombo.ItemIndex + 1, year));
end;

end.
