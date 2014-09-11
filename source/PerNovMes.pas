unit PerNovMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,IB;

type
  TFPerNovMes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPerNovMes: TFPerNovMes;

implementation
  uses glmenu,dm;
{$R *.dfm}

procedure TFPerNovMes.Button2Click(Sender: TObject);
begin
close;
end;

procedure TFPerNovMes.FormShow(Sender: TObject);
begin
Label3.Caption:=FGlMenu.Label2.Caption;
button1.Visible:=true;
button2.Caption:='Нет';
Label1.Caption:='Месяц обработки:';
Label2.Caption:='Вы действительно хотите перейти на новый месяц?';
end;

procedure TFPerNovMes.Button1Click(Sender: TObject);
begin
  if dm1.ConfigUMC.Active then
    dm1.ConfigUMC.Active := false;
  DM1.ConfigUMC.MacroByName('USL').AsString := 'ConfigUMC.Struk_id = ' + IntToStr(vstruk_id);
  DM1.ConfigUMC.Open;
  dm1.New_Mes.ParamByName('Struk_Id').AsInteger := vStruk_id;
  OldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    if dm1.IBT_WRITE.Active then
      dm1.IBT_WRITE.Active := false;
    dm1.IBT_WRITE.StartTransaction;
    try
      dm1.New_Mes.ExecProc;
      dm1.IBT_WRITE.Commit;
    except
      on E:EIBInterbaseError do
      begin
        ShowMessage(E.Message);
        dm1.IBT_WRITE.rollback;
      end;
    end;
    DM1.ConfigUMC.Close;
    if dm1.IBT_READ.Active then
      dm1.IBT_READ.Active := false;
    dm1.IBT_READ.StartTransaction;
    DM1.ConfigUMC.Open;
    FGlMenu.Label2.Caption := FormatDateTime('mmmm', EncodeDate(DM1.ConfigUMCGOD.AsInteger,
                                                                DM1.ConfigUMCMES.AsInteger,
                                                                1));
    MES := DM1.ConfigUMCMES.AsInteger;
    GOD := DM1.ConfigUMCGOD.AsInteger;
    IF MES < 10 THEN
      S_MES := '0' + INTTOSTR(MES)
    ELSE
      S_MES := INTTOSTR(MES);
    S_DAT1 := '01.' + S_MES + '.' + INTTOSTR(GOD);
    S_DAT2 := datetostr(IncMonth(strtodate(s_dat1), 1) -1);
    FGlMenu.Label5.Caption := FormatDateTime('yyyy', EncodeDate(DM1.ConfigUMCGOD.AsInteger,
                                                                DM1.ConfigUMCMES.AsInteger,
                                                                1)) + 'г.';
    label2.Caption := 'Вы перешли на новый месяц !';
    Label3.Caption := FGlMenu.Label2.Caption;
    button1.Visible := false;
    button2.Caption := 'Выход';
  finally
    Screen.Cursor := OldCursor;
  end;
end;
 
end.
