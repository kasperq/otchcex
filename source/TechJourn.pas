unit TechJourn;

interface

uses TechJournPrep, dm,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls;

type
  TFTechJourn = class(TForm)
    pc_techJourn: TPageControl;
    sheet_prep: TTabSheet;
    procedure pc_techJournChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    var
      techJ : TFTechJournPrep;
  public
    { Public declarations }
    curStrukId : integer;
    curMonth, curYear : integer;
  end;

var
  FTechJourn: TFTechJourn;



implementation

{$R *.dfm}

procedure TFTechJourn.FormCreate(Sender: TObject);
begin
  curStrukId := vStruk_Id;
end;

procedure TFTechJourn.FormShow(Sender: TObject);
begin
  curMonth := MES_conf;
  curYear := GOD_conf;
  if (techJ = nil) then
  begin
    techJ := TFTechJournPrep.Create(Application);
    techJ.Parent := sheet_prep;
    techJ.Align := alClient;
    techJ.Visible := true;
  end;
  techJ.Show;
end;

procedure TFTechJourn.pc_techJournChange(Sender: TObject);
begin
  if (pc_techJourn.ActivePageIndex = 0) then
    techJ.Show;
//  if (pc_techJourn.ActivePageIndex = 1) then
//    GotPrVipusk.loadVipuskTbls;
end;

end.
