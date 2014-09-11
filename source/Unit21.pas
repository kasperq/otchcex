unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrlsEh, StdCtrls, Mask, DBCtrls, dbcgrids, DB,
  IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, IBQuery, RxIBQuery, Grids,
  DBGrids;

type
  TF1 = class(TForm)
    DSCeh_marsh1: TDataSource;
    DBGrid1: TDBGrid;
    Ceh_marsh1: TIBQuery;
    Ceh_marsh1MARSH_ID: TSmallintField;
    Ceh_marsh1KSM_IDOV: TSmallintField;
    Ceh_marsh1SERIA_IDOV: TSmallintField;
    Ceh_marsh1ZAG_OV: TFloatField;
    Ceh_marsh1VLAGA_OV: TFloatField;
    Ceh_marsh1AKTIV_OV: TFloatField;
    Ceh_marsh1KOEFPER1: TFloatField;
    Ceh_marsh1KOEFPER2: TFloatField;
    Ceh_marsh1KSM_DOB: TSmallintField;
    Ceh_marsh1KOL_DOB: TFloatField;
    Ceh_marsh1NMAT: TIBStringField;
    Ceh_marsh1XARKT: TIBStringField;
    Ceh_marsh1GOST: TIBStringField;
    Ceh_marsh1SERIA: TIBStringField;
    Ceh_marsh1NMAT_DOB: TIBStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F1: TF1;

implementation
   uses dm;
{$R *.dfm}

procedure TF1.FormShow(Sender: TObject);
begin
CEH_MARSH1.Active:=false;
 CEH_MARSH1.ParamByName('Kodp').AsInteger:=771;
// CEH_MARSH1.ParamByName('seria').AsDateTime:=5348;
 CEH_MARSH1.Active:=TRUE;
end;

end.
