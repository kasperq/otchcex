unit FSpFormv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Buttons, ExtCtrls, Grids, DBGrids;

type
  TFSPFormvip = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ImageList1: TImageList;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSPFormvip: TFSPFormvip;

implementation
 uses dm;
{$R *.dfm}

procedure TFSPFormvip.FormActivate(Sender: TObject);
begin
dm1.SpFormv.Active:=true;
end;

procedure TFSPFormvip.SpeedButton1Click(Sender: TObject);
begin
 ModalResult:= DM1.SpFormvSpFv.AsInteger+50;
 s_Formv:=dm1.SpFormvNamefv.AsString;
end;

procedure TFSPFormvip.SpeedButton2Click(Sender: TObject);
begin
ModalResult := mrCancel;
s_Formv:='';
close;
end;

end.
