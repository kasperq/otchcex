unit TexGur;

interface

uses DrugLoad,
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
    ToolButton1: TToolButton;
    btn_delRec: TToolButton;
    ToolButton9: TToolButton;
    btn_saveSeria: TToolButton;
    ToolButton5: TToolButton;
    DSZagSyr: TDataSource;
    ZagSyr: TRxIBQuery;
    Seria_s: TRxIBQuery;
    SerUpdate: TIBUpdateSQLW;
    Seria_sSERIA_ID: TIntegerField;
    Seria_sKSM_ID: TIntegerField;
    Seria_sSERIA: TIBStringField;
    Seria_sSROK_GODN: TDateField;
    Seria_sSERTIF: TIBStringField;
    Seria_sDATE_SERTIF: TDateField;
    Seria_sPASPORT: TIBStringField;
    Seria_sDATE_PASPORT: TDateField;
    Seria_sKOL_SERIA: TFMTBCDField;
    Seria_sDATE_VIPUSK: TDateField;
    Seria_sFORMA_VIPUSK: TIBStringField;
    Seria_sKEI_ID: TSmallintField;
    Seria_sDATE_TIME_UPDATE: TDateTimeField;
    Seria_sUSER_NAME: TIBStringField;
    Seria_sSHEMA: TIBStringField;
    Seria_sKODTN: TIBStringField;
    Seria_sDATE_ZAG: TDateField;
    Seria_sFIO_RASH: TIBStringField;
    Seria_sFIO_MASTER: TIBStringField;
    Seria_sCOMMENT: TIBStringField;
    Seria_sOB_ZAG: TFloatField;
    FindDlgEh1: TFindDlgEh;
    FindDlgEh2: TFindDlgEh;
    Label5: TLabel;
    ToolButton4: TToolButton;
    Seria_sVLAG_TM: TFloatField;
    Seria_sKOD_TM: TIntegerField;
    Seria_sKOL_TM: TFloatField;
    PageControl1: TPageControl;
    tab_zagr: TTabSheet;
    grid_zagr: TDBGridEh;
    TabSheet2: TTabSheet;
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
    Edit1: TEdit;
    Edit2: TEdit;
    DateEdit1: TDateEdit;
    GroupBox3: TGroupBox;
    Label68: TLabel;
    Label26: TLabel;
    Label70: TLabel;
    Label34: TLabel;
    Label75: TLabel;
    Label21: TLabel;
    ToolButton6: TToolButton;
    SpeedButton2: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Label7: TLabel;
    Label45: TLabel;
    Label38: TLabel;
    Edit9: TEdit;
    ToolButton8: TToolButton;
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
    btn_vipuskList: TToolButton;
    SpeedButton3: TSpeedButton;
    ZagSyrDATE_TIME_UPDATE: TDateField;
    q_kart: TRxIBQuery;
    q_norm: TRxIBQuery;
    q_ost: TRxIBQuery;
    mem_texGur: TkbmMemTable;
    q_normPLNORM: TFMTBCDField;
    q_normKODP: TIntegerField;
    q_normKEIN: TSmallintField;
    q_normKSM_ID: TIntegerField;
    q_normKRAZ: TSmallintField;
    q_normMES: TSmallintField;
    q_normGOD: TSmallintField;
    q_normNAZPRPF: TIBStringField;
    q_normNMAT: TIBStringField;
    q_normXARKT: TIBStringField;
    q_normGOST: TIBStringField;
    q_normKEI_ID: TSmallintField;
    q_normNEIS: TIBStringField;
    q_normRAZDEL_ID: TSmallintField;
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
    q_kartDOC_ID: TIntegerField;
    q_kartSTROKA_ID: TIntegerField;
    q_kartKART_ID: TIntegerField;
    q_kartKOL_RASH: TFMTBCDField;
    q_kartKOL_RASH_EDIZ: TFloatField;
    q_kartRAZDEL_ID: TSmallintField;
    q_kartKEI_ID: TSmallintField;
    q_kartKSM_ID: TIntegerField;
    q_kartNEIS: TIBStringField;
    q_kartNMAT: TIBStringField;
    q_kartKRAZ: TSmallintField;
    mem_texGurKEI_ID_OST_PREP: TIntegerField;
    mem_texGurKEI_ID_OST_CEX: TIntegerField;
    q_ostKART_ID: TIntegerField;
    q_ostKEI_ID: TSmallintField;
    q_ostKSM_ID: TIntegerField;
    q_ostKODP: TIntegerField;
    q_ostNEIS_OST: TIBStringField;
    q_ostRAZDEL_ID: TSmallintField;
    q_ostNMAT: TIBStringField;
    q_ostOSTATOK_END_S: TFMTBCDField;
    q_ostOSTATOK_END_NZ: TFMTBCDField;
    q_ostOSTATOK_BEGIN_S: TFMTBCDField;
    q_ostOSTATOK_BEGIN_NZ: TFMTBCDField;
    q_ostKRAZ: TSmallintField;
    q_ostZAG_PERIOD: TFMTBCDField;
    q_ostPRIX_PERIOD: TFMTBCDField;
    q_ostPEREDANO_RASH_S: TFMTBCDField;
    q_ostPEREDANO_RASH_NZ: TFMTBCDField;
    q_ostRASH_VIRAB_PERIOD: TFMTBCDField;
    Label1: TLabel;
    ostceh: TIBQuery;
    mem_texGurDELETE: TBooleanField;
    mem_texGurADD: TBooleanField;
    ZagSyrKLIENT_ID: TIntegerField;
    ZagSyrKODP: TIntegerField;
    ZagSyrTIP_DOK_ID: TSmallintField;
    q_ostZAG: TFMTBCDField;
    q_ostPRIX: TFMTBCDField;
    q_ostPEREDANO_PRIH_NZ: TFMTBCDField;
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
    ostcehKSM_ID: TIntegerField;
    ostcehOSTATOK_END_S: TFMTBCDField;
    ostcehKEI_ID: TSmallintField;
    ostcehNMAT: TIBStringField;
    ostcehNEIS: TIBStringField;
    tab_series: TTabSheet;
    Panel1: TPanel;
    btn_openSeria: TSpeedButton;
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
    q_spprod: TRxIBQuery;
    q_spprodSTRUK_ID: TSmallintField;
    q_spprodNMAT: TIBStringField;
    q_spprodKOD_PROD: TIBStringField;
    q_spprodKEI_ID: TSmallintField;
    q_spprodKSM_ID: TIntegerField;
    q_spprodSPROD_ID: TIntegerField;
    q_spprodVOLUMF: TFMTBCDField;
    q_spprodVOL_OV: TFMTBCDField;
    q_spprodGOST: TIBStringField;
    q_spprodNEIS: TIBStringField;
    q_spprodKORG: TIntegerField;
    q_spprodXARKT: TIBStringField;
    q_spprodACTIVP: TSmallintField;
    q_spprodNAM: TIBStringField;
    q_spprodLEK_ID: TSmallintField;
    q_spprodNAMEFV: TIBStringField;
    q_spprodNAM_REG: TIBStringField;
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
    q_kartXARKT: TIBStringField;
    q_kartGOST: TIBStringField;
    mem_texGurXARKT: TStringField;
    mem_texGurGOST: TStringField;
    q_ostXARKT: TIBStringField;
    q_ostGOST: TIBStringField;
    mem_texGurKSM_ID_PREP: TIntegerField;
    ZagSyrDATE_DOK: TDateField;
    q_doc: TRxIBQuery;
    q_docDOC_ID: TIntegerField;
    q_docNDOK: TIBStringField;
    q_docDATE_DOK: TDateField;
    q_docSTRUK_ID: TSmallintField;
    q_docKLIENT_ID: TIntegerField;
    q_docDATE_OP: TDateField;
    q_docTIP_OP_ID: TSmallintField;
    q_docTIP_DOK_ID: TSmallintField;
    upd_doc: TIBUpdateSQLW;
    q_kartTIP_OP_ID: TSmallintField;
    q_kartTIP_DOK_ID: TSmallintField;
    q_kartKOL_PRIH_EDIZ: TFloatField;
    q_ostatki: TRxIBQuery;
    upd_ostatki: TIBUpdateSQLW;
    q_ostatkiSTRUK_ID: TIntegerField;
    q_ostatkiKSM_ID: TIntegerField;
    q_ostatkiOT_S: TFMTBCDField;
    q_ostatkiKEI_ID: TSmallintField;
    q_ostatkiRAZDEL_ID: TSmallintField;
    q_ostatkiKSM_IDPR: TIntegerField;
    q_ostatkiSTRUK_ID_RELA: TIntegerField;
    q_ostatkiKART_ID: TIntegerField;
    q_ostatkiSERIA_ID: TIntegerField;
    q_ostatkiACCOUNT: TIBStringField;
    upd_kart: TIBUpdateSQLW;
    q_ostatkiMES: TSmallintField;
    q_ostatkiGOD: TSmallintField;
    q_prixDoc: TRxIBQuery;
    q_prixDocNDOK: TIBStringField;
    q_prixDocDOC_ID: TIntegerField;
    q_prixDocPRIZ_ID: TSmallintField;
    q_prixDocTIP_OP_ID: TSmallintField;
    q_prixDocTIP_DOK_ID: TSmallintField;
    q_prixDocDATE_DOK: TDateField;
    q_prixDocDOK_OSN_ID: TIntegerField;
    q_prixDocSTRUK_ID: TSmallintField;
    q_prixDocVP_ID: TSmallintField;
    q_prixDocKPV: TFMTBCDField;
    q_prixDocKLIENT_ID: TIntegerField;
    q_prixDocSUM_BRB: TIBBCDField;
    q_prixDocSUM_ISP1: TIBBCDField;
    q_prixDocSUM_ISP2: TIBBCDField;
    q_prixDocSUM_VP: TIBBCDField;
    q_prixDocSUM_ISP1_VP: TIBBCDField;
    q_prixDocSUM_ISP2_VP: TIBBCDField;
    q_prixDocNDS: TIBBCDField;
    q_prixDocSUM_NDS: TIBBCDField;
    q_prixDocSUM_NDS_VP: TIBBCDField;
    q_prixDocDATE_OP: TDateField;
    q_prixDocDATE_VVOD: TDateTimeField;
    q_prixDocZADACHA_ID: TIBStringField;
    q_prixDocUSER_NAME: TIBStringField;
    q_prixDocDOV: TIntegerField;
    q_prixDocDATE_TIME_UPDATE: TDateTimeField;
    q_prixDocJORN_ID: TSmallintField;
    q_prixDocRCHET_ID: TIntegerField;
    q_prixDocTAG: TIntegerField;
    q_prixDocKPV_OLD: TFMTBCDField;
    q_prixKart: TRxIBQuery;
    q_prixKartDOC_ID: TIntegerField;
    q_prixKartSTROKA_ID: TIntegerField;
    q_prixKartKSM_ID: TIntegerField;
    q_prixKartCENA: TIBBCDField;
    q_prixKartKOL_PRIH: TFMTBCDField;
    q_prixKartCENA_VP: TIBBCDField;
    q_prixKartNDS: TIBBCDField;
    q_prixKartSUM_NDS: TIBBCDField;
    q_prixKartSUM_NDS_VP: TIBBCDField;
    q_prixKartKOL_RASH: TFMTBCDField;
    q_prixKartKART_ID: TIntegerField;
    q_prixKartORG_ID_BRAK: TIntegerField;
    q_prixKartOSNOV_BRAK_ID: TSmallintField;
    q_prixKartUSER_NAME: TIBStringField;
    q_prixKartDATE_TIME_UPDATE: TDateTimeField;
    q_prixKartPARENT: TIntegerField;
    q_prixKartRAZDEL_ID: TSmallintField;
    q_prixKartSKIDKA: TIBBCDField;
    q_prixKartKEI_ID: TSmallintField;
    q_prixKartSUMMA: TIBBCDField;
    q_prixKartSUMMA_VP: TIBBCDField;
    q_prixKartSUM_SKID: TIBBCDField;
    q_prixKartSUM_SKID_VP: TIBBCDField;
    q_prixKartSUMMA_S_NDS: TIBBCDField;
    q_prixKartSUMMA_S_NDS_VP: TIBBCDField;
    q_prixKartTAG: TIntegerField;
    q_prixKartKOL_PRIH_EDIZ: TFloatField;
    q_prixKartKOL_RASH_EDIZ: TFloatField;
    q_prixKartTIP_OP_ID: TSmallintField;
    q_prixKartTIP_DOK_ID: TSmallintField;
    q_prixKartTAG1: TIntegerField;
    q_prixKartTOV_SKIDKA: TSmallintField;
    q_prixKartKEI_ID2: TSmallintField;
    q_prixKartCENA_PRICE: TIBBCDField;
    q_prixKartSKID_CEN: TIBBCDField;
    q_prixKartCOMMENT: TIBStringField;
    q_prixKartDOP_SUM: TIBBCDField;
    q_prixKartDEBET: TIBStringField;
    q_prixKartDTYPESUB_ID: TSmallintField;
    q_prixKartDCODE: TIntegerField;
    q_prixKartCREDIT: TIBStringField;
    q_prixKartCTYPESUB_ID: TSmallintField;
    q_prixKartCCODE: TIntegerField;
    q_prixKartSROK: TSmallintField;
    q_prixKartDATE_VID: TDateField;
    q_prixKartDOP_RASH: TIBBCDField;
    q_prixKartDOP_RASH_ID: TSmallintField;
    q_prixKartNORM_RASH: TFMTBCDField;
    q_prixKartKOL_RAB: TFMTBCDField;
    upd_prixKart: TIBUpdateSQLW;
    q_prihSum: TRxIBQuery;
    q_prihSumKSM_ID: TIntegerField;
    q_prihSumRAZDEL_ID: TSmallintField;
    q_prihSumPRIHSUM: TFloatField;
    btn_delAll: TToolButton;
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
    ToolButton2: TToolButton;
    Panel6: TPanel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    mem_texGurOLD_DATE_DOK: TDateField;
    q_prepSeriesNAM_REGION: TIBStringField;
    grid_allZagrs: TDBGridEh;
    Splitter2: TSplitter;
    q_allZagrs: TRxIBQuery;
    ds_allZagrs: TDataSource;
    q_kartUSER_NAME: TIBStringField;
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
    procedure MyGetValue(const s: String; var v: Variant);
    procedure MyGetValue1(const s: String; var v: Variant);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Click(Sender: TObject);
    procedure btn_saveSeriaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh4SortMarkingChanged(Sender: TObject);
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2Click(Sender: TObject);
    procedure btn_delRecClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure grid_zagrEditButtonClick(Sender: TObject);
    procedure frReport2GetValue(const ParName: String;
      var ParValue: Variant);
    procedure ToolButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure Seria_sBeforeInsert(DataSet: TDataSet);
    procedure Seria_sNewRecord(DataSet: TDataSet);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);

    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit9Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure btn_vipuskListClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mem_texGurBeforePost(DataSet: TDataSet);
    procedure grid_zagrDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh4DblClick(Sender: TObject);
    procedure mem_texGurKSM_IDValidate(Sender: TField);
    procedure mem_texGurKRAZValidate(Sender: TField);
    procedure grid_seriesDblClick(Sender: TObject);
    procedure cb_allSyrClick(Sender: TObject);
    procedure btn_openSeriaClick(Sender: TObject);
    procedure grid_seriesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure q_docBeforeInsert(DataSet: TDataSet);
    procedure q_docNewRecord(DataSet: TDataSet);
    procedure q_kartBeforeInsert(DataSet: TDataSet);
    procedure q_kartNewRecord(DataSet: TDataSet);
    procedure btn_delAllClick(Sender: TObject);
    procedure acceptSeria(Sender: TObject);
    procedure q_prepSeriesAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    drLoad : TDrugLoad;
    curRazdelId, curKraz, curDocId, curStrokaId, curKsmIdPrep : integer;

    // Загрузка загрузки :))
    procedure createTexGur(seria : string; year, month, ksmIdPrep, strukId : integer);

    function openNorms(year, month, ksmIdPrep, strukId : integer) : boolean;
    procedure insertNormsToTexGur(ksmIdPrep : integer);
    procedure setDefaultDateDok;

    function openZagrDoc(seria : string; strukId, ksmIdPrep : integer;
                         dateBegin, dateEnd : TDate) : boolean;
    function findOrCreateZagrDocument(seria : string;dateDok : TDate; docId, strukId,
                              ksmIdPrep : integer) : boolean;

    procedure openZagrKart(docId : integer);
    procedure insertKartToTexGur(ksmIdPrep : integer);

    function openPrepOst(strukId, ksmIdPrep : integer; dateBegin, dateEnd : TDate) : boolean;
    procedure insertPrepOstToTexGur(ksmIdPrep : integer);

    function openCexOst(dateBegin, dateEnd : TDate; strukId : integer) : boolean;
    procedure insertCexOstToTexGur;

    procedure convertKeiId(ksmIdPrep : integer);
    procedure convertRecord(var value : TFloatField; kart, ostPrep, ostCex : boolean;
                            tochn : integer);
    procedure delTexGurRecord;
    procedure delAllTexGurRecords;
    // ^^^ Загрузка загрузки :))

    // Сохранение загрузки
    function saveZagrDocument() : boolean;
    procedure deletePrih(ksmIdPrep, ksmId, strukId, razdelId : integer);
    procedure delEmptyZagrDocuments(seria : string; year, month, ksmIdPrep, strukId : integer);
    procedure saveExistingRecord(keiId : integer);
    procedure saveNewRecord(keiId, kartId : integer);
    function saveMemTexGur() : boolean;
    function getCurKeiId() : integer;
    procedure saveSeriaAndOstatki;
    function findKsmIdAndRazdelIdAndKsmIdPrInOstatki(ksmId, razdelId, ksmIdPrep, strukId : integer) : boolean;
    procedure createKartId(ksmId, razdelId, ksmIdPrep, strukId, keiId, seriaId : integer);

    procedure addPrihod(kolRash : double; ksmId, keiId, klientId, razdelId : integer);
    procedure deletePrixKart(ksmId, ksmIdPr, strukId, razdelId : integer);
    procedure openPrixKart(ksmIdPr, strukId, ksmId, razdelId : integer);
    procedure openPrihSum(ksmIdPr, strukId, ksmId, razdelId : integer);
    // ^^^ Сохранение загрузки :))

    procedure openPrepSeries(dateBegin, dateEnd : TDate; strukId : integer);
    procedure loadPrepInfo(kodProd : string);
    function loadSeriaInfo(ksmIdPrep : integer; seria : string) : boolean;

    procedure setSeriaDateZag(ksmIdPrep : integer; seria, dateZag : string);
    procedure openViborSeriesAndLoadTexGur;
    procedure openZagrSeriaTab(kodProd, seria : string; ksmIdPrep, month, year, strukId : integer);
    procedure initToolButtons;

    procedure openZagSyr(strukId, ksmId, tipDokId, ksmIdPrep : integer;
                         dateBegin, dateEnd : TDate; uslSort : string);

  public
    { Public declarations }
  end;

var
  FTexGur: TFTexGur;
  s_stad: integer;
  s_kol_zag: string;
  s_seria_p: string;
  vSeria_Ids: integer;
  s_serias: string;
  S_KSMs: integer;
  v_11: double;
  k1: double;
  k2: double;
  k3: double;
  k4: double;
  PL: double;
  s_vip: double;
  mes_s: integer;
  god_s: integer;
  sSeria_id: integer;
  vFormula:TfrParser;

implementation
 uses dm, ViborPerioda, Ser, SprFormul, Find_Spprod, ediz,
  Find_Matrop, razdel, glmenu, SprSTAD, FSpFormv, Analit_aList, analit,
  Unit21, OstSyr, Analit1, Komp_Tm, VybPrep;
{$R *.dfm}

procedure TFTexGur.saveSeriaAndOstatki;
var
  usl_ser : string;
begin
  if (not dm1.seria.Active) then
  begin
    Dm1.Seria.ParamByName('Ksm_id').AsInteger := S_KODP;
    DM1.Seria.MacroByName('usl').AsString := 'SERIA.SERIA=' + '''' + S_SERIA + '''';
    dm1.Seria.Active := true;
    vSeria_id := dm1.SeriaSeria_id.AsInteger;
  end;
  s_seria_p := s_seria;
  S_KSM := S_KODP;
  DM1.Seria.Edit;
  DM1.SeriaDate_ZAG.AsDateTime := DateEdit1.Date;
  if (edit9.Text <> '') then
    DM1.SeriaKol_seria.AsFloat := strtofloat(Edit9.Text)
  else
    DM1.SeriaKol_seria.AsFloat := 0;
  DM1.Seria.Post;
  DM1.Seria.ApplyUpdates;
  if (dm1.Ostatki.Active) then
  begin
    if (DM1.Ostatki.UpdatesPending) then
      DM1.Ostatki.ApplyUpdates;
    dm1.Ostatki.Active := false;
  end;
  usl_ser := '  OST.KSM_ID=' + INTTOSTR(s_kodp) + ' and ost.seria_id=' + inttostr(vSeria_id);
  DM1.Ostatki.ParamByName('struk_ID').AsInteger := vstruk_id;
  DM1.Ostatki.MacroByName('usl').AsString := usl_ser;
  DM1.Ostatki.Open;
  if (not dm1.Ostatki.Eof) then
    s_kart_id := DM1.OstatkiKart_id.AsInteger
  else
  begin
    v_razdel := 0;
    DM1.Ostatki.Insert;
    DM1.Ostatki.Post;
    dm1.Ostatki.ApplyUpdates;
    s_kart_id := vKart_id;
  end;
  if (DM1.Seria.Modified) or (DM1.Seria.State = dsEdit)
     or (DM1.Seria.State = dsInsert) then
    DM1.Seria.Post;
  if (DM1.Ostatki.Modified) or (DM1.Ostatki.State = dsEdit)
     or (DM1.Ostatki.State = dsInsert) then
    DM1.Ostatki.Post;
  if (DM1.Seria.UpdatesPending) then
    DM1.Seria.ApplyUpdates;
  if (DM1.Ostatki.UpdatesPending) then
    DM1.Ostatki.ApplyUpdates;
end;

procedure TFTexGur.delAllTexGurRecords;
begin
  mem_texGur.DisableControls;
  mem_texGur.First;
  while (not mem_texGur.Eof) do
  begin
    delTexGurRecord;
    mem_texGur.Next;
  end;
  mem_texGur.EnableControls;
end;

procedure TFTexGur.delTexGurRecord;
begin
  mem_texGur.Edit;
  mem_texGurDELETE.AsBoolean := true;
  mem_texGur.Post;
end;

procedure TFTexGur.deletePrih(ksmIdPrep, ksmId, strukId, razdelId : integer);
begin
  openPrihSum(ksmIdPrep, strukId, ksmId, razdelId);
  if (q_prihSumPRIHSUM.AsFloat <> 0) then
  begin
    q_prihSum.Close;
    deletePrixKart(ksmId, ksmIdPrep, strukId, razdelId);
  end;
end;

procedure TFTexGur.saveExistingRecord(keiId : integer);
begin
  if (mem_texGurKOL_RASH_EDIZ.AsFloat = 0) or (mem_texGurDELETE.AsBoolean)
     and (mem_texGurDATE_DOK.AsDateTime = mem_texGurOLD_DATE_DOK.AsDateTime) then
  begin
    q_kart.Delete;
  end;
  if (mem_texGurKOL_RASH_EDIZ.AsFloat <> 0) and (not mem_texGurDELETE.AsBoolean)
     and (mem_texGurDATE_DOK.AsDateTime = mem_texGurOLD_DATE_DOK.AsDateTime) then
  begin
    if ((mem_texGurKOL_RASH_EDIZ.AsFloat <> q_kartKOL_RASH_EDIZ.AsFloat)
        or (keiId <> q_kartKEI_ID.AsInteger))
       and (q_kartRAZDEL_ID.AsInteger = mem_texGurRAZDEL_ID.AsInteger) then
    begin
      q_kart.Edit;
      q_kartKOL_RASH_EDIZ.AsFloat := mem_texGurKOL_RASH_EDIZ.AsFloat;
      q_kartKEI_ID.AsInteger := keiId;
      q_kartKOL_PRIH_EDIZ.AsFloat := 0;
      q_kart.Post;
    end;
    if (q_kartRAZDEL_ID.AsInteger <> mem_texGurRAZDEL_ID.AsInteger) then
    begin
      deletePrih(mem_texGurKSM_ID_PREP.AsInteger, mem_texGurKSM_ID.AsInteger, vStruk_Id, q_kartRAZDEL_ID.AsInteger);
      q_kart.Delete;
      saveNewRecord(keiId, 0);
      delTexGurRecord;
    end;
  end;
  if (mem_texGurDATE_DOK.AsDateTime <> mem_texGurOLD_DATE_DOK.AsDateTime) then
  begin
    deletePrih(mem_texGurKSM_ID_PREP.AsInteger, mem_texGurKSM_ID.AsInteger, vStruk_Id, q_kartRAZDEL_ID.AsInteger);
    q_kart.Delete;
    if (findOrCreateZagrDocument(edit2.Text, mem_texGurDATE_DOK.AsDateTime,
                                 mem_texGurDOC_ID.AsInteger, vStruk_Id, s_kodp)) then
      saveNewRecord(keiId, mem_texGurKART_ID.AsInteger);
  end;
end;

procedure TFTexGur.saveNewRecord(keiId, kartId : integer);
begin
  if (kartId = 0) then
  begin
    if (not findKsmIdAndRazdelIdAndKsmIdPrInOstatki(mem_texGurKSM_ID.AsInteger,
                                                    mem_texGurRAZDEL_ID.AsInteger,
                                                    mem_texGurKSM_ID_PREP.AsInteger,
                                                    vStruk_Id)) then
    begin
      createKartId(mem_texGurKSM_ID.AsInteger, mem_texGurRAZDEL_ID.AsInteger,
                   mem_texGurKSM_ID_PREP.AsInteger, vStruk_Id,
                   keiId, 0);
    end;
    mem_texGur.Edit;
    mem_texGurKART_ID.AsInteger := q_ostatkiKART_ID.AsInteger;
    mem_texGur.Post;
  end;
  q_kart.Insert;
  q_kart.FieldByName('Ksm_Id').AsInteger := mem_texGurKsm_id.AsInteger;
  q_kartKol_rash_ediz.AsFloat := mem_texGurKol_Rash_Ediz.AsFloat;
  q_kart.FieldByName('razdel_Id').AsInteger := mem_texGurRazdel_id.AsInteger;
  q_kart.FieldByName('kei_Id').AsInteger := keiId;
  q_kart.FieldByName('Doc_Id').AsInteger := q_docDOC_ID.AsInteger;
  q_kart.FieldByName('KART_Id').AsInteger := mem_texGurKart_id.AsInteger;
  q_kart.FieldByName('TIP_OP_Id').AsInteger := 33;
  q_kart.FieldByName('TIP_DOK_Id').AsInteger := 34;
  q_kart.Post;
end;

function TFTexGur.getCurKeiId() : integer;
begin
  result := mem_texGurKEI_ID_OST_PREP.AsInteger;
  if (mem_texGurKEI_ID_NORM.AsInteger <> 0) then
    result := mem_texGurKEI_ID_NORM.AsInteger
  else
    if (mem_texGurKEI_ID_KART.AsInteger <> 0) then
      result := mem_texGurKEI_ID_KART.AsInteger;
end;

function TFTexGur.saveMemTexGur() : boolean;
var
  curKeiId : integer;
begin
  mem_texGur.First;
  while (not mem_texGur.Eof) do
  begin
    try
      curKeiId := getCurKeiId();
      if (mem_texGurDOC_ID.AsInteger <> 0) then
      begin
        openZagrKart(mem_texGurDOC_ID.AsInteger);
        if (q_kart.Locate('kart_id;doc_id;stroka_id',
                          VarArrayOf([mem_texGurKART_ID.AsInteger,
                                      mem_texGurDOC_ID.AsInteger,
                                      mem_texGurSTROKA_ID.AsInteger]),
                          [])) then
        begin
          saveExistingRecord(curKeiId);
        end;
      end
      else
      begin
        if (mem_texGurKOL_RASH_EDIZ.AsFloat <> 0) then
        begin
          if (findOrCreateZagrDocument(edit2.Text, mem_texGurDATE_DOK.AsDateTime,
                                       mem_texGurDOC_ID.AsInteger, vStruk_Id, s_kodp)) then
          begin
            openZagrKart(q_docDOC_ID.AsInteger);
            saveNewRecord(curKeiId, mem_texGurKART_ID.AsInteger);
          end;
        end;
      end;

      if (q_kart.UpdatesPending) then
      begin
        q_kart.ApplyUpdates;
        addPrihod(mem_texGurKOL_RASH_EDIZ.AsFloat, mem_texGurKSM_ID.AsInteger,
                  curKeiId, mem_texGurKSM_ID_PREP.AsInteger, mem_texGurRAZDEL_ID.AsInteger);
        dm1.commitWriteTrans(true);
      end
      else
      begin
        if (mem_texGurOSTATOK_END_S.AsFloat < 0)
           or (mem_texGurPRIX_PERIOD.AsFloat <> mem_texGurZAG_PERIOD.AsFloat) then
        begin
          addPrihod(mem_texGurKOL_RASH_EDIZ.AsFloat, mem_texGurKSM_ID.AsInteger,
                  curKeiId, mem_texGurKSM_ID_PREP.AsInteger, mem_texGurRAZDEL_ID.AsInteger);
          dm1.commitWriteTrans(true);
        end;
      end;
    except
      on e : exception do
      begin
        MessageDlg('Произошла ошибка при сохранении сырья: ' + mem_texGurKSM_ID.AsString
                   + '. ' + e.Message, mtWarning, [mbOK], 0);
        dm1.IBT_Write.RollbackRetaining;
      end;
    end;
    mem_texGur.Next;
  end;
//  q_kart.ApplyUpdates;
  result := true;
end;

procedure TFTexGur.addPrihod(kolRash : double; ksmId, keiId, klientId, razdelId : integer);
var
  curSDat1, curSDat2, str_month : string;
  curMes, curGod, curVSeriaId : integer;
  day, month, year : word;
begin
  v_raspred_dob := kolRash;
  s_ksm := ksmId;
  s_kei := keiId;
  v_kein := keiId;
  vklient_id := klientId;
  v_razdel := razdelId;
  curVSeriaId := vSeria_id;
  vSeria_id := 0;
  tochn := -6;
  pr_kor := 0;

  curSDat1 := '01.01.0001';
  curSDat2 := '01.01.0001';
  curMes := 1;
  curGod := 1;
  if (mem_texGurDATE_DOK.AsDateTime < StrToDate(s_dat1))
     or (mem_texGurDATE_DOK.AsDateTime > StrToDate(s_dat2)) then
  begin
    curSDat1 := s_dat1;
    curSDat2 := s_dat2;
    curMes := mes;
    curGod := god;
    DecodeDate(mem_texGurDATE_DOK.AsDateTime, year, month, day);
    if (month < 10) then
      str_month := '0' + IntToStr(month)
    else
      str_month := IntToStr(month);
    s_dat1 :=  '01.' + str_month + '.' + IntToStr(year);
    s_dat2 := datetostr(IncMonth(strtodate(s_dat1), 1) -1);
    mes := month;
    god := year;
  end;

  dm1.DobPrixPrep;

  if (curSDat1 <> '01.01.0001') then
    if (mem_texGurDATE_DOK.AsDateTime < StrToDate(curSDat1))
       or (mem_texGurDATE_DOK.AsDateTime > StrToDate(curSDat2)) then
    begin
      s_dat1 := curSDat1;
      s_dat2 := curSDat2;
      mes := curMes;
      god := curGod;
    end;

  vSeria_id := curVSeriaId;
  curVSeriaId := 0;
//  dm1.commitWriteTrans(true);
end;

procedure TFTexGur.deletePrixKart(ksmId, ksmIdPr, strukId, razdelId : integer);
begin
  openPrixKart(ksmIdPr, strukId, ksmId, razdelId);
  if (q_prixKart.RecordCount > 0) then
  begin
    q_prixKart.First;
    while (not q_prixKart.Eof) do
      q_prixKart.Delete;
    q_prixKart.ApplyUpdates;
    dm1.commitWriteTrans(true);
  end;
end;

procedure TFTexGur.openPrixKart(ksmIdPr, strukId, ksmId, razdelId : integer);
begin
  q_prixKart.Close;
  q_prixKart.ParamByName('struk_id').AsInteger := strukId;
  q_prixKart.ParamByName('klient_id').AsInteger := ksmIdPr;
  q_prixKart.ParamByName('dat1').AsDate := StrToDate(s_dat1);
  q_prixKart.ParamByName('dat2').AsDate := StrToDate(s_dat2);
  q_prixKart.ParamByName('ksm_id').AsInteger := ksmId;
  q_prixKart.ParamByName('razdel_id').AsInteger := razdelId;
  q_prixKart.Open;
end;

procedure TFTexGur.openPrihSum(ksmIdPr, strukId, ksmId, razdelId : integer);
begin
  q_prihSum.Close;
  q_prihSum.ParamByName('struk_id').AsInteger := strukId;
  q_prihSum.ParamByName('klient_id').AsInteger := ksmIdPr;
  q_prihSum.ParamByName('dat1').AsDate := StrToDate(s_dat1);
  q_prihSum.ParamByName('dat2').AsDate := StrToDate(s_dat2);
  q_prihSum.ParamByName('ksm_id').AsInteger := ksmId;
  q_prihSum.ParamByName('razdel_id').AsInteger := razdelId;
  q_prihSum.Open;
  q_prihSum.First;
end;

function TFTexGur.findKsmIdAndRazdelIdAndKsmIdPrInOstatki(ksmId, razdelId, ksmIdPrep, strukId : integer) : boolean;
begin
  result := false;
  q_ostatki.Close;
  q_ostatki.MacroByName('usl').AsString := ' ostatki.struk_id = ' + IntToStr(strukId)
                                           + ' and ostatki.ksm_id = ' + IntToStr(ksmId)
                                           + ' and ostatki.razdel_id = ' + IntToStr(razdelId)
                                           + ' and coalesce(ostatki.ksm_idpr, 0) = '
                                           + IntToStr(ksmIdPrep) + ' ';
  q_ostatki.Open;
  q_ostatki.First;
  if (not q_ostatki.Eof) then
    result := true;
end;

procedure TFTexGur.createKartId(ksmId, razdelId, ksmIdPrep, strukId, keiId, seriaId : integer);
begin
  DM1.Add_Ostatki.ExecProc;
  q_ostatki.Insert;
  q_ostatki.FieldByName('Kart_Id').AsInteger := DM1.Add_Ostatki.Params.Items[0].AsInteger;;
  q_ostatki.FieldByName('Ksm_Id').AsInteger := ksmId;
  IF (razdelId <> 0) then
    q_ostatki.FieldByName('razdel_id').AsInteger := razdelId;
  IF (ksmIdPrep <> 0) and (ksmIdPrep <> ksmId) then
    q_ostatki.FieldByName('ksm_idpr').AsInteger := ksmIdPrep;
  IF (seriaId <> 0) then
    q_ostatki.FieldByName('Seria_id').AsInteger := seriaId;
//  q_ostatki.FieldByName('Kei_Id').AsInteger := keiId;
  q_ostatki.FieldByName('Kei_Id').AsInteger := SelectToVarIB('select matrop.kei_id '
                                                             + 'FROM matrop '
                                                             + 'WHERE matrop.ksm_id = '
                                                             + IntToStr(ksmId),
                                                             dm1.belmed, dm1.ibt_read);
  q_ostatki.FieldByName('Struk_Id').AsInteger := strukId;
  q_ostatki.FieldByName('Mes').AsInteger := Mes_conf;
  q_ostatki.FieldByName('God').AsInteger := God_conf;
  q_ostatki.Post;
  q_ostatki.ApplyUpdates;
  dm1.commitWriteTrans(true);
end;

function TFTexGur.saveZagrDocument() : boolean;
begin
  if (not openZagrDoc(s_seria, vStruk_Id, s_kodp, StrToDate(s_dat1_period), StrToDate(s_dat2_period))) then
  begin
    q_doc.Insert;
  end;
  q_doc.Edit;
  q_docNDOK.AsString := vNDoc;
  q_docDATE_DOK.AsDateTime := dateEdit1.Date;
  q_docDATE_OP.AsDateTime := dateEdit1.Date;
  if (q_doc.Modified) or (q_doc.State = dsInsert) or (q_doc.State = dsEdit) then
    q_doc.Post;
  q_doc.ApplyUpdates;
  result := true;
end;

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

procedure TFTexGur.openZagrSeriaTab(kodProd, seria : string; ksmIdPrep, month, year, strukId : integer);
begin
  loadPrepInfo(kodProd);
  if (loadSeriaInfo(ksmIdPrep, seria)) then
  begin
    PageControl1.ActivePage := tab_zagr;
    PageControl1Change(self);
    createTexGur(seria, year, month, ksmIdPrep, strukId);
  end;
end;

function TFTexGur.loadSeriaInfo(ksmIdPrep : integer; seria : string) : boolean;
begin
  result := false;
  dm1.Seria.Close;
  Dm1.Seria.ParamByName('Ksm_id').AsInteger := ksmIdPrep;
  DM1.Seria.MacroByName('usl').AsString := '0=0';
  dm1.Seria.Open;

  if (dm1.Seria.Locate('seria;ksm_id', VarArrayOf([seria, ksmIdPrep]), [])) then
  begin
    vseria_id := dm1.SeriaSeria_id.AsInteger;
    s_kol_seria := DM1.SeriaKol_Seria.AsFloat;
    edit9.Text := floattostr(s_kol_seria);
    s_vip := strtofloat(edit9.Text);
    edit2.Text := seria;
    DateEdit1.ReadOnly := false;
    if (dm1.SeriaDATE_ZAG.AsVariant <> null) then
      DateEdit1.Date := dm1.SeriaDATE_ZAG.AsDateTime
    else
      if (PageControl1.activePage = tab_zagr) then
        DateEdit1.SetFocus;
    result := true;
  end;
end;

procedure TFTexGur.setSeriaDateZag(ksmIdPrep : integer; seria , dateZag : string);
begin
  dm1.Seria.Close;
  Dm1.Seria.ParamByName('Ksm_id').AsInteger := ksmIdPrep;
  DM1.Seria.MacroByName('usl').AsString := '0=0';
  dm1.Seria.Open;

  if (dm1.Seria.Locate('seria;ksm_id', VarArrayOf([seria, ksmIdPrep]), [])) then
  begin
    dm1.Seria.Edit;
    if (dateZag = '') then
      dm1.SeriaDATE_ZAG.Clear
    else
      dm1.SeriaDATE_ZAG.AsDateTime := StrToDate(dateZag);
    dm1.Seria.Post;
    dm1.Seria.ApplyUpdates;
  end;
end;

procedure TFTexGur.loadPrepInfo(kodProd : string);
begin
  EDIT1.OnChange := nil;
  edit1.text := kodProd;
  EDIT1.OnChange := Edit1Change;
  edit9.text := '';
  q_spprod.Close;
  q_spprod.ParamByName('kod_prod').AsString := kodProd;
  q_spprod.Open;
  s_kodp := q_spprod.FieldByName('ksm_id').value;
  s_gost := q_spprod.FieldByName('GOST').AsString;
  s_xarkt := q_spprod.FieldByName('XARKT').AsString;
  s_nmat := q_spprod.FieldByName('NMAT').AsString;
  s_kei := q_spprod.FieldByName('KEI_ID').VALUE;
  s_korg := q_spprod.FieldByName('KORG').VALUE;
  s_kodProd := q_spprod.FieldByName('kod_prod').AsString;
  s_Lek_id := q_spprod.FieldByName('Lek_Id').VALUE;
  s_namorg := q_spprod.FieldByName('NAM').AsString;
  s_neiz := q_spprod.FieldByName('NEIS').AsString;
  s_Formv := q_spprod.FieldByName('NAMEFV').AsString;
  s_Sprod_id := q_spprod.FieldByName('Sprod_Id').VALUE;
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

  q_sdano.Close;
  q_sdano.ParamByName('struk_id').AsInteger := vStruk_Id;
  q_sdano.ParamByName('ksm_idpr').AsInteger := s_kodp;
  q_sdano.ParamByName('dat1').AsDate := StrToDate(s_dat1_period);
  q_sdano.ParamByName('dat2').AsDate := StrToDate(s_dat2_period);
  q_sdano.Open;
  q_sdano.First;
  if (not q_sdano.Eof) then
  begin
//     Label36.Caption:=floattostr(q_sdano.FieldByName('SDANO').AsFloat);
    s_SDANO := q_sdano.FieldByName('SDANO').AsFloat;
  end
  else
  begin
//   Label36.Caption:='0';
    s_SDANO := 0;
  end;
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

procedure TFTexGur.delEmptyZagrDocuments(seria : string; year, month, ksmIdPrep, strukId : integer);
var
  dateBegin, dateEnd : TDate;
  str_month : string;
begin
  if (month < 10) then
    str_month := '0' + IntToStr(month)
  else
    str_month := IntToStr(month);
  dateBegin := StrToDate('01.' + str_month + '.' + IntToStr(year));
  dateEnd := IncMonth(dateBegin, 1) - 1;
  if (openZagrDoc(seria, strukId, ksmIdPrep, dateBegin, dateEnd)) then
  begin
    q_doc.First;
    while (not q_doc.Eof) do
    begin
      openZagrKart(q_docDOC_ID.AsInteger);
      q_kart.FetchAll;
      if (q_kart.RecordCount = 0) then
        q_doc.Delete
      else
        q_doc.Next;
    end;
    if (q_doc.UpdatesPending) then
    begin
      q_doc.ApplyUpdates;
      dm1.commitWriteTrans(true);
    end;
  end;
end;

procedure TFTexGur.createTexGur(seria : string; year, month, ksmIdPrep, strukId : integer);
var
  dateBegin, dateEnd : TDate;
begin
  Splash := ShowSplashWindow(AniBmp1,
                                 'Загрузка данных. Подождите, пожалуйста...', True, nil);
  dm1.Seria.Close;
  dm1.IBT_WRITE.Active := FALSE;
  dm1.IBT_READ.Active := FALSE;
  StartWait;
  if (seria <> '') then
  begin
    mem_texGur.EmptyTable;
    mem_texGur.Open;
    mem_texGur.DisableControls;
    mem_texGurKSM_ID.OnValidate := nil;
    mem_texGur.BeforePost := nil;
    dateBegin := StrToDate('01.' + IntToStr(month) + '.' + IntToStr(year));
    dateEnd := IncMonth(dateBegin, 1) - 1;
    if (openNorms(year, month, ksmIdPrep, strukId)) then
      insertNormsToTexGur(ksmIdPrep);
    if (openZagrDoc(seria, strukId, ksmIdPrep, dateBegin, dateEnd)) then
    begin
      q_doc.First;
      while (not q_doc.Eof) do
      begin
        openZagrKart(q_docDOC_ID.AsInteger);
        insertKartToTexGur(ksmIdPrep);
        q_doc.Next;
      end;
    end;
    if (openPrepOst(strukId, ksmIdPrep, dateBegin, dateEnd)) then
      insertPrepOstToTexGur(ksmIdPrep);
    if (openCexOst(dateBegin, dateEnd, strukId)) then
      insertCexOstToTexGur;
    convertKeiId(ksmIdPrep);
    mem_texGur.SortOn('kraz;nmat', []);
    mem_texGur.First;
    mem_texGur.BeforePost := mem_texGurBeforePost;
    mem_texGurKSM_ID.OnValidate := mem_texGurKSM_IDValidate;
    mem_texGur.EnableControls;
  end;
  StopWait;
  Splash.Free;
end;

function TFTexGur.openNorms(year, month, ksmIdPrep, strukId : integer) : boolean;
begin
  result := false;
  q_norm.Close;
  q_norm.ParamByName('god').AsInteger := year;
  q_norm.ParamByName('mes').AsInteger := month;
  q_norm.ParamByName('kodp').AsInteger := ksmIdPrep;
  q_norm.ParamByName('struk_id').AsInteger := strukId;
  q_norm.Open;
  q_norm.First;
  if (not q_norm.Eof) then
    result := true;
end;

function TFTexGur.openZagrDoc(seria : string; strukId, ksmIdPrep : integer;
                              dateBegin, dateEnd : TDate) : boolean;
begin
  result := false;
  vNDoc := 'Заг_' + copy(label19.Caption, 1, 5) + '_' + seria;
  q_doc.Close;
  if (dateBegin = dateEnd) then
    q_doc.MacroByName('date_dok').AsString := ' document.date_op = '''
                                              + DateToStr(dateBegin) + ''' '
  else
    q_doc.MacroByName('date_dok').AsString := ' document.date_op between '''
                                              + DateToStr(dateBegin) + ''' and '''
                                              + DateToStr(dateEnd) + ''' ';
  q_doc.ParamByName('struk_id').AsInteger := strukId;
  q_doc.ParamByName('klient_id').AsInteger := ksmIdPrep;
  q_doc.MacroByName('doc_id').AsString := ' document.ndok = ' + '''' + VnDOC + ''' ';
  q_doc.Open;
  q_doc.First;
  if (not q_doc.Eof) then
    result := true;
end;

function TFTexGur.findOrCreateZagrDocument(seria : string; dateDok : TDate; docId,
                                           strukId, ksmIdPrep : integer) : boolean;
begin
  result := openZagrDoc(seria, strukId, ksmIdPrep, dateDok, dateDok);
  if (not result) or (q_docDOC_ID.AsInteger <> docId) then
  begin
    q_doc.Insert;
    q_docNDOK.AsString := vNDoc;
    q_docDATE_DOK.AsDateTime := dateDok;
    q_docDATE_OP.AsDateTime := dateDok;
    if (q_doc.Modified) or (q_doc.State = dsInsert) or (q_doc.State = dsEdit) then
      q_doc.Post;
    q_doc.ApplyUpdates;
    result := true;
  end;
end;

procedure TFTexGur.openZagrKart(docId : integer);
begin
  q_kart.Close;
  q_kart.ParamByName('doc_id').AsInteger := docId;
  q_kart.Open;
end;

procedure TFTexGur.insertNormsToTexGur(ksmIdPrep : integer);
begin
  q_norm.First;
  while (not q_norm.Eof) do
  begin
    mem_texGur.Append;
    mem_texGurKSM_ID.AsInteger := q_normKSM_ID.AsInteger;
    mem_texGurRAZDEL_ID.AsInteger := q_normRAZDEL_ID.AsInteger;
    mem_texGurKRAZ.AsInteger := q_normKRAZ.AsInteger;
    mem_texGurNMAT.AsString := q_normNMAT.AsString;
    mem_texGurKEI_ID_NORM.AsInteger := q_normKEIN.AsInteger;
    mem_texGurKEI_ID_KART.AsInteger := q_normKEIN.AsInteger;
    mem_texGurNEIS.AsString := q_normNEIS.AsString;
    mem_texGurPLNORM.AsFloat := q_normPLNORM.AsFloat;
    mem_texGurGOST.AsString := q_normGOST.AsString;
    mem_texGurXARKT.AsString := q_normXARKT.AsString;
    mem_texGurKSM_ID_PREP.AsInteger := ksmIdPrep;
    setDefaultDateDok;
    mem_texGur.Post;
    q_norm.Next;
  end;
end;

procedure TFTexGur.insertKartToTexGur(ksmIdPrep : integer);
begin
  q_kart.First;
  while (not q_kart.eof) do
  begin
    if (mem_texGur.Locate('ksm_id;razdel_id',
                          VarArrayOf([q_kartKSM_ID.AsInteger,
                                      q_kartRAZDEL_ID.AsInteger]),
                          [])) and (mem_texGurKOL_RASH_EDIZ.AsFloat = 0) then
    begin
      mem_texGur.Edit;
//      if (mem_texGurKOL_RASH_EDIZ.AsFloat = 0) then
        mem_texGurKOL_RASH_EDIZ.AsFloat := q_kartKOL_RASH_EDIZ.AsFloat;
//      else
//        mem_texGurKOL_RASH_EDIZ.AsFloat := mem_texGurKOL_RASH_EDIZ.AsFloat + q_kartKOL_RASH_EDIZ.AsFloat;
      mem_texGurKEI_ID_KART.AsInteger := q_kartKEI_ID.AsInteger;
      mem_texGurDOC_ID.AsInteger := q_kartDOC_ID.AsInteger;
      mem_texGurKART_ID.AsInteger := q_kartKART_ID.AsInteger;
      mem_texGurSTROKA_ID.AsInteger := q_kartSTROKA_ID.AsInteger;
      mem_texGurDATE_DOK.AsDateTime := q_docDATE_OP.AsDateTime;
      mem_texGurOLD_DATE_DOK.AsDateTime := q_docDATE_OP.AsDateTime;
      mem_texGurUSER_NAME.AsString := q_kartUSER_NAME.AsString;
      mem_texGur.Post;
    end
    else
    begin
      mem_texGur.Append;
      mem_texGurKSM_ID.AsInteger := q_kartKSM_ID.AsInteger;
      mem_texGurRAZDEL_ID.AsInteger := q_kartRAZDEL_ID.AsInteger;
      mem_texGurNEIS.AsString := q_kartNEIS.AsString;
      mem_texGurKRAZ.AsInteger := q_kartKRAZ.AsInteger;
      mem_texGurNMAT.AsString := q_kartNMAT.AsString;
      mem_texGurGOST.AsString := q_kartGOST.AsString;
      mem_texGurXARKT.AsString := q_kartXARKT.AsString;
      mem_texGurKSM_ID_PREP.AsInteger := ksmIdPrep;

      mem_texGurKOL_RASH_EDIZ.AsFloat := q_kartKOL_RASH_EDIZ.AsFloat;
      mem_texGurKEI_ID_KART.AsInteger := q_kartKEI_ID.AsInteger;
      mem_texGurDOC_ID.AsInteger := q_kartDOC_ID.AsInteger;
      mem_texGurKART_ID.AsInteger := q_kartKART_ID.AsInteger;
      mem_texGurSTROKA_ID.AsInteger := q_kartSTROKA_ID.AsInteger;
      mem_texGurDATE_DOK.AsDateTime := q_docDATE_OP.AsDateTime;
      mem_texGurOLD_DATE_DOK.AsDateTime := q_docDATE_OP.AsDateTime;
      mem_texGurUSER_NAME.AsString := q_kartUSER_NAME.AsString;
      mem_texGur.Post;
    end;
    q_kart.Next;
  end;
end;

function TFTexGur.openPrepOst(strukId, ksmIdPrep : integer;
                              dateBegin, dateEnd : TDate) : boolean;
begin
  result := false;
  q_ost.Close;
  q_ost.ParamByName('struk_id').AsInteger := strukId;
  q_ost.ParamByName('kodp').AsInteger := ksmIdPrep;
  q_ost.ParamByName('dat1').AsDate := dateBegin;
  q_ost.ParamByName('dat2').AsDate := dateEnd;
  q_ost.Open;
  q_ost.First;
  if (not q_ost.Eof) then
    result := true;
end;

procedure TFTexGur.insertPrepOstToTexGur(ksmIdPrep : integer);
begin
  q_ost.First;
  while (not q_ost.Eof) do
  begin
    if (mem_texGur.Locate('ksm_id;razdel_id',
                          VarArrayOf([q_ostKSM_ID.AsInteger,
                                      q_ostRAZDEL_ID.AsInteger]),
                          [])) then
    begin
      mem_texGur.Edit;
      mem_texGurOSTATOK_END_S.AsFloat := q_ostOSTATOK_END_S.AsFloat;
      mem_texGurOSTATOK_END_NZ.AsFloat := q_ostOSTATOK_END_NZ.AsFloat;
      mem_texGurKEI_ID_OST_PREP.AsInteger := q_ostKEI_ID.AsInteger;

      mem_texGurOSTATOK_BEGIN_S.AsFloat := q_ostOSTATOK_BEGIN_S.AsFloat;
      mem_texGurOSTATOK_BEGIN_NZ.AsFloat := q_ostOSTATOK_BEGIN_NZ.AsFloat;
      mem_texGurPRIX.AsFloat := q_ostPRIX.AsFloat;
      mem_texGurPEREDANO_PRIH_NZ.AsFloat := q_ostPEREDANO_PRIH_NZ.AsFloat;
      mem_texGurPRIX_PERIOD.AsFloat := q_ostPRIX_PERIOD.AsFloat;
      mem_texGurZAG.AsFloat := q_ostZAG.AsFloat;
      mem_texGurZAG_PERIOD.AsFloat := q_ostZAG_PERIOD.AsFloat;
      mem_texGurRASH_VIRAB_PERIOD.AsFloat := q_ostRASH_VIRAB_PERIOD.AsFloat;
      mem_texGurPEREDANO_RASH_S.AsFloat := q_ostPEREDANO_RASH_S.AsFloat;
      mem_texGurPEREDANO_RASH_NZ.AsFloat := q_ostPEREDANO_RASH_NZ.AsFloat;
      mem_texGur.Post;
    end
    else
    begin
      mem_texGur.Append;
      mem_texGurKSM_ID.AsInteger := q_ostKSM_ID.AsInteger;
      mem_texGurRAZDEL_ID.AsInteger := q_ostRAZDEL_ID.AsInteger;
      mem_texGurNEIS.AsString := q_ostNEIS_OST.AsString;
      mem_texGurKRAZ.AsInteger := q_ostKRAZ.AsInteger;
      mem_texGurNMAT.AsString := q_ostNMAT.AsString;
      mem_texGurKART_ID.AsInteger := q_ostKART_ID.AsInteger;
      mem_texGurGOST.AsString := q_ostGOST.AsString;
      mem_texGurXARKT.AsString := q_ostXARKT.AsString;
      mem_texGurKSM_ID_PREP.AsInteger := ksmIdPrep;

      mem_texGurOSTATOK_END_S.AsFloat := q_ostOSTATOK_END_S.AsFloat;
      mem_texGurOSTATOK_END_NZ.AsFloat := q_ostOSTATOK_END_NZ.AsFloat;
      mem_texGurOSTATOK_BEGIN_S.AsFloat := q_ostOSTATOK_BEGIN_S.AsFloat;
      mem_texGurOSTATOK_BEGIN_NZ.AsFloat := q_ostOSTATOK_BEGIN_NZ.AsFloat;
      mem_texGurPRIX.AsFloat := q_ostPRIX.AsFloat;
      mem_texGurPEREDANO_PRIH_NZ.AsFloat := q_ostPEREDANO_PRIH_NZ.AsFloat;
      mem_texGurPRIX_PERIOD.AsFloat := q_ostPRIX_PERIOD.AsFloat;
      mem_texGurZAG.AsFloat := q_ostZAG.AsFloat;
      mem_texGurZAG_PERIOD.AsFloat := q_ostZAG_PERIOD.AsFloat;
      mem_texGurRASH_VIRAB_PERIOD.AsFloat := q_ostRASH_VIRAB_PERIOD.AsFloat;
      mem_texGurPEREDANO_RASH_S.AsFloat := q_ostPEREDANO_RASH_S.AsFloat;
      mem_texGurPEREDANO_RASH_NZ.AsFloat := q_ostPEREDANO_RASH_NZ.AsFloat;
      mem_texGurKEI_ID_OST_PREP.AsInteger := q_ostKEI_ID.AsInteger;
      setDefaultDateDok;
      mem_texGur.Post;
    end;
    q_ost.Next;
  end;
end;

procedure TFTexGur.mem_texGurBeforePost(DataSet: TDataSet);
begin
  If (mem_texGurRazdel_id.AsInteger = 0) then
  begin
    MessageDlg('Введите раздел!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If (mem_texGur.FieldByName('ksm_id').AsInteger = 0) then
  begin
    MessageDlg('Введите код сырья!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If (mem_texGur.FieldByName('kei_id_kart').AsInteger = 0) and
      (mem_texGur.FieldByName('kei_id_norm').AsInteger = 0) and
      (mem_texGur.FieldByName('kei_id_ost_prep').AsInteger = 0) and
      (mem_texGur.FieldByName('kei_id_ost_cex').AsInteger = 0) then
  begin
    MessageDlg('Введите единицу измерения!', mtWarning, [mbOK], 0);
    Abort;
  end;
end;

procedure TFTexGur.mem_texGurKRAZValidate(Sender: TField);
begin
  dM1.Razdel.Active := true;
  if (dM1.Razdel.Locate('kraz', mem_texGurKraz.AsInteger,[])) then
    mem_texGurRazdel_id.AsInteger := dM1.RazdelRazdel_id.AsInteger
  else
    showMessage('Нет такого кода! Воспользуйтесь справочником!');
end;

procedure TFTexGur.mem_texGurKSM_IDValidate(Sender: TField);
begin
  dM1.Matrop.Active := false;
  dM1.Matrop.ParamByName('ksm').AsInteger := mem_texGur.FieldByName('Ksm_Id').AsInteger;
  dM1.Matrop.Active := TRUE;
  if (not dm1.Matrop.eof) then
  begin
    mem_texGur.FieldByName('Nmat').AsString := dm1.Matrop.FieldByName('Nmat').AsString;
    mem_texGur.FieldByName('Kei_Id_kart').AsInteger := dm1.Matrop.FieldByName('Kei_id').AsInteger;
    mem_texGurNEIS.AsString := dm1.Matrop.FieldByName('Neis').AsString;
//    mem_texGurRAZDEL_ID.AsInteger := curRazdelId;
//    mem_texGurKRAZ.AsInteger := curKraz;
  end
  else
    showMessage('Нет такого кода! Воспользуйтесь справочником!');   
end;

function TFTexGur.openCexOst(dateBegin, dateEnd : TDate; strukId : integer) : boolean;
var
  ksmArr : string;
  i, ksmLength : integer;
  findedKsm : boolean;
  ksmArray : array of integer;
begin
  result := false;
  ksmLength := 0;
  if (mem_texGur.RecordCount > 0) then
  begin
    for i := 0 to ksmLength - 1 do
      ksmArray[i] := 0;
    SetLength(ksmArray, 0);
    ksmLength := 0;
    ksmArr := '';
    mem_texGur.First;
    while (not mem_texGur.Eof) do
    begin
      findedKsm := false;
      for i := 0 to ksmLength - 1 do
      begin
        if (ksmArray[i] = mem_texGurKSM_ID.AsInteger) then
          findedKsm := true;
      end;
      if (not findedKsm) then
      begin
        ksmLength := ksmLength + 1;
        SetLength(ksmArray, ksmLength);
        ksmArray[ksmLength - 1] := mem_texGurKSM_ID.AsInteger;
      end;
      mem_texGur.Next;
    end;
    for i := 0 to ksmLength - 1 do
    begin
      ksmArr := ksmArr + IntToStr(ksmArray[i]);
      if (i <> (ksmLength - 1)) then
        ksmArr := ksmArr + ', '
      else
        ksmArr := ksmArr + '  ';
    end;
    ostceh.Close;
    ostceh.ParamByName('dat1').AsDateTime := dateBegin;
    ostceh.ParamByName('dat2').AsDateTime := dateEnd;
    ostceh.ParamByName('struk_id').AsInteger := strukId;
    ostceh.ParamByName('ksm_id').AsInteger := 0;
    if (vStruk_Id = 540) then
      ostceh.ParamByName('struk_id_rela').AsInteger := 1
    else
      ostceh.ParamByName('struk_id_rela').AsInteger := 0;
    ostceh.ParamByName('ksm_array').AsString := ksmArr;
    ostceh.Open;
    ostCeh.First;
    if (not ostCeh.Eof) then
      result := true;
  end;
end;

procedure TFTexGur.insertCexOstToTexGur;
begin
  mem_texGur.First;
  while (not mem_texGur.Eof) do
  begin
    ostceh.First;
    if (ostceh.Locate('ksm_id', mem_texGur.FieldByName('Ksm_id').AsInteger, [])) THEN
    begin
      mem_texGur.Edit;
      mem_texGurOSTATOK_END_S_CEX.AsFloat := ostcehOSTATOK_END_S.asfloat;
      mem_texGurKEI_ID_OST_CEX.AsInteger := ostcehKEI_ID.AsInteger;
      mem_texGur.Post;
    end;
    mem_texGur.Next;
  end;
end;

procedure TFTexGur.cb_allSyrClick(Sender: TObject);
begin
  if (cb_allSyr.Checked) then
  begin
    openZagSyr(vStruk_Id, 0, 0, 0, StrToDate(s_dat1_period), StrToDate(s_dat2_period), Usl_SORT)
  end
  else
  begin
    openZagSyr(vStruk_Id, mem_texGurKSM_ID.AsInteger, 34, 0,
                 StrToDate(s_dat1_period), StrToDate(s_dat2_period), Usl_SORT);
  end;
end;

procedure TFTexGur.convertKeiId(ksmIdPrep : integer);
begin
  mem_texGur.First;
  while (not mem_texGur.Eof) do
  begin
    tochn := dm1.getTochn(ksmIdPrep, mem_texGurKSM_ID.AsInteger);
    mem_texGur.Edit;
    convertRecord(mem_texGurKOL_RASH_EDIZ, true, false, false, tochn);
    convertRecord(mem_texGurOSTATOK_END_S, false, true, false, tochn);
    convertRecord(mem_texGurOSTATOK_END_NZ, false, true, false, tochn);
    convertRecord(mem_texGurOSTATOK_BEGIN_S, false, true, false, tochn);
    convertRecord(mem_texGurOSTATOK_BEGIN_NZ, false, true, false, tochn);
    convertRecord(mem_texGurPRIX, false, true, false, tochn);
    convertRecord(mem_texGurPEREDANO_PRIH_NZ, false, true, false, tochn);
    convertRecord(mem_texGurPRIX_PERIOD, false, true, false, tochn);
    convertRecord(mem_texGurZAG, false, true, false, tochn);
    convertRecord(mem_texGurZAG_PERIOD, false, true, false, tochn);
    convertRecord(mem_texGurRASH_VIRAB_PERIOD, false, true, false, tochn);
    convertRecord(mem_texGurPEREDANO_RASH_S, false, true, false, tochn);
    convertRecord(mem_texGurPEREDANO_RASH_NZ, false, true, false, tochn);
    convertRecord(mem_texGurOSTATOK_END_S_CEX, false, false, true, tochn);
    mem_texGur.Post;
    mem_texGur.Next;
  end;
end;

procedure TFTexGur.convertRecord(var value : TFloatField; kart, ostPrep, ostCex : boolean;
                                 tochn : integer);
var
  keiFrom, keiTo : integer;
begin
  keiFrom := 0;
  if (value.AsFloat <> 0) then
  begin
    if (kart) then
      keiFrom := mem_texGurKEI_ID_KART.AsInteger;
    if (ostPrep) then
      keiFrom := mem_texGurKEI_ID_OST_PREP.AsInteger;
    if (ostCex) then
      keiFrom := mem_texGurKEI_ID_OST_CEX.AsInteger;
    if (mem_texGurPLNORM.AsFloat = 0) then
      keiTo := mem_texGurKEI_ID_KART.AsInteger
    else
      keiTo := mem_texGurKEI_ID_NORM.AsInteger;
    if (keiFrom <> keiTo) then
      value.AsFloat := RoundTo(value.AsFloat * dm1.Koef_per(keiTo,
                                                            keiFrom,
                                                            mem_texGurKSM_ID.AsInteger),
                               tochn);
  end;
end;

procedure TFTexGur.Edit1Change(Sender: TObject);
begin
if edit1.text<>''   then begin
 skod:=replacestr(edit1.text,',','.')+'%';
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,SPPROD.SPROD_ID,SPPROD.VOL_ov,SPPROD.VOLumf,');
 DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,SPPROD.LEK_ID,SPFORMV.NAMEFv,region.nam nam_reg');
 DM1.IBQuery1.SQL.Add(' FROM SPPROD');
 DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
 DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
 DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
 DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+skod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
  begin
   Label19.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label11.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
   Label3.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  end
  else
  begin
   Label19.Caption:='';
   Label11.Caption:='';
   Label3.Caption:='';
  end;
 Label19.Refresh;
 Label11.Refresh;
 end;
end;

procedure TFTexGur.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    StartWait;
    if (edit1.text <> '') and (not dm1.IBQuery1.Eof)  then
    begin
      edit9.text := '';
      EDIT1.OnChange := nil;
      edit1.text := DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
      EDIT1.OnChange := Edit1Change;
      loadPrepInfo(DM1.IBQuery1.FieldByName('kod_PROD').Asstring);
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
  FreeAndNil(drLoad);
end;

procedure TFTexGur.Edit2KeyDown(Sender: TObject; var Key: Word;
                                Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    acceptSeria(sender);
  end;
end;

procedure TFTexGur.acceptSeria(Sender: TObject);
begin
  if (edit2.text <> '') then
    begin
      if (edit9.Text <> '') and (edit9.Text <> '0') then
        s_vip := strtofloat(edit9.Text)
      else
        s_vip := 0;
      s_seria := edit2.Text;
      s_ksm := s_kodp;
      dm1.Seria.Close;
      Dm1.Seria.ParamByName('Ksm_id').AsInteger := S_KODP;
      dm1.Seria.Open;
      if (dm1.Seria.Locate('seria;ksm_id', VarArrayOf([s_seria,s_kodp]), [])) then
      begin
        vseria_id := dm1.SeriaSeria_id.AsInteger;
        s_kol_seria := DM1.SeriaKol_Seria.AsFloat;
        edit9.Text := floattostr(s_kol_seria);
        if (dm1.SeriaDATE_ZAG.AsVariant <> null) then
        begin
          DateEdit1.Date := dm1.SeriaDATE_ZAG.AsDateTime;
          DateEdit1.ReadOnly := false;
          createTexGur(s_seria, god, mes, s_kodp, vStruk_id);
        end
        else
        begin
          DateEdit1.ReadOnly := false;
          DateEdit1.SetFocus;
        end;
      end
      else
      begin
        dm1.Seria.Insert;
        dm1.Seria.Post;
        DateEdit1.ReadOnly := false;
        DateEdit1.SetFocus;
      end;
      if (dm1.Seria.Active) then
      begin
        dm1.Seria.Edit;
        dm1.SeriaFORMA_VIPUSK.AsString := s_Formv;
        DM1.Seria.Post;
      end;
    end;
end;

procedure TFTexGur.Edit9Click(Sender: TObject);
begin
  edit9.Text := ''
end;

procedure TFTexGur.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    if (edit9.Text <> '') then
    begin
      s_vip := strtofloat(edit9.Text);
    end;
  end;
end;

procedure TFTexGur.Edit1Click(Sender: TObject);
begin
 edit1.text:='';
 edit2.text:='';
 vSeria_id:=0;
 IF  fSprFormul.CEH_NormZ.Active THEN
  fSprFormul.CEH_NormZ.Active:=FALSE;
end;

procedure TFTexGur.btn_saveSeriaClick(Sender: TObject);
var
  curSeria : string;
begin
  if (mem_texGur.Modified)
     or (mem_texGur.State = dsEdit)
     or (mem_texGur.State = dsInsert) then
    mem_texGur.Post;
  s_seria := edit2.Text;
  curSeria := s_seria;
  if (s_seria <> '') then
  begin
    Splash := ShowSplashWindow(AniBmp1,
                               'Сохранение данных. Подождите, пожалуйста...', True, nil);
    try
      mem_texGur.DisableControls;

      saveSeriaAndOstatki;
      saveMemTexGur;
      s_seria := edit2.Text;
      delEmptyZagrDocuments(s_seria, god, mes, s_kodp, vStruk_Id);
      dm1.commitWriteTrans(true);
      Splash.Free;

      createTexGur(curSeria, god, mes, s_kodp, vStruk_id);
      mem_texGur.EnableControls;
    except
      on E : exception do
      begin
        MessageDlg('Произошла ошибка при записи!', mtWarning, [mbOK], 0);
        mem_texGur.EnableControls;
        DM1.IBT_Read.RollbackRetaining;
        Splash.Free;
      end;
    end;
  end;
end;

procedure TFTexGur.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  q_norm.Close;
  mem_texGur.EmptyTable;
  mem_texGur.Close;

//  FreeAndNil(drLoad);
  DM1.Seria.Close;
  DM1.Ostatki.Close;
  vseria_id := 0;
end;

procedure TFTexGur.MyGetValue(const s: String; var v: Variant);
begin
 if UpperCase(S)='V2' then if FTexGur.Edit9.Text<>'' then v:=strtofloat(FTexGur.Edit9.Text) else v:=0;
end;

procedure TFTexGur.MyGetValue1(const s: String; var v: Variant);
begin
 if UpperCase(S)='V2' then if FTexGur.Edit9.Text<>'' then v:=strtofloat(FTexGur.Edit9.Text) else v:=0;
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

procedure TFTexGur.ToolButton9Click(Sender: TObject);
begin
 if MessageDlg('Пересчитать загрузку?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
 begin
  pr_button9:=false;
//  TexGur.First;
{  While not TexGur.Eof do
  begin
   if (TexGurFormula.Asstring<>'  ')and (TexGurFormula.Asstring<>'0') then
   begin
    vFormula:=TfrParser.Create;
    try
     TexGur.Edit;
     IF TexGurDECZNAK.AsVariant=null THEN  TexGurDECZNAK.AsInteger:=3;
     Tochn:=0-TexGurDecznak.AsInteger;
     vFormula.OnGetValue:=MyGetValue1;
     s_kol_zag:=vFormula.Calc(TexGurFormula.Asstring);
     TexGurKol_Rash_EDIZ.asFloat:=SimpleRoundTo(strtofloat(s_kol_zag),Tochn);
//     TexGur.Post;
    finally
     vFormula.Free;
    end;
   end;
   TexGur.Next;
  end; }
 end;
 pr_button9:=true;
end;

procedure TFTexGur.btn_openSeriaClick(Sender: TObject);
begin
  openZagrSeriaTab(q_prepSeriesKOD_PROD.AsString, q_prepSeriesSERIA.AsString,
                   q_prepSeriesKSM_ID.AsInteger, mes, god, vStruk_id);
end;

procedure TFTexGur.btn_vipuskListClick(Sender: TObject);
begin
  if (FVybPrep = nil) then
    FVybprep := TfVybPrep.Create(Application);
  FVybPrep.ShowModal;
  if (FVybPrep.ModalResult = mrOk) then
  begin
    StartWait;
    s_kodp := FVybPrep.mem_vipuskKsm_id.AsInteger;

    loadPrepInfo(FVybPrep.mem_vipuskKOD_PROD.AsString);
  end;
  StopWait;
end;

procedure TFTexGur.Button1Click(Sender: TObject);
// var s_kol: double;
begin
{ IF not fSprFormul.CEH_NormZ.Active THEN
 begin
  SORTf:=' ORDER BY CEH_NORMZ.RAZDEL_ID,CEH_NORMZ.KSM_ID_MAT ';
  USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(s_Kodp);
  fSprFormul.CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
  fSprFormul.CEH_NormZ.MacroByName('USL').AsString:=USLf;
  fSprFormul.CEH_NormZ.Open
 end;
 FSprFormul.CEH_NORMZ.First;
 if FSprFormul.CEH_NORMZ.Locate('ksm_id_mat;razdel_id',VarArrayOf([texGurKsm_id.AsInteger,texGurRazdel_id.AsInteger]),[]) then
  FSprFormul.CEH_NORMZ.Edit
 ELSE
 BEGIN
  FSprFormul.CEH_NORMZ.Insert;
  FSprFormul.CEH_NORMZKsm_id_PR.AsInteger:=S_KODP;
  FSprFormul.CEH_NORMZKsm_id_mat.AsInteger:=texGurKsm_id.AsInteger;
  FSprFormul.CEH_NORMZRazdel_id.AsInteger:=texGurRazdel_id.AsInteger;
 END;

 FSprFormul.CEH_NORMZ.Post;
 FSprFormul.CEH_NORMZ.ApplyUpdates;
 TEXGUR.Edit;

 vFormula:=TfrParser.Create;
 try
   vFormula.OnGetValue:=MyGetValue;
   s_kol:=strtofloat(vFormula.Calc(TexGurFormula.Asstring));
  TexGurKol_Rash_ediz.asFloat:=SimpleRoundTo(s_kol,Tochn);
 finally
  vFormula.Free;
 end; }
end;

procedure TFTexGur.PageControl1Change(Sender: TObject);
begin
  initToolButtons;
  if (PageControl1.ActivePage = tab_zagr) then
  BEGIN
    USL_SORT := '7,9';
  end;
  if (PageControl1.ActivePage = tabsheet2) then
  begin
    cb_allSyr.OnClick := nil;
    if (mem_texGurKSM_ID.AsInteger = 0) then
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
  if (PageControl1.ActivePage = tab_series) then
  begin
    openPrepSeries(StrToDate(s_dat1), StrToDate(s_dat2), vStruk_Id);
  end;
end;

procedure TFTexGur.initToolButtons;
begin
  if (PageControl1.ActivePage = tab_zagr) then
  BEGIN
{    ToolButton1.Visible := true;
    btn_delRec.Visible := true;
    btn_delAll.Visible := true;
    ToolButton6.Visible := true;
    btn_saveSeria.Visible := true;
    btn_vipuskList.Visible := true;      }
    ToolButton1.Visible := false;
    btn_delRec.Visible := false;
    btn_delAll.Visible := false;
    ToolButton6.Visible := false;
    btn_saveSeria.Visible := false;
    btn_vipuskList.Visible := false;    
  end;
  if (PageControl1.ActivePage = tabsheet2)
     or (PageControl1.ActivePage = tab_series) then
  begin
    {ToolButton1.Visible := false;
    btn_delRec.Visible := false;
    btn_delAll.Visible := false;
    btn_saveSeria.Visible := false;
    ToolButton6.Visible := true;
    btn_vipuskList.Visible := false;}
    ToolButton1.Visible := false;
    btn_delRec.Visible := false;
    btn_delAll.Visible := false;
    btn_saveSeria.Visible := false;
    ToolButton6.Visible := false;
    btn_vipuskList.Visible := false;
  end;
  
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
    ToolButton1.Enabled := True;
    btn_delRec.Enabled := True;
    btn_delAll.enabled := true;
    btn_saveSeria.Enabled := True;
    ToolButton9.Enabled := True;
    {ToolButton1.Enabled := False;
    btn_delRec.Enabled := False;
    btn_delAll.enabled := False;
    btn_saveSeria.Enabled := False;
    ToolButton9.Enabled := False; }
  end;
  if (MODE = 2) then
  begin
    ToolButton1.Enabled := False;
    btn_delRec.Enabled := false;
    btn_delAll.enabled := false;
    btn_saveSeria.Enabled := false;
    ToolButton9.Enabled := false;
  end;
end;

procedure TFTexGur.q_docBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_DOCUMENT';
  DM1.Add_KartDok.ExecProc;
  vDocument_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
  curDocId := vDocument_Id;
end;

procedure TFTexGur.q_docNewRecord(DataSet: TDataSet);
begin
  q_docDOC_ID.AsInteger := vDocument_Id;
  curDocId := vDocument_Id;
  q_docTIP_OP_ID.AsInteger := 33;
  q_docTIP_DOK_ID.AsInteger := 34;
  q_docSTRUK_ID.AsInteger := vStruk_Id;
  q_docDATE_DOK.AsDateTime := dateEdit1.Date;
  q_docDATE_OP.AsDateTime := dateEdit1.Date;
  q_docKLIENT_ID.AsInteger := s_kodp;
end;

procedure TFTexGur.q_kartBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_KART';
  DM1.Add_KartDok.ExecProc;
  vStroka_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
  curStrokaId := vStroka_Id;
end;

procedure TFTexGur.q_kartNewRecord(DataSet: TDataSet);
begin
  q_kartDOC_ID.AsInteger := q_docDOC_ID.AsInteger;
  q_kartSTROKA_ID.AsInteger := curStrokaId;
  q_kartTIP_OP_ID.AsInteger := 33;
  q_kartTIP_DOK_ID.AsInteger := 34;
  q_kartKOL_PRIH_EDIZ.AsFloat := 0.0;
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
  if (FSprFormul = nil) then
    FSprFormul := TfSprFormul.Create(Application);
  SpinEdit3.Value := mes;
  SpinEdit4.Value := god;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1_period := '01.' + S_MES + '.' + INTTOSTR(GOD);
  S_DAT2_period := datetostr(IncMonth(strtodate(s_dat1_period), 1) -1);

//  PageControl1.ActivePage := tab_zagr;
  PageControl1.ActivePage := tab_series;
  PageControl1Change(sender);

  USL_SORT := '7,9';
  usl_dat := ' SERIA.Date_ZAG between ' + '''' + s_dat1_period + '''' + ' and '
             + '''' + s_dat2_period + '''';
  DM1.ConfigUMC.close;
  DM1.ConfigUMC.MacroByName('USL').AsString := 'configumc.STRUK_ID = ' + IntToStr(vSTRUK_ID);
  DM1.ConfigUMC.Open;
  initToolButtons;
  DM1.ConfigUMC.close;
  if (s_kodp <> 0) then
  begin
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID, SPPROD.NMAT, SPPROD.KOD_PROD, '
                         + 'SPPROD.KEI_ID, SPPROD.KSM_ID, SPPROD.SPROD_ID, '
                         + 'SPPROD.VOL_ov, SPPROD.VOLumf,');
    DM1.IBQuery1.SQL.Add('SPPROD.GOST, EDIZ.NEIS, SPPROD.KORG, SPPROD.XARKT, '
                         + 'SPPROD.ACTIVP, SPRORG.NAM, SPPROD.LEK_ID, SPFORMV.NAMEFv, region.nam nam_reg');
    DM1.IBQuery1.SQL.Add(' FROM SPPROD');
    DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
    DM1.IBQuery1.SQL.Add(' WHERE SPPROD.Ksm_id=' + inttostr(s_kodp)
                         + ' AND SPPROD.STRUK_ID=' + INTTOSTR(vStruk_Id));
    DM1.IBQuery1.Active := True;
    if (not dm1.IBQuery1.Eof) then
    begin
      EDIT1.OnChange := nil;
      edit1.text := DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
      EDIT1.OnChange := Edit1Change;
//  edit17.text:=floattostr(DM1.IBQuery1.FieldByName('vol_ov').Asfloat);
      s_kodp := DM1.IBQuery1.FieldByName('KSM_ID').value;
      s_gost := DM1.IBQuery1.FieldByName('GOST').AsString;
      s_xarkt := DM1.IBQuery1.FieldByName('XARKT').AsString;
      s_nmat := DM1.IBQuery1.FieldByName('NMAT').AsString;
      s_kei := DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
      s_korg := DM1.IBQuery1.FieldByName('KORG').VALUE;
      s_kodProd := DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
      s_Lek_id := DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
      s_namorg := DM1.IBQuery1.FieldByName('NAM').AsString;
      s_neiz := DM1.IBQuery1.FieldByName('NEIS').AsString;
      s_Formv := DM1.IBQuery1.FieldByName('NAMEFV').AsString;
      s_Sprod_id := DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
      s_namREG := DM1.IBQuery1.FieldByName('NAM_ReG').AsString;
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT *');
      DM1.IBQuery1.SQL.Add(' FROM UTPLAN');
      DM1.IBQuery1.SQL.Add(' WHERE UTPLAN.MES=' + inttostr(mes)
                           + ' AND UTPLAN.GOD=' + inttostr(god)
                           + ' AND UTPLAN.SPROD_ID=' + inttostr(s_sprod_id));
      DM1.IBQuery1.Active := True;
      if (not dm1.IBQuery1.Eof) then
      begin
        Label26.Caption := floattostr(DM1.IBQuery1.FieldByName('PLAN').AsFloat);
        s_plan := DM1.IBQuery1.FieldByName('PLAN').AsFloat;
      end
      else
      begin
        Label26.Caption := '0';
        s_plan := 0;
      end;
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT kartv.kol_prih');
      DM1.IBQuery1.SQL.Add(' FROM KARTV ');
      DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTV.DOC_ID = DOCUMENT.DOC_ID)');
      DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                           + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                           + ' AND KARTV.KSM_ID=' + INTTOSTR(s_KODP)
                           + ' AND Document.Date_op between ' + '''' + s_dat1_period
                           + '''' + ' and ' + '''' + s_dat2_period + '''');
      DM1.IBQuery1.Active := True;
      if (not dm1.IBQuery1.Eof) then
      begin
        Label34.Caption := floattostr(DM1.IBQuery1.FieldByName('kol_prih').AsFloat);
        s_OPLan := DM1.IBQuery1.FieldByName('kol_prih').AsFloat;
      end
      else
      begin
        Label34.Caption := '0';
        s_Oplan := 0;
      end;
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT SUM(kart.kol_prih) SDANO');
      DM1.IBQuery1.SQL.Add(' FROM KART ');
      DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)');
      DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.KLIENT_ID=' + INTTOSTR(VsTRUK_ID)
                           + ' AND DOCUMENT.TIP_OP_ID=2' + ' AND KART.KSM_ID='
                           + INTTOSTR(s_KODP) + ' AND Document.Date_op between '
                           + '''' + s_dat1_period + '''' + ' and ' + '''' + s_dat2_period + '''');
      DM1.IBQuery1.Active := True;
      if (not dm1.IBQuery1.Eof) then
      begin
    //     Label36.Caption:=floattostr(DM1.IBQuery1.FieldByName('SDANO').AsFloat);
        s_SDANO := DM1.IBQuery1.FieldByName('SDANO').AsFloat;
      end
      else
      begin
    //     Label36.Caption:='0';
        s_SDANO := 0;
      end;
      label19.caption := s_NMAT;
      label28.caption := Inttostr(s_KORG);
      label29.caption := s_namorg;
      label21.caption := s_Neiz;
      label22.caption := s_GOST;
      label11.caption := s_Xarkt;
      label45.caption := s_Formv;
      label3.caption := s_namREG;
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
  //   label36.Caption:='';
      label28.Caption := '';
      label45.Caption := '';
      DateEdit1.Date := date;
      Edit1.Text := '';
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
    Edit1.Text := '';
//  Edit17.Text:='';
  end;
  Edit2.Text := '';
  Edit9.Text := '';
  pr_button9 := true;
  prov := false;
//  Edit1.SetFocus;

//  drLoad := TDrugLoad.Create(DM1.BELMED);
//  drLoad := TDrugLoad.Create(dm1.BELMED.DatabaseName,
//                             dm1.BELMED.Params.Values['user_name'],
//                             dm1.BELMED.Params.Values['password'],
//                             dm1.BELMED.Params.Values['sql_role_name']);
end;

procedure TFTexGur.DBGridEh4DblClick(Sender: TObject);
begin
  if (ZagSyrTIP_DOK_ID.AsInteger = 34) then
  begin
    s_seria := Copy(ZagSyrNDOK.AsString, 11, length(ZagSyrNDOK.AsString));
    s_ksm := s_kodp;

    openZagrSeriaTab(ZagSyrKOD_PREP.AsString, s_seria, ZagSyrKODP.AsInteger,
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
    if (DateEdit1.text <> '' )and (DateEdit1.text <= s_dat2_period)  then
    begin
      acceptSeria(sender);
      createTexGur(s_seria, god, mes, s_kodp, vStruk_id);
    end;
end;

procedure TFTexGur.Edit2Click(Sender: TObject);
begin
  edit2.text := '';
  edit9.text := '';
end;

procedure TFTexGur.btn_delAllClick(Sender: TObject);
begin
  delAllTexGurRecords;
end;

procedure TFTexGur.btn_delRecClick(Sender: TObject);
begin
  delTexGurRecord;
end;

procedure TFTexGur.ToolButton1Click(Sender: TObject);
begin
  s_seria_p := s_seria;
//  curRazdelId := mem_texGurRAZDEL_ID.AsInteger;
//  curKraz := mem_texGurKRAZ.AsInteger;
  curKsmIdPrep := mem_texGurKSM_ID_PREP.AsInteger;

  mem_texGur.BeforePost := nil;
  mem_texGur.Insert;
  mem_texGurADD.AsBoolean := true;
//  mem_texGurRAZDEL_ID.AsInteger := curRazdelId;
//  mem_texGurKRAZ.AsInteger := curKraz;
  mem_texGurKSM_ID_PREP.AsInteger := curKsmIdPrep;
  setDefaultDateDok;
  mem_texGur.BeforePost := mem_texGurBeforePost;
  s_seria := s_seria_p;
end;

procedure TFTexGur.setDefaultDateDok;
var
  day, month, year : word;
begin
  DecodeDate(now, year, month, day);
  if (month > mes) then
  begin
    mem_texGurDATE_DOK.AsDateTime := StrToDate(s_dat2);
    mem_texGurOLD_DATE_DOK.AsDateTime := StrToDate(s_dat2);
  end
  else
  begin
    mem_texGurDATE_DOK.AsDateTime := now;
    mem_texGurOLD_DATE_DOK.AsDateTime := now;
  end;
end;

procedure TFTexGur.grid_seriesDblClick(Sender: TObject);
begin
  openZagrSeriaTab(q_prepSeriesKOD_PROD.AsString, q_prepSeriesSERIA.AsString,
                   q_prepSeriesKSM_ID.AsInteger, mes, god, vStruk_id);
end;

procedure TFTexGur.grid_seriesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) then
    openZagrSeriaTab(q_prepSeriesKOD_PROD.AsString, q_prepSeriesSERIA.AsString,
                     q_prepSeriesKSM_ID.AsInteger, mes, god, vStruk_id);
end;

procedure TFTexGur.grid_zagrDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if ((mem_texGurKOL_RASH_EDIZ.AsFloat = 0) and (Column.FieldName = 'KOL_RASH_EDIZ'))
     or ((mem_texGurZAG_PERIOD.AsFloat = 0) and (Column.FieldName = 'ZAG_PERIOD')) then
    grid_zagr.Canvas.Font.Style := [fsItalic];
  if (mem_texGurDELETE.AsBoolean = true) then
  begin
    if (mem_texGurADD.AsBoolean = true) then
      grid_zagr.Canvas.Brush.Color := clYellow
    else
      grid_zagr.Canvas.Brush.Color := clRed;
  end;

  if (mem_texGurADD.AsBoolean = true) then
  begin
    if (mem_texGurDELETE.AsBoolean = true) then
      grid_zagr.Canvas.Brush.Color := clYellow
    else
      grid_zagr.Canvas.Brush.Color := clMoneyGreen;
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
  mem_texGur.Edit;
  case nm of
  1: begin
      if (mem_texGurPLNORM.AsFloat <> 0) then
        MessageDlg('Нельзя менять единицу измерения на занормированном сырье!',
                   mtWarning, [mbOK], 0)
      else
      begin
        if (FEdiz = nil) then
          FEdiz := TFEdiz.Create(Application);
        FEdiz.ShowModal;
        if (FEdiz.ModalResult > 50) then
        begin
          s_kei := FEdiz.ModalResult - 50;
          mem_texGurKEI_ID_KART.AsInteger := DM1.EdizKei_id.AsInteger;
          mem_texGurKEI_ID_NORM.AsInteger := DM1.EdizKei_id.AsInteger;
          mem_texGurNEIS.AsString := DM1.EdizNeis.AsString;
        end;
      end;
     end;
  2: begin
      if (mem_texGurPLNORM.AsFloat <> 0) then
        MessageDlg('Нельзя менять код занормированного сырья! Вставьте новую строку в отчет.',
                   mtWarning, [mbOK], 0)
      else
      begin
        if (FindMatrop = nil) then
          FindMatrop := TfindMatrop.Create(Application);
        FindMatrop.DataBaseName := dm1.BELMED;
        FindMatrop.ReadOnly := true;
        FindMatrop.ShowModal;
        if (FindMatrop.ModalResult > 50) then
        begin
          mem_texGur.FieldByName('Ksm_Id').AsInteger := FindMatrop.ModalResult - 50;
          mem_texGur.FieldByName('Nmat').AsString := FindMatrop.IBMatropNMAT.AsString;
          mem_texGur.FieldByName('Kei_Id_kart').AsInteger := FindMatrop.IBMatropKei_id.AsInteger;
          mem_texGur.FieldByName('Kei_Id_NORM').AsInteger := FindMatrop.IBMatropKei_id.AsInteger;
          mem_texGur.FieldByName('NEIS').AsString := FindMatrop.IBMatropNEIS.AsString;
        end;
      end;
     end;
  3: begin
      if (mem_texGurPLNORM.AsFloat <> 0) then
        MessageDlg('Нельзя менять код занормированного сырья! Вставьте новую строку в отчет.',
                   mtWarning, [mbOK], 0)
      else
      begin
        if (FRazdel = nil) then
          FRazdel := TFRazdel.Create(Application);
        FRazdel.ShowModal;
        if (FRazdel.ModalResult > 50) then
        begin
         mem_texGurRazdel_id.AsInteger := FRazdel.ModalResult - 50;
         mem_texGurKraz.AsInteger := s_Razdel;
        end;
      end;
    end;
  end;
end;


procedure TFTexGur.frReport2GetValue(const ParName: String;
  var ParValue: Variant);
begin
 if ParName='Kod_prod' then ParValue:=FTexGur.Edit1.Text;
 if ParName='gost' then ParValue:=FTexGur.Label22.Caption;
 if ParName='xarkt' then ParValue:=FTexGur.Label11.Caption;
 if ParName='namorg' then ParValue:=FTexGur.Label29.Caption;
 if ParName='namcex' then ParValue:=FGlMenu.RxLabel1.Caption;
 if ParName='nmat' then ParValue:=FTexGur.Label19.Caption;
 if ParName='neis' then ParValue:=FTexGur.Label21.Caption;
 if ParName='seria' then ParValue:=FTexGur.Edit2.Text;
 if ParName='dat_ser' then ParValue:=FTexGur.DateEdit1.Text;


end;

procedure TFTexGur.ToolButton5Click(Sender: TObject);
begin
 dm1.PechTexGur.EmptyTable;
 s_kodprod:=edit1.Text;
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
  S_ksm := mem_texGurKsm_id.AsInteger;
//  S_ksm := TexGurKsm_id.AsInteger;
//  FOstSyr.Edit1.text := inttostr(TexGurKsm_id.AsInteger);
//  FOstSyr.Label7.Caption := TexGurNmat.AsString;
//  FOstSyr.label8.Caption := TexGurNeis.AsString;
//  FOstSyr.DateEdit3.Date := strtodate(s_dat1);
//  FOstSyr.DateEdit4.Date := strtodate(s_dat2);
  if (FOstSyr = nil) then
    FOstSyr := TFOstSyr.Create(Application);
  FOstSyr.DateEdit3.Date := strtodate(s_dat1);
  FOstSyr.DateEdit4.Date := strtodate(s_dat2);
  FOstSyr.ShowModal;
end;

procedure TFTexGur.ToolButton8Click(Sender: TObject);
begin
 if  not dm1.Seria.Eof then
 begin

 end
 else
 begin
  DM1.Seria.Active :=False;
  DM1.Seria.ParamByName('ksm_id').AsInteger:=s_kodp;
  DM1.Seria.MacroByName('usl').AsString:=' 0=0';
  dm1.Seria.Active:=true;
  if  not dm1.Seria.Eof then
  begin
   if FSer=nil then FSer:=TFSer.Create(Application);
   FSer.ShowModal;
   if FSer.ModalResult > 50 then
   begin
    vSeria_id:=FSer.ModalResult-50;
   end;
  end;
end;
end;

procedure TFTexGur.SpeedButton1Click(Sender: TObject);
var
  usl_dat_s : string;
begin
  usl_dat_s := usl_dat;
  usl_dat := ' ((seria.date_vipusk between ''' + s_dat1 + ''' and ''' + s_dat2 + ''' '
             + ' or seria.date_pasport between ''' + s_dat1 + ''' and ''' + s_dat2 + ''' '
             + ' or seria.date_zag between ''' + s_dat1 + ''' and ''' + s_dat2 + ''') '
             + 'or (seria.date_vipusk is null and seria.date_pasport is null '
             + 'and seria.date_zag is null)) ';
  DM1.Seria.Active := False;
  DM1.Seria.ParamByName('ksm_id').AsInteger := s_kodp;
  DM1.Seria.MacroByName('usl').AsString := usl_dat;
  dm1.Seria.Active := true;
  if (not dm1.Seria.Eof) then
  begin
    dm1.Seria.Last;
    openViborSeriesAndLoadTexGur;
  end
  else
  begin
    DM1.Seria.Active := False;
    DM1.Seria.ParamByName('ksm_id').AsInteger := s_kodp;
    DM1.Seria.MacroByName('usl').AsString := ' 0=0';
    dm1.Seria.Active := true;
    dm1.Seria.Last;
    if (not dm1.Seria.Eof) then
    begin
      openViborSeriesAndLoadTexGur;
    end
    else
    begin
      MessageDlg('Нет серии заданного препарата!', mtWarning, [mbOK], 0);
      vseria_id := 0;
    end;
  end;
  usl_dat := usl_dat_s;
end;

procedure TFTexGur.openViborSeriesAndLoadTexGur;
begin
  if (FSer = nil) then
    FSer := TFSer.Create(Application);
  DM1.FormToObject(FSER, Edit2, 0, 0);
  FSer.ShowModal;
  if (FSer.ModalResult > 50) then
  begin
    vSeria_id := FSer.ModalResult - 50;
    s_seria := DM1.SeriaSeria.AsString;
    s_kol_seria := DM1.SeriaKol_Seria.AsFloat;
    edit9.Text := floattostr(s_kol_seria);
    Edit2.Text := s_Seria;
    if (dm1.SeriaDATE_ZAG.AsVariant <> null) then
    begin
      DateEdit1.Date := dm1.SeriaDATE_ZAG.AsDateTime;
      createTexGur(s_seria, god, mes, s_kodp, vStruk_id);;
    end
    else
    begin
      DateEdit1.ReadOnly := false;
      DateEdit1.SetFocus;
    end;
  end;
end;

procedure TFTexGur.SpeedButton2Click(Sender: TObject);
begin
  if (FindSpprod = nil) then
    FindSpprod := TfindSpprod.Create(Application);
  FindSpprod.DataBaseName := dm1.BELMED;
  FindSpprod.ReadOnly := true;
  FindSpprod.Usl_Struk := 'spprod.struk_id=' + inttostr(vStruk_id);
  FindSpprod.ShowModal;
  if (FindSpprod.ModalResult > 50) then
  begin
    StartWait;
    loadPrepInfo(FindSpprod.IBSpprodKOD_PROD.AsString);
  end;
  FreeAndNil(FindSpprod);
  StopWait;
end;

procedure TFTexGur.SpeedButton3Click(Sender: TObject);
begin
  if (DateEdit1.text <> '' )and (DateEdit1.text <= s_dat2_period)  then
  begin
    acceptSeria(sender);
    createTexGur(s_seria, god, mes, s_kodp, vStruk_id);
  end;
end;

procedure TFTexGur.Edit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{ if key=vk_return then
 BEGIN
  if CEH_MARSH.Active=false then
  begin
   CEH_MARSH.ParamByName('Kodp').AsInteger:=S_KODP;
   CEH_MARSH.ParamByName('seria').AsInteger:=vseria_id;
   CEH_MARSH.Active:=TRUE;
  end;
  ceh_marsh.First;
  if (edit17.Text<>'') and (edit17.Text<>'0')then
  begin
   v_11:=0;
   While not ceh_marsh.Eof  do
   begin
    if (DBedit7.Text='') then DBedit7.Text:='1';
    if (DBedit8.Text='') then DBedit8.Text:='1';
    if (DBedit11.Text='') then DBedit11.Text:='1';
    if (edit13.Text='') then edit13.Text:='1';
    if (edit16.Text='') then edit16.Text:='1';
    if (edit17.Text='') then edit17.Text:='1';
    v_11:=v_11+SimpleRoundTo(SimpleRoundTo((strtofloat(DBedit7.Text)*strtofloat(DBedit8.Text)/100)*(100-strtofloat(DBedit11.Text))/100,-3)
    *strtofloat(edit13.Text)/strtofloat(edit17.Text),-2);
    ceh_marsh.Next;
   end;
   ceh_marsh.First;
   edit11.Text:=floattostr(v_11);
   edit10.Text:=floattostr(SimpleRoundTo(v_11*(100-strtofloat(edit16.Text))/100,-2));
  end;
 END; }
END;

procedure TFTexGur.Seria_sBeforeInsert(DataSet: TDataSet);
begin
  DM1.AddSeria.ExecProc;
  vSERIA_IDs := DM1.AddSeria.Params.Items[0].AsInteger;
end;

procedure TFTexGur.Seria_sNewRecord(DataSet: TDataSet);
begin
  Seria_sSERIA_ID.AsInteger := vSeria_Ids;
  Seria_sKSM_ID.AsInteger := S_KSMs;
  Seria_sSERIA.AsString := s_SERIAs;
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
  s_seria := edit2.Text;
  
  initToolButtons;
  if (Edit1.Text <> '') then
    createTexGur(s_seria, god, mes, s_kodp, vStruk_id);

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
  if (Edit1.Text <> '') then
    createTexGur(s_seria, god, mes, s_kodp, vStruk_id)
end;

procedure TFTexGur.ToolButton4Click(Sender: TObject);
begin
  ksm_ov := 0;
  if (FAnalit1 = nil) then
    FAnalit1 := TFAnalit1.Create(Application);
  FAnalit1.ShowModal;
end;

ENd.
