unit Upak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Buttons, ExtCtrls, Grids, DBGrids, FindDlgEh, DBGridEh,
  ComCtrls, ToolWin,DB;

type
  TFUpak = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    DBGridEh1: TDBGridEh;
    FindDlgEh1: TFindDlgEh;
    ImageList2: TImageList;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUpak: TFUpak;

implementation
  uses dm;
{$R *.dfm}

procedure TFUpak.SpeedButton1Click(Sender: TObject);
begin
ModalResult:=DM1.UpakNomu_ID.AsInteger+50;
end;

procedure TFUpak.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure TFUpak.ToolButton1Click(Sender: TObject);
begin
 dm1.upak.insert;
end;

procedure TFUpak.ToolButton2Click(Sender: TObject);
begin
 if (DM1.Upak.State = dsInsert) or (DM1.Upak.State=dsEdit) then
  dm1.upak.Post;
  DM1.IBT_Write.Commit;
  dm1.upak.close;
  dm1.upak.open;
//  ToolButton2.Enabled:=false;
end;

procedure TFUpak.ToolButton3Click(Sender: TObject);
begin
 dm1.upak.delete;
end;

procedure TFUpak.FormShow(Sender: TObject);
begin
  dm1.Upak.Active := true;
end;

end.
