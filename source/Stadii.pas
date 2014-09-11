unit Stadii;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ImgList, ComCtrls, ToolWin;

type
  TFStadii = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton8: TToolButton;
    ImageList1: TImageList;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStadii: TFStadii;

implementation
   uses dm,TexGur, SprSTAD;
{$R *.dfm}

procedure TFStadii.ToolButton1Click(Sender: TObject);
begin
pr_N:=FALSE;
if FSprStad=nil then FSprStad:=TfSprStad.Create(Application);
 FSprStad.ShowModal;
 FTexGur.SprStad.close;
 FTexGur.SprStad.ParamByName('Lek_id').AsInteger:=s_Lek_id;
 FTexGur.SprStad.open;
end;

procedure TFStadii.ToolButton2Click(Sender: TObject);
begin
ModalResult :=FTexGur.SprStad.FieldByName('Stadia_Id').AsInteger+50;
end;

procedure TFStadii.ToolButton8Click(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure TFStadii.FormActivate(Sender: TObject);
begin
 FTexGur.SprStad.Close;
 FTexGur.SprStad.ParamByName('Lek_id').AsInteger:=s_Lek_id;
 FTexGur.SprStad.Open;
 FTexGur.SprStad.First;
end;

end.
