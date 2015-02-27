unit vybprep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGridEh, IBUpdateSQL;

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
    vprepOTDEL: TIBStringField;
    vprepOTDEL_ID: TIntegerField;
    vprepSTROKA_ID: TIntegerField;
    upd_vprep: TIBUpdateSQL;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure vprepAfterOpen(DataSet: TDataSet);
  private
    procedure loadOtdelKartvVipuskRecord;

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
  if (vStruk_id = 540) then
    DBGridEh1.Columns[7].Visible := true
  else
    DBGridEh1.Columns[7].Visible := false;
  vprep.Close;
  vprep.ParamByName('dat1').AsDateTime := strtodate(s_dat1);
  vprep.ParamByName('dat2').AsDateTime := strtodate(s_dat2);
  vprep.ParamByName('struk').AsInteger := dm1.strukIdRela;
  vprep.ParamByName('klient_id').AsInteger := dm1.klientId;
  vprep.Open;
end;

procedure TFVybPrep.vprepAfterOpen(DataSet: TDataSet);
begin
  if (vStruk_id = 540) and (vprep.RecordCount > 0) then
  begin
    vprep.First;
    while (not vprep.Eof) do
    begin
      loadOtdelKartvVipuskRecord;
      vprep.Next;
    end;
    vprep.First;
    vprep.Prior;
  end;
end;

procedure TFVybPrep.loadOtdelKartvVipuskRecord;
begin
  dm1.openDocument(dm1.strukIdRela, 0, StrToDate(s_dat1), StrToDate(s_dat2));
  if (dm1.q_vipuskDoc.RecordCount > 0) then
  begin
    dm1.q_vipuskDoc.First;
    while (not dm1.q_vipuskDoc.Eof) do
    begin
      dm1.openKartv(dm1.q_vipuskDocDOC_ID.AsInteger, vprepKSM_ID.AsInteger);
      if (dm1.q_kartv.RecordCount > 0) then
      begin
        vprep.Edit;
        vprepOTDEL.AsString := dm1.q_vipuskDocKLIENT_STNAME.AsString;
        vprepOTDEL_ID.AsInteger := dm1.q_vipuskDocKLIENT_ID.AsInteger;
        vprep.Post;
        break;
      end;
      dm1.q_vipuskDoc.Next;
    end;
  end;
end;

end.
