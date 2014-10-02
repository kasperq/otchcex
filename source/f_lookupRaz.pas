unit f_lookupRaz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, IBCustomDataSet,
  IBQuery, FindDlgEh, Menus;

type
  TFLookupRaz = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    DBGridEh1: TDBGridEh;
    BitBtn2: TBitBtn;
    IBQuery: TIBQuery;
    DataSource1: TDataSource;
    FindDlgEh1: TFindDlgEh;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState); 
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLookupRaz: TFLookupRaz;

implementation

//uses d_m;
{$R *.dfm}

procedure TFLookupRaz.BitBtn1Click(Sender: TObject);
begin
  if not IBQuery.IsEmpty then
    ModalResult:=50+IBQuery.FieldByName('RAZDEL_ID').AsInteger;
end;

procedure TFLookupRaz.BitBtn2Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TFLookupRaz.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then BitBtn1Click(Sender);
  if Key=VK_ESCAPE then BitBtn2Click(Sender);
end;

procedure TFLookupRaz.FormCreate(Sender: TObject);
begin
  IBQuery.FetchAll;
end;

procedure TFLookupRaz.FormShow(Sender: TObject);
begin
  if IBQuery.RecordCount > 10 then
    FindDlgEh1.ShowFilterPanel := True
  else
    FindDlgEh1.ShowFilterPanel := False;
  FindDlgEh1.SimpleSeek := true;  
  if FLookupRaz.Width < 210 then
  begin
    BitBtn1.Visible := False;
    BitBtn2.Visible := False;
    Panel2.Visible := False;
  end
  else
  begin
    BitBtn1.Visible := true;
    BitBtn2.Visible := true;
    Panel2.Visible := true;
  end;
  DBGridEh1.SetFocus;
end;

end.