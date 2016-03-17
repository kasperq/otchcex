unit Komp_TM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGridEh, ImgList, ComCtrls, ToolWin, ExtCtrls,Math,
  Menus, DB, RxMemDS;

type
  TFKompTM = class(TForm)
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label41: TLabel;
    Label46: TLabel;
    ToolBar1: TToolBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ToolButton2: TToolButton;
    ImageList2: TImageList;
    ToolButton3: TToolButton;
    DBGridEh3: TDBGridEh;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label40: TLabel;
    Label37: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    Label64: TLabel;
    Label66: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    Label17: TLabel;
    Edit2: TEdit;
    Label18: TLabel;
    Edit3: TEdit;
    Label20: TLabel;
    Edit4: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Edit5: TEdit;
    Label27: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    PopupMenu1: TPopupMenu;
    Label33: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKompTM: TFKompTM;

implementation
 uses dm,TexGur;
{$R *.dfm}

procedure TFKompTM.FormCreate(Sender: TObject);
begin
  FKompTM.Label2.Caption:='';
  FKompTM.Label3.Caption:='';
  FKompTM.Label5.Caption:='';
  FKompTM.Label6.Caption:='';
  FKompTM.Label7.Caption:='';
  FKompTM.Label8.Caption:='';
  FKompTM.Label9.Caption:='';
  FKompTM.Label24.Caption:='';
  FKompTM.Label9.Caption:='';
  FKompTM.Label15.Caption:='';
  FKompTM.Label14.Caption:='';
  FKompTM.Label13.Caption:='';
  FKompTM.Label30.Caption:='';
end;

procedure TFKompTM.FormShow(Sender: TObject);
begin
// Label8.Caption:=FTexgur.edit10.Text;
// Label5.Caption:=FTexgur.edit3.Text;
// Label24.Caption:=FTexgur.edit11.Text;
// Label6.Caption:=FTexgur.edit13.Text;
// Label7.Caption:=FTexgur.edit12.Text;
 Label33.Caption:=FTexgur.edit9.Text;
// Label9.Caption:=FTexgur.edit16.Text;
// Label14.Caption:=FTexgur.DbeditEh3.Text;
// Label15.Caption:=FTexgur.Label6.Caption;
// Label3.Caption:=FTexgur.Dbedit5.Text;
 Label2.Caption:=FTexgur.edit1.Text;
 Label3.Caption:=FTexgur.edit2.Text;
 Label19.Caption:=FTexgur.label19.Caption;
// Label21.Caption:=FTexgur.edit14.Text;
 Label30.Caption:=floattostr(SimpleRoundTo(strtofloat(Label21.Caption)*100/(100-strtofloat(Label13.Caption)),-2));
// if FTexgur.CEH_MARSH.Active=false then
//  begin
//   FTexgur.CEH_MARSH.ParamByName('Kodp').AsInteger:=S_KODP;
//   FTexgur.CEH_MARSH.ParamByName('seria').AsInteger:=vseria_id;
//   FTexgur.CEH_MARSH.Active:=TRUE;
//  end;
//  FTexgur.ceh_marsh.First;
end;

end.
