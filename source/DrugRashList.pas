unit DrugRashList;

interface

uses DrugLoadDM, DrugReportEdit, DBDM, OstSyr, SeriaOstatki,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGridEh, ExtCtrls, Buttons;

type
  TFDrugRashList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    grid_zagr: TDBGridEh;
    ds_texGur: TDataSource;
    btn_insertRec: TSpeedButton;
    btn_delRecord: TSpeedButton;
    btn_save: TSpeedButton;
    btn_syrInfo: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure grid_zagrEditButtonClick(Sender: TObject);
    procedure btn_insertRecClick(Sender: TObject);
    procedure btn_delRecordClick(Sender: TObject);
    procedure btn_syrInfoClick(Sender: TObject);
    procedure grid_zagrDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure grid_zagrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_saveClick(Sender: TObject);
  private
    drugEdit : TDrugReportEdit;
    serOstDrug : TSeriaOstatki;

    m_db : TdDM;
    m_strukId, m_month, m_year, m_ksmId, m_ksmIdPrep, m_keiId, m_razdelId, m_kraz,
    m_keiIdSyr : integer;
    m_nmat : string;

    procedure chooseSeria;



  public
    property strukId : integer read m_strukId write m_strukId;
    property month : integer read m_month write m_month;
    property year : integer read m_year write m_year;
    property ksmId : integer read m_ksmId write m_ksmId;
    property ksmIdDrug : integer read m_ksmIdPrep write m_ksmIdPrep;
    property keiId : integer read m_keiId write m_keiId;
    property razdelId : integer read m_razdelId write m_razdelId;
    property kraz : integer read m_kraz write m_kraz;
    property keiIdSyr : integer read m_keiIdSyr write m_keiIdSyr;
    property drugNmat : string read m_nmat write m_nmat;

//    property db : TdDM read m_db write m_db;
    procedure setDB(var db : TdDM; strukId : integer);
  end;

implementation

{$R *.dfm}

procedure TFDrugRashList.grid_zagrDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (drugEdit <> nil) and (drugEdit.texGurLoad.RecordCount > 0) then
  begin
    if ((drugEdit.texGurLoad.fieldbyname('KOL_RASH_EDIZ').AsFloat = 0) and (Column.FieldName = 'KOL_RASH_EDIZ'))
       or ((drugEdit.texGurLoad.fieldbyname('ZAG_PERIOD').AsFloat = 0) and (Column.FieldName = 'ZAG_PERIOD')) then
      grid_zagr.Canvas.Font.Style := [fsItalic];
    if (drugEdit.texGurLoad.fieldbyname('DELETE').AsBoolean = true) then
    begin
      if (drugEdit.texGurLoad.fieldbyname('ADD').AsBoolean = true) then
        grid_zagr.Canvas.Brush.Color := clYellow
      else
        grid_zagr.Canvas.Brush.Color := clRed;
    end;

    if (drugEdit.texGurLoad.fieldbyname('ADD').AsBoolean = true) then
    begin
      if (drugEdit.texGurLoad.fieldbyname('DELETE').AsBoolean = true) then
        grid_zagr.Canvas.Brush.Color := clYellow
      else
        grid_zagr.Canvas.Brush.Color := clMoneyGreen;
    end;
  end;
  grid_zagr.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFDrugRashList.grid_zagrEditButtonClick(Sender: TObject);
begin
  if (grid_zagr.SelectedField.FieldName= 'NEIS') then
  begin
    drugEdit.changeKeiIdGUI;
  end;
  if (grid_zagr.SelectedField.FieldName = 'KSM_ID') then
  begin
    drugEdit.changeKsmIdGUI;
  end;
  if (grid_zagr.SelectedField.FieldName = 'KRAZ') then
  begin
    drugEdit.changeRazdelGUI;
  end;
  if (grid_zagr.SelectedField.FieldName = 'SERIA') then
  begin
    chooseSeria;
  end;
end;

procedure TFDrugRashList.grid_zagrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) and (grid_zagr.SelectedField.FieldName = 'SERIA') then
  begin
    if (serOstDrug = nil) then
      serOstDrug := TSeriaOstatki.Create(m_db);
    if (serOstDrug.openSeria(self.ksmIdDrug, drugEdit.texGurLoad.FieldByName('seria').AsString)) then
    begin
      drugEdit.changeSeria(serOstDrug.seria, serOstDrug.seriaId);
    end
    else
      serOstDrug.insertSeria(self.ksmIdDrug, drugEdit.texGurLoad.FieldByName('seria').AsString);
  end;
end;

procedure TFDrugRashList.btn_delRecordClick(Sender: TObject);
begin
  drugEdit.delTexGurLoadLine;
  grid_zagr.Columns[4].Footer.Value := FloatToStr(drugEdit.getKolRashSum());
end;

procedure TFDrugRashList.btn_insertRecClick(Sender: TObject);
begin
  drugEdit.addTexGurLoadLine;
  grid_zagr.Columns[4].Footer.Value := FloatToStr(drugEdit.getKolRashSum());
end;

procedure TFDrugRashList.btn_saveClick(Sender: TObject);
begin
  if (serOstDrug <> nil) then
  begin
    if (serOstDrug.dateLoad > 0) then
      serOstDrug.setDateZagAndKolSeria(drugEdit.texGurLoad.FieldByName('date_dok').AsDateTime,
                                       0);
    serOstDrug.saveSeria;
  end;
  drugEdit.saveTexGurLoad();
end;

procedure TFDrugRashList.btn_syrInfoClick(Sender: TObject);
begin
  if (FOstSyr = nil) then
    FOstSyr := TFOstSyr.Create(Application);
  FOstSyr.ksmId := drugEdit.texGurLoad.FieldByName('Ksm_id').AsInteger;
  FOstSyr.DateEdit3.Date := drugEdit.dateBegin;
  FOstSyr.DateEdit4.Date := drugEdit.dateEnd;
  FOstSyr.ShowModal;
end;

procedure TFDrugRashList.chooseSeria;
begin
  if (serOstDrug = nil) then
      serOstDrug := TSeriaOstatki.Create(m_db);
  if (serOstDrug.openSeria(Self.ksmIdDrug, '')) then
  begin
    if (serOstDrug.showViborSeria(grid_zagr.InplaceEditor)) then
    begin
      drugEdit.changeSeria(serOstDrug.seria, serOstDrug.seriaId);
    end;
  end
  else
    MessageDlg('Нет серий заданного препарата!', mtWarning, [mbOK], 0);
end;

procedure TFDrugRashList.FormShow(Sender: TObject);
begin
  if (drugEdit = nil) then
        drugEdit := TDrugReportEdit.Create(m_db, m_strukId);
  drugEdit.loadTexGurLoad(false, m_month, m_year, m_ksmIdPrep, m_keiId, m_ksmId,
                          m_razdelId, m_kraz, m_keiIdSyr, m_nmat, '');
  ds_texGur.DataSet := drugEdit.texGurLoad;
  grid_zagr.Columns[4].Footer.Value := FloatToStr(drugEdit.getKolRashSum());
end;

procedure TFDrugRashList.setDB(var db: TdDM; strukId : integer);
begin
  m_strukId := strukId;
  if (drugEdit = nil) then
    drugEdit := TDrugReportEdit.Create(db, m_strukId);
  m_db := db;
end;

end.
