unit LookupUnderSign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, DB, IBCustomDataSet, IBQuery;

type
  TFLookupUnderSign = class(TForm)
    q_underSign: TIBQuery;
    Panel1: TPanel;
    grd_underSign: TDBGridEh;
    q_underSignTIP_PARAM_ID: TSmallintField;
    q_underSignTIP_DOK_ID: TSmallintField;
    q_underSignPARAM_NAME: TIBStringField;
    q_underSignDEFAULT_VALUE: TIBStringField;
    ds_underSign: TDataSource;
    Timer1: TTimer;
    procedure grd_underSignCellClick(Column: TColumnEh);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grd_underSignKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    underSign : string;

  end;

var
  FLookupUnderSign: TFLookupUnderSign;

implementation

{$R *.dfm}

uses dm;

procedure TFLookupUnderSign.grd_underSignCellClick(Column: TColumnEh);
begin
  underSign := q_underSignDEFAULT_VALUE.AsString;
  self.Close;
end;

procedure TFLookupUnderSign.grd_underSignKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
    self.Close;
end;

procedure TFLookupUnderSign.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  q_underSign.Close;
end;

procedure TFLookupUnderSign.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
    self.Close;
end;

procedure TFLookupUnderSign.FormShow(Sender: TObject);
begin
  underSign := '';
  q_underSign.Close;
  q_underSign.Open;
end;

procedure TFLookupUnderSign.Timer1Timer(Sender: TObject);
var
  mouseX, mouseY : integer;
begin
  mouseX := self.ScreenToClient(Point(Mouse.CursorPos.X, Mouse.CursorPos.Y)).X;
  mouseY := self.ScreenToClient(Point(Mouse.CursorPos.X, Mouse.CursorPos.Y)).Y;
  if (mouseX < (grd_underSign.Left - 20))
     or (mouseX > (grd_underSign.Left + grd_underSign.Width + 30))
     or (mouseY < (grd_underSign.Top - 20))
     or (mouseY > (grd_underSign.Top + grd_underSign.Height + 30)) then
    self.Close;
end;

end.
