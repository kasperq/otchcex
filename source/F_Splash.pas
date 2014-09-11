unit F_Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, RXCtrls;

type
  TFSplash = class(TForm)
    RxLabel1: TRxLabel;
    ProgressBar1: TProgressBar;
    Bevel1: TBevel;
    RxProcessLabel: TRxLabel;
    Bevel2: TBevel;
    Shape1: TShape;
    procedure SetBar(ProcessCaption: string; Max: integer; Step: integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplash: TFSplash;

implementation

{$R *.dfm}

{ TFSplash }



{ TFSplash }

procedure TFSplash.SetBar(ProcessCaption: string; Max: integer; Step: integer);
begin
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=Max;
  ProgressBar1.Step:=Step;
  RxProcessLabel.Caption:=ProcessCaption;
  Application.ProcessMessages;
  FSplash.Show;
  FSplash.Update;
end;

end.
