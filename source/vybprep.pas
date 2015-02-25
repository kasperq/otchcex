unit vybprep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGridEh;

type
  TFVybPrep = class(TForm)
    vprep: TIBQuery;
    DSvprep: TDataSource;
    vprepKOL_PRIH: TFMTBCDField;
    vprepNMAT: TIBStringField;
    vprepXARKT: TIBStringField;
    vprepKOD_PROD: TIBStringField;
    vprepSTRUK_ID: TSmallintField;
    vprepKSM_ID: TIntegerField;
    vprepNEIS: TIBStringField;
    vprepGOST: TIBStringField;
    vprepNAMORG: TIBStringField;
    vprepNAMREG: TIBStringField;
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVybPrep: TFVybPrep;

implementation

uses dm;
{$R *.dfm}

procedure TFVybPrep.DBGridEh1DblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFVybPrep.FormShow(Sender: TObject);
begin
  vprep.Close;
  vprep.ParamByName('dat1').AsDateTime := strtodate(s_dat1);
  vprep.ParamByName('dat2').AsDateTime := strtodate(s_dat2);
  vprep.ParamByName('struk').AsInteger := dm1.strukIdRela;
  vprep.ParamByName('klient_id').AsInteger := dm1.klientId;
  vprep.Open;
end;

end.
