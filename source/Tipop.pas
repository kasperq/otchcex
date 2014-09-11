unit TipOp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, Grids, DBGridEh, Buttons, ExtCtrls;

type
  TFTipOp = class(TForm)
    DBGridEh4: TDBGridEh;
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
    { Public declarations }
  end;

var
  FTipOp: TFTipOp;

implementation

uses dm;

{$R *.dfm}

procedure TFTipOp.FormActivate(Sender: TObject);
begin
DM1.TipDok.Active :=False;
DM1.TipDok.MacroByName('stip').AsString:=vGr_Op_Id;
dm1.TipDok.Active:=true;
s_nam_Tip_Op:='';
end;

procedure TFTipOp.SpeedButton1Click(Sender: TObject);
begin
ModalResult:= Dm1.TipDokTip_op_id.AsInteger+50;
s_nam_Tip_Op:=Dm1.TipDokNam_op.Asstring;

end;

procedure TFTipOp.SpeedButton2Click(Sender: TObject);
begin
 ModalResult := mrCancel;
 close;
end;

end.
