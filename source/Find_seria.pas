unit Find_seria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,dm, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TFFind_Seria = class(TForm)
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFind_Seria: TFFind_Seria;

implementation

{$R *.dfm}

procedure TFFind_Seria.BitBtn4Click(Sender: TObject);
begin
ModalResult:=DM1.SeriaSERIA_ID.AsInteger+50;
end;

procedure TFFind_Seria.BitBtn3Click(Sender: TObject);
begin
close;
end;

end.
