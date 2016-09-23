unit DrugRashList;

interface

uses DrugLoadDM, DrugReportEdit, DBDM,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGridEh, ExtCtrls;

type
  TFDrugRashList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    ds_texGur: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    drugEdit : TDrugReportEdit;
    db : TdDM;
    m_strukId, m_month, m_year, m_ksmId, m_ksmIdPrep, m_keiId : integer;
    m_nmat : string;

  public
    property strukId : integer read m_strukId write m_strukId;
    property month : integer read m_month write m_month;
    property year : integer read m_year write m_year;
    property ksmId : integer read m_ksmId write m_ksmId;
    property ksmIdPrep : integer read m_ksmIdPrep write m_ksmIdPrep;
    property keiId : integer read m_keiId write m_keiId;
    property nmat : string read m_nmat write m_nmat;
  end;

implementation

{$R *.dfm}

procedure TFDrugRashList.FormShow(Sender: TObject);
begin
  if (drugEdit = nil) then
        drugEdit := TDrugReportEdit.Create(db, m_strukId);
  drugEdit.loadTexGurLoad(false, m_month, m_year, m_ksmIdPrep, m_keiId, m_ksmId, m_nmat, '');
  ds_texGur.DataSet := drugEdit.texGurLoad;
end;

end.
