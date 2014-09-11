unit NastrPech;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,IniFiles;

type
  TFNastrPech = class(TForm)
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ResultWindow: Integer;
  end;

var
  FNastrPech: TFNastrPech;
  IniOtchet: TIniFile;
  VidShap: integer;
  

implementation
  uses dm;
{$R *.dfm}

procedure TFNastrPech.FormShow(Sender: TObject);
begin
 IniOtchet := TIniFile.Create(exePath + 'OTCHET.Ini');
 VidShap := IniOtchet.ReadInteger('Config', 'Shap_id', 5);
 s_Dolgn := IniOtchet.ReadString('Config', 'Dolgn', 'Зам.генрального директора');
 s_Fio := IniOtchet.ReadString('Config', 'FIO','Адамович С.И.');
 edit1.Text:=s_dolgn;
 edit2.Text:=s_Fio;
 Combobox1.ItemIndex:=VidShap-1;
end;

procedure TFNastrPech.SpeedButton1Click(Sender: TObject);
begin
 VidShap :=Combobox1.ItemIndex+1;
 s_dolgn := edit1.Text;
 s_Fio:= edit2.Text;
 IniOtchet.WriteInteger('Config','Shap_id', VidShap);
 IniOtchet.WriteString('Config', 'Dolgn',s_dolgn);
 IniOtchet.WriteString('Config', 'Fio', s_Fio);
end;

procedure TFNastrPech.SpeedButton2Click(Sender: TObject);
begin
  ResultWindow:=4;
  Close;
end;

procedure TFNastrPech.SpeedButton3Click(Sender: TObject);
begin
  ResultWindow:=3;
  Close;
end;

end.
