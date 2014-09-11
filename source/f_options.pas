unit f_options;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, Buttons, Mask, DBCtrls, DB, ExtCtrls,DateUtils;

type
  TFOptions = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOptions: TFOptions;

implementation

uses dm, glmenu;
{$R *.dfm}

procedure TFOptions.DBGridEh1DblClick(Sender: TObject);
begin
  if (DM1.ConfigUMC.State = dsEdit) or (DM1.ConfigUMC.State = dsInsert) then DM1.ConfigUMC.Post;
   MES:=DM1.ConfigUMCMES.AsInteger;
   GOD:=DM1.ConfigUMCGOD.AsInteger;
   vStruk_id:=DM1.ConfigUMCStruk_id.AsInteger;
   Close;
   DM1.IBQuery1.Close;
   DM1.IBQuery1.SQL.Text:='SELECT STKOD FROM Struk WHERE STRUK_ID = '+IntToStr(VSTRUK_ID);
   DM1.IBQuery1.Open;
   S_STKOD:=DM1.IBQuery1.fieldByName('STKOD').AsString;
end;

procedure TFOptions.FormShow(Sender: TObject);
begin
  DM1.ConfigUMC.Edit;
end;

end.
