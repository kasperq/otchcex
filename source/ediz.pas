unit ediz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, Grids, DBGrids, Buttons, ExtCtrls;

type
  TFEdiz = class(TForm)
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEdiz: TFEdiz;

implementation
  uses dm;
{$R *.dfm}

procedure TFEdiz.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult:=DM1.EdizKei_ID.AsInteger+50;
end;

procedure TFEdiz.FormActivate(Sender: TObject);
begin
dm1.Ediz.Active:=true;
end;

procedure TFEdiz.SpeedButton1Click(Sender: TObject);
begin
 ModalResult:=DM1.EdizKei_ID.AsInteger+50;
 
end;

procedure TFEdiz.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
