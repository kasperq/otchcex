unit ViborPerioda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit;

type
  TFViborPerioda = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FViborPerioda: TFViborPerioda;

implementation

uses dm,prixcex;

{$R *.dfm}

procedure TFViborPerioda.FormShow(Sender: TObject);
begin
DateEdit1.Date:=strtodate(s_dat1);
DateEdit2.Date:=strtodate(s_dat2);
end;

procedure TFViborPerioda.FormClose(Sender: TObject;
  var Action: TCloseAction);

begin
s_dat1_period:=datetostr(DateEdit1.Date);
s_dat2_period:=datetostr(DateEdit2.Date);
Usl_Dat:=' Document.Date_doK between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
{DM1.PrixRasx.Active := False;
DM1.PrixRasx.MacroByName('SDAT').AsString:= Usl_DAT;
DM1.PrixRasx.MacroByName('STIP').AsString:= Usl_TIP;
DM1.PrixRasx.MacroByName('CEX').AsString:= Usl_Struk;
DM1.PrixRasx.MacroByName('SORT').AsString:= Usl_SORT;
DM1.PrixRasx.MacroByName('GR_OP').AsString:= Usl_GROP;
DM1.PrixRasx.Active := True; }
end;

end.
