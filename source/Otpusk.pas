unit Otpusk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StdCtrls;

type
  TFOtpusk = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    showCB: TCheckBox;
    procedure showCBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOtpusk: TFOtpusk;

implementation

{$R *.dfm}

procedure TFOtpusk.showCBClick(Sender: TObject);
var
  showIni : TIniFile;
begin
  showIni := TIniFile.Create('showIni.ini');
  if (showCB.Checked) then
    showIni.WriteInteger('Config', 'showOtpusk', 0)
  else
    showIni.WriteInteger('Config', 'showOtpusk', 1);
end;

end.
