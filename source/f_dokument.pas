unit f_dokument;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, DBCtrlsEh, Buttons,
  DBGridEh, ActnList, DB, ComCtrls, ToolWin, ToolEdit, RXDBCtrl, Math, StrUtils,
  RxDBComb, DBLookupEh, IBCustomDataSet, FR_Class, FR_DSet,
  FR_DBSet, Menus, IB, DateUtils, RxStrUtils, DBTables, frOLEExl,FmtBCD,
  FR_DCtrl, Grids, dbcgrids, UtilRIB, VCLUtils, FR_IBXDB, UtilG, FR_Pars,
  DBGrids, StdActns, kbmMemTable, DBActns, FileUtil, RxShell, TypInfo;

type
  TFDokument = class(TForm)
    ActionList1: TActionList;
    APost: TAction;
    ACancel: TAction;
    AAddMaterial: TAction;
    ADeleteMaterial: TAction;
    AEditMaterial: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ToolBar2: TToolBar;
    ToolButton6: TToolButton;
    Panel2: TPanel;
    LTitle: TLabel;
    LabelNDOK: TLabel;
    LabelDATE_DOK: TLabel;
    LabelKLIENT_ID: TLabel;
    LabelDATE_OP: TLabel;
    LabelDOK_OSN_ID: TLabel;
    LabelKPV: TLabel;
    LabelVP_ID: TLabel;
    LabelNDS: TLabel;
    Bevel2: TBevel;
    EditNDOK: TDBEditEh;
    EditKLIENT_ID: TDBEditEh;
    EditKPV: TDBEditEh;
    EditVP_ID: TDBEditEh;
    EditNDS: TDBEditEh;
    EditDATE_DOK: TDBDateEdit;
    EditDATE_OP: TDBDateEdit;
    EditDOK_OSN_ID_LOOKUP: TRxDBComboEdit;
    EditKLIENT_ID_LOOKUP: TRxDBComboEdit;
    EditVP_ID_LOOKUP: TRxDBComboEdit;
    Panel1: TPanel;
    DBGridEh2: TDBGridEh;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    Panel5: TPanel;
    Panel6: TPanel;
    RxDBComboEdit1: TRxDBComboEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RxDBComboEdit2: TRxDBComboEdit;
    Label6: TLabel;
    Label8: TLabel;
    DBEditEh2: TDBEditEh;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    DBEditEh10: TDBEditEh;
    DBEditEh11: TDBEditEh;
    DBEditEh12: TDBEditEh;
    DBEditEh13: TDBEditEh;
    DBEditEh15: TDBEditEh;
    DBEditEh16: TDBEditEh;
    DBEditEh17: TDBEditEh;
    DBEditEh18: TDBEditEh;
    DBDateEdit2: TDBDateEdit;
    DBEditEh14: TDBEditEh;
    Label28: TLabel;
    DBEditEh19: TDBEditEh;
    CheckBox1: TCheckBox;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    APrintDok: TAction;
    frDBDataSet1: TfrDBDataSet;
    ToolButton8: TToolButton;
    RxDBComboEdit3: TRxDBComboEdit;
    RxDBComboEdit4: TRxDBComboEdit;
    RxDBComboEdit5: TRxDBComboEdit;
    DBEditEh20: TDBEditEh;
    Label5: TLabel;
    DBEditEh21: TDBEditEh;
    Label7: TLabel;
    Label30: TLabel;
    DBDateEdit3: TDBDateEdit;
    ComboBox1: TComboBox;
    DBEditEh23: TDBEditEh;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    Label29: TLabel;
    DBEditEh22: TDBEditEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    PopupMenu2: TPopupMenu;
    AddMaterial1: TMenuItem;
    EditMaterial1: TMenuItem;
    DeleteMaterial1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Label31: TLabel;
    DBEditEh24: TDBEditEh;
    RxDBComboEdit6: TRxDBComboEdit;
    frReport1: TfrReport;
    RxDBComboEdit7: TRxDBComboEdit;
    N6: TMenuItem;
    ToolButton1: TToolButton;
    N7: TMenuItem;
    Splitter1: TSplitter;
    ToolButton2: TToolButton;
    lida: TTable;
    frOLEExcelExport1: TfrOLEExcelExport;
    DBGridEh4: TDBGridEh;
    frDBDataSet2: TfrDBDataSet;
    frDBDataSet3: TfrDBDataSet;
    frDBDataSet4: TfrDBDataSet;
    frDialogControls1: TfrDialogControls;
    SpeedButton1: TSpeedButton;
    DBCtrlGrid1: TDBCtrlGrid;
    LabelPARAM_NAME: TDBEdit;
    EditPARAM_VALUE: TDBEditEh;
    ToolButton9: TToolButton;
    N8: TMenuItem;
    AUpdateMaterial: TAction;
    N9: TMenuItem;
    Label32: TLabel;
    DBEditEh1: TDBEditEh;
    frDBDataSet5: TfrDBDataSet;
    frIBXComponents1: TfrIBXComponents;
    LabelSTRUK_ID: TLabel;
    EditSTRUK_ID: TDBEditEh;
    EditSTRUK_ID_LOOKUP: TRxDBComboEdit;
    SpeedButton2: TSpeedButton;
    PageControl2: TPageControl;
    Kart: TTabSheet;
    KartV: TTabSheet;
    Uslugi: TTabSheet;
    DBGridEh5: TDBGridEh;
    EditDOK_OSN_ID: TDBEditEh;
    LabelSUM_ISP1_VP: TLabel;
    EditSUM_ISP1_VP: TDBEditEh;
    Splitter2: TSplitter;
    ToolButton10: TToolButton;
    LabelSUM_VP: TLabel;
    EditSUM_VP: TDBEditEh;
    AFormPo: TAction;
    ToolButton11: TToolButton;
    N10: TMenuItem;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    N11: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    LabelSUM_BRB: TLabel;
    EditSUM_BRB: TDBEditEh;
    ACopy: TAction;
    FieldsDoc: TkbmMemTable;
    FieldsDocFieldName: TStringField;
    FieldsDocFieldValue: TStringField;
    ToolButton12: TToolButton;
    N12: TMenuItem;
    AFormAkt: TAction;
    ToolButton13: TToolButton;
    N13: TMenuItem;
    DBGridEh3: TDBGridEh;
    DBGridEh6: TDBGridEh;
    PopupMenu3: TPopupMenu;
    N14: TMenuItem;
    N15: TMenuItem;
    ActionList2: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    Panel7: TPanel;
    ToolBar1: TToolBar;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    Dog_Bde: TTable;
    DBDateEdit1: TDBDateEdit;
    RxDBComboEdit8: TRxDBComboEdit;
    Label22: TLabel;
    Label33: TLabel;
    DBEditEh25: TDBEditEh;
    Label34: TLabel;
    Button1: TButton;
    AFormChetf: TAction;
    ToolButton16: TToolButton;
    N16: TMenuItem;
    frReport2: TfrReport;
    ALog: TAction;
    ToolButton17: TToolButton;
    raznost: TTable;
    raznostKSM_ID: TFloatField;
    raznostRAZNOST: TFloatField;
    lidaKSM_ID: TFloatField;
    lidaNUM: TFloatField;
    lidaSTRUK_NPP: TSmallintField;
    lidaKSM_ID_OLD: TStringField;
    lidaNMAT: TStringField;
    lidaED_IZM: TStringField;
    lidaACCOUNT: TStringField;
    lidaCENA: TFloatField;
    lidaKOL: TFloatField;
    lidaSUMMA: TFloatField;
    lidaNAM_STRUK: TStringField;
    lidaMOL: TStringField;
    lidaKEI_ID: TSmallintField;
    lidaACC: TStringField;
    lidaPRMAT: TStringField;
    lidaGR: TStringField;
    lidaPGR: TStringField;
    ATara: TAction;
    ToolButton18: TToolButton;
    N17: TMenuItem;
    Dvig: TTable;
    DvigKART_ID: TFloatField;
    DvigKSM_ID: TFloatField;
    DvigKOL_RASH: TFloatField;
    DvigTIP_OP_ID: TFloatField;
    DvigTIP_DOK_ID: TFloatField;
    procedure DBGridEh4Columns22EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh3Columns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns21EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure APostExecute(Sender: TObject);
    procedure ACancelExecute(Sender: TObject);
    procedure AAddMaterialExecute(Sender: TObject);
    procedure EditKLIENT_ID_LOOKUPButtonClick(Sender: TObject);
    procedure DBGridEh2Columns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure EditNDOKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditVP_ID_LOOKUPButtonClick(Sender: TObject);
    procedure DBEditEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ADeleteMaterialExecute(Sender: TObject);
    procedure DBGridEh2Columns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure APrintDokExecute(Sender: TObject);
    procedure AEditMaterialExecute(Sender: TObject);
    procedure EditDOK_OSN_ID_LOOKUPButtonClick(Sender: TObject);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure RxDBComboEdit3ButtonClick(Sender: TObject);
    procedure RxDBComboEdit2ButtonClick(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure frReport1BeginBand(Band: TfrBand);
    procedure N1Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure RxDBComboEdit6ButtonClick(Sender: TObject);
    procedure EditDATE_OPChange(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure BitBtn1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure WritePrihod(var ID: Integer);
    procedure ToolButton2Click(Sender: TObject);
    procedure DBGridEh2SortMarkingChanged(Sender: TObject);
    procedure DBGridEh4SortMarkingChanged(Sender: TObject);
    procedure PrihDragMet;
    procedure EditPARAM_VALUEEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure EditPARAM_VALUEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AUpdateMaterialExecute(Sender: TObject);
    procedure DBGridEh4Columns3EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh4Columns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure VisibleKart;
    procedure TTNKlient(Sender: TField);
    procedure TTNStruk(Sender: TField);
    procedure VisibleParam;
    procedure FormRazr(dok_osn_id :integer);
    procedure FormNakl;
    procedure PrihOC;
    procedure DocumentKPVChange(Sender: TField);
    procedure DocumentNDSChange(Sender: TField);
    procedure DocumentVP_IDChange(Sender: TField);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant;
      var Val: Variant);
    procedure FormSumString;
    procedure EditSTRUK_ID_LOOKUPButtonClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh3Columns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormPanelDocum;
    procedure DBGridEh5Columns7EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormPasportDov;
    procedure ToolButton10Click(Sender: TObject);
    procedure AFormPoExecute(Sender: TObject);
    procedure DBGridEh5Columns11EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure ACopyExecute(Sender: TObject);
    procedure AFormAktExecute(Sender: TObject);
    procedure DBGridEh2Columns5EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh4Columns26EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns23EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh6Columns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh6Columns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh6Columns5EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns24EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh4Columns30EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    function CheckDocument(): integer;
    procedure DBGridEh2Columns22EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns8UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns24UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns7EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure EditNDOKUpdateData(Sender: TObject; var Handled: Boolean);
    procedure AFormChetfExecute(Sender: TObject);
    procedure DBGridEh2Columns35EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns8EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure ALogExecute(Sender: TObject);
    procedure ATaraExecute(Sender: TObject);
    procedure DBGridEh4Columns13UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);

  private
    OldCursor: TCursor;
    PrintMode: integer;      // 1 - узкая 2 - широкая 3 - с гр. наценки
    procedure DisableEdits();
    procedure TTNReadOnly(ReadOnly: Boolean);
    procedure FormStrok;
    function GetSaveOst: Integer;
    procedure PrintDogOtgr;
    procedure WriteOldDog;
    procedure Izm_Cen_Razr;
    function CheckDocument_Print: integer;
    procedure PostTTN;
    procedure ApplyUser(Form: TForm);
    procedure WriteParamRazr;
    { Private declarations }
  public
    Mode: integer; // 1 - append 2 - modify
    KolOld: double;
    EdIzmOld: String;
    Dokument_id: integer;
    function GridEhFieldByName(Grid: TDBGridEh; FieldName: string):TField;
    function GridEhColumnByName(Grid: TDBGridEh; FieldName: string):TColumnEh;
    { Public declarations }
  end;


var
  FDokument: TFDokument;
  Cancel : Boolean;
  Usl_Ordn:String;
  SumAll, SumNds, Summa, Kolmest, netto_str, nds_str, k_mest, brutto_str: string;
  Sum_All,Sum_Nds, Sum_ma, kol_mest, brutto, netto, nds,page_n,tnved_par : Integer;
  Sum_Cop : integer;
  FParent : TWinControl;

implementation

uses d_m,  f_ostatki,  f_vvod, f_dialog, f_infmat,
  f_specif, f_lookup, f_sklad, f_dok_osn, Find_Spprod, Find_Matrop,
  Find_Sprorg, Find_Struk, Find_Kadry, F_AktPriem, Price_Prot, Inv_Kart,
  Add_Sub, FindUtils, Ik, VibKart, FormRazr, DataModule, RaschetMM, Log, f_tara;

{$R *.dfm}

procedure TFDokument.FormShow(Sender: TObject);
begin
  ApplyUser(FDokument);
  OldCursor:=Screen.Cursor;
  Screen.Cursor:=crHourGlass;
  try
    // Определяем раздел
    DM.IBMatr_pr.Open;
    DM.IBMatr_pr.Locate('PRMAT',DM.MATRPR,[]);
    //--- Проверка данных для прихода от постащиков ---//
    //--- для совместимости со старой задачей по обработке приходов ---//
    if (DM.MODE <> 2) and (DM.QueryTipDokTIP_DOK_ID.AsInteger = 6) and (Mode = 2)
      and (dm.QueryViewDokumSTRUK_ID.AsInteger = 6) then
    begin
      DM.Prihod.Active := False;
      DM.Prihod.SQL.Clear;
      DM.Prihod.SQL.Add('SELECT Opl_Val FROM ":Prihod:Prix.DBF" WHERE POST_ID = '+
      IntToStr(DM.QueryViewDokum.FieldByName('Klient_Id').AsInteger)+
      ' AND NDOK = '+''''+DM.QueryViewDokum.FieldByName('Ndok').AsString+''''+
      ' AND DATA_PR = '+''''+DM.QueryViewDokum.FieldByName('Date_Dok').AsString+''''+
      ' AND Opl_Val<>0 ');
      DM.Prihod.Active := True;
      // Если приход оплачен - только просмотр
      If DM.Prihod.RecordCount<>0 then
      begin
        DM.MODE := 2;
        MessageDlg('Документ оплачен! Только просмотр!', mtWarning, [mbOK], 0);
      end
      else
        DM.MODE := 1;
    end;
    if Mode<>1 then
    begin
      DM.Query.Close;
      DM.Query.SQL.Clear;
      DM.Query.SQL.Add('select count(jurnal_oplat.prov_id_doc) Kol_Opl from jurnal_oplat '+
        ' inner join book2 on jurnal_oplat.prov_id_doc=book2.prov_id '+
        ' where book2.doc_id = '+DM.QueryViewDokum.FieldByName('DOC_ID').AsString);
      DM.Query.Open;
      if DM.Query.FieldByName('Kol_Opl').AsInteger>0 then
      begin
        DM.MODE := 2;
        MessageDlg('Документ оплачивался! Только просмотр!', mtWarning, [mbOK], 0);
      end;
      DM.Query.Close;
    end;
    if (DM.GruppaOper = 0) then
    begin
      if DM.QueryTipDokTIP_DOK_ID.AsInteger = 42 then
        AEditMaterial.Visible := true
      else
        AEditMaterial.Visible := false;
    end
    else
      AEditMaterial.Visible := true;
    // Если режим просмотра или операция - приход с другого склада, то
    if (DM.MODE=2) then
    begin
      AAddMaterial.Enabled:=False;
      ADeleteMaterial.Enabled:=False;
      AUpdateMaterial.Enabled:=False;
      APost.Enabled:=False;
      AFormPo.Enabled := false;
      AFormAkt.Enabled := false;
      AFormChetf.Enabled := false;
      ACopy.Enabled := false;
      ToolButton1.Enabled :=False;
      DBGridEh2.ReadOnly := True;
      DBGridEh4.ReadOnly := TRue;
    end
    else
    begin
      AAddMaterial.Enabled:=True;
      ADeleteMaterial.Enabled:=True;
      APost.Enabled:=True;
      AUpdateMaterial.Enabled:=True;
      AFormPo.Enabled := true;
      AFormAkt.Enabled := true;
      AFormChetf.Enabled := true;
      ACopy.Enabled := true;
      ToolButton1.Enabled :=True;
      DBGridEh2.ReadOnly := False;
      DBGridEh4.ReadOnly := False;
    end;
   // Кнопка 'печать'
    if DM.QueryTipDokPrintDok.AsInteger=1 then
      ToolButton7.Visible:=True
    else ToolButton7.Visible:=False;
   // Если документ - накладная,включаем таб с реквизитами ТТН
    if DM.QueryTipDokTTN.AsInteger = 1 then
    begin
      TabSheet2.TabVisible:=True;
      PageControl1.TabHeight:=0;
      PageControl1.TabWidth:=0;
      ComboBox1.ItemIndex:=0;
      Edit1.Text:='';
    end
    else
    begin
      TabSheet2.TabVisible:=False;
      PageControl1.TabWidth:=1;
      PageControl1.TabHeight:=1;
    end;
    PageControl1.ActivePage:=TabSheet1;
    // Если операция = Возврат брака, показываем панель с реквизитами брака
    if DM.QueryTipOperTIP_OP_ID.AsInteger=4 then
    begin
      Panel6.Visible:=True;
    end
    else
      Panel6.Visible:=False;
    // Если операция = Ввод остатков, показываем кнопку Занесение из номенклатуры
    if DM.QueryTipOperTIP_OP_ID.AsInteger=21 then
    begin
      ToolButton2.Visible:=True;
    end
    else ToolButton2.Visible:=False;
    //Формирование приходного ордера
    if DM.QueryTipDokTIP_DOK_ID.AsInteger <> 4 then
      AFormPo.Visible := false
    else AFormPo.Visible := true;
    //Формирование счет-фактуры на гот.продукцию
    if DM.QueryTipOperTIP_OP_ID.AsInteger <> 7 then
      AFormChetf.Visible := false
    else AFormChetf.Visible := true;
    //Формирование Акта ОС-3
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select count(tip_dok_id) coun from rk_vmod_os where tip_dok_id_osn= '+DM.QueryTipDokTIP_DOK_ID.AsString);
    DM.Query.Open;
    if DM.Query.FieldByName('coun').AsInteger=0 then
  //  if DM.QueryTipDokTIP_DOK_ID.AsInteger <> 71 then
      AFormAkt.Visible := false
    else AFormAkt.Visible := true;
    //Формирование текста запроса для DOKUMENT
    // и видимых реквизитов шапки документа
    FormPanelDocum;
    case Mode of
      1:
      begin
        DM.Dokument.Append;
      end;
      2:
      begin
        DM.Dokument.Locate('DOC_ID',Dokument_id,[]);
      end;
    end;
    //Товарно-транспортная накладная
    if DM.QueryTipDokTTN.AsInteger = 1 then
    begin
      DM.TTN.Open;
      DM.Dokument.FieldByName('Klient_Id').OnValidate := TTNKlient;
      DM.Dokument.FieldByName('Struk_Id').OnValidate := TTNStruk;
    end
    else
    begin
      DM.Dokument.FieldByName('Klient_Id').OnValidate := nil;
      DM.Dokument.FieldByName('Struk_Id').OnValidate := nil;
    end;
    if DM.QueryTipDokTTN.AsInteger = 1 then
      if Mode=1 then
      begin
        DM.TTN.Append;
        TTNStruk(DM.Dokument.FindField('struk_id'));
        Edit1.Enabled:=True;
        ComboBox1.Enabled:=True;
        DateEdit1.Enabled:=True;
        SpeedButton1.Enabled:=True;
      end
      else
      begin
        DM.TTN.Edit;
      end;
    if DM.QueryTipDokTTN.AsInteger = 1 then
    begin
      DM.TTN_Stroki.Open;
    end;
    DM.KART.MacroByName('Usl_ORDn').AsString  := 'Kart.Stroka_Id';
    DM.KARTv.MacroByName('Usl_ORDn').AsString  := 'Kart.Stroka_Id';
    DM.KARTV.Open;
    DM.Kart.Open;
    DM.Uslugi.Open;
    VisibleKart;
    VisibleParam;
    DM.Dokument.FieldByName('KPV').OnChange := DocumentKPVChange;
    DM.Dokument.FieldByName('NDS').OnChange := DocumentNDSChange;
    DM.Dokument.FieldByName('VP_ID').OnChange := DocumentVP_IDChange;
    //Добавляем строки из документа основания
     if Mode=1 then
       if DM.Dokument.FieldByName('Dok_Osn_Id').AsInteger<> 0 then FormStrok;
  finally
    Screen.Cursor:=OldCursor;
  end;
  if ((DM.QueryTipDokTIP_DOK_ID.AsInteger = 107) or (DM.QueryTipDokTIP_DOK_ID.AsInteger = 108)
  or  (DM.QueryTipDokTIP_DOK_ID.AsInteger = 112)  or (DM.QueryTipDokTIP_DOK_ID.AsInteger = 113)
  or (DM.QueryTipDokTIP_DOK_ID.AsInteger = 137)) then
  begin
    DM.Doc_Tam_Pl.Active := true;
    Panel7.Height := 164;
    Panel7.Visible := true;
  end
  else Panel7.Visible := false;
  FDokument.WindowState := wsMaximized;
  Bevel2.Width := Panel2.Width;
  if EditNdok.Enabled = False then
  begin
    EditNdok.Enabled := True;
    EditNdok.ReadOnly := True;
  end
  else
    EditNdok.ReadOnly := false;
  //Возвратную тару добавляем для спецификаций, разовых договоров, разрешений
  if ((DM.QueryTipDokTIP_DOK_ID.AsInteger = 12) or (DM.QueryTipDokTIP_DOK_ID.AsInteger = 23)
    or (DM.QueryTipDokTIP_DOK_ID.AsInteger = 89)) then
  begin
    ATara.Visible := true;
  end
  else
  begin
    ATara.Visible := false;
  end;
  DM.Dokument.Edit;
  EditNdok.SetFocus;
end;

procedure TFDokument.FormPanelDocum;
//Процедура формирует текст запроса DOKUMENT
//Формирует видимые реквизиты шапки документа
var SelectString: string;
    EditTop1,EditTop2: integer;
    CurComponent: TComponent;
    CurEditName: string;
    CurTabOrder: integer;
    LeftPos : integer;
    WidthKlient_id : integer;
begin
   DM.Dokument.DisableControls;
   DisableEdits;
   DM.QueryDokOper.Close;
   DM.QueryDokOper.ParamByName('TIPOP').AsInteger:=DM.QueryTipOperTIP_OP_ID.AsInteger;
   DM.QueryDokOper.ParamByName('TIPDOK').AsInteger:=DM.QueryTipDokTIP_DOK_ID.AsInteger;

    DM.QueryDokOper.Open;
    SelectString:='SELECT Doc.NDOK, Doc.DOC_ID, Doc.TIP_OP_ID, Doc.TIP_DOK_ID, Doc.DATE_DOK, Doc.DOK_OSN_ID, '
                  +'Doc.STRUK_ID, Doc.VP_ID, Doc.KPV, Doc.KLIENT_ID, Doc.SUM_BRB, '
                  +'Doc.SUM_VP, Doc.NDS, Doc.SUM_NDS, Doc.SUM_NDS_VP, Doc.DATE_OP, '
                  +'Doc.DATE_VVOD, Doc.ZADACHA_ID, Doc.JORN_ID ID, Doc.DOV, Doc.SUM_ISP1, Doc.SUM_ISP1_VP, Doc.SUM_ISP2, Doc.SUM_ISP2_VP ';
    DM.QueryDokOper.First;
    while not DM.QueryDokOper.Eof do
    begin
      if Trim(DM.QueryDokOperLOOKUP.AsString)<>'' then
        SelectString:=SelectString+', '+Trim(DM.QueryDokOperLOOKUP.AsString)
        +Trim(DM.QueryDokOperRESULT_FIELD.AsString)+'.'+Trim(DM.QueryDokOperRESULT_FIELD.AsString)
        +' '+Trim(DM.QueryDokOperFIELD_DOK.AsString)+'_LOOKUP';
      DM.QueryDokOper.Next;
    end;

    DM.QueryDokOper.First;
    SelectString:=SelectString+' FROM Document Doc';

    while not DM.QueryDokOper.Eof do
    begin
      if Trim(DM.QueryDokOperLOOKUP.AsString)<>'' then
      begin
        SelectString:=SelectString+' LEFT JOIN '+Trim(DM.QueryDokOperLOOKUP.AsString)+' '+Trim(DM.QueryDokOperLOOKUP.AsString)+Trim(DM.QueryDokOperRESULT_FIELD.AsString)
        +' ON Doc.'+Trim(DM.QueryDokOperFIELD_DOK.AsString)
        +'='+Trim(DM.QueryDokOperLOOKUP.AsString)+Trim(DM.QueryDokOperRESULT_FIELD.AsString)+'.'+Trim(DM.QueryDokOperKEY_FIELD.AsString);
      end;
      DM.QueryDokOper.Next;
    end;
    SelectString:=SelectString+' WHERE Doc.Doc_id = '+IntToStr(Dokument_id);

    DM.Dokument.SQL.Text:=SelectString;
    DM.Dokument.Open;
    DM.Dokument.FieldByName('KLIENT_ID').Required := False;

  // Включаем эдитбоксы
    DM.QueryDokOper.First;
    EditTop1:=28;
    EditTop2:=28;
    CurTabOrder:=0;

    while not DM.QueryDokOper.Eof do
    begin
      CurEditName:='Edit'+Trim(DM.QueryDokOperFIELD_DOK.AsString);
      CurComponent:=FindComponent('Label'+Trim(DM.QueryDokOperFIELD_DOK.AsString));
      if CurComponent<>nil then
      begin
        (CurComponent as TLabel).Visible:=True;
        (CurComponent as TLabel).Caption:=DM.QueryDokOperDESCRIPTION.AsString;
        if  (CurComponent as TLabel).Left < (FDokument.Width div 2) then
          (CurComponent as TLabel).Top:=EditTop1
        else (CurComponent as TLabel).Top:=EditTop2;
      end;
      repeat
        CurComponent:=FindComponent(CurEditName);
        if CurComponent<>nil then
        begin
          if CurEditName ='Edit'+Trim(DM.QueryDokOperFIELD_DOK.AsString)+'_LOOKUP' then
          begin
            (CurComponent as TControl).Top:=EditTop1-22;
            (CurComponent as TWinControl).TabOrder:=CurTabOrder;
            Inc(CurTabOrder);
          end
          else
          begin
            if (CurComponent as TControl).Left < (FDokument.Width div 2) then
            begin
              (CurComponent as TControl).Top:=EditTop1;
              (CurComponent as TWinControl).TabOrder:=CurTabOrder;
              Inc(CurTabOrder);
              EditTop1:=EditTop1+22;
            end
            else
            begin
              (CurComponent as TControl).Top:=EditTop2;
              EditTop2:=EditTop2+22;
            end;
          end;
          if CurComponent is TDBEditEh then
          begin
            (CurComponent as TDBEditEh).DataSource:=DM.DS_Dokument;
            (CurComponent as TDBEditEh).Visible:=True;
            if DM.MODE = 2 then (CurComponent as TDBEditEh).Enabled := False
            else (CurComponent as TDBEditEh).Enabled := True;
          end else
          if CurComponent is TDBDateEdit then
          begin
            (CurComponent as TDBDateEdit).DataSource:=DM.DS_Dokument;
            (CurComponent as TDBDateEdit).Visible:=True;
            if DM.MODE = 2 then (CurComponent as TDBDateEdit).Enabled := False
            else (CurComponent as TDBDateEdit).Enabled := True;
          end else
          if CurComponent is TRxDBComboEdit then
          begin
            (CurComponent as TRxDBComboEdit).DataSource:=DM.DS_Dokument;
            (CurComponent as TRxDBComboEdit).Visible:=True;
            if DM.MODE = 2 then (CurComponent as TRxDBComboEdit).Enabled := False
            else (CurComponent as TRxDBComboEdit).Enabled := True;
          end;
        end;
        //Не показывем код для  строк, SHOW_KLIENT_ID = 1
        if (DM.QueryDokOperSHOW_KLIENT_ID.AsInteger = 1) then
        begin
          if (CurComponent is TDBEditEh) then
          begin
            LeftPos := (CurComponent as TControl).Left;
            (CurComponent as TControl).Visible := false;
          end
          else
          if CurComponent is TRxDBComboEdit then
            (CurComponent as TControl).Left := LeftPos;
        end
        else
        begin
          if (CurComponent is TDBEditEh) and (UPPERCASE(CurComponent.Name) = UPPERCASE('EditKlient_id')) then
          begin
            WidthKlient_id := (CurComponent as TControl).Left+(CurComponent as TControl).Width+1;
            (CurComponent as TControl).Visible := true;
          end
          else
          if (CurComponent is TRxDBComboEdit) and (UPPERCASE(CurComponent.Name) = UPPERCASE('EditKlient_id_LOOKUP'))  then
            (CurComponent as TControl).Left := WidthKlient_id;
        end;
        CurEditName:=CurEditName+'_LOOKUP';
      until (DM.QueryDokOperLOOKUP.AsVariant=NULL) or (CurEditName='Edit'+Trim(DM.QueryDokOperFIELD_DOK.AsString)+'_LOOKUP_LOOKUP');
      DM.QueryDokOper.Next;
    end;
    Panel2.Height:=IfThen((EditTop1>EditTop2),EditTop1,EditTop2);
    DM.Dokument.EnableControls;
end;

procedure TFDokument.VisibleKart;
//Процедура определяет столбцы, которые будут видны
//в GRID KART или KARTV
var
  i: integer;
begin
  // Если документ меняет наличие материалов GRID - Kart
  // Если документ не меняет наличие материалов GRID - KartV
  // Для документов по услугам - GRID - USLUGI
  Panel1.Visible := true;
  DBCtrlGrid1.Align := alBottom;
  if (DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 1) then
  // Работаем c KART
  begin
    DBGridEh2.Parent := Panel1;
    DBGridEh5.Visible := false;
    DBGridEh4.Visible := false;
    DBGridEh2.Visible := True;
    PageControl2.Visible := False;
  end
  else
  if ((DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 0)and
     (DM.QueryTipDokPRIZ_USLUGI.AsInteger <> 1)) then
  // Работаем c KARTV
  begin
    DBGridEh4.Parent := Panel1;
    DBGridEh5.Visible := false;
    DBGridEh2.Visible := false;
    DBGridEh4.Visible := True;
    PageControl2.Visible := False;
    if DM.QueryTipDokTTN.AsInteger = 1 then DBGridEh1.Visible := False;
  end
  else
  if (DM.QueryTipDokPRIZ_USLUGI.AsInteger = 1) then
  // Работаем с USLUGI
  begin
    DBGridEh5.Parent := Panel1;
    DBGridEh2.Visible := false;
    DBGridEh4.Visible := false;
    DBGridEh5.Visible := True;
    PageControl2.Visible := False;
  end;
  // Определяем столбцы  в Kart или KartV или USLUGI
  DM.Query.Active := False;
  DM.Query.SQL.Clear;
  DM.Query.SQL.Add('SELECT padright(Field_name, 20,'+''''+' '+''''+') Field_name FROM DOC_KART Where Tip_Dok_Id = '+IntToStr(DM.QueryTipDokTIP_DOK_ID.AsInteger));
  DM.Query.Active := True;
  DM.Query.First;
  if DM.Query.RecordCount>0 then
  begin
    if (DM.QueryTipDokPRIZ_USLUGI.AsInteger = 1) then
    begin  //Услуги USLUGI
      for I := 0 to DBGridEh5.Columns.Count-1 do
      begin
        if DM.Query.Locate('Field_name',LeftStr(DBGridEh5.Columns[i].FieldName,20),[]) then
        begin
          DBGridEh5.Columns[i].Visible := True;
        end
        else
          DBGridEh5.Columns[i].Visible := False;
      end;
    end
    else
    if (DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 0) then
    begin  //Прочие материалы KartV
      for I := 0 to DBGridEh4.Columns.Count-1 do
      begin
        if DM.Query.Locate('Field_name',LeftStr(DBGridEh4.Columns[i].FieldName,20),[]) then
        begin
          DBGridEh4.Columns[i].Visible := True;
          if DBGridEh4.Columns[i].FieldName='TAG' then
            if DM.QueryTipOperTIP_OP_ID.AsInteger = 78 then
            //Передача электронного оборудования
              DBGridEh4.Columns[i].Title.Caption := 'Инв.номер'
            else
            if DM.QueryTipOperTIP_OP_ID.AsInteger = 40 then
            //посупление ОС
              DBGridEh4.Columns[i].Title.Caption := 'Шифр'
            else
              DBGridEh4.Columns[i].Title.Caption := 'Кол.мест';
        end
        else
          DBGridEh4.Columns[i].Visible := False;
      end;
    end
    else
    begin  //Основные документы  KART
      for I := 0 to DBGridEh2.Columns.Count-1 do
      begin
        if DM.Query.Locate('Field_name',LeftStr(DBGridEh2.Columns[i].FieldName,20),[]) then
          DBGridEh2.Columns[i].Visible := True
        else
          DBGridEh2.Columns[i].Visible := False;
            //Бланки
        if DBGridEh2.Columns[i].FieldName='TAG' then
          if DM.QueryTipOperIS_BSO.AsInteger=1 then
            DBGridEh2.Columns[i].Title.Caption := 'Номера с '
          else
          if DM.QueryTipDokTTN.AsInteger=1 then
            DBGridEh2.Columns[i].Title.Caption := 'Кол.мест  '
      end;
    end;
  end
  else
  begin
    //Не определены столбцы
    DBGridEh2.Visible := false;
    DBGridEh4.Visible := false;
    DBGridEh5.Visible := false;
    Panel1.Visible := false;
    DBCtrlGrid1.Align := alTop;
  end;
  If DM.MATRPR = '05' then  //Готовая продукция
  begin
    FDokument.GridEhColumnByName(DBGridEh2,'KOD_PROD').Visible:=True;
    FDokument.GridEhColumnByName(DBGridEh2,'KSM_ID').Visible:=False;
    FDokument.GridEhColumnByName(DBGridEh4,'KOD_PROD').Visible:=True;
    FDokument.GridEhColumnByName(DBGridEh4,'KSM_ID').Visible:=False;
  end
  else
  begin
    FDokument.GridEhColumnByName(DBGridEh2,'KOD_PROD').Visible:=False;
    FDokument.GridEhColumnByName(DBGridEh2,'KSM_ID').Visible:=True;
    FDokument.GridEhColumnByName(DBGridEh4,'KOD_PROD').Visible:=False;
    FDokument.GridEhColumnByName(DBGridEh4,'KSM_ID').Visible:=True;
  end;  
  // Если посерийный учет - материал корретировать нельзя
  if DM.YESSERIA then
  begin
    FDokument.GridEhColumnByName(DBGridEh2,'KSM_ID').ReadOnly :=True;
 //   FDokument.GridEhColumnByName(DBGridEh4,'KSM_ID').ReadOnly :=True;
  end
  else
  begin
    FDokument.GridEhColumnByName(DBGridEh2,'KSM_ID').ReadOnly :=False;
//    FDokument.GridEhColumnByName(DBGridEh4,'KSM_ID').ReadOnly :=False;
 //   FDokument.GridEhColumnByName(DBGridEh2,'SERIA').Visible:=False;
  end;
  // Если приходы, показываем в гриде KOL_PRIH, если расходы - KOL_RASH
  if DM.GruppaOper=1 then
  begin
    FDokument.GridEhColumnByName(DBGridEh2,'KOL_PRIH').Visible:=True;
    FDokument.GridEhColumnByName(DBGridEh2,'KOL_RASH').Visible:=False;
  end
  else
  if DM.GruppaOper=2 then
  begin
    FDokument.GridEhColumnByName(DBGridEh2,'KOL_RASH').Visible:=True;
    FDokument.GridEhColumnByName(DBGridEh2,'KOL_PRIH').Visible:=False;
  end;

 // Для поступления основных средств - только просмотр
//  if DM.QueryTipOperTIP_OP_ID.AsInteger=40 then DBGridEh2.ReadOnly := true;
end;

procedure TFDokument.VisibleParam;
//Процедура определяет наличие параметров у документа,
// тип параметров, (C или N)
//Заносит первоначальные значения, если параметры не заполнены
//Определяет какой GRID для вывода параметров показывать
//DBCtrlGrid1 -  для символьных параметров - DataSource - DOC_PARAM
//DBDBGridEh3 -  для числовых - DataSource - DOC_PARAMN
begin
  if DM.QueryTipDokCOUNT_PARAM.AsInteger <> 0 then
  begin
    //Текстовые параметры
    DM.Doc_Param.Open;
    DM.DOC_PARAM.FetchAll;
    If (DM.QueryTipDokCOUNT_PARAM.AsInteger>DM.Doc_Param.RecordCount) then
    begin
      DM.Query.Active := False;
      DM.Query.SQL.Clear;
      DM.Query.SQL.Add('SELECT doc_tip_param.Tip_Param_id,Param_Name, Default_Value, Lookup, Key_Field, Result_Field from Doc_Tip_Param '+
      ' left join doc_param on doc_param.tip_param_id=doc_tip_param.tip_param_id and doc_param.doc_id='+DM.Dokument.FieldByName('DOC_ID').AsString+
      ' Where DOC_TIP_PARAM.PARAM_TYPE = '+''''+'C'+''''+' and doc_tip_param.Tip_Dok_Id = '+IntToStr(DM.QueryTipDokTIP_DOK_ID.AsInteger)+
      ' and doc_param.tip_param_id is null');
      DM.Query.Active := True;
      DM.Query.First;
      While not DM.Query.Eof do
      begin
        DM.Doc_Param.Insert;
        DM.Doc_ParamDOC_ID.AsInteger := DM.Dokument.FieldByName('DOC_ID').AsInteger;
        DM.Doc_ParamTIP_PARAM_ID.AsInteger := DM.Query.FieldByName('Tip_Param_Id').AsInteger;
        DM.Doc_ParamPARAM_Name.AsString := DM.Query.FieldByName('Param_Name').AsString;
        DM.Doc_ParamPARAM_Value.AsString := DM.Query.FieldByName('Default_Value').AsString;
        DM.Doc_ParamLookup.AsString := DM.Query.FieldByName('Lookup').AsString;
        DM.Doc_ParamKey_Field.AsString := DM.Query.FieldByName('Key_Field').AsString;
        DM.Doc_ParamResult_Field.AsString := DM.Query.FieldByName('Result_Field').AsString;
        DM.Doc_Param.Post;
        DM.Query.Next;
      end;
      DM.Doc_Param.First;
    end;
    //Числовые параметры
    DM.Doc_ParamN.Open;
    DM.DOC_PARAMN.FetchAll;
    If DM.Doc_ParamN.RecordCount = 0 then
    begin
      DM.Query.Active := False;
      DM.Query.SQL.Clear;
      DM.Query.SQL.Add('SELECT Tip_Param_id,Param_Name, Default_Value, Lookup, Key_Field, Result_Field '+
      'from Doc_Tip_Param '+
      'Where DOC_TIP_PARAM.PARAM_TYPE = '+''''+'N'+''''+' and Tip_Dok_Id = '+IntToStr(DM.QueryTipDokTIP_DOK_ID.AsInteger));
      DM.Query.Active := True;
      DM.Query.First;
      While not DM.Query.Eof do
      begin
        DM.Doc_ParamN.Insert;
        DM.Doc_ParamNDOC_ID.AsInteger := DM.Dokument.FieldByName('DOC_ID').AsInteger;
        DM.Doc_ParamNTIP_PARAM_ID.AsInteger := DM.Query.FieldByName('Tip_Param_Id').AsInteger;
        DM.Doc_ParamNPARAM_Name.AsString := DM.Query.FieldByName('Param_Name').AsString;
        DM.Doc_ParamNPARAM_Value.AsString := DM.Query.FieldByName('Default_Value').AsString;
        DM.Doc_ParamNLookup.AsString := DM.Query.FieldByName('Lookup').AsString;
        DM.Doc_ParamNKey_Field.AsString := DM.Query.FieldByName('Key_Field').AsString;
        DM.Doc_ParamNResult_Field.AsString := DM.Query.FieldByName('Result_Field').AsString;
        DM.Doc_ParamN.Post;
        DM.Query.Next;
      end;
      DM.Doc_ParamN.First;
    end;
  end;
  DBGridEh3.Visible := False;
  DBCtrlGrid1.Visible := False;
  if DM.Doc_Param.RecordCount <> 0 then
  begin
    //Количество видимых строк параметров
    if DM.Doc_Param.RecordCount > 7 then
    begin
      if ((DM.QueryTipDokTIP_DOK_ID.AsInteger = 82) or (Screen.Height < 1000)) then
        DBCtrlGrid1.RowCount := 7
      else
        DBCtrlGrid1.RowCount := DM.Doc_Param.RecordCount;
    end
    else
       DBCtrlGrid1.RowCount := DM.Doc_Param.RecordCount;
    DBCtrlGrid1.Visible := True;
    //Позиция параметров на форме для услуг вверху
//    if (DM.QueryTipDokPRIZ_USLUGI.AsInteger = 1) then
    if ((DM.QueryTipDokTIP_DOK_ID.AsInteger = 72) or   //доверенность ГТД Доп.согол 
      (DM.QueryTipDokTIP_DOK_ID.AsInteger = 107) or
      (DM.QueryTipDokTIP_DOK_ID.AsInteger = 112) or
      (DM.QueryTipDokTIP_DOK_ID.AsInteger = 113) or
      (DM.QueryTipDokTIP_DOK_ID.AsInteger = 26)) then
    begin
      DBCtrlGrid1.Parent := Panel2;
      Panel2.Height := Panel2.Height+ DBCtrlGrid1.Height;
    end
    else
      DBCtrlGrid1.Parent := TabSheet1;
  end
  else
  begin
    DBCtrlGrid1.Visible := False;
  end;
  if DM.Doc_ParamN.RecordCount <> 0 then
  begin
    if DM.Doc_ParamN.RecordCount > 6 then
      DBGridEh3.Height := (6*18)+32
    else
      DBGridEh3.Height := DM.Doc_ParamN.RecordCount*18+32;
    DBGridEh3.Visible := True;
  end
  else
  begin
    DBGridEh3.Visible := False;
  end;
end;

procedure TFDokument.DocumentKPVChange(Sender: TField);
begin
  if ((DM.Kart.RecordCount = 0) and (DM.KARTV.RecordCount=0)
    and (DM.Dokument.FieldByName('Sum_Vp').AsFloat<>0)) then
  begin
    DM.Dokument.FieldByName('Sum_Brb').AsFloat := Round(DM.Dokument.FieldByName('Sum_Vp').AsFloat*DM.Dokument.FieldByName('Kpv').AsFloat);
    DM.Dokument.FieldByName('Sum_Nds').AsFloat := Round(DM.Dokument.FieldByName('Sum_Nds_Vp').AsFloat*DM.Dokument.FieldByName('Kpv').AsFloat);
  end;
  if KPVChange(DM.Dokument.FieldByName('KPV').AsFloat, DM.Kart, DM.KARTV,DM.UMC_DATA, DM.Dokument.FieldByName('VP_ID').AsInteger) <> 0 then
    abort;
   if DM.Uslugi.Active then
   begin
     DM.Uslugi.First;
     while not DM.Uslugi.eof do DM.Uslugi.Next;
     if DBGridEh5.Visible then
     begin
       DBGridEh5.SumList.Active := false;
       DBGridEh5.SumList.Active := true;
     end;
   end;
end;

procedure TFDokument.DocumentNDSChange(Sender: TField);
begin
  if DM.Kart.RecordCount>0 then
    IzmNds(DM.Kart, DM.Dokument.FieldByName('Nds').AsFloat);
  if DM.KartV.RecordCount>0 then
    IzmNds(DM.KartV, DM.Dokument.FieldByName('Nds').AsFloat);
  if DM.Uslugi.RecordCount>0 then
    IzmNds(DM.Uslugi, DM.Dokument.FieldByName('Nds').AsFloat);
end;

procedure TFDokument.DocumentVP_IDChange(Sender: TField);
begin
  if DM.Dokument.FieldByName('VP_ID').AsInteger <> 1 then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='select first 1 kurs, date_kurs from kursval where val = '+DM.Dokument.FieldByName('VP_ID').AsString+
      ' and date_kurs <= '+''''+DM.Dokument.FieldByName('Date_Dok').AsString+''''+
      ' order by date_kurs desc ' ;
    DM.Query.Open;
    DM.Dokument.FieldByName('KPV').AsFloat :=DM.Query.fieldByName('KURS').AsFloat;
  end;
end;

procedure TFDokument.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Ok: integer;
  CheckResult: Integer;
begin
//  if ((DM.QueryTipOperTIP_OP_ID.AsInteger = 7) and (DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 1)) then    //Проверка на заполнение разрешения
//  begin
//    if DM.Doc_Param.Locate('RESULT_FIELD','NDOKRAZR',[loPartialKey]) then
//    begin
//      if DM.Doc_ParamKOD.AsInteger = 0 then
//        MessageDlg('Не выбрано разрешение на отгрузку!', mtWarning, [mbOK], 0);
//    end;
//  end;
  CheckResult:=CheckDocument();
  if (CheckResult = 0) or (DM.MODE=2)  then  //Возможность менять документ - основание для отгрузки
    Ok:=mrNo
  else
  begin
    begin
      if Cancel then // Нажата кнопка Cancel
        Ok:=FDialog.Execute('Отменить изменения?',True)
      else
        Ok:=FDialog.Execute('Записать изменения?',True);
    end;
    if Cancel then //Изменяем назначение кнопок, если нажата кнопка Cancel
      if Ok = mrYes then Ok := mrNo
      else Ok := mrYes;
    Cancel := False;
    if Ok=mrYes then
    begin
      APost.Execute;
    end
    else
    begin
      DM.Kart.Cancel;
      DM.Kart.CancelUpdates;
      if DM.QueryTipDokTTN.AsInteger = 1 then
      begin
        DM.TTN_Stroki.Cancel;
        DM.TTN_Stroki.CancelUpdates;
         DM.TTN.Cancel;
        DM.TTN.CancelUpdates;
      end;
      DM.Dokument.Cancel;
      DM.Dokument.CancelUpdates;
      if DM.DOG.Active then
      begin
        DM.DOG.CancelUpdates;
      end;
      if DM.Doc_Param.Active  then
        DM.Doc_Param.CancelUpdates;
      if DM.Doc_ParamN.Active  then
        DM.Doc_ParamN.CancelUpdates;
      if DM.KARTV.Active then
        DM.KARTV.CancelUpdates;
      if DM.Uslugi.Active then
        DM.Uslugi.CancelUpdates;
    end;
  end;
  DisableEdits;
  Dokument_ID:=DM.Dokument.FieldByName('DOC_ID').AsInteger;
  DM.Doc_Param.Close;
  DM.Doc_ParamN.Close;
  DM.Kart.Close;
  DM.KARTV.Close;
  DM.TTN.Close;
  DM.TTN_Stroki.Close;
  DM.Uslugi.Close;
  DM.Doc_Tam_Pl.Active := false;
end;

procedure TFDokument.APostExecute(Sender: TObject);
var
  CheckResult: integer;
  id : integer;
begin
  CheckResult:=CheckDocument();
  if CheckResult=0 then exit;
  if CheckResult=1 then
  begin
    PageControl1.ActivePage:=TabSheet1;
    Exit;
  end
  else
  StartWait;
  if not DM.Tran_Update.Active then DM.Tran_Update.StartTransaction;
  try
    try
      //--- Запись данных для прихода от постащиков ---//
      //--- для совместимости со старой задачей по обработке приходов ---//
      if MODE = 1 then
        id := 0   // Вставка
      else
        id := 1;  // Корректировка
      try 
         DM.Dokument.ApplyUpdates;
      except
         DM.Dokument.DisableControls;
         raise;
      end;
      if DM.Kart.Active then DM.Kart.ApplyUpdates;
      if DM.KARTV.Active then DM.KartV.ApplyUpdates;

      if DM.QueryTipDokTIP_DOK_ID.AsInteger = 6 then WritePrihod(id);
      //--- Оприходвание драгметаллов при списании материалов
      if (DM.QueryTipOperTIP_OP_ID.AsInteger = 32)
      and (DM.QueryTipDokTIP_DOK_ID.AsInteger <> 71) then PrihDragMet;
      // --- Товарно транспортная накладная
      if DM.QueryTipDokTTN.AsInteger = 1 then
      begin
        DM.TTN_Stroki.ApplyUpdates;
        if (DM.TTN.State=dsEdit) or (DM.TTN.state=dsInsert) then
        begin
          if CheckBox1.Checked=True then DM.TTNGOSKONTR.AsInteger:=1 else
            DM.TTNGOSKONTR.AsInteger:=0;
          DM.TTNDOC_ID.AsInteger:=DM.Dokument.FieldByName('DOC_ID').AsInteger;
          DM.TTN.Post;
        end;
       DM.TTN.ApplyUpdates;
      end;
      if DM.Doc_Param.Active = True then
        DM.Doc_Param.ApplyUpdates;
      if DM.Doc_ParamN.Active = True then
        DM.Doc_ParamN.ApplyUpdates;
      if DM.Uslugi.Active = True then
        DM.Uslugi.ApplyUpdates;
      if DM.DOG.Active = True then
        DM.DOG.ApplyUpdates;
      if DM.Doc_Tam_Pl.Active = True then
        DM.Doc_Tam_Pl.ApplyUpdates;
      //Вызов процедуры формирования проводок.
      DM.IBProc.StoredProcName := 'RK_FORM_PROV_DOC';
      DM.IBProc.ParamByName('IN_DOC_ID').AsInteger := DM.Dokument.FieldByName('DOC_ID').AsInteger;
      if ((mode = 1) or (DM.QueryViewDokumPRIZ_ID.AsInteger < 2)) then
        DM.IBProc.ParamByName('IN_PRIZN_FORM').AsInteger := 0
      else
        DM.IBProc.ParamByName('IN_PRIZN_FORM').AsInteger := 1;
      DM.IBProc.ExecProc;
      //Перенос в старые договора
      if ((DM.QueryTipDokTIP_DOK_ID.AsInteger =23) or (DM.QueryTipDokTIP_DOK_ID.AsInteger =12)) then
      begin
        WriteOldDog;
      end;
      //Вызов процедуры занесения отгрузки в DOC_OTGR
      if ((DM.QueryTipOperTIP_OP_ID.AsInteger = 7) and (DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 1)) then    //Проверка на заполнение разрешения
      begin
        if DM.Doc_Param.Locate('RESULT_FIELD','NDOKRAZR',[loPartialKey]) then
        begin
          if DM.Doc_ParamKOD.AsInteger <> 0 then
          begin
            DM.IBProc.StoredProcName := 'RK_WRITE_OTRG';
            DM.IBProc.ParamByName('DOC_ID_TTN').AsInteger := DM.Dokument.FieldByName('DOC_ID').AsInteger;
            DM.IBProc.ParamByName('DOC_ID_RAZR').AsInteger := DM.Doc_ParamKOD.AsInteger;
            DM.IBProc.ParamByName('ID').AsInteger := 0;
            DM.IBProc.ExecProc;
          end;
        end;
      end;
      DM.Tran_Update.Commit;
      DM.Tran_Select.CommitRetaining;
      DM.Dokument.Refresh;
      if DM.DOG.Active = True then DM.DOG.Refresh;
      if DM.QueryTipDokTTN.AsInteger = 1 then
      begin
        DM.TTN_Stroki.Active := false;
        DM.TTN_Stroki.Active := true;
      end;
      if (DM.QueryViewDokumPRIZ_ID.AsInteger = 2) and
         (DM.QueryTipOperGR_OP_ID.AsInteger = 11) and  //Для поступления ОС записываем
         ((DM.QueryTipOperGR_OP_TMC.AsInteger = 1) or  //данные для старой задачи по учету ОС
         (DM.QueryTipOperGR_OP_TMC.AsInteger = 4)) then  DM.WriteOs;
    except
        DM.Dokument.DisableControls;
        DM.Kart.DisableControls;
        DM.KartV.DisableControls;
        DM.TTN.DisableControls;
        DM.TTN_Stroki.DisableControls;
        try
          DM.KartV.CancelUpdates;
          DM.Kart.CancelUpdates;
          DM.Doc_Param.CancelUpdates;
          DM.Doc_ParamN.CancelUpdates;
          DM.Uslugi.CancelUpdates;
          DM.Dokument.CancelUpdates;
          if DM.QueryTipDokTTN.AsInteger = 1 then
            DM.TTN.CancelUpdates;
          DM.Tran_Update.Rollback;
        finally
          DM.Dokument.EnableControls;
          DM.Kart.EnableControls;
          DM.KartV.EnableControls;
          DM.TTN.EnableControls;
          DM.TTN_Stroki.EnableControls;
        end;
        raise;
    end;
  finally
    StopWait;
  end;
end;

procedure TFDokument.ACancelExecute(Sender: TObject);
begin
  Cancel := True;
  Close;
end;

procedure TFDokument.ACopyExecute(Sender: TObject);
var
  rstroka_id : integer;
begin
  if DM.QueryTipDokPRIZ_USLUGI.AsInteger = 1  then
  begin
    // USLUGI
    FormView(DM.Uslugi,FieldsDoc);
    DM.Uslugi.Append;
    While not FieldsDoc.eof do
    begin
      if TRIM(FieldsDoc.FieldByName('FieldName').AsString)<>'USLUGI_ID' then
        DM.Uslugi.FieldByName(FieldsDoc.FieldByName('FieldName').AsString).AsString := FieldsDoc.FieldByName('FieldValue').AsString;
      FieldsDoc.Next;
    end;
  end
  else
  if DM.GruppaOper = 0 then
  begin
    //KARTV
    FormView(DM.KartV,FieldsDoc);
//    DM.KartV.Append;
    APost.Execute;
    DM.KartV.Insert;
    While not FieldsDoc.eof do
    begin
      if TRIM(FieldsDoc.FieldByName('FieldName').AsString)<>'STROKA_ID' then
        DM.KARTV.FieldByName(FieldsDoc.FieldByName('FieldName').AsString).AsString := FieldsDoc.FieldByName('FieldValue').AsString;
      FieldsDoc.Next;
    end;
    if DM.QueryTipDokTIP_DOK_ID.AsInteger = 89 then     //Для разрешений сразу сохраняю и переоткрываю
    begin
      rStroka_id := DM.KARTVSTROKA_ID.AsInteger;
      APost.Execute;
      DM.KARTV.Active := false;
      DM.KARTV.Active := true;
      DM.KARTV.Locate('Stroka_id',rStroka_id,[]);
    end;
  end
  else
  begin
    //KART
    FormView(DM.Kart,FieldsDoc);
    DM.Kart.Append;
    While not FieldsDoc.eof do
    begin
      if TRIM(FieldsDoc.FieldByName('FieldName').AsString)<>'STROKA_ID' then
        DM.Kart.FieldByName(FieldsDoc.FieldByName('FieldName').AsString).AsString := FieldsDoc.FieldByName('FieldValue').AsString;
      FieldsDoc.Next;
    end;
  end;
end;

procedure TFDokument.DisableEdits;
var i: integer;
begin
  for i:=Panel2.ControlCount-1 downto 0 do
  begin
    if (Panel2.Controls[i] is TDBEditEh) then
    begin
      (Panel2.Controls[i] as TDBEditEh).DataSource:=nil;
      (Panel2.Controls[i] as TDBEditEh).Visible:=False;
    end else
    if (Panel2.Controls[i] is TDBDateEdit) then
    begin
      (Panel2.Controls[i] as TDBDateEdit).DataSource:=nil;
      (Panel2.Controls[i] as TDBDateEdit).Visible:=False;
    end else
    if (Panel2.Controls[i] is TRxDBComboEdit) then
    begin
      (Panel2.Controls[i] as TRxDBComboEdit).DataSource:=nil;
      (Panel2.Controls[i] as TRxDBComboEdit).Visible:=False;
    end else
    if (Panel2.Controls[i] is TLabel) and AnsiContainsText((Panel2.Controls[i] as TLabel).Name,'Label') then
      (Panel2.Controls[i] as TLabel).Visible:=False
    else
    if (Panel2.Controls[i] is TEdit) then
      (Panel2.Controls[i] as TEdit).Visible:=False
  end;
end;

procedure TFDokument.AAddMaterialExecute(Sender: TObject);
var
  KartId: integer;
  vKsm_Id : integer;
  act_skl :integer;
begin
  if DM.QueryTipDokPRIZ_USLUGI.AsInteger = 1  then
  begin
    // Для услуг добавляем запись в USLUGI и выходим
    DM.Uslugi.Append;
    Exit;
  end;
  // Формирование разрешения
  if DM.QueryTipDokTIP_DOK_ID.AsInteger  = 89 then
  begin
    //Записываем документ
     APost.Execute;
    if FForm_Razr = nil then
      Application.CreateForm(TFForm_Razr, FForm_Razr);
    FForm_Razr.ShowModal;
    exit;
  end;  
  // Если ПРОЧИЕ ДОКУМЕНТЫ - сразу вызываем справочник
  if DM.GruppaOper = 0 then
  begin
    if (dm.QueryTipDokOTGR.AsInteger = 1) and (dm.QueryTipDokTIP_DOK_ID.AsInteger <> 22 ) then    //22 -Протокол согласования цены
    begin
      //Отгрузочные документы
      //Записываем документ
     APost.Execute;
      //Вызываем форму прайсов
      if FPrice_Prot = nil then
        Application.CreateForm(TFPrice_Prot, FPrice_Prot);
      FPrice_Prot.ShowModal;
      APost.Execute;
      DM.KARTV.Active := false;
      DM.KARTV.Active := true;
    end
    else
    begin
      vKsm_id := 0;
      if dm.IBMatr_prPRMAT.AsString='05' then
      begin
        FindSpprod.DataBaseName:=DM.UMC_DATA;
        FindSpprod.ReadOnly:=True;
        vKsm_Id:=FindSpprod.ShowModal-50;
      end;
      DM.KARTV.Append;
      DBGridEh4.SetFocus;
      DBGridEh4.SelectedField:=GridEhFieldByName(DBGridEh4,'KSM_ID');
      DM.KartV.FieldByName('DOC_ID').AsInteger:=DM.Dokument.FieldByName('DOC_ID').AsInteger;
      if vKsm_Id>0 then
        DM.KartV.FieldByName('KSM_ID').AsInteger:=vKsm_Id;
      DM.KartVNDS.AsFloat:=DM.Dokument.fieldByName('NDS').AsFloat;
    end;
  end
  else
  begin
    // Вызываем форму с остатками
      fostatki.KSM_Filter:='0=0';
      fostatki.KART_Filter:='0=0';
    // Для операций по бланкам строгой отчетности устанвливаем фильтр
      if DM.QueryTipOperIS_BSO.AsInteger=1 then
        fostatki.KSM_Filter:='(Matrop.gr='+''''+'09'+''''+') and (matrop.pgr='+''''+'12'+''''+')';
    // Если расход, выключаем кнопки добавления материала и серии
      if DM.GruppaOper=1 then
      begin
        fostatki.ToolButton1.Visible:=True;
        fostatki.ToolButton2.Visible:=True;
      end
      else
      begin
        fostatki.ToolButton1.Visible:=False;
        fostatki.ToolButton2.Visible:=False;
      end;
    // Вызываем форму выбора карточки
       fostatki.Public_Id := 0;
      KartId:=fostatki.ShowModal;
 //   end;
    if KartID<50 then
      Exit;
    DM.Kart.Append;
    DM.Kart.FieldByName('KART_ID').AsInteger:=KartId-50;
    FocusControl(DBGridEh2);
    DM.Kart.FieldByName('DOC_ID').AsInteger:=DM.Dokument.FieldByName('DOC_ID').AsInteger;
    DM.Kart.FieldByName('NDS').AsFloat:=DM.Dokument.fieldByName('NDS').AsFloat;
    DM.Kart.FieldByName('KSM_ID').AsVariant :=
      SelectToVarIB('SELECT Ost.KSM_ID FROM Ostatki Ost '
      +'WHERE Ost.KART_ID = '+IntToStr(DM.Kart.FieldByName('KART_ID').AsInteger),DM.UMC_DATA, DM.Tran_Select);
    FocusControl(DBGridEh2);
    if DM.GruppaOper=1 then DBGridEh2.SelectedField:=GridEhFieldByName(DBGridEh2,'KOL_PRIH')
    else DBGridEh2.SelectedField:=GridEhFieldByName(DBGridEh2,'KOL_RASH');
    KolOld:=0;
    EdIzmOld:=DM.KartNEIS.AsString;
    DBGridEh2.ReadOnly:=False;
    TTNReadOnly(False);
  end;
end;

function TFDokument.GetSaveOst: Integer;
var
  vKsm_Id : integer;
  vKart_Id :integer;
begin
  if FindMatrop = nil then
    Application.CreateForm(TFindMatrop, FindMatrop);
  FindMatrop.Public_Id := 0;
  FindMatrop.DataBaseName:=DM.UMC_DATA;
  FindMatrop.ReadOnly:=False;
  vKsm_Id:=FindMatrop.ShowModal-50;
  if vKsm_id<0 then
  begin
    Result := 0;
    exit;
  end;
  DM.Ostatki.ParamByName('STRUK_ID').AsInteger := DM.Dokument.FieldByName('Struk_id').AsInteger;
  DM.Ostatki.ParamByName('KSM_ID').AsInteger := vKsm_Id;
  DM.Ostatki.MacroByName('USL').AsString := '0=0';
  DM.Ostatki.Active := true;
  if DM.Ostatki.RecordCount = 0 then
  begin
    DM.Ostatki.Insert;
    DM.OstatkiKSM_ID.AsInteger := vKsm_Id;
    DM.OstatkiKEI_ID.AsInteger := FindMatrop.IBMatropKEI_ID.AsInteger;
    DM.Ostatki.Post;
    vKart_Id := DM.OstatkiKART_ID.AsInteger;
    if not DM.Tran_Update.active then DM.Tran_Update.StartTransaction;
    DM.Ostatki.ApplyUpdates;
    DM.Tran_Update.Commit;
  end
  else
    vKart_id := DM.Ostatki.FieldByName('kart_id').AsInteger;
  DM.Ostatki.Active := false; 
  Result := vKart_Id+50;
end;

function TFDokument.GridEhFieldByName(Grid: TDBGridEh; FieldName: string): TField;
var i: integer;
begin
  for i:=Grid.FieldCount-1 downto 0 do
    if Grid.Fields[i].FieldName=FieldName then
    begin
      Result:=Grid.Fields[i];
      Exit;
    end;
  Result:= nil;
end;

function TFDokument.GridEhColumnByName(Grid: TDBGridEh;
  FieldName: string): TColumnEh;
var i: integer;
begin
  for i:=Grid.Columns.Count-1 downto 0 do
    if Grid.Columns[i].FieldName=FieldName then
    begin
      Result:=Grid.Columns[i];
      Exit;
    end;
  Result:= nil;
end;

procedure TFDokument.EditKLIENT_ID_LOOKUPButtonClick(Sender: TObject);
var
  Name : string;
  KodSpr : Integer;
begin
  if Trim(DM.QueryTipDokLOOKUP.AsString)='CONFIGUMC' then
  begin
    if FSklad = nil then
       Application.CreateForm(TFSklad, FSklad);
    FormToObject(FSklad,EditKLIENT_ID_LOOKUP);
  end;
  FindSpr(Trim(DM.QueryTipDokLOOKUP.AsString),DM.UMC_DATA, Name,KodSpr,DM.Dokument.FieldByName('KLIENT_ID').AsInteger);
  if KodSpr <> 0 then
  begin
    DM.Dokument.FieldByName('KLIENT_ID').AsInteger:=KodSpr;
    DM.Dokument.FieldByName('KLIENT_ID_LOOKUP').AsString:=Name;
    if Trim(DM.QueryTipDokLOOKUP.AsString) = 'KADRY' then
    begin
      // Заполняем параметры для доверенности
      if DM.Doc_Param.Active then FormPasportDov;
    end;
  end;
end;

procedure TFDokument.DBGridEh2Columns21EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
   if DM.QueryTipOperTIP_OP_ID.AsInteger = 21 then exit;
   FLookup.IBQuery.Database := DM.UMC_DATA;
   FLookup.IBQuery.SQL.Text:='select upak.name_upak nam,ostatki.kart_id id '+
     ' from ostatki inner join upak on ostatki.nomu_id_trans = upak.nomu_id '+
     ' inner join seria on ostatki.seria_id = seria.seria_id '+
     ' where ostatki.ksm_id = '+DM.KartKSM_ID.AsString+
     ' and seria.seria = '+DM.KartSeria.AsString+
     ' and ostatki.kart_id <> '+ DM.KartKART_ID.AsString;
   FLookup.IBQuery.Open;
   FLookup.IBQuery.FetchAll;
   FLookup.Height := 60+FLookup.IBQuery.RecordCount*20;
   FLookup.Width := FDokument.GridEhColumnByName(DBGridEh2,'TAG').Width;
   FLookup.Top :=Mouse.CursorPos.y;
   FLookup.Left :=Mouse.CursorPos.x-FLookup.Width;
   if FLookup.ShowModal>50 then
     DM.KartTag.AsInteger :=FLookup.IBQuery.FieldByName('ID').AsInteger;
   FLookup.IBQuery.Close;
end;

procedure TFDokument.DBGridEh2Columns22EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
   FLookup.IBQuery.Database := DM.UMC_DATA;
   FLookup.IBQuery.SQL.Text:='select ediz.kei_id id, ediz.neis nam from ediz '+
    ' order by 2 ';
   FLookup.IBQuery.Open;
   FLookup.IBQuery.FetchAll;
   FLookup.Width := FDokument.GridEhColumnByName(DBGridEh2,'NEIS2').Width;
   FLookup.Top :=Mouse.CursorPos.y;
   FLookup.Left :=Mouse.CursorPos.x-FLookup.Width;
   if DM.KartKei_id2.AsInteger <> 0 then
     FLookup.IBQuery.Locate('ID',DM.KartKei_id2.AsInteger, []);
   if FLookup.ShowModal>50 then
   begin
     if DM.KART.State = dsBrowse then DM.KART.Edit;
     DM.KartKei_id2.AsInteger :=FLookup.IBQuery.FieldByName('ID').AsInteger;
     DM.KARTneis2.AsString :=FLookup.IBQuery.FieldByName('NAM').AsString;
   end;
   FLookup.IBQuery.Close;
end;

procedure TFDokument.DBGridEh2Columns23EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
   if DM.MODE=2 then exit;
   FLookup.IBQuery.Database := DM.UMC_DATA;
   FLookup.IBQuery.SQL.Text:='select region.reg id, region.nam from region '+
    ' where region.priz<>4 ';
   FLookup.IBQuery.Open;
   FLookup.IBQuery.FetchAll;
   FLookup.Width := FDokument.GridEhColumnByName(DBGridEh2,'NAMREGPR').Width;
   FLookup.Top :=Mouse.CursorPos.y;
   FLookup.Left :=Mouse.CursorPos.x-FLookup.Width;
   if FLookup.ShowModal>50 then
   begin
     if DM.KART.State = dsBrowse then DM.KART.Edit;
     DM.KartTag.AsInteger :=FLookup.IBQuery.FieldByName('ID').AsInteger;
     DM.KARTNAMREGPR.AsString :=FLookup.IBQuery.FieldByName('NAM').AsString;
   end;
   FLookup.IBQuery.Close;
end;

procedure TFDokument.DBGridEh2Columns24EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  kodspr : integer;
  name : string;
begin
  FindSpr('IK',DM.UMC_DATA, Name,KodSpr,DM.KartTAG1.AsInteger);
  if KodSpr <> 0 then
  begin
    if DM.KART.State = dsBrowse then DM.KART.Edit;
    DM.KartTag1.AsInteger := kodspr;
    DM.KartInv.AsString :=Name;
  end
end;

procedure TFDokument.DBGridEh2Columns24UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  precision : variant;
begin
  if FDokument.GridEhColumnByName(DBGridEh2,'KOL_RASH').Visible then
  begin
    if StrToFloat(Text) <> 0 then
    begin
      DM.Query2.Close;
      DM.Query2.SQL.Text:='SELECT kei_id2,proc_ov kof from OSTATKI where KART_ID = '+DM.KartKART_ID.AsString;
      DM.Query2.Open;
      if DM.Query2.FieldByName('kei_id2').AsInteger <> 0 then
      begin
        if DM.Query2.FieldByName('kof').AsFloat = 0 then
        begin
          MessageDlg('По серии нет остатка во второй единице измерения!', mtWarning, [mbOK], 0);
          Handled := true;
        end;
        precision :=SelectToVarIB('SELECT configumc."PRECISION" FROM configumc '
        +'WHERE configumc.struk_ID = '+IntToStr(DM.STRUK_ID),DM.UMC_DATA, DM.Tran_Select);
        if ((precision=null) or (precision=0)) then precision:=3;
        if ((DM.KartKOL_RASH.AsVariant=null) or (DM.KartKOL_RASH.AsVariant=0)) then
           DM.KartKOL_RASH.AsVariant := roundto(StrToFloat(Text) * DM.Query2.FieldByName('kof').AsFloat,-1*precision);
        DM.KartKEI_ID2.AsVariant := DM.Query2.FieldByName('kei_id2').AsVariant;
      end
      else
      begin
        MessageDlg('Не заполнена вторая единица измерения!', mtWarning, [mbOK], 0);
        Handled := true;
      end;
    end
    else
     DM.KartKOL_RASH.AsFloat := 0;
  end;
end;

procedure TFDokument.DBGridEh2Columns2EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  AUpdateMaterialExecute(Sender);
end;

procedure TFDokument.DBGridEh2Columns35EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
   if DM.QueryTipDokTIP_DOK_ID.AsInteger = 71 then
   begin
     FLookup.IBQuery.Database := DM.UMC_DATA;
     FLookup.IBQuery.SQL.Text:='select kartv.doc_id id,document.ndok||'+''''+' от '+''''+
       '||datetostr(document.date_dok,'+''''+'%d.%m.%y'+''''+')||'+''''+'г. цена '+''''+
       '||Cast(kartv.cena_vp as char(14))||'+''''+' кол.'+''''+'||Cast(kartv.kol_prih as char(10))||'+''''+' '+''''+'||sprorg.nam nam from document '+
       ' inner join sprorg on document.klient_id=sprorg.kod '+
       ' inner join kartv on document.doc_id = kartv.doc_id '+
       ' where document.tip_dok_id=4 and kartv.ksm_id= '+DM.KartKSM_ID.AsString;
     FLookup.IBQuery.Open;
     if DM.KartTag.AsInteger <> 0 then
       FLookup.IBQuery.Locate('ID',DM.KartTag.AsInteger,[]);
     FLookup.IBQuery.FetchAll;
     FLookup.Height := 60+FLookup.IBQuery.RecordCount*20;
     FLookup.Width := 500;
     FLookup.Top :=Mouse.CursorPos.y;
     FLookup.Left :=Mouse.CursorPos.x-FLookup.Width;
     if FLookup.ShowModal>50 then
     begin
       DM.Kart.Edit;
       DM.KartTag.AsInteger :=FLookup.IBQuery.FieldByName('ID').AsInteger;
       DM.KartNakl.AsString :=FLookup.IBQuery.FieldByName('nam').AsString;
     end;
     FLookup.IBQuery.Close;
   end;
end;

procedure TFDokument.DBGridEh2Columns5EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
    if DM.MODE = 2 then exit;
    FLookup.IBQuery.Database := DM.UMC_DATA;
    FLookup.IBQuery.SQL.Text:='select ostatki.kart_id id, seria.seria nam from ostatki '+
      ' inner join seria on ostatki.seria_id=seria.seria_id '+
      ' where ostatki.ksm_id = '+DM.KartKSM_ID.AsString+ ' and ostatki.struk_id= '+
    DM.Dokument.FieldByName('struk_id').AsString;
    FLookup.IBQuery.Open;
    FLookup.IBQuery.FetchAll;
    if (DM.KartKART_ID.AsInteger <> 0) then
      FLookup.IBQuery.Locate('ID',DM.KartKART_ID.AsInteger,[]);
    FormToColumn(FLookup,DBGridEh2,'SERIA',1);
    if FLookup.ShowModal>50 then
    begin
      if DM.Kart.State = dsBrowse then DM.Kart.Edit;
      DM.KartSERIA.AsString := FLookup.IBQuery.fieldByName('Nam').AsString;
      DM.KartKART_ID.AsInteger := FLookup.IBQuery.fieldByName('ID').AsInteger;
      if DM.QueryTipOperTIP_OP_ID.AsInteger = 21 then
      begin
        DM.Query.Active := false;
        DM.Query.SQL.Text := 'select ot_s  from ostatki where kart_id ='+FLookup.IBQuery.fieldByName('ID').AsString;
        DM.Query.Active := true;
        if DM.Query.FieldByName('Ot_S').AsFloat <> 0 then
          DM.KartKOL_PRIH.AsFloat := DM.Query.FieldByName('Ot_S').AsFloat*(-1);
        DM.Query.Active := false;
      end;
      DM.Kart.Post;
    end;
    FLookup.IBQuery.Close;
end;

procedure TFDokument.DBGridEh2Columns7EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
   if DM.MODE=2 then exit;
   FLookup.IBQuery.Database := DM.UMC_DATA;
   FLookup.IBQuery.SQL.Text:='select ostatki.kart_id id2,ostatki.nomu_id_trans id, upak.name_upak nam from ostatki'+
                             ' inner join upak on upak.nomu_id=ostatki.nomu_id_trans '+
                             ' left join seria on seria.seria_id=ostatki.seria_id '+
                             ' where ostatki.struk_id='+IntToStr(dm.STRUK_ID)+' and ostatki.ksm_id='+dm.KartKSM_ID.AsString+' and seria.seria='+''''+dm.KartSERIA.AsString+'''';
   FLookup.IBQuery.Open;
   FLookup.IBQuery.FetchAll;
   FLookup.Width := FDokument.GridEhColumnByName(DBGridEh2,'NAME_UPAK').Width;
   FLookup.Top :=Mouse.CursorPos.y;
   FLookup.Left :=Mouse.CursorPos.x-FLookup.Width;
   if FLookup.ShowModal>50 then
   begin
     if DM.KART.State = dsBrowse then DM.KART.Edit;
     DM.KartTag1.AsInteger :=FLookup.IBQuery.FieldByName('ID').AsInteger;
     DM.KartKART_ID.AsInteger :=FLookup.IBQuery.FieldByName('ID2').AsInteger;
     DM.KartNAME_UPAK.AsString :=FLookup.IBQuery.FieldByName('NAM').AsString;
   end;
   FLookup.IBQuery.Close;
end;

procedure TFDokument.DBGridEh2Columns8EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  if DM.MODE=2 then exit;
   FLookup.IBQuery.Database := DM.UMC_DATA;
   FLookup.IBQuery.SQL.Text:='select vid_upak_id id,vid_upak_nam nam from umc_vid_upak ';
   FLookup.IBQuery.Open;
   FLookup.IBQuery.FetchAll;
   FLookup.Width := FDokument.GridEhColumnByName(DBGridEh2,'VID_UPAK_NAM').Width;
   FLookup.Top :=Mouse.CursorPos.y;
   FLookup.Left :=Mouse.CursorPos.x-FLookup.Width;
   if FLookup.ShowModal>50 then
   begin
     if DM.KART.State = dsBrowse then DM.KART.Edit;
     DM.KartTag1.AsInteger :=FLookup.IBQuery.FieldByName('ID').AsInteger;
     DM.KARTVID_UPAK_NAM.AsString :=FLookup.IBQuery.FieldByName('NAM').AsString;
   end;
   FLookup.IBQuery.Close;
end;

procedure TFDokument.DBGridEh2Columns8UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  precision : variant;
begin
  if FDokument.GridEhColumnByName(DBGridEh2,'KOL_RASH_EDIZ').Visible then
  begin
    if StrToFloat(Text) <> 0 then
    begin
      DM.Query2.Close;
      DM.Query2.SQL.Text:='SELECT kei_id2,proc_ov kof from OSTATKI where KART_ID = '+DM.KartKART_ID.AsString;
      DM.Query2.Open;
      if DM.Query2.FieldByName('kei_id2').AsInteger <> 0 then
        begin
        precision :=SelectToVarIB('SELECT configumc."PRECISION" FROM configumc '
        +'WHERE configumc.struk_ID = '+IntToStr(DM.STRUK_ID),DM.UMC_DATA, DM.Tran_Select);
        if ((precision=null) or (precision=0)) then precision:=3;
        if ((DM.KartKOL_RASH_EDIZ.AsVariant=null) or (DM.KartKOL_RASH_EDIZ.AsVariant=0)) then
        DM.KartKOL_RASH_EDIZ.AsVariant := roundto(StrToFloat(Text) / DM.Query2.FieldByName('kof').AsFloat,-1*precision);
        DM.KartKEI_ID2.AsVariant := DM.Query2.FieldByName('kei_id2').AsVariant;
        end
      else
        DM.KartKEI_ID2.AsVariant := null;
    end
    else
     DM.KartKOL_RASH_EDIZ.AsFloat := 0;
  end;
end;

procedure TFDokument.TTNReadOnly(ReadOnly :Boolean);
var i:integer;
begin
  DBGridEh1.ReadOnly:=ReadOnly;
  for i:=Panel5.ControlCount-1 downto 0 do
  begin
    if Panel5.Controls[i] is TDBEditEh then
      (Panel5.Controls[i] as TDBEditEh).ReadOnly:=ReadOnly else
    if Panel5.Controls[i] is TDBDateEdit then
      (Panel5.Controls[i] as TDBDateEdit).ReadOnly:=ReadOnly else
    if Panel5.Controls[i] is TRxDBComboBox then
      (Panel5.Controls[i] as TRxDBComboBox).ReadOnly:=ReadOnly else
    if Panel5.Controls[i] is TRxDBComboEdit then
      (Panel5.Controls[i] as TRxDBComboEdit).ReadOnly:=ReadOnly else
    if Panel5.Controls[i] is TDBCheckBox then
      (Panel5.Controls[i] as TDBCheckBox).ReadOnly:=ReadOnly;
  end;
end;

procedure TFDokument.EditNDOKKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Ok: Boolean;
begin
  if DM.Dokument.State = dsBrowse then exit;
  Ok:=True;
  if Key=VK_RETURN then
  begin
    // Если стоим на поле KLIENT_ID
    if (Sender=EditKLIENT_ID) then
      if (EditKLIENT_ID.Text<>'') then
      begin
        DM.Query.Close;
        if Trim(DM.QueryTipDokLOOKUP.AsString) = 'SPRORG' then
        begin
          DM.Query.SQL.Text:='SELECT NAM FROM Sprorg WHERE KOD = '+EditKLIENT_ID.Text;
          DM.Query.Open;
          if DM.Query.IsEmpty then Ok:=False
          else DM.Dokument.FieldByName('KLIENT_ID_LOOKUP').AsString:=DM.Query.fieldByName('NAM').AsString;
          DM.Query.Close;
        end
        else
        if Trim(DM.QueryTipDokLOOKUP.AsString) = 'STRUK' then
        begin
          DM.Query.SQL.Text:='SELECT STNAME FROM Struk WHERE STRUK_ID = '+EditKLIENT_ID.Text;
          DM.Query.Open;
          if DM.Query.IsEmpty then Ok:=False
          else DM.Dokument.FieldByName('KLIENT_ID_LOOKUP').AsString:=DM.Query.fieldByName('STNAME').AsString;
          DM.Query.Close;
        end
        else
        if Trim(DM.QueryTipDokLOOKUP.AsString) = 'CONFIGUMC' then
        begin
          DM.Query.SQL.Text:='SELECT STNAME FROM ConfigUMC WHERE STRUK_ID = '+EditKLIENT_ID.Text;
          DM.Query.Open;
          if DM.Query.IsEmpty then Ok:=False
          else DM.Dokument.FieldByName('KLIENT_ID_LOOKUP').AsString:=DM.Query.fieldByName('STNAME').AsString;
          DM.Query.Close;
        end
        else Ok:=False;
      end
      else DM.Dokument.FieldByName('KLIENT_ID_LOOKUP').AsString:=''
    else

    // Если стоим на наименовании клиента
    if (Sender=EditKLIENT_ID_LOOKUP) and (EditKLIENT_ID_LOOKUP.Text='') then
    begin
      EditKLIENT_ID_LOOKUP.Button.Click;
      // Обходим баг EhGrid'а ***
      Ok:=False;
      FDokument.FindNextControl(EditKLIENT_ID_LOOKUP,True,True,False).SetFocus;
      // ************************
    end
    else

    // Если стоим на коде организации брака
    if (Sender=DBEditEh19) and not DM.Kart.IsEmpty then
      if (DBEditEh19.Text<>'') then
      begin
        DM.Query.Close;
        DM.Query.SQL.Text:='SELECT NAM FROM Sprorg WHERE KOD = '+DBEditEh19.Text;
        DM.Query.Open;
        if DM.Query.IsEmpty then Ok:=False
        else
        begin
          DM.Kart.Edit;
          DM.KartNAM.AsString:=DM.Query.fieldByName('NAM').AsString;
          DM.Kart.Post;
        end;
        DM.Query.Close;
      end
      else DM.KartNAM.AsString:=''
    else

    // Если стоим на наименовании организ. брака
    if (Sender=RxDBComboEdit1) and (RxDBComboEdit1.Text='') and not DM.Kart.IsEmpty then
    begin
      RxDBComboEdit1.Button.Click;
      // Обходим баг EhGrid'а ***
      Ok:=False;
      FDokument.FindNextControl(EditKLIENT_ID_LOOKUP,True,True,False).SetFocus;
      // ************************
    end
    else
    // Если стоим на поле VP_ID
    if (Sender=EditVP_ID) then
    begin
      if (EditVP_ID.Text<>'') then
      begin
        DM.Query.Close;
        DM.Query.SQL.Text:='SELECT NAM FROM Val WHERE VAL = '+EditVP_ID.Text;
        DM.Query.Open;
        if DM.Query.IsEmpty then Ok:=False
        else DM.Dokument.FieldByName('VP_ID_LOOKUP').AsString:=DM.Query.fieldByName('NAM').AsString;
        DM.Query.Close;
      end
      else DM.Dokument.FieldByName('VP_ID_LOOKUP').AsString:=''
    end
    else
    // Если стоим на наименовании валюты
    if (Sender=EditVP_ID_LOOKUP) and (EditVP_ID_LOOKUP.Text='') then
    begin
      EditVP_ID_LOOKUP.Button.Click;
      // Обходим баг EhGrid'а ***
      Ok:=False;
      FDokument.FindNextControl(EditVP_ID_LOOKUP,True,True,False).SetFocus;
      // ************************
    end;
    if Ok then PostMessage((Sender as TWinControl).Handle,wm_KeyDown,VK_TAB,0);
  end;
end;

procedure TFDokument.EditNDOKUpdateData(Sender: TObject; var Handled: Boolean);
begin
  if DM.QueryTipDokTIP_DOK_ID.AsInteger = 23 then  //Изменение номера договора для разовых договоров на отгрузку в DOG
  begin
    if DM.DOG.State = dsBrowse then DM.DOG.Edit;
    DM.DOGNDOG_STR.AsString := DM.Dokument.FieldByName('ndok').AsString;
    DM.DOG.Post;
  end;
end;

procedure TFDokument.EditVP_ID_LOOKUPButtonClick(Sender: TObject);
begin
  FLookup.IBQuery.Database := DM.UMC_DATA;
  FLookup.IBQuery.Close;
  FLookup.IBQuery.SQL.Text:='SELECT VAL ID, NAM FROM VAL ORDER BY VAL';
  FLookup.IBQuery.Open;
  FormToObject(FLookup,EditVP_ID_LOOKUP);
  if FLookup.ShowModal>50 then
  begin
    DM.Dokument.FieldByName('VP_ID').AsInteger:=FLookup.IBQuery.FieldByName('ID').AsInteger;
    DM.Dokument.FieldByName('VP_ID_LOOKUP').AsString:=FLookup.IBQuery.FieldByName('NAM').AsString;
  end;
  FLookup.IBQuery.Close;
end;

procedure TFDokument.DBEditEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Ok:Boolean;
begin
  Ok:=True;
  if Key=VK_RETURN then
  begin
    if (Sender is TRxDBComboEdit) and ((Sender as TRxDBComboEdit).Text='') then
    begin
      (Sender as TRxDBComboEdit).Button.Click;
      Ok:=False;
      FDokument.FindNextControl((Sender as TWinControl),True,True,False).SetFocus;
    end
    else
    if (Sender=ComboBox1) or (Sender=Edit1) or (Sender=DateEdit1) then
      if Edit1.Text<>'' then
//        DBEditEh23.Text:='Цены согласно '+AnsiLowerCase(ComboBox1.Items[ComboBox1.ItemIndex])+'а № '+Edit1.Text+' от '+DateEdit1.Text
        DBEditEh23.Text:=ComboBox1.Items[ComboBox1.ItemIndex]+' №'+Edit1.Text+' от '+DateEdit1.Text
      else
        DBEditEh23.Text:='';
    if Ok then
      PostMessage((Sender as TWinControl).Handle,wm_KeyDown,VK_TAB,0);
  end;

end;

procedure TFDokument.ADeleteMaterialExecute(Sender: TObject);
begin
  if FDialog.Execute('Удалить запись?')=mrYes then
  begin
    if (DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 1) then DM.Kart.Delete;
    if (DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 0) and
       (DM.QueryTipDokPRIZ_USLUGI.AsInteger <> 1) then DM.KartV.Delete;
    if (DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 0) and
       (DM.QueryTipDokPRIZ_USLUGI.AsInteger = 1) then DM.Uslugi.Delete;
  end;
end;

procedure TFDokument.DBGridEh2Columns1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  AUpdateMaterialExecute(Sender);
end;

procedure TFDokument.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  DM.Dokument.Cancel;
end;

procedure TFDokument.APrintDokExecute(Sender: TObject);
var
  SumAll, SumNds: string;
  Sum_All,Sum_Nds : Integer;
  Sum_Cop : integer;
  KolStrok: integer;
  FormatMemo : string;
  Brkg, Brg, Brmg : Integer;
  Brt,BrgS, BrkgS, BrmgS : String;
  BrgR : String;
  BruttoT :double;
begin
  DM.Kart.DisableControls;
  DM.KartV.DisableControls;
  try
    frReport1.DefaultCopies := 4;
    if DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 1 then
    begin
      frDBDataSet1.DataSource := DM.DS_Kart;
      KolStrok := DM.Kart.RecordCount;
    end
    else
    begin
      frDBDataSet1.DataSource := DM.DS_KartV;
      KolStrok := DM.KartV.RecordCount;
    end;
    FLookup.IBQuery.Database := DM.UMC_DATA;
    FLookup.IBQuery.Close;
    FLookup.IBQuery.SQL.Text:='SELECT FORM_ID ID, NAME_FORM NAM, PUTH_FORM, KOL_STROK, PRIZ_BACK, KOL1, KOL2 FROM DOC_PUTH_FORM '+
     ' WHERE TIP_DOK_ID = '+ DM.QueryTipDokTIP_DOK_ID.AsString+'  ORDER BY FORM_ID ';
    FLookup.IBQuery.Open;
    FormToObject(FLookup,ToolButton7,0,0);
    if FLookup.ShowModal>50 then
    begin
      Application.ProcessMessages;
      if (DM.QueryTipDokTip_Dok_Id.AsInteger = 8) or (DM.QueryTipDokTip_Dok_id.AsInteger = 84) then
      else
      if ((KolStrok > FLookup.IBQuery.FieldByName('Kol_Strok').AsInteger) and
         (FLookup.IBQuery.FieldByName('Kol_Strok').AsInteger <>0)) then
      begin
        MessageDlg('В накладной может быть напечатано не более '+FLookup.IBQuery.FieldByName('Kol_Strok').AsString +' наименований!'
        +#13+#10+'Разбейте накладную на два документа! ', mtWarning, [mbOK], 0);
        StopWait;
        Exit;
      end;
      StopWait;
      if FLookup.IBQuery.FieldByName('Puth_Form').AsString ='' then
      begin
        MessageDlg('Не введен путь для отчета!', mtWarning, [mbOK], 0);
        exit;
      end;
      frReport1.LoadFromFile(FLookup.IBQuery.FieldByName('Puth_Form').AsString);
    end
    else
      exit;
    // Формат отображения цен и сумм в зависимости от валюты
      if FLookup.IBQuery.FieldByName('PRIZ_BACK').AsInteger = 1 then
      begin
        frReport1.ShowReport;
        frReport1.LoadFromFile('f:\umc\back.frf');
      end;
    // Сумма НДС и сумма с НДС прописью для разных валют
    DM.Query.Close;
    DM.Query.SQL.Text := 'SELECT Val."CHAR",SHORTCHAR, val."PRECISION" PREC FROM Val WHERE Val.Val = '+IntToStr(DM.Dokument.FieldByName('VP_ID').AsInteger);
    DM.Query.Open;
    Sum_All := Round(Int(DM.Dokument.fieldbyName('SUM_VP').AsFloat+DM.Dokument.fieldbyName('SUM_NDS_VP').AsFloat));
    Sum_Nds := Round(Int(DM.Dokument.fieldbyName('SUM_NDS_VP').AsFloat));
    SumAll:=''''+SumToString(Sum_All)+' '+DM.Query.FieldByName('CHAR').AsString;
    Sum_Cop := Round((Frac(DM.Dokument.fieldbyName('SUM_VP').AsFloat+DM.Dokument.fieldbyName('SUM_NDS_VP').AsFloat))*100);
    if Sum_Cop<>0 then
      SumAll:=SumAll+IntToStr(Sum_Cop)+' '+DM.Query.FieldByName('SHORTCHAR').AsString;
    Sum_Cop := Round(Frac(DM.Dokument.fieldbyName('SUM_NDS_VP').AsFloat)*100);
    SumNds:=''''+SumToString(Sum_Nds)+' '+DM.Query.FieldByName('CHAR').AsString;
    if Sum_Cop<>0 then
      SumNds:=SumNds+IntToStr(Sum_Cop)+' '+DM.Query.FieldByName('SHORTCHAR').AsString;
    FormatMemo := '#.';
    if DM.Query.FieldByName('PREC').Asinteger >=0 then
      FormatMemo :=AddCharR('0',FormatMemo,DM.Query.FieldByName('PREC').Asinteger+2);
    DM.Query.Close;
    try
      if DM.Dokument.FieldByName('struk_id').AsInteger <> 562 then
        frReport1.FindObject('Memo78').FormatStr := FormatMemo;
      frReport1.FindObject('Memo79').FormatStr := FormatMemo;
      frReport1.FindObject('Memo80').FormatStr := FormatMemo;
      frReport1.FindObject('Memo42').FormatStr := FormatMemo;
      if Sum_Nds=0 then
      begin
        frReport1.FindObject('Memo83').FormatStr := '0.';
        frReport1.FindObject('Memo45').FormatStr := '0.';
      end
      else
      begin
        frReport1.FindObject('Memo83').FormatStr := FormatMemo;
        frReport1.FindObject('Memo45').FormatStr := FormatMemo;
      end;
      frReport1.FindObject('Memo43').FormatStr := FormatMemo;
    except
    end;

      if ((DM.QueryTipDokTIP_DOK_ID.AsInteger  = 8)  or (DM.QueryTipDokTIP_DOK_ID.AsInteger  = 84)) then
      begin
        // Пишем или не пишем 'Без НДС Согласно...'
//        DM.Query.Close;
//        DM.Query.SQL.Text:='SELECT count(*) CNT FROM Kart WHERE Kart.DOC_ID = '+IntToStr(DM.TTNDOC_ID.AsInteger)+' AND Kart.NDS = 0';
//        DM.Query.Open;
//        if DM.Query.FieldByName('CNT').AsInteger=0 then
//        begin
//          frReport1.FindObject('Memo26').Visible:=False;
//          frReport1.FindObject('Memo37').y:=frReport1.FindObject('Memo26').y;
//        end
//        else
//        if EditNds.Text='' then
//        begin
//          frReport1.FindObject('Memo82').memo.Text:='б/н'
//        end
//        else
//        begin
//          frReport1.FindObject('Memo26').Visible:=False;
//          frReport1.FindObject('Memo37').y:=frReport1.FindObject('Memo26').y;
//        end;
//        DM.Query.Close;
        if ((PrintMode=1) and (KolStrok>9)) or ((PrintMode>1) and (KolStrok>3)) then
        begin
          frReport1.FindObject('PageHeader1').Visible:=False;
          frReport1.FindObject('Band2').Visible:=False;
          frReport1.FindObject('ReportSummary1').Visible:=False;
          frReport1.FindObject('Child1').Visible:=True;
          frReport1.Dictionary.Variables.Variable['SUM_ALL']:=SumAll;
        end;
      end;
      if DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 1 then
      begin
        DM.Query.Close;
        DM.Query.SQL.Text:='SELECT SUM(kart.KOL_RASH) Kol_Rash,SUM(ostatki.KOL_TRANS) kol_trans, SUM(ttn_stroki.BRUTTO) ves_brutto,SUM(ttn_stroki.kol_mest) kol_mest FROM kart '+
                       'INNER JOIN Ostatki ON Kart.KART_ID = Ostatki.KART_ID '+
                       'INNER JOIN TTN_Stroki ON Kart.STROKA_ID = TTN_Stroki.STROKA_ID '+
                       'WHERE Kart.DOC_ID ='+IntToStr(DM.TTNDOC_ID.AsInteger);
        DM.Query.Open;
        if DM.Query.fieldByName('kol_trans').AsFloat <> 0 then
          frReport1.Dictionary.Variables.Variable['KOL_MEST']:=DM.Query.fieldByName('kol_rash').AsFloat/DM.Query.fieldByName('kol_trans').AsFloat
        else
        frReport1.Dictionary.Variables.Variable['KOL_MEST']:=DM.Query.fieldByName('kol_rash').AsFloat;
        //kol_mest:=DM.Query.fieldByName('kol_mest').Asvariant;
        frReport1.Dictionary.Variables.Variable['BRUTTO']:=DM.Query.fieldByName('ves_brutto').AsFloat;
        DM.Query.Close;
      end
      else
      begin
        DM.Query.Close;
        DM.Query.SQL.Text:='select sum(kartv.tag) kol_mest, cast(sum(kartv.brutto) as numeric(9,5)) brutto '+
         ' from kartv where kartv.doc_id = '+IntToStr(DM.TTNDOC_ID.AsInteger);
        DM.Query.Open;
        frReport1.Dictionary.Variables.Variable['KOL_MEST']:=DM.Query.fieldByName('kol_mest').AsInteger;
        frReport1.Dictionary.Variables.Variable['BRUTTO']:=DM.Query.fieldByName('brutto').AsFloat;
        if DM.Query.fieldByName('kol_mest').AsInteger<>0 then
          frReport1.Dictionary.Variables.Variable['KOLMEST']:=''''+SumToString(DM.Query.fieldByName('kol_mest').AsInteger)+''''
        else
          frReport1.Dictionary.Variables.Variable['KOLMEST']:=''''+' '+'''';
        if DM.Query.fieldByName('brutto').AsFloat<>0 then
        begin
          brt := '';
          if (int(DM.Query.fieldByName('brutto').AsFloat) = 0) then
             BrkgS := ''
          else
          begin
             BrkgS := SumToString(Round(Int(DM.Query.fieldByName('brutto').AsFloat)))+' кг.';
          end;
          brg := Round(Frac(DM.Query.fieldByName('brutto').AsFloat)*1000);
          if int(brg)<>0 then
            BrgS := ' '+SumToString(brg)+' г.'
          else
            BrgS := '';
          brmg := Round(Frac(DM.Query.fieldByName('brutto').AsFloat*1000)*1000);
          if int(brmg)<>0 then
            BrmgS := ' '+SumToString(brmg)+' мг.'
          else
            BrmgS := '';
 {         BruttoT := DM.Query.fieldByName('brutto').AsFloat/1000;
          if (int(DM.Query.fieldByName('brutto').AsFloat) = 0) then
             brt := ''
          else
          begin
             if (int(BruttoT) = 1) then  brt :='ОДНА т.'
             else
             if (int(BruttoT) = 2) then  brt :='ДВЕ т.'
             else brt := SumToString(Round(Int(BruttoT)))+' т.';
          end;
          brgr := AddCharR('0',ExtractWord(2,DM.Query.fieldByName('brutto').AsString,[',']),4);
          if copy(brgr,1,3) <> '' then
             brkg :=  StrToInt(copy(brgr,1,3))
          else
             brkg := 0;
          if brkg <>0 then
            BrkgS := ' '+SumToString(brkg)+' кг.'
          else
            BrkgS := '';
          if copy(brgr,4,1) <> '' then
             brg :=  StrToInt(copy(brgr,4,1))*100
          else
             brg := 0;
          if brg<>0 then
            BrgS := ' '+SumToString(brg)+' г.'
          else
            BrgS := '';  }
           frReport1.Dictionary.Variables.Variable['BRUTTOSTR']:= ''''+brt+' '+brkgs+' '+BrgS+' '+BrmgS+'''';
        end
        else
          frReport1.Dictionary.Variables.Variable['BRUTTOSTR']:= ''''+' '+'''';
      end;
      frReport1.Dictionary.Variables.Variable['SUM_ALL']:=SumAll;
      frReport1.Dictionary.Variables.Variable['SUM_NDS']:=SumNds;
      StopWait;
      if FLookup.IBQuery.FieldByName('PRIZ_BACK').AsInteger = 1 then
      begin
        frReport1.ShowReport;
        StopWait;
      end
      else
      begin
        if (DM.QueryTipDokTip_Dok_id.AsInteger = 8) or (DM.QueryTipDokTip_Dok_id.AsInteger = 84) then
        begin
///////////////    Процедура печати накладной
           DM.Query.SQL.Text:='SELECT SUM(ttn_stroki.kol_mest) Kol_mest,SUM(ttn_stroki.BRUTTO) ves_brutto FROM kart '+
                       'INNER JOIN Ostatki ON Kart.KART_ID = Ostatki.KART_ID '+
                       'INNER JOIN TTN_Stroki ON Kart.STROKA_ID = TTN_Stroki.STROKA_ID '+
                       'WHERE Kart.DOC_ID ='+IntToStr(DM.TTNDOC_ID.AsInteger);

           DM.Query.Open;
           if DM.Query.fieldByName('Kol_mest').Asvariant=0 then
              kolmest:=''

           else
              kolmest:=sumtostring(round(int(DM.Query.fieldByName('Kol_mest').AsFloat)));
           if DM.Query.fieldByName('ves_brutto').AsFloat<>0 then
           begin
              Brutto := Round(Int(DM.Query.fieldbyName('ves_brutto').AsFloat));
              Sum_Cop := Round(Frac(DM.Query.fieldbyName('ves_brutto').AsFloat)*1000);
              Brutto_str:=sumtostring(Brutto)+' кг ';
              if Sum_Cop<>0 then Brutto_str:=Brutto_str+sumtostring(Sum_Cop)+' г';
           end
           else
              Brutto_str:='';
           if (KolStrok>14)then
           begin
              frReport1.Dictionary.Variables.Variable['SUM_ALL']:=SumAll;
              frReport1.FindObject('Masterheader1').Visible:=true;
              frReport1.FindObject('Memo132').Visible:=false;
              frReport1.FindObject('Memo181').Visible:=false;
              frReport1.FindObject('Band2').Visible:=False;
              frReport1.FindObject('ReportSummary1').Visible:=True;
              frReport1.FindObject('Masterfooter1').Visible:=true;
              frReport1.FindObject('Child1').Visible:=True;  // Будет потом приложение
              frReport1.FindObject('Child3').Visible:=True;
              if (KolStrok<40)  then page_n:=1
              else if (KolStrok>=40) and (KolStrok<=80) then page_n:=2
                   else page_n:=3;
           end
           else
           if (KolStrok<=14)then
           begin
              frReport1.FindObject('Child3').Visible:=True ;
              frReport1.Dictionary.Variables.Variable['SUM_ALL']:=SumAll;
              frReport1.FindObject('Memo181').Visible:=false;
           end;
           frReport1.ShowReport;
           if (KolStrok>14) then
           begin
     //        frReport1.LoadFromFile('Nakl_new_umc.frf');
             frReport1.DoublePass;
             frReport1.FindObject('ReportTitle1').Visible:=False;
             frReport1.FindObject('Masterheader1').Visible:=True;
             frReport1.FindObject('Band2').Visible:=True;
             frReport1.FindObject('ReportSummary1').Visible:=False;
             frReport1.FindObject('Memo132').Visible:=True; // приложение к накладной
             frReport1.FindObject('Memo181').Visible:=true;
             frReport1.FindObject('Memo109').Visible:=false;
             frReport1.FindObject('ReportTitle2').Visible:=False;
             frReport1.FindObject('Child3').Visible:=false;
             frReport1.FindObject('Child1').Visible:=false;
             frReport1.FindObject('Masterfooter1').Visible:=true;
             frReport1.ShowReport
           end
        end

        else
        begin
          if KolStrok < FLookup.IBQuery.FieldByName('KOL1').AsInteger then
            //Одна страница
            frReport1.ShowReport
          else
          begin
            // Две страницы
            MessageDlg('В документе 2 страницы!', mtWarning, [mbOK], 0);
            frReport1.FindObject('ReportTitle2').Visible:=False;
            if KolStrok > FLookup.IBQuery.FieldByName('KOL2').AsInteger then
              frReport1.FindObject('ReportSummary1').Visible:=False;
            frReport1.ShowReport;
            MessageDlg('Переверните страницу и нажмите Ok!', mtWarning, [mbOK], 0);
            frReport1.FindObject('ReportTitle1').Visible:=False;
            frReport1.FindObject('MasterHeader1').Visible:=False;
            frReport1.FindObject('Band2').Visible:=False;
            frReport1.FindObject('MasterFooter1').Visible:=False;
            if frReport1.FindObject('MasterData1') <> Nil then
              frReport1.FindObject('MasterData1').Visible:=false;
            frReport1.FindObject('ReportTitle2').Visible:=True;
            if KolStrok > FLookup.IBQuery.FieldByName('KOL2').AsInteger then
              frReport1.FindObject('ReportSummary1').Visible:=true
            else
              frReport1.FindObject('ReportSummary1').Visible:=false;
            frReport1.ShowReport;
          end;
        end;
      end;
  finally
    frReport1.DefaultCopies := 1;
    DM.Kart.EnableControls;
    DM.KartV.EnableControls;
    FLookup.IBQuery.Close;
  end;
end;

procedure TFDokument.ATaraExecute(Sender: TObject);
begin
  if FTara = nil then
    Application.CreateForm(TFTara, Ftara);
  FTara.ShowModal;
end;

procedure TFDokument.AEditMaterialExecute(Sender: TObject);
var ChildKart: integer;
begin
  if (DM.GruppaOper = 0) and (DM.KartV.IsEmpty) then Exit;
  if (DM.GruppaOper > 0) and (DM.Kart.IsEmpty) then Exit;
  if DM.QueryTipDokTIP_DOK_ID.AsInteger=42 then
  begin
    if Inv_KartF = nil then
      Application.CreateForm(TInv_KartF, Inv_KartF);
    Inv_KartF.Doc_id := DM.Dokument.FieldByName('doc_id').AsInteger;
    Inv_KartF.Ksm_Id := DM.Kartv.FieldByName('ksm_id').AsInteger;
    Inv_KartF.Inv_id := 0;
    Inv_KartF.ShowModal;
  end
  else
    FOstatki.AViewKartExecute(Sender);
end;

procedure TFDokument.AFormAktExecute(Sender: TObject);
var
  form_document : integer;
  stroka : string;
  new_doc_id : integer;
  tip_op_id :integer;
  tip_dok_id :integer;
  name_proc : string;
begin
  //Сохраняем документ
  APost.Execute;
  //Определяем тип операции и тип создаваемого документа
  if (DM.Dokument.FieldByName('tip_dok_id').AsInteger = 71) then //списание комплектующих
  begin
    DM.Query1.Close;
    DM.Query1.SQL.Text := 'select doc_param.kod,rk_vmod_os.tip_op_id, rk_vmod_os.tip_dok_id, rk_vmod_os.name_proc from doc_param '+
     ' inner join doc_tip_param on doc_param.tip_param_id=doc_tip_param.tip_param_id '+
     ' inner join rk_vmod_os on doc_param.kod=rk_vmod_os.vmod_os_id '+
     ' where doc_tip_param.result_field='+''''+'VMOD_OS_N'+''''+
     ' and doc_param.doc_id= '+ DM.Dokument.FieldByName('doc_Id').AsString;
    DM.Query1.Open;
    tip_op_id := DM.Query1.FieldByName('Tip_op_id').AsInteger;
    tip_dok_id := DM.Query1.FieldByName('Tip_dok_id').AsInteger;
    name_proc := DM.Query1.FieldByName('name_proc').AsString;
  end
  else
  begin
    DM.Query1.Close;
    DM.Query1.SQL.Text := 'select rk_vmod_os.tip_op_id, rk_vmod_os.tip_dok_id, rk_vmod_os.name_proc from rk_vmod_os '+
     ' where rk_vmod_os.tip_dok_id_osn = '+ DM.Dokument.FieldByName('tip_dok_id').AsString+
     ' and rk_vmod_os.tip_op_id_osn = '+ DM.Dokument.FieldByName('tip_op_id').AsString;
    DM.Query1.Open;
    tip_op_id := DM.Query1.FieldByName('Tip_op_id').AsInteger;
    tip_dok_id := DM.Query1.FieldByName('Tip_dok_id').AsInteger;
    name_proc := DM.Query1.FieldByName('name_proc').AsString;
  end;
  //Проверка на существование документа
  DM.Query1.Close;
  DM.Query1.SQL.Text:='select * from document where document.tip_dok_id='+inttostr(tip_op_id)+' and '+
    ' document.dok_osn_id = '+ DM.Dokument.FieldByName('doc_Id').AsString;
  DM.Query1.Open;
  form_document := 0;
  if DM.Query1.RecordCount<>0 then
  begin
    if DM.Query1.FieldByName('priz_id').AsInteger > 1 then
    begin
      MessageDlg('Акт существует и проведен!'+#13+#10+'Переформировать нельзя!', mtWarning, [mbOK], 0);
      form_document := 1;
    end
    else
    if MessageDlg('Акт существует!'+#13+#10+'Переформировать?', mtWarning, [mbYes, mbNo], 0) = mrYes then
      form_document := 0
    else
      form_document := 1;
  end;
  DM.Query1.Close;
  if form_document =0 then
  begin
   //Создание акта
     DM.Tran_Update.StartTransaction;
     DM.IBProc.StoredProcName := name_proc;
     DM.IBProc.ParamByName('DOC_ID').AsInteger:=DM.Dokument.FieldByName('doc_Id').AsInteger;
     try
       DM.IBProc.ExecProc;
       New_Doc_Id := DM.IBProc.ParamByName('New_DOC_ID_OS').AsInteger;
       stroka := DM.IBProc.ParamByName('Ndok_OS').AsString;
       DM.Tran_Update.Commit;
     except
       on E:EIBInterbaseError do
       begin
         MessageDlg('Произошла ошибка! Акт не сформирован!', mtWarning, [mbOK], 0);
         DM.tran_update.rollback;
         raise;
       end;
     end;
    if MessageDlg('Акт создан! Номер '+Stroka+' Перейти?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    //Переоткрываем запросы, открываем Акт
      DM.QueryTipOper.Close;
      DM.GruppaOper:=0;
      DM.QueryTipOper.MacroByName('GRUPPA').AsString := 'tipdok.priz_update_nal = 0 ';
      DM.QueryTipOper.Open;
      DM.QueryTipOper.Locate('tip_op_id',tip_op_id,[]);
      DM.QueryTipDok.Close;
      DM.QueryTipDok.Open;
      DM.QueryTipDok.Locate('tip_dok_id',tip_dok_id,[]);
      DM.QueryViewDokum.Locate('doc_id',New_Doc_Id,[]);
      FDokument.Dokument_id:=New_Doc_Id;
      FDokument.LTitle.Caption:=Trim(DM.QueryTipOperNAM_OP.AsString)+' - '+Trim(DM.QueryTipDokNAME.AsString);
      FDokument.Mode:=2;
      DM.Dokument.Close;
      DM.Uslugi.Active := false;
      DM.KARTV.Active := false;
      DM.KART.Active := false;
      DM.Doc_Param.Active := false;
      DM.Doc_ParamN.Active := false;
      FDokument.FormShow(FDokument);
    end;
  end;
end;

procedure TFDokument.AFormChetfExecute(Sender: TObject);
var
  form_document : integer;
  stroka : string;
  new_doc_id : integer;
begin
  if MessageDlg('Создавать счет-фактуру на основании накладной №'+trim(DM.Dokument.FieldByName('ndok').AsString), mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;
  //Сохраняем документ
  APost.Execute;
  //Проверка на существование документа
  DM.Query1.Close;
  DM.Query1.SQL.Text:='select * from document where document.tip_dok_id=83 and '+
    ' document.dok_osn_id = '+ DM.Dokument.FieldByName('doc_Id').AsString;
  DM.Query1.Open;
  if DM.Query1.RecordCount<>0 then
  begin
    form_document := 0;
    if MessageDlg('Счет-фактура существует!'+#13+#10+'Переформировать?', mtWarning, [mbYes, mbNo], 0) = mrYes then
        form_document := 1;
  end
  else
    form_document := 1;
  DM.Query1.Close;
  //Создание приходного ордера
    DM.Tran_Update.StartTransaction;
    DM.IBProc.StoredProcName := 'RK_FORM_CHETF';
    DM.IBProc.ParamByName('DOC_ID').AsInteger:=DM.Dokument.FieldByName('doc_Id').AsInteger;
    try
      DM.IBProc.ExecProc;
      DM.Tran_Update.Commit;
    except
      on E:EIBInterbaseError do
      begin
        ShowMessage(E.Message);
        DM.tran_update.rollback;
      end;
    end;
    if MessageDlg('Счет-фактура создан! Перейти ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    //Переоткрываем запросы, открываем счет
      New_Doc_Id := DM.IBProc.ParamByName('New_DOC_ID').AsInteger;
      DM.QueryTipOper.Close;
      DM.GruppaOper := 0;
      DM.QueryTipOper.MacroByName('GRUPPA').AsString := 'TipOp.GR_OP_ID = 2 and tipdok.priz_update_nal = 0 ';
      DM.QueryTipOper.Open;
      DM.QueryTipDok.Close;
      DM.QueryTipDok.Open;
      DM.QueryTipDok.Locate('tip_dok_id',83,[]);
      DM.QueryViewDokum.Locate('doc_id',New_Doc_Id,[]);
      FDokument.Dokument_id:=New_Doc_Id;
      FDokument.LTitle.Caption:=Trim(DM.QueryTipOperNAM_OP.AsString)+' - '+Trim(DM.QueryTipDokNAME.AsString);
      FDokument.Mode:=2;
      DM.Dokument.Close;
      DM.Uslugi.Active := false;
      DM.KARTV.Active := false;
      DM.KART.Active := false;
      DM.Doc_Param.Active := false;
      DM.Doc_ParamN.Active := false;
      FDokument.FormShow(FDokument);
    end;

end;

procedure TFDokument.AFormPoExecute(Sender: TObject);
var
  form_document : integer;
  stroka : string;
  new_doc_id : integer;
begin
  if MessageDlg('Создавать приходный ордер на основании накладной №'+trim(DM.Dokument.FieldByName('ndok').AsString), mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;
  //Сохраняем документ
  APost.Execute;
  //Проверка на существование документа
  DM.Query1.Close;
  DM.Query1.SQL.Text:='select * from document where document.tip_dok_id=6 and '+
    ' document.dok_osn_id = '+ DM.Dokument.FieldByName('doc_Id').AsString;
  DM.Query1.Open;
  if DM.Query1.RecordCount<>0 then
  begin
    form_document := 0;
    if DM.Query1.FieldByName('Priz_Id').AsInteger>1 then
    begin
      if MessageDlg('Приходный ордер существует и проведен по бух.учету!'+#13+#10+'Переформировать?', mtWarning, [mbYes, mbNo], 0) = mrYes then
        form_document := 1;
    end
    else
    begin
      if MessageDlg('Приходный ордер существует!'+#13+#10+'Переформировать?', mtWarning, [mbYes, mbNo], 0) = mrYes then
        form_document := 1;
    end;
  end
  else
    form_document := 1;
  DM.Query1.Close;
  //Создание приходного ордера
    DM.Tran_Update.StartTransaction;
    DM.IBProc.StoredProcName := 'RK_FORM_PO';
    DM.IBProc.ParamByName('DOC_ID').AsInteger:=DM.Dokument.FieldByName('doc_Id').AsInteger;
    try
      DM.IBProc.ExecProc;
      DM.Tran_Update.Commit;
    except
      on E:EIBInterbaseError do
      begin
        ShowMessage(E.Message);
        DM.tran_update.rollback;
      end;
    end;
   //Формирование номера документа и строки для вопроса
    if DM.IBProc.ParamByName('NDOK_OS').AsString<>'' then
      Stroka := trim(DM.IBProc.ParamByName('NDOK_OS').AsString);
    if DM.IBProc.ParamByName('NDOK_TMC').AsString<>'' then
    begin
      if stroka <> '' then Stroka:=stroka+' и ';
      Stroka := Stroka + trim(DM.IBProc.ParamByName('NDOK_TMC').AsString);
    end;
    if DM.IBProc.ParamByName('New_DOC_ID_OS').AsInteger <> 0 then
      New_Doc_Id := DM.IBProc.ParamByName('New_DOC_ID_OS').AsInteger
    else
      New_Doc_Id := DM.IBProc.ParamByName('New_DOC_ID_TMC').AsInteger;
    //Формируем проводки
    if fVvod.AProvDoc.Enabled then
    begin
      DM.Tran_Update.StartTransaction;
      DM.IBProc.StoredProcName := 'RK_FORM_PROV_DOC';
      DM.IBProc.ParamByName('IN_DOC_ID').AsInteger := New_Doc_Id;
      DM.IBProc.ParamByName('IN_PRIZN_FORM').AsInteger := 1;
      try
        DM.IBProc.ExecProc;
        DM.Tran_Update.Commit;
        DM.Tran_Select.CommitRetaining;
      except
        on E:EIBInterbaseError do
        begin
          ShowMessage(E.Message);
          DM.tran_update.rollback;
        end;
      end;
    end;
    if MessageDlg('Приходный ордер создан! Номер '+Stroka+' Перейти к приходному ордеру?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    //Переоткрываем запросы, открываем приходный ордер
      DM.QueryTipOper.Close;
      DM.GruppaOper := 1;
      DM.QueryTipOper.MacroByName('GRUPPA').AsString := 'TipOp.GR_OP_ID = 1 and tipdok.priz_update_nal = 1 ';
      DM.QueryTipOper.Open;
      DM.QueryTipDok.Close;
      DM.QueryTipDok.Open;
      DM.QueryTipDok.Locate('tip_dok_id',6,[]);
      DM.QueryViewDokum.Locate('doc_id',New_Doc_Id,[]);
      FDokument.Dokument_id:=New_Doc_Id;
      FDokument.LTitle.Caption:=Trim(DM.QueryTipOperNAM_OP.AsString)+' - '+Trim(DM.QueryTipDokNAME.AsString);
      FDokument.Mode:=2;
      DM.Dokument.Close;
      FDokument.FormShow(FDokument);
    end;
end;

procedure TFDokument.ALogExecute(Sender: TObject);
begin
    if FLog = nil then
      Application.CreateForm(TFLog, FLog);
    FLog.ShowModal;
end;

procedure TFDokument.EditDOK_OSN_ID_LOOKUPButtonClick(Sender: TObject);
var
  nal : double;
  Name : string;
  KodSpr : integer;
begin
    if fDok_Osn.ShowModal = mrOK then    //Документ основание выбран
    begin
      if DM.Dokument.State = dsBrowse then
         DM.Dokument.Edit;
      DM.Dokument.FieldByName('Dok_Osn_Id').AsInteger := DM.Dok_OsnDOC_ID.AsInteger;
      DM.Dokument.FieldByName('Dok_Osn_Id_Lookup').AsString := DM.Dok_OsnNdok.AsString;
      if ((DM.Dok_OsnTIP_DOK_ID.AsInteger = 12) or (DM.Dok_OsnTIP_DOK_ID.AsInteger = 23))
        and (DM.QueryTipOperTIP_OP_ID.AsInteger = 7)  then
      begin
        // Выбор разрешения
        if DM.Doc_Param.Locate('RESULT_FIELD','NDOKRAZR',[loPartialKey]) then
        begin
          if DM.Doc_ParamKOD.AsInteger <> 0 then
          begin
            DM.Query1.Close;
            DM.Query1.SQL.Text:='select document.dok_osn_id '+
            ' from document where document.doc_id='+ DM.Doc_ParamKOD.AsString;
            DM.Query1.Open;
            if (DM.Query1.FieldByName('dok_osn_id').AsInteger <> DM.Dokument.FieldByName('Dok_osn_id').AsInteger) then
            begin
              FindSpr('RAZR',DM.UMC_DATA, Name,KodSpr,DM.Dokument.FieldByName('Dok_osn_id').AsInteger);
              DM.Doc_Param.Edit;
              DM.Doc_ParamPARAM_VALUE.AsString := Name;
              DM.Doc_ParamKod.AsInteger := KodSpr;
            end;
          end
          else
          begin
            FindSpr('RAZR',DM.UMC_DATA, Name,KodSpr,DM.Dokument.FieldByName('Dok_osn_id').AsInteger);
            DM.Doc_Param.Edit;
            DM.Doc_ParamPARAM_VALUE.AsString := Name;
            DM.Doc_ParamKod.AsInteger := KodSpr;
          end;
          DM.Query1.Close;
        end;
      end;
      if (DM.QueryTipOperTIP_OP_ID.AsInteger = 124) then  //Комплектация ОС
      begin
        DM.Dokument.FieldByName('VP_ID').AsInteger := DM.Dok_OsnVP_ID.AsInteger;
        DM.Dokument.FieldByName('KPV').AsFloat := DM.Dok_OsnKPV.AsFloat;
        DM.Dokument.FieldByName('STRUK_ID').AsInteger := DM.Dok_OsnStruk_Id.AsInteger;
        DM.Query1.Close;
        DM.Query1.SQL.Text:='select first 1 kartv.ksm_id, matrop.nmat from kartv '+
          ' inner join matrop on kartv.ksm_id=matrop.ksm_id where kartv.doc_id='+ DM.Dok_OsnDOC_ID.AsString;
        DM.Query1.Open;
        DM.Dokument.FieldByName('KLIENT_ID').AsInteger := DM.Query1.FieldByName('ksm_id').AsInteger;
        DM.Dokument.FieldByName('KLIENT_ID_LOOKUP').AsString := DM.Query1.FieldByName('nmat').AsString;
      end
      else
      if ((DM.QueryTipOperTIP_OP_ID.AsInteger <> 92)
        and (DM.QueryTipOperTIP_OP_ID.AsInteger <> 43)) then  //Доверенности
      begin
        DM.Dokument.FieldByName('NDS').AsFloat := DM.Dok_OsnNDS.AsFloat;
        DM.Dokument.FieldByName('VP_ID').AsInteger := DM.Dok_OsnVP_ID.AsInteger;
        DM.Dokument.FieldByName('KPV').AsFloat := DM.Dok_OsnKPV.AsFloat;
        DM.Dokument.FieldByName('KLIENT_ID').AsInteger := DM.Dok_OsnKlient_Id.AsInteger;
        DM.Dokument.FieldByName('KLIENT_ID_LOOKUP').AsString := DM.Dok_OsnKLIENT_NAME.AsString;
      end;
      if EditSTRUK_ID_LOOKUP.Visible then
      begin
        DM.Query1.Close;
        DM.Query1.SQL.Text:='select configumc.stname from configumc '+
          ' where configumc.struk_id = '+ DM.Dokument.FieldByName('Struk_Id').AsString;
        DM.Query1.Open;
        DM.Dokument.FieldByName('STRUK_ID_LOOKUP').AsString := DM.Query1.FieldByName('STNAME').AsString;
        DM.Query1.Close;
      end;
      // Перенос договора - основания для ТТН
      if DM.QueryTipDokTTN.AsInteger = 1 then
      begin
        DM.Query1.Close;
        DM.Query1.SQL.Text:='select iif(d1.tip_dok_id =12, doc_dog.ndok, tipdok.short_name||d1.ndok) ndok, '+
           ' iif(d1.tip_dok_id =12, doc_dog.date_dok, d1.date_dok) date_dok, '+
           ' iif(d1.tip_dok_id =12, d1.ndok,'+''''+''''+') ndok_pril, '+
           ' iif(d1.tip_dok_id =12, d1.date_dok, null) date_dok_pril '+
           '  from document d1 '+
           '  inner join tipdok on d1.tip_dok_id =tipdok.tip_dok_id '+
           '  left join document doc_dog on d1.dok_osn_id=doc_dog.doc_id '+
           '  where d1.doc_id ='+ DM.Dokument.FieldByName('Dok_Osn_Id').AsString;
        DM.Query1.Open;
        if DM.Query1.FieldByName('NDOK').AsString<>'' then
        begin
          DM.TTNKONTRAKT.AsString := trim(DM.Query1.FieldByName('NDOK').AsString);
          DM.TTNKONTRAKT_DATE.AsDateTime := DM.Query1.FieldByName('DATE_DOK').AsDateTime;
          DM.TTNPRIL.AsString := trim(DM.Query1.FieldByName('NDOK_PRIL').AsString);
          DM.TTNDATE_PRIL.AsVariant := DM.Query1.FieldByName('DATE_DOK_PRIL').AsVariant;
        end;
        DM.Query1.Close;
      end;
      //Перенос материалов из документа - основания
      DM.Query1.Close;
      if DM.TipDokPRIZ_UPDATE_NAL.AsInteger = 1 then // Документ-основание изменяет наличие
        DM.Query1.SQL.Text:='SELECT * FROM KART WHERE DOC_ID = '+DM.Dok_OsnDOC_ID.AsString
      else
        DM.Query1.SQL.Text:='SELECT * FROM KARTV WHERE DOC_ID = '+DM.Dok_OsnDOC_ID.AsString;
      DM.Query1.Open;
      if (DM.Query1.RecordCount <> 0) and (DM.QueryTipDokPRIZ_USLUGI.AsInteger <> 1) then
      begin
        if MessageDlg('Переносить материалы?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
        DM.Kart.AfterPost := nil;
        try
          if DM.QueryTipOperTIP_OP_ID.AsInteger = 7 then APost.Execute; //Для отгрузки сохраняем документ
          DM.Query1.First;
          while not DM.Query1.Eof do
          begin
            if DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 1 then // Документ изменяет наличие
            begin
              DM.Kart.Append;
              DM.KartDOC_ID.AsInteger := DM.Dokument.FieldByName('DOC_ID').AsInteger;
              DM.KartKSM_ID.AsInteger := DM.Query1.FieldByName('KSM_ID').AsInteger;
              if  DM.QueryTipOperGR_OP_ID.AsInteger = 2 then
              begin
                DM.KartKOL_PRIH.AsFloat := 0;
                DM.KartKOL_RASH.AsFloat := DM.Query1.FieldByName('Kol_Rash').AsFloat+DM.Query1.FieldByName('Kol_Prih').AsFloat;
              end
              else
              begin
                DM.KartKOL_PRIH.AsFloat := DM.Query1.FieldByName('Kol_Rash').AsFloat+DM.Query1.FieldByName('Kol_Prih').AsFloat;
                DM.KartKOL_RASH.AsFloat := 0;
              end;
              DM.KartNDS.AsFloat := DM.Query1.FieldByName('Nds').AsFloat;
              DM.KartCena.AsFloat := DM.Query1.FieldByName('Cena').AsFloat;
              DM.KartCena_Vp.AsFloat := DM.Query1.FieldByName('Cena_Vp').AsFloat;
              if DM.TipDokTip_dok_id.AsInteger <> 89 then       //Разрешения
                DM.KartTAG.AsInteger := DM.Query1.FieldByName('TAG').AsInteger;
              DM.KartCena_Price.AsFloat := DM.Query1.FieldByName('Cena_Price').AsFloat;
              DM.KartSkid_Cen.AsFloat := DM.Query1.FieldByName('Skid_Cen').AsFloat;
              if ((DM.TipDokPRIZ_UPDATE_NAL.AsInteger = 1) and (DM.QueryTipOperGR_OP_ID.AsInteger = DM.TipDokGR_OP_ID.AsInteger)) then
                DM.KartKART_ID.AsInteger := DM.Query1.FieldByName('KART_ID').AsInteger
              else
              begin
                if ((DM.TipDokPRIZ_UPDATE_NAL.AsInteger = 0) and (DM.Query1.FieldByName('SERIA_ID').AsInteger = 0)) then
                begin
                  DM.Query.Close;
                  DM.Query.SQL.Text:='select ostatki.kart_id, ot_s from ostatki '+
                  ' where ostatki.ksm_id = '+ DM.Query1.FieldByName('KSM_ID').AsString +
                  ' and ostatki.struk_id = ' + DM.Dokument.FieldByName('struk_id').AsString;
                  DM.Query.Open;
                  if DM.Query.RecordCount <> 0 then
                  begin
                    DM.KartKART_ID.AsInteger := DM.Query.FieldByName('KART_ID').AsInteger;
                    nal := DM.Query.FieldByName('ot_s').AsFloat;
                  end;
                  DM.Query.Close;
                end
                else
                if  ((DM.TipDokPRIZ_UPDATE_NAL.AsInteger = 0) and (DM.Query1.FieldByName('SERIA_ID').AsInteger <> 0))  then
                begin
                  DM.Query.Close;
                  DM.Query.SQL.Text:='select ostatki.kart_id, seria.seria, ot_s from ostatki '+
                  ' inner join seria on ostatki.seria_id = seria.seria_id '+
                  ' where ostatki.ksm_id = '+ DM.Query1.FieldByName('KSM_ID').AsString +
                  ' and ostatki.struk_id = ' + DM.Dokument.FieldByName('struk_id').AsString +
                  ' and ostatki.seria_id = ' + DM.Query1.FieldByName('SERIA_ID').AsString;
                  DM.Query.Open;
                  if DM.Query.RecordCount <> 0 then
                  begin
                    nal := DM.Query.FieldByName('ot_s').AsFloat;
                    if (DM.TipDokTIP_DOK_ID.AsInteger = 89)  and
                      (DM.QueryTipOperTIP_OP_ID.AsInteger = 7) and
                      (DM.Query1.FieldByName('TAG').AsInteger <> 0) then    //накладная на оновании разрешения
                      DM.KartKART_ID.AsInteger := DM.Query1.FieldByName('TAG').AsInteger
                    else
                      DM.KartKART_ID.AsInteger := DM.Query.FieldByName('KART_ID').AsInteger;
                    DM.KartSERIA.AsString := DM.Query.FieldByName('SERIA').AsString;
                  end;
                  DM.Query.Close;
                end;
                if DM.QueryTipOperTIP_OP_ID.AsInteger = 7 then     //Проверка наличия для ТТН
                begin
                  if nal < DM.KartKOL_RASH.AsFloat then
                    DM.KartKOL_RASH.AsFloat := 0;
                  if DM.QueryTipOperTIP_OP_ID.AsInteger = 7 then PostTTN; //Для отгрузки сохраняем документ
                end;
              end;
            end
            else
            begin
              DM.KartV.Append;
              DM.KartVDOC_ID.AsInteger := DM.Dokument.FieldByName('DOC_ID').AsInteger;
              DM.KartVKSM_ID.AsInteger := DM.Query1.FieldByName('KSM_ID').AsInteger;
              DM.KartVKOL_PRIH.AsFloat := DM.Query1.FieldByName('Kol_Prih').AsFloat;
              DM.KartVKOL_RASH.AsFloat := DM.Query1.FieldByName('Kol_Rash').AsFloat;
              DM.KartVNDS.AsFloat := DM.Query1.FieldByName('Nds').AsFloat;
              DM.KartVCena.AsFloat := DM.Query1.FieldByName('Cena').AsFloat;
              DM.KartVCena_Vp.AsFloat := DM.Query1.FieldByName('Cena_Vp').AsFloat;
              if DM.TipDokTIP_OP_ID.AsInteger <> 7 then
                DM.KartVTAG.AsInteger := DM.Query1.FieldByName('TAG').AsInteger;
              DM.KartVCena_Price.AsFloat := DM.Query1.FieldByName('Cena_Price').AsFloat;
              DM.KartVSkid_Cen.AsFloat := DM.Query1.FieldByName('Skid_Cen').AsFloat;
              if (DM.TipDokPRIZ_UPDATE_NAL.AsInteger = 1) then   //Документ формируется на основании накладной
              begin
                DM.Query.Close;
                DM.Query.SQL.Text:='select seria.seria, ostatki.seria_id,ostatki.kol_trans,'+
                ' ttn_stroki.brutto, ttn_stroki.netto, ttn_stroki.kol_mest from kart '+
                ' left join ostatki on kart.kart_id = ostatki.kart_id '+
                ' left join seria on ostatki.seria_id = seria.seria_id '+
                ' left join ttn_stroki on kart.stroka_id = ttn_stroki.stroka_id '+
                ' where kart.stroka_id = '+ DM.Query1.FieldByName('STROKA_ID').AsString;
                DM.Query.Open;
                if DM.TipDokTIP_DOK_ID.AsInteger = 89 then
                  DM.KARTVTAG.AsInteger := DM.Query1.FieldByName('KART_ID').AsInteger
                else
                  DM.KARTVTAG.AsInteger := DM.Query.FieldByName('Kol_Mest').AsInteger;
                DM.KARTVSERIA_ID.AsInteger := DM.Query.FieldByName('SERIA_ID').AsInteger;
                DM.KARTVSERIA.AsString := DM.Query.FieldByName('SERIA').AsString;
                DM.KARTVKOL_TRANS.AsFloat := DM.Query.FieldByName('KOL_TRANS').AsFloat;
                DM.KARTVBRUTTO.AsFloat := DM.Query.FieldByName('BRUTTO').AsFloat;
                DM.KARTVNETTO.AsFloat := DM.Query.FieldByName('NETTO').AsFloat;
                DM.Query.Close;
              end;
            end;
            DM.Query1.Next;
          end;
        finally
          DM.Kart.AfterPost := DM.KartAfterPost;
        end;
       end;
      end
      else
        FormStrok;
      if DM.QueryTipOperTIP_OP_ID.AsInteger = 7 then     //Для отгрузки сохраняем документ
      begin
        APost.Execute;
        DBGridEh2.SumList.Active := false;
        DBGridEh2.SumList.Active := true;
        DM.Dokument.Refresh;
        if DM.Dok_OsnTIP_DOK_ID.AsInteger = 89 then WriteParamRazr;
      end;
      if DM.QueryTipDokTIP_DOK_ID.AsInteger = 89 then FormRazr(DM.Dok_OsnDOC_ID.AsInteger);
      if (DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger <> 1) then // Документ изменяет наличие
      begin
        APost.Execute;
        DM.KARTV.Active := false;
        DM.KARTV.Active := true;
      end;
      if (DM.QueryTipDokTIP_DOK_ID.AsInteger = 126) then   //Для ТН2 на отв.хранение формируем П/о
      begin
        if not DM.Tran_Update.Active then DM.Tran_Update.StartTransaction;
        DM.IBProc.StoredProcName := 'RK_FORM_PROV_DOC';
        DM.IBProc.ParamByName('IN_DOC_ID').AsInteger := DM.Dokument.FieldByName('DOC_ID').AsInteger;
        DM.IBProc.ParamByName('IN_PRIZN_FORM').AsInteger := 0;
        DM.IBProc.ExecProc;
        DM.Tran_Update.Commit;
      end;
    end
    else              //Документ основание НЕ выбран
    begin
      if DM.Dokument.FieldByName('Dok_Osn_Id').AsInteger <> 0 then
        if MessageDlg('Отменить документ-основание?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          DM.Dokument.FieldByName('Dok_Osn_Id').AsVariant := null;
          DM.Dokument.FieldByName('Dok_Osn_Id_Lookup').AsString := '';
        end;
    end;
end;

procedure TFDokument.PostTTN;
begin
  if not DM.Tran_Update.Active then DM.Tran_Update.StartTransaction;
  if DM.Kart.Active then DM.Kart.ApplyUpdates;
  // --- Товарно транспортная накладная
  if DM.QueryTipDokTTN.AsInteger = 1 then
  begin
    DM.TTN_Stroki.ApplyUpdates;
    DM.TTN.ApplyUpdates;
  end;
  if DM.Doc_Param.Active = True then
    DM.Doc_Param.ApplyUpdates;
  DM.Tran_Update.Commit;
  DM.Tran_Select.CommitRetaining;
end;
procedure TFDokument.RxDBComboEdit1ButtonClick(Sender: TObject);
var Kod: integer;
begin
  if DM.Kart.IsEmpty then Exit;
  if FindSprorg = nil then
    Application.CreateForm(TFindSprorg, FindSprorg);
  FindSprorg.DataBaseName:=DM.UMC_DATA;
  FindSprorg.ReadOnly:=True;
  Kod:=FindSprorg.ShowModal;
  DM.UMC_DATA.DefaultTransaction.CommitRetaining;
  if Kod<50 then Exit;
  DM.Kart.Edit;
  DM.KartORG_ID_BRAK.AsInteger:=Kod-50;
  DM.Query.Close;
  DM.Query.SQL.Text:='SELECT NAM FROM Sprorg WHERE KOD = '+IntToStr(Kod-50);
  DM.Query.Open;
  DM.KartNAM.AsString:=DM.Query.fieldByName('NAM').AsString;
  DM.Kart.Post;
  DM.Query.Close;
end;

procedure TFDokument.RxDBComboEdit3ButtonClick(Sender: TObject);
begin
  DM.Query.Close;
  if Sender=RxDBComboEdit3 then
  begin
    FLookup.IBQuery.Database := DM.UMC_DATA;
    FLookup.IBQuery.Close;
    FLookup.IBQuery.SQL.Text:='SELECT CEL_PRIOB_ID ID,NAME_CEL NAM FROM CEL_PRIOB';
    FLookup.IBQuery.Open;
    FormToObject(FLookup,RxDBComboEdit3);
    if FLookup.ShowModal>50 then
    begin
      if DM.TTN.State = dsBrowse then DM.TTN.Edit;
      DM.TTNCEL_PRIOB.AsString:=FLookup.IBQuery.FieldByName('NAM').AsString;
    end;
    FLookup.IBQuery.Close;
  end
  else
  if Sender=RxDBComboEdit4 then
  begin
    FLookup.IBQuery.Database := DM.UMC_DATA;
    FLookup.IBQuery.Close;
    FLookup.IBQuery.SQL.Text:='SELECT VID_PER_ID ID, NAM FROM VID_PER';
    FLookup.IBQuery.Open;
    FormToObject(FLookup,RxDBComboEdit4);
    if FLookup.ShowModal>50 then
    begin
      if DM.TTN.State = dsBrowse then DM.TTN.Edit;
      DM.TTNVID_PER.AsString:=FLookup.IBQuery.FieldByName('NAM').AsString;
    end;
    FLookup.IBQuery.Close;
  end
  else
  if Sender=RxDBComboEdit5 then
  begin
    FLookup.IBQuery.Database := DM.UMC_DATA;
    FLookup.IBQuery.Close;
    FLookup.IBQuery.SQL.Text:='SELECT USL_POST_ID ID, NAM FROM USL_POST';
    FLookup.IBQuery.Open;
    FormToObject(FLookup,RxDBComboEdit5);
    if FLookup.ShowModal>50 then
    begin
      if DM.TTN.State = dsBrowse then DM.TTN.Edit;
      DM.TTNUSL_POST.AsString:=FLookup.IBQuery.FieldByName('NAM').AsString;
    end;
    FLookup.IBQuery.Close;
  end
  else
  if Sender=RxDBComboEdit8 then
  begin
    FLookup.IBQuery.Database := DM.UMC_DATA;
    FLookup.IBQuery.Close;
    FLookup.IBQuery.SQL.Text:='SELECT POS_ID ID, NAM FROM UMC_VID_POSTAVKI';
    FLookup.IBQuery.Open;
    FormToObject(FLookup,RxDBComboEdit5);
    if FLookup.ShowModal>50 then
    begin
      if DM.TTN.State = dsBrowse then DM.TTN.Edit;
      DM.TTNPOS_ID.AsInteger:=FLookup.IBQuery.FieldByName('id').AsInteger;
      DM.TTNVID_POS_NAM.AsString:=FLookup.IBQuery.FieldByName('nam').AsString;
    end;
    FLookup.IBQuery.Close;
  end
  else
  if (Sender=RxDBComboEdit7) and (not DM.Kart.IsEmpty) then
  begin
    FLookup.IBQuery.Database := DM.UMC_DATA;
    FLookup.IBQuery.Close;
    FLookup.IBQuery.SQL.Text:='SELECT OSNOV_BRAK_ID ID, NAME_OSNOV_BRAK NAM FROM Osnov_brak';
    FLookup.IBQuery.Open;
    FormToObject(FLookup,RxDBComboEdit7);
    if FLookup.ShowModal>50 then
    begin
      if not ((DM.Kart.State=dsInsert) or (DM.Kart.State=dsEdit)) then DM.Kart.Edit;
      DM.KartOSNOV_BRAK_ID.AsInteger:=FLookup.IBQuery.fieldbyName('ID').AsInteger;
      DM.KartNAME_OSNOV_BRAK.AsString:=FLookup.IBQuery.fieldbyName('NAM').AsString;
    end;
    FLookup.IBQuery.Close;
  end;
end;

procedure TFDokument.RxDBComboEdit2ButtonClick(Sender: TObject);
var
  KodSpr: integer;
  Name : String;
begin
  FindSpr(Trim(DM.QueryTipDokLOOKUP.AsString),DM.UMC_DATA, Name,KodSpr,DM.TTNZAK_ID.AsInteger);
  if KodSpr <> 0 then
  begin
    if DM.TTN.State = dsBrowse then DM.TTN.Edit;
    DM.TTNZAK_ID.AsInteger:=KodSpr;
    if DM.TTNPOL_ID.AsVariant=NULL then
    begin
      DM.TTNPOL_ID.AsInteger:=DM.TTNZAK_ID.AsInteger;
    end;
    DM.TTNVLAD_TRANS.AsString := Name;
  end;
end;

procedure TFDokument.ComboBox1CloseUp(Sender: TObject);
begin
  if Edit1.Text<>'' then
    DBEditEh23.Text:=ComboBox1.Items[ComboBox1.ItemIndex]+' №'+Edit1.Text+' от '+DateEdit1.Text
  else
    DBEditEh23.Text:='';
end;

procedure TFDokument.SpeedButton1Click(Sender: TObject);
begin
//   Заполнение полей ТТН прескуранта, договора и тп из таблиц договоров
  FDokument.EditDOK_OSN_ID_LOOKUPButtonClick(Sender);
end;

procedure TFDokument.SpeedButton2Click(Sender: TObject);
var
  KodSpr: integer;
  Name : String;
begin
  FindSpr(Trim(DM.QueryTipDokLOOKUP.AsString),DM.UMC_DATA, Name,KodSpr,DM.TTNPOL_ID.AsInteger);
  if KodSpr <> 0 then
  begin
    DM.TTNVLAD_TRANS.AsString := Name; 
  end;
end;

procedure TFDokument.frReport1BeginBand(Band: TfrBand);
begin
end;
// Функция проверяет, все ли поля документа заполнены,
// возвращает
// 0 - всё ок
// 1 - не заполнено поле документа
// 2 - не заполнено поле ТТН
// 3 - Внесены и не записаны изменения
function TFDokument.CheckDocument: integer;
var s: string;
begin
  if (DM.QueryTipDokPRIZ_ISP.AsInteger = 4) and (DM.Dokument.FieldByName('KLIENT_ID').AsVariant = NULL) then
  begin
    Result:=0;
    Exit;
  end;
  s:='';
  with DM.Dokument do
  begin
    if (FieldByName('NDOK').AsString='') and EditNDOK.Visible then s:='''Номер документа'''
    else if (FieldByName('DATE_OP').AsString='') and EditDATE_OP.Visible then s:=''''+LabelDATE_OP.Caption+''''
    else if (FieldByName('KLIENT_ID').AsVariant=NULL ) and (EditKLIENT_ID.Visible or EditKLIENT_ID_LOOKUP.Visible) then s:='''Клиент'''
    else if (FieldByName('VP_ID').AsVariant=NULL) and EditVP_ID.Visible then s:='''Валюта'''
    else if (FieldByName('KPV').AsVariant=NULL) and EditKPV.Visible and (FieldByName('VP_ID').AsInteger>1) then s:='''Курс''';
  end;
  if DM.Dokument.FieldByName('Tip_Op_Id').AsString <> '' then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='SELECT DESCRIPTION, FIELD_DOK FROM DOC_OPER WHERE TIP_DOK_ID = '
     +DM.Dokument.FieldByName('Tip_Dok_Id').AsString+
     ' AND TIP_OP_ID = '+DM.Dokument.FieldByName('Tip_Op_Id').AsString+
     ' AND IMP_FIELD = 1';
    DM.Query.Open;
    DM.Query.First;
    while not DM.Query.eof do
    begin
      if (DM.Dokument.FieldByName(trim(DM.Query.FieldByName('FIELD_DOK').AsString)).AsVariant=NULL) then
      s := DM.Query.FieldByName('DESCRIPTION').AsString;
      DM.Query.Next;
    end;
    DM.Query.Close;
    if s<>'' then
    begin
      ShowMessage('Не заполнено поле документа '+s);
      Result:=1;
      Exit;
    end;
  end;
    if (DM.Kart.Modified) or (DM.Kart.State = dsInsert) then DM.Kart.Post;
    if DM.GruppaOper = 2 then //Для расхода должна быть заполнена карточка
    begin
      DM.Kart.DisableControls;
      try
        DM.Kart.First;
        while not DM.Kart.Eof do
        begin
          if DM.KartKART_ID.AsInteger = 0 then
          begin
            ShowMessage('Выберите карточку для '+DM.KartKSM_ID.AsString + ' '+DM.KartNMAT.AsString);
            Result:=1;
            exit;
          end;
          DM.Kart.Next;
        end;
      finally
        DM.Kart.EnableControls;
      end;
    end;
    if ((DM.Dokument.FieldByName('tip_dok_id').AsInteger = 122)
        and ((dm.Dokument.FieldByName('struk_id').AsInteger = -19)
             or (dm.Dokument.FieldByName('struk_id').AsInteger = -23))) then
    begin
      DM.Kart.DisableControls;
      try
        DM.Kart.First;
        while not DM.Kart.Eof do
        begin
          if DM.KartKEI_ID2.AsInteger = 0 then
          begin
            ShowMessage('Заполните ед. изм. для '+DM.KartKSM_ID.AsString + ' '+DM.KartNMAT.AsString);
            Result:=1;
            exit;
          end;
          DM.Kart.Next;
        end;
      finally
        DM.Kart.EnableControls;
      end;
    end;
    //Вид расчетов для договоров
    if (DM.DOG.Active) and
    ((DM.Dokument.FieldByName('tip_dok_id').AsInteger = 97) or
     (DM.Dokument.FieldByName('tip_dok_id').AsInteger = 12) or
     (DM.Dokument.FieldByName('tip_dok_id').AsInteger = 23)) and
    (DM.Dog.FieldByName('Proc_avans').AsInteger = 0) and (DM.Dog.FieldByName('Proc_plat').AsInteger = 0) then
    begin
      MessageDlg('Введите данные по виду расчетов!', mtWarning, [mbOK], 0);
      Result:=1;
      exit;
    end;
    DM.Dokument.FieldByName('KPV').OnChange := nil;
    DM.Dokument.FieldByName('NDS').OnChange := nil;
    DM.Dokument.FieldByName('VP_ID').OnChange := nil;
    try
      if (DM.KartV.Modified) or (DM.KartV.State = dsInsert) or (DM.KartV.State = dsEdit) then DM.KartV.Post;
      if (DM.TTN.Modified) then DM.TTN.Post;
      if (DM.TTN_Stroki.Modified) then DM.TTN_Stroki.Post;
      if DM.Doc_Param.Active = True then
      if (DM.Doc_Param.Modified) or (DM.Doc_Param.State = dsEdit) then DM.Doc_Param.Post;
      if DM.Doc_ParamN.Active = True then
      if (DM.Doc_ParamN.Modified) or (DM.Doc_ParamN.State = dsEdit) then DM.Doc_ParamN.Post;
      if (DM.Uslugi.Modified) or (DM.Uslugi.State = dsInsert) or (DM.Uslugi.State = dsEdit) then DM.Uslugi.Post;
      if (DM.Dokument.Modified) or (DM.Dokument.State = dsInsert) then DM.Dokument.Post;
      //Требование - накладная для компьютерной техники
      if (DM.DOC_PARAM.Active) and (DM.Dokument.FieldByName('tip_op_id').AsInteger = 40) then
      begin
        if (DM.KartVGR.AsString = '26') and (DM.Dokument.FieldByName('Struk_Id').AsInteger <> 6) then
        begin
          DM.Doc_Param.First;
          while not DM.Doc_Param.Eof do
          begin
            if ((DM.Doc_ParamTIP_PARAM_ID.AsInteger=275) and (DM.Doc_ParamPARAM_VALUE.AsString = '')) then
              MessageDlg('Введите требование-накладную на перемещение!', mtWarning, [mbOK], 0);
            DM.Doc_Param.Next;
          end;
        end;
      end;
      if (DM.Dokument.UpdatesPending) or (DM.TTN.UpdatesPending) or
         (DM.Kart.UpdatesPending) or (DM.TTN_Stroki.UpdatesPending) or
         (DM.Kart.State=dsInsert) or (DM.Doc_Param.UpdatesPending) or
         (DM.KartV.UpdatesPending) or (DM.Doc_ParamN.UpdatesPending) or
         (DM.Uslugi.UpdatesPending) then
       Result:=3
      else Result:=0;
    finally
      DM.Dokument.FieldByName('KPV').OnChange := DocumentKPVChange;
      DM.Dokument.FieldByName('NDS').OnChange := DocumentNDSChange;
      DM.Dokument.FieldByName('VP_ID').OnChange := DocumentVP_IDChange;
    end;
    if DM.DOG.Active then
    begin
      if ((DM.DOG.Modified) or (DM.DOG.State = dsEdit))  then DM.DOG.Post;
      if DM.DOG.UpdatesPending then Result :=3;
    end;
    if DM.Doc_Tam_Pl.Active then
    begin
      if ((DM.Doc_Tam_Pl.State = dsEdit) or (DM.Doc_Tam_Pl.State = dsInsert)
        or (DM.Doc_Tam_Pl.Modified))  then DM.Doc_Tam_Pl.Post;
      if DM.Doc_Tam_Pl.UpdatesPending then Result :=3;
    end;
end;

function TFDokument.CheckDocument_Print: integer;
var s: string;
begin
  if (DM.QueryTipDokTTN.AsInteger = 1)  then
  begin
    if DM.TTNSER_NAKL.AsString='' then s:='''Серия накладной'''
    else if DM.TTNAVTO.AsString='' then s:='''Автомобиль'''
    else if DM.TTNVODITEL.AsString='' then s:='''Водитель'''
    else if DM.TTNVLAD_TRANS.AsString='' then s:='''Владелец транспорта'''
    else if DM.TTNPUT_LIST.AsString='' then s:='''Путевой лист'''
    else if DM.TTNPUNKT_POGR.AsString='' then s:='''Пункт погрузки'''
    else if DM.TTNPUNKT_RAZGR.AsString='' then s:='''Пункт разгрузки'''
    else if DM.TTNKONTRAKT.AsString='' then s:='''Контракт'''
    else if DM.TTNKONTRAKT_DATE.AsString='' then s:='''Дата контракта''';
    if DM.QueryTipOperTIP_OP_ID.AsInteger = 7 then
    begin
      if DM.TTNUSL_POST.AsString='' then s:='''Условия поставки''';
      if DM.TTNPRSTR.AsString='' then s:='''Прейскурант''';      
    end;
    if DM.Kart.Active then
    begin
      DM.Kart.First;
      while not DM.Kart.Eof do
      begin
        if DM.KartNOMU_ID.AsInteger <> 14 then  //14 - возвратная тара
        begin
          if DM.TTN_StrokiKOL_MEST.AsFloat = 0 then  s:='''Количество мест''';
          if DM.TTN_STROKIBrutto.Asfloat = 0 then  s:='''Масса груза''';
          if DM.TTN_STROKINetto.Asfloat < 0 then  s:='''Масса нетто отрицательная ''';
        end;
        DM.Kart.Next;
      end;
    end;
  end;
  if s<>'' then
  begin
    ShowMessage('Не заполнено поле ТТН '+s);
    if (DM.Kart.Modified) then DM.Kart.Post;
    Result:=2;
  end
end;

procedure TFDokument.N1Click(Sender: TObject);
begin
  if Sender=N1 then PrintMode:=1
  else if Sender=N2 then PrintMode:=2
  else if Sender=N3 then PrintMode:=3;
  APrintDok.Execute;
end;

procedure TFDokument.ToolButton7Click(Sender: TObject);
var CheckResult: integer;
  FileExt:  string;
  id : integer;
begin
  CheckResult:=CheckDocument();
  if CheckResult<>0 then
  begin
    if CheckResult<3 then exit
    else
    begin
      if MessageDlg('В документ внесены изменения! Записать?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        APost.Execute
      else Exit;
    end;
  end;
  CheckResult:=CheckDocument_Print();
  if CheckResult=2 then exit;
  FormSumString;
  if DM.QueryTipDokTTN.AsInteger = 1 then   //ТТН
  begin
    if CheckResult=1 then
    begin
      PageControl1.ActivePage:=TabSheet1;
      Exit;
    end
    else
    if CheckResult=2 then
    begin
      PageControl1.ActivePage:=TabSheet2;
      Exit;
    end;
    APrintDok.Execute;
  end
  else
  begin
    case DM.QueryTipDokTIP_DOK_ID.AsInteger of
      6:
      begin     //Приходный ордер
        if DM.Dokument.FieldByName('struk_id').AsInteger = 6 then
        begin
          DM.Prihod.Active := False;
          DM.Prihod.SQL.Clear;
          DM.Prihod.SQL.Add('SELECT Opl_Val FROM ":Prihod:Prix.DBF" WHERE POST_ID = '+
          IntToStr(DM.QueryViewDokum.FieldByName('Klient_Id').AsInteger)+
          ' AND NDOK = '+''''+DM.QueryViewDokum.FieldByName('Ndok').AsString+''''+
          ' AND DATA_PR = '+''''+DM.QueryViewDokum.FieldByName('Date_Dok').AsString+'''');
          DM.Prihod.Active := True;
          id :=0;
          If DM.Prihod.RecordCount=0 then WritePrihod(id);
        end;
        DM.PrihDragMet.Active := False;
        DM.PrihDragMet.ParamByName('DOC_ID').AsInteger := DM.KartDOC_ID.AsInteger;
        DM.PrihDragMet.Active := True;
        frDBDataSet3.DataSet := DM.PrihDragMet;
        frReport1.LoadFromFile(DM.QueryTipDokPUTH_FRF.AsString);
        frReport1.ShowReport;
        frDBDataSet3.DataSet := DM.KartDragMet;
      end;
      38,54 :
      begin     //Списание материалов
        DM.KartDragMet.Active :=False;
        DM.KartMC.Active := False;
        DM.PrihOrdDrMet.Active := False;
        DM.KartDragMet.Active :=True;
        DM.KartMC.Active := True;
        DM.PrihOrdDrMet.Active := True;
        frReport1.LoadFromFile(DM.QueryTipDokPUTH_FRF.AsString);
        frReport1.ShowReport;
      end;
    else
      begin
        if ((DM.QueryTipDokTIP_DOK_ID.AsInteger = 5) and
           (DM.QueryTipOperTIP_Op_ID.AsInteger = 6)) then
        begin   //Для внутреннего прихода печатаем приходный ордер
          frReport1.LoadFromFile('f:\umc\prih.frf');
          frReport1.ShowReport;
          exit;
        end;
        if DM.QueryTipDokPRIZ_UPDATE_NAL.AsInteger = 0 then
          if (DM.QueryTipDokPRIZ_USLUGI.AsInteger = 1) then
            frDBDataSet1.DataSource := DM.DSUslugi
          else
            frDBDataSet1.DataSource := DM.DS_KartV
        else
          frDBDataSet1.DataSource := DM.DS_Kart;
        DM.Query.Close;
        DM.Query.SQL.Text:='SELECT FORM_ID ID, NAME_FORM NAM, PUTH_FORM, KOL_STROK, PRIZ_BACK, KOL1, KOL2 FROM DOC_PUTH_FORM '+
        ' WHERE TIP_DOK_ID = '+ DM.QueryTipDokTIP_DOK_ID.AsString+'  ORDER BY FORM_ID';
        DM.Query.Open;
        if DM.Query.RecordCount > 0 then
      //  if DM.QueryTipDokOTGR.AsInteger = 1 then    //Договора, спецификации на отгрузку
        begin
          PrintDogOtgr;
          exit;
        end;
        FileExt := ExtractFileExt(DM.QueryTipDokPUTH_FRF.AsString);
        if AnsiUpperCase(FileExt)='.FRF' then
        begin
          if DM.QueryTipDokSave_report.AsInteger = 1 then
          begin
            frReport2.LoadFromFile(DM.QueryTipDokPUTH_FRF.AsString);
            frReport2.ShowReport;
          end
          else
          begin
            frReport1.LoadFromFile(DM.QueryTipDokPUTH_FRF.AsString);
            frReport1.ShowReport;
          end;
        end
        else
        begin
          DM.frxReport1.LoadFromFile(DM.QueryTipDokPUTH_FRF.AsString);
          DM.frxReport1.ShowReport;
        end;
      end;
    end;
  end;
end;

procedure TFDokument.PrintDogOtgr;
var
  FileExt:  string;
begin
  FLookup.IBQuery.Database := DM.UMC_DATA;
  FLookup.IBQuery.Close;
  FLookup.IBQuery.SQL.Text:='SELECT FORM_ID ID, NAME_FORM NAM, PUTH_FORM, KOL_STROK, PRIZ_BACK, KOL1, KOL2 FROM DOC_PUTH_FORM '+
   ' WHERE TIP_DOK_ID = '+ DM.QueryTipDokTIP_DOK_ID.AsString+'  ORDER BY FORM_ID ';
  FLookup.IBQuery.Open;
  FLookup.IBQuery.FetchAll;
  if FLookup.IBQuery.RecordCount = 0 then
  begin
    MessageDlg('Не введен путь для отчета', mtWarning, [mbOK], 0);
    exit;
  end;
  if FLookup.IBQuery.RecordCount > 1 then
  begin
    FormToObject(FLookup,ToolButton7,0,0);
    FLookup.Width := 390;
    if FLookup.ShowModal>50 then
    begin
      Application.ProcessMessages;
      if FLookup.IBQuery.FieldByName('Puth_Form').AsString ='' then
      begin
        MessageDlg('Не введен путь для отчета!', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
  end;
  FileExt := ExtractFileExt(FLookup.IBQuery.FieldByName('Puth_Form').AsString);
  if AnsiUpperCase(FileExt)='.FRF' then
  begin
    if DM.QueryTipDokSave_report.AsInteger = 1 then
    begin
      frReport2.LoadFromFile(FLookup.IBQuery.FieldByName('Puth_Form').AsString);
      frReport2.ShowReport;
    end
    else
    begin
      frReport1.LoadFromFile(FLookup.IBQuery.FieldByName('Puth_Form').AsString);
      frReport1.ShowReport;
    end
  end
  else
  begin
    DM.frxReport1.LoadFromFile(FLookup.IBQuery.FieldByName('Puth_Form').AsString);
    DM.frxReport1.ShowReport;
  end;
end;

procedure TFDokument.RxDBComboEdit6ButtonClick(Sender: TObject);
var
  KodSpr: integer;
  Name : String;
begin
  FindSpr(Trim(DM.QueryTipDokLOOKUP.AsString),DM.UMC_DATA, Name,KodSpr,DM.TTNPOL_ID.AsInteger);
  if KodSpr <> 0 then
  begin
    DM.TTN.Edit;
    DM.TTNPOL_ID.AsInteger:=KodSpr;
//    if DM.TTNZAK_ID.AsVariant=NULL then
//    begin
//      DM.TTNZAK_ID.AsInteger:=DM.TTNPOL_ID.AsInteger;
//    end;
  end;
end;

procedure TFDokument.EditDATE_OPChange(Sender: TObject);
begin
{  if EditDATE_OP.Modified then
    if (MonthOf(EditDATE_OP.Date)<>DM.MES) or (YearOf(EditDATE_OP.Date)<>DM.GOD) then
    begin
//      EditDATE_OP.Date:=DM.CURRENT_DATE;
      ShowMessage('Дата операции не в выбранном месяце');
    end; }
end;

procedure TFDokument.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
  if ParName = 'Kol_Strok' then
  begin
    ParValue := AnsiUpperCase(Copy(SumToString(DM.KartV.RecordCount),1,1))+
    AnsiLowerCase(Copy(SumToString(DM.KartV.RecordCount),2,Length(SumToString(DM.KartV.RecordCount))));
  end;
  if ParName = 'STNAME' then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='SELECT STNAME FROM Struk WHERE Struk_Id = '+IntToStr(DM.Dokument.FieldByName('Struk_Id').AsInteger);
    DM.Query.Open;
    ParValue := DM.Query.fieldByName('Stname').AsString;
  end;
  if ParName = 'Kod_Struk' then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='SELECT Kod_Struk||iif(struk.buro is null,'+''''+''''+','+''''+'.'+''''+'||PadLeft(trim(struk.buro), 2, '+''''+'0'+''''+')) Kod_Struk FROM struk WHERE Struk_Id ='+IntToStr(DM.Dokument.FieldByName('Struk_Id').AsInteger);
    DM.Query.Open;
    ParValue := DM.Query.fieldByName('Kod_Struk').AsString;
  end;
  if ParName = 'Kod_Klient1' then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='SELECT Kod_Struk||iif(struk.buro is null,'+''''+''''+','+''''+'.'+''''+'||PadLeft(trim(struk.buro), 2, '+''''+'0'+''''+')) Kod_Struk FROM struk WHERE Struk_Id ='+DM.Dokument.FieldByName('Klient_Id').AsString;
    DM.Query.Open;
    ParValue := DM.Query.fieldByName('Kod_Struk').AsString;
  end;
  if ParName = 'Param1' then
  begin
    DM.Doc_Param.Locate('Param_Name','Основание',[]);
    ParValue := DM.Doc_ParamPARAM_VALUE.AsString;
  end;
  if ParName = 'Param2' then
  begin
    DM.Doc_Param.Locate('Param_Name','Кому',[]);
    ParValue := DM.Doc_ParamPARAM_VALUE.AsString;
  end;
  if ParName = 'Param3' then
  begin
    DM.Doc_Param.Locate('Param_Name','Через кого',[]);
    ParValue := DM.Doc_ParamPARAM_VALUE.AsString;
  end;
  if ParName = 'Date_Dok_Osn' then
  begin
    if DM.Dokument.FieldByName('Dok_Osn_Id').AsInteger <> 0 then
    begin
      DM.Query.Close;
      DM.Query.SQL.Text:='SELECT Date_Dok FROM Document WHERE Doc_Id = '+IntToStr(DM.Dokument.FieldByName('Dok_Osn_Id').AsInteger);
      DM.Query.Open;
      ParValue := DM.Query.fieldByName('Date_Dok').AsString;
    end
    else ParValue := '';
  end;
  if ParName = 'MonthGod' then
  begin
    ParValue := MesName_1(Month(DM.Dokument.FieldByName('Date_Op').AsDateTime))+
     ' '+IntToStr(Year(DM.Dokument.FieldByName('Date_Op').AsDateTime))+' г.';
  end;
  if ParName = 'sumall' then
      ParValue:=sumall;
  if ParName = 'sumnds' then
      ParValue:=sumnds;
  if ParName = 'summa' then
      ParValue:=summa;
  if ParName = 'nds' then
      ParValue:=nds_str;
  if LowerCase(ParName) = 'kolmest' then
      ParValue:=kolmest;
  if ParName = 'Bruttostr' then
      ParValue:=Brutto_str;
  if ParName = 'DOC_ID' then
    ParValue := DM.Dokument.FieldByName('Doc_ID').AsInteger;
  if ParName = 'DOK_OSN_ID' then
    ParValue := DM.Dokument.FieldByName('Dok_Osn_ID').AsInteger;
  if ParName = 'page_n' then
     case page_n of
     1: ParValue :=1;
     2: ParValue :=2;
     3: ParValue :=3;
     end;
  if ParName = 'CounStr' then
  begin
    ParValue := DM.Kart.RecordCount;
  end;
  if ParName = 'tnved' then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='SELECT reg FROM  sprorg WHERE kod = '+IntToStr(DM.Dokument.FieldByName('klient_Id').AsInteger);
    DM.Query.Open;
    tnved_par := DM.Query.fieldByName('reg').AsInteger;
    if tnved_par=112 then ParValue := ''
    else
       if tnved_par=643 then ParValue := copy(dm.KartTNVED.AsString,1,4)
       else ParValue :=dm.KartTNVED.AsString;
  end;
//  if ParName = 'Ndst' then
//  if DM.Dokument.FieldByName('nds').AsVariant=null then
//    ParValue :='б/ндс'
//  else
//   if DM.Dokument.FieldByName('nds').AsFloat=0  then
//     ParValue :='0'
//  else
//    if (DM.Kart.FieldByName('nds').AsFloat = 0) then
//      ParValue :=' '
//    else
//      ParValue :=DM.Kart.FieldByName('nds').AsFloat;

  if ParName = 'Ndst' then
  begin
  DM.Query.Close;
  DM.Query.SQL.Text:='SELECT reg FROM  sprorg WHERE kod = '+IntToStr(DM.Dokument.FieldByName('klient_Id').AsInteger);
  DM.Query.Open;
  tnved_par := DM.Query.fieldByName('reg').AsInteger;
  if (DM.Kart.FieldByName('nds').AsFloat > 0) then
     ParValue :=DM.Kart.FieldByName('nds').AsFloat
  else
     if tnved_par=112 then
        ParValue :='б/ндс'
     else
        ParValue :='0';
  end;
  if ParName = 'Ndst2' then
  begin
  DM.Query.Close;
  DM.Query.SQL.Text:='SELECT reg FROM  sprorg WHERE kod = '+IntToStr(DM.Dokument.FieldByName('klient_Id').AsInteger);
  DM.Query.Open;
  tnved_par := DM.Query.fieldByName('reg').AsInteger;
  if ((tnved_par=112) and ((DM.Dokument.FieldByName('nds').AsVariant=null) or
     (DM.Dokument.FieldByName('nds').AsVariant=0)))
  then
     ParValue :='Без НДС согласно особенной части налогового кодекса РБ'
  else ParValue :='';
  end;
end;

procedure TFDokument.frReport1UserFunction(const Name: string; p1, p2,
  p3: Variant; var Val: Variant);
var
  Number :integer;
begin
  if AnsiUpperCase(Name)='SUMTOSTRING' then
  begin
    Number := frParser.Calc(p1);
    if Number = null then
      Number := 0;
    Val := SumToString(Number);
  end;
end;

procedure TFDokument.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFDokument.Button1Click(Sender: TObject);
var
  kol_m: integer;
  allmas : double;
begin
    if FRaschetMM = nil then
      Application.CreateForm(TFRaschetMM, FRaschetMM);
   FRaschetMM.ShowModal;
{  DM.TTN_Stroki.DisableControls;
  try
    while not DM.TTN_Stroki.Eof do
    begin
      if DM.TTN_StrokiKOL_MEST.AsFloat = 0 then
        allmas := allmas + DM.TTN_StrokiBRUTTO.AsFloat;
      DM.TTN_Stroki.Next;
    end;
    kol_m := StrToInt(edit2.Text);
    DM.TTN_Stroki.First;
    while not DM.TTN_Stroki.Eof do
    begin
      if DM.TTN_StrokiKOL_MEST.AsFloat = 0 then
      begin
        DM.TTN_Stroki.Edit;
        if allmas <> 0 then
          DM.TTN_StrokiKOL_MEST.AsFloat := SimpleRoundTo(kol_m * DM.TTN_StrokiBRUTTO.AsFloat / allmas, -2);
        DM.TTN_Stroki.Post;
      end;
      DM.TTN_Stroki.Next;
    end;
  finally
    DM.TTN_Stroki.EnableControls;
  end; }
end;
  

procedure TFDokument.N7Click(Sender: TObject);
begin
  close;
end;

procedure TFDokument.WritePrihod(var ID: Integer );
// Запись изменений в старые таблицы по приходу
// входной 0 - Вставка
//         1 - Корректировка
//         2 - Удаление
// выходной -1 - Удалять нельзя
var
  Max_Nom_Id : integer;
  Skl : String;
  Dopr : String;
  DatSd : Variant;
  DatSd1 : String;
  Reg : Integer;
  PntUser : Integer;
  Mes : String;
  S : String;
  Npol : String;
  Ndog : integer;
  Ndog1 : string;
  r : integer;
begin
 // exit;
  if DM.QueryViewDokum.FieldByName('struk_id').AsInteger <> 6 then exit;
  //Если работаем на удаленном складе - не записываем
  if AnsiLowerCase(DM.UMC_DATA.DatabaseName) = 'sklad' then  exit;
  if id > 0 then
  begin
    try
      DM.Prihod.Active := False;
      DM.Prihod.SQL.Clear;
      DM.Prihod.SQL.Add('SELECT Opl_Val FROM ":Prihod:Prix.DBF" WHERE POST_ID = '+
      IntToStr(DM.QueryViewDokum.FieldByName('Klient_Id').AsInteger)+
        ' AND NDOK = '+''''+DM.QueryViewDokum.FieldByName('Ndok').AsString+''''+
        ' AND DATA_PR = '+''''+DM.QueryViewDokum.FieldByName('Date_Dok').AsString+''''+
        ' AND Opl_Val<>0 ');
      DM.Prihod.Active := True;
    except
      MessageDlg('Произошла ошибка при открытии таблицы приходов в бухгалтерии!'
      +#13+#10+'Изменения не записываются!', mtWarning, [mbOK], 0);
      raise;
    end;
    // Если приход оплачен - только просмотр
    If DM.Prihod.RecordCount<>0 then
    begin
      If ID = 1 then
        MessageDlg('За время корректировки документ оплатили! Изменения в бухгалтерию не записываются!', mtWarning, [mbOK], 0)
      Else
        MessageDlg('Документ оплачен! Удалять нельзя!', mtWarning, [mbOK], 0);
      ID := -1;
      exit;
    end;
  end;
  if DM.MES<10 then Mes := '0'+IntToStr(DM.MES)
  else Mes := IntToStr(DM.MES);
  // Удаление существующего прихода
  if (ID=1) or (ID=2) then
  begin
    try
      DM.Prihod.Active := False;
      DM.Prihod.SQL.Clear;
      DM.Prihod.SQL.Add('DELETE FROM ":Prihod:Prix.DBF" WHERE POST_ID = '+
       IntToStr(DM.QueryViewDokum.FieldByName('Klient_Id').AsInteger)+
       ' AND NDOK = '+''''+DM.QueryViewDokum.FieldByName('Ndok').AsString+''''+
       ' AND DATA_PR = '+''''+DM.QueryViewDokum.FieldByName('Date_Dok').AsString+''''+
       ' AND STRUK_ID = '+IntToStr(DM.STRUK_ID));
      DM.Prihod.ExecSQL;
      DM.Prihod.Active := False;
      DM.Prihod.SQL.Clear;
      DM.Prihod.SQL.Add('DELETE FROM ":Prihod:Prix_'+MES+'.DBF" WHERE POST_ID = '+
        IntToStr(DM.QueryViewDokum.FieldByName('Klient_Id').AsInteger)+
        ' AND NDOK = '+''''+DM.QueryViewDokum.FieldByName('Ndok').AsString+''''+
        ' AND DATA_PR = '+''''+DM.QueryViewDokum.FieldByName('Date_Dok').AsString+''''+
        ' AND STRUK_ID = '+IntToStr(DM.STRUK_ID));
      DM.Prihod.ExecSQL;
    except
      id:=-1;
      MessageDlg('Произошла ошибка при удалении существующего прихода из бухгалтерии!'
      +#13+#10+'Изменения не записываются!', mtWarning, [mbOK], 0);
      raise;
    end;
  end;
  if ID = 2 then exit;  // Удаление
  // Старый код склада
  DM.Query.Close;
  DM.Query.SQL.Text:='SELECT Stkod FROM Struk WHERE Struk_Id = '+IntToStr(DM.STRUK_ID);
  DM.Query.Open;
  Skl := DM.Query.fieldByName('Stkod').AsString;
  //Дата сопроводительного документа
  DM.Query.Close;
  DM.Query.SQL.Text:='SELECT Date_Dok FROM Document WHERE Doc_Id = '+IntToStr(DM.Dokument.FieldByName('Dok_Osn_Id').AsInteger);
  DM.Query.Open;
  DatSd := DM.Query.fieldByName('Date_Dok').AsVariant;
  if DatSd <> NULL then
    DatSd1 := '"'+DM.Query.fieldByName('Date_Dok').AsString+'"'
  else DatSd1 := 'NULL'  ;
  //Символьная дата прихода
  Dopr := Copy(DM.Dokument.FieldByName('Date_Dok').AsString,1,2)+
          Copy(DM.Dokument.FieldByName('Date_Dok').AsString,4,2)+
          Copy(DM.Dokument.FieldByName('Date_Dok').AsString,9,2);
  //Регион
  DM.Query.Close;
  DM.Query.SQL.Text:='SELECT REG FROM Sprorg WHERE Kod = '+IntToStr(DM.Dokument.FieldByName('Klient_Id').AsInteger);
  DM.Query.Open;
  Reg := DM.Query.fieldByName('Reg').AsInteger;
  //Территориальный признак
  if Reg = 112 then Pntuser := 2
  else Pntuser := 3;
  //Основание
  DM.Query.Close;
  DM.Query.SQL.Text:='select doc_osn.doc_id, trim(doc_osn.ndok)||'+''''+' OT '+''''+'||DateToStr(doc_osn.date_dok,'+''''+'%d.%m.%y'+''''+') as ndok '+
    ' from document left join document doc_osn on document.dok_osn_id=doc_osn.doc_id  '+
    ' where document.doc_id= '+DM.Dokument.FieldByName('Dok_Osn_Id').AsString;
  DM.Query.Open;
  Ndog := DM.Query.fieldByName('Doc_id').AsInteger;
  Ndog1 := DM.Query.fieldByName('Ndok').AsString;
  DM.Query.Close;
  //Добавление записей по приходу
  DM.Kart.First;
  While not DM.Kart.Eof do
  begin
    try
      DM.Freenom.Active := True;
      DM.Freenom.Edit;
      Max_Nom_Id := 0;
      while Max_Nom_Id = 0 do
      begin
        DM.Freenom.FieldByName('Nom_id').AsInteger := DM.Freenom.FieldByName('Nom_id').AsInteger+1;
        DM.Query.Close;
        DM.Query.SQL.Text:='select nom_id from journ where nom_id = '+DM.Freenom.FieldByName('Nom_id').AsString;
        DM.Query.Open;
        if DM.Query.RecordCount = 0 then  r := 0
        else r := 1;
        if (r = 0) then
        begin
          DM.Query.Close;
          DM.Query.SQL.Text:='select prov_id from book2 where substring(credit from 1 for 2) = '+''''+'60'+''''+' and prov_id = '+DM.Freenom.FieldByName('Nom_id').AsString;
          DM.Query.Open;
          if DM.Query.RecordCount = 0 then  r := 0
          else r := 1;
        end;
        if r = 0  then
        begin
          DM.Freenom.Post;
          Max_Nom_Id := DM.Freenom.FieldByName('Nom_id').AsInteger;
        end;
      end;
      DM.Freenom.Active := False;
      DM.Query.Close;
      Npol := ReplaceStr(DM.Dokument.FieldByName('KLIENT_ID_Lookup').AsString,'"',' ');
      S:= ' (SKL,KPR,OPR,DOPR,DATA_PR,NDOK,NSD,DATSD,'+
        ' POST,POST_ID,KPRX,KSD,KEI_ID,KEI,REG,ACCOUNT,STRUK_ID,NOM_ID, '+
        ' KSM_ID,PNTUSER,DPOST,VC,NPOL,NDOG,NDOG1 ) VALUES ('+
        '"'+SKL+'","'+
        DM.KartKSM_ID.AsString+'","11","'+Dopr+'","'+
        DM.Dokument.FieldByName('Date_Dok').AsString+'","'+
        DM.Dokument.FieldByName('NDok').AsString+'","'+
        DM.Dokument.FieldByName('Dok_Osn_ID_Lookup').AsString+'",'+DatSd1+',"'+
        DM.Dokument.FieldByName('Klient_ID').AsString+'",'+
        DM.Dokument.FieldByName('Klient_ID').AsString+','+
        ReplaceStr(FloatToStr(DM.KartKOL_PRIH.AsFloat),',','.')+','+
        ReplaceStr(FloatToStr(DM.KartKOL_PRIH.AsFloat),',','.')+','+
        DM.KartKEI_ID.AsString +',"'+DM.KartKEI_ID.AsString+'",'+
        DM.KartTAG.AsString+',"'+
        DM.KartACCOUNT.AsString+'",'+
        DM.Dokument.FieldByName('Struk_ID').AsString+','+
        IntToStr(Max_Nom_Id)+','+
        DM.KartKSM_ID.AsString+','+IntToStr(PNTUser)+',"'+
        DM.Dokument.FieldByName('Date_Dok').AsString+'",'+
        DM.Dokument.FieldByName('VP_ID').AsString+',"'+
        Npol+'",'+
        IntToStr(NDOG)+',"'+
        NDOG1+'")';
      DM.Prihod.Active := False;
      DM.Prihod.SQL.Clear;
      DM.Prihod.SQL.Add('INSERT INTO ":Prihod:Prix.DBF" '+S);
      DM.Prihod.ExecSQL;
      DM.Prihod.SQL.Clear;
      DM.Prihod.SQL.Add('INSERT INTO ":Prihod:Prix_'+MES+'.DBF"'+S);
      DM.Prihod.ExecSQL;
    except
      id:=-1;
      MessageDlg('Произошла ошибка при добавлении прихода в бухгалтерю!'
      +#13+#10+'Документ не записывается!', mtWarning, [mbOK], 0);
      raise;
    end;
    DM.Kart.Next;
  end;   
end;


procedure TFDokument.ToolButton10Click(Sender: TObject);
begin
  if FDokument.Parent <> nil then
  begin
    FParent := FDokument.Parent;
    FDokument.Parent := nil;
    FDokument.BorderStyle := bsSizeable;
    FDokument.Position := poMainFormCenter;
    FDokument.Panel3.Visible := true;
    ToolButton10.ImageIndex := 14;
    ToolButton10.Hint := 'Уменьшить размер';
  end
  else
  begin
    FDokument.Position := poDefault;
    FDokument.Parent := FParent;
    FDokument.BorderStyle := bsNone;
    FDokument.Panel3.Visible := false;
    ToolButton10.ImageIndex := 15;
    ToolButton10.Hint := 'Увеличить размер';
  end;
end;

procedure TFDokument.ToolButton2Click(Sender: TObject);
var
  rksm_id : Integer;
  i : integer;
begin
{  Dvig.Active := True;
  Dvig.First;
  i:=1;
  While (not dvig.Eof)  do
  begin
     if (Dvigsprod_ID.AsInteger <> 9) then
     begin
      DM.Kart.Insert;
      DM.Kart.FieldByName('DOC_ID').AsInteger:=DM.Dokument.FieldByName('DOC_ID').AsInteger;
      DM.Kart.FieldByName('KART_ID').AsInteger:=DvigKART_ID.AsInteger;
      DM.Kart.FieldByName('Kol_Prih').asstring:=Dvig.FieldByName('Ot_s').Asstring;
      DM.Kart.FieldByName('KSM_ID').AsInteger:=DvigKSM_ID.AsInteger;
      DM.Kart.Post;
      APost.Execute;
      Dvig.Edit;
      Dvigsprod_ID.AsInteger := 9;
      Dvig.Post;
     end;
     Dvig.Next;
    // dvig.Delete;
     i := i+1;
  end;  }
 { lida.Active := True;
 { lida.First;
  While not lida.Eof do
  begin
      DM.Kart.Insert;
      DM.Kart.FieldByName('DOC_ID').AsInteger:=DM.Dokument.FieldByName('DOC_ID').AsInteger;
      DM.Kart.FieldByName('KSM_ID').AsInteger:=LidaKSM_ID.AsInteger;
      DM.Kart.FieldByName('Kol_Prih').AsFloat := Lida.FieldByName('kol').AsFloat;
      if Lida.FieldByName('kol').AsFloat <> 0 then
      begin
        DM.Kart.FieldByName('Cena').AsFloat := Lida.FieldByName('summa').AsFloat/Lida.FieldByName('kol').AsFloat;
        DM.Kart.FieldByName('Cena_vp').AsFloat := Lida.FieldByName('summa').AsFloat/Lida.FieldByName('kol').AsFloat;
      end
      else
      begin
        DM.Kart.FieldByName('Cena').AsFloat := Lida.FieldByName('cena').AsFloat;
        DM.Kart.FieldByName('Cena_vp').AsFloat := Lida.FieldByName('cena').AsFloat;
      end;
      DM.Kart.Post;
      lida.Next;
  end; }
{  dvig.Active := True;
  dvig.First;
  While not Dvig.Eof do
  begin
      DM.Kart.Insert;
      DM.Kart.FieldByName('DOC_ID').AsInteger:=DM.Dokument.FieldByName('DOC_ID').AsInteger;
      DM.Kart.FieldByName('KSM_ID').AsInteger:=Dvigksm_id.AsInteger;
//      DM.Kart.FieldByName('kart_ID').AsInteger:=DvigKART_ID.AsInteger;
      DM.Kart.FieldByName('Kol_prih').AsFloat := DvigKOL_rash.AsFloat;
//      DM.Kart.FieldByName('Cena').AsFloat := DvigMONEY.AsFloat;
//      DM.Kart.FieldByName('Cena_vp').AsFloat := DvigMONEY.AsFloat;
      DM.Kart.Post;
      APost.Execute;
      Dvig.Next;
  end;  }

end;

procedure TFDokument.DBGridEh2SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
  APost.Execute;
  Usl_Ordn := '';
  for i := 0 to DBGridEh2.SortMarkedColumns.Count-1 do
      if DBGridEh2.SortMarkedColumns[i].Title.SortMarker = smUpEh then
      begin
         Usl_Ordn := USL_ORDn +  DBGridEh2.SortMarkedColumns[i].FieldName +  ' DESC , ';
      end
      else
      begin
        Usl_Ordn := Usl_Ordn + DBGridEh2.SortMarkedColumns[i].FieldName +  ', ';
      end;
  if Usl_Ordn <> '' then  Usl_Ordn := Copy(Usl_Ordn,1,Length(Usl_Ordn)-2);
  DM.KART.Active:=false;
  DM.KART.MacroByName('Usl_ORDn').AsString  := Usl_Ordn;
  DM.KART.Active:=true;
  DM.KART.FetchAll;
end;

procedure TFDokument.DBGridEh3Columns1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  Name : string;
  KodSpr : Integer;
begin
 FindSpr(TRIM(DM.Doc_ParamNLOOKUP.AsString),DM.UMC_DATA, Name,KodSpr,DM.Doc_ParamNKod.AsInteger);
  if KodSpr <> 0 then
  begin
    if DM.Doc_ParamN.State = dsBrowse then DM.Doc_ParamN.Edit;
    DM.Doc_ParamNPARAM_VALUE.AsString := Name;
    DM.Doc_ParamNKod.AsInteger := KodSpr;
    DM.Doc_ParamN.Post;
  end;
end;

procedure TFDokument.DBGridEh3Columns2EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  Name : string;
  KodSpr : Integer;
begin
  FindSpr('EDIZ',DM.UMC_DATA, Name,KodSpr,DM.Doc_ParamNKei_ID.AsInteger);
  if KodSpr <> 0 then
  begin
    if DM.Doc_ParamN.State = dsBrowse then DM.Doc_ParamN.Edit;
    DM.Doc_ParamNNEIS.AsString := Name;
    DM.Doc_ParamNKei_ID.AsInteger := KodSpr;
    DM.Doc_ParamN.Post;
  end;
end;

procedure TFDokument.DBGridEh4SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
  Usl_Ordn := '';
  for i := 0 to DBGridEh4.SortMarkedColumns.Count-1 do
    if DBGridEh4.SortMarkedColumns[i].Title.SortMarker = smUpEh then
    begin
      Usl_Ordn := USL_ORDn + 'matrop."'+ DBGridEh4.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
    end
    else
    begin
      Usl_Ordn := Usl_Ordn + 'matrop."'+DBGridEh4.SortMarkedColumns[i].FieldName + '"'+ ', ';
    end;
  if Usl_Ordn <> '' then  Usl_Ordn := Copy(Usl_Ordn,1,Length(Usl_Ordn)-2);
  DM.KARTv.Active:=false;
  DM.KARTv.MacroByName('Usl_ORDn').AsString  := Usl_Ordn;
  DM.KARTv.Active:=true;
  DM.KARTv.FetchAll;
end;

procedure TFDokument.DBGridEh5Columns11EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  typesub_id : integer;
begin
  if DM.UslugiACCOUNT.AsString = '' then
  begin
    MessageDlg('Введите счет!', mtWarning, [mbOK], 0);
    exit;
  end;
  DM.Query.Active := False;
  DM.Query.SQL.Clear;
  DM.Query.SQL.Add('select book1.typesub_id from book1 where book1.account= '+
   ''''+DM.UslugiACCOUNT.AsString+'''');
  DM.Query.Active := True;
  DM.Query.First;
  if DM.Query.RecordCount=0 then
  begin
    MessageDlg('Такого счета нет в плане счетов!', mtWarning, [mbOK], 0);
    DM.Query.Active := false;
    exit;
  end;
  typesub_id := DM.Query.FieldByName('typesub_id').AsInteger;
  DM.Query.Active := false;
  if typesub_id = 0 then
  begin
    MessageDlg('По счету нет аналитики!', mtInformation, [mbOK], 0);
    exit;
  end;
  FindUtils.DataBase := DM.UMC_DATA;
  if DM.Uslugi.State = dsBrowse then DM.Uslugi.Edit;
  DM.UslugiSUB_ID.AsInteger :=FindUtils.ShowSub(typesub_id,DM.UslugiSUB_ID.AsInteger ,DM.UslugiACCOUNT.AsString,False);
  DM.UslugiNAMESUB.AsString := FindUtils.Name_Sub;
  DM.UslugiTYPESUB_ID.AsInteger := typesub_id;
  if DM.UslugiNAME_USLUGI.AsString = '' then
    DM.UslugiNAME_USLUGI.AsString := DM.UslugiNAMESUB.AsString;
  if typesub_id = 5 then
  begin
    if FVibKart = nil then
      Application.CreateForm(TFVibKart, FVibkart);
    FVibKart.Ksm_id  := DM.UslugiSUB_ID.AsInteger;
    FVibKart.Account  := DM.UslugiACCOUNT.AsString;
    FVibKart.Struk_id  := DM.Dokument.FieldByName('Struk_Id').AsInteger;
    if FVibKart.ShowModal = mrOk then
      DM.UslugiKART_ID.AsInteger := FVibKart.Kart_id;
  end;
end;

procedure TFDokument.DBGridEh5Columns7EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FLookup.IBQuery.Database := DM.UMC_DATA;
  FLookup.IBQuery.Close;
  FLookup.IBQuery.SQL.Text:='select stzat_id id,account||'+''''+' '+''''+'||namzat nam,account, namzat from stzat';
  FLookup.IBQuery.Open;
  FLookup.IBQuery.FetchAll;
  if (DM.UslugiSTZAT_ID.AsInteger<>0) then
    FLookup.IBQuery.Locate('ID',DM.UslugiSTZAT_ID.AsInteger,[]);
  FormToColumn(FLookup,DBGridEh5,'NAMZAT',1);
  if FLookup.ShowModal>50 then
  begin
    if DM.Uslugi.State = dsBrowse then DM.Uslugi.Edit;
    DM.UslugiSTZAT_ID.AsInteger := FLookup.IBQuery.FieldByName('ID').AsInteger;
    DM.UslugiNAMZAT.AsString := FLookup.IBQuery.FieldByName('NAMZAT').AsString;
    DM.UslugiACCOUNT.AsString := FLookup.IBQuery.FieldByName('ACCOUNT').AsString;
  end;
  FLookup.IBQuery.Close;
end;

procedure TFDokument.DBGridEh6Columns1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FLookup.IBQuery.Database := DM.UMC_DATA;
  FLookup.IBQuery.Close;
  FLookup.IBQuery.SQL.Text:='select doc_tam_op_id id,doc_tam_op_kod||'+''''+' '+''''+'||doc_tam_op_name nam, doc_tam_op_kod,doc_tam_op_name from doc_tam_op';
  FLookup.IBQuery.Open;
  FLookup.IBQuery.FetchAll;
  if (DM.Doc_Tam_PlDOC_TAM_OP_ID.AsInteger<>0) then
    FLookup.IBQuery.Locate('ID',DM.Doc_Tam_PlDOC_TAM_OP_ID.AsInteger,[]);
  FormToColumn(FLookup,DBGridEh6,'DOC_TAM_OP_NAME',1);
  if FLookup.ShowModal>50 then
  begin
    if DM.Doc_Tam_Pl.State = dsBrowse then DM.Doc_Tam_Pl.Edit;
    DM.Doc_Tam_PlDOC_TAM_OP_ID.AsInteger := FLookup.IBQuery.FieldByName('ID').AsInteger;
    DM.Doc_Tam_PlDOC_TAM_OP_NAME.AsString := FLookup.IBQuery.FieldByName('doc_tam_op_name').AsString;
    DM.Doc_Tam_PlDOC_TAM_OP_KOD.AsString := FLookup.IBQuery.FieldByName('doc_tam_op_kod').AsString;
  end;
  FLookup.IBQuery.Close;
end;

procedure TFDokument.DBGridEh6Columns2EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  DM.Doc_Tam_PlVAL_KOD.OnValidate  := nil;
  DM.Doc_Tam_PlNDOK.OnValidate := nil;
  try
    FLookup.IBQuery.Database := DM.UMC_DATA;
    FLookup.IBQuery.Close;
    FLookup.IBQuery.SQL.Text:='select document.doc_id id,document.ndok||'+''''+' от '+''''+'||cast(document.date_dok as char(10)) nam,'+
    ' document.ndok, document.date_dok, document.sum_vp, document.kpv, '+
    ' val.val, val.knam, val.val_kod '+
    ' from document '+
    ' inner join val on document.vp_id = val.val '+
    ' where (klient_id= '+DM.Dokument.FieldByName('Klient_Id').AsString+ ' or klient_id =1499 ) '+
    ' and document.tip_dok_id = 19 '+
    ' order by document.date_dok desc';
    FLookup.IBQuery.Open;
    FLookup.IBQuery.FetchAll;
    if (DM.Doc_Tam_PlDOC_ID_PP.AsInteger<>0) then
      FLookup.IBQuery.Locate('ID',DM.Doc_Tam_PlDOC_ID_PP.AsInteger,[]);
    FormToColumn(FLookup,DBGridEh6,'NDOK',1);
    if FLookup.ShowModal>50 then
    begin
      if DM.Doc_Tam_Pl.State = dsBrowse then DM.Doc_Tam_Pl.Edit;
      DM.Doc_Tam_PlDOC_ID_PP.AsInteger := FLookup.IBQuery.FieldByName('ID').AsInteger;
      DM.Doc_Tam_PlNDOK.AsString := FLookup.IBQuery.FieldByName('Ndok').AsString;
      DM.Doc_Tam_PlDATE_DOK.AsDateTime := FLookup.IBQuery.FieldByName('Date_dok').AsDateTime;
      DM.Doc_Tam_PlVAL_KOD.AsString := FLookup.IBQuery.FieldByName('Val_kod').AsString;
      DM.Doc_Tam_PlKNAM.AsString := FLookup.IBQuery.FieldByName('KNAM').AsString;
      DM.Doc_Tam_PlKPV.AsFloat := FLookup.IBQuery.FieldByName('KPV').AsFloat;
      DM.Doc_Tam_PlVP_ID.AsInteger := FLookup.IBQuery.FieldByName('val').Asinteger;
    end;
  finally
    DM.Doc_Tam_PlVAL_KOD.OnValidate  := DM.Doc_Tam_PlVAL_KODValidate;
    DM.Doc_Tam_PlNDOK.OnValidate := DM.Doc_Tam_PlNDOKValidate;
  end;
end;

procedure TFDokument.DBGridEh6Columns5EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  DM.Doc_Tam_PlVAL_KOD.OnValidate  := nil;
  try
    FLookup.IBQuery.Database := DM.UMC_DATA;
    FLookup.IBQuery.Close;
    FLookup.IBQuery.SQL.Text:='select val.val id, val.knam nam, val.val_kod from val';
    FLookup.IBQuery.Open;
    FLookup.IBQuery.FetchAll;
    if (DM.Doc_Tam_PlVP_ID.AsInteger<>0) then
      FLookup.IBQuery.Locate('ID',DM.Doc_Tam_PlVP_ID.AsInteger,[]);
    FormToColumn(FLookup,DBGridEh6,'KNAM',1);
    if FLookup.ShowModal>50 then
    begin
      if DM.Doc_Tam_Pl.State = dsBrowse then DM.Doc_Tam_Pl.Edit;
      DM.Doc_Tam_PlVP_ID.AsInteger := FLookup.IBQuery.FieldByName('ID').AsInteger;
      DM.Doc_Tam_PlKNAM.AsString := FLookup.IBQuery.FieldByName('NAM').AsString;
      DM.Doc_Tam_PlVAL_KOD.AsString := FLookup.IBQuery.FieldByName('Val_kod').AsString;
    end;
  finally
    DM.Doc_Tam_PlVAL_KOD.OnValidate  := DM.Doc_Tam_PlVAL_KODValidate;
  end;
end;

procedure TFDokument.PrihDragMet;
var
  YesDragMet : Boolean;
begin
  DM.Kart.DisableControls;
  try
    YesDragMet := False;
    DM.Kart.First;
    While not DM.Kart.Eof do
    begin
      if DM.KartDM.AsInteger <> 0 then YesDragMet := True;
      DM.Kart.Next;
    end;
    if YesDragMet then
      if MessageDlg('В документе присутствуют материалы, содержащие драгметаллы!'
        +#13+#10+'Приходовать их?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
         { TODO :
Добавить в INI типы операций
Отгрузка продукции
Списание по акту
Оприходование ТМЦ }
        DM.IBProc.StoredProcName := 'UMC_PRIH_DRAGMET';
        DM.IBProc.ParamByName('DOK_OSN_ID').AsInteger := DM.Dokument.FieldByName('DOC_ID').AsInteger;;
        DM.IBProc.ParamByName('TIP_DOK_ID').AsInteger := 59;
        DM.IBProc.ParamByName('TIP_OP_ID').AsInteger := 74;
        DM.IBProc.ExecProc;
      end;
  finally
    DM.Kart.EnableControls;
  end;
end;

procedure TFDokument.EditPARAM_VALUEEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  Name : string;
  KodSpr : Integer;
  i : integer;
begin
  if TRIM(DM.Doc_ParamLOOKUP.AsString)<>'DOCUMENT' then
  begin
    if ((TRIM(DM.Doc_ParamLOOKUP.AsString)='PRICE') and (DM.Doc_ParamKOD.AsInteger < -1)) then
    begin
      MessageDlg('Цены согласно протоколу! Изменять нельзя! ', mtWarning, [mbOK], 0);
      exit;
    end;
    if TRIM(DM.Doc_ParamLOOKUP.AsString)='RAZR' then
      FindSpr(TRIM(DM.Doc_ParamLOOKUP.AsString),DM.UMC_DATA, Name,KodSpr,DM.Dokument.FieldByName('Dok_osn_id').AsInteger)
    else
      FindSpr(TRIM(DM.Doc_ParamLOOKUP.AsString),DM.UMC_DATA, Name,KodSpr,DM.Doc_ParamKod.AsInteger);
    if KodSpr <> 0 then
    begin
      if DM.Doc_Param.State = dsBrowse then DM.Doc_Param.Edit;
      if (TRIM(DM.Doc_ParamLOOKUP.AsString)='PRICE') then
        DM.Doc_ParamPARAM_VALUE.AsString := 'Цены указаны согласно прейскуранту '+Name
      else
        DM.Doc_ParamPARAM_VALUE.AsString := Name;
      DM.Doc_ParamKod.AsInteger := KodSpr;
      DM.Doc_Param.Post;
    end;
    if (TRIM(DM.Doc_ParamLOOKUP.AsString)='PRICE') then Izm_Cen_Razr;
  end
  else
  begin
    i:=0;
    while i=0 do
    begin
      if fDok_Osn.ShowModal = mrOK then    //Документ основание выбран
      begin
        if DM.Doc_Param.State = dsBrowse then DM.Doc_Param.Edit;
        DM.Doc_ParamPARAM_VALUE.AsString := DM.Doc_ParamPARAM_VALUE.AsString+' №'+DM.Dok_OsnNdok.AsString+' от '+DM.Dok_OsnDATE_DOK.AsString;
        DM.Doc_Param.Post;
      end
      else
      begin
        if MessageDlg('Удалить доп.основание?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
        begin
          if DM.Doc_Param.State = dsBrowse then DM.Doc_Param.Edit;
          DM.Doc_ParamPARAM_VALUE.AsString := '';
          DM.Doc_Param.Post;
        end;
      end;
      if MessageDlg('Добавлять следующий документ?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then i:=1;
    end;
  end;
end;

procedure TFDokument.Izm_Cen_Razr;
begin
  DM.Query2.Close;
  DM.Query2.SQL.Text:='select spprod.ksm_id, cen_price_prep.sprod_id, cen_price_prep.cena  '+
    ' from cen_price_prep  '+
    ' inner join spprod on cen_price_prep.sprod_id = spprod.sprod_id '+
    ' where cen_price_prep.price_id = '+DM.Doc_ParamKod.AsString;
  DM.Query2.Open;
  DM.KARTV.DisableControls;
  try
    DM.KARTV.First;
    while not DM.KARTV.Eof do
    begin
      DM.KARTV.Edit;
      if DM.Query2.Locate('ksm_id',DM.Kartv.FieldByName('ksm_id').AsInteger,[]) then
      begin
        DM.KARTVCENA_VP.AsFloat := DM.Query2.FieldByName('Cena').AsFloat;
        if DM.Dokument.FieldByName('Kpv').AsFloat <> 0 then
          DM.KARTVCENA.AsFloat := DM.Query2.FieldByName('Cena').AsFloat/DM.Dokument.FieldByName('Kpv').AsFloat
        else
          DM.KARTVCENA.AsFloat := DM.Query2.FieldByName('Cena').AsFloat;
      end
      else
      begin
        DM.KARTVCENA_VP.AsFloat := 0;
        DM.KARTVCENA.AsFloat := 0;
      end;
      DM.KARTV.Post;
      DM.KARTV.Next;
    end;
  finally
    DM.KARTV.EnableControls;
  end;
  DM.Query2.Close;
end;

procedure TFDokument.EditPARAM_VALUEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DM.Doc_ParamLOOKUP.AsString <> '' then
  begin
    if ((DM.QueryTipDokTIP_DOK_ID.AsInteger = 72)  and       //Доверенность
       (DM.Doc_ParamPARAM_VALUE.AsString <> '') and   //Разрешено корректировать наименование организации
       (trim(DM.Doc_ParamLOOKUP.AsString) = 'SPRORG')) then
    exit;
    if (DM.QueryTipDokTIP_DOK_ID.AsInteger = 89)  then   exit;  //разрешения
    MessageDlg('Данные должны быть выбраны из справочника!', mtWarning, [mbOK], 0);
    DM.Doc_Param.Cancel;
  end;
end;

procedure TFDokument.EditSTRUK_ID_LOOKUPButtonClick(Sender: TObject);
var
  Name : string;
  KodSpr : Integer;
  Lookup : variant;
begin
 lookup := SelectToVarIB('select doc_oper.lookup from doc_oper where tip_op_id ='+
 DM.Dokument.FieldByName('Tip_Op_Id').AsString +' and tip_dok_id = '+
 DM.Dokument.FieldByName('Tip_Dok_Id').AsString + 'and doc_oper.field_dok = '+''''+'STRUK_ID'+'''',DM.UMC_DATA, DM.Tran_Select);
 if trim(Lookup) = 'STRUK' then
   FindSpr('STRUK',DM.UMC_DATA, Name,KodSpr,DM.Dokument.FieldByName('STRUK_ID').AsInteger)
 else
 begin
   FormToObject(FSklad,EditSTRUK_ID_LOOKUP);
   FindSpr('CONFIGUMC',DM.UMC_DATA, Name,KodSpr,DM.Dokument.FieldByName('STRUK_ID').AsInteger);
 end;
 if KodSpr <> 0 then
 begin
   DM.STRUK_ID := KodSpr;
   DM.STNAME := Name;
   if DM.Dokument.State = dsBrowse then DM.Dokument.Edit;
   DM.Dokument.FieldByName('STRUK_ID').AsInteger:=KodSpr;
   DM.Dokument.FieldByName('STRUK_ID_LOOKUP').AsString:=Name;
 end;
 //Изменяем подписи на разрешении на отгрузку
 if DM.Dokument.FieldByName('TIP_DOK_ID').AsInteger = 89 then
 begin
   if DM.Doc_Param.Locate('TIP_PARAM_ID',57,[]) then
   begin
    if DM.Dokument.FieldByName('STRUK_ID').AsInteger = 130 then   //склад наркотиков
    begin
      DM.Query.Close;
      DM.Query.SQL.Text:='select default_value from doc_tip_param where tip_param_id=57';
      DM.Query.Open;
      DM.Doc_Param.Edit;
      DM.Doc_ParamPARAM_VALUE.AsString := DM.Query.FieldByName('default_value').AsString;
      DM.Doc_Param.Post;
      DM.Query.Close;
    end
    else
    begin
      DM.Doc_Param.Edit;
      DM.Doc_ParamPARAM_VALUE.AsString := '';
      DM.Doc_Param.Post;
    end
   end;
 end;
end;

procedure TFDokument.AUpdateMaterialExecute(Sender: TObject);
var
  KartId: integer;
  vKsm_Id : integer;
begin
  if DM.MODE = 2 then exit;
  // Для ОС вызываем картотеку
  if ((DM.QueryTipOperGR_OP_ID.AsInteger = 11) and
    (DM.QueryTipDokTIP_DOK_ID.AsInteger <> 42) and
    (DM.QueryTipDokTIP_DOK_ID.AsInteger <> 55)) then
  begin
    if FIk = nil then
      Application.CreateForm(TFIk, FIk);
    FIk.AOk.Visible := true;
    FIk.ACancel.Visible := true;
    Fik.inv_id := DM.KartV.FieldByName('Tag1').AsInteger;
    if FIk.ShowModal = mrOk then
    begin
      DM.KARTV.Edit;
      DM.KartV.FieldByName('KSM_ID').AsInteger:=FIk.Ik.FieldByName('Ksm_Id').AsInteger;
      DM.KartV.FieldByName('Tag1').AsInteger:=FIk.Ik.FieldByName('Inv_Id').AsInteger;
      DM.KartV.FieldByName('Kol_Rash').AsInteger := 1;
      DM.KARTV.FieldByName('Cena_Vp').AsFloat := FIk.Ik.FieldByName('Pbs').AsFloat;
      DM.KARTV.FieldByName('Inv').AsString := FIk.Ik.FieldByName('IN').AsString;
      DBGridEh4.SetFocus;
    end;
    exit;
  end;
  // Формирование разрешения
  if DM.QueryTipDokTIP_DOK_ID.AsInteger  = 89 then
  begin
    if FForm_Razr = nil then
      Application.CreateForm(TFForm_Razr, FForm_Razr);
    FForm_Razr.ShowModal;
    exit;
  end;
  // Если ПРОЧИЕ ДОКУМЕНТЫ - сразу вызываем справочник
  if (DM.GruppaOper = 0) and (DM.KartV.IsEmpty) then Exit;
  if (DM.GruppaOper > 0) and (DM.Kart.IsEmpty) then Exit;
  if ((DM.GruppaOper = 0) and (DM.QueryTipDokTIP_DOK_ID.AsInteger <> 89)) then
  begin
    if ((dm.QueryTipDokTIP_DOK_ID.AsInteger = 12) or (dm.QueryTipDokTIP_DOK_ID.AsInteger = 23)) then
    begin
      //Записываем документ
      APost.Execute;
      //Вызываем форму прайсов
      if FPrice_Prot = nil then
        Application.CreateForm(TFPrice_Prot, FPrice_Prot);
      FPrice_Prot.ShowModal;
    end
    else
    begin
      if dm.IBMatr_prPRMAT.AsString='05' then
      begin
        FindSpprod.Public_Id := DM.KARTVKSM_ID.AsInteger;
        FindSpprod.DataBaseName:=DM.UMC_DATA;
        FindSpprod.ReadOnly:=True;
        if  FindSpprod.ShowModal > 50 then
          vKsm_Id := FindSpprod.IbSpprod.FieldByName('Ksm_id').ASinteger
        else
          vKsm_Id := DM.KARTVKSM_ID.AsInteger;
      //   vKsm_Id:=FindSpprod.ShowModal-50;
      end
      else
      begin
        if TRIM(AnsiUpperCase(DM.Curr_role)) = 'RK_OKS' then
          FindMatrop.Usl := '((Matrop.Prmat = '+''''+'04'+''''+') or (Matrop.Prmat = '+''''+'03'+''''+'))';
        FindMatrop.Public_Id := DM.KARTVKSM_ID.AsInteger;
        FindMatrop.DataBaseName:=DM.UMC_DATA;
        FindMatrop.ReadOnly:=False;
        vKsm_Id:=FindMatrop.ShowModal-50;
      end;
      if ((vKsm_Id>0) and (DM.KartV.FieldByName('KSM_ID').AsInteger <> vKsm_Id)) then
      begin
        DM.KARTV.Edit;
        DM.KartV.FieldByName('KSM_ID').AsInteger:=vKsm_Id;
        DM.Query2.Close;
        DM.Query2.SQL.Clear;
        DM.Query2.SQL.Add('Select ostatki.cena_uch from ostatki where ostatki.struk_id = '+DM.Dokument.FieldByName('Struk_id').AsString+
        '  and ksm_id = '+IntToStr(vKsm_id));
        DM.Query2.Open;
        DM.KartV.FieldByName('cena_vp').AsFloat := DM.Query2.fieldbyname('cena_uch').asfloat;
        DM.KartV.FieldByName('cena').AsFloat := DM.Query2.fieldbyname('cena_uch').asfloat;
        DM.Query2.Close;
        DBGridEh4.SetFocus;
      end;
    end;
  end
  else       // Вызываем форму с остатками
  begin
    fostatki.KSM_Filter:='0=0';
    fostatki.KART_Filter:='0=0';
    if DM.QueryTipOperIS_BSO.AsInteger=1 then
      fostatki.KSM_Filter:='(Matrop.gr='+''''+'09'+''''+') and (matrop.pgr='+''''+'12'+''''+')';
  // Если расход, выключаем кнопки добавления материала и серии
    if DM.GruppaOper=1 then
    begin
      fostatki.ToolButton1.Visible:=True;
      fostatki.ToolButton2.Visible:=True;
    end
    else
    begin
      fostatki.ToolButton1.Visible:=False;
      fostatki.ToolButton2.Visible:=False;
    end;
  // Вызываем форму выбора карточки
      if DM.KartKsm_id.AsInteger <> 0  then
      begin
        DM.MatrPr := SelectToVarIB('select matrop.prmat from matrop where matrop.ksm_id ='+DM.KartKsm_id.AsString, DM.UMC_DATA, DM.Tran_Select );
      end;
      fostatki.Public_Id := DM.KartKSM_ID.AsInteger;
      KartId:=fostatki.ShowModal;
      if KartID<50 then
        Exit;
      DM.Kart.Edit;
      DM.Kart.FieldByName('KART_ID').AsInteger:=KartId-50;
      DM.Kart.FieldByName('KSM_ID').AsVariant :=
        SelectToVarIB('SELECT Ost.KSM_ID FROM Ostatki Ost '
        +'WHERE Ost.KART_ID = '+IntToStr(DM.Kart.FieldByName('KART_ID').AsInteger),DM.UMC_DATA, DM.Tran_Select);
      FocusControl(DBGridEh2);
      if (DM.QueryTipDokTTN.AsInteger = 1) and (DM.GruppaOper = 2) then
      begin
        DM.TTN_Stroki.Edit;
        DM.TTN_StrokiNMAT.AsString:=DM.KartNMAT.AsString;
      end;
      FocusControl(DBGridEh2);
      if DM.GruppaOper=1 then DBGridEh2.SelectedField:=GridEhFieldByName(DBGridEh2,'KOL_PRIH')
      else DBGridEh2.SelectedField:=GridEhFieldByName(DBGridEh2,'KOL_RASH');
 //   end;
  end;
end;

procedure TFDokument.DBGridEh4Columns30EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  kodspr : integer;
  name : string;
begin
  FindSpr('IK',DM.UMC_DATA, Name,KodSpr,DM.KartVTAG1.AsInteger);
  if KodSpr <> 0 then
  begin
    if DM.KART.State = dsBrowse then DM.KARTV.Edit;
    DM.KartVTag1.AsInteger := kodspr;
    DM.KartVInv.AsString :=Name;
  end
end;

procedure TFDokument.DBGridEh4Columns3EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  AUpdateMaterialExecute(Sender);
end;

procedure TFDokument.DBGridEh4Columns13UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if StrToFloat(Text) <> 0 then
  begin
    if ((DM.KARTVCENA_VP.AsFloat = 0) and (DM.KartVKOL_PRIH.AsFloat + DM.KartVKOL_RASH.AsFloat <> 0)) then
    begin
      DM.KARTVCENA_VP.AsFloat := StrToFloat(Text)/(DM.KartVKOL_PRIH.AsFloat + DM.KartVKOL_RASH.AsFloat);
    end;
  end;
end;

procedure TFDokument.DBGridEh4Columns22EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
   FLookup.IBQuery.Database := DM.UMC_DATA;
   FLookup.IBQuery.SQL.Text:='select seria.seria_id id, seria.seria nam from seria '+
    ' where seria.ksm_id = '+IntToStr(DM.KARTVKSM_ID.AsInteger);
   FLookup.IBQuery.Open;
//   FLookup.IBQuery.FetchAll;
   FLookup.IBQuery.Last;
//   FLookup.Height := 60+FLookup.IBQuery.RecordCount*20;
   FLookup.Width := FDokument.GridEhColumnByName(DBGridEh4,'SERIA').Width;
   FLookup.Top :=Mouse.CursorPos.y;
   FLookup.Left :=Mouse.CursorPos.x-FLookup.Width;
   if FLookup.ShowModal>50 then
   begin
     if DM.KARTV.State = dsBrowse then DM.KARTV.Edit;
     DM.KartVSeria_Id.AsInteger :=FLookup.IBQuery.FieldByName('ID').AsInteger;
     DM.KartVSeria.AsString :=FLookup.IBQuery.FieldByName('NAM').AsString;
   end;
   FLookup.IBQuery.Close;
end;

procedure TFDokument.DBGridEh4Columns26EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  NamMes :string;
  S : string;
begin
   if DM.MODE=2 then exit;
   FLookup.IBQuery.Database := DM.UMC_DATA;
   FLookup.IBQuery.SQL.Text:='select region.reg id, region.nam from region '+
    ' where region.priz<>4 ';
   FLookup.IBQuery.Open;
   FLookup.IBQuery.FetchAll;
   FLookup.IBQuery.Locate('ID',DM.KartVTag.AsInteger,[]);
 //  FLookup.Height := 60+DM.Query.RecordCount*20;
   FLookup.Width := FDokument.GridEhColumnByName(DBGridEh4,'NAMREGPR').Width;
   FLookup.Top :=Mouse.CursorPos.y;
   FLookup.Left :=Mouse.CursorPos.x-FLookup.Width;
   if FLookup.ShowModal>50 then
   begin
     if DM.KARTV.State = dsBrowse then DM.KARTV.Edit;
     DM.KartVTag.AsInteger :=FLookup.IBQuery.FieldByName('ID').AsInteger;
     DM.KARTVNAMREGPR.AsString :=FLookup.IBQuery.FieldByName('NAM').AsString;
     if DM.KARTVTAG1.AsInteger <> 0 then
     begin
       // Заносим информацию в PRIX.DBF и PRIX_XX
       if DM.MES<10 then NamMes := '0'+IntToStr(DM.MES)
       else NamMes := IntToStr(DM.MES);
       DM.Prihod.Active := False;
       DM.Prihod.SQL.Clear;
       S := 'prix set reg ='+DM.KartVTag.ASString+' where prix.nom_id = '+ DM.KartVTag1.ASString;
       DM.Prihod.SQL.Add('UPDATE ":Prihod:Prix.DBF"  '+S);
       DM.Prihod.ExecSQL;
       DM.Prihod.SQL.Clear;
       DM.Prihod.SQL.Add('UPDATE ":Prihod:Prix_'+NAMMES+'.DBF" '+S);
       DM.Prihod.ExecSQL;
     end;
   end;
   FLookup.IBQuery.Close;
end;

procedure TFDokument.DBGridEh4Columns2EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  AUpdateMaterialExecute(Sender);
end;

procedure TFDokument.TTNKlient(Sender: TField);
var
  rAdres : string;
begin
  if Trim(DM.QueryTipDokLOOKUP.AsString)='SPRORG' then
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('SELECT sprorg."INDEX" unn, sprorg.adres,sprorg.rchet, sprorg.bank,sprorg.mfol, ');
    DM.Query.SQL.Add(' bankinfo.address from sprorg ');
    DM.Query.SQL.Add(' left join bankinfo on sprorg.bank_id = bankinfo.bank_id ');
    DM.Query.SQL.Add(' where sprorg.kod = '+DM.Dokument.FieldByName('Klient_Id').AsString);
    DM.Query.Open;
    if DM.Query.FieldByName('UNN').AsInteger=0 then
      MessageDlg('По организации не заполнен УНН!', mtWarning, [mbOK], 0);
    if DM.Query.FieldByName('Adres').AsString='' then
      MessageDlg('По организации не заполнен адрес!', mtWarning, [mbOK], 0);
    if DM.Query.FieldByName('rchet').AsString='' then
      MessageDlg('По организации не заполнен р/счет!', mtWarning, [mbOK], 0);
    if DM.Query.FieldByName('bank').AsString='' then
      MessageDlg('По организации не заполнен банк!', mtWarning, [mbOK], 0);
    if DM.Query.FieldByName('mfol').AsString='' then
      MessageDlg('По организации не заполнен код банка!', mtWarning, [mbOK], 0);
    if DM.Query.FieldByName('address').AsString='' then
      MessageDlg('По организации не заполнен адрес банка!', mtWarning, [mbOK], 0);
    rAdres := DM.Query.FieldByName('Adres').AsString;
    DM.Query.close;
  end
  else
  begin
    if Trim(DM.QueryTipDokLOOKUP.AsString)='KADRY' then
    begin
      DM.Query.Close;
      DM.Query.SQL.Clear;
      DM.Query.SQL.Add('SELECT kadry.adres from kadry where kadry.nlk='+
      DM.Dokument.FieldByName('Klient_Id').AsString);
      DM.Query.Open;
      if DM.Query.FieldByName('Adres').AsString='' then
        MessageDlg('По получателю не заполнен адрес!', mtWarning, [mbOK], 0);
      rAdres := DM.Query.FieldByName('Adres').AsString;
      DM.Query.close;
    end;
  end;
  if DM.TTN.State = dsBrowse then DM.TTN.Edit;
//  if DM.TTNZAK_ID.AsInteger = 0 then
//    DM.TTNZAK_ID.AsInteger := 1292  //Код РУП "Белмедпрепараты" в справочнике
//  else
//    if MessageDlg('Изменять данные о заказчике?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//      DM.TTNZAK_ID.AsInteger := DM.Dokument.FieldByName('Klient_Id').AsInteger;
  if DM.TTNPOL_ID.AsInteger = 0 then
    DM.TTNPOL_ID.AsInteger := DM.Dokument.FieldByName('Klient_Id').AsInteger
  else
    if MessageDlg('Изменять данные о грузополучателе?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      DM.TTNPOL_ID.AsInteger := DM.Dokument.FieldByName('Klient_Id').AsInteger;
//  if DM.TTNVLAD_TRANS.AsString = '' then
//    DM.TTNVLAD_TRANS.AsString := 'Собственный транспорт';
  if DM.TTNVLAD_TRANS.AsString = '' then
    DM.TTNVLAD_TRANS.AsString := DM.Dokument.FieldByName('Klient_Id_Lookup').AsString;
  if  (DM.TTNPUNKT_RAZGR.AsString = '') then
    DM.TTNPUNKT_RAZGR.AsString := rAdres
  else
    if MessageDlg('Изменять пункт разгрузки?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      DM.TTNPUNKT_RAZGR.AsString := rAdres;
  if  (DM.TTNVID_PER.AsString = '') then
    DM.TTNVID_PER.AsString := 'Автотранспорт'
end;

procedure TFDokument.TTNStruk(Sender: TField);
begin
  if  DM.TTNPUNKT_POGR.AsString = '' then
  begin
    if DM.ConfigUMC.Active = False then DM.ConfigUMC.Active := True;
    if DM.ConfigUMC.Locate('STRUK_ID',DM.STRUK_ID,[]) then
    begin
      if DM.TTN.State = dsBrowse then DM.TTN.Edit;
      DM.TTNPUNKT_POGR.AsString := DM.ConfigUMCPUNKT_POGR.AsString;
    end;
  end
  else
  begin
    if DM.ConfigUMC.Active = False then DM.ConfigUMC.Active := True;
    if DM.ConfigUMC.Locate('STRUK_ID',DM.STRUK_ID,[]) then
    begin
      if ((DM.TTNPUNKT_POGR.AsString<>'') and (DM.TTNPUNKT_POGR.AsString<>DM.ConfigUMCPUNKT_POGR.AsString)) then
        if MessageDlg('Изменять пункт погрузки?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if DM.TTN.State = dsBrowse then DM.TTN.Edit;
          DM.TTNPUNKT_POGR.AsString := DM.ConfigUMCPUNKT_POGR.AsString;
        end;
    end;
  end;
end;

procedure TFDokument.FormRazr(dok_osn_id :integer);
var
  vid_reg : integer;
begin
// Процедура выполняет занесение параметров при выписке разрешения
// для перенесения в накладную
  DM.QDok_Osn.ParamByName('dok_osn_Id').AsInteger := dok_osn_id;
  DM.QDok_Osn.Active := false;
  DM.QDok_Osn.Active := true;
  //Вид региона для отбора подписей
  DM.Query.Close;
  DM.Query.SQL.Text:='select iif(sprorg.reg = 112, 0, 1) vidreg from document '+
    ' inner join sprorg on document.klient_id = sprorg.kod '+
    ' where document.doc_id = '+ DM.Dokument.FieldByName('dok_osn_id').AsString;
  DM.Query.Open;
  vid_reg := DM.Query.FieldByName('vidreg').AsInteger;
  // Грузополучатель
  if DM.Doc_Param.Locate('RESULT_FIELD','NAM',[loPartialKey]) then
  begin
    DM.Doc_Param.Edit;
    if DM.QDok_OsnPOL_ID.AsInteger <> 0 then
    begin
      DM.Doc_ParamPARAM_VALUE.AsString := DM.QDok_OsnNAM.AsString;
      DM.Doc_ParamKOD.AsInteger  := DM.QDok_OsnPOL_ID.AsInteger;
    end
    else
    begin
      DM.Doc_ParamPARAM_VALUE.AsString := DM.Dokument.FieldByName('KLIENT_ID_LOOKUP').AsString;
      DM.Doc_ParamKOD.AsInteger  := DM.Dokument.FieldByName('KLIENT_ID').AsInteger;
    end;
    DM.Doc_Param.Post;
  end;
  // Срок отгрузки
  if DM.Doc_Param.Locate('RESULT_FIELD','SROK',[loPartialKey]) then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='select period_post from dog where dog.doc_id ='+ DM.QDok_OsnDOC_ID.AsString;
    DM.Query.Open;
    DM.Doc_Param.Edit;
    DM.Doc_ParamPARAM_VALUE.AsString := 'С '+DM.QDok_OsnDATE_OP.AsString+' по '+DateToStr(DM.QDok_OsnDATE_OP.AsDateTime + DM.Query.FieldByName('Period_Post').AsInteger);
    DM.Doc_Param.Post;
  end;
  // Особые условия
  if DM.Doc_Param.Locate('RESULT_FIELD','VID_PER',[loPartialKey]) then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='select vid_per.nam from dog left join vid_per on dog.vid_perev_id = vid_per.vid_per_id where dog.doc_id ='+ DM.QDok_OsnDOC_ID.AsString;
    DM.Query.Open;
    DM.Doc_Param.Edit;
    DM.Doc_ParamPARAM_VALUE.AsString := DM.Query.FieldByName('nam').AsString;
    DM.Doc_Param.Post;
  end;
  // Контракт
  if DM.Doc_Param.Locate('RESULT_FIELD','KONTRAKT',[loPartialKey]) then
  begin
    if DM.QDok_OsnDOK_OSN_ID.AsInteger <> 0 then
    begin
      DM.Query.Close;
      DM.Query.SQL.Text:='select dog.ndog_str ndok, date_dok from document inner join dog on document.doc_id=dog.doc_id where document.doc_id ='+ DM.QDok_OsnDOK_OSN_ID.AsString;
      DM.Query.Open;
      DM.Doc_Param.Edit;
      DM.Doc_ParamPARAM_VALUE.AsString := DM.Query.FieldByName('ndok').AsString+' Дата '+DM.Query.FieldByName('date_dok').AsString;
      DM.Doc_Param.Post;
    end
    else
    begin
      DM.Doc_Param.Edit;
      DM.Doc_ParamPARAM_VALUE.AsString := DM.QDok_Osn.FieldByName('ndok').AsString+' Дата '+DM.QDok_Osn.FieldByName('date_dok').AsString;
      DM.Doc_Param.Post;
    end;
  end;
  // Спецификация
  if DM.Doc_Param.Locate('RESULT_FIELD','PRIL',[loPartialKey]) then
  begin
    if ((DM.QDok_Osn.FieldByName('ndok').AsString <> '') and (DM.QDok_OsnDOK_OSN_ID.AsInteger <> 0)) then
    begin
      DM.Doc_Param.Edit;
      DM.Doc_ParamPARAM_VALUE.AsString := DM.QDok_Osn.FieldByName('ndok').AsString+' Дата '+DM.QDok_Osn.FieldByName('date_dok').AsString;
      DM.Doc_Param.Post;
    end;
  end;
  // Составил
  if DM.Doc_Param.Locate('TIP_PARAM_ID',286,[]) then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='select ispolnitel from dog where dog.doc_id ='+ DM.Dokument.FieldByName('DOK_OSN_ID').AsString;
    DM.Query.Open;
    DM.Doc_Param.Edit;
    DM.Doc_ParamPARAM_VALUE.AsString := trim(DM.Query.FieldByName('ispolnitel').AsString);
    DM.Doc_Param.Post;
  end;
  // Согласовал наркотики
  if DM.Doc_Param.Locate('TIP_PARAM_ID',57,[]) then
  begin
    if DM.Dokument.FieldByName('STRUK_ID').AsInteger <> 130  then //Склад наркотиков
    begin
      DM.Doc_Param.Edit;
      DM.Doc_ParamPARAM_VALUE.AsString := '';
      DM.Doc_Param.Post;
    end;
  end;
  // Разрешил
  if DM.Doc_Param.Locate('TIP_PARAM_ID',55,[]) then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='select first 1 doc_param.param_value, doc_param.doc_id from doc_param '+
       ' inner join document on doc_param.doc_id=document.doc_id '+
       ' inner join sprorg on document.klient_id = sprorg.kod '+
       ' where doc_param.tip_param_id = 55 '+
       ' and document.tip_dok_id = 89 '+
       ' and iif(sprorg.reg = 112, 0, 1) = '+IntToStr(vid_reg)+
       ' order by doc_param.doc_id desc ';
    DM.Query.Open;
    DM.Doc_Param.Edit;
    DM.Doc_ParamPARAM_VALUE.AsString := DM.Query.FieldByName('param_value').AsString;
    DM.Doc_Param.Post;
  end;
  // Согласовал
  if DM.Doc_Param.Locate('TIP_PARAM_ID',285,[]) then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='select first 1 doc_param.param_value, doc_param.doc_id from doc_param '+
       ' inner join document on doc_param.doc_id=document.doc_id '+
       ' inner join sprorg on document.klient_id = sprorg.kod '+
       ' where doc_param.tip_param_id = 285 '+
       ' and document.tip_dok_id = 89 '+
       ' and iif(sprorg.reg = 112, 0, 1) = '+IntToStr(vid_reg)+
       ' order by doc_param.doc_id desc ';
    DM.Query.Open;
    DM.Doc_Param.Edit;
    DM.Doc_ParamPARAM_VALUE.AsString := DM.Query.FieldByName('param_value').AsString;
    DM.Doc_Param.Post;
  end;
  // Прейсекурант
  if DM.Doc_Param.Locate('TIP_PARAM_ID',12,[]) then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='select iif(dog.price_id is not null,dog.price_id, dog.prot_doc_id*(-1)) price_id, '+
      ' iif(dog.price_id is not null, '+''''+'Цены согласно прейскуранту '+''''+'||coalesce(cen_price_vid.number,'+''''+''''+')||'+''''+' от '+''''+'||datetostr(cen_price_vid.date_begin,'+''''+'%d.%m.%Y'+''''+'),'+
      ''''+'Цены соглано протоколу №'+''''+'||coalesce(doc_prot.ndok,'+''''+''''+')||'+''''+' от '+''''+'||datetostr(doc_prot.date_dok,'+''''+'%d.%m.%Y'+''''+')) param_value, '+
      ' doc_param.param_value param_text '+
      ' from dog '+
      ' left join cen_price_vid on (dog.price_id = cen_price_vid.price_id) '+
      ' left join document doc_prot on dog.prot_doc_id = doc_prot.doc_id '+
      ' left join doc_param on dog.doc_id=doc_param.doc_id and doc_param.tip_param_id=287 '+
      ' where dog.doc_id = '+  DM.Dokument.FieldByName('DOK_OSN_ID').AsString;
    DM.Query.Open;
    DM.Doc_Param.Edit;
    if ((DM.Query.FieldByName('param_text').AsString <> '') and (DM.Query.FieldByName('price_id').AsInteger<0)) then
    begin
      DM.Doc_ParamPARAM_VALUE.AsString := DM.Query.FieldByName('param_text').AsString;
     // DM.Doc_ParamKOD.AsInteger := -1;
      DM.Doc_ParamKOD.AsInteger := DM.Query.FieldByName('price_id').AsInteger;
    end
    else
    begin
      DM.Doc_ParamPARAM_VALUE.AsString := DM.Query.FieldByName('param_value').AsString;
      DM.Doc_ParamKOD.AsInteger := DM.Query.FieldByName('price_id').AsInteger;
    end;
    DM.Doc_Param.Post;
  end;
  // Доп. информация
  if DM.Doc_Param.Locate('TIP_PARAM_ID',328,[]) then
  begin
    DM.Query.Close;
    DM.Query.SQL.Text:='select  first 1 rk_zadol.korg,  '+
      ' rk_zadol.sum_byb nopl, rk_zadol.sum_sr_byb sr_nopl '+
      ' from rk_zadol where rk_zadol.korg = '+ DM.Dokument.FieldByName('KLIENT_ID').AsString +
      ' order by god desc, mes   desc' ;
    DM.Query.Open;
    DM.Doc_Param.Edit;
    DM.Doc_ParamPARAM_VALUE.AsString := 'Задолженность на '+DateToStr(Date)+' составляет - '+ DM.Query.FieldByName('nopl').AsString +' рублей.'+
    ' В том числе просроченная - '+ DM.Query.FieldByName('sr_nopl').AsString +' рублей.';
    DM.Doc_Param.Post;
  end;
  DM.QDok_Osn.Active := false;
end;

procedure TFDokument.FormNakl;
//Формировние накладной на отгрузку продукции на основании разрешения
begin
  //Перенос продукции
  DM.Query1.Close;
  DM.Query1.SQL.Text:='SELECT * from umc_form_nakl('+DM.Dok_OsnDOC_ID.AsString+')';
  DM.Query1.Open;
  DM.Query1.First;
  while not DM.Query1.Eof do
  begin
    DM.Kart.Append;
    DM.KartDOC_ID.AsInteger := DM.Dokument.FieldByName('DOC_ID').AsInteger;
    DM.KartKSM_ID.AsInteger := DM.Query1.FieldByName('KSM_ID').AsInteger;
    DM.KartKOL_RASH.Asfloat := DM.Query1.FieldByName('Kol_Rash').Asfloat;
    DM.KartNDS.AsFloat := DM.Query1.FieldByName('Nds').AsFloat;
    DM.KartCena_Vp.AsFloat := DM.Query1.FieldByName('Cena_Vp').AsFloat;
    DM.KartKART_ID.AsInteger := DM.Query1.FieldByName('KART_ID').AsInteger;
    DM.KartSeria.AsString := DM.Query1.FieldByName('Seria').AsString;
    DM.KartNAME_UPAK.AsString := DM.Query1.FieldByName('Name_Upak').AsString;
    DM.Kart.Post;
    DM.TTN_Stroki.Append;
    DM.TTN_StrokiSTROKA_ID.AsInteger := DM.KartSTROKA_ID.AsInteger;
    DM.TTN_StrokiNMAT.AsString := DM.KartNMAT.AsString;
    DM.TTN_Stroki.Post;
    DM.Query1.Next;
  end;
  //Перенос данных ТТН
  DM.Query1.Close;
  DM.Query1.SQL.Text:='select doc_tip_param.result_field,doc_param.kod, doc_param.param_value '+
    ' from doc_param '+
    ' inner join doc_tip_param on doc_param.tip_param_id=doc_tip_param.tip_param_id '+
    ' where doc_param.doc_id ='+DM.Dok_OsnDOC_ID.AsString;
  DM.Query1.Open;
  DM.Query1.First;
  DM.TTN.Edit;
  while not DM.Query1.Eof do
  begin
    try
      if DM.Query1.FieldByName('KOD').AsInteger <> 0 then
      begin
        DM.TTNPOL_ID.AsInteger := DM.Query1.FieldByName('KOD').AsInteger;
      end
      else
      if (Trim(DM.Query1.FieldByName('RESULT_FIELD').AsString)<>'SROK') and
         (Trim(DM.Query1.FieldByName('RESULT_FIELD').AsString)<>'DATE_CH') then
      begin
        DM.TTN.FieldByName(Trim(DM.Query1.FieldByName('RESULT_FIELD').AsString)).AsString :=
        DM.Query1.FieldByName('PARAM_VALUE').AsString;
      end;
    except
    end;
    DM.Query1.Next;
  end;
end;

procedure TFDokument.PrihOC;
var
  YesOC : Boolean;
begin
  DM.Kart.DisableControls;
  try
    YesOC := False;
    DM.Kart.First;
    While not DM.Kart.Eof do
    begin
      if TRIM(DM.KartAccount.AsString) = '01' then
      begin
        YesOC := True;
        DM.Kart.Refresh;
      end;
      DM.Kart.Next;
    end;
    if YesOC then
      if MessageDlg('В документе присутствуют ОС!'
        +#13+#10+'Формировать АКТ ПРИЕМКИ-ПЕРЕДАЧИ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        try
          if AktPriem = nil then
             Application.CreateForm(TAktPriem, AktPriem);
          AktPriem.ShowModal;
        except
          MessageDlg('Произошла ошибка при формировании АКТА ПРИЕМА-ПЕРЕДАЧИ!'+#13+#10+'Акт не сформирован! ', mtWarning, [mbOK], 0);
          raise;
        end;
      end;
  finally
    DM.Kart.EnableControls;
  end;
end;

procedure TFDokument.FormSumString;
//Формирует суммы прописью для печати документов
begin
  DM.Query.Close;
  DM.Query.SQL.Text := 'SELECT "CHAR", SHORTCHAR, "PRECISION" PREC FROM Val WHERE Val.Val = '+IntToStr(DM.Dokument.FieldByName('VP_ID').AsInteger);
  DM.Query.Open;
  Sum_ma:=Round(Int(DM.Dokument.fieldbyName('SUM_VP').AsFloat));
  if (Sum_ma >=0) then
    Summa:=SumToString(Sum_ma)+' '+DM.Query.FieldByName('CHAR').AsString
  else
    Summa := '';  
  Sum_Cop := Round(Frac(DM.Dokument.fieldbyName('SUM_VP').AsFloat)*100);
  if (Sum_Cop<>0)and(DM.Query.FieldByName('PREC').AsInteger>1) then
      Summa:=Summa+' '+IntToStr(Sum_Cop)+' '+DM.Query.FieldByName('SHORTCHAR').AsString;
  if DM.Dokument.fieldbyName('NDS').IsNull then
    Nds_str:='без НДС'
  else
  begin
    Nds:=Round(Int(DM.Dokument.fieldbyName('NDS').AsFloat));
    Nds_str:=IntToStr(Nds)+'% ';
  end;
  Sum_Nds := Round(Int(DM.Dokument.fieldbyName('SUM_NDS_VP').AsFloat));
  if Sum_Nds >= 0 then
    SumNds:=sumtostring(Sum_Nds)+' '+DM.Query.FieldByName('CHAR').AsString
  else
    SumNds := '';
  Sum_Cop := Round(Frac(DM.Dokument.fieldbyName('SUM_NDS_VP').AsFloat)*100);
  if (Sum_Cop<>0)and(DM.Query.FieldByName('PREC').AsInteger>1) then
    SumNds:=SumNds+' '+IntToStr(Sum_Cop)+' '+DM.Query.FieldByName('SHORTCHAR').AsString;
  Sum_All := Round(Int(DM.Dokument.fieldbyName('SUM_VP').AsFloat+DM.Dokument.fieldbyName('SUM_NDS_VP').AsFloat));
  if Sum_All>=0 then
    SumAll:=sumtostring(Sum_All)+' '+DM.Query.FieldByName('CHAR').AsString
  else
    SumAll := '';
  Sum_Cop := Round((Frac(DM.Dokument.fieldbyName('SUM_VP').AsFloat+DM.Dokument.fieldbyName('SUM_NDS_VP').AsFloat))*100);
  if (Sum_Cop<>0)and(DM.Query.FieldByName('PREC').AsInteger>1) then
    SumAll:=SumAll+' '+IntToStr(Sum_Cop)+' '+DM.Query.FieldByName('SHORTCHAR').AsString;
  DM.Query.Close;
  DM.Query.SQL.Text := 'SELECT SUM(kartv.tag) as kol_mest '+
  'FROM KARTV  '+
  'WHERE kartv.doc_id = '+IntToStr(DM.Dokument.FieldByName('doc_id').AsInteger);
  DM.Query.Open;
  Kol_Mest := Round(Int(DM.Query.fieldbyName('kol_mest').AsFloat));
  Sum_Cop := Round(Frac(DM.Query.fieldbyName('kol_mest').AsFloat)*100);
  Kolmest:=sumtostring(Kol_mest);
  if Sum_Cop<>0 then Kolmest:=Kolmest+' '+IntTOStr(Sum_Cop);
  DM.Query.Close;
  DM.Query.SQL.Text := 'SELECT sum(kartv.netto) as netto, sum(kartv.brutto) as brutto '+
  'FROM KARTV WHERE kartv.doc_id = '+IntToStr(DM.Dokument.FieldByName('doc_id').AsInteger);
  DM.Query.Open;
  Netto := Round(Int(DM.Query.fieldbyName('netto').AsFloat));
  Sum_Cop := Round(Frac(DM.Query.fieldbyName('netto').AsFloat)*1000);
  Netto_str:=sumtostring(Netto);
  if Sum_Cop<>0 then Netto_str:=Netto_str+' целых '+IntTOStr(Sum_Cop);
  Brutto := Round(Int(DM.Query.fieldbyName('Brutto').AsFloat));
  Sum_Cop := Round(Frac(DM.Query.fieldbyName('Brutto').AsFloat)*1000);
  Brutto_str:=sumtostring(Brutto);
  if Sum_Cop<>0 then Brutto_str:=Brutto_str+' целых '+IntTOStr(Sum_Cop);
end;

procedure TFDokument.FormPasportDov;
begin
  DM.Query.Close;
  DM.Query.SQL.Text := 'select kadry.pasport, kadry.kemvydan, kadry.datavydach, sprof.sp_namk '+
   ' from kadry left join sprof on  kadry.k03prof=sprof.sp_id '+
   ' where kadry.nlk  = '+IntToStr(DM.Dokument.FieldByName('klient_id').AsInteger);
  DM.Query.Open;
  if DM.Doc_Param.Locate('RESULT_FIELD','SP_NAMK',[loPartialKey]) then
  begin
    DM.Doc_Param.Edit;
    DM.Doc_ParamPARAM_VALUE.AsString := DM.Query.FieldByName('SP_NAMK').AsString;
    DM.Doc_Param.Post;
  end;
  if DM.Doc_Param.Locate('RESULT_FIELD','PASPORT',[loPartialKey]) then
  begin
    DM.Doc_Param.Edit;
    DM.Doc_ParamPARAM_VALUE.AsString := DM.Query.FieldByName('pasport').AsString;
    DM.Doc_Param.Post;
  end;
  if DM.Doc_Param.Locate('RESULT_FIELD','KEMVYDAN',[loPartialKey]) then
  begin
    DM.Doc_Param.Edit;
    DM.Doc_ParamPARAM_VALUE.AsString := DM.Query.FieldByName('kemvydan').AsString;
    DM.Doc_Param.Post;
  end;
  if DM.Doc_Param.Locate('RESULT_FIELD','DATAVYDACH',[loPartialKey]) then
  begin
    DM.Doc_Param.Edit;
    DM.Doc_ParamPARAM_VALUE.AsString := DM.Query.FieldByName('datavydach').AsString;
    DM.Doc_Param.Post;
  end;
end;

procedure TFDokument.FormStrok;
begin
  if DM.QueryTipDokPRIZ_USLUGI.AsInteger = 1 then
  begin
    DM.Query1.Close;
    DM.Query1.SQL.Text := ' select  NAME_USLUGI, KOL_USLUGI, SUMMA_USLUGI, STAVKA_NDS, SUMMA_NDS, NEIS, '+
    ' USLUGI.STZAT_ID, AKCIZ,  USLUGI.account, '+
    ' uslugi.cena_uslugi, book5.namesub, uslugi.typesub_id, uslugi.sub_id '+
    ' from uslugi '+
    ' left join book5 on uslugi.typesub_id = book5.typesub_id and uslugi.sub_id=book5.sub_id '+
    ' where uslugi.doc_id = '+DM.Dokument.FieldByName('Dok_Osn_id').AsString;
    DM.Query1.Open;
    if DM.Query1.RecordCount <> 0 then
    begin
      if  MessageDlg('Переносить строки документа?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
      begin
        DM.Query1.First;
        while not DM.Query1.eof do
        begin
          FormView(DM.Query1,FieldsDoc);
          DM.Uslugi.Append;
          While not FieldsDoc.eof do
          begin
            DM.Uslugi.FieldByName(FieldsDoc.FieldByName('FieldName').AsString).AsString := FieldsDoc.FieldByName('FieldValue').AsString;
            FieldsDoc.Next;
          end;
          DM.Uslugi.Post;
          DM.Query1.Next;
        end;
      end;
    end;
    DM.Query1.Close;
  end;
end;

procedure TFDokument.WriteOldDog;
var
  SQL : string;
begin
   if (dm.Curr_role = 'KC_UD') then exit;
   CopyFile('F:\Doc\Old_Dog\Dog1.dbf','C:\Work\Dog_Ib.Dbf',nil);
   CopyFile('F:\Doc\Old_Dog\Chet.dbf','C:\Work\Chet_Ib.Dbf',nil);
   CopyFile('F:\Doc\Old_Dog\Produk.dbf','C:\Work\ProdukIb.Dbf',nil);
  //Загружаем текст запроса для договора
  DM.BdeDog.SQL.LoadFromFile('f:\doc\old_dog\dog.sql');
  if DM.QueryTipDokTIP_DOK_ID.AsInteger = 23 then      // Разовый договор
    DM.BdeDog.SQL.Text := DM.BdeDog.SQL.Text + DM.Dokument.FieldByName('doc_id').AsString
  else                                            //Спецификация
    DM.BdeDog.SQL.Text := DM.BdeDog.SQL.Text + DM.Dokument.FieldByName('dok_osn_id').AsString;
  //Формируем данные для договора
   Dog_Bde.TableName  := 'Dog_Ib.Dbf';
   Dog_Bde.Active := false;
   Dog_Bde.EmptyTable;
   Dog_Bde.Active := true;
   DM.BdeDog.Transaction := DM.Tran_Select;
   DM.BdeDog.Active := true;
    FormView(DM.BdeDog,FieldsDoc);
    Dog_Bde.Append;
    While not FieldsDoc.eof do
    begin
      Dog_Bde.FieldByName(FieldsDoc.FieldByName('FieldName').AsString).AsString := FieldsDoc.FieldByName('FieldValue').AsString;
      FieldsDoc.Next;
    end;
    Dog_Bde.Post;
    Dog_Bde.Active := false;
  //Загружаем текст запроса для спецификации
  DM.BdeDog.SQL.LoadFromFile('f:\doc\old_dog\chet.sql');
  DM.BdeDog.SQL.Text := DM.BdeDog.SQL.Text + DM.Dokument.FieldByName('doc_id').AsString;
  //Формируем данные для спецификации
   Dog_Bde.TableName  := 'Chet_Ib.Dbf';
   Dog_Bde.EmptyTable;
   Dog_Bde.Active := true;
   DM.BdeDog.Active := true;
    FormView(DM.BdeDog,FieldsDoc);
    Dog_Bde.Append;
    While not FieldsDoc.eof do
    begin
      Dog_Bde.FieldByName(FieldsDoc.FieldByName('FieldName').AsString).AsString := FieldsDoc.FieldByName('FieldValue').AsString;
      FieldsDoc.Next;
    end;
    Dog_Bde.Post;
    Dog_Bde.Active := false;
  //Загружаем текст запроса для продукции
  DM.BdeDog.SQL.LoadFromFile('f:\doc\old_dog\produk.sql');
  DM.BdeDog.SQL.Text := DM.BdeDog.SQL.Text + DM.Dokument.FieldByName('doc_id').AsString;
  //Формируем данные для продукции
   Dog_Bde.TableName  := 'ProdukIb.Dbf';
   Dog_Bde.EmptyTable;
   Dog_Bde.Active := true;
   DM.BdeDog.Active := true;
   while not DM.BdeDog.Eof do
   begin
     FormView(DM.BdeDog,FieldsDoc);
     Dog_Bde.Append;
     While not FieldsDoc.eof do
     begin
       Dog_Bde.FieldByName(FieldsDoc.FieldByName('FieldName').AsString).AsString := FieldsDoc.FieldByName('FieldValue').AsString;
       FieldsDoc.Next;
     end;
     Dog_Bde.Post;
     DM.BdeDog.Next;
   end;
   Dog_Bde.Active := false;
   //Перенос данных
   if DM_BUX.BELMED.DatabaseName <> '127.0.0.1:D:\IBDATA\BELMED.GDB' then
     FileExecuteWait('OldDog.exe.pif','','f:\doc\Old_Dog',esHidden);
end;

procedure TFDokument.ApplyUser(Form:TForm);
var
  vMenuItem:TMenuItem;
  propInfo: PPropInfo;
  Component:TComponent;
  FormName:String;
begin
  FormName:=Form.Name;
  DM.App_User.Active:=False;
  DM.App_User.ParamByName('FormName').AsString:=UpperCase(FormName);
  DM.App_User.Active:=True;
  DM.App_User.FetchAll;
  try
    while not DM.App_User.Eof do
    begin
      Component:=Form.FindComponent(DM.App_UserS_NAM.AsString);
      if Component<>nil then
      begin
        PropInfo := GetProperty(Component, DM.App_UserPROP.AsString);
        if PropInfo <> nil then
        begin
          if DM.App_UserPROP_TYPE.AsInteger=2 then
            SetStrProp(Component, PropInfo, DM.App_UserPROP_VAL.AsString)
          else if DM.App_UserPROP_TYPE.AsInteger=1 then
            SetInt64Prop(Component, PropInfo, DM.App_UserPROP_VAL.AsInteger)
          else if DM.App_UserPROP_TYPE.AsInteger=0 then
            SetEnumProp(Component, PropInfo, DM.App_UserPROP_VAL.AsString);
        end;
        //Включение меню верхнего уровня если включены нижние (если это пункт меню)
        if Component is TMenuItem then
        begin
          if TMenuItem(Component).Visible then
          begin
            vMenuItem:=TMenuItem(Component).Parent;
            while vMenuItem<>nil do
            begin
              vMenuItem.Visible:=True;
              vMenuItem:=vMenuItem.Parent;
            end;
          end;
        end;
      end;
      DM.App_User.Next;
    end;
  finally
    DM.App_User.Active:=False;
  end;
end;
procedure TFDokument.WriteParamRazr;
begin
  if DM.Doc_Param.Locate('RESULT_FIELD','NDOKRAZR',[loPartialKey]) then
  begin
    DM.Doc_Param.Edit;
    DM.Doc_ParamKOD.AsInteger := DM.Dok_OsnDOC_ID.AsInteger;
    DM.Doc_ParamPARAM_VALUE.AsString := Trim(DM.Dok_OsnNDOK.AsString)+' от '+DM.Dok_OsnDATE_DOK.AsString;
    DM.Doc_Param.Post;
  end;
end;

end.
