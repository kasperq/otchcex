unit vybprep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGridEh, kbmMemTable, FindDlgEh;

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
    mem_vipusk: TkbmMemTable;
    mem_vipuskSTRUK_ID: TSmallintField;
    mem_vipuskKSM_ID: TIntegerField;
    mem_vipuskKOD_PROD: TStringField;
    mem_vipuskKOL_PRIH: TFloatField;
    mem_vipuskNMAT: TStringField;
    mem_vipuskXARKT: TStringField;
    mem_vipuskNEIS: TStringField;
    mem_vipuskGOST: TStringField;
    mem_vipuskNAMORG: TStringField;
    mem_vipuskNAMREG: TStringField;
    FindDlgEh1: TFindDlgEh;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure FormCreate(Sender: TObject);
  private
    var
      nmatSort, kodProdSort : integer;   // 0 - ascending; 1 - descending; -1 - no sort

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

procedure TFVybPrep.DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  if (Column.FieldName = 'NMAT') then
  begin
    kodProdSort := -1;
    if (nmatSort = -1) or (nmatSort = 0) then
    begin
      nmatSort := 1;
      mem_vipusk.SortOn('NMAT', [mtcoDescending]);
    end
    else
    begin
      nmatSort := 0;
      mem_vipusk.SortOn('NMAT', []);
    end;
  end;
  if (Column.FieldName = 'KOD_PROD') then
  begin
    nmatSort := -1;
    if (kodProdSort = -1) or (kodProdSort = 0) then
    begin
      kodProdSort := 1;
      mem_vipusk.SortOn('KOD_PROD', [mtcoDescending]);
    end
    else
    begin
      kodProdSort := 0;
      mem_vipusk.SortOn('KOD_PROD', []);
    end;
  end;

end;

procedure TFVybPrep.FormCreate(Sender: TObject);
begin
  nmatSort := -1;
end;

procedure TFVybPrep.FormShow(Sender: TObject);
begin
  vprep.Close;
  vprep.ParamByName('dat1').AsDateTime := strtodate(s_dat1);
  vprep.ParamByName('dat2').AsDateTime := strtodate(s_dat2);
  vprep.ParamByName('struk').AsInteger := vStruk_id;
  vprep.Open;
  mem_vipusk.EmptyTable;
  mem_vipusk.Open;
  mem_vipusk.LoadFromDataSet(vprep, [mtcpoAppend]);
end;

end.
