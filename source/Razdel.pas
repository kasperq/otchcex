unit razdel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids,StdCtrls, ImgList, ComCtrls, ToolWin, Buttons, ExtCtrls;

type
  Tfrazdel = class(TForm)
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    razdelId : integer;
    kraz : integer;
  end;

var
  frazdel: Tfrazdel;

implementation
   uses dm;
{$R *.DFM}

procedure Tfrazdel.FormActivate(Sender: TObject);
begin
  dm1.razdel.Close;
end;

procedure Tfrazdel.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := DM1.RazdelRazdel_ID.AsInteger + 50;
  s_razdel := dm1.RazdelKRAZ.AsInteger;
  razdelId := DM1.RazdelRazdel_ID.AsInteger;
  kraz := dm1.RazdelKRAZ.AsInteger;
end;

procedure Tfrazdel.SpeedButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
  s_razdel := 0;
  razdelId := 0;
  kraz := 0;
  close;
end;

end.
