unit TexGur;

interface

uses DrugReportEdit, Referance, SeriaOstatki, DBDM,
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
    ToolButton4: TToolButton;
    PageControl1: TPageControl;
    tab_zagr: TTabSheet;
    grid_zagr: TDBGridEh;
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
    Panel2: TPanel;
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
    SpeedButton2: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Label7: TLabel;
    Label45: TLabel;
    Label38: TLabel;
    edit_kolSeria: TEdit;
    FormStorage1: TFormStorage;
    Splitter1: TSplitter;
    Splitter5: TSplitter;
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
    SpeedButton3: TSpeedButton;
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
    grid_otchet: TDBGridEh;
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
    btn_openSeriaLoad: TSpeedButton;
    grid_series: TDBGridEh;
    q_prepSeries: TRxIBQuery;
    ds_prepSeries: TDataSource;
    q_prepSeriesNDOK: TIBStringField;
    q_prepSeriesKLIENT_ID: TIntegerField;
    q_prepSeriesKOD_PROD: TIBStringField;
    q_prepSeriesNMAT: TIBStringField;
    q_prepSeriesSUBSTRING: TIBStringField;
    q_prepSeriesSERIA_ID: TIntegerField;
    q_prepSeriesSERIA: TIBStringField;
    q_prepSeriesSTRUK_ID: TSmallintField;
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
    q_prepSeriesKSM_ID: TIntegerField;
    cb_allSyr: TCheckBox;
    mem_texGurXARKT: TStringField;
    mem_texGurGOST: TStringField;
    mem_texGurKSM_ID_PREP: TIntegerField;
    ZagSyrDATE_DOK: TDateField;
    upd_prepSeries: TIBUpdateSQLW;
    Panel4: TPanel;
    btn_vipuskList1: TSpeedButton;
    btn_syrInfo: TSpeedButton;
    btn_save: TSpeedButton;
    btn_insertRec: TSpeedButton;
    btn_delRecord: TSpeedButton;
    btn_delAllRecs: TSpeedButton;
    Panel5: TPanel;
    btn_syrInfoAll: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel6: TPanel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    mem_texGurOLD_DATE_DOK: TDateField;
    q_prepSeriesNAM_REGION: TIBStringField;
    grid_allZagrs: TDBGridEh;
    Splitter2: TSplitter;
    q_allZagrs: TRxIBQuery;
    ds_allZagrs: TDataSource;
    mem_texGurUSER_NAME: TStringField;
    q_allZagrsNDOK: TIBStringField;
    q_allZagrsKLIENT_ID: TIntegerField;
    q_allZagrsDATE_DOK: TDateField;
    q_allZagrsDATE_OP: TDateField;
    q_allZagrsKOD_PROD: TIBStringField;
    q_allZagrsNMAT: TIBStringField;
    q_allZagrsSUBSTRING: TIBStringField;
    q_allZagrsSERIA_ID: TIntegerField;
    q_allZagrsSERIA: TIBStringField;
    q_allZagrsSTRUK_ID: TSmallintField;
    q_allZagrsKSM_ID: TIntegerField;
    mem_texGurTIP_OP_ID: TIntegerField;
    mem_texGurTIP_DOK_ID: TIntegerField;
    mem_texGurSERIA: TStringField;
    procedure MyGetValue(const s: String; var v: Variant);
    procedure MyGetValue1(const s: String; var v: Variant);
    procedure edit_kodProdChange(Sender: TObject);
    procedure edit_kodProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure edit_seriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_kodProdClick(Sender: TObject);
    procedure btn_saveSeriaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh4SortMarkingChanged(Sender: TObject);
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_seriaClick(Sender: TObject);
    procedure btn_delRecClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure grid_zagrEditButtonClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);

    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edit_kolSeriaClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure btn_vipuskListClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure grid_zagrDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh4DblClick(Sender: TObject);

    procedure grid_seriesDblClick(Sender: TObject);
    procedure cb_allSyrClick(Sender: TObject);
    procedure btn_openSeriaLoadClick(Sender: TObject);
    procedure grid_seriesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure btn_delAllClick(Sender: TObject);
    procedure q_prepSeriesAfterScroll(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    drugEdit : TDrugReportEdit;
    refer : TReferance;
    serOstDrug : TSeriaOstatki;
    dm : TdDM;

    procedure loadTexGur(seria, prepNmat : string; year, month, ksmIdPrep, strukId : integer);
    procedure setDateLoad;
    procedure acceptAndLoadSeria;

    procedure openPrepSeries(dateBegin, dateEnd : TDate; strukId : integer);
    procedure loadPrepInfo(kodProd : string);

    procedure openZagrSeriaTab(kodProd, seria, prepNmat : string; ksmIdPrep, month, year, strukId : integer);
    procedure initToolButtons;

    procedure openZagSyr(strukId, ksmId, tipDokId, ksmIdPrep : integer;
                         dateBegin, dateEnd : TDate; uslSort : string);

  public
    { Public declarations }
  end;

var
  FTexGur: TFTexGur;

implementation

uses dm, ViborPerioda, Ser, SprFormul, Find_Spprod, ediz,
  Find_Matrop, razdel, glmenu, SprSTAD, FSpFormv, Analit_aList, analit,
  Unit21, OstSyr, Analit1, Komp_Tm, VybPrep;

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
  loadPrepInfo(kodProd);
  edit_seria.text := seria;
  acceptAndLoadSeria;
  PageControl1.ActivePage := tab_zagr;
  PageControl1Change(self);
end;

procedure TFTexGur.loadPrepInfo(kodProd : string);
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


procedure TFTexGur.openPrepSeries(dateBegin, dateEnd : TDate; strukId : integer);
begin
  q_prepSeries.AfterScroll := nil;
  q_prepSeries.Close;
  q_prepSeries.ParamByName('dat1').AsDate := dateBegin;
  q_prepSeries.ParamByName('dat2').AsDate := dateEnd;
  q_prepSeries.ParamByName('struk_id').AsInteger := strukID;
  q_prepSeries.Open;
  q_prepSeries.AfterScroll := q_prepSeriesAfterScroll;
  q_prepSeries.First;
end;

procedure TFTexGur.loadTexGur(seria, prepNmat : string; year, month, ksmIdPrep, strukId : integer);
begin
  if (serOstDrug = nil) then
    serOstDrug := TSeriaOstatki.Create(dm);
  if (serOstDrug.seria <> seria) or (drugEdit.month <> month)
     or (drugEdit.year <> year) or (serOstDrug.ksmId <> ksmIdPrep) then
  begin
    if (serOstDrug.openSeria(ksmIdPrep, seria)) then
    begin
      if (drugEdit = nil) then
        drugEdit := TDrugReportEdit.Create(dm, vStruk_Id);
      drugEdit.loadTexGurLoad(true, month, year, refer.spprod.FieldByName('ksm_id').AsInteger,
                              refer.spprod.FieldByName('kei_id').AsInteger,
                              refer.spprod.FieldByName('nmat').AsString, seria);
      ds_texGur.DataSet := drugEdit.texGurLoad;
    end;
  end;
end;

procedure TFTexGur.cb_allSyrClick(Sender: TObject);
begin
  if (drugEdit <> nil) then
  begin
    if (cb_allSyr.Checked) then
    begin
      openZagSyr(vStruk_Id, 0, 0, 0, StrToDate(s_dat1_period), StrToDate(s_dat2_period), Usl_SORT)
    end
    else
    begin
      openZagSyr(vStruk_Id, drugEdit.texGurLoad.FieldByName('ksm_id').AsInteger, 34, 0,
                   StrToDate(s_dat1_period), StrToDate(s_dat2_period), Usl_SORT);
    end;
  end;
end;

procedure TFTexGur.edit_kodProdChange(Sender: TObject);
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

procedure TFTexGur.edit_kodProdKeyDown(Sender: TObject; var Key: Word;
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

procedure TFTexGur.FormCreate(Sender: TObject);
begin
  s_dat1_period := s_dat1;
  s_dat2_period := S_dat2;
end;

procedure TFTexGur.FormDestroy(Sender: TObject);
begin
  FreeAndNil(drugEdit);
end;

procedure TFTexGur.edit_seriaKeyDown(Sender: TObject; var Key: Word;
                                Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    acceptAndLoadSeria;
  end;
end;

procedure TFTexGur.acceptAndLoadSeria;
begin
  if (refer <> nil) and (refer.spprod.FieldByName('ksm_id').AsInteger <> 0)
     and (edit_seria.text <> '') then
  begin
    loadPrepInfo(refer.spprod.FieldByName('kod_prod').AsString);
    s_seria := edit_seria.Text;
    s_ksm := s_kodp;

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
        drugEdit := TDrugReportEdit.Create(dm, vStruk_Id);
    drugEdit.loadTexGurLoad(true, mes, god, refer.spprod.FieldByName('ksm_id').AsInteger,
                            refer.spprod.FieldByName('kei_id').AsInteger,
                            refer.spprod.FieldByName('nmat').AsString, s_seria);
    ds_texGur.DataSet := drugEdit.texGurLoad;
    if (serOstDrug.dateLoad <> 0) then
    begin
      DateEdit1.Date := serOstDrug.dateLoad;
    end
    else
    begin
      dateEdit1.Date := StrToDate(s_dat2_period);
      DateEdit1.ReadOnly := false;
      DateEdit1.SetFocus;
    end;
  end;
end;

procedure TFTexGur.edit_kolSeriaClick(Sender: TObject);
begin
  edit_kolSeria.Text := ''
end;

procedure TFTexGur.edit_kodProdClick(Sender: TObject);
begin
  edit_kodProd.text := '';
  edit_seria.text := '';
end;

procedure TFTexGur.btn_saveSeriaClick(Sender: TObject);
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

procedure TFTexGur.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mem_texGur.EmptyTable;
  mem_texGur.Close;
  dm1.IBT_Write.RollbackRetaining;

  FreeAndNil(drugEdit);
  FreeAndNil(serOstDrug);
  FreeAndNil(refer);
  dm.disconnectFromDB;
  FreeAndNil(dm);
  DM1.Seria.Close;
  DM1.Ostatki.Close;
  vseria_id := 0;
end;

procedure TFTexGur.MyGetValue(const s: String; var v: Variant);
begin
 if UpperCase(S)='V2' then if FTexGur.edit_kolSeria.Text<>'' then v:=strtofloat(FTexGur.edit_kolSeria.Text) else v:=0;
end;

procedure TFTexGur.MyGetValue1(const s: String; var v: Variant);
begin
 if UpperCase(S)='V2' then if FTexGur.edit_kolSeria.Text<>'' then v:=strtofloat(FTexGur.edit_kolSeria.Text) else v:=0;
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

procedure TFTexGur.btn_openSeriaLoadClick(Sender: TObject);
begin
  openZagrSeriaTab(q_prepSeriesKOD_PROD.AsString, q_prepSeriesSERIA.AsString,
                   q_prepSeriesNMAT.AsString, q_prepSeriesKSM_ID.AsInteger, mes, god, vStruk_id);
end;

procedure TFTexGur.btn_vipuskListClick(Sender: TObject);
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

procedure TFTexGur.PageControl1Change(Sender: TObject);
begin
  initToolButtons;
  if (PageControl1.ActivePage = tab_allZagr) then
  begin
    cb_allSyr.OnClick := nil;
    if (drugEdit <> nil) and (drugEdit.texGurLoad.FieldByName('ksm_id').AsInteger = 0) then
    begin
      cb_allSyr.Checked := true
    end
    else
    begin
      cb_allSyr.Checked := false;
    end;
    cb_allSyrClick(sender);
    cb_allSyr.OnClick := cb_allSyrClick;
  end;
  if (PageControl1.ActivePage = tab_prepSeries) then
  begin
    openPrepSeries(StrToDate(s_dat1), StrToDate(s_dat2), vStruk_Id);
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

procedure TFTexGur.q_prepSeriesAfterScroll(DataSet: TDataSet);
begin
  q_allZagrs.Close;
  q_allZagrs.ParamByName('dat1').AsDate := q_prepSeries.ParamByName('dat1').AsDate;
  q_allZagrs.ParamByName('dat2').AsDate := q_prepSeries.ParamByName('dat2').AsDate;
  q_allZagrs.ParamByName('struk_id').AsInteger := q_prepSeriesSTRUK_ID.AsInteger;
  q_allZagrs.ParamByName('klient_id').AsInteger := q_prepSeriesKLIENT_ID.AsInteger;
  q_allZagrs.ParamByName('ndok').AsString := q_prepSeriesNDOK.AsString;
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

  if (FSprFormul = nil) then
    FSprFormul := TfSprFormul.Create(Application);
  SpinEdit3.OnChange := nil;
  SpinEdit3.Value := mes;
  SpinEdit3.OnChange := SpinEdit3Change;
  SpinEdit4.Value := god;
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
  DM1.ConfigUMC.close;
  DM1.ConfigUMC.MacroByName('USL').AsString := 'configumc.STRUK_ID = ' + IntToStr(vSTRUK_ID);
  DM1.ConfigUMC.Open;
//  initToolButtons;
  DM1.ConfigUMC.close;
  if (s_kodp <> 0) then
  begin
    if (refer = nil) then
      refer := TReferance.Create(dm);
    if (refer.findDrug(s_kodp)) then
      loadPrepInfo(refer.spprod.FieldByName('kod_prod').AsString)
    else
    begin
      Label3.Caption := '';
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
    end;
  end
  else
  begin
    Label3.Caption := '';
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
  end;
  edit_seria.Text := '';
  edit_kolSeria.Text := '0';
  pr_button9 := true;
  prov := false;
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

procedure TFTexGur.DateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
    setDateLoad;
end;

procedure TFTexGur.setDateLoad;
begin
  if (DateEdit1.text <> '' )and (DateEdit1.text <= s_dat2_period)  then
  begin
    if (serOstDrug = nil) or (serOstDrug.seria <> edit_seria.Text) then
      acceptAndLoadSeria;
    if (serOstDrug <> nil) and (serOstDrug.seria = edit_seria.Text) then
      serOstDrug.setDateZagAndKolSeria(dateEdit1.Date, StrToFloat(edit_kolSeria.Text));
  end;
end;

procedure TFTexGur.edit_seriaClick(Sender: TObject);
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

procedure TFTexGur.btn_delAllClick(Sender: TObject);
begin
  drugEdit.delTexGurLoadAllLines;
end;

procedure TFTexGur.btn_delRecClick(Sender: TObject);
begin
  drugEdit.delTexGurLoadLine;
end;

procedure TFTexGur.ToolButton1Click(Sender: TObject);
begin
  drugEdit.addTexGurLoadLine;
end;

procedure TFTexGur.grid_seriesDblClick(Sender: TObject);
begin
  openZagrSeriaTab(q_prepSeriesKOD_PROD.AsString, q_prepSeriesSERIA.AsString,
                   q_prepSeriesNMAT.AsString, q_prepSeriesKSM_ID.AsInteger, mes, god, vStruk_id);
end;

procedure TFTexGur.grid_seriesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) then
    openZagrSeriaTab(q_prepSeriesKOD_PROD.AsString, q_prepSeriesSERIA.AsString,
                     q_prepSeriesNMAT.AsString, q_prepSeriesKSM_ID.AsInteger, mes, god, vStruk_id);
end;

procedure TFTexGur.grid_zagrDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
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

procedure TFTexGur.grid_zagrEditButtonClick(Sender: TObject);
var
  nm : integer;
begin
  nm := 0;
  if (grid_zagr.SelectedField.FieldName= 'NEIS') then
    nm := 1;
  if (grid_zagr.SelectedField.FieldName = 'KSM_ID') then
    nm := 2;
  if (grid_zagr.SelectedField.FieldName = 'KRAZ') then
    nm := 3;

  case nm of
  1: begin
      if (drugEdit.isKeiIdChangeable()) then
      begin
        if (FEdiz = nil) then
          FEdiz := TFEdiz.Create(Application);
        FEdiz.ShowModal;
        if (FEdiz.ModalResult > 50) then
          drugEdit.changeKeiId(FEdiz.EdizKei_id.AsInteger, FEdiz.EdizNeis.AsString);
      end
      else
        MessageDlg('Нельзя менять единицу измерения на занормированном сырье!',
                   mtWarning, [mbOK], 0);
     end;

  2: begin
      if (drugEdit.isKeiIdChangeable()) then
      begin
        if (FindMatrop = nil) then
          FindMatrop := TfindMatrop.Create(Application);
        FindMatrop.DataBaseName := dm1.BELMED;
        FindMatrop.ReadOnly := true;
        FindMatrop.ShowModal;
        if (FindMatrop.ModalResult > 50) then
        begin
          drugEdit.changeKsmId(FindMatrop.ModalResult - 50, FindMatrop.IBMatropNMAT.AsString);
          drugEdit.changeKeiId(FindMatrop.IBMatropKei_id.AsInteger, FindMatrop.IBMatropNEIS.AsString);
        end;
      end
      else
         MessageDlg('Нельзя менять код занормированного сырья! Вставьте новую строку в отчет.',
                    mtWarning, [mbOK], 0);
     end;

  3: begin
      if (drugEdit.isKeiIdChangeable()) then
      begin
        if (FRazdel = nil) then
          FRazdel := TFRazdel.Create(Application);
        FRazdel.ShowModal;
        if (FRazdel.ModalResult > 50) then
          drugEdit.changeRazdel(FRazdel.ModalResult - 50, s_Razdel);
      end
      else
        MessageDlg('Нельзя менять раздел занормированного сырья! Вставьте новую строку в отчет.',
                    mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TFTexGur.ToolButton5Click(Sender: TObject);
begin
 dm1.PechTexGur.EmptyTable;
 s_kodprod := edit_kodProd.Text;
 s_gost:=label22.Caption;
 s_nmat:=label19.Caption;
 s_neiz:=label21.Caption;
 s_xarkt:=label11.Caption;
 s_namorg:=label29.Caption;
 s_namreg:=label3.Caption;
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

procedure TFTexGur.ToolButton6Click(Sender: TObject);
begin
  S_ksm := drugEdit.texGurLoad.FieldByName('Ksm_id').AsInteger;
  if (FOstSyr = nil) then
    FOstSyr := TFOstSyr.Create(Application);
  FOstSyr.DateEdit3.Date := strtodate(s_dat1);
  FOstSyr.DateEdit4.Date := strtodate(s_dat2);
  FOstSyr.ShowModal;
end;

procedure TFTexGur.SpeedButton1Click(Sender: TObject);
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
            drugEdit := TDrugReportEdit.Create(dm, vStruk_Id);
          drugEdit.loadTexGurLoad(true, mes, god, refer.spprod.FieldByName('ksm_id').AsInteger,
                                  refer.spprod.FieldByName('kei_id').AsInteger,
                                  refer.spprod.FieldByName('nmat').AsString, s_seria);
          ds_texGur.DataSet := drugEdit.texGurLoad;
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

procedure TFTexGur.SpeedButton2Click(Sender: TObject);
begin
  if (refer = nil) then
    refer := TReferance.Create(dm);
  if (refer.openSpprodSpr(vStruk_Id)) then
  begin
    loadPrepInfo(refer.spprod.FieldByName('kod_prod').AsString);
  end;
end;

procedure TFTexGur.SpeedButton3Click(Sender: TObject);
begin
  setDateLoad;
end;

procedure TFTexGur.SpeedButton4Click(Sender: TObject);
begin
  acceptAndLoadSeria;
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
  s_seria := edit_seria.Text;

  initToolButtons;
  if (edit_kodProd.Text <> '') then
    loadTexGur(s_seria, label19.Caption, god, mes, s_kodp, vStruk_Id);

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
  if (edit_kodProd.Text <> '') then
    loadTexGur(s_seria, label19.Caption, god, mes, s_kodp, vStruk_Id);
end;

procedure TFTexGur.ToolButton4Click(Sender: TObject);
begin
  ksm_ov := 0;
  if (FAnalit1 = nil) then
    FAnalit1 := TFAnalit1.Create(Application);
  FAnalit1.ShowModal;
end;

ENd.
