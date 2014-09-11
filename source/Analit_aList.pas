unit Analit_aList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Grids, DBGridEh;

type
  TFAnalit_List = class(TForm)
    DBGridEh3: TDBGridEh;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnalit_List: TFAnalit_List;

implementation
  uses dm;
{$R *.dfm}

procedure TFAnalit_List.SpeedButton2Click(Sender: TObject);
begin
ModalResult := mrCancel;
close;
end;

end.
