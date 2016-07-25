unit ediz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, Grids, DBGrids, Buttons, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, FindDlgEh, DBGridEh;

type
  TFEdiz = class(TForm)
    ImageList1: TImageList;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Ediz: TIBQuery;
    EdizKEI_ID: TSmallintField;
    EdizNEIS: TIBStringField;
    DSediz: TDataSource;
    DBGridEh1: TDBGridEh;
    FindDlgEh1: TFindDlgEh;
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
  ModalResult := EdizKei_ID.AsInteger+50;
end;

procedure TFEdiz.FormActivate(Sender: TObject);
begin
  Ediz.Open;
end;

procedure TFEdiz.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := EdizKei_ID.AsInteger + 50;
end;

procedure TFEdiz.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

end.
