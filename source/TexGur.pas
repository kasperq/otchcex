unit TexGur;

interface

uses DrugReportEdit, Referance, SeriaOstatki, DBDM, ReportRash, VipuskChoose,
  ReportCopier,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, StdCtrls, ImgList, ComCtrls, ToolWin, Grids,
  DBGridEh, FindDlgEh, Buttons, DB, IBCustomDataSet, IBQuery, DBCtrls,
  IBUpdateSQL, IBUpdSQLW, RxIBQuery,DateUtils,Math,
  Menus, ExtCtrls, DBGrids,VCLUtils,DBTables,IB,StrUtils,
  SplshWnd, wwDialog, Wwfltdlg,Fr_pars, FR_DSet, FR_DBSet, FR_Class,
  RXCtrls, RxMemDS, dbcgrids, DBCtrlsEh, Spin, ActnList,UtilRIB,RxStrUtils,
  Placemnt,FileUtil, kbmMemTable;
type
  TFTexGur = class(TForm)
    ImageList2: TImageList;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    DSZagSyr: TDataSource;
    ZagSyr: TRxIBQuery;
    FindDlgEh1: TFindDlgEh;
    FindDlgEh2: TFindDlgEh;
    Label5: TLabel;
    PageControl1: TPageControl;
    tab_allZagr: TTabSheet;
    DBGridEh4: TDBGridEh;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText1: TDBText;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    FormStorage1: TFormStorage;
    ZagSyrKART_ID: TIntegerField;
    ZagSyrKEI_ID: TSmallintField;
    ZagSyrKRAZ: TSmallintField;
    ZagSyrNMAT: TIBStringField;
    ZagSyrNAMEVIS: TIBStringField;
    ZagSyrNAMEPRN: TIBStringField;
    ZagSyrKORG: TIntegerField;
    ZagSyrNAMSPSR: TIBStringField;
    ZagSyrNAM: TIBStringField;
    ZagSyrNEIS: TIBStringField;
    ZagSyrKOL_RASH_EDIZ: TFloatField;
    ZagSyrNDOK: TIBStringField;
    ZagSyrKOD_PREP: TIBStringField;
    ZagSyrKSM_ID: TIntegerField;
    ZagSyrNMAT_SYR: TIBStringField;
    ZagSyrDATE_TIME_UPDATE: TDateField;
    mem_texGur: TkbmMemTable;
    mem_texGurKART_ID: TIntegerField;
    mem_texGurKEI_ID_KART: TIntegerField;
    mem_texGurKEI_ID_NORM: TIntegerField;
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
    ds_texGur: TDataSource;
    mem_texGurKEI_ID_OST_PREP: TIntegerField;
    mem_texGurKEI_ID_OST_CEX: TIntegerField;
    Label1: TLabel;
    mem_texGurDELETE: TBooleanField;
    mem_texGurADD: TBooleanField;
    ZagSyrKLIENT_ID: TIntegerField;
    ZagSyrKODP: TIntegerField;
    ZagSyrTIP_DOK_ID: TSmallintField;
    mem_texGurOSTATOK_BEGIN_S: TFloatField;
    mem_texGurOSTATOK_BEGIN_NZ: TFloatField;
    mem_texGurPRIX: TFloatField;
    mem_texGurPEREDANO_PRIH_NZ: TFloatField;
    mem_texGurZAG: TFloatField;
    mem_texGurZAG_PERIOD: TFloatField;
    mem_texGurRASH_VIRAB_PERIOD: TFloatField;
    mem_texGurPEREDANO_RASH_S: TFloatField;
    mem_texGurPEREDANO_RASH_NZ: TFloatField;
    mem_texGurPRIX_PERIOD: TFloatField;
    mem_texGurCHANGED: TBooleanField;
    ZagSyrGOST: TIBStringField;
    ZagSyrXARKT: TIBStringField;
    ZagSyrKEI_ID_PREP: TSmallintField;
    ZagSyrNEIS_PREP: TIBStringField;
    ZagSyrLEK_ID: TSmallintField;
    ZagSyrSPROD_ID: TIntegerField;
    ZagSyrNAMEFV: TIBStringField;
    ZagSyrNAM_ORG: TIBStringField;
    tab_prepSeries: TTabSheet;
    Panel1: TPanel;
    grid_series: TDBGridEh;
    q_prepSeries: TRxIBQuery;
    ds_prepSeries: TDataSource;
    FindDlgEh3: TFindDlgEh;
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
    cb_allSyr: TCheckBox;
    mem_texGurXARKT: TStringField;
    mem_texGurGOST: TStringField;
    mem_texGurKSM_ID_PREP: TIntegerField;
    ZagSyrDATE_DOK: TDateField;
    upd_prepSeries: TIBUpdateSQLW;
    Panel5: TPanel;
    btn_syrInfoAll: TSpeedButton;
    Panel6: TPanel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    mem_texGurOLD_DATE_DOK: TDateField;
    grid_allZagrs: TDBGridEh;
    Splitter2: TSplitter;
    q_allZagrs: TRxIBQuery;
    ds_allZagrs: TDataSource;
    mem_texGurUSER_NAME: TStringField;
    mem_texGurTIP_OP_ID: TIntegerField;
    mem_texGurTIP_DOK_ID: TIntegerField;
    mem_texGurSERIA: TStringField;
    mem_texGurOLD_SERIA_ID: TIntegerField;
    mem_texGurOLD_SERIA: TStringField;
    tab_load: TTabSheet;
    q_prepSeriesKLIENT_ID: TIntegerField;
    q_prepSeriesKOD_PROD: TIBStringField;
    q_prepSeriesNMAT: TIBStringField;
    q_prepSeriesSTRUK_ID: TSmallintField;
    q_prepSeriesKSM_ID: TIntegerField;
    q_prepSeriesNAM_REGION: TIBStringField;
    Panel2: TPanel;
    Panel4: TPanel;
    tab_cons: TTabSheet;
    btn_showDrugSum: TBitBtn;
    btn_openSeriaLoad: TBitBtn;
    btn_newSeria: TBitBtn;
    btn_showUsualLoad: TBitBtn;
    upd_allZagrs: TIBUpdateSQLW;
    btn_copySeria: TBitBtn;
    q_prepSeriesKEI_ID: TSmallintField;
    btn_delSeries: TBitBtn;
    btn_selectAll: TBitBtn;
    q_allZagrsSERIA: TIBStringField;
    q_allZagrsKLIENT_ID: TIntegerField;
    q_allZagrsKOD_PROD: TIBStringField;
    q_allZagrsNMAT: TIBStringField;
    q_allZagrsSUBSTRING: TIBStringField;
    q_allZagrsSERIA_ID: TIntegerField;
    q_allZagrsSTRUK_ID: TSmallintField;
    q_allZagrsKSM_ID: TIntegerField;
    q_allZagrsNAME: TIBStringField;
    q_allZagrsVIB: TIntegerField;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh4SortMarkingChanged(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);

    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);

    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);

    procedure DBGridEh4DblClick(Sender: TObject);

    procedure grid_seriesDblClick(Sender: TObject);
    procedure cb_allSyrClick(Sender: TObject);
    procedure btn_openSeriaLoadClick(Sender: TObject);
    procedure grid_seriesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure q_prepSeriesAfterScroll(DataSet: TDataSet);

    procedure btn_openPrepLoadClick(Sender: TObject);
    procedure grid_allZagrsDblClick(Sender: TObject);
    procedure grid_allZagrsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure btn_openDrugConsClick(Sender: TObject);
    procedure btn_openSeriaConsClick(Sender: TObject);
    procedure btn_showDrugSumClick(Sender: TObject);
    procedure btn_newSeriaClick(Sender: TObject);
    procedure btn_showUsualLoadClick(Sender: TObject);
    procedure btn_copySeriaClick(Sender: TObject);
    procedure btn_delSeriesClick(Sender: TObject);
    procedure btn_selectAllClick(Sender: TObject);

  private

    dm : TdDM;
    repLoad : TFReportRash;
    repCons : TFReportRash;
    vipuskVib : TFVipuskChoose;
    repCopier : TReportCopier;
    drugEd : TDrugReportEdit;

//    procedure loadTexGur(seria, prepNmat : string; year, month, ksmIdPrep, strukId : integer);

    procedure openPrepSeries(dateBegin, dateEnd : TDate; strukId : integer);
    procedure openAllPrepZagrs;
    procedure openFullDrugLoad;
    procedure openFullDrugCons;
    procedure enterNewDrugLoad;
    procedure openUsualDrugLoad;
    procedure openCurrentDrugLoad;
    procedure openCurrentDrugCons;
    procedure openZagrSeriaTab(kodProd, seria, prepNmat : string; ksmIdPrep, month, year, strukId : integer);
    procedure initToolButtons;
    procedure initReportRash;

    procedure openZagSyr(strukId, ksmId, tipDokId, ksmIdPrep : integer;
                         dateBegin, dateEnd : TDate; uslSort : string);

  public
    { Public declarations }
  end;

var
  FTexGur: TFTexGur;

implementation

uses dm;

  {$R *.dfm}


procedure TFTexGur.openZagSyr(strukId, ksmId, tipDokId, ksmIdPrep : integer;
                              dateBegin, dateEnd : TDate; uslSort : string);
begin
  ZagSyr.Close;
  ZagSyr.ParamByName('struk_id').AsInteger := strukId;
  if (ksmId <> 0) then
    ZagSyr.MacroByName('ksm_id').AsString := ' kart.ksm_id = ' + IntToStr(ksmId)
  else
    ZagSyr.MacroByName('ksm_id').AsString := '0=0';
  if (tipDokId <> 0) then
    ZagSyr.MacroByName('tip_dok_id').AsString := ' document.tip_dok_id = ' + IntToStr(tipDokId)
  else
    ZagSyr.MacroByName('tip_dok_id').AsString := '0=0';
  if (ksmIdPrep <> 0) then
    ZagSyr.MacroByName('klient_id').AsString := ' document.klient_id = ' + IntToStr(ksmIdPrep)
  else
    ZagSyr.MacroByName('klient_id').AsString := '0=0';
  if (uslSort = '') then
    ZagSyr.MacroByName('SORT').AsString := 'spprod.kod_prod'
  else
    ZagSyr.MacroByName('SORT').AsString := uslSort;
  ZagSyr.ParamByName('DAT1').AsDate := dateBegin;
  ZagSyr.ParamByName('DAT2').AsDate := dateEnd;
  ZagSyr.Open;
end;

procedure TFTexGur.openZagrSeriaTab(kodProd, seria, prepNmat : string; ksmIdPrep, month, year, strukId : integer);
begin
//  loadPrepInfo(kodProd);
//  edit_seria.text := seria;
//  if (seria = '') then
//    loadFullDrug
//  else
//    acceptAndLoadSeria;
  PageControl1.ActivePage := tab_load;
  PageControl1Change(self);
end;

procedure TFTexGur.openFullDrugLoad;
begin
  initReportRash;
  repLoad.loadDrugLoadFull(dm, q_prepSeriesNMAT.AsString, q_prepSeriesKOD_PROD.AsString,
                           god, mes, q_prepSeriesKLIENT_ID.AsInteger, vStruk_Id);
  PageControl1.ActivePage := tab_load;
  PageControl1Change(self);
end;

procedure TFTexGur.openFullDrugCons;
begin
  initReportRash;
  repCons.loadDrugLoadFull(dm, q_prepSeriesNMAT.AsString, q_prepSeriesKOD_PROD.AsString,
                           god, mes, q_prepSeriesKLIENT_ID.AsInteger, vStruk_Id);
  PageControl1.ActivePage := tab_cons;
  PageControl1Change(self);
end;

procedure TFTexGur.enterNewDrugLoad;
begin
  initReportRash;
  PageControl1.ActivePage := tab_load;
  PageControl1Change(self);
  repLoad.enterNewSeria(dm, q_prepSeriesNMAT.AsString, q_prepSeriesKOD_PROD.AsString,
                        god, mes, q_prepSeriesKLIENT_ID.AsInteger, vStruk_Id);
end;

procedure TFTexGur.openUsualDrugLoad;
begin
  initReportRash;
  repLoad.loadDrugLoadSeria(dm, '', q_prepSeriesNMAT.AsString,
                            q_prepSeriesKOD_PROD.AsString, god, mes,
                            q_prepSeriesKLIENT_ID.AsInteger, vStruk_Id);
  PageControl1.ActivePage := tab_load;
  PageControl1Change(self);
end;

procedure TFTexGur.openCurrentDrugLoad;
begin
  initReportRash;
  repLoad.loadDrugLoadSeria(dm, q_allZagrsSERIA.AsString, q_prepSeriesNMAT.AsString,
                            q_prepSeriesKOD_PROD.AsString, god, mes,
                            q_prepSeriesKLIENT_ID.AsInteger, vStruk_Id);
  PageControl1.ActivePage := tab_load;
  PageControl1Change(self);
end;

procedure TFTexGur.openCurrentDrugCons;
begin
  initReportRash;
  repCons.loadDrugLoadSeria(dm, q_allZagrsSERIA.AsString, q_prepSeriesNMAT.AsString,
                            q_prepSeriesKOD_PROD.AsString, god, mes,
                            q_prepSeriesKLIENT_ID.AsInteger, vStruk_Id);
  PageControl1.ActivePage := tab_cons;
  PageControl1Change(self);
end;

procedure TFTexGur.openPrepSeries(dateBegin, dateEnd : TDate; strukId : integer);
begin
  q_prepSeries.AfterScroll := nil;
  q_prepSeries.Close;
  q_prepSeries.ParamByName('dat1').AsDate := dateBegin;
  q_prepSeries.ParamByName('dat2').AsDate := dateEnd;
  q_prepSeries.ParamByName('struk_id').AsInteger := strukID;
  q_prepSeries.Open;
  q_prepSeries.First;
  openAllPrepZagrs;
  q_prepSeries.AfterScroll := q_prepSeriesAfterScroll;
end;

procedure TFTexGur.cb_allSyrClick(Sender: TObject);
begin
//  if (drugEdit <> nil) then
//  begin
    if (cb_allSyr.Checked) then
    begin
      openZagSyr(vStruk_Id, 0, 0, 0, StrToDate(s_dat1_period), StrToDate(s_dat2_period), Usl_SORT)
//    end
//    else
//    begin
//      openZagSyr(vStruk_Id, drugEdit.texGurLoad.FieldByName('ksm_id').AsInteger, 34, 0,
//                   StrToDate(s_dat1_period), StrToDate(s_dat2_period), Usl_SORT);
    end;
//  end;
end;

procedure TFTexGur.FormCreate(Sender: TObject);
begin
  s_dat1_period := s_dat1;
  s_dat2_period := S_dat2;
end;

procedure TFTexGur.FormDestroy(Sender: TObject);
begin
  dm.disconnectFromDB;
//  FreeAndNil(dm);
end;

procedure TFTexGur.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (dm1.IBT_Write.Active) then  
    dm1.IBT_Write.RollbackRetaining;
//  dm.disconnectFromDB;
//  FreeAndNil(dm);
  DM1.Seria.Close;
  DM1.Ostatki.Close;
  vseria_id := 0;
end;

procedure TFTexGur.N1Click(Sender: TObject);
begin
 dm1.frxReport1.LoadFromFile(reportsPath + 'P_TexGur_o.fr3');
 dm1.FrxReport1.ShowReport;
end;

procedure TFTexGur.N3Click(Sender: TObject);
begin
 dm1.FrReport2.LoadFromFile(reportsPath + 'P_RaschTM.frf');
 dm1.FrReport2.ShowReport;
end;

procedure TFTexGur.N4Click(Sender: TObject);
begin
 dm1.FrReport2.LoadFromFile(reportsPath + 'P_ListKomplSer.frf');
 dm1.FrReport2.ShowReport;
end;

procedure TFTexGur.btn_selectAllClick(Sender: TObject);
begin
  q_allZagrs.DisableControls;
  q_allZagrs.First;
  while (not q_allZagrs.Eof) do
  begin
    q_allZagrs.Edit;
    q_allZagrsVIB.AsInteger := 1;
    q_allZagrs.Post;
    q_allZagrs.Next;
  end;
  q_allZagrs.EnableControls;
end;

procedure TFTexGur.btn_showDrugSumClick(Sender: TObject);
begin
  openFullDrugLoad;
end;

procedure TFTexGur.btn_showUsualLoadClick(Sender: TObject);
begin
  openUsualDrugLoad;
end;

procedure TFTexGur.btn_copySeriaClick(Sender: TObject);
var
  delSeries : boolean;
begin
  if (vipuskVib = nil) then
    vipuskVib := TFVipuskChoose.Create(Application);
  vipuskVib.setParams(dm, mes, god, vStruk_Id);
  vipuskVib.ShowModal;
  if (vipuskVib.ModalResult > 50) then
  begin
    delSeries := false;
    if (MessageDlg('Удалять серии на препарате, с которого происходит копирование?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      delSeries := true;
    end;
    if (repCopier = nil) then
      repCopier := TReportCopier.Create(dm);
    q_allZagrs.DisableControls;
    q_allZagrs.First;
    while (not q_allZagrs.Eof) do
    begin
      if (q_allZagrsVIB.AsInteger = 1) then
      begin
        if (repCopier.copySeria(vStruk_Id, q_prepSeriesKSM_ID.AsInteger, vipuskVib.ksmIdDrug,
                                mes, god, q_prepSeriesKEI_ID.AsInteger, vipuskVib.keiIdDrug,
                                q_allZagrsSERIA_ID.AsInteger, q_allZagrsSERIA.AsString,
                                q_prepSeriesNMAT.AsString, vipuskVib.nmatDrug)) then
        begin
          if (delSeries) then
            repCopier.deleteDrugFromSeries();
        end;
      end;
      q_allZagrs.Next;
    end;
    openPrepSeries(StrToDate(s_dat1), StrToDate(s_dat2), vStruk_Id);
    q_prepSeries.AfterScroll := nil;
    if (not q_prepSeries.Locate('ksm_id', VarArrayOf([vipuskVib.ksmIdDrug]), [])) then
      q_prepSeries.First;
    openAllPrepZagrs;
    q_prepSeries.AfterScroll := q_prepSeriesAfterScroll;
    q_allZagrs.EnableControls;
  end;
end;

procedure TFTexGur.btn_delSeriesClick(Sender: TObject);
var
  curKsmId : integer;
begin
  if (MessageDlg('Удалить серию(-и)?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    curKsmId := q_prepSeriesKSM_ID.AsInteger;
    if (drugEd = nil) then
      drugEd := TDrugReportEdit.Create(dm, vStruk_Id, true);
    q_allZagrs.DisableControls;
    q_allZagrs.First;
    while (not q_allZagrs.Eof) do
    begin
      if (q_allZagrsVIB.AsInteger = 1) then
      begin
        drugEd.delDrugSeria(mes, god, q_prepSeriesKSM_ID.AsInteger, q_prepSeriesKEI_ID.AsInteger,
                            0, q_allZagrsSERIA_ID.AsInteger, q_prepSeriesNMAT.AsString,
                            q_allZagrsSERIA.AsString);
      end;
      q_allZagrs.Next;
    end;
    openPrepSeries(StrToDate(s_dat1), StrToDate(s_dat2), vStruk_Id);
    q_prepSeries.AfterScroll := nil;
    if (not q_prepSeries.Locate('ksm_id', VarArrayOf([curKsmId]), [])) then
      q_prepSeries.First;
    openAllPrepZagrs;
    q_prepSeries.AfterScroll := q_prepSeriesAfterScroll;
    q_allZagrs.EnableControls;
  end;
end;

procedure TFTexGur.btn_newSeriaClick(Sender: TObject);
begin
  enterNewDrugLoad;
end;

procedure TFTexGur.btn_openDrugConsClick(Sender: TObject);
begin
  openFullDrugCons;
end;

procedure TFTexGur.btn_openPrepLoadClick(Sender: TObject);
begin
  openFullDrugLoad;
end;

procedure TFTexGur.btn_openSeriaConsClick(Sender: TObject);
begin
  openCurrentDrugCons;
end;

procedure TFTexGur.btn_openSeriaLoadClick(Sender: TObject);
begin
  openCurrentDrugLoad;
end;

procedure TFTexGur.PageControl1Change(Sender: TObject);
begin
  initToolButtons;
//  if (PageControl1.ActivePage = tab_allZagr) then
//  begin
//    cb_allSyr.OnClick := nil;
//    if (drugEdit <> nil) and (drugEdit.texGurLoad.FieldByName('ksm_id').AsInteger = 0) then
//    begin
//      cb_allSyr.Checked := true
//    end
//    else
//    begin
//      cb_allSyr.Checked := false;
//    end;
//    cb_allSyrClick(sender);
//    cb_allSyr.OnClick := cb_allSyrClick;
//  end;
  if (PageControl1.ActivePage = tab_prepSeries) then
  begin
    openPrepSeries(StrToDate(s_dat1), StrToDate(s_dat2), vStruk_Id);
  end;
  if (PageControl1.ActivePage = tab_load) then
  begin
    if (repLoad <> nil) then
      if (repLoad.dataM = nil) then
        repLoad.setDataModule(dm);
  end;
  
end;

procedure TFTexGur.initToolButtons;
begin
  DM1.ConfigUMC.close;
  DM1.ConfigUMC.MacroByName('USL').AsString := 'configumc.STRUK_ID = ' + IntToStr(vSTRUK_ID);
  DM1.ConfigUMC.Open;
  if (MES = DM1.ConfigUMCMES.AsInteger) and (GOD = DM1.ConfigUMCGOD.AsInteger) then
  begin
    Label1.Caption:='(Текущий месяц)';
    MODE := 0;
  end
  else
  begin
    if ((MES = DM1.ConfigUMCMES.AsInteger - 1)
        and (GOD = DM1.ConfigUMCGOD.AsInteger))
       or ((GOD = DM1.ConfigUMCGOD.AsInteger - 1) and (MES = 12)
           and (DM1.ConfigUMCMES.AsInteger = 1))then
    begin
      Label1.Caption:='(Прошлый месяц)';
      MODE := 1;
    end
    else
    begin
      Label1.Caption:='(Только просмотр)';
      MODE := 2;
    end;
  end;
  initReportRash;
  repLoad.initToolButtons;
end;

procedure TFTexGur.initReportRash;
begin
  if (repLoad = nil) then
  begin
    repLoad := TFReportRash.Create(Application);
    repLoad.stateDrugLoad := true;
    repLoad.Parent := tab_load;
    repLoad.Align := alClient;
    repLoad.Visible := true;
  end;
  if (repCons = nil) then
  begin
    repCons := TFReportRash.Create(Application);
    repCons.stateDrugLoad := false;
    repCons.Parent := tab_cons;
    repCons.Align := alClient;
    repCons.Visible := true;
  end;
end;

procedure TFTexGur.q_prepSeriesAfterScroll(DataSet: TDataSet);
begin
  openAllPrepZagrs;
end;

procedure TFTexGur.openAllPrepZagrs;
begin
  q_allZagrs.Close;
  q_allZagrs.ParamByName('dat1').AsDate := q_prepSeries.ParamByName('dat1').AsDate;
  q_allZagrs.ParamByName('dat2').AsDate := q_prepSeries.ParamByName('dat2').AsDate;
  q_allZagrs.ParamByName('struk_id').AsInteger := q_prepSeriesSTRUK_ID.AsInteger;
  q_allZagrs.ParamByName('klient_id').AsInteger := q_prepSeriesKLIENT_ID.AsInteger;
//  q_allZagrs.ParamByName('ndok').AsString := q_prepSeriesNDOK.AsString;
  q_allZagrs.Open;
end;

procedure TFTexGur.FormShow(Sender: TObject);
begin
  if (dm = nil) then
  begin
    dm := TdDM.Create(Application);
    dm.setDB('192.168.13.13:D:\IBDATA\BELMED.GDB',
             AnsiUpperCase(UserName), AnsiLowerCase(UserName), 'SKLAD_CEH');
    dm.connectToDB();
  end;

  SpinEdit3.OnChange := nil;
  SpinEdit3.Value := mes;
  SpinEdit3.OnChange := SpinEdit3Change;
  SpinEdit4.OnChange := nil;
  SpinEdit4.Value := god;
  SpinEdit4.OnChange := SpinEdit4Change;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1_period := '01.' + S_MES + '.' + INTTOSTR(GOD);
  S_DAT2_period := datetostr(IncMonth(strtodate(s_dat1_period), 1) -1);

//  PageControl1.ActivePage := tab_zagr;
  PageControl1.ActivePage := tab_prepSeries;
  PageControl1Change(sender);

  USL_SORT := '7,9';
  usl_dat := ' SERIA.Date_ZAG between ' + '''' + s_dat1_period + '''' + ' and '
             + '''' + s_dat2_period + '''';

  initReportRash;
end;

procedure TFTexGur.DBGridEh4DblClick(Sender: TObject);
begin
  if (ZagSyrTIP_DOK_ID.AsInteger = 34) then
  begin
    s_seria := Copy(ZagSyrNDOK.AsString, 11, length(ZagSyrNDOK.AsString));
    s_ksm := s_kodp;

    openZagrSeriaTab(ZagSyrKOD_PREP.AsString, s_seria, ZagSyrNMAT.AsString, ZagSyrKODP.AsInteger,
                     mes, god, vStruk_Id);
  end;
end;

procedure TFTexGur.DBGridEh4SortMarkingChanged(Sender: TObject);
var
  i : Integer;
begin
  Usl_Sort := '';
  for i := 0 to DBGridEh4.SortMarkedColumns.Count - 1 do
  BEGIN
    if (DBGridEh4.SortMarkedColumns[i].Title.SortMarker = smUpEh) then
    begin
      if (DBGridEh4.SortMarkedColumns[i].FieldName = 'KRAZ') then
        Usl_Sort := USL_Sort + 'razdel."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ' DESC , '
      else
        if (DBGridEh4.SortMarkedColumns[i].FieldName = 'KSM_ID') then
          Usl_Sort := USL_Sort + 'kart."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ' DESC , '
        ELSE
          if (DBGridEh4.SortMarkedColumns[i].FieldName = 'NDOK') then
            Usl_Sort := USL_Sort + 'document."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ' DESC , '
          ELSE
            if (DBGridEh4.SortMarkedColumns[i].FieldName = 'DATE_TIME_UPDATE') then
              Usl_Sort := USL_Sort + 'kart."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ' DESC , '
            ELSE
              Usl_Sort := USL_Sort + '"' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ' DESC , ';
    end
    else
    begin
      if (DBGridEh4.SortMarkedColumns[i].FieldName = 'KRAZ') then
        Usl_Sort := USL_Sort + 'razdel."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ', '
      else
        if (DBGridEh4.SortMarkedColumns[i].FieldName = 'KSM_ID') then
          Usl_Sort := USL_Sort + 'kart."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"   '// + ' DESC , '
        ELSE
          if (DBGridEh4.SortMarkedColumns[i].FieldName = 'NDOK') then
            Usl_Sort := USL_Sort + 'document."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"   '// + ' DESC , '
          else
            if (DBGridEh4.SortMarkedColumns[i].FieldName = 'DATE_TIME_UPDATE') then
              Usl_Sort := USL_Sort + 'kart."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"   '// + ' DESC , '
            else
              Usl_Sort := Usl_Sort + '"' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ', ';
    end;
  END;
  if (Usl_Sort <> '') then
  begin
    Usl_Sort := Copy(Usl_Sort, 1, Length(Usl_Sort) - 2);
    openZagSyr(vStruk_Id, mem_texGurKSM_ID.AsInteger, 34, 0,
               StrToDate(s_dat1_period), StrToDate(s_dat2_period), Usl_SORT);
  end;
end;

procedure TFTexGur.grid_allZagrsDblClick(Sender: TObject);
begin
  openCurrentDrugLoad;
end;

procedure TFTexGur.grid_allZagrsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) then
    openCurrentDrugLoad;
end;

procedure TFTexGur.grid_seriesDblClick(Sender: TObject);
begin
  openFullDrugLoad;
end;

procedure TFTexGur.grid_seriesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) then
    openFullDrugLoad;
end;

procedure TFTexGur.ToolButton5Click(Sender: TObject);
begin
 dm1.PechTexGur.EmptyTable;
// s_kodprod := edit_kodProd.Text;
// s_gost:=label22.Caption;
// s_nmat:=label19.Caption;
// s_neiz:=label21.Caption;
// s_xarkt:=label11.Caption;
// s_namorg:=label29.Caption;
// s_namreg:=label3.Caption;
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT ost.kart_id, seria.seria_id,seria.seria,seria.date_zag,seria.ob_zag, document.ndok, NORM.KODP, NORM.KSM_ID, NORM.KRAZ, NORM.MES, NORM.GOD, NORM.NAZPRPF, NORM.PLNORM,NORM.KEI_ID KEIN,');
 DM1.IBQuery1.SQL.Add('MATROP.NMAT,MATROP.XARKT,MATROP.GOST, MATROP.KEI_ID,EDIZ.NEIS,razdel.razdel_id,razdel.kodraz,razdel.namraz,ceh_normz.formula,');
 DM1.IBQuery1.SQL.Add('document.tip_op_id,KART.kol_rash_ediz,document.date_op, CEH_NORMZ.KOEF1, CEH_NORMZ. KOEF2, CEH_NORMZ. KOEF3, CEH_NORMZ. PROC,CEH_NORMZ.NORMZ_ID,document.doc_id,ostatki.ot_s,ostatki.ot_nz');
 DM1.IBQuery1.SQL.Add(' FROM KART');
 DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.doc_ID =DOCUMENT.DOC_ID)');
 DM1.IBQuery1.SQL.Add(' inner JOIN OSTATKI ON (KART.KART_ID =OSTATKI. KART_ID)');
 DM1.IBQuery1.SQL.Add(' inner JOIN MATROP ON (KART.KSM_ID = MATROP.KSM_ID)');
 DM1.IBQuery1.SQL.Add(' inner JOIN RAZDEL ON (KART.RAZDEL_ID =RAZDEL.RAZDEL_ID)');
 DM1.IBQuery1.SQL.Add(' left join norm_view (119,'+inttostr(god)+','+inttostr(mes)+','+inttostr(s_KODP)+','+inttostr(vstruk_id));
 DM1.IBQuery1.SQL.Add(',0) norm on (ostatki.ksm_idpr=norm.kodp and ostatki.ksm_id=norm.ksm_id and ostatki.razdel_id=norm.razdel_id)');
 DM1.IBQuery1.SQL.Add(' left JOIN ceh_normz ON ((NORM.kodp = ceh_normz.ksm_id_pr) AND (norm.ksm_id=ceh_normz.ksm_id_mat) AND (razdel.razdel_id=ceh_normz.razdel_id))');
 DM1.IBQuery1.SQL.Add(' LEFT JOIN EDIZ ON (norm.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add(' INNER join seria on (substr(document.ndok,11,9)=seria.seria and seria.ksm_id=norm.kodp)');
 DM1.IBQuery1.SQL.Add(' left join ostatki ost on (seria.seria_id=ost.seria_id and norm.kodp=ost.ksm_id)');
 DM1.IBQuery1.SQL.Add(' WHERE  ost.STRUK_ID='+inttostr(vStruk_id));
 DM1.IBQuery1.SQL.Add(' and ostatki.ksm_idpr='+inttostr(s_kodp));
 DM1.IBQuery1.SQL.Add(' and document.doc_id ='+inttostr(vDocument_id));
 DM1.IBQuery1.SQL.Add(' and kart.kol_rash_ediz<>0');
 DM1.IBQuery1.SQL.Add(' Order by document.doc_id,razdel.razdel_id');
 DM1.IBQuery1.Open;
 if not DM1.IBQuery1.Eof then
 begin
  dm1.PechTexGur.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
  dm1.PechTexGur.Active:=true;
  If not dm1.PechTexGur.Eof then
  PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
 end;
end;

procedure TFTexGur.SpinEdit3Change(Sender: TObject);
begin
  mes := SpinEdit3.Value;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1_period := '01.' + S_MES + '.' + copy(INTTOSTR(GOD), 3, 2);
  S_DAT2_period := datetostr(IncMonth(strtodate(s_dat1_period), 1) - 1);
  S_DAT1 := '01.' + S_MES + '.' + copy(INTTOSTR(GOD), 3, 2);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1_period), 1) -1);
//  s_seria := edit_seria.Text;

  initToolButtons;
//  if (edit_kodProd.Text <> '') then
//    loadTexGur(s_seria, label19.Caption, god, mes, s_kodp, vStruk_Id);

  PageControl1Change(sender);
end;

procedure TFTexGur.SpinEdit4Change(Sender: TObject);
begin
  god := SpinEdit4.Value;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1_period := '01.' + S_MES + '.' + copy(INTTOSTR(GOD), 3, 2);
  S_DAT2_period := datetostr(IncMonth(strtodate(s_dat1_period), 1) - 1);
  S_DAT1 := '01.' + S_MES + '.' + copy(INTTOSTR(GOD), 3, 2);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1_period), 1) -1);

  initToolButtons;
//  if (edit_kodProd.Text <> '') then
//    loadTexGur(s_seria, label19.Caption, god, mes, s_kodp, vStruk_Id);
end;

ENd.
