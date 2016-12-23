unit ReportRash;

interface

uses DrugReportEdit, Referance, SeriaOstatki, DBDM, dm, OstSyr, VybPrep,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, StdCtrls, Buttons, ExtCtrls, Grids, DBGridEh, DB,
  IBCustomDataSet, IBQuery, RxIBQuery, kbmMemTable, FindDlgEh, rxStrUtils, VCLUtils,
  DBCtrlsEh;

type
  TFReportRash = class(TForm)
    grid_otchet: TDBGridEh;
    grid_zagr: TDBGridEh;
    Panel2: TPanel;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label41: TLabel;
    Label46: TLabel;
    SpeedButton1: TSpeedButton;
    Label56: TLabel;
    Label57: TLabel;
    Label61: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label22: TLabel;
    Label59: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    SpeedButton2: TSpeedButton;
    btn_setDateLoad: TSpeedButton;
    btn_loadSeria: TSpeedButton;
    edit_kodProd: TEdit;
    edit_seria: TEdit;
    DateEdit1: TDateEdit;
    GroupBox3: TGroupBox;
    Label68: TLabel;
    Label26: TLabel;
    Label70: TLabel;
    Label34: TLabel;
    Label75: TLabel;
    Label21: TLabel;
    Label7: TLabel;
    Label45: TLabel;
    Label38: TLabel;
    edit_kolSeria: TEdit;
    Panel4: TPanel;
    btn_vipuskList1: TSpeedButton;
    btn_syrInfo: TSpeedButton;
    btn_save: TSpeedButton;
    btn_insertRec: TSpeedButton;
    btn_delRecord: TSpeedButton;
    btn_delAllRecs: TSpeedButton;
    btn_allDrugLoad: TSpeedButton;
    Splitter5: TSplitter;
    FindDlgEh1: TFindDlgEh;
    mem_texGur: TkbmMemTable;
    mem_texGurKART_ID: TIntegerField;
    mem_texGurKEI_ID_KART: TIntegerField;
    mem_texGurKEI_ID_NORM: TIntegerField;
    mem_texGurKEI_ID_OST_PREP: TIntegerField;
    mem_texGurKEI_ID_OST_CEX: TIntegerField;
    mem_texGurRAZDEL_ID: TIntegerField;
    mem_texGurKSM_ID: TIntegerField;
    mem_texGurSTROKA_ID: TIntegerField;
    mem_texGurSERIA_ID: TIntegerField;
    mem_texGurDOC_ID: TIntegerField;
    mem_texGurDATE_DOK: TDateField;
    mem_texGurNEIS: TStringField;
    mem_texGurNDOK: TStringField;
    mem_texGurNMAT: TStringField;
    mem_texGurKOL_RASH_EDIZ: TFloatField;
    mem_texGurPLNORM: TFloatField;
    mem_texGurOSTATOK_END_S: TFloatField;
    mem_texGurOSTATOK_END_NZ: TFloatField;
    mem_texGurOSTATOK_END_S_CEX: TFloatField;
    mem_texGurKRAZ: TIntegerField;
    mem_texGurZAG_ALL: TFloatField;
    mem_texGurDELETE: TBooleanField;
    mem_texGurADD: TBooleanField;
    mem_texGurOSTATOK_BEGIN_S: TFloatField;
    mem_texGurOSTATOK_BEGIN_NZ: TFloatField;
    mem_texGurPRIX: TFloatField;
    mem_texGurPEREDANO_PRIH_NZ: TFloatField;
    mem_texGurPRIX_PERIOD: TFloatField;
    mem_texGurZAG: TFloatField;
    mem_texGurZAG_PERIOD: TFloatField;
    mem_texGurRASH_VIRAB_PERIOD: TFloatField;
    mem_texGurPEREDANO_RASH_S: TFloatField;
    mem_texGurPEREDANO_RASH_NZ: TFloatField;
    mem_texGurCHANGED: TBooleanField;
    mem_texGurXARKT: TStringField;
    mem_texGurGOST: TStringField;
    mem_texGurKSM_ID_PREP: TIntegerField;
    mem_texGurOLD_DATE_DOK: TDateField;
    mem_texGurTIP_OP_ID: TIntegerField;
    mem_texGurTIP_DOK_ID: TIntegerField;
    mem_texGurSERIA: TStringField;
    mem_texGurOLD_SERIA_ID: TIntegerField;
    mem_texGurOLD_SERIA: TStringField;
    mem_texGurUSER_NAME: TStringField;
    ds_texGur: TDataSource;
    q_utPlan: TRxIBQuery;
    q_utPlanGOD: TIntegerField;
    q_utPlanMES: TSmallintField;
    q_utPlanSPROD_ID: TIntegerField;
    q_utPlanDOL_RB: TSmallintField;
    q_utPlanDOL_EXP: TSmallintField;
    q_utPlanPLAN: TIBBCDField;
    q_utPlanCENA: TIBBCDField;
    q_ozhidVipusk: TRxIBQuery;
    q_ozhidVipuskKOL_PRIH: TFMTBCDField;
    q_sdano: TRxIBQuery;
    q_sdanoSDANO: TFMTBCDField;
    mem_texGurKOL_RASH_VIRAB: TFloatField;
    mem_texGurDATE_DOK_RASH: TDateField;
    mem_texGurSTROKA_ID_RASH: TIntegerField;
    mem_texGurKOL_PRIH: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_allDrugLoadClick(Sender: TObject);
    procedure btn_vipuskList1Click(Sender: TObject);
    procedure btn_syrInfoClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_insertRecClick(Sender: TObject);
    procedure btn_delRecordClick(Sender: TObject);
    procedure btn_delAllRecsClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edit_kodProdChange(Sender: TObject);
    procedure edit_kodProdClick(Sender: TObject);
    procedure edit_kodProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_seriaClick(Sender: TObject);
    procedure edit_seriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_loadSeriaClick(Sender: TObject);
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_setDateLoadClick(Sender: TObject);
    procedure edit_kolSeriaClick(Sender: TObject);
    procedure grid_zagrDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure grid_zagrEditButtonClick(Sender: TObject);

  private
    drugEdit : TDrugReportEdit;
    refer : TReferance;
    serOstDrug : TSeriaOstatki;
    dm : TdDM;

    m_stateDrugLoad : boolean;

    procedure loadPrepInfo(kodProd : string);
    procedure setDateLoad;
    procedure acceptAndLoadSeria;
    procedure loadUsualLoad;
    procedure showButtonsInRashCol(show : boolean);
    procedure loadFullDrugLoad;

    procedure initUI(isSeria, isNotFull : boolean);
    procedure initStateLoadUI(value : boolean);

  public
    procedure enterNewSeria(var dm :TdDM; prepNmat, kodProd : string; year, month,
                            ksmIdPrep, strukId : integer);
    procedure loadDrugLoadSeria(var dm :TdDM; seria, prepNmat, kodProd : string; year,
                                month, ksmIdPrep, strukId : integer);
    procedure loadDrugLoadFull(var dm :TdDM; prepNmat, kodProd: string; year, month,
                               ksmIdPrep, strukId: integer);
    procedure initToolButtons;
    procedure setDataModule(var dm : TdDM);

    property stateDrugLoad : boolean read m_stateDrugLoad write initStateLoadUI;
    property dataM : TdDM read dm;
  end;

implementation

{$R *.dfm}

procedure TFReportRash.loadUsualLoad;
begin
  if (refer <> nil) and (refer.spprod.FieldByName('ksm_id').AsInteger <> 0) then
  begin
    loadPrepInfo(refer.spprod.FieldByName('kod_prod').AsString);
    s_seria := '';
    s_ksm := s_kodp;

    showButtonsInRashCol(false);

    vSeria_id := 0;
    s_seria := '';
    s_kol_seria := 0;
    edit_kolSeria.Text := '0';
    edit_seria.Text := '';

    if (drugEdit = nil) then
        drugEdit := TDrugReportEdit.Create(dm, vStruk_Id, m_stateDrugLoad);
    drugEdit.loadDrugUsual(mes, god, refer.spprod.FieldByName('ksm_id').AsInteger,
                           refer.spprod.FieldByName('kei_id').AsInteger, 0,
                           refer.spprod.FieldByName('nmat').AsString, true);
//    drugEdit.loadDrugLoadUsual(mes, god, refer.spprod.FieldByName('ksm_id').AsInteger,
//                               refer.spprod.FieldByName('kei_id').AsInteger, 0,
//                               refer.spprod.FieldByName('nmat').AsString);

    ds_texGur.DataSet := drugEdit.texGurLoad;

    initUI(true, true);
  end;
end;

procedure TFReportRash.acceptAndLoadSeria;
begin
  if (refer <> nil) and (refer.spprod.FieldByName('ksm_id').AsInteger <> 0)
     and (edit_seria.text <> '') then
  begin
    loadPrepInfo(refer.spprod.FieldByName('kod_prod').AsString);
    s_seria := edit_seria.Text;
    s_ksm := s_kodp;

    showButtonsInRashCol(false);

    if (serOstDrug = nil) then
      serOstDrug := TSeriaOstatki.Create(dm);
    if (serOstDrug.openSeria(refer.spprod.FieldByName('ksm_id').AsInteger, s_seria)) then
    begin
      vSeria_id := serOstDrug.seriaId;
      s_seria := serOstDrug.seria;
      s_kol_seria := serOstDrug.kolSeria;
      edit_kolSeria.Text := FloatToStr(serOstDrug.kolSeria);
      edit_seria.Text := serOstDrug.seria;
    end
    else
      serOstDrug.insertSeria(refer.spprod.FieldByName('ksm_id').AsInteger, s_seria);
    serOstDrug.setFormaVipusk(refer.spprod.FieldByName('NAMEFV').AsString);
    if (drugEdit = nil) then
      drugEdit := TDrugReportEdit.Create(dm, vStruk_Id, m_stateDrugLoad);
//    drugEdit.loadDrugLoadSeria(mes, god, refer.spprod.FieldByName('ksm_id').AsInteger,
    drugEdit.loadDrugSeria(mes, god, refer.spprod.FieldByName('ksm_id').AsInteger,
                           refer.spprod.FieldByName('kei_id').AsInteger, 0,
                           serOstDrug.seriaId,
                           refer.spprod.FieldByName('nmat').AsString, s_seria, true);
    ds_texGur.DataSet := drugEdit.texGurLoad;
//    ds_texGurCons.DataSet := drugEdit.texGurCons;
    if (serOstDrug.dateLoad <> 0) then
    begin
      DateEdit1.Date := serOstDrug.dateLoad;
    end
    else
    begin
      dateEdit1.Date := StrToDate(s_dat2_period);
      DateEdit1.ReadOnly := false;
//      DateEdit1.SetFocus;
    end;

    initUI(true, false);
  end;
end;

procedure TFReportRash.btn_allDrugLoadClick(Sender: TObject);
begin
  loadPrepInfo(refer.spprod.FieldByName('kod_PROD').Asstring);
  s_seria := '';
  edit_seria.text := s_seria;
  loadFullDrugLoad
end;

procedure TFReportRash.btn_delAllRecsClick(Sender: TObject);
begin
  drugEdit.delTexGurLoadAllLines;
end;

procedure TFReportRash.btn_delRecordClick(Sender: TObject);
begin
  drugEdit.delTexGurLoadLine;
end;

procedure TFReportRash.btn_insertRecClick(Sender: TObject);
begin
  drugEdit.addTexGurLoadLine;
end;

procedure TFReportRash.btn_saveClick(Sender: TObject);
begin
  if (edit_kolSeria.Text = '') then
    edit_kolSeria.Text := '0';
  if (serOstDrug <> nil) then
  begin
    serOstDrug.setDateZagAndKolSeria(dateEdit1.Date, StrToFloat(edit_kolSeria.Text));
    serOstDrug.saveSeria;
  end;
  drugEdit.saveTexGurLoad();
end;

procedure TFReportRash.btn_syrInfoClick(Sender: TObject);
begin
  S_ksm := drugEdit.texGurLoad.FieldByName('Ksm_id').AsInteger;
  if (FOstSyr = nil) then
    FOstSyr := TFOstSyr.Create(Application);
  FOstSyr.DateEdit3.Date := strtodate(s_dat1);
  FOstSyr.DateEdit4.Date := strtodate(s_dat2);
  FOstSyr.ShowModal;
end;

procedure TFReportRash.btn_vipuskList1Click(Sender: TObject);
begin
  if (FVybPrep = nil) then
    FVybprep := TfVybPrep.Create(Application);
  FVybPrep.ShowModal;
  if (FVybPrep.ModalResult = mrOk) then
  begin
    s_kodp := FVybPrep.mem_vipuskKsm_id.AsInteger;
    loadPrepInfo(FVybPrep.mem_vipuskKOD_PROD.AsString);
  end;
end;

procedure TFReportRash.DateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
    setDateLoad;
end;

procedure TFReportRash.edit_kodProdChange(Sender: TObject);
begin
  if (edit_kodProd.text <> '') then
  begin
    skod := replacestr(edit_kodProd.text,',','.')+'%';
    if (refer = nil) then
      refer := TReferance.Create(dm);
    if (refer.findDrug(skod, vStruk_Id)) then
    begin
      Label19.Caption := refer.spprod.FieldByName('kod_PROD').Asstring
                         + refer.spprod.FieldByName('nmat').AsString;
      Label11.Caption := refer.spprod.FieldByName('Xarkt').AsString;
      Label3.Caption := refer.spprod.FieldByName('Nam_reg').AsString;
    end
    else
    begin
      Label19.Caption := '';
      Label11.Caption := '';
      Label3.Caption := '';
    end;
    Label19.Refresh;
    Label11.Refresh;
  end;
end;

procedure TFReportRash.edit_kodProdClick(Sender: TObject);
begin
  edit_kodProd.text := '';
  edit_seria.text := '';
end;

procedure TFReportRash.edit_kodProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    StartWait;
    if (edit_kodProd.text <> '') and (refer.spprod.RecordCount > 0) then
    begin
      edit_kolSeria.text := '0';
      edit_kodProd.OnChange := nil;
      edit_kodProd.text := refer.spprod.FieldByName('kod_PROD').Asstring;
      edit_kodProd.OnChange := edit_kodProdChange;
      loadPrepInfo(refer.spprod.FieldByName('kod_PROD').Asstring);
    end;
    StopWait;
  end;
end;

procedure TFReportRash.edit_kolSeriaClick(Sender: TObject);
begin
  edit_kolSeria.Text := ''
end;

procedure TFReportRash.edit_seriaClick(Sender: TObject);
begin
  if (edit_kodProd.text <> '') and (refer.spprod.RecordCount > 0) then
  begin
    edit_kolSeria.text := '0';
    edit_kodProd.OnChange := nil;
    edit_kodProd.text := refer.spprod.FieldByName('kod_PROD').Asstring;
    edit_kodProd.OnChange := edit_kodProdChange;
    loadPrepInfo(refer.spprod.FieldByName('kod_PROD').Asstring);
  end;
  edit_seria.text := '';
  edit_kolSeria.text := '0';
end;

procedure TFReportRash.edit_seriaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    acceptAndLoadSeria;
  end;
//  else
//  begin
//    if (not btn_loadSeria.Visible) then
//      btn_loadSeria.Visible := true;
//  end;

end;

procedure TFReportRash.enterNewSeria(var dm: TdDM; prepNmat, kodProd: string;
  year, month, ksmIdPrep, strukId: integer);
begin
  self.dm := dm;
  loadPrepInfo(kodProd);
  edit_seria.text := '';
  initUI(true, false);
  drugEdit.clearGrid;
  if (edit_seria.Visible) and (edit_seria.Enabled) then  
    edit_seria.SetFocus;
end;

procedure TFReportRash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mem_texGur.EmptyTable;
  mem_texGur.Close;

  FreeAndNil(drugEdit);
  FreeAndNil(serOstDrug);
  FreeAndNil(refer);
  FreeAndNil(dm);
end;

procedure TFReportRash.FormDestroy(Sender: TObject);
begin
  FreeAndNil(drugEdit);
end;

procedure TFReportRash.FormShow(Sender: TObject);
begin
  if (s_kodp <> 0) then
  begin
    if (refer = nil) then
      refer := TReferance.Create(dm);
    if (refer.findDrug(s_kodp)) then
      loadPrepInfo(refer.spprod.FieldByName('kod_prod').AsString)
    else
    begin
      label19.Caption := '';
      label3.Caption := '';
      label11.Caption := '';
      label29.Caption := '';
      label21.Caption := '';
      label22.Caption := '';
      label26.Caption := '';
      label34.Caption := '';
  //   label36.Caption:='';
      label28.Caption := '';
      label45.Caption := '';
      DateEdit1.Date := date;
      edit_kodProd.Text := '';
  //   Edit17.Text:='';
      dateEdit1.visible := false;
      btn_setDateLoad.visible := false;
      btn_loadSeria.Visible := true;
      label56.Visible := false;
      label38.visible := false;
      edit_kolSeria.visible := false;
    end;
  end
  else
  begin
    label19.Caption := '';
    label3.Caption := '';
    label11.Caption := '';
    label29.Caption := '';
    label21.Caption := '';
    label22.Caption := '';
    label26.Caption := '';
    label34.Caption := '';
    //  label36.Caption:='';
    label28.Caption := '';
    label45.Caption := '';
    DateEdit1.Date := date;
    edit_kodProd.Text := '';
//  Edit17.Text:='';
    dateEdit1.visible := false;
    btn_setDateLoad.visible := false;
    btn_loadSeria.Visible := true;
    label56.Visible := false;
    label38.visible := false;
    edit_kolSeria.visible := false;
    edit_seria.Text := '';
    edit_kolSeria.Text := '0';
  end;
end;

procedure TFReportRash.grid_zagrDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (drugEdit <> nil) and (drugEdit.texGurLoad.RecordCount > 0) then
  begin
    if ((drugEdit.texGurLoad.FieldByName('OSTATOK_END_S').AsFloat < 0) and (column.FieldName = 'OSTATOK_END_S'))
       or ((drugEdit.texGurLoad.FieldByName('OSTATOK_END_NZ').AsFloat < 0) and (column.FieldName = 'OSTATOK_END_NZ'))
       or ((drugEdit.texGurLoad.FieldByName('OSTATOK_END_S_CEX').AsFloat < 0) and (column.FieldName = 'OSTATOK_END_S_CEX')) then
      grid_zagr.Canvas.Brush.Color := clYellow;
    if (drugEdit.texGurLoad.FieldByName('OSTATOK_END_S').AsFloat > 0) and (column.FieldName = 'OSTATOK_END_S')
       or ((drugEdit.texGurLoad.FieldByName('OSTATOK_END_NZ').AsFloat > 0) and (column.FieldName = 'OSTATOK_END_NZ'))
       or ((drugEdit.texGurLoad.FieldByName('OSTATOK_END_S_CEX').AsFloat > 0) and (column.FieldName = 'OSTATOK_END_S_CEX')) then
      grid_zagr.Canvas.Brush.Color := clMoneyGreen;
    if ((drugEdit.texGurLoad.fieldbyname('KOL_RASH_EDIZ').AsFloat = 0) and (Column.FieldName = 'KOL_RASH_EDIZ'))
       or ((drugEdit.texGurLoad.fieldbyname('ZAG_PERIOD').AsFloat = 0) and (Column.FieldName = 'ZAG_PERIOD'))
       or ((drugEdit.texGurLoad.FieldByName('KOL_RASH_VIRAB').AsFloat = 0) and (column.FieldName = 'KOL_RASH_VIRAB'))
       or ((drugEdit.texGurLoad.FieldByName('KOL_PRIH').AsFloat = 0) and (column.FieldName = 'KOL_PRIH')) then
    begin
      grid_zagr.Canvas.Font.Style := [fsItalic];
    end;
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

procedure TFReportRash.grid_zagrEditButtonClick(Sender: TObject);
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
  if (grid_zagr.SelectedField.FieldName = 'KOL_RASH_EDIZ') then
  begin
    drugEdit.showRashDetails;
    grid_zagr.SetFocus;
  end;
end;

procedure TFReportRash.initUI(isSeria, isNotFull : boolean);
begin
  btn_setDateLoad.visible := false;
  btn_loadSeria.Visible := true;
  grid_zagr.Columns[8].Visible := isSeria;
  grid_zagr.Columns[14].Visible := isSeria;
  grid_zagr.Columns[10].Visible := isSeria;
  if (isSeria) then
    grid_zagr.Color := clWindow
  else
    grid_zagr.Color := cl3DLight;
  if (isSeria) then
  begin
    dateEdit1.visible := not isNotFull;
    label56.Visible := not isNotFull;
    label38.visible := not isNotFull;
    edit_kolSeria.visible := not isNotFull;
  end
  else
  begin
    dateEdit1.visible := false;
    label56.Visible := false;
    label38.visible := false;
    edit_kolSeria.visible := false;
  end;
end;

procedure TFReportRash.initStateLoadUI(value : boolean);
begin
  m_stateDrugLoad := value;
  if (m_stateDrugLoad) then
  begin
    btn_allDrugLoad.Caption := 'Вся загр.';
    grid_zagr.Columns[7].Title.Caption := 'Загружено';
    grid_zagr.Columns[10].Visible := true;
    grid_zagr.Columns[11].Visible := false;
  end
  else
  begin
    btn_allDrugLoad.Caption := 'Весь расх.';
    grid_zagr.Columns[7].Title.Caption := 'Расход';
    grid_zagr.Columns[10].Visible := false;
    grid_zagr.Columns[11].Visible := true;
  end;
end;

procedure TFReportRash.initToolButtons;
begin
  if (MODE = 0) or (MODE = 1) then
  begin
    btn_insertRec.Enabled := True;
    btn_delRecord.Enabled := True;
    btn_delAllRecs.enabled := true;
    btn_save.Enabled := True;
  end;
  if (MODE = 2) then
  begin
    btn_insertRec.Enabled := False;
    btn_delRecord.Enabled := false;
    btn_delAllRecs.enabled := false;
    btn_save.Enabled := false;
  end;
end;

procedure TFReportRash.loadFullDrugLoad;
begin
  if (refer <> nil) and (refer.spprod.FieldByName('ksm_id').AsInteger <> 0) then
  begin
    loadPrepInfo(refer.spprod.FieldByName('kod_prod').AsString);
    s_ksm := s_kodp;
    if (drugEdit = nil) then
        drugEdit := TDrugReportEdit.Create(dm, vStruk_Id, m_stateDrugLoad);
    drugEdit.loadDrugSum(mes, god, refer.spprod.FieldByName('ksm_id').AsInteger,
                         refer.spprod.FieldByName('kei_id').AsInteger, 0,
                         refer.spprod.FieldByName('nmat').AsString);
//    drugEdit.loadDrugLoadSum(mes, god, refer.spprod.FieldByName('ksm_id').AsInteger,
//                             refer.spprod.FieldByName('kei_id').AsInteger, 0,
//                             refer.spprod.FieldByName('nmat').AsString);
    showButtonsInRashCol(true);

    ds_texGur.DataSet := drugEdit.texGurLoad;
    DateEdit1.Clear;
    initUI(false, false);
  end;
end;

procedure TFReportRash.loadPrepInfo(kodProd: string);
begin
  edit_kodProd.OnChange := nil;
  edit_kodProd.text := kodProd;
  edit_kodProd.OnChange := edit_kodProdChange;
  edit_kolSeria.text := '0';
  if (refer = nil) then
    refer := TReferance.Create(dm);
  if (refer.spprod = nil)
     or (refer.spprod.FieldByName('kod_prod').AsString <> kodProd) then
    refer.findDrug(kodProd, vStruk_Id);
  s_kodp := refer.spprod.FieldByName('ksm_id').AsInteger;
  s_gost := refer.spprod.FieldByName('GOST').AsString;
  s_xarkt := refer.spprod.FieldByName('XARKT').AsString;
  s_nmat := refer.spprod.FieldByName('NMAT').AsString;
  s_kei := refer.spprod.FieldByName('KEI_ID').AsInteger;
  s_korg := refer.spprod.FieldByName('KORG').AsInteger;
  s_kodProd := refer.spprod.FieldByName('kod_prod').AsString;
  s_Lek_id := refer.spprod.FieldByName('Lek_Id').AsInteger;
  s_namorg := refer.spprod.FieldByName('NAM').AsString;
  s_neiz := refer.spprod.FieldByName('NEIS').AsString;
  s_Formv := refer.spprod.FieldByName('NAMEFV').AsString;
  s_Sprod_id := refer.spprod.FieldByName('Sprod_Id').AsInteger;

  label19.caption := s_NMAT;
  Label28.caption := Inttostr(s_KORG);
  label29.caption := s_namorg;
  label21.caption := s_Neiz;
  label22.caption := s_GOST;
  label11.caption := s_Xarkt;
  label45.caption := s_Formv;
  label3.Caption := refer.spprod.FieldByName('nam_reg').AsString;

  q_utPlan.Close;
  q_utPlan.ParamByName('month').AsInteger := mes;
  q_utPlan.ParamByName('year').AsInteger := god;
  q_utPlan.ParamByName('sprod_id').AsInteger := s_sprod_id;
  q_utPlan.Open;
  q_utPlan.First;
  if (not q_utPlan.Eof) then
  begin
    Label26.Caption := floattostr(q_utPlan.FieldByName('PLAN').AsFloat);
    s_plan := q_utPlan.FieldByName('PLAN').AsFloat;
  end
  else
  begin
    Label26.Caption := '0';
    s_plan := 0;
  end;

  q_ozhidVipusk.Close;
  q_ozhidVipusk.ParamByName('struk_id').AsInteger := vStruk_Id;
  q_ozhidVipusk.ParamByName('ksm_idpr').AsInteger := s_kodp;
  q_ozhidVipusk.ParamByName('dat1').AsDate := StrToDate(s_dat1_period);
  q_ozhidVipusk.ParamByName('dat2').AsDate := StrToDate(s_dat2_period);
  q_ozhidVipusk.Open;
  q_ozhidVipusk.First;
  if (not q_ozhidVipusk.eof) then
  begin
    Label34.Caption := floattostr(q_ozhidVipusk.FieldByName('kol_prih').AsFloat);
    s_OPLan := q_ozhidVipusk.FieldByName('kol_prih').AsFloat;
  end
  else
  begin
    Label34.Caption := '0';
    s_Oplan := 0;
  end;

//  q_sdano.Close;
//  q_sdano.ParamByName('struk_id').AsInteger := vStruk_Id;
//  q_sdano.ParamByName('ksm_idpr').AsInteger := s_kodp;
//  q_sdano.ParamByName('dat1').AsDate := StrToDate(s_dat1_period);
//  q_sdano.ParamByName('dat2').AsDate := StrToDate(s_dat2_period);
//  q_sdano.Open;
//  q_sdano.First;
//  if (not q_sdano.Eof) then
//  begin
//    s_SDANO := q_sdano.FieldByName('SDANO').AsFloat;
//  end
//  else
//  begin
//    s_SDANO := 0;
//  end;
end;

procedure TFReportRash.loadDrugLoadFull(var dm :TdDM; prepNmat, kodProd: string; year, month,
                                        ksmIdPrep, strukId: integer);
begin
  self.dm := dm;
  loadPrepInfo(kodProd);
  edit_seria.text := '';
  loadFullDrugLoad;
end;

procedure TFReportRash.loadDrugLoadSeria(var dm :TdDM; seria, prepNmat, kodProd: string; year, month,
                                         ksmIdPrep, strukId: integer);
begin
  self.dm := dm;
  loadPrepInfo(kodProd);
  edit_seria.text := seria;
  if (seria = '') then
    loadUsualLoad
  else
    acceptAndLoadSeria;
end;

procedure TFReportRash.setDataModule(var dm: TdDM);
begin
  self.dm := dm;
end;

procedure TFReportRash.setDateLoad;
begin
  if (DateEdit1.text <> '' )and (DateEdit1.text <= s_dat2_period)  then
  begin
    if (serOstDrug = nil) or (serOstDrug.seria <> edit_seria.Text) then
      acceptAndLoadSeria;
    if (serOstDrug <> nil) and (serOstDrug.seria = edit_seria.Text) then
      serOstDrug.setDateZagAndKolSeria(dateEdit1.Date, StrToFloat(edit_kolSeria.Text));
  end;
end;

procedure TFReportRash.showButtonsInRashCol(show: boolean);
begin
  if (show) then
  begin
    grid_zagr.Columns[7].ReadOnly := true;
//    grid_zagr.Columns[7].AlwaysShowEditButton := true;
//    grid_zagr.Columns[7].ButtonStyle := TColumnButtonStyleEh(cbsEllipsis);
  end
  else
  begin
    grid_zagr.Columns[7].ReadOnly := false;
//    grid_zagr.Columns[7].AlwaysShowEditButton := false;
//    grid_zagr.Columns[7].ButtonStyle := TColumnButtonStyleEh(cbsAuto);
  end;
end;

procedure TFReportRash.SpeedButton1Click(Sender: TObject);
begin
  if (refer <> nil) and (refer.spprod.FieldByName('ksm_id').AsInteger <> 0) then
  begin
    if (serOstDrug = nil) then
      serOstDrug := TSeriaOstatki.Create(dm);
    if (serOstDrug.openSeria(refer.spprod.FieldByName('ksm_id').AsInteger, '')) then
    begin
      if (serOstDrug.showViborSeria(edit_seria)) then
      begin
        vSeria_id := serOstDrug.seriaId;
        s_seria := serOstDrug.seria;
        s_kol_seria := serOstDrug.kolSeria;
        edit_kolSeria.Text := FloatToStr(serOstDrug.kolSeria);
        edit_seria.Text := serOstDrug.seria;

        if (serOstDrug.dateLoad <> 0) then
        begin
          DateEdit1.Date := serOstDrug.dateLoad;
          if (drugEdit = nil) then
            drugEdit := TDrugReportEdit.Create(dm, vStruk_Id, m_stateDrugLoad);
          showButtonsInRashCol(false);
          drugEdit.loadDrugSeria(mes, god, refer.spprod.FieldByName('ksm_id').AsInteger,
//          drugEdit.loadDrugLoadSeria(mes, god, refer.spprod.FieldByName('ksm_id').AsInteger,
                                     refer.spprod.FieldByName('kei_id').AsInteger, 0,
                                     serOstDrug.seriaId,
                                     refer.spprod.FieldByName('nmat').AsString, s_seria, true);
          ds_texGur.DataSet := drugEdit.texGurLoad;

          initUI(true, false);
        end
        else
        begin
          DateEdit1.ReadOnly := false;
          DateEdit1.SetFocus;
        end;
      end;
    end
    else
      MessageDlg('Нет серий заданного препарата!', mtWarning, [mbOK], 0);
  end;
//  usl_dat := ' ((seria.date_vipusk between ''' + s_dat1 + ''' and ''' + s_dat2 + ''' '
//             + ' or seria.date_pasport between ''' + s_dat1 + ''' and ''' + s_dat2 + ''' '
//             + ' or seria.date_zag between ''' + s_dat1 + ''' and ''' + s_dat2 + ''') '
//             + 'or (seria.date_vipusk is null and seria.date_pasport is null '
//             + 'and seria.date_zag is null)) ';
//  DM1.Seria.MacroByName('usl').AsString := usl_dat;
end;

procedure TFReportRash.SpeedButton2Click(Sender: TObject);
begin
  if (refer = nil) then
    refer := TReferance.Create(dm);
  if (refer.openSpprodSpr(vStruk_Id)) then
  begin
    loadPrepInfo(refer.spprod.FieldByName('kod_prod').AsString);
  end;
end;

procedure TFReportRash.btn_setDateLoadClick(Sender: TObject);
begin
  setDateLoad;
end;

procedure TFReportRash.btn_loadSeriaClick(Sender: TObject);
begin
  acceptAndLoadSeria;
  if (serOstDrug <> nil) and (serOstDrug.seria = edit_seria.Text) then
    serOstDrug.setDateZagAndKolSeria(dateEdit1.Date, StrToFloat(edit_kolSeria.Text));
end;

end.
