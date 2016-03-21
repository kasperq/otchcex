unit Ser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ImgList, Grids, DBGridEh, ComCtrls, ToolWin, Buttons, ExtCtrls,
  FindDlgEh;

type
  TFSer = class(TForm)
    DBGridEh4: TDBGridEh;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    FindDlgEh1: TFindDlgEh;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh4DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSer: TFSer;

implementation

uses dm, TexGur, TexGurOld;
{$R *.dfm}

procedure TFSer.DBGridEh4DblClick(Sender: TObject);
begin
  if (pr_ser = 0) then
    ModalResult := DM1.SeriaSERIA_ID.AsInteger + 50
  else
    ModalResult := FTexGurOld.Seria_sSERIA_ID.AsInteger + 50;
end;

procedure TFSer.SpeedButton1Click(Sender: TObject);
begin
  if (pr_ser = 0) then
    ModalResult := DM1.SeriaSERIA_ID.AsInteger + 50
  else
    ModalResult := FTexGurOld.Seria_sSERIA_ID.AsInteger + 50;
end;

procedure TFSer.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

end.
