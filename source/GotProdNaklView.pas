unit GotProdNaklView;

interface

uses LookupUnderSign,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Mask, DBCtrlsEh, StdCtrls, DBGridEh, DBLookupEh, DBCtrls,
  DB, IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, IBQuery, RxIBQuery, RxMemDS,
  Grids, frxClass, frxDBSet, frxExportXLS, frxExportImage, frxExportPDF,
  Math, Menus, frxDCtrl, SplshWnd, RxStrUtils,  RxMenus;

type
  TFGotProdNaklView = class(TForm)
    ToolPanel: TPanel;
    DelRec: TSpeedButton;
    AddRec: TSpeedButton;
    SpeedButton3: TSpeedButton;
    PrintBtn: TSpeedButton;
    SaveBtn: TSpeedButton;
    SpeedButton6: TSpeedButton;
    CaptionPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    nDokEdit: TEdit;
    dokDateEdit: TDBDateTimeEditEh;
    SkladCombo: TDBLookupComboboxEh;
    Panel2: TPanel;
    Label9: TLabel;
    Label8: TLabel;
    NachOkkEdit: TEdit;
    SdalEdit: TEdit;
    GotNaklGrid: TDBGridEh;
    GotKartQuery: TRxIBQuery;
    GotKartQueryUpd: TIBUpdateSQLW;
    DSGotKartQuery: TDataSource;
    GotDocument: TRxIBQuery;
    GotDocumentUpd: TIBUpdateSQLW;
    DSGotDocument: TDataSource;
    TempQuery: TRxIBQuery;
    GotDocumentDOC_ID: TIntegerField;
    GotDocumentNDOK: TIBStringField;
    GotDocumentDATE_DOK: TDateField;
    GotDocumentSTRUK_ID: TSmallintField;
    GotDocumentKLIENT_ID: TIntegerField;
    GotKartQueryDOC_ID: TIntegerField;
    GotKartQueryKSM_ID: TIntegerField;
    GotKartQuerySTROKA_ID: TIntegerField;
    GotKartQueryKART_ID: TIntegerField;
    GotKartQueryKOD_PROD: TIBStringField;
    GotKartQueryNMAT: TIBStringField;
    GotKartQueryXARKT: TIBStringField;
    GotKartQueryGOST: TIBStringField;
    GotKartQuerySERIA_ID: TIntegerField;
    GotKartQueryVES_TRANS: TIBBCDField;
    GotKartQueryGOD: TSmallintField;
    GotKartQueryMES: TSmallintField;
    GotKartQueryNOMU_ID_TRANS: TSmallintField;
    GotKartQueryNOMU_ID_GRP: TSmallintField;
    GotKartQuerySERIA: TIBStringField;
    GotKartQueryNEIS: TIBStringField;
    GotKartQueryKEI_ID: TSmallintField;
    GotKartQuerySROK_GODN: TDateField;
    GotKartQueryDATE_OP: TDateField;
    GotKartQueryKLIENT_ID: TIntegerField;
    GotKartQueryNDOK: TIBStringField;
    GotKartQueryUPAK_TRANS: TIBStringField;
    GotKartQueryVES_UPAK: TIBBCDField;
    GotKartQueryUPAK_GRP: TIBStringField;
    GotKartQueryVES_GRP: TIBBCDField;
    GotKartQueryNAM: TIBStringField;
    GotKartQueryVES_TARA: TIBBCDField;
    frxDBDataset3: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    MD_Naklad: TRxMemoryData;
    MD_Nakladkol_rash: TFloatField;
    MD_Nakladseria: TStringField;
    MD_Nakladneis: TStringField;
    MD_Nakladvol_trans: TFloatField;
    MD_Nakladves_trans: TFloatField;
    MD_Nakladkod_prod: TStringField;
    MD_Nakladkol_upak: TIntegerField;
    MD_Nakladkol_upak_prop: TStringField;
    MD_Nakladsize_upak: TStringField;
    MD_Nakladupak_trans: TStringField;
    MD_Nakladves_upak: TFloatField;
    MD_Nakladnam: TStringField;
    MD_Nakladvol_up: TFloatField;
    MD_NakladKOL_GRP: TFloatField;
    MD_Nakladsum_prop: TStringField;
    MD_Nakladves_trans1: TFloatField;
    MD_Nakladves_tara: TFloatField;
    MD_Nakladnmat: TStringField;
    MD_Nakladkol_trans: TFloatField;
    DSnaklad: TDataSource;
    DSUpak: TDataSource;
    RMUpak: TRxMemoryData;
    RMUpakves_trans: TFloatField;
    RMUpakkol_upak: TIntegerField;
    RMUpakkol_upak_prop: TStringField;
    RMUpakves_upak: TFloatField;
    RMUpakves_trans1: TFloatField;
    RMUpakseria: TStringField;
    RMUpakkol_trans: TFloatField;
    frxDBDataset2: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxXLSExport1: TfrxXLSExport;
    MD_Nakl_s: TRxMemoryData;
    MD_Nakl_skol_rash: TFloatField;
    MD_Nakl_sseria: TStringField;
    MD_Nakl_snmat: TStringField;
    MD_Nakl_sneis: TStringField;
    MD_Nakl_svol_trans: TFloatField;
    MD_Nakl_sves_trans: TFloatField;
    MD_Nakl_skod_prod: TStringField;
    MD_Nakl_skol_upak: TIntegerField;
    MD_Nakl_skol_upak_prop: TStringField;
    MD_Nakl_ssize_upak: TStringField;
    MD_Nakl_supak_trans: TStringField;
    MD_Nakl_sves_upak: TFloatField;
    MD_Nakl_snam: TStringField;
    MD_Nakl_svol_up: TFloatField;
    MD_Nakl_skol_grp: TFloatField;
    MD_Nakl_ssum_prop: TStringField;
    MD_Nakl_sves_trans1: TFloatField;
    MD_Nakl_sves_tara: TFloatField;
    MD_Nakl_sves_grp: TFloatField;
    MD_Nakl_skol_trans: TFloatField;
    GetUpak: TIBQuery;
    IBTara: TIBQuery;
    PrintPopup: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    GotDocumentDATE_OP: TDateField;
    GotKartQueryDATE_VIPUSK: TDateField;
    GotKartQueryTIP_OP_ID: TSmallintField;
    GotKartQueryTIP_DOK_ID: TSmallintField;
    GotDocumentTIP_OP_ID: TSmallintField;
    GotDocumentTIP_DOK_ID: TSmallintField;
    GotKartQueryKOL_PRIH_EDIZ: TFloatField;
    GotKartQueryKOL_RASH_EDIZ: TFloatField;
    VipDocument: TRxIBQuery;
    VipDocumentDOC_ID: TIntegerField;
    VipDocumentNDOK: TIBStringField;
    VipDocumentDATE_DOK: TDateField;
    VipDocumentSTRUK_ID: TSmallintField;
    VipDocumentKLIENT_ID: TIntegerField;
    VipDocumentDATE_OP: TDateField;
    VipDocumentTIP_OP_ID: TSmallintField;
    VipDocumentTIP_DOK_ID: TSmallintField;
    VipDocumentUpd: TIBUpdateSQLW;
    VipKart: TRxIBQuery;
    VipKartDOC_ID: TIntegerField;
    VipKartKSM_ID: TIntegerField;
    VipKartSTROKA_ID: TIntegerField;
    VipKartKART_ID: TIntegerField;
    VipKartKOD_PROD: TIBStringField;
    VipKartNMAT: TIBStringField;
    VipKartXARKT: TIBStringField;
    VipKartGOST: TIBStringField;
    VipKartSERIA_ID: TIntegerField;
    VipKartKOL_TRANS: TFloatField;
    VipKartKOL_GRP: TFloatField;
    VipKartVES_TRANS: TIBBCDField;
    VipKartGOD: TSmallintField;
    VipKartMES: TSmallintField;
    VipKartNOMU_ID_TRANS: TSmallintField;
    VipKartNOMU_ID_GRP: TSmallintField;
    VipKartKOL_UPAK: TIntegerField;
    VipKartSERIA: TIBStringField;
    VipKartNEIS: TIBStringField;
    VipKartKEI_ID: TSmallintField;
    VipKartSROK_GODN: TDateField;
    VipKartDATE_OP: TDateField;
    VipKartKLIENT_ID: TIntegerField;
    VipKartNDOK: TIBStringField;
    VipKartUPAK_TRANS: TIBStringField;
    VipKartVES_UPAK: TIBBCDField;
    VipKartVOL_TRANS: TFMTBCDField;
    VipKartUPAK_GRP: TIBStringField;
    VipKartVES_GRP: TIBBCDField;
    VipKartKOL_SERIA: TFMTBCDField;
    VipKartNAM: TIBStringField;
    VipKartVES_TARA: TIBBCDField;
    VipKartDATE_VIPUSK: TDateField;
    VipKartTIP_OP_ID: TSmallintField;
    VipKartTIP_DOK_ID: TSmallintField;
    VipKartKOL_PRIH_EDIZ: TFloatField;
    VipKartKOL_RASH_EDIZ: TFloatField;
    VipKartUpd: TIBUpdateSQLW;
    GotKartQueryKOL_RASH: TFMTBCDField;
    frxDialogControls1: TfrxDialogControls;
    frxDialogControls2: TfrxDialogControls;
    frxDialogControls3: TfrxDialogControls;
    DellAllRecs: TSpeedButton;
    cbRF: TCheckBox;
    N21: TMenuItem;
    cbShowAdditionalCols: TCheckBox;
    GotKartQueryCOMMENT: TIBStringField;
    VipKartCOMMENT: TIBStringField;
    GotKartQueryKOL_UPAK: TFloatField;
    SkladDocument: TRxIBQuery;
    SkladDocumentUpd: TIBUpdateSQLW;
    Mem2Koda: TRxMemoryData;
    Mem2KodaDOC_ID: TIntegerField;
    Mem2KodaKSM_ID: TIntegerField;
    Mem2KodaSTROKA_ID: TIntegerField;
    Mem2KodaKART_ID: TIntegerField;
    Mem2KodaXARKT: TIBStringField;
    Mem2KodaGOST: TIBStringField;
    Mem2KodaSERIA_ID: TIntegerField;
    Mem2KodaKOL_TRANS: TFloatField;
    Mem2KodaKOL_GRP: TFloatField;
    Mem2KodaVES_TRANS: TIBBCDField;
    Mem2KodaGOD: TSmallintField;
    Mem2KodaMES: TSmallintField;
    Mem2KodaNOMU_ID_TRANS: TSmallintField;
    Mem2KodaNOMU_ID_GRP: TSmallintField;
    Mem2KodaSERIA: TIBStringField;
    Mem2KodaNEIS: TIBStringField;
    Mem2KodaKEI_ID: TSmallintField;
    Mem2KodaSROK_GODN: TDateField;
    Mem2KodaDATE_OP: TDateField;
    Mem2KodaKLIENT_ID: TIntegerField;
    Mem2KodaNDOK: TIBStringField;
    Mem2KodaUPAK_TRANS: TIBStringField;
    Mem2KodaVES_UPAK: TIBBCDField;
    Mem2KodaUPAK_GRP: TIBStringField;
    Mem2KodaVES_GRP: TIBBCDField;
    Mem2KodaNAM: TIBStringField;
    Mem2KodaVES_TARA: TIBBCDField;
    Mem2KodaDATE_VIPUSK: TDateField;
    Mem2KodaTIP_OP_ID: TSmallintField;
    Mem2KodaTIP_DOK_ID: TSmallintField;
    Mem2KodaKOL_PRIH_EDIZ: TFloatField;
    Mem2KodaKOL_RASH_EDIZ: TFloatField;
    Mem2KodaKOL_SERIA: TFloatField;
    Mem2KodaCOMMENT: TIBStringField;
    Mem2KodaKOL_UPAK: TFloatField;
    Mem2KodaVOL_TRANS: TFloatField;
    Mem2KodaKOL_RASH: TFloatField;
    Mem2KodaKOD_PROD: TStringField;
    Mem2KodaNMAT: TStringField;
    closeNaklBtn: TSpeedButton;
    MemKart: TRxMemoryData;
    MemKartKSM_ID: TIntegerField;
    MemKartSERIA_ID: TIntegerField;
    MemKartKOL_TRANS: TFloatField;
    MemKartKOL_GRP: TFloatField;
    MemKartVES_TRANS: TIBBCDField;
    MemKartNOMU_ID_TRANS: TSmallintField;
    MemKartNOMU_ID_GRP: TSmallintField;
    MemKartSERIA: TIBStringField;
    MemKartDATE_VIPUSK: TDateField;
    MemKartKOL_RASH_EDIZ: TFloatField;
    DBGridEh1: TDBGridEh;
    nMatLbl: TLabel;
    edizLblLbl: TLabel;
    edizLbl: TLabel;
    gostLblLbl: TLabel;
    gostLbl: TLabel;
    firmaLblLbl: TLabel;
    firmaLbl: TLabel;
    regionLblLbl: TLabel;
    regionLbl: TLabel;
    harkLblLbl: TLabel;
    harkLbl: TLabel;
    MemDocument: TRxMemoryData;
    MemDocumentDOC_ID: TIntegerField;
    MemDocumentNDOK: TIBStringField;
    MemDocumentDATE_DOK: TDateField;
    MemDocumentSTRUK_ID: TSmallintField;
    MemDocumentKLIENT_ID: TIntegerField;
    MemDocumentDATE_OP: TDateField;
    MemDocumentTIP_OP_ID: TSmallintField;
    MemDocumentTIP_DOK_ID: TSmallintField;
    SkladDocumentNDOK: TIBStringField;
    SkladDocumentDOC_ID: TIntegerField;
    SkladDocumentPRIZ_ID: TSmallintField;
    SkladDocumentTIP_OP_ID: TSmallintField;
    SkladDocumentTIP_DOK_ID: TSmallintField;
    SkladDocumentDATE_DOK: TDateField;
    SkladDocumentDOK_OSN_ID: TIntegerField;
    SkladDocumentSTRUK_ID: TSmallintField;
    SkladDocumentVP_ID: TSmallintField;
    SkladDocumentKPV: TFMTBCDField;
    SkladDocumentKLIENT_ID: TIntegerField;
    SkladDocumentSUM_BRB: TIBBCDField;
    SkladDocumentSUM_ISP1: TIBBCDField;
    SkladDocumentSUM_ISP2: TIBBCDField;
    SkladDocumentSUM_VP: TIBBCDField;
    SkladDocumentSUM_ISP1_VP: TIBBCDField;
    SkladDocumentSUM_ISP2_VP: TIBBCDField;
    SkladDocumentNDS: TIBBCDField;
    SkladDocumentSUM_NDS: TIBBCDField;
    SkladDocumentSUM_NDS_VP: TIBBCDField;
    SkladDocumentDATE_OP: TDateField;
    SkladDocumentDATE_VVOD: TDateTimeField;
    SkladDocumentZADACHA_ID: TIBStringField;
    SkladDocumentUSER_NAME: TIBStringField;
    SkladDocumentDOV: TSmallintField;
    SkladDocumentDATE_TIME_UPDATE: TDateTimeField;
    SkladDocumentJORN_ID: TSmallintField;
    SkladDocumentRCHET_ID: TIntegerField;
    SkladDocumentTAG: TIntegerField;
    SkladDocumentKPV_OLD: TFMTBCDField;
    N3: TMenuItem;
    seriaArr: TRxMemoryData;
    upakArr: TRxMemoryData;
    vidUpakArr: TRxMemoryData;
    seriaArrSERIA: TStringField;
    seriaArrNMAT: TStringField;
    seriaArrKOD_PROD: TStringField;
    seriaArrNEIS: TStringField;
    seriaArrKOL_RASH: TFloatField;
    seriaArrKOL_PROPIS: TStringField;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    frxDBDataset6: TfrxDBDataset;
    newPrintBtn: TSpeedButton;
    N4: TMenuItem;
    seriaArrNAM: TStringField;
    frxDBDataset7: TfrxDBDataset;
    frxDialogControls4: TfrxDialogControls;
    frxDialogControls5: TfrxDialogControls;
    frxDialogControls6: TfrxDialogControls;
    frxDialogControls7: TfrxDialogControls;
    seriaArrKOL_TRANS: TFloatField;
    seriaArrKOL_GRP: TFloatField;
    seriaArrVES_TRANS: TFloatField;
    upakArrves_trans: TFloatField;
    upakArrkol_upak: TIntegerField;
    upakArrkol_upak_prop: TStringField;
    upakArrves_upak: TFloatField;
    upakArrseria: TStringField;
    upakArrkol_trans: TFloatField;
    seriaArrVES_TARA: TFloatField;
    seriaArrVES_UPAK: TFloatField;
    seriaArrVES_GRP: TFloatField;
    N22: TMenuItem;
    upakArrSERIA_ID: TIntegerField;
    upakArrKOL_PROPIS: TStringField;
    upakArrKOL_RASH: TFloatField;
    upakArrKOD_PROD: TStringField;
    upakArrNAM: TStringField;
    upakArrNMAT: TStringField;
    upakArrNEIS: TStringField;
    GotKartQueryVOL_TRANS: TFloatField;
    GotKartQueryKOL_SERIA: TFloatField;
    GotKartQueryKOL_TRANS: TFloatField;
    N5: TMenuItem;
    seriaArrUPAK_TRANS: TStringField;
    GotKartQueryKOL_GRP: TFloatField;
    SkladKart: TRxIBQuery;
    SkladKartUpd: TIBUpdateSQLW;
    VipuskMem: TRxMemoryData;
    N6: TMenuItem;
    IbTaraMem: TRxMemoryData;
    IbTaraMemSIZE_UPAK: TStringField;
    IbTaraMemUPAK_TRANS: TStringField;
    IbTaraMemVOL_TRANS: TFloatField;
    IBTaraVOL_TRANS: TFMTBCDField;
    IBTaraUPAK_TRANS: TIBStringField;
    IBTaraSIZE_UPAK: TIBStringField;
    IBTaraVOL_TRANS2: TFMTBCDField;
    IBTaraUPAK_TRANS2: TIBStringField;
    IBTaraSIZE_UPAK2: TIBStringField;
    btn_underSign: TSpeedButton;

    procedure setDokDate(value : string);
    function isDateValid(value : string) : boolean;
    procedure loadGotDocument;
    procedure loadGotKart;
    procedure loadUndersigns;
    procedure saveUnderSigns;
    procedure deleteUnderSigns(docId : integer);
    procedure showSpprod;
    procedure setVesTara;
    procedure uniteSeriaArrRecs;

    procedure assignSpprodToGotKartQuery(ksmId : integer; kodProd : string;
                                                       nMat : string; keiId : integer;
                                                       xarkt : string; gost : string;
                                                       neis : string);
    procedure createFromVipusk;

    procedure loadAndInitMDNaklad;
    procedure openNaklS;
    procedure getKeiId;
    procedure printForUpak;
    procedure printForUpakSimple;
    procedure printForKg;
    procedure printForLitr;
    procedure prepareDataForPrint;
    procedure setReportVariables;
    procedure setGridCol3DisplayFormat;
    procedure createSeriaArr;
    procedure createSeriaArrFor2Koda;
    procedure createUpakArrFor2KodaMukosat;
    procedure createUpakArrFor2Koda;
    function is2Koda1Seria() : boolean;
    procedure printFor2Koda1SeriaTisUpak(Sender: TObject);
    function locateIbTaraMem(upakTrans, sizeUpak : string; volTrans : double) : boolean;

    procedure postVipusk;
    procedure postGotKartRec2Vipusk;
    procedure createVipDocument(klientId : integer; strukId : integer;
                                                                docDate : TDate);
    procedure createVipKart(docId : integer; kolRashEdiz : double; ksmId : integer;
                            keiId, kartId : integer);
    procedure deleteVipKart(ksmId, kartId, docId : integer);
    procedure deleteVipusk(ksmId, kartId : integer; docDate : TDate;
                           strukId : integer);
    procedure rollbackVipusk;

    procedure enableGrid;
    procedure cancelAllUpdates;
    procedure activateNDokDateDokSkladOnChange(activate : boolean);
    procedure delSkladDocument;
    procedure deleteSkladKart(docId : integer);
    procedure loadSkladDocument(docId, strukId, klientId : integer);
    procedure loadSkladKart(docId : integer);
    function skladDocumentIsProvided() : boolean;
    procedure multiplyGotKartBy1000;
    procedure devideGotKartBy1000;
    procedure appendGotKartCurRecToMem2Koda;
    // Saves first state of GotKart
    procedure addGotKartToMemKart;
    // Compares current GotKart to the saved first state of it
    function isGotKartEqualMemKart : boolean;
    procedure addGotDocumentToMemDocument;
    function isGotDocumentEqualMemDocument : boolean;
    function isStrokaEqual(curNum, curKsm, curSeriaId, curNomuId : integer;
                           curSeria, curUpakTrans : string) : boolean;

    procedure showPlanVipusk;
    procedure setFindPrepLblsVisible(visible : boolean);
    function isKolUpakNull() : boolean;



    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure printForTisUpak(Sender: TObject);
    procedure printForKgG(Sender: TObject);
    procedure newPrintBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure GotNaklGridColumns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure GotNaklGridColumns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure GotNaklGridColumns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure GotNaklGridColumns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure GotNaklGridColumns9EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure GotKartQueryKOL_GRPChange(Sender: TField);
    procedure GotKartQueryKOL_TRANSChange(Sender: TField);
    procedure GotKartQueryVES_UPAKChange(Sender: TField);
    procedure GotKartQueryUPAK_GRPChange(Sender: TField);
    procedure GotKartQueryVES_GRPChange(Sender: TField);
    procedure GotKartQueryBeforePost(DataSet: TDataSet);
    procedure GotKartQueryNewRecord(DataSet: TDataSet);
    procedure GotKartQueryBeforeInsert(DataSet: TDataSet);
    procedure AddRecClick(Sender: TObject);
    procedure GotNaklGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GotKartQueryAfterInsert(DataSet: TDataSet);
    procedure DelRecClick(Sender: TObject);
    procedure GotDocumentBeforeInsert(DataSet: TDataSet);
    procedure VipDocumentBeforeInsert(DataSet: TDataSet);
    procedure VipDocumentNewRecord(DataSet: TDataSet);
    procedure GotDocumentNewRecord(DataSet: TDataSet);
    procedure VipKartBeforePost(DataSet: TDataSet);
    procedure VipKartNewRecord(DataSet: TDataSet);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure DellAllRecsClick(Sender: TObject);
    procedure cbRFClick(Sender: TObject);
    procedure GotDocumentAfterInsert(DataSet: TDataSet);
    procedure printMukosat(Sender: TObject);
    procedure cbShowAdditionalColsClick(Sender: TObject);
    procedure nDokEditChange(Sender: TObject);
    procedure GotNaklGridEnter(Sender: TObject);
    procedure GotNaklGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GotKartQueryCalcFields(DataSet: TDataSet);
    procedure SkladComboChange(Sender: TObject);
    procedure closeNaklBtnClick(Sender: TObject);
    procedure GotNaklGridKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure printForMeds(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure printForLiters(Sender: TObject);
    procedure dokDateEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure printForMlnSht(Sender: TObject);
    procedure dokDateEditChange(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure IBTaraAfterOpen(DataSet: TDataSet);
    procedure btn_underSignClick(Sender: TObject);

  private
    lookUnderS : TFLookupUnderSign;

    function isNecessaryDocFieldsValid() : boolean;
    function isNecessaryKartFieldsValid() : boolean;

  public
    { Public declarations }
    curDocId : integer;
    fromVipusk : integer;
    curMonth, curYear, curStrukId : integer;
    curDate : TDate;

  end;

var
  FGotProdNaklView: TFGotProdNaklView;

  param1IsHere, param2IsHere : bool;
  keiId, printVibor : integer;
  vv: integer;
  vv1, vvv: double;
  upakInTara : string;

implementation

{$R *.dfm}

uses dm, CopyFiles, Num2Text, Ser, Find_Spprod, UPAK, GotProd, GotProdVipusk,
      GotProdNaklTbl, PlanVipusk;

procedure TFGotProdNaklView.setDokDate(value : string);
begin
  if (isDateValid(value)) then
  begin
    enableGrid;
    GotDocument.Edit;
    GotDocumentDATE_DOK.AsDateTime := StrToDate(value);
    GotDocumentDATE_OP.AsDateTime := StrToDate(value);
    GotDocument.Post;
  end;
end;

procedure TFGotProdNaklView.uniteSeriaArrRecs;
var
  nextKolRash : double;
begin
  if (seriaArr.RecordCount > 1) then
  begin
    seriaArr.First;
    while (seriaArr.RecordCount > 1) do
    begin
      seriaArr.Next;
      nextKolRash := seriaArrKOL_RASH.AsFloat;
      seriaArr.Delete;
      seriaArr.First;
      seriaArr.Edit;
      seriaArrKOL_RASH.AsFloat := seriaArrKOL_RASH.AsFloat + nextKolRash;
      seriaArrKOL_PROPIS.AsString := FloatToText(seriaArrKOL_RASH.AsFloat * 1000, 2);
      seriaArr.Post;
    end;
  end;
end;

function TFGotProdNaklView.isKolUpakNull() : boolean;
var
  isNul : boolean;
begin
  isNul := false;
  GotKartQuery.First;
  while (not GotKartQuery.Eof) do
  begin
    if (GotKartQueryKOL_TRANS.AsString = '0') then
    begin
      isNul := true;
      break;
    end;
    GotKartQuery.Next;
  end;
  result := isNul;
end;

function TFGotProdNaklView.isStrokaEqual(curNum, curKsm, curSeriaId, curNomuId : integer;
                                         curSeria, curUpakTrans : string) : boolean;
var
  equal : boolean;
begin
  equal := false;
  if (GotKartQuery.RecordCount > 1) then
  begin
    GotKartQuery.First;
    while (not GotKartQuery.Eof) do
    begin
      if (GotKartQueryKSM_ID.AsInteger = curKsm)
          and (GotKartQuerySERIA_ID.AsInteger = curSeriaId)
          and (GotKartQuerySERIA.AsString = curSeria)
          and (GotKartQuery.RecNo <> curNum)
          and (GotKartQueryNOMU_ID_TRANS.AsInteger = curNomuId)
          and (GotKartQueryUPAK_TRANS.AsString = curUpakTrans) then
      begin
        equal := true;
        break;
      end;
      GotKartQuery.Next;
    end;
    GotKartQuery.First;
    while (not GotKartQuery.Eof) do
    begin
      if (GotKartQuery.RecNo = curNum) then
        break;
      GotKartQuery.Next;
    end;
  end;
  result := equal;
end;

procedure TFGotProdNaklView.printFor2Koda1SeriaTisUpak(Sender: TObject);
begin
  if (GotKartQuery.RecordCount > 0) then
  begin
    printVibor := 1;
    createSeriaArrFor2Koda;
    createUpakArrFor2Koda;
    ibtara.Active := false;
    ibtara.paramByName('doc').AsInteger := GotDocumentDOC_ID.AsInteger;
    IbTara.Active := true;
    FrxReport1.LoadFromFile(reportsPath + 'Got_Prod_2ed_regions.fr3');
    FrxReport1.ShowReport(true);
  end;
end;

function TFGotProdNaklView.is2Koda1Seria() : boolean;
var
  curSeria, curKodProd : string;
  equalSeria, equalKodProd : boolean;
begin
  if (GotKartQuery.RecordCount > 1) then
  begin
    equalSeria := false;
    equalKodProd := false;
    GotKartQuery.First;
    curSeria := GotKartQuerySERIA.AsString;
    curKodProd := GotKartQueryKOD_PROD.AsString;
    while (not GotKartQuery.Eof) do
    begin
      if (curSeria <> GotKartQuerySERIA.AsString)  then
        equalSeria := false
      else
        equalSeria := true;
      if (curKodProd <> GotKartQueryKOD_PROD.AsString)  then
        equalKodProd := false
      else
        equalKodProd := true;
      GotKartQuery.Next;
    end;
    if (equalSeria) and (not equalKodProd) then
      result := equalSeria
    else
      result := false;
  end
  else
    result := false;
end;      

procedure TFGotProdNaklView.loadSkladDocument(docId, strukId, klientId : integer);
begin
  SkladDocument.Active := false;
  SkladDocument.ParamByName('dok_osn_id').AsInteger := docId;
  SkladDocument.ParamByName('struk_id').AsInteger := strukId;
//  SkladDocument.ParamByName('klient_id').AsInteger := klientId;
  SkladDocument.Active := true;

{  select *         так было в запросе SkladDocument
from document
where document.dok_osn_id = :dok_osn_id
and document.tip_op_id = 2
and document.tip_dok_id = 90
and document.struk_id = :klient_id
and document.klient_id = :struk_id}
end;

procedure TFGotProdNaklView.loadSkladKart(docId : integer);
begin
  SkladKart.Active := false;
  SkladKart.ParamByName('doc_id').AsInteger := docId;
  SkladKart.Active := true;
end;

function TFGotProdNaklView.skladDocumentIsProvided() : boolean;
begin
  if (SkladDocument.Active) and (SkladDocument.RecordCount > 0) then
  begin
    if (SkladDocumentPRIZ_ID.AsInteger = 2)
        or (SkladDocumentPRIZ_ID.AsInteger = 3)
        or (SkladDocumentPRIZ_ID.AsInteger = 4) then
      result := true
    else
      result := false
  end
  else
    result := false;
end;

procedure TFGotProdNaklView.createUpakArrFor2KodaMukosat;
var
  kolUpak, kolUpak1000 : double;
begin
  upakArr.EmptyTable;
  upakArr.Open;
  seriaArr.First;
  while (not seriaArr.Eof) do
  begin
    upakArr.Append;
    upakArr.Edit;
    kolUpak1000 := seriaArrKOL_RASH.AsFloat * 1000;
    kolUpak := kolUpak1000 / seriaArrKOL_TRANS.AsFloat;
    upakArrkol_trans.AsFloat := seriaArrKOL_TRANS.AsFloat;
    upakArrkol_upak.AsInteger := trunc(StrToFloat(FloatToStr(kolUpak)));
    upakArrkol_upak_prop.AsString := SumToString(upakArrkol_upak.AsInteger);
    upakArrves_trans.AsFloat := seriaArrVES_TRANS.AsFloat;
    upakArrves_upak.AsFloat := seriaArrVES_TARA.AsFloat;
    upakArr.Post;
    if (Frac(StrToFloat(FloatToStr(kolUpak))) <> 0) then
    begin
      upakArr.Append;
      upakArr.Edit;
      upakArrkol_trans.AsInteger := round(Frac(kolUpak) * seriaArrKOL_TRANS.AsFloat);
      upakArrkol_upak.AsInteger := 1;
      upakArrkol_upak_prop.AsString := SumToString(upakArrkol_upak.AsInteger);
      if (seriaArrKOL_GRP.AsInteger <> 0) then
        upakArrves_upak.AsFloat := seriaArrVES_UPAK.AsFloat + (upakArrkol_trans.AsFloat
                                                               / seriaArrKOL_GRP.AsInteger
                                                               * seriaArrVES_GRP.AsFloat)
      else
        upakArrves_upak.AsFloat := seriaArrVES_UPAK.AsFloat;
      if (seriaArrKOL_TRANS.AsInteger <> 0) then
        upakArrVES_TRANS.AsFloat := roundto(((round(kolUpak1000)
                                              - (seriaArrKOL_TRANS.AsInteger
                                                 * trunc(kolUpak)))
                                             * seriaArrVES_TRANS.AsFloat)
                                            / seriaArrKOL_TRANS.AsInteger,
                                            -2)
      else
        upakArrVES_TRANS.AsFloat := 0;
      upakArr.Post;
    end;
    seriaArr.Next;
  end;
end;

procedure TFGotProdNaklView.createUpakArrFor2Koda;
var
  kolUpak, kolUpak1000 : double;
begin
  upakArr.EmptyTable;
  upakArr.Open;
  GotKartQuery.First;
  while (not GotKartQuery.Eof) do
  begin
    upakArr.Append;
    upakArr.Edit;
    kolUpak1000 := GotKartQueryKOL_RASH.AsFloat * 1000;
    kolUpak := kolUpak1000 / GotKartQueryKOL_TRANS.AsFloat;
    upakArrkol_trans.AsFloat := GotKartQueryKOL_TRANS.AsFloat;
    upakArrkol_upak.AsInteger := trunc(StrToFloat(FloatToStr(kolUpak)));
    upakArrkol_upak_prop.AsString := SumToString(upakArrkol_upak.AsInteger);
    upakArrves_trans.AsFloat := GotKartQueryVES_TRANS.AsFloat;
    upakArrves_upak.AsFloat := GotKartQueryVES_TARA.AsFloat;
    upakArrSERIA_ID.AsInteger := GotKartQuerySERIA_ID.AsInteger;
    upakArrKOD_PROD.AsString := GotKartQueryKOD_PROD.AsString;
    upakArrKOL_RASH.AsFloat := GotKartQueryKOL_RASH.AsFloat;
    upakArrNAM.AsString := GotKartQueryNAM.AsString;
    upakArrNMAT.AsString := GotKartQueryNMAT.AsString;
    upakArrNEIS.AsString := GotKartQueryNEIS.AsString;
    upakArrKOL_PROPIS.AsString := SumToString(trunc(GotKartQueryKOL_RASH.AsFloat * 1000));
    upakArrSERIA.AsString := GotKartQuerySERIA.AsString;
    upakArr.Post;
    if (Frac(StrToFloat(FloatToStr(kolUpak))) <> 0) then
    begin
      upakArr.Append;
      upakArr.Edit;
      upakArrkol_trans.AsInteger := round(Frac(kolUpak) * GotKartQueryKOL_TRANS.AsFloat);
      upakArrkol_upak.AsInteger := 1;
      upakArrSERIA_ID.AsInteger := GotKartQuerySERIA_ID.AsInteger;
      upakArrKOD_PROD.AsString := GotKartQueryKOD_PROD.AsString;
      upakArrKOL_RASH.AsFloat := GotKartQueryKOL_RASH.AsFloat;
      upakArrNAM.AsString := GotKartQueryNAM.AsString;
      upakArrNMAT.AsString := GotKartQueryNMAT.AsString;
      upakArrNEIS.AsString := GotKartQueryNEIS.AsString;
      upakArrKOL_PROPIS.AsString := SumToString(trunc(GotKartQueryKOL_RASH.AsFloat * 1000));
      upakArrSERIA.AsString := GotKartQuerySERIA.AsString;
      upakArrkol_upak_prop.AsString := SumToString(upakArrkol_upak.AsInteger);
      if (GotKartQueryKOL_GRP.AsInteger <> 0) then
        upakArrves_upak.AsFloat := GotKartQueryVES_UPAK.AsFloat + (upakArrkol_trans.AsFloat
                                                               / GotKartQueryKOL_GRP.AsInteger
                                                               * GotKartQueryVES_GRP.AsFloat)
      else
        upakArrves_upak.AsFloat := GotKartQueryVES_UPAK.AsFloat;
      if (GotKartQueryKOL_TRANS.AsInteger <> 0) then
        upakArrVES_TRANS.AsFloat := roundto(((round(kolUpak1000)
                                              - (GotKartQueryKOL_TRANS.AsInteger
                                                 * trunc(kolUpak)))
                                             * GotKartQueryVES_TRANS.AsFloat)
                                            / GotKartQueryKOL_TRANS.AsInteger,
                                            -2)
      else
        upakArrVES_TRANS.AsFloat := 0;
      upakArr.Post;
    end;
    GotKartQuery.Next;
  end;
  GotKartQuery.First;
end;

procedure TFGotProdNaklView.createSeriaArr;
var
  sum : double;
begin
  sum := 0;
  seriaArr.EmptyTable;
  seriaArr.Open;
  GotKartQuery.First;
  while (not GotKartQuery.Eof) do
  begin
    seriaArr.Append;
    seriaArr.Edit;
    seriaArrSERIA.AsString := GotKartQuerySERIA.AsString;
    if (GotKartQuery.RecNo = 1) then
    begin
      seriaArrNMAT.AsString := GotKartQueryNMAT.AsString;
      seriaArrNEIS.AsString := GotKartQueryNEIS.AsString;
    end;
    seriaArrKOD_PROD.AsString := GotKartQueryKOD_PROD.AsString;
    seriaArrKOL_RASH.AsFloat := GotKartQueryKOL_RASH_EDIZ.AsFloat;
    if (GotKartQuery.RecordCount = 1) then
    begin
    	if ((keiId = 644) or (keiId = 646)) then
        seriaArrKOL_PROPIS.AsString := FloatToText(GotKartQueryKOL_RASH_EDIZ.AsFloat * 1000000, 2)
                                       + ' единиц'
      else
      	if ((keiId = 645) or (keiId = 650) or (keiId = 662)) then
        	seriaArrKOL_PROPIS.AsString := FloatToText(GotKartQueryKOL_RASH_EDIZ.AsFloat * 1000000000, 2)
                                       + ' единиц';
    end
    else
      seriaArrKOL_PROPIS.AsString := '';
    seriaArr.Post;
    sum := sum + GotKartQueryKOL_RASH_EDIZ.AsFloat;
    GotKartQuery.Next;
  end;
  frxReport1.Script.Variables['sum_prop'] := FloatToText(sum * 1000000, 2);
  frxReport1.Script.Variables['all_sum'] := FloatToStr(sum);
end;

procedure TFGotProdNaklView.createSeriaArrFor2Koda;
var
  sum : double;
  seria, upak : string;
begin
  sum := 0;
  seria := '';
  seriaArr.EmptyTable;
  seriaArr.Open;
  GotKartQuery.First;
  seriaArr.Append;
  while (not GotKartQuery.Eof) do
  begin
    if (GotKartQuerySERIA.AsString <> seria)
       or (GotKartQueryUPAK_TRANS.AsString <> upak) then
      seriaArr.Append;
    seria := GotKartQuerySERIA.AsString;
    sum := sum + GotKartQueryKOL_RASH_EDIZ.AsFloat;
    seriaArr.Edit;
    seriaArrSERIA.AsString := GotKartQuerySERIA.AsString;
    seriaArrNMAT.AsString := GotKartQueryNMAT.AsString;
    seriaArrNEIS.AsString := GotKartQueryNEIS.AsString;
    seriaArrKOD_PROD.AsString := GotKartQueryKOD_PROD.AsString;
    seriaArrKOL_RASH.AsFloat := seriaArrKOL_RASH.AsFloat + GotKartQueryKOL_RASH_EDIZ.AsFloat;
    seriaArrKOL_PROPIS.AsString := FloatToText(sum * 1000, 2);
    seriaArrNAM.AsString := GotKartQueryNAM.AsString;
    if (GotKartQuery.RecNo = 1) or (GotKartQueryUPAK_TRANS.AsString <> upak) then
    begin
      seriaArrKOL_TRANS.AsFloat := GotKartQueryKOL_TRANS.AsFloat;
      seriaArrKOL_GRP.AsFloat := GotKartQueryKOL_GRP.AsFloat;
      seriaArrVES_TRANS.AsFloat := GotKartQueryVES_TRANS.AsFloat;
      seriaArrVES_TARA.AsFloat := GotKartQueryVES_TARA.AsFloat;
      seriaArrVES_UPAK.AsFloat := GotKartQueryVES_UPAK.AsFloat;
      seriaArrVES_GRP.AsFloat := GotKartQueryVES_GRP.AsFloat;
      seriaArrUPAK_TRANS.AsString := GotKartQueryUPAK_TRANS.AsString;
    end;
    upak := GotKartQueryUPAK_TRANS.AsString;
    seriaArr.Post;
    GotKartQuery.Next;
  end; 
end;

procedure TFGotProdNaklView.setFindPrepLblsVisible(visible : boolean);
begin
  nMatLbl.Visible := visible;
  gostLblLbl.Visible := visible;
  gostLbl.Visible := visible;
  harkLblLbl.Visible := visible;
  harkLbl.Visible := visible;
  regionLblLbl.Visible := visible;
  regionLbl.Visible := visible;
  edizLblLbl.Visible := visible;
  edizLbl.Visible := visible;
  firmaLblLbl.Visible := visible;
  firmaLbl.Visible := visible;
end;

function TFGotProdNaklView.isGotKartEqualMemKart : boolean;
var
  equal : boolean;
begin
  equal := true;
  if (GotKartQuery.RecordCount <> MemKart.RecordCount) then
    equal := false
  else
  begin
    if (MemKart.Active) and (GotKartQuery.RecordCount > 0) then
    begin
      GotKartQuery.First;
      MemKart.First;
      while (not GotKartQuery.Eof) do
      begin
        if (MemKartKSM_ID.AsInteger <> GotKartQueryKSM_ID.AsInteger)
            or (MemKartSERIA_ID.AsInteger <> GotKartQuerySERIA_ID.AsInteger)
            or (MemKartKOL_TRANS.AsFloat <> GotKartQueryKOL_TRANS.AsFloat)
            or (MemKartKOL_GRP.AsFloat <> GotKartQueryKOL_GRP.AsFloat)
            or (MemKartVES_TRANS.AsFloat <> GotKartQueryVES_TRANS.AsFloat)
            or (MemKartNOMU_ID_TRANS.AsInteger <> GotKartQueryNOMU_ID_TRANS.AsInteger)
            or (MemKartNOMU_ID_GRP.AsInteger <> GotKartQueryNOMU_ID_GRP.AsInteger)
            or (MemKartSERIA.AsString <> GotKartQuerySERIA.AsString)
            or (MemKartDATE_VIPUSK.AsDateTime <> GotKartQueryDATE_VIPUSK.AsDateTime)
            or (MemKartKOL_RASH_EDIZ.AsFloat <> GotKartQueryKOL_RASH_EDIZ.AsFloat) then
        begin
          equal := false;
          break;
        end;
        GotKartQuery.Next;
        MemKart.Next;
      end;
    end
    else
      equal := true;
  end;
  result := equal;
end;

function TFGotProdNaklView.isGotDocumentEqualMemDocument : boolean;
var
  equal : boolean;
begin
  equal := true;
  if (GotDocument.RecordCount <> MemDocument.RecordCount) then
    equal := false
  else
  begin
    if (MemDocument.Active) and (GotDocument.RecordCount > 0) then
    begin
      GotDocument.First;
      MemDocument.First;
      while (not GotDocument.Eof) do
      begin
        if (MemDocumentDOC_ID.AsInteger <> GotDocumentDOC_ID.AsInteger)
           or (MemDocumentNDOK.AsString <> GotDocumentNDOK.AsString)
           or (MemDocumentDATE_DOK.AsDateTime <> GotDocumentDATE_DOK.AsDateTime)
           or (MemDocumentKLIENT_ID.AsInteger <> GotDocumentKLIENT_ID.AsInteger)
           or (MemDocumentDATE_OP.AsDateTime <> GotDocumentDATE_OP.AsDateTime) then
        begin
          equal := false;
          break;
        end;
        GotDocument.Next;
        MemDocument.Next;
      end;
    end
    else
      equal := true;
  end;
  result := equal;
end;

procedure TFGotProdNaklView.addGotKartToMemKart;
begin
  GotKartQueryKOL_TRANS.OnChange := nil;
  GotKartQueryKOL_GRP.OnChange := nil;
  GotKartQueryVES_UPAK.OnChange := nil;
  GotKartQueryUPAK_GRP.OnChange := nil;
  GotKartQueryVES_GRP.OnChange := nil;
  MemKart.Active := false;
  MemKart.EmptyTable;
  MemKart.Active := true;
  GotKartQuery.First;
  while (not GotKartQuery.Eof) do
  begin
    MemKart.Append;
    MemKart.Edit;
    MemKartKSM_ID.AsInteger := GotKartQueryKSM_ID.AsInteger;
    MemKartSERIA_ID.AsInteger := GotKartQuerySERIA_ID.AsInteger;
    MemKartKOL_TRANS.AsFloat := GotKartQueryKOL_TRANS.AsFloat;
    MemKartKOL_GRP.AsFloat := GotKartQueryKOL_GRP.AsFloat;
    MemKartVES_TRANS.AsFloat := GotKartQueryVES_TRANS.AsFloat;
    MemKartNOMU_ID_TRANS.AsInteger := GotKartQueryNOMU_ID_TRANS.AsInteger;
    MemKartNOMU_ID_GRP.AsInteger := GotKartQueryNOMU_ID_GRP.AsInteger;
    MemKartSERIA.AsString := GotKartQuerySERIA.AsString;
    MemKartDATE_VIPUSK.AsDateTime := GotKartQueryDATE_VIPUSK.AsDateTime;
    MemKartKOL_RASH_EDIZ.AsFloat := GotKartQueryKOL_RASH_EDIZ.AsFloat;
    MemKart.Post;
    GotKartQuery.Next;
  end;
    GotKartQueryKOL_TRANS.OnChange := GotKartQueryKOL_TRANSChange;
    GotKartQueryKOL_GRP.OnChange := GotKartQueryKOL_GRPChange;
    GotKartQueryVES_UPAK.OnChange := GotKartQueryVES_UPAKChange;
    GotKartQueryUPAK_GRP.OnChange := GotKartQueryUPAK_GRPChange;
    GotKartQueryVES_GRP.OnChange := GotKartQueryVES_GRPChange;
end;

procedure TFGotProdNaklView.addGotDocumentToMemDocument;
begin
  MemDocument.Active := false;
  MemDocument.EmptyTable;
  MemDocument.Active := true;
  GotDocument.First;
  while (not GotDocument.Eof) do
  begin
    MemDocument.Append;
    MemDocument.Edit;
    MemDocumentDOC_ID.AsInteger := GotDocumentDOC_ID.AsInteger;
    MemDocumentNDOK.AsString := GotDocumentNDOK.AsString;
    MemDocumentDATE_DOK.AsDateTime := GotDocumentDATE_DOK.AsDateTime;
    MemDocumentKLIENT_ID.AsInteger := GotDocumentKLIENT_ID.AsInteger;
    MemDocumentDATE_OP.AsDateTime := GotDocumentDATE_OP.AsDateTime;
    MemDocument.Post;
    GotDocument.Next;
  end;
end;

procedure TFGotProdNaklView.appendGotKartCurRecToMem2Koda;
begin
  Mem2Koda.Edit;
  Mem2KodaDOC_ID.AsInteger := GotKartQueryDOC_ID.AsInteger;
  Mem2KodaKSM_ID.AsInteger := GotKartQueryKSM_ID.AsInteger;
  Mem2KodaSTROKA_ID.AsInteger := GotKartQuerySTROKA_ID.AsInteger;
  Mem2KodaKART_ID.AsInteger := GotKartQueryKART_ID.AsInteger;
  Mem2KodaXARKT.AsString := GotKartQueryXARKT.AsString;
  Mem2KodaGOST.AsString := GotKartQueryGOST.AsString;
  Mem2KodaKOD_PROD.AsString := GotKartQueryKOD_PROD.AsString;
  Mem2KodaNMAT.AsString := GotKartQueryNMAT.AsString;
  Mem2KodaSERIA_ID.AsInteger := GotKartQuerySERIA_ID.AsInteger;
  Mem2KodaKOL_TRANS.AsFloat := GotKartQueryKOL_TRANS.AsFloat;
  Mem2KodaKOL_GRP.AsFloat := GotKartQueryKOL_GRP.AsFloat;
  Mem2KodaVES_TRANS.AsFloat := GotKartQueryVES_TRANS.AsFloat;
  Mem2KodaGOD.AsInteger := GotKartQueryGOD.AsInteger;
  Mem2KodaMES.AsInteger := GotKartQueryMES.AsInteger;
  Mem2KodaNOMU_ID_TRANS.AsInteger := GotKartQueryNOMU_ID_TRANS.AsInteger;
  Mem2KodaNOMU_ID_GRP.AsInteger := GotKartQueryNOMU_ID_GRP.AsInteger;
  Mem2KodaSERIA.AsString := GotKartQuerySERIA.AsString;
  Mem2KodaNEIS.AsString := GotKartQueryNEIS.AsString;
  Mem2KodaKEI_ID.AsInteger := GotKartQueryKEI_ID.AsInteger;
  Mem2KodaSROK_GODN.AsDateTime := GotKartQuerySROK_GODN.AsDateTime;
  Mem2KodaDATE_OP.AsDateTime := GotKartQueryDATE_OP.AsDateTime;
  Mem2KodaKLIENT_ID.AsInteger := GotKartQueryKLIENT_ID.AsInteger;
  Mem2KodaNDOK.AsString := GotKartQueryNDOK.AsString;
  Mem2KodaUPAK_TRANS.AsString := GotKartQueryUPAK_TRANS.AsString;
  Mem2KodaVES_UPAK.AsFloat := GotKartQueryVES_UPAK.AsFloat;
  Mem2KodaVOL_TRANS.AsFloat := GotKartQueryVOL_TRANS.AsFloat;
  Mem2KodaUPAK_GRP.AsString := GotKartQueryUPAK_GRP.AsString;
  Mem2KodaVES_GRP.AsFloat := GotKartQueryVES_GRP.AsFloat;
  Mem2KodaNAM.AsString := GotKartQueryNAM.AsString;
  Mem2KodaVES_TARA.AsFloat := GotKartQueryVES_TARA.AsFloat;
  Mem2KodaKOL_PRIH_EDIZ.AsFloat := GotKartQueryKOL_PRIH_EDIZ.AsFloat;
  Mem2KodaKOL_RASH_EDIZ.AsFloat := GotKartQueryKOL_RASH_EDIZ.AsFloat;
  Mem2KodaKOL_SERIA.AsFloat := GotKartQueryKOL_SERIA.AsFloat;
  Mem2KodaKOL_UPAK.AsFloat := GotKartQueryKOL_UPAK.AsFloat;
  Mem2KodaKOL_RASH.AsFloat := GotKartQueryKOL_RASH.AsFloat;
  Mem2Koda.Post;
end;

procedure TFGotProdNaklView.multiplyGotKartBy1000;
begin
  GotKartQuery.First;
  while (not GotKartQuery.Eof) do
  begin
    GotKartQuery.Edit;
    GotKartQueryKOL_TRANS.AsFloat := GotKartQueryKOL_TRANS.AsFloat * 1000;
    GotKartQueryKOL_GRP.AsFloat := GotKartQueryKOL_GRP.AsFloat * 1000;
    GotKartQuery.Post;
    GotKartQuery.Next;
  end;
end;

procedure TFGotProdNaklView.N6Click(Sender: TObject);
begin
  if (GotKartQuery.RecordCount > 0) then
  begin
    prepareDataForPrint;
    printForUpakSimple;
    FrxReport1.ShowReport(true);
  end;
end;

procedure TFGotProdNaklView.printForMlnSht(Sender: TObject);
begin
  if (GotKartQuery.RecordCount > 0) then
  begin
    prepareDataForPrint;
    printForUpak;
    FrxReport1.ShowReport(true);
  end;
end;

procedure TFGotProdNaklView.devideGotKartBy1000;
begin
  if (GotKartQueryKEI_ID.AsInteger <> 166) and (GotKartQueryKEI_ID.AsInteger <> 163)
        and (GotKartQueryKEI_ID.AsInteger <> 170) then
  begin
    GotKartQueryKOL_TRANS.OnChange := nil;
    GotKartQueryKOL_GRP.OnChange := nil;
    GotKartQuery.First;
    while (not GotKartQuery.Eof) do
    begin
      GotKartQuery.Edit;
      GotKartQueryKOL_TRANS.AsFloat := GotKartQueryKOL_TRANS.AsFloat / 1000;
      GotKartQueryKOL_GRP.AsFloat := GotKartQueryKOL_GRP.AsFloat / 1000;
      GotKartQuery.Post;
      GotKartQuery.Next;
    end;
    GotKartQueryKOL_TRANS.OnChange := GotKartQueryKOL_TRANSChange;
    GotKartQueryKOL_GRP.OnChange := GotKartQueryKOL_GRPChange;
  end;
end;

procedure TFGotProdNaklView.delSkladDocument;
begin
  if (GotDocument.RecordCount <> 0) and (GotDocument.Active) then
  begin
    loadSkladDocument(GotDocumentDOC_ID.AsInteger,
                      GotDocumentSTRUK_ID.AsInteger,
                      GotDocumentKLIENT_ID.AsInteger);
    if (SkladDocument.RecordCount > 0) then
    begin
      SkladDocument.First;
      while (not SkladDocument.Eof) do
      begin
        deleteUnderSigns(SkladDocumentDOC_ID.AsInteger);
        deleteSkladKart(SkladDocumentDOC_ID.AsInteger);
        dm1.commitReadTrans(true);
        SkladDocument.Delete;
      end;
    end;
    skladKart.Close;
    skladDocument.Close;
  end;
end;

procedure TFGotProdNaklView.activateNDokDateDokSkladOnChange(activate: Boolean);
begin
  if (activate) then
  begin
    nDokEdit.OnChange := nDokEditChange;
    SkladCombo.OnChange := SkladComboChange;
  end
  else
  begin
    nDokEdit.OnChange := nil;
    SkladCombo.OnChange := nil;
  end;
end;

procedure TFGotProdNaklView.cancelAllUpdates;
begin
  TempQuery.CancelUpdates;
  dm1.Seria.CancelUpdates;
  if not dm1.IBT_Read.Active then
    dm1.IBT_Read.Active := true;
  dm1.IBT_Read.RollbackRetaining;
  if not dm1.IBT_Write.Active then
    dm1.IBT_Write.Active := true;
  dm1.IBT_Write.RollbackRetaining;

  nDokEdit.OnChange := nil;
  dokDateEdit.OnChange := nil;
  SkladCombo.OnChange := nil;

  GotDocument.Active := false;
  TempQuery.Active := False;
  dm1.Seria.Active := false;
  dm1.Sklad.Active := false;
  if (GotNaklGrid.EditorMode) then
    GotNaklGrid.EditorMode := false;
  GotKartQuery.CancelUpdates;
  GotDocument.CancelUpdates;
  param1IsHere := false;
  param2IsHere := false;
  curDocId := 0;
  NachOkkEdit.Text := '';
  SdalEdit.Text := '';

  nDokEdit.OnChange := nDokEditChange;
  SkladCombo.OnChange := SkladComboChange;
  SkladDocument.Active := false;
end;

procedure TFGotProdNaklView.enableGrid;
begin
  if (nDokEdit.Text = '') and (dokDateEdit.Text = '  .  .    ') then
    GotNaklGrid.Enabled := false
  else
    GotNaklGrid.Enabled := true;  
end;

procedure TFGotProdNaklView.setGridCol3DisplayFormat;
begin
  if (keiId = 163) then
  begin
    GotNaklGrid.Columns[8].Title.Caption := 'Кол-во упаковок в 1 ед. тары, г';
    upakInTara := 'г';
  end;
  if (keiId = 166) or (keiId = 170) then
  begin
    GotNaklGrid.Columns[8].Title.Caption := 'Кол-во упаковок в 1 ед. тары, кг';
    upakInTara := 'кг';
  end;
  if (keiId = 123) or (keiId = 122) then
  begin
    GotNaklGrid.Columns[8].Title.Caption := 'Кол-во упаковок в 1 ед. тары, л';
    upakInTara := 'л';
  end;
  if (keiId = 800) then
  begin
    GotNaklGrid.Columns[8].Title.Caption := 'Кол-во упаковок в 1 ед. тары, т шт';
    upakInTara := 'т шт';
  end;
  if (keiId = 798) then
  begin
    GotNaklGrid.Columns[8].Title.Caption := 'Кол-во упаковок в 1 ед. тары, шт';
    upakInTara := 'шт';
  end;
  if (keiId = 785) then
  begin
    GotNaklGrid.Columns[8].Title.Caption := 'Кол-во упаковок в 1 ед. тары, фл';
    upakInTara := 'фл';
  end;
  if (keiId = 779) then
  begin
    GotNaklGrid.Columns[8].Title.Caption := 'Кол-во упаковок в 1 ед. тары, уп';
    upakInTara := 'уп';
  end;
  if (keiId = 777) then
  begin
    GotNaklGrid.Columns[8].Title.Caption := 'Кол-во упаковок в 1 ед. тары, бут';
    upakInTara := 'бут';
  end;
  if (keiId = 164) then
  begin
    GotNaklGrid.Columns[8].Title.Caption := 'Кол-во упаковок в 1 ед. тары, г';
    upakInTara := 'г';
  end;
  if (keiId = 170) then
  begin
    GotNaklGrid.Columns[8].Title.Caption := 'Кол-во упаковок в 1 ед. тары, кг';
    upakInTara := 'кг';
  end;
end;

procedure TFGotProdNaklView.cbRFClick(Sender: TObject);
begin
//  GotKartQueryKOL_TRANSChange(GotNaklGrid.Fields[13]);
end;

procedure TFGotProdNaklView.cbShowAdditionalColsClick(Sender: TObject);
begin
  if (cbShowAdditionalCols.Checked) then
  begin
    GotNaklGrid.Columns[12].Visible := true;
    GotNaklGrid.Columns[13].Visible := true;
    GotNaklGrid.Columns[14].Visible := true;
    GotNaklGrid.Columns[15].Visible := true;
    GotNaklGrid.Columns[16].Visible := true;
  end
  else
  begin
    GotNaklGrid.Columns[12].Visible := false;
    GotNaklGrid.Columns[13].Visible := false;
    GotNaklGrid.Columns[14].Visible := false;
    GotNaklGrid.Columns[15].Visible := false;
    GotNaklGrid.Columns[16].Visible := false;
  end;
end;

procedure TFGotProdNaklView.closeNaklBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFGotProdNaklView.createFromVipusk;
begin
  FGotProd.GotPrVipusk.VipSeria.First;
  while not FGotProd.GotPrVipusk.VipSeria.Eof do
  begin
    if FGotProd.GotPrVipusk.VipSeriaVib.AsInteger = 1 then
    begin
//      FGotProd.GotPrVipusk.VipSeria.First;
      if not (GotKartQuery.Locate('kart_id', FGotProd.GotPrVipusk.VipSeriaKart_id.AsInteger, []))then
      begin
        GotKartQuery.Insert;
        FGotProd.GotPrVipusk.assignVipSeria2GotProdNaklView(FGotProd.GotPrVipusk.VipSeriaksm_id.AsInteger,
                                                            FGotProd.GotPrVipusk.VipSeriaSeria_id.AsInteger,
                                                            FGotProd.GotPrVipusk.VipSeriakart_id.AsInteger,
                                                            struk_id,
                                                            FGotProd.GotPrVipusk.VipSeriaNomu_id_trans.AsInteger,
                                                            vdocument_id,
                                                            FGotProd.GotPrVipusk.VipSeriaSeria.AsString,
                                                            FGotProd.GotPrVipusk.VipSeriaUPAK_Trans.AsString,
                                                            FGotProd.GotPrVipusk.VipSeriaVOL_TRANS.AsString,
                                                            FGotProd.GotPrVipusk.VipSeriaVes_upak.AsFloat,
                                                            FGotProd.GotPrVipusk.VipSeriaVes_upak.AsFloat,
                                                            FGotProd.GotPrVipusk.VipSeriakol_prih_EDIZ.AsFloat,
                                                            FGotProd.GotPrVipusk.VipPrepsNMAT.AsString,
                                                            FGotProd.GotPrVipusk.VipPrepsKOD_PROD.AsString,
                                                            FGotProd.GotPrVipusk.VipSeriaDATE_VIPUSK.AsDateTime,
                                                            FGotProd.GotPrVipusk.VipPrepsKEI_ID.AsInteger,
                                                            FGotProd.GotPrVipusk.VipPrepsNEIS.AsString,
                                                            FGotProd.GotPrVipusk.VipSeriaCOMMENT.AsString);
      end;
    end;
    FGotProd.GotPrVipusk.VipSeria.Next;
  end;
end;

procedure TFGotProdNaklView.setReportVariables;
//var
//  year, month, day : word;
//  kod, kodTemp : string;
//  kolRashEdiz : double;
begin
//  frxReport1.FindObject('Memo82').
//  frxReport1.FindObject('Memo87').

//  kolRashEdiz := 0.0;
//  kodTemp := '';
//  kod := '';
//  frxReport1.Script.Variables['fio_nach_okk'] := NachOkkEdit.Text;
//  frxReport1.Script.Variables['fio_sdal'] := SdalEdit.Text;
//  frxReport1.Script.Variables['nakl_nom'] := nDokEdit.Text;
//  DecodeDate(StrToDate(dokDateEdit.Text), Year, Month, Day);
//  frxReport1.Script.Variables['data'] := '"  ' + IntToStr(Day) + '  "   '
//                                         + MesName(Month) + '   '
//                                         + IntToStr(Year) + '  г.';
//  frxReport1.Script.Variables['nom_ceh'] := S_namcex;
//  GotKartQuery.First;
//  while not GotKartQuery.Eof do
//  begin
//    kolRashEdiz := kolRashEdiz + GotKartQueryKOL_RASH_EDIZ.AsFloat;
//    kodTemp := GotKartQueryKOD_PROD.AsString;
//    GotKartQuery.Prior;
//    if (GotKartQueryKOD_PROD.AsString <> kodTemp) or (GotKartQuery.RecNo = 1) then
//      if kod <> '' then
//        kod := kod + '#13#10' + kodTemp
//      else
//        kod := kod + kodTemp;
//    GotKartQuery.Next;
//    GotKartQuery.Next;
//  end;
//  frxReport1.Script.Variables['all_summa'] := kolRashEdiz;
//  frxReport1.Script.Variables['all_summa_propis'] := SumToString(Round(kolRashEdiz * 1000));
//  frxReport1.Script.Variables['kod_prod'] := kod;
end;

procedure TFGotProdNaklView.deleteVipusk(ksmId: Integer; kartId: Integer;
                                         docDate : TDate; strukId : integer);
var
  curYear, curMonth, curDay : word;
begin
  DecodeDate(docDate, curYear, curMonth, curDay);
  docDate := StrToDate('01.' + IntToStr(curMonth) + '.' + IntToStr(curYear));
  VipDocument.Active := false;
  VipDocument.ParamByName('klient_id').AsInteger := ksmId;
  VipDocument.ParamByName('struk_id').AsInteger := strukId;
  VipDocument.ParamByName('date_dok').AsDate := docDate;
  VipDocument.Active := true;
  if (not VipDocument.Eof) then
    deleteVipKart(ksmId, kartId, VipDocumentDOC_ID.AsInteger);
end;

procedure TFGotProdNaklView.deleteVipKart(ksmId: Integer; kartId: Integer;
                                          docId: Integer);
begin
  VipKart.Active := false;
  VipKart.ParamByName('doc_id').AsInteger := docId;
  VipKart.ParamByName('kart_id').AsInteger := kartId;
  VipKart.ParamByName('ksm_id').AsInteger := ksmId;
  VipKart.Active := true;
  if (not VipKart.Eof) then
  begin
    VipKart.Delete;
    VipKart.ApplyUpdates;
    dm1.commitWriteTrans(true);
  end;                   
end;

procedure TFGotProdNaklView.createVipKart(docId: Integer; kolRashEdiz: Double;
                                          ksmId, keiId, kartId: Integer);
begin
  VipKart.Close;
  VipKart.ParamByName('doc_id').AsInteger := docId;
  VipKart.ParamByName('kart_id').AsInteger := kartId;
  VipKart.ParamByName('ksm_id').AsInteger := ksmId;
  dm1.startReadTrans;
  VipKart.Open;
  VipKart.FetchAll;

  if (not VipKart.Locate('kol_prih_ediz;kei_id', VarArrayOf([kolRashEdiz, keiId]), [])) then
  begin
    if (VipKartSERIA.AsString = '0') or (VipKart.RecordCount = 0) then
      VipKart.Insert;
    VipKart.Edit;
    VipKartDOC_ID.AsInteger := docId;
    VipKartKSM_ID.AsInteger := ksmId;
    VipKartKOL_PRIH_EDIZ.AsFloat := kolRashEdiz;
    VipKartKART_ID.AsInteger := kartId;
    VipKartKEI_ID.AsInteger := keiId;
    VipKart.Post;
    VipKart.ApplyUpdates;
    dm1.commitWriteTrans(true);
  end;
end;

procedure TFGotProdNaklView.createVipDocument(klientId: Integer; strukId: Integer;
                                              docDate: TDate);
var
  curYear, curMonth, curDay : word;
begin
  DecodeDate(docDate, curYear, curMonth, curDay);
  docDate := StrToDate('01.' + IntToStr(curMonth) + '.' + IntToStr(curYear));
  VipDocument.Active := false;
  VipDocument.ParamByName('klient_id').AsInteger := klientId;
  VipDocument.ParamByName('struk_id').AsInteger := strukId;
  VipDocument.ParamByName('date_dok').AsDate := docDate;
  VipDocument.Active := true;
  if VipDocument.Eof then
  begin
    VipDocument.Insert;
    VipDocument.Edit;
    VipDocumentKLIENT_ID.AsInteger := klientId;
    VipDocumentSTRUK_ID.AsInteger := strukId;
    VipDocumentDATE_DOK.AsDateTime := docDate;
    VipDocumentDATE_OP.AsDateTime := docDate;
    VipDocumentTIP_OP_ID.AsInteger := 36;
    VipDocumentTIP_DOK_ID.AsInteger := 90;
    VipDocumentNDOK.AsString := 'Вып_' + inttostr(curMonth) + '_' + inttostr(curYear);
    VipDocument.Post;
    VipDocument.ApplyUpdates;
    dm1.commitWriteTrans(true);
    VipDocument.Refresh;
  end;
end;

procedure TFGotProdNaklView.postVipusk;
begin
  GotKartQuery.First;
  while (not GotKartQuery.Eof) do
  begin
    postGotKartRec2Vipusk;
    GotKartQuery.Next;
  end;
end;

procedure TFGotProdNaklView.postGotKartRec2Vipusk;
begin
  createVipDocument(GotKartQueryKSM_ID.AsInteger, GotDocumentSTRUK_ID.AsInteger,
                    GotDocumentDATE_DOK.AsDateTime);
  createVipKart(VipDocumentDOC_ID.AsInteger, GotKartQueryKOL_RASH_EDIZ.AsFloat,
                GotKartQueryKSM_ID.AsInteger, GotKartQueryKEI_ID.AsInteger,
                GotKartQueryKART_ID.AsInteger);
end;

procedure TFGotProdNaklView.rollbackVipusk;
begin
  //
end;

procedure TFGotProdNaklView.assignSpprodToGotKartQuery(ksmId : integer; kodProd : string;
                                                       nMat : string; keiId : integer;
                                                       xarkt : string; gost : string;
                                                       neis : string);
begin
  if (GotKartQuery.RecordCount = 0) then
    GotKartQuery.Insert
  else
    if (GotKartQueryKSM_ID.AsInteger <> ksmId) then
    begin
//      deleteVipusk(GotKartQueryKSM_ID.AsInteger, GotKartQueryKART_ID.AsInteger,
//                   GotDocumentDATE_DOK.AsDateTime, GotDocumentSTRUK_ID.AsInteger);
//      postGotKartRec2Vipusk;
//      dm1.commitWriteTrans(true);
    end;
  GotKartQuery.Edit;
  GotKartQueryKSM_ID.AsInteger := ksmId;
  GotKartQueryKOD_PROD.AsString := kodProd;
  GotKartQueryNMAT.AsString := nMat;
  GotKartQueryKEI_ID.AsInteger := keiId;
  GotKartQueryXARKT.AsString := xarkt;
  GotKartQueryGOST.AsString := gost;
  GotKartQueryNEIS.AsString := neis;
  GotKartQuery.Post;
end;

procedure TFGotProdNaklView.btn_underSignClick(Sender: TObject);
begin
  if (lookUnderS = nil) then
    lookUnderS := TFLookupUnderSign.Create(Application);
  lookUnderS.Top := panel2.Top + btn_underSign.Top - lookUnderS.Height + 2 * btn_underSign.Height;
  lookUnderS.Left := panel2.Left + btn_underSign.Left + 5 * btn_underSign.Width - lookUnderS.Width;
  lookUnderS.ShowModal;
  if (lookUnderS.underSign <> '') then
  begin
    NachOkkEdit.Text := lookUnderS.underSign;
  end;
end;

procedure TFGotProdNaklView.setVesTara;
begin
  if GotKartQueryKOL_GRP.AsFloat <> 0 then
    GotKartQueryVES_TARA.AsFloat := GotKartQueryVES_UPAK.AsFloat
                                   + (GotKartQueryKOL_TRANS.AsFloat
                                      / GotKartQueryKOL_GRP.AsFloat
                                      * GotKartQueryVES_GRP.AsFloat)
  else
    GotKartQueryVES_TARA.AsFloat := GotKartQueryVES_UPAK.AsFloat;
end;

procedure TFGotProdNaklView.showPlanVipusk;
begin
  if (FPlanVipusk = nil) then
    FPlanVipusk := TFPlanVipusk.Create(Application);
  FPlanVipusk.curMonth := self.curMonth;
  FPlanVipusk.curYear := self.curYear;
  FPlanVipusk.strukId := self.curStrukId;
  FPlanVipusk.ShowModal;
  if (FPlanVipusk.ModalResult > 50) then
  begin
    s_kodp := FPlanVipusk.ModalResult - 50;
    s_gost := PlanVipusk.s_gost;
    s_xarkt := PlanVipusk.s_xarkt;
    s_nmat := PlanVipusk.s_nmat;
    s_kei := PlanVipusk.s_kei;
    s_korg := PlanVipusk.s_korg;
    s_kodProd := PlanVipusk.s_kodProd;
    s_namorg := PlanVipusk.s_namorg;
    s_neiz := PlanVipusk.s_neiz;
    s_Sprod_id := PlanVipusk.s_Sprod_id;

    assignSpprodToGotKartQuery(s_kodp, s_kodProd, s_nmat, s_kei, s_xarkt, s_gost, s_neiz);
  end;
  getKeiId;
  setGridCol3DisplayFormat;
end;

procedure TFGotProdNaklView.showSpprod;
begin
  if FindSpprod = nil then
    FindSpprod := TfindSpprod.Create(Application);
  FindSpprod.DataBaseName := dm1.BELMED;
  FindSpprod.ReadOnly := true;
  FindSpprod.Usl_Struk := 'spprod.struk_id = ' + inttostr(vStruk_id);
  FindSpprod.ShowModal;
  if FindSpprod.ModalResult > 50 then
  begin
    s_kodp := FindSpprod.ModalResult - 50;
    s_gost := FindSpprod.IBSpprodGOST.AsString;
    s_xarkt := FindSpprod.IBSpprodXARKT.AsString;
    s_nmat := FindSpprod.IBSpprodNMAT.AsString;
    s_kei := FindSpprod.IBSpprodKEI_ID.VALUE;
    s_korg := FindSpprod.IBSpprodKORG.VALUE;
    s_kodProd := FindSpprod.IBSpprodKOD_PROD.AsString;
    s_namorg := FindSpprod.IBSpprodNAME_ORG.AsString;
    s_neiz := FindSpprod.IBSpprodNEIS.AsString;
    s_Sprod_id := FindSpprod.IBSpprodSprod_Id.AsInteger;
    assignSpprodToGotKartQuery(s_kodp, s_kodProd, s_nmat, s_kei, s_xarkt, s_gost, s_neiz);
  end;
  getKeiId;
  setGridCol3DisplayFormat;
end;

procedure TFGotProdNaklView.SkladComboChange(Sender: TObject);
begin
  if (GotDocumentKLIENT_ID.AsInteger <> dm1.sklad.FieldByName('struk_id').AsInteger) then
  begin
    loadSkladDocument(GotDocumentDOC_ID.AsInteger,
                      FGotProd.StrukQuerySTRUK_ID.AsInteger,
                      GotDocumentSTRUK_ID.AsInteger);
    if (not skladDocumentIsProvided) then
    begin
      delSkladDocument;
    end;
  end;

  GotDocument.Edit;
  GotDocumentKLIENT_ID.AsInteger := dm1.sklad.FieldByName('struk_id').AsInteger;
  GotDocument.Post;
end;

procedure TFGotProdNaklView.prepareDataForPrint;
begin
    MD_Nakl_s.EmptyTable;
    RMUpak.EmptyTable;
    MD_Naklad.EmptyTable;

    TempQuery.Active := False;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add(' SELECT sum(KART.KOL_Rash) kol_rash, SPPROD.NMAT, KART.DOC_ID, KART.KSM_ID,');
    TempQuery.SQL.Add(' OSTATKI.SERIA_ID, SERIA.SERIA, EDIZ.NEIS, region.nam ');
    TempQuery.SQL.Add(' FROM KART ');
    TempQuery.SQL.Add(' inner JOIN OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)');
    TempQuery.SQL.Add(' inner JOIN SPPROD ON (OSTATKI.KSM_ID = SPPROD.KSM_ID)');
    TempQuery.SQL.Add(' LEFT JOIN region ON (SPPROD.ReG = region.reg)');
    TempQuery.SQL.Add(' LEFT JOIN SERIA ON (OSTATKI.SERIA_ID = SERIA.SERIA_ID)');
    TempQuery.SQL.Add(' inner JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
    TempQuery.SQL.Add(' where kart.doc_id = ' + GotDocumentDOC_ID.AsString);
    TempQuery.SQL.Add(' group by SPPROD.NMAT, KART.DOC_ID, KART.KSM_ID, '
                     + 'OSTATKI.SERIA_ID, SERIA.SERIA, EDIZ.NEIS, region.nam ');
    TempQuery.Active := True;

    loadAndInitMDNaklad;

    ibtara.Active := false;
    ibtara.paramByName('doc').AsInteger := GotDocumentDOC_ID.AsInteger;
    IbTara.Active := true;
    openNaklS;
    RMUpak.Active := false;
    RMUpak.Active := true;
end;

procedure TFGotProdNaklView.PrintBtnClick(Sender: TObject);
begin
  SaveBtnClick(sender);
  if (isKolUpakNull()) then
  begin
    MessageDlg('Введите кол-во упаковок в 1 единице тары!', mtWarning, [mbOK], 0);
    abort;
  end;
  PrintPopup.Popup(newPrintBtn.Left + newPrintBtn.Width {+ 40}, newPrintBtn.Top + newPrintBtn.Height + 15);
end;

procedure TFGotProdNaklView.printForKg;
var
  st : String;
  v_kol_upak : integer;
  v_kol_upak1 : integer;
  v_seria1 : string;
begin
  while (not MD_Nakl_s.Eof) do
  begin
    v_kol_upak1 := 0;
    MD_Nakl_s.Edit;
    MD_Nakl_s.FieldByName('kol_upak').AsInteger := MD_Nakl_s.FieldByName('kol_grp').AsInteger;
    st := SumToString(Round(MD_Nakl_s.FieldByName('kol_grp').AsInteger));
    MD_Nakl_s.FieldByName('kol_upak_prop').AsString := st;
    v_kol_upak := Trunc(StrToFloat(MD_Nakl_s.FieldByName('KOL_RASH').AsString)
                        / StrToFloat(MD_Nakl_s.FieldByName('kol_trans').AsString));
    if (v_kol_upak < MD_Nakl_s.FieldByName('KOL_RASH').AsFloat
                    / MD_Nakl_s.FieldByName('kol_trans').AsFloat) then
      v_kol_upak1 := 1;
    GetUpak.Close;
    GetUpak.ParamByName('name_upak').AsString := MD_Nakl_s.FieldByName('upak_trans').AsString;
    GetUpak.Open;
    if (not GetUpak.Eof) then
    begin
      MD_Nakl_s.FieldByName('size_upak').AsString := GetUpak.FieldByName('len_up').AsString
                                                     + 'x'
                                                     + GetUpak.FieldByName('width_up').AsString
                                                     + 'x'
                                                     + GetUpak.FieldByName('height_up').AsString;
      MD_Nakl_s.FieldByName('vol_trans').AsFloat := GetUpak.FieldByName('vol_up').AsFloat
    end;
    if (v_kol_upak <> 0) then
    begin
      RMUpak.Append;
      RMUpak.FieldByName('kol_upak').AsInteger := v_kol_upak;
      RMUpak.FieldByName('kol_trans').AsFloat := MD_Nakl_s.FieldByName('KOL_trans').AsFloat;
      RMUpak.FieldByName('seria').AsString := MD_Nakl_s.FieldByName('seria').AsString;
      st := SumToString(v_kol_upak);
      RMUpak.FieldByName('kol_upak_prop').AsString := st;
      RMUpak.FieldByName('ves_trans').AsFloat := MD_Nakl_s.FieldByName('Ves_trans').AsFloat;
      RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_tara').AsFloat;
      RMUpak.Post;
    end;
//      s_vesup:=RMUpak.FieldByName('ves_upak').AsFloat;
    if (v_kol_upak1 = 1) then
    begin
      RMUpak.Append;
      RMUpak.FieldByName('seria').asstring := v_seria1;
      RMUpak.FieldByName('kol_upak').AsInteger := v_kol_upak1;
      vvv := MD_Nakl_s.FieldByName('KOL_RASH').AsFloat;
      RMUpak.FieldByName('kol_trans').AsFloat := vvv - (MD_Nakl_s.FieldByName('KOL_trans').AsFloat * v_kol_upak);
      if (MD_Nakl_s.FieldByName('KOL_grp').AsInteger <> 0) then
        RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_upak').AsFloat
                                                  + (RMUpak.FieldByName('kol_trans').AsInteger
                                                  / MD_Nakl_s.FieldByName('KOL_grp').AsInteger
                                                  * MD_Nakl_s.FieldByName('ves_grp').AsFloat)
      else
        RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_upak').AsFloat;
      if (MD_Nakl_s.FieldByName('KOL_trans').AsInteger <> 0) then
      begin
        if (keiId = 163) then        
          RMUpak.FieldByName('ves_trans').AsFloat := RMUpak.FieldByName('KOL_trans').AsFloat / 1000
                                                     + MD_Nakl_s.FieldByName('Ves_upak').AsFloat
                                                     * v_kol_upak1
        else
          RMUpak.FieldByName('ves_trans').AsFloat := RMUpak.FieldByName('KOL_trans').AsFloat
                                                     + MD_Nakl_s.FieldByName('Ves_upak').AsFloat
                                                     * v_kol_upak1
      end
      else
        RMUpak.FieldByName('ves_trans').AsFloat := 0;
      RMUpak.FieldByName('seria').AsString := MD_Nakl_s.FieldByName('seria').AsString;
      st := SumToString(v_kol_upak1);
      RMUpak.FieldByName('kol_upak_prop').AsString := st;
      RMUpak.Post;
    end;
    MD_Nakl_s.Next;
  end;
  if (keiId = 163) then
    FrxReport1.LoadFromFile(reportsPath + 'Got_Prod_n_kod163.fr3')
  else
    FrxReport1.LoadFromFile(reportsPath + 'Got_Prod_n_kod166.fr3');
end;

procedure TFGotProdNaklView.printForLitr;
var
  st : String;
  v_kol_upak, koefPerevodaL2TisL : integer;
  v_kol_upak1 : integer;
  v_seria1 : string;
begin
  while (not MD_Nakl_s.Eof) do
  begin
    v_kol_upak1 := 0;
    MD_Nakl_s.Edit;
    MD_Nakl_s.FieldByName('kol_upak').AsInteger := MD_Nakl_s.FieldByName('kol_grp').AsInteger;
    st := SumToString(Round(MD_Nakl_s.FieldByName('kol_grp').AsInteger));
    MD_Nakl_s.FieldByName('kol_upak_prop').AsString := st;
    koefPerevodaL2TisL := 1;
    if (keiId = 123) then
      koefPerevodaL2TisL := 1000;
    v_kol_upak := Trunc(StrToFloat(MD_Nakl_s.FieldByName('KOL_RASH').AsString) * koefPerevodaL2TisL
                        / StrToFloat(MD_Nakl_s.FieldByName('kol_trans').AsString));
    if (v_kol_upak < (MD_Nakl_s.FieldByName('KOL_RASH').AsFloat) * koefPerevodaL2TisL
                     / MD_Nakl_s.FieldByName('kol_trans').AsFloat) then
      v_kol_upak1 := 1;

    GetUpak.Close;
    GetUpak.ParamByName('name_upak').AsString := MD_Nakl_s.FieldByName('upak_trans').AsString;
    GetUpak.Open;
    if (not GetUpak.Eof) then
    begin
      MD_Nakl_s.FieldByName('size_upak').AsString := GetUpak.FieldByName('len_up').AsString
                                                     + 'x'
                                                     + GetUpak.FieldByName('width_up').AsString
                                                     + 'x'
                                                     + GetUpak.FieldByName('height_up').AsString;
      MD_Nakl_s.FieldByName('vol_trans').AsFloat := GetUpak.FieldByName('vol_up').AsFloat
    end;
    if (v_kol_upak <> 0) then
    begin
      RMUpak.Append;
      RMUpak.FieldByName('kol_upak').AsInteger := v_kol_upak;
      RMUpak.FieldByName('kol_trans').AsInteger := MD_Nakl_s.FieldByName('KOL_trans').AsInteger;
      RMUpak.FieldByName('seria').AsString := MD_Nakl_s.FieldByName('seria').AsString;
      st := SumToString(v_kol_upak);
      RMUpak.FieldByName('kol_upak_prop').AsString := st;
      RMUpak.FieldByName('ves_trans').AsFloat := MD_Nakl_s.FieldByName('Ves_trans').AsFloat;
      RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_tara').AsFloat;
      RMUpak.Post;
    end;
//      s_vesup:=RMUpak.FieldByName('ves_upak').AsFloat;
    if (v_kol_upak1 = 1) then
    begin
      RMUpak.Append;
      RMUpak.FieldByName('seria').asstring := v_seria1;
      RMUpak.FieldByName('kol_upak').AsInteger := v_kol_upak1;
      vv := MyCeil(MD_Nakl_s.FieldByName('KOL_RASH').AsFloat);
      RMUpak.FieldByName('kol_trans').AsInteger := vv - (MD_Nakl_s.FieldByName('KOL_trans').AsInteger * v_kol_upak);

      if (MD_Nakl_s.FieldByName('KOL_grp').AsInteger <> 0) then
        RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_upak').AsFloat
                                                  + (RMUpak.FieldByName('kol_trans').AsInteger
                                                     / MD_Nakl_s.FieldByName('KOL_grp').AsInteger
                                                     * MD_Nakl_s.FieldByName('ves_grp').AsFloat)
      else
        RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_upak').AsFloat;
      if (MD_Nakl_s.FieldByName('KOL_trans').AsInteger <> 0) then
        RMUpak.FieldByName('ves_trans').AsFloat := roundto(((vv
                                                             - (MD_Nakl_s.FieldByName('KOL_trans').AsInteger
                                                             * v_kol_upak))
                                                             * MD_Nakl_s.FieldByName('Ves_trans').AsFloat)
                                                             / MD_Nakl_s.FieldByName('KOL_trans').AsInteger,
                                                           -2)
      else
        RMUpak.FieldByName('ves_trans').AsFloat := 0;

      RMUpak.FieldByName('seria').AsString := MD_Nakl_s.FieldByName('seria').AsString;
      st := SumToString(v_kol_upak1);
      RMUpak.FieldByName('kol_upak_prop').AsString := st;
      RMUpak.Post;
    end;
    MD_Nakl_s.Next;
  end;
  FrxReport1.LoadFromFile(reportsPath + 'Got_Prod_n_kod122.fr3');
end;

procedure TFGotProdNaklView.printForUpakSimple;
var
  st : String;

begin
  while (not MD_Nakl_s.Eof) do
  begin
    MD_Nakl_s.Edit;
    MD_Nakl_s.FieldByName('kol_upak').AsInteger := MD_Nakl_s.FieldByName('kol_grp').AsInteger;
    st := SumToString(Round(MD_Nakl_s.FieldByName('kol_grp').AsInteger));
    MD_Nakl_s.FieldByName('kol_upak_prop').AsString := st;

    GetUpak.Close;
    GetUpak.ParamByName('name_upak').AsString := MD_Nakl_s.FieldByName('upak_trans').AsString;
    GetUpak.Open;
    if (not GetUpak.Eof) then
    begin
      MD_Nakl_s.FieldByName('size_upak').AsString := GetUpak.FieldByName('len_up').AsString
                                                     + 'x'
                                                     + GetUpak.FieldByName('width_up').AsString
                                                     + 'x'
                                                     + GetUpak.FieldByName('height_up').AsString;
      MD_Nakl_s.FieldByName('vol_trans').AsFloat := GetUpak.FieldByName('vol_up').AsFloat
    end;

    MD_Nakl_s.Next;
  end;
  FrxReport1.LoadFromFile(reportsPath + 'Got_Prod_n_simple.fr3');
end;

procedure TFGotProdNaklView.printForUpak;
var
  st : String;
  v_kol_upak : integer;
  v_kol_upak1 : integer;
  v_seria1 : string;

begin
  while (not MD_Nakl_s.Eof) do
  begin
    v_kol_upak1 := 0;
    MD_Nakl_s.Edit;
    MD_Nakl_s.FieldByName('kol_upak').AsInteger := MD_Nakl_s.FieldByName('kol_grp').AsInteger;
    st := SumToString(Round(MD_Nakl_s.FieldByName('kol_grp').AsInteger));
    MD_Nakl_s.FieldByName('kol_upak_prop').AsString := st;
    v_kol_upak := Trunc(StrToFloat(MD_Nakl_s.FieldByName('KOL_RASH').AsString) * 1000
                        / StrToFloat(MD_Nakl_s.FieldByName('kol_trans').AsString));
    if (cbRF.Checked) then                                                            // для Реополюглюкина на РФ для 1 цеха
    begin
      v_kol_upak := trunc(StrToFloat(MD_Nakl_s.FieldByName('KOL_RASH').AsString) * 1000);          // для Реополюглюкина на РФ для 1 цеха
      if (v_kol_upak  = 0) then
        v_kol_upak := trunc(1 / (StrToFloat(MD_Nakl_s.FieldByName('KOL_RASH').AsString) * 1000));
    end;

    if v_kol_upak < (MD_Nakl_s.FieldByName('KOL_RASH').AsFloat * 1000)
                     / MD_Nakl_s.FieldByName('kol_trans').AsFloat then
      v_kol_upak1 := 1;

    if (cbRF.Checked) then
      if (frac(StrToFloat(MD_Nakl_s.FieldByName('KOL_RASH').AsString) * 1000) > 0) then
        v_kol_upak1 := 1;

    GetUpak.Close;
    GetUpak.ParamByName('name_upak').AsString := MD_Nakl_s.FieldByName('upak_trans').AsString;
    GetUpak.Open;
    if (not GetUpak.Eof) then
    begin
      MD_Nakl_s.FieldByName('size_upak').AsString := GetUpak.FieldByName('len_up').AsString
                                                     + 'x'
                                                     + GetUpak.FieldByName('width_up').AsString
                                                     + 'x'
                                                     + GetUpak.FieldByName('height_up').AsString;
      MD_Nakl_s.FieldByName('vol_trans').AsFloat := GetUpak.FieldByName('vol_up').AsFloat
    end;
    if (v_kol_upak <> 0) then
    begin
      RMUpak.Append;
      RMUpak.FieldByName('kol_upak').AsInteger := v_kol_upak;
      RMUpak.FieldByName('kol_trans').AsFloat := MD_Nakl_s.FieldByName('KOL_trans').AsFloat;
      RMUpak.FieldByName('seria').AsString := MD_Nakl_s.FieldByName('seria').AsString;
      st := SumToString(v_kol_upak);
      RMUpak.FieldByName('kol_upak_prop').AsString := st;
      RMUpak.FieldByName('ves_trans').AsFloat := MD_Nakl_s.FieldByName('Ves_trans').AsFloat;
      RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_tara').AsFloat;
      RMUpak.Post;
    end;
//      s_vesup:=RMUpak.FieldByName('ves_upak').AsFloat;
    if (v_kol_upak1 = 1) then
    begin
      RMUpak.Append;
      RMUpak.FieldByName('seria').asstring := v_seria1;
      RMUpak.FieldByName('kol_upak').AsInteger := v_kol_upak1;

      vv := MyCeil(MD_Nakl_s.FieldByName('KOL_RASH').AsFloat * 1000);

      RMUpak.FieldByName('kol_trans').AsFloat := vv - (MD_Nakl_s.FieldByName('KOL_trans').AsFloat * v_kol_upak);

      if (cbRF.Checked) then
      begin
        RMUpak.FieldByName('kol_trans').AsInteger := trunc(SimpleRoundTo(frac(MD_Nakl_s.FieldByName('KOL_RASH').AsFloat
                                                                              * 1000)
                                                      * MD_Nakl_s.FieldByName('KOL_trans').AsInteger, 0));
      end;

      if (MD_Nakl_s.FieldByName('KOL_grp').AsInteger <> 0) then
        RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_upak').AsFloat
                                                  + (RMUpak.FieldByName('kol_trans').AsInteger
                                                     / MD_Nakl_s.FieldByName('KOL_grp').AsInteger
                                                     * MD_Nakl_s.FieldByName('ves_grp').AsFloat)
      else
        RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_upak').AsFloat;
      if (MD_Nakl_s.FieldByName('KOL_trans').AsInteger <> 0) then
        RMUpak.FieldByName('ves_trans').AsFloat := roundto(((vv
                                                             - (MD_Nakl_s.FieldByName('KOL_trans').AsInteger
                                                             * v_kol_upak))
                                                             * MD_Nakl_s.FieldByName('Ves_trans').AsFloat)
                                                             / MD_Nakl_s.FieldByName('KOL_trans').AsInteger,
                                                           -2)
      else
        RMUpak.FieldByName('ves_trans').AsFloat := 0;

      if (cbRF.Checked) then                                                                          // реополюглюкин на РФ для 1 цеха
        RMUpak.FieldByName('ves_trans').AsFloat := RMUpak.FieldByName('KOL_trans').AsFloat
                                                   / GotKartQueryKOL_TRANS.AsFloat
                                                   * GotKartQueryVES_TRANS.AsFloat;

      RMUpak.FieldByName('seria').AsString := MD_Nakl_s.FieldByName('seria').AsString;
      st := SumToString(v_kol_upak1);
      RMUpak.FieldByName('kol_upak_prop').AsString := st;
      RMUpak.Post;
    end;
    MD_Nakl_s.Next;
  end;
  FrxReport1.LoadFromFile(reportsPath + 'Got_Prod_n.fr3');
end;

procedure TFGotProdNaklView.openNaklS;
begin
  MD_Nakl_s.Close;
  MD_Nakl_s.Open;
  MD_Nakl_s.LoadFromDataSet(GotKartQuery, 0, lmAppend);
  MD_Nakl_s.First;
end;

procedure TFGotProdNaklView.getKeiId;
begin
  keiId := GotKartQueryKEI_ID.AsInteger;
end;

procedure TFGotProdNaklView.GotDocumentAfterInsert(DataSet: TDataSet);
begin
  GotDocumentNDOK.AsString := nDokEdit.Text;
  if (dokDateEdit.Text = '  .  .    ') then
  begin
    GotDocumentDATE_DOK.AsDateTime := Now;
    GotDocumentDATE_OP.AsDateTime := Now;
  end
  else
  begin
    if (isDateValid(dokDateEdit.Text)) then
    begin
      GotDocumentDATE_DOK.AsDateTime := StrToDate(dokDateEdit.Text);
      GotDocumentDATE_OP.AsDateTime := StrToDate(dokDateEdit.Text);
    end;
  end;
  GotDocumentKLIENT_ID.AsInteger := dm1.sklad.FieldByName('struk_id').AsInteger;
  GotDocumentSTRUK_ID.AsInteger := vStruk_Id;
end;

procedure TFGotProdNaklView.GotDocumentBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_DOCUMENT';
  DM1.Add_KartDok.ExecProc;
  vDocument_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFGotProdNaklView.GotDocumentNewRecord(DataSet: TDataSet);
begin
  GotDocumentDOC_ID.AsInteger := vDocument_Id;
  curDocId := vDocument_Id;
  GotDocumentTIP_OP_ID.AsInteger := 93;
  GotDocumentTIP_DOK_ID.AsInteger := 90;
  GotDocumentSTRUK_ID.AsInteger := vStruk_Id;
  GotDocumentDATE_DOK.AsDateTime := Now;
  GotDocumentDATE_OP.AsDateTime := Now;
end;

procedure TFGotProdNaklView.GotKartQueryAfterInsert(DataSet: TDataSet);
begin
  GotKartQuery.BeforePost := nil;
  GotKartQuery.Edit;
  GotKartQueryDOC_ID.AsInteger := GotDocumentDOC_ID.AsInteger;
  GotKartQuerySTROKA_ID.AsInteger := vStroka_Id;
  GotKartQueryTIP_OP_ID.AsInteger := 93;
  GotKartQueryTIP_DOK_ID.AsInteger := 90;
  GotKartQueryKOL_PRIH_EDIZ.AsFloat := 0.0;
  GotKartQuery.Post;
//  GotKartQuery.BeforePost := GotKartQueryBeforePost;
end;

procedure TFGotProdNaklView.GotKartQueryBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_KART';
  DM1.Add_KartDok.ExecProc;
  vStroka_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFGotProdNaklView.GotKartQueryBeforePost(DataSet: TDataSet);
begin
  if (isNecessaryKartFieldsValid()) then
  begin
    if (GotDocument.RecordCount = 0) then
      GotDocument.Insert;
    GotKartQueryDoc_id.AsInteger := GotDocumentDOC_ID.AsInteger;
    GotKartQueryKlient_id.AsInteger := GotDocumentSTRUK_ID.AsInteger;
    FGotProd.PostSeria(GotKartQuerySERIA.AsString, GotKartQueryKSM_ID.AsInteger,
                       GotKartQueryDATE_VIPUSK.AsDateTime, GotKartQueryKOL_RASH_EDIZ.AsFloat,
                       GotKartQueryCOMMENT.AsString);
    GotKartQuerySeria_id.AsInteger := vSeria_id;
    GotKartQueryTIP_OP_ID.AsInteger := GotDocumentTIP_OP_ID.AsInteger;
    GotKartQueryTIP_DOK_ID.AsInteger := GotDocumentTIP_DOK_ID.AsInteger;
    GotKartQueryKOL_PRIH_EDIZ.AsFloat := 0.0;

    FGotProd.PostOstatki(GotKartQueryKSM_ID.AsInteger, GotKartQuerySERIA_ID.AsInteger,
                         GotKartQueryNOMU_ID_TRANS.AsInteger, GotKartQueryKART_ID.AsInteger,
                         GotKartQueryKEI_ID.AsInteger, GotDocumentSTRUK_ID.AsInteger,
                         StrToDate(dokDateEdit.Text), GotKartQueryVOL_TRANS.AsString,
                         GotKartQueryKOL_TRANS.AsFloat, GotKartQueryKOL_GRP.AsFloat,
                         GotKartQueryVES_TRANS.AsFloat, GotKartQueryNOMU_ID_GRP.AsInteger);
    GotKartQueryKART_ID.AsInteger := FGotProd.newKartId;
  end;
end;

procedure TFGotProdNaklView.GotKartQueryCalcFields(DataSet: TDataSet);
begin
  if (GotKartQueryKOL_TRANS.AsFloat <> 0) then
  begin
    if (GotKartQueryKEI_ID.AsInteger = 166) or (GotKartQueryKEI_ID.AsInteger = 163)
        or (GotKartQueryKEI_ID.AsInteger = 170) then
    begin
      if ((GotKartQueryKOL_RASH.AsFloat / GotKartQueryKOL_TRANS.AsFloat) >
           trunc(GotKartQueryKOL_RASH.AsFloat / GotKartQueryKOL_TRANS.AsFloat)) then
        GotKartQueryKOL_UPAK.AsFloat := trunc(GotKartQueryKOL_RASH.AsFloat
                                              / GotKartQueryKOL_TRANS.AsFloat) + 1
      else
        GotKartQueryKOL_UPAK.AsFloat := trunc(GotKartQueryKOL_RASH.AsFloat
                                              / GotKartQueryKOL_TRANS.AsFloat);
    end
    else
    begin 
      if ((GotKartQueryKOL_RASH.AsFloat * 1000 / GotKartQueryKOL_TRANS.AsFloat) >
           trunc(GotKartQueryKOL_RASH.AsFloat * 1000 / GotKartQueryKOL_TRANS.AsFloat)) then
        GotKartQueryKOL_UPAK.AsFloat := trunc(GotKartQueryKOL_RASH.AsFloat
                                              * 1000
                                              / GotKartQueryKOL_TRANS.AsFloat) + 1
      else
        GotKartQueryKOL_UPAK.AsFloat := trunc(GotKartQueryKOL_RASH.AsFloat
                                              * 1000
                                              / GotKartQueryKOL_TRANS.AsFloat);
    end;
  end;
end;

procedure TFGotProdNaklView.GotKartQueryKOL_GRPChange(Sender: TField);
begin
  setVesTara;
end;

procedure TFGotProdNaklView.GotKartQueryKOL_TRANSChange(Sender: TField);
begin
//  if (sender = GotNaklGrid.Fields[13]) then
//    GotKartQuery.Edit;
  if (keiId = 166) or (keiId = 170) or (keiId = 163) then
  begin
    if GotKartQueryKOL_TRANS.AsFloat <> 0 then
      if ((GotKartQueryKOL_RASH_EDIZ.AsFloat / GotKartQueryKOL_TRANS.AsFloat) >
          trunc(GotKartQueryKOL_RASH_EDIZ.AsFloat
                / GotKartQueryKOL_TRANS.AsFloat)) then
        GotKartQueryKOL_UPAK.asinteger := trunc(GotKartQueryKOL_RASH_EDIZ.AsFloat
                                                / GotKartQueryKOL_TRANS.AsFloat) + 1
      else
        GotKartQueryKOL_UPAK.asinteger := trunc(GotKartQueryKOL_RASH_EDIZ.AsFloat
                                                / GotKartQueryKOL_TRANS.AsFloat)
    else
      GotKartQueryKOL_UPAK.asinteger := 0;
  end
  else
  begin
    if GotKartQueryKOL_TRANS.AsInteger <> 0 then
      if ((GotKartQueryKOL_RASH_EDIZ.AsFloat * 1000 / GotKartQueryKOL_TRANS.AsInteger) >
          trunc(GotKartQueryKOL_RASH_EDIZ.AsFloat * 1000 / GotKartQueryKOL_TRANS.AsInteger)) then
        GotKartQueryKOL_UPAK.asinteger := trunc(GotKartQueryKOL_RASH_EDIZ.AsFloat
                                                * 1000 / GotKartQueryKOL_TRANS.AsInteger) + 1
      else
        GotKartQueryKOL_UPAK.asinteger := trunc(GotKartQueryKOL_Rash_EDIZ.AsFloat
                                                * 1000 / GotKartQueryKOL_TRANS.AsInteger)
    else
      GotKartQueryKOL_UPAK.asinteger := 0;
  end;
  if GotKartQueryKOL_GRP.AsFloat <> 0 then
    GotKartQueryVES_TARA.AsFloat := GotKartQueryVES_UPAK.AsFloat
                                    + (GotKartQueryKOL_TRANS.AsFloat
                                       / GotKartQueryKOL_GRP.AsFloat
                                       * GotKartQueryVES_GRP.AsFloat)
  else
    GotKartQueryVES_TARA.AsFloat := GotKartQueryVES_UPAK.AsFloat;
//  if (cbRF.Checked) then
//  begin
//    GotKartQueryKOL_UPAK.AsInteger := trunc(GotKartQueryKOL_RASH_EDIZ.AsFloat * 1000);
//    if (frac(GotKartQueryKOL_RASH_EDIZ.AsFloat * 1000) > 0) then
//      GotKartQueryKOL_UPAK.AsInteger := GotKartQueryKOL_UPAK.AsInteger + 1;
//  end;
//  if (sender = GotNaklGrid.Fields[13]) then
//    GotKartQuery.Post;
end;

procedure TFGotProdNaklView.GotKartQueryNewRecord(DataSet: TDataSet);
begin
  GotKartQueryStroka_id.AsInteger := vStroka_id;
end;

procedure TFGotProdNaklView.GotKartQueryUPAK_GRPChange(Sender: TField);
begin
  if GotKartQueryUPAK_GRP.AsString = '' then
  begin
    GotKartQueryNomu_id_grp.AsVariant := 0;
    GotKartQueryKol_grp.AsVariant := 0;
  end;
end;

procedure TFGotProdNaklView.GotKartQueryVES_GRPChange(Sender: TField);
begin
  setVesTara;
end;

procedure TFGotProdNaklView.GotKartQueryVES_UPAKChange(Sender: TField);
begin
  setVesTara;
end;

procedure TFGotProdNaklView.GotNaklGridColumns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  GotKartQuery.BeforePost := nil;
  showPlanVipusk;
//  showSpprod;
  GotKartQuery.BeforePost := GotKartQueryBeforePost;
end;

procedure TFGotProdNaklView.GotNaklGridColumns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  GotKartQuery.BeforePost := nil;
  showPlanVipusk;
//  showSpprod;
  GotKartQuery.BeforePost := GotKartQueryBeforePost;
end;

procedure TFGotProdNaklView.GotNaklGridColumns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  dm1.Seria.Active := false;
  dm1.Seria.ParamByName('Ksm_id').AsInteger := GotKartQueryKSM_ID.AsInteger;
  dm1.Seria.Active := true;

  if  not dm1.Seria.Eof then
  begin
    dm1.Seria.Last;
    if FSer = nil then
      FSer := TFSer.Create(Application);
    pr_ser := 0;
    FSer.Position := poDesigned;
    FSer.Top := Mouse.CursorPos.Y;
    FSer.Left := Mouse.CursorPos.X - 100;
    FSer.ShowModal;
    if FSer.ModalResult > 50 then
    begin
      GotKartQuery.Edit;
      GotKartQuerySeria_id.AsInteger := FSer.ModalResult - 50;
      GotKartQuerySeria.AsString := DM1.SeriaSeria.AsString;
      GotKartQueryKol_rash_EDIZ.AsFloat := dm1.SeriaKol_seria.AsFloat;
      GotKartQueryDATE_VIPUSK.AsDateTime := dm1.SeriaDATE_VIPUSK.AsDateTime;
      GotKartQueryCOMMENT.AsString := dm1.SeriaCOMMENT.AsString;
    end;
  end
  else
  begin
    MessageDlg('Нет серии заданного препарата!', mtWarning, [mbOK], 0);
    vseria_id := 0;
  end;
  dm1.Seria.Active := false;
end;

procedure TFGotProdNaklView.GotNaklGridColumns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if (FUPAK = nil) then
    FUPAK := TFUPAK.Create(Application);
  FUPAK.ShowModal;
  if (FUPAK.ModalResult > 50) then
  begin
 {   if (GotKartQuery.Modified) or (GotKartQuery.State = dsEdit) then
    begin
      if (GotKartQueryNOMU_ID_TRANS.AsInteger = 0) then
        GotKartQueryNOMU_id_Trans.AsInteger := 1;
      GotKartQuery.Post;
    end;
    if (not isStrokaEqual(GotKartQuery.RecNo, GotKartQueryKSM_ID.AsInteger,
                          GotKartQuerySERIA_ID.AsInteger, FUPAK.ModalResult - 50,
                          GotKartQuerySERIA.AsString, DM1.UpakName_upak.AsString)) then
    begin       }
    GotKartQuery.Edit;
    GotKartQueryNOMU_id_Trans.AsInteger := FUPAK.ModalResult - 50;
    GotKartQueryUPAK_Trans.AsString := DM1.UpakName_upak.AsString;
    GotKartQueryVOL_TRANS.AsString := FUPAK.DBGridEH1.DataSource.DataSet.FieldByName('VOL_UP').AsString;
    GotKartQueryVes_upak.AsFloat := FUPAK.DBGridEH1.DataSource.DataSet.FieldByName('Ves_UPak').AsFloat;
    GotKartQuery.Post;
//    if (isStrokaEqual(GotKartQuery.RecNo, GotKartQueryKSM_ID.AsInteger,
//                      GotKartQuerySERIA_ID.AsInteger, GotKartQueryNOMU_id_Trans.AsInteger,
//                      GotKartQuerySERIA.AsString, GotKartQueryUPAK_Trans.AsString)) then
//    begin
//      GotKartQuery.Edit;
//      GotKartQueryNOMU_id_Trans.AsInteger := 0;
//      GotKartQueryUPAK_Trans.AsString := '';
//      GotKartQueryVOL_TRANS.AsString := '';
//      GotKartQueryVes_upak.AsFloat := 0.0;
//      ShowMessage('Препарат с таким кодом, серией и тарой уже добавлен в накладную. Выберите другую тару');
{    end
    else
    begin
      GotKartQuery.Edit;
      GotKartQueryNOMU_id_Trans.AsInteger := 0;
      ShowMessage('Препарат с таким кодом, серией и тарой уже добавлен в накладную. Выберите другую тару');
    end;   }
  end;
end;

procedure TFGotProdNaklView.GotNaklGridColumns9EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if FUPAK = nil then
    FUPAK := TFUPAK.Create(Application);
  FUPAK.ShowModal;
  if FUPAK.ModalResult > 50 then
  begin
    GotKartQuery.Edit;
    GotKartQueryNOMU_id_GRP.AsInteger := FUPAK.ModalResult - 50;
    GotKartQueryUPAK_GRP.AsString := DM1.UpakName_upak.AsString;
    GotKartQueryVes_grp.AsFloat := FUPAK.DBGridEH1.DataSource.DataSet.FieldByName('Ves_UPak').AsFloat;
  end;
end;

procedure TFGotProdNaklView.GotNaklGridEnter(Sender: TObject);
begin
  enableGrid;
  if (not GotNaklGrid.Enabled) then
    MessageDlg('Введите сначала номер и дату дакумента!', mtWarning, [mbOK], 0);
end;

procedure TFGotProdNaklView.GotNaklGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    if (GotNaklGrid.Col = 2) and (skod <> '')
       and ((GotKartQuery.State = dsEdit) or (GotKartQuery.State = dsInsert)) then
    begin
      GotKartQuery.BeforePost := nil;
      GotKartQuery.Post;
      TempQuery.Active := false;
      TempQuery.SQL.Text := 'select spprod.ksm_id, spprod.kod_prod, spprod.nmat, '
                            + 'spprod.kei_id, spprod.xarkt, spprod.gost, ediz.neis '
                            + 'from spprod '
                            + 'inner join ediz on ediz.kei_id = spprod.kei_id '
                            + 'where spprod.kod_prod = '''
                            + DM1.IBQuery1.FieldByName('kod_PROD').Asstring + '''';
      TempQuery.Active := true;
      if not TempQuery.Eof then
      begin
        assignSpprodToGotKartQuery(TempQuery.FieldByName('ksm_id').AsInteger,
                                   TempQuery.FieldByName('kod_prod').AsString,
                                   TempQuery.FieldByName('nmat').AsString,
                                   TempQuery.FieldByName('kei_id').AsInteger,
                                   TempQuery.FieldByName('xarkt').AsString,
                                   TempQuery.FieldByName('gost').AsString,
                                   TempQuery.FieldByName('neis').AsString);
        getKeiId;
      end
      else
        ShowMessage('Не найдено препарата по данному коду.');
      GotKartQuery.BeforePost := GotKartQueryBeforePost;
    end;
    setFindPrepLblsVisible(false);
  end;
end;

procedure TFGotProdNaklView.GotNaklGridKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (GotNaklGrid.Col = 2) then
  begin
    if (Key = 188) or (Key = 190) or (Key = 191) or (Key = 48) or (Key = 49)
       or (Key = 50) or (Key = 51) or (Key = 52) or (Key = 53) or (Key = 54)
       or (Key = 55) or (Key = 56) or (Key = 57) or (Key = 96) or (Key = 97)
       or (Key = 98) or (Key = 99) or (Key = 100) or (Key = 101) or (Key = 102)
       or (Key = 103)  or (Key = 104) or (Key = 105) or (Key = 110)
       or (Key = 46) or (Key = 8) or (Key = 35) then
    begin
      GotNaklGrid.InplaceEditor.Text := StringReplace(GotNaklGrid.InplaceEditor.Text,
                                                      ',', '.', [rfReplaceAll, rfIgnoreCase]);
      GotNaklGrid.InplaceEditor.SelStart := GotNaklGrid.InplaceEditor.GetTextLen;
      skod := GotNaklGrid.InplaceEditor.Text;
      setFindPrepLblsVisible(true);
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID, SPPROD.NMAT, SPPROD.KOD_PROD, '
                           + 'SPPROD.KEI_ID, SPPROD.KSM_ID, SPPROD.SPROD_ID,');
      DM1.IBQuery1.SQL.Add('SPPROD.GOST, EDIZ.NEIS, SPPROD.KORG, SPPROD.XARKT,'
                           + 'SPPROD.ACTIVP, SPRORG.NAM, SPPROD.LEK_ID, region.nam namreg');
      DM1.IBQuery1.SQL.Add(' FROM SPPROD');
      DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
      DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
      DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.ReG = region.reg)');
      DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like ' + '''' + skod + '%' + ''''
                           + ' AND SPPROD.STRUK_ID = ' + INTTOSTR(vStruk_Id));
      DM1.IBQuery1.Active := True;
      if (not dm1.IBQuery1.Eof) then
      begin
        nMatLbl.Caption := DM1.IBQuery1.FieldByName('kod_PROD').Asstring
                           + DM1.IBQuery1.FieldByName('nmat').AsString;
        harkLbl.Caption := DM1.IBQuery1.FieldByName('Xarkt').AsString;
        regionLbl.Caption := DM1.IBQuery1.FieldByName('namreg').AsString;
        edizLbl.Caption := DM1.IBQuery1.FieldByName('neis').AsString;
        s_kei := DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
      end
      else
      begin
        nMatLbl.Caption := '';
        harkLbl.Caption := '';
        regionLbl.Caption := '';
        edizLbl.Caption := '';
      end;
    end;
  end;
end;

procedure TFGotProdNaklView.GotNaklGridMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  enableGrid;
  if (not GotNaklGrid.Enabled) then
    MessageDlg('Введите сначала номер и дату дакумента!', mtWarning, [mbOK], 0);
end;

procedure TFGotProdNaklView.IBTaraAfterOpen(DataSet: TDataSet);
begin
  IbTaraMem.EmptyTable;
  IbTaraMem.Open;
  ibTara.First;
  while (not ibTara.Eof) do
  begin
    if (IBTaraUPAK_TRANS.AsString <> '')
        and (not locateIbTaraMem(IBTaraUPAK_TRANS.AsString, IbTaraSIZE_UPAK.AsString,
                                 IBTaraVOL_TRANS.AsFloat)) then
    begin
      IbTaraMem.Append;
      ibTaraMem.Edit;
      IbTaraMemSIZE_UPAK.AsString := IbTaraSIZE_UPAK.AsString;
      IbTaraMemUPAK_TRANS.AsString := IBTaraUPAK_TRANS.AsString;
      IbTaraMemVOL_TRANS.AsFloat := IBTaraVOL_TRANS.AsFloat;
      ibTaraMem.Post;
    end;
    ibTara.Next;
  end;
  ibTara.First;
  while (not ibTara.Eof) do
  begin
    if (IBTaraUPAK_TRANS2.AsString <> '')
        and (not locateIbTaraMem(IBTaraUPAK_TRANS2.AsString, IbTaraSIZE_UPAK2.AsString,
                                 IBTaraVOL_TRANS2.AsFloat)) then
    begin
      IbTaraMem.Append;
      ibTaraMem.Edit;
      IbTaraMemSIZE_UPAK.AsString := IbTaraSIZE_UPAK2.AsString;
      IbTaraMemUPAK_TRANS.AsString := IBTaraUPAK_TRANS2.AsString;
      IbTaraMemVOL_TRANS.AsFloat := IBTaraVOL_TRANS2.AsFloat;
      ibTaraMem.Post;
    end;
    ibTara.Next;
  end;
end;

function TFGotProdNaklView.locateIbTaraMem(upakTrans, sizeUpak : string; volTrans : double) : boolean;
var
  finded : boolean;
begin
  finded := false;
  ibTaraMem.First;
  while (not ibTaraMem.Eof) do
  begin
    if (IbTaraMemSIZE_UPAK.AsString = sizeUpak) and (IbTaraMemUPAK_TRANS.AsString = upakTrans)
        and (IbTaraMemVOL_TRANS.AsFloat = volTrans) then
    begin
      finded := true;
      break;
    end
    else
      finded := false;
    ibTaraMem.Next;
  end;
  result := finded;
end;

procedure TFGotProdNaklView.loadAndInitMDNaklad;
var
  st : string;
begin
  MD_Naklad.Close;
  MD_Naklad.Open;
  MD_Naklad.LoadFromDataSet(TempQuery, 0, lmAppend);
  MD_Naklad.First;
  while (not MD_Naklad.Eof) do
  begin
    MD_Naklad.edit;
    st := '';
    if ((keiId = 166) or (keiId = 170) or (keiId = 163) or (keiId = 122)) then
      st := AnsiUpperCase(FloatToText(MD_Naklad.FieldByName('KOL_RASH').AsFloat, 3))
    else
//      st := SumToString(Round(MD_Naklad.FieldByName('KOL_RASH').AsFloat * 1000));
      st := FloatToText(MD_Naklad.FieldByName('KOL_RASH').AsFloat * 1000,
                        KolZnakovPosleZap(MD_Naklad.FieldByName('KOL_RASH').AsFloat * 1000));

    if (cbRF.Checked) then
//      st := FloatToText(MD_Naklad.FieldByName('KOL_RASH').AsFloat * 1000, 3);
      st := FloatToText(MD_Naklad.FieldByName('KOL_RASH').AsFloat * 1000,
                        KolZnakovPosleZap(MD_Naklad.FieldByName('KOL_RASH').AsFloat * 1000));
    MD_Naklad.FieldByName('SUM_PROP').AsString := st;
    MD_Naklad.Post;
    MD_Naklad.next;
  end;
end;

procedure TFGotProdNaklView.loadGotKart;
begin
  GotKartQuery.Active := false;
  GotKartQuery.ParamByName('doc_id').AsInteger := curDocId;
  GotKartQuery.Active := true;

  if (GotKartQuery.RecordCount > 0) then
  begin
    GotKartQuery.First;
    while not GotKartQuery.Eof do
    begin
      if (GotKartQueryKOL_PRIH_EDIZ.AsVariant = NULL) then
      begin
        GotKartQuery.BeforePost := nil;
        GotKartQuery.Edit;
        GotKartQueryKOL_PRIH_EDIZ.AsFloat := 0.0;
        GotKartQuery.Post;
        GotKartQuery.BeforePost := GotKartQueryBeforePost;
      end;
      if (KolZnakovPosleZap(GotKartQueryKOL_TRANS.AsFloat) > 6) then
      begin
        GotKartQuery.BeforePost := nil;
        GotKartQuery.Edit;
//        GotKartQueryKOL_TRANS.AsFloat := SimpleRoundTo(GotKartQueryKOL_TRANS.AsFloat, -4);
        GotKartQueryKOL_TRANS.AsFloat := SimpleRoundTo(GotKartQueryKOL_TRANS.AsFloat, -3);
        GotKartQuery.Post;
        GotKartQuery.BeforePost := GotKartQueryBeforePost;
      end;
      if (KolZnakovPosleZap(GotKartQueryKOL_GRP.AsFloat) > 6) then
      begin
        GotKartQuery.BeforePost := nil;
        GotKartQuery.Edit;
        GotKartQueryKOL_GRP.AsFloat := SimpleRoundTo(GotKartQueryKOL_GRP.AsFloat, -4);
        GotKartQuery.Post;
        GotKartQuery.BeforePost := GotKartQueryBeforePost;
      end;
      GotKartQuery.Next;
    end;
  end;
  addGotKartToMemKart;
end;

procedure TFGotProdNaklView.loadUndersigns;
var
  docParamId : string;
begin
	if (vStruk_Id = 696) or (vStruk_Id = 1) or (vStruk_Id = 106) or (vStruk_Id = 29) then		// для медпрепаратов надо ставить Галейшу Е.А., зам. нач. ОКК
  begin
  	docParamId := ' 542 ';
    if (vStruk_Id = 696) then
    begin
      docParamId := ' 1364 ';
      SdalEdit.Text := 'Нач. уч. упак. Ковалев А. И.';
    end;
  end
  else
    docParamId := ' 544 ';           // зам. нач. ОКК Солодкова Г.С.
  if (GotDocument.RecordCount > 0) then   // пытаемся загрузить подписи для данного документа
  begin
    TempQuery.Active := false;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add('select doc_param.param_value '
                      + 'from doc_param '
                      + 'where doc_param.tip_param_id = ' + docParamId
                      + 'and doc_param.doc_id = ' + IntToStr(GotDocumentDOC_ID.AsInteger));
    TempQuery.Active := true;
  end;

  if (TempQuery.Eof) then				// если подписей нет, то загружаем подписи по умолчанию по docParamId
  begin
    TempQuery.Active := False;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add('SELECT default_value '
                      + 'from doc_tip_param '
                      + 'where tip_param_id = ' + docParamId);
    TempQuery.Active := True;
    NachOkkEdit.Text := TempQuery.FieldByName('default_value').asstring;
    param1IsHere := false;
  end
  else
  begin
    param1IsHere := true;      // если есть, то ставим в отпуск разрешил
    NachOkkEdit.Text := TempQuery.FieldByName('param_value').asstring;
  end;
  TempQuery.Active := False;
  if (GotDocument.RecordCount > 0) then
  begin
    TempQuery.Active := false;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add('select doc_param.param_value '
                      + 'from doc_param '
                      + 'where doc_param.tip_param_id = 543 '
                      + 'and doc_param.doc_id = ' + IntToStr(GotDocumentDOC_ID.AsInteger));
    TempQuery.Active := true;
    param2IsHere := false;
  end;
  if (not TempQuery.Eof) {and (not GotDocument.Eof)} then
  begin
    SdalEdit.Text := TempQuery.FieldByName('param_value').asstring;
    param2IsHere := true;
  end
end;

procedure TFGotProdNaklView.printForTisUpak(Sender: TObject);
begin
  if (GotKartQuery.RecordCount > 0) then
  begin
    prepareDataForPrint;
    printForUpak;
//    setReportVariables;
    FrxReport1.ShowReport(true);
  end;
end;

procedure TFGotProdNaklView.printMukosat(Sender: TObject);
begin
  if (GotKartQuery.RecordCount > 0) then
  begin
    createSeriaArrFor2Koda;
    createUpakArrFor2KodaMukosat;
    ibtara.Active := false;
    ibtara.paramByName('doc').AsInteger := GotDocumentDOC_ID.AsInteger;
    IbTara.Active := true;
    uniteSeriaArrRecs;
    FrxReport1.LoadFromFile(reportsPath + 'Got_Prod_2ed.fr3');
    FrxReport1.ShowReport(true);
  end;
end;

procedure TFGotProdNaklView.printForLiters(Sender: TObject);
begin
  if (GotKartQuery.RecordCount > 0) then
  begin
    prepareDataForPrint;
    printForLitr;
//    setReportVariables;
    FrxReport1.ShowReport(true);
  end;
end;

procedure TFGotProdNaklView.printForKgG(Sender: TObject);
begin
  if (GotKartQuery.RecordCount > 0) then
  begin
    prepareDataForPrint;
    printForKg;
//    setReportVariables;
    FrxReport1.ShowReport(true);
  end;
end;

procedure TFGotProdNaklView.printForMeds(Sender: TObject);
begin
  createSeriaArr;
//  createUpakArr; 
  ibtara.Active := false;
  ibtara.paramByName('doc').AsInteger := GotDocumentDOC_ID.AsInteger;
  IbTara.Active := true;
  frxReport1.LoadFromFile(reportsPath + 'Got_Prod_n_med.fr3');
  if (seriaArr.RecordCount = 1) then
    frxReport1.FindObject('footer2').Visible := false;
  frxReport1.ShowReport(true);
end;

procedure TFGotProdNaklView.nDokEditChange(Sender: TObject);
begin
  enableGrid;
  GotDocument.Edit;
  GotDocumentNDOK.AsString := nDokEdit.Text;
  GotDocument.Post;
end;

procedure TFGotProdNaklView.saveUnderSigns;
var
  docParamId : string;
begin
  if (NachOkkEdit.Text <> '') then
  begin
    TempQuery.Active := False;
    TempQuery.SQL.Clear;
    if (vStruk_Id = 696) or (vStruk_Id = 1) or (vStruk_Id = 106) or (vStruk_Id = 29) then		// для медпрепаратов надо ставить Галейшу Е.А., зам. нач. ОКК
    begin
      docParamId := ' 542 ';
      if (vStruk_Id = 696) then
      begin
        docParamId := ' 1364 ';
      end;
    end
    else
      docParamId := ' 544 ';

    if (not param1IsHere) then
      TempQuery.SQL.Add('insert into doc_param (tip_param_id, doc_id, param_value) '
                        + 'values (' + docParamId + ', ' + GotDocumentDOC_ID.AsString
                        + ', ''' + NachOkkEdit.Text + ''')')
    else
      TempQuery.SQL.Add('update doc_param set param_value = ''' + NachOkkEdit.Text
                        + ''' where tip_param_id = ' + docParamId + ' and doc_id = '
                        + GotDocumentDOC_ID.AsString);
    TempQuery.Active := true;
    dm1.commitReadTrans(true);
  end;

  TempQuery.Active := False;
  TempQuery.SQL.Clear;
  if (not param2IsHere) then
    TempQuery.SQL.Add('insert into doc_param (tip_param_id, doc_id, param_value) '
                         + 'values (543, ' + GotDocumentDOC_ID.AsString
                         + ', ''' + SdalEdit.Text + ''')')
  else
    TempQuery.SQL.Add('update doc_param set param_value = ''' + SdalEdit.Text
                         + ''' where tip_param_id = 543 and doc_id = '
                         + GotDocumentDOC_ID.AsString);
  TempQuery.Active := true;
  dm1.commitReadTrans(true);
end;

procedure TFGotProdNaklView.DellAllRecsClick(Sender: TObject);
begin
  GotKartQuery.First;
  while (not GotKartQuery.Eof) do
  begin
    deleteVipusk(GotKartQueryKSM_ID.AsInteger, GotKartQueryKART_ID.AsInteger,
               GotDocumentDATE_DOK.AsDateTime, GotDocumentSTRUK_ID.AsInteger);
    GotKartQuery.Delete;
  end;
end;

procedure TFGotProdNaklView.DelRecClick(Sender: TObject);
begin
  deleteVipusk(GotKartQueryKSM_ID.AsInteger, GotKartQueryKART_ID.AsInteger,
               GotDocumentDATE_DOK.AsDateTime, GotDocumentSTRUK_ID.AsInteger);
  GotKartQuery.Delete;
end;

procedure TFGotProdNaklView.dokDateEditChange(Sender: TObject);
begin
  if (isDateValid(dokDateEdit.Text)) then
  begin
    enableGrid;
    GotDocument.Edit;
    GotDocumentDATE_DOK.AsDateTime := StrToDate(dokDateEdit.Text);
    GotDocumentDATE_OP.AsDateTime := StrToDate(dokDateEdit.Text);
    GotDocument.Post;
  end;
end;

function TFGotProdNaklView.isDateValid(value : string) : boolean;
var                            // проверка даты на соответствие шаблону [1900-..].[1-12].[1-31]
  tempStr : string;
  temp : integer;
begin
  if (length(value) = 10) then
  begin
    try
      temp := StrToInt(copy(value, 1, 2));
      if (temp >= 1) and (temp <= 31) then
      begin
        temp := StrToInt(copy(value, 4, 2));
        if (temp >= 1) and (temp <= 12) then
        begin
          temp := StrToInt(copy(value, 7, 4));
          if (temp > 1900) then
          begin
            tempStr := copy(value, 3, 1) + copy(value, 6, 1);
            if (tempStr = '..') then
              result := true
            else
              result := false;
          end
          else
            result := false;
        end
        else
          result := false;
      end
      else
        result := false;
    except
      on e : exception do
        result := false;
    end;
  end
  else
    result := false;
end;

procedure TFGotProdNaklView.dokDateEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 188) or (Key = 190) or (Key = 191) or (Key = 48) or (Key = 49)
       or (Key = 50) or (Key = 51) or (Key = 52) or (Key = 53) or (Key = 54)
       or (Key = 55) or (Key = 56) or (Key = 57) or (Key = 96) or (Key = 97)
       or (Key = 98) or (Key = 99) or (Key = 100) or (Key = 101) or (Key = 102)
       or (Key = 103)  or (Key = 104) or (Key = 105) or (Key = 110)
       or (Key = 46) or (Key = 8) or (Key = 35) then
  begin
    if (isDateValid(dokDateEdit.Text)) then
    begin
      dokDateEdit.Text := StringReplace(dokDateEdit.Text,
                                        ',', '.', [rfReplaceAll, rfIgnoreCase]);
      enableGrid;
      GotDocument.Edit;
      GotDocumentDATE_DOK.AsDateTime := StrToDate(dokDateEdit.Text);
      GotDocumentDATE_OP.AsDateTime := StrToDate(dokDateEdit.Text);
      GotDocument.Post;
    end;
  end;
end;

procedure TFGotProdNaklView.AddRecClick(Sender: TObject);
begin
  GotKartQuery.Insert;
end;

procedure TFGotProdNaklView.newPrintBtnClick(Sender: TObject);
begin
  if (isKolUpakNull()) then
  begin
    MessageDlg('Введите кол-во упаковок в 1 единице тары!', mtWarning, [mbOK], 0);
    abort;
  end;
  printVibor := 0;
  SaveBtnClick(sender);
  if (keiId = 800) then                    // млн шт
    printForMlnSht(sender);
  if ((keiId = 777) or (keiId = 682) or (keiId = 779) or (keiId = 785)
     or (keiId = 798) or (keiId = 602)) then                // т.амп; т кор; т бут; т уп; т фл; т шт
    if (copy(GotKartQueryKOD_PROD.AsString,0,5) <> '0118.') then
      if (is2Koda1Seria()) then
        printFor2Koda1SeriaTisUpak(Sender)
      else
        printForTisUpak(Sender)
    else
      printMukosat(sender);
  if ((keiId = 166) or (keiId = 163) or (keiId = 170) or (keiId = 852)
     or (keiId = 125) or (keiId = 164) or (keiId = 851) or (keiId = 126)) then
    printForKgG(Sender);
  if ((keiId = 644) or (keiId = 645) or (keiId = 646) or (keiId = 650) or (keiId = 662)) then
    printForMeds(Sender);
  if (keiId = 122) or (keiId = 123) then
    printForLiters(sender);
  printVibor := 0;
end;

function TFGotProdNaklView.isNecessaryDocFieldsValid() : boolean;
begin
  result := true;
  if (not isDateValid(dokDateEdit.Text)) then
  begin
    MessageDlg('Неправильная дата накладной!', mtWarning, [mbOK], 0);
    result := false;
  end;
  if (nDokEdit.Text = '') then
  begin
    MessageDlg('Задайте номер накладной.', mtWarning, [mbOK], 0);
    result := false;
  end;
  if (dokDateEdit.Text = '  .  .    ') then
  begin
    MessageDlg('Задайте дату накладной.', mtWarning, [mbOK], 0);
    result := false;
  end;
  if (SkladCombo.KeyValue = null) then
  begin
    MessageDlg('Выберите склад отправки препарата', mtWarning, [mbOK], 0);
    result := false;
  end;
end;

function TFGotProdNaklView.isNecessaryKartFieldsValid() : boolean;
begin
  result := true;
  If (GotKartQueryNomu_id_trans.AsInteger = 0) then
  begin
    MessageDlg('Введите вид тары!', mtWarning, [mbOK], 0);
    result := false;
  end;
  If (not isDateValid(GotKartQueryDate_vipusk.AsString)) then
  begin
    MessageDlg('Введите дату выпуска!', mtWarning, [mbOK], 0);
    result := false;
  end;
  If (GotKartQueryKOL_RASH_EDIZ.asfloat = 0) then
  begin
    MessageDlg('Введите количество выпуска!', mtWarning, [mbOK], 0);
    result := false;
  end;
  if (not isDateValid(dokDateEdit.Text)) then
  begin
    MessageDlg('Неправильная дата накладной!', mtWarning, [mbOK], 0);
    result := false;
  end;
end;

procedure TFGotProdNaklView.SaveBtnClick(Sender: TObject);
var
  kartSaved : boolean;
begin
//  devideGotKartBy1000;
  if (isNecessaryDocFieldsValid()) then
  begin
    if (dokDateEdit.Text <> GotDocumentDATE_DOK.AsString) then
      setDokDate(dokDateEdit.Text);
    curDate := StrToDate(dokDateEdit.Text);
    kartSaved := false;
    loadSkladDocument(GotDocumentDOC_ID.AsInteger, GotDocumentSTRUK_ID.AsInteger,
                          GotDocumentKLIENT_ID.AsInteger);
    Splash := ShowSplashWindow(AniBmp1,
                        'Сохранение данных. Подождите, пожалуйста...', True, nil);
    GotNaklGrid.Enabled := false;
    try
      if (GotDocument.RecordCount = 0) then
        GotDocument.Insert;
      if (GotDocument.UpdatesPending) then
      begin
        GotDocument.ApplyUpdates;
        dm1.commitWriteTrans(true);
        loadGotDocument;
      end;

      if (not isGotKartEqualMemKart) then
      begin
        if (not skladDocumentIsProvided) then
        begin
          devideGotKartBy1000;
          if (GotKartQuery.Modified)
            or (GotKartQuery.State = dsEdit)
            or (GotKartQuery.State = dsInsert) then
            GotKartQuery.Post;
          GotKartQuery.ApplyUpdates;
          kartSaved := true;
        end
        else
        begin
          Splash.Free;
          ShowMessage('Документ проведен на складе. Для корректировки надо '
                      + 'отменить проведение, свяжитесь со складовщиком.');
        end;
      end;

      saveUnderSigns;
      dm1.commitWriteTrans(true);
      if (kartSaved) then      
        loadGotKart;
      postVipusk;
    except
      On E: Exception do
      begin
        if (Splash.Active) then
          Splash.Free;
        MessageDlg('Произошла ошибка при записи данных!  ' + E.Message, mtWarning, [mbOK], 0);
        DM1.IBT_WRITE.RollbackRetaining;
        GotNaklGrid.Enabled := true;
      end;
    end;
    GotNaklGrid.Enabled := true;
    if (Splash.Active) then
      Splash.Free;
    FGotProd.GotPrVipusk.VipSeria.Active := false;
    FGotProd.GotPrVipusk.VipSeria.Active := true;
    if (curDate <> StrToDate(dokDateEdit.Text)) then       // костыль для правильного сохранения даты
    begin
      setDokDate(DateToStr(curDate));
      dokDateEdit.Text := DateToStr(curDate);
      GotDocument.ApplyUpdates;
      dm1.commitWriteTrans(true);
    end;
  end;
end;

procedure TFGotProdNaklView.VipDocumentBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_DOCUMENT';
  DM1.Add_KartDok.ExecProc;
  vDocument_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFGotProdNaklView.VipDocumentNewRecord(DataSet: TDataSet);
begin
  VipDocumentDOC_ID.AsInteger := vDocument_Id;
end;

procedure TFGotProdNaklView.VipKartBeforePost(DataSet: TDataSet);
begin
  VipKartDoc_id.AsInteger := VipDocumentDOC_ID.AsInteger;
  VipKartKlient_id.AsInteger := VipDocumentSTRUK_ID.AsInteger;
  VipKartSeria_id.AsInteger := GotKartQuerySERIA_ID.AsInteger;
  VipKartTIP_OP_ID.AsInteger := VipDocumentTIP_OP_ID.AsInteger;
  VipKartTIP_DOK_ID.AsInteger := VipDocumentTIP_DOK_ID.AsInteger;
  VipKartKOL_RASH_EDIZ.AsFloat := 0.0;
end;

procedure TFGotProdNaklView.VipKartNewRecord(DataSet: TDataSet);
begin
  VipKartStroka_id.AsInteger := vStroka_id;
  VipKartDOC_ID.AsInteger := VipDocumentDOC_ID.AsInteger;
  VipKartSTROKA_ID.AsInteger := vStroka_Id;
  VipKartTIP_OP_ID.AsInteger := 36;
  VipKartTIP_DOK_ID.AsInteger := 90;
  VipKartKOL_RASH_EDIZ.AsFloat := 0.0;
  VipKartKOL_PRIH_EDIZ.AsFloat := 0.0;
end;

procedure TFGotProdNaklView.deleteUnderSigns(docId : integer);
begin
  TempQuery.Active := False;
  TempQuery.SQL.Clear;
  TempQuery.SQL.Add('delete from doc_param where doc_id = ' + IntToStr(docId));
  TempQuery.Active := true;
end;

procedure TFGotProdNaklView.deleteSkladKart(docId : integer);
begin
  loadSkladKart(docId);
  SkladKart.First;
  while (not SkladKart.Eof) do
  begin
    SkladKart.Delete;
  end;
end;

procedure TFGotProdNaklView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (GotKartQuery.RecordCount > 0) and (not isGotDocumentEqualMemDocument) then
  begin
    if (MessageDlg('Сохранить изменения?', mtWarning, [mbOK, mbCancel], 0) = mrOK) then
        SaveBtnClick(sender);
  end
  else
  begin
    if (not isGotKartEqualMemKart) then
      if (MessageDlg('Сохранить изменения?', mtWarning, [mbOK, mbCancel], 0) = mrOK) then
        SaveBtnClick(sender);
  end;
  cancelAllUpdates;
  FreeAndNil(lookUnderS);
end;

procedure TFGotProdNaklView.FormCreate(Sender: TObject);
begin
  curDocId := 0;
  param1IsHere := false;
  param2IsHere := false;
  fromVipusk := 0;
end;

procedure TFGotProdNaklView.FormShow(Sender: TObject);
begin
  activateNDokDateDokSkladOnChange(false);
  cbRF.Checked := false;
  dm1.Sklad.Active := true;
  loadGotDocument;
  loadGotKart;
  loadUndersigns;
  getKeiId;
  if (fromVipusk = 1) then
    createFromVipusk;
  getKeiId;
  setGridCol3DisplayFormat;
  activateNDokDateDokSkladOnChange(true);
  cbShowAdditionalColsClick(sender);
  cbShowAdditionalCols.Checked := false;
  setFindPrepLblsVisible(false);
end;

procedure TFGotProdNaklView.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  year, month, day : word;
  kod, kodTemp : string;
  kolRashEdiz : double;
begin
  kolRashEdiz := 0.0;
  kodTemp := '';
  kod := '';
  if VarName = 'fio_nach_okk' then
    Value := NachOkkEdit.Text;
  if VarName = 'fio_sdal' then
    Value := SdalEdit.Text;
  if (VarName = 'up') then
    Value := upakInTara;
  if VarName = 'nakl_nom' then
  begin
    Value := nDokEdit.Text;
  end
  else
    if VarName = 'data' then
    begin
      DecodeDate(StrToDate(dokDateEdit.Text), Year, Month, Day);
      Value := '"  ' + IntToStr(Day) + '  "   ' + MesName(Month) + '   '
               + IntToStr(Year) + '  г.';
    end
    else
      if VarName = 'kod_prod' then
      begin
      kod := '';
      kodTemp := '';
        if (GotKartQuery.RecordCount >= 2) then
        begin 
          GotKartQuery.First;
          while not GotKartQuery.Eof do
          begin
            if (GotKartQueryKOD_PROD.AsString <> kodTemp) then
            begin
              if kod <> '' then
                kod := kod + '  ' + GotKartQueryKOD_PROD.AsString
              else
                kod := kod + GotKartQueryKOD_PROD.AsString;
              if (printVibor = 1) then
                kod := kod + ' ' + GotKartQueryNAM.AsString;
              kodTemp := GotKartQueryKOD_PROD.AsString;
            end;
            GotKartQuery.Next;
          end;
          Value := kod;
        end
        else
          Value := GotKartQueryKOD_PROD.AsString;
      end
      else
        if VarName = 'nom_ceh' then
        begin
          Value := S_namcex;
        end
        else
          if VarName = 'all_summa' then
          begin
            kolRashEdiz := 0.0;
            GotKartQuery.First;
            while not GotKartQuery.Eof do
            begin
              kolRashEdiz := kolRashEdiz + GotKartQueryKOL_RASH_EDIZ.AsFloat;
              GotKartQuery.Next;
            end;
            Value := kolRashEdiz;
          end
          else
            if VarName = 'all_summa_propis' then
            begin
              GotKartQuery.First;
              while not GotKartQuery.Eof do
              begin
                kolRashEdiz := kolRashEdiz + GotKartQueryKOL_RASH_EDIZ.AsFloat;
                GotKartQuery.Next;
              end;
              Value := SumToString(Round(kolRashEdiz * 1000));
            end;
end;

procedure TFGotProdNaklView.loadGotDocument;
begin
  GotDocument.Active := false;
  GotDocument.ParamByName('doc_id').AsInteger := curDocId;
  GotDocument.Active := true;

  activateNDokDateDokSkladOnChange(false);
  nDokEdit.Text := GotDocumentNDOK.AsString;
  dokDateEdit.Text := GotDocumentDATE_DOK.AsString;
  dm1.Sklad.Locate('struk_id', GotDocumentKLIENT_ID.AsInteger, []);
  SkladCombo.KeyValue := dm1.Sklad.FieldByName('struk_id').AsInteger;
  activateNDokDateDokSkladOnChange(true);

  if (nDokEdit.Text = '') then
  begin
    TempQuery.SQL.Clear;
    TempQuery.Active := false;
    try
      TempQuery.SQL.Add('select max(cast(document.ndok as integer)) ndok from document where document.tip_op_id = 93 '
                        + ' and document.tip_dok_id = 90 and document.struk_id = '
                        + IntToStr(vStruk_Id) + ' and document.date_dok between '''
                        + DateToStr(FGotProd.beginDate) + ''' and ''' + DateToStr(FGotProd.endDate)
                        + ''' ');
      TempQuery.Active := true;
    except
      On E: Exception do
      begin
        nDokEdit.Text := '1';
      end;
    end;
    if (TempQuery.FieldByName('ndok').AsString = '') then
      nDokEdit.Text := '1'
    else
       nDokEdit.Text := IntToStr(TempQuery.FieldByName('ndok').AsInteger + 1);
  end;

  if (dokDateEdit.Text = '  .  .    ') then
  begin
    dokDateEdit.Text := DateToStr(Now);
//    dm1.Sklad.Locate('struk_id', 156, []);
//    SkladCombo.KeyValue := 156;
  end;
  addGotDocumentToMemDocument;
end;

end.
