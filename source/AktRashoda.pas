unit AktRashoda;

interface

uses UnderSign,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, frxDCtrl, DB, IBCustomDataSet, IBQuery, RxIBQuery,
  Grids, DBGridEh, StdCtrls, RxMemDS, Buttons, RxStrUtils, VCLUtils, Menus,
  RxMenus, IBDataBase, ToolWin, ComCtrls, ImgList, ExtCtrls, SplshWnd,
  IBUpdateSQL, IBUpdSQLW, RXCtrls, Math, kbmMemTable, ActnList,
  XPStyleActnCtrls, ActnMan, UtilRIb, Mask, ToolEdit, DateUtils;

type                                                      
  TIFPair = class(TObject)
  private
    FKey: integer;
    FValue: double;

  public
    Constructor Create (vFKey: integer; vFValue:double);
    Destructor Destroy; override;
    function GetKey: integer;
    procedure SetKey(Key: integer);
    function GetValue: double;
    procedure SetValue(Value: double);
    property Key: integer read GetKey write SetKey;
    property Value: double read GetValue write SetValue;
  end;

  TFAktRashoda = class(TForm)
    NormVQuery: TRxIBQuery;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxDBDataset1: TfrxDBDataset;
    DBGridEh1: TDBGridEh;
    NormVQueryKSM_ID: TIntegerField;
    NormVQueryNMAT_KSM: TIBStringField;
    NormVQueryNEIS: TIBStringField;
    NormVQueryNEIS_PROD: TIBStringField;
    NormVQueryPLNORM: TFMTBCDField;
    NormVQuerySTRUK_ID: TSmallintField;
    NormVQueryNAMSPSR: TIBStringField;
    NormVQueryNMAT: TIBStringField;
    NormVQueryFACTRASHOD: TFloatField;
    NormiMemDat: TRxMemoryData;
    NormiMemDatKSM_ID: TIntegerField;
    NormiMemDatNMAT_KSM: TStringField;
    NormiMemDatNEIS: TStringField;
    NormiMemDatNEIS_PROD: TStringField;
    NormiMemDatPLNORM: TFloatField;
    NormiMemDatSTRUK_ID: TIntegerField;
    NormiMemDatSTNAME: TStringField;
    NormiMemDatNAMSPSR: TStringField;
    NormiMemDatNMAT: TStringField;
    NormiMemDatFACTRASHOD: TFloatField;
    NormVQueryOTKLONENIE: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    yearEdit: TEdit;
    monthCombo: TComboBox;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    Label19: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    NormVQueryNAMRAZ: TIBStringField;
    NormiMemDatNAMRAZ: TStringField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    NormiMemDatOTKLONENIE: TStringField;
    NormVQueryRAZDEL_ID: TSmallintField;
    NormiMemDatRAZDEL_ID: TSmallintField;
    NormiMemDatPERENOS: TBooleanField;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    ToolButton5: TToolButton;
    Label7: TLabel;
    nDocEdit: TEdit;
    NormVQueryMEDEND: TIBStringField;
    NormiMemDatMEDEND: TWordField;
    NormiMemDatKEI_ID: TSmallintField;
    NormVQueryKEI_ID: TSmallintField;
    DocTipParam: TRxIBQuery;
    DSDocTipParam: TDataSource;
    DocTipParamTIP_DOK_ID: TSmallintField;
    DocTipParamPARAM_NAME: TIBStringField;
    DocTipParamPARAM_TYPE: TIBStringField;
    DocTipParamDEFAULT_VALUE: TIBStringField;
    DocTipParamLOOKUP: TIBStringField;
    DocTipParamKEY_FIELD: TIBStringField;
    DocTipParamRESULT_FIELD: TIBStringField;
    DocTipParamKOL_PARAM: TFloatField;
    DocTipParamCENA_PARAM: TIBBCDField;
    DocTipParamSTAVKA_NDS: TFloatField;
    DocTipParamSTRUK_ID: TSmallintField;
    DocTipParamTIP_PARAM_ID: TSmallintField;
    DocTipParamUpdate: TIBUpdateSQLW;
    ToolBar2: TToolBar;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    tempQuery: TIBQuery;
    tempQueryKSM_ID: TIntegerField;
    tempQueryNMAT: TIBStringField;
    tempQueryKEI_ID: TSmallintField;
    tempQueryNEIS: TIBStringField;
    Ceh_NormZ: TRxIBQuery;
    Ceh_NormZKSM_ID_MAT: TIntegerField;
    Ceh_NormZKSM_ID_PR: TIntegerField;
    Ceh_NormZDECZNAK: TSmallintField;
    NormVQueryKRAZ: TSmallintField;
    NormiMemDatKRAZ: TIntegerField;
    NormVQuerySTNAME: TIBStringField;
    ToolButton8: TToolButton;
    NormiMemDatOST_STRUK_ID: TIntegerField;
    NormiMemDatCENA: TFloatField;
    cenaQ: TRxIBQuery;
    cenaQKSM_ID: TIntegerField;
    cenaQSTRUK_ID: TIntegerField;
    cenaQCENA_UCH: TFloatField;
    cenaQKSM_IDPR: TIntegerField;
    cenaQKEI_ID: TSmallintField;
    q_specKart: TRxIBQuery;
    q_specDoc: TRxIBQuery;
    q_specDocDOC_ID: TIntegerField;
    q_specDocNDOK: TIBStringField;
    q_specDocSTRUK_ID: TSmallintField;
    q_specDocKLIENT_ID: TIntegerField;
    q_specDocDATE_DOK: TDateField;
    q_specDocTIP_OP_ID: TSmallintField;
    q_specDocTIP_DOK_ID: TSmallintField;
    upd_specKart: TIBUpdateSQLW;
    q_specDocDATE_OP: TDateField;
    upd_specDoc: TIBUpdateSQLW;
    q_specOst: TRxIBQuery;
    q_specOstMES: TSmallintField;
    q_specOstSTRUK_ID: TIntegerField;
    q_specOstKSM_ID: TIntegerField;
    q_specOstONM_S: TFMTBCDField;
    q_specOstCENA_UCH: TFloatField;
    q_specOstGOD: TSmallintField;
    q_specOstSPROD_ID: TIntegerField;
    q_specOstKEI_ID: TSmallintField;
    q_specOstONM_NZ: TFMTBCDField;
    q_specOstOT_S: TFMTBCDField;
    q_specOstOT_NZ: TFMTBCDField;
    q_specOstKOL_TRANS: TFloatField;
    q_specOstNOMU_ID_TRANS: TSmallintField;
    q_specOstKART_ID: TIntegerField;
    q_specOstSERIA_ID: TIntegerField;
    q_specOstOT_FD: TFMTBCDField;
    q_specOstONM_FD: TFMTBCDField;
    q_specOstNOMU_ID_GRP: TSmallintField;
    q_specOstKOL_GRP: TFloatField;
    q_specOstVES_TRANS: TIBBCDField;
    q_specOstVOL_TRANS: TFMTBCDField;
    q_specOstUSER_NAME: TIBStringField;
    q_specOstORG_RESERV: TIntegerField;
    q_specOstOT_DOKUM: TFMTBCDField;
    q_specOstONM_DOKUM: TFMTBCDField;
    q_specOstDATE_TIME_UPDATE: TDateTimeField;
    q_specOstKSM_IDPR: TIntegerField;
    q_specOstRAZDEL_ID: TSmallintField;
    q_specOstINV_ID: TIntegerField;
    q_specOstACCOUNT: TIBStringField;
    q_specOstSUMMA_KART: TIBBCDField;
    q_specOstOT_S2: TFMTBCDField;
    q_specOstKEI_ID2: TSmallintField;
    q_specOstVOL_GRP: TFMTBCDField;
    q_specOstVES_GRP: TIBBCDField;
    q_specOstPROC_OV: TFMTBCDField;
    q_specOstCENA_OPT: TIBBCDField;
    q_specOstONM_S_P: TFMTBCDField;
    q_specOstSTRUK_ID_RELA: TIntegerField;
    q_specOstBSO: TSmallintField;
    q_specOstDATE_VID: TDateField;
    q_specOstSROK: TIBBCDField;
    q_specOstNLK: TIntegerField;
    q_specOstSUMMA_SPIS: TIBBCDField;
    q_specOstCENA_UCH_NM: TIBBCDField;
    q_specOstACCOUNT_OLD: TIBStringField;
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
    q_specKartNDOK: TIBStringField;
    q_specKartSTRUK_ID: TSmallintField;
    q_specKartKLIENT_ID: TIntegerField;
    q_specKartDATE_DOK: TDateField;
    q_specKartTIP_OP_ID: TSmallintField;
    q_specKartTIP_DOK_ID: TSmallintField;
    q_specKartKSM_ID: TIntegerField;
    q_specKartKOL_RASH: TFMTBCDField;
    q_specKartKART_ID: TIntegerField;
    q_specKartSTROKA_ID: TIntegerField;
    q_specKartCENA: TIBBCDField;
    q_specKartCENA_VP: TIBBCDField;
    q_specKartDOC_ID: TIntegerField;
    q_ostatki: TRxIBQuery;
    upd_ostatki: TIBUpdateSQLW;
    mem_notAdded: TkbmMemTable;
    mem_notAddedKSM_ID: TIntegerField;
    mem_notAddedKOL: TFloatField;
    NormiMemDatSPEC: TIntegerField;
    btn_notAdded: TToolButton;
    frxNotAdded: TfrxDBDataset;
    mem_notAddedNMAT_KSM: TStringField;
    q_curOst: TRxIBQuery;
    q_curOstOSTATOK_END_S: TFMTBCDField;
    q_configumc: TRxIBQuery;
    upd_configumc: TIBUpdateSQLW;
    q_configumcMES: TSmallintField;
    q_configumcGOD: TSmallintField;
    q_configumcSTRUK_ID: TSmallintField;
    IBQuery1: TIBQuery;
    q_specDocDOK_OSN_ID: TIntegerField;
    q_docParam: TRxIBQuery;
    q_specKartRAZDEL_ID: TSmallintField;
    q_specKartKEI_ID: TSmallintField;
    q_specKartNAMRAZ: TIBStringField;
    q_specKartKRAZ: TSmallintField;
    q_specKartNEIS: TIBStringField;
    q_specKartNMAT: TIBStringField;
    NormiMemDatACCOUNT: TStringField;
    cb_saveNoSpec: TCheckBox;
    N1: TMenuItem;
    DocTipParamORDER_PARAM: TSmallintField;
    N2: TMenuItem;
    Label4: TLabel;
    edit_dokDate: TDateEdit;
    IBSpprod: TRxIBQuery;
    IBSpprodNEIS: TIBStringField;
    IBSpprodNMAT: TIBStringField;
    IBSpprodKSM_ID: TIntegerField;
    IBSpprodKEI_ID: TSmallintField;
    IBSpprodGOST: TIBStringField;
    IBSpprodSPPRN: TSmallintField;
    IBSpprodSPSR: TSmallintField;
    IBSpprodSTRUK_ID: TSmallintField;
    IBSpprodKOD_PROD: TIBStringField;
    IBSpprodREG: TSmallintField;
    IBSpprodKORG: TSmallintField;
    IBSpprodNAMEVIS: TIBStringField;
    IBSpprodNAMSPSR: TIBStringField;
    IBSpprodSPVIS: TSmallintField;
    IBSpprodSTNAME: TIBStringField;
    IBSpprodNAME_REG: TIBStringField;
    IBSpprodLEK_ID: TSmallintField;
    IBSpprodSPROD_ID: TIntegerField;
    IBSpprodXARKT: TIBStringField;
    IBSpprodREGISTR_ID: TIntegerField;
    IBSpprodNAME_ORG: TIBStringField;
    IBSpprodND1: TDateField;
    IBSpprodND2: TDateField;
    IBSpprodACTIVP: TSmallintField;
    IBSpprodDATE1: TDateField;
    IBSpprodDATE2: TDateField;
    IBSpprodEAN13: TSmallintField;
    IBSpprodSPKSM: TIBStringField;
    IBSpprodVES_UP: TIBBCDField;
    IBSpprodEANNAM: TIBStringField;
    IBSpprodEANREGISTR_ID: TIntegerField;
    IBSpprodINOV: TSmallintField;
    IBSpprodDATEI_1: TDateField;
    IBSpprodDATEI_2: TDateField;
    q_matrop: TRxIBQuery;
    q_matropKSM_ID: TIntegerField;
    q_matropNMAT: TIBStringField;
    q_matropPRMAT: TIBStringField;
    q_matropGR: TIBStringField;
    q_matropPGR: TIBStringField;
    q_matropKEI_ID: TSmallintField;
    q_matropACCOUNT: TIBStringField;
    q_matropSPSR: TSmallintField;
    q_matropNMATS: TIBStringField;
    q_matropGOST: TIBStringField;
    q_matropXARKT: TIBStringField;
    q_matropPROCS: TIBBCDField;
    q_matropCENA: TIBBCDField;
    q_matropRENOM: TIBStringField;
    q_matropPROTK: TSmallintField;
    q_matropTNVED: TIBStringField;
    q_matropKSM: TIBStringField;
    q_matropPROC: TIBBCDField;
    q_matropKEI: TIBStringField;
    q_matropDM: TSmallintField;
    q_matropKORG: TIntegerField;
    q_matropCENANDS: TIBBCDField;
    q_matropDATCEN: TDateField;
    q_matropPRIZCEN: TSmallintField;
    q_matropREG: TSmallintField;
    q_matropKSM_BS: TIntegerField;
    q_matropSPIS_A: TSmallintField;
    q_matropMEDEND: TSmallintField;
    q_matropPRMAT_ID: TSmallintField;
    q_matropGR_ID: TSmallintField;
    q_matropPGR_ID: TSmallintField;
    q_matropSPEC: TSmallintField;
    DBGridEh3: TDBGridEh;
    ds_underSign: TDataSource;
    mem_underSign: TkbmMemTable;
    frds_underSign: TfrxDBDataset;
    mem_underSignTIP_DOK_ID: TSmallintField;
    mem_underSignSTRUK_ID: TSmallintField;
    mem_underSignTIP_PARAM_ID: TSmallintField;
    mem_underSignORDER_PARAM: TSmallintField;
    mem_underSignPARAM_NAME: TStringField;
    mem_underSignDEFAULT_VALUE: TStringField;
    mem_underSignPARAM_ID: TIntegerField;
    mem_underSignDOC_ID: TIntegerField;
    Label5: TLabel;
    btn_appendSign: TSpeedButton;
    btn_insertSign: TSpeedButton;
    btn_delSign: TSpeedButton;
    btn_moveUp: TSpeedButton;
    btn_moveDown: TSpeedButton;
    q_ostatkiPEREDANO_PRIH_NZ: TFMTBCDField;
    q_ostatkiPEREDANO_RASH_NZ: TFMTBCDField;
    q_ostatkiPEREDANO_PRIH_S: TFMTBCDField;
    q_ostatkiPEREDANO_RASH_S: TFMTBCDField;
    q_ostatkiKART_ID: TIntegerField;
    q_ostatkiKSM_ID: TIntegerField;
    q_ostatkiSTRUK_ID: TIntegerField;
    q_ostatkiSPVIS: TSmallintField;
    q_ostatkiSPSR: TSmallintField;
    q_ostatkiNMAT: TIBStringField;
    q_ostatkiKEI_ID: TSmallintField;
    q_ostatkiNEIS: TIBStringField;
    q_ostatkiREG: TSmallintField;
    q_ostatkiPRMAT: TIBStringField;
    q_ostatkiGR: TIBStringField;
    q_ostatkiPGR: TIBStringField;
    q_ostatkiKORG: TIntegerField;
    q_ostatkiKOD_PROD: TIBStringField;
    q_ostatkiOSTATOK_BEGIN_S: TFMTBCDField;
    q_ostatkiOSTATOK_BEGIN_NZ: TFMTBCDField;
    q_ostatkiOSTATOK_END_S: TFMTBCDField;
    q_ostatkiOSTATOK_END_NZ: TFMTBCDField;
    q_ostatkiPRIX_PERIOD: TFMTBCDField;
    q_ostatkiRASX_PERIOD: TFMTBCDField;
    q_ostatkiRAZDEL_ID: TSmallintField;
    q_ostatkiSERIA_ID: TIntegerField;
    q_ostatkiKSM_IDPR: TIntegerField;
    q_ostatkiSERIA: TIBStringField;
    q_ostatkiZAG_PERIOD: TFMTBCDField;
    q_ostatkiRASH_VIRAB_PERIOD: TFMTBCDField;
    q_ostatkiNMAT_PREP: TIBStringField;
    q_ostatkiKOD_PREP: TIBStringField;
    q_ostatkiACCOUNT: TIBStringField;
    btn_delAll: TSpeedButton;
    mem_printNull: TkbmMemTable;
    mem_printNullprintNull: TIntegerField;
    frxDBDataset2: TfrxDBDataset;
    function GetCehNum(cehName : string) : integer;
    function SetMonthCombo(month : integer) : boolean;
    function activateNormQuery() : boolean;
    function loadNormiReport() : boolean;

    function findCurDoc(strukId, month, year, tipDokId : integer; materChar : string) : boolean;
    function showViborPrep() : boolean;
    function createCurDoc(strukId, month, year : integer; materChar : string) : boolean;
    function saveKart2DB() : boolean;
    function saveDoc() : boolean;
    function loadNormMemDat() : boolean;
    function findKodInFindSpprod(nmat : string) : integer;
    function loadKart(strukId, docId : integer) : boolean;
    function saveMemToKart() : boolean;
    function saveAllMem2Kart() : boolean;
    function deleteKart() : boolean;
    function closeQueries() : boolean;
    function addNormi2Mem() : boolean;
    function insertRec2MemDat(ksmId, strukId, razdelId, medEnd, keiId, kRaz : integer;
                              nMatKsm, nEIs, stname, nMat, namRaz, account : string;
                              plNorm, factRashod : double; ostStrukId : integer; cena : double) : boolean;
    function addKart2Mem(): boolean;
    function insertPlnorm2MemDat(plNorm : double; ksmId : integer) : boolean;
    function reloadNorms(nMat : integer) : boolean;
    function saveMemRec2Kart() : boolean;
    function add2Prixod() : boolean;
    function saveCurState() : boolean;
    procedure initTIFPairArr;
    procedure destroyTIFPairArr;
    function loadDocTipParam(tipDokId, strukId : integer) : boolean;
    function deactivateDocTipParam() : boolean;
    function saveDocTipParam() : boolean;
    procedure insertDocTipParam;
    procedure deleteDocTipParam;
    procedure activateFindMatrop;
    procedure insertFindMatropInMemDat;
    procedure changeFindMatropInMemDat;
    function changeRecInMem(ksmId, strukId, razdelId, medEnd, keiId, kRaz : integer;
                                     nMatKsm, nEIs, stName, nMat, namRaz, account : string;
                                     plNorm, factRashod : double; ostStrukId : integer; cena : double) : boolean;
    function findRecInNorms(ksmId : integer) : boolean;
    procedure loadCehNormZ(ksmIdPr : integer);
    function findKsmInCehNormZ(ksmIdMat : integer) : boolean;
    procedure askToSaveModified(Sender: TObject);
    function setZnak1(ksmId : integer; otklonenie, plNorm : double) : double;
    procedure setEmptyMemAsCur(ksmId : integer);
    function findNormNeis(ksmId : integer) : string;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure NormiMemDatFACTRASHODChange(Sender: TField);
    procedure monthComboSelect(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure NormiMemDatPLNORMChange(Sender: TField);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Button2Click(Sender: TObject);
    procedure yearEditKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton5Click(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure DocTipParamUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure DBGridEh1Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1Columns7EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton8Click(Sender: TObject);
    procedure btn_notAddedClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btn_appendSignClick(Sender: TObject);
    procedure btn_insertSignClick(Sender: TObject);
    procedure btn_delSignClick(Sender: TObject);
    procedure btn_moveUpClick(Sender: TObject);
    procedure btn_moveDownClick(Sender: TObject);
    procedure btn_delAllClick(Sender: TObject);

  private
    realMonth, realYear, vklient_id1 : integer;
    firstMonthChange, printNuls : boolean;

    underS : TUnderSign;
//    procedure formCenaQ(allMem : boolean);
//    procedure distributeCena(allMem : boolean);
//    procedure setCurNormiMemDatCena;
//    procedure editNormiMemDatCena(cena : double);
    procedure findAndSet10Account;
    function findSpecKart(strukId, ksmId : integer; date1, date2 : TDate) : boolean;
    function openSpecDoc() : boolean;
    procedure deleteSpecDoc;
    procedure deleteSpecKart;
    procedure createSpecDoc;
    function findSpecOstAllOr11(ksmId : integer; allAccs : boolean) : boolean;
    function getCurOst11() : double;
    procedure insertRecToSpecKart;
    function findPrepOst(ksmId, razdelId : integer) : boolean;
    procedure addRecToNotAdded;

    function findPrixDoc() : boolean;
    procedure openPrixKart;
    procedure deletePrixKart;
    function addSpecRec2Prixod() : boolean;
    procedure loadAndAddKart;

    procedure DobPrixPrep(spec : boolean);
    function getNeededPrixInMatropEdiz() : double;
    function getNeededPrixInNormnEdiz() : double;
    procedure createKartIdInOstatki(spec : boolean);
    procedure createPrixodDocumOnPrep;
    procedure removeKartByDocidKsmidRazdelid(docId, ksmId, razdelId: Integer);
    procedure findOstatkiSyrInCex(spec : boolean);
    procedure createKartInPrixodDocumOnPrep(spec : boolean);
    function getIsSrokEnded(spec : boolean) : boolean;
    function isRecIsSpec(ksmId : integer) : boolean;

    procedure openConfigumc;
    procedure setAktOrCurMonth2Conf(setAktMonth : boolean);
    procedure askToPrintNullRecords;


  public
    DataBaseName : TIBDataBase;
    { Public declarations }
  end;

var
  FAktRashoda: TFAktRashoda;
  s_lab11:string;
  USL_N:STRING;
//  SORT_N:STRING;
//  s_sort_n:string;
  memState : Array[0..100] of TIFPair;
  stateIndex : integer;
  znak : integer;
  firstLoad : integer;
  descend : boolean;
  curDocId : integer;

implementation

{$R *.dfm}

uses dm, Find_Spprod, Find_Matrop, f_lookupEis, CopyFiles, f_lookupRaz, OstSyr;

//реализация пары (pair implementation)
function TIFPair.GetKey : integer;
begin
  result := FKey;
end;

function TIFPair.GetValue : double;
begin
  result := FValue;
end;

procedure TIFPair.SetKey(Key: Integer);
begin
  FKey := Key;
end;

procedure TIFPair.SetValue(Value: Double);
begin
  FValue := Value;
end;

Constructor TIFPair.Create (vFKey : integer; vFValue: double);
begin
  inherited Create;
  FKey := vFKey;
  FValue := vFValue;
end;

Destructor TIFPair.Destroy;
begin
  inherited Destroy;
end;
/////////////////////////////////////////////////////////////////////

//реализация логики (logic implementation)
//procedure TFAktRashoda.formCenaQ(allMem : boolean);
//begin
//  cenaQ.Close;
//  cenaQ.SQL.Clear;
//  cenaQ.SQL.Text := 'select ostatki.ksm_id, ostatki.struk_id, ostatki.cena_uch, '
//                    + 'ostatki.ksm_idpr, ostatki.kei_id '
//                    + 'from ostatki '
//                    + 'where ostatki.struk_id = ' + IntToStr(vStruk_id)
//                    + ' and ostatki.ksm_id in (';
//  if (allMem) then
//  begin
//    NormiMemDat.First;
//    while (not NormiMemDat.Eof) do
//    begin
//      cenaQ.SQL.Add(NormiMemDatKSM_ID.AsString);
//      NormiMemDat.Next;
//      if (not NormiMemDat.Eof) then
//        cenaQ.SQL.Add(', ');
//    end;
//  end
//  else
//    cenaQ.SQL.Add(NormiMemDatKSM_ID.AsString);
//  cenaQ.SQL.Add(') order by ostatki.ksm_id, ostatki.ksm_idpr ');
//end;

//procedure TFAktRashoda.distributeCena(allMem : boolean);
//begin
//  cenaQ.FetchAll;
//  cenaQ.First;
//  if (cenaQ.RecordCount > 0) then
//  begin
//    if (allMem) then
//    begin
//      NormiMemDat.First;
//      while (not NormiMemDat.Eof) do
//      begin
//        setCurNormiMemDatCena;
//        NormiMemDat.Next;
//      end;
//    end
//    else
//      setCurNormiMemDatCena;
//  end;
//end;

//procedure TFAktRashoda.setCurNormiMemDatCena;
//begin
//  if (cenaQ.Locate('ksm_idpr; ksm_id',
//                   VarArrayOf([s_kodp, NormiMemDatKSM_ID.AsInteger]),
//                   [])) then
//  begin
//    editNormiMemDatCena(SimpleRoundTo(cenaQCENA_UCH.AsFloat
//                                      * dm1.Koef_per(NormiMemDatKEI_ID.AsInteger,
//                                                     cenaQKEI_ID.AsInteger,
//                                                     NormiMemDatKSM_ID.AsInteger),
//                                      -4));
//  end
//  else
//  begin
//    if (cenaQ.Locate('ksm_id', VarArrayOf([NormiMemDatKSM_ID.AsInteger]), [])) then
//      editNormiMemDatCena(SimpleRoundTo(cenaQCENA_UCH.AsFloat
//                                        * dm1.Koef_per(NormiMemDatKEI_ID.AsInteger,
//                                                       cenaQKEI_ID.AsInteger,
//                                                       NormiMemDatKSM_ID.AsInteger),
//                                        -4));
//  end;
//end;

//procedure TFAktRashoda.editNormiMemDatCena(cena : double);
//begin
//  if (cena <> 0) and (NormiMemDatCENA.AsFloat = 0) then
//  begin
//    NormiMemDat.Edit;
//    NormiMemDatCENA.AsFloat := cena;
//    NormiMemDat.Post;
//  end;
//end;

procedure TFAktRashoda.openConfigumc;
begin
  q_configumc.Close;
  q_configumc.ParamByName('struk_id').AsInteger := vStruk_Id;
  q_configumc.Open;
end;

procedure TFAktRashoda.setAktOrCurMonth2Conf(setAktMonth : boolean);
var
  setMonth, setYear : integer;
begin
  if (AnsiLowerCase(UserName) = 'igor') then
  begin
    openConfigumc;
    if (setAktMonth) then
    begin
      if (firstMonthChange) then
      begin
        realMonth := q_configumcMES.AsInteger;
        realYear := q_configumcGOD.AsInteger;
        firstMonthChange := false;
      end;
      setMonth := monthCombo.ItemIndex + 1;
      setYear := StrToInt(yearEdit.Text);
    end
    else
    begin
      setMonth := realMonth;
      setYear := realYear;
      firstMonthChange := true;
    end;

    q_configumc.Edit;
    if (q_configumcGOD.AsInteger <> setYear) then
      q_configumcGOD.AsInteger := setYear;
    if (q_configumcMES.AsInteger <> setMonth) then
      q_configumcMES.AsInteger := setMonth;
    if (q_configumc.Modified) or (q_configumc.State = dsEdit) then
    begin
      q_configumc.Post;
      q_configumc.ApplyUpdates;
      DM1.commitWriteTrans(true);
    end;
  end;
end;

function TFAktRashoda.findPrixDoc() : boolean;
begin
  result := false;
  q_prixDoc.Close;
  q_prixDoc.ParamByName('struk_id').AsInteger := vStruk_Id;
  q_prixDoc.ParamByName('klient_id').AsInteger := s_kodp;
  q_prixDoc.ParamByName('dat1').AsDate := StrToDate(s_dat1);
  q_prixDoc.ParamByName('dat2').AsDate := StrToDate(s_dat2);
  q_prixDoc.Open;
  if (q_prixDoc.RecordCount > 0) then
    result := true;
end;

procedure TFAktRashoda.openPrixKart;
begin
  q_prixKart.Close;
  q_prixKart.ParamByName('doc_id').AsInteger := q_prixDocDOC_ID.AsInteger;
  q_prixKart.Open;
end;

procedure TFAktRashoda.deletePrixKart;
begin
  if (findPrixDoc()) then
  begin
    q_prixDoc.First;
    while (not q_prixDoc.Eof) do
    begin
      openPrixKart;

      if (q_prixKart.RecordCount > 0) then
      begin
        q_prixKart.First;
        while (not q_prixKart.Eof) do
          q_prixKart.Delete;
        q_prixKart.ApplyUpdates;
        dm1.commitWriteTrans(true);
      end;
      q_prixDoc.Next;
    end;
  end;
end;

procedure TFAktRashoda.insertRecToSpecKart;
var
  ostKol : double;
begin
  ostKol := NormiMemDatFACTRASHOD.AsFloat;
  if (findPrepOst(NormiMemDatKSM_ID.AsInteger, NormiMemDatRAZDEL_ID.AsInteger)) then
  begin
    q_ostatki.First;
    while (not q_ostatki.Eof) and (ostKol <> 0) do
    begin
      q_specKart.Append;
      q_specKartKART_ID.AsInteger := q_ostatkiKART_ID.AsInteger;
      q_specKartDOC_ID.AsInteger := q_specDocDOC_ID.AsInteger;
      q_specKartKSM_ID.AsInteger := NormiMemDatKSM_ID.AsInteger;
      q_specKartCENA.AsFloat := q_specOstCENA_UCH.AsFloat;
      q_specKartCENA_VP.AsFloat := q_specOstCENA_UCH.AsFloat;
      q_specKartRAZDEL_ID.AsInteger := NormiMemDatRAZDEL_ID.AsInteger;
      DM1.Add_KartDok.StoredProcName := 'ADD_KART';
      DM1.Add_KartDok.ExecProc;
      q_specKartSTROKA_ID.AsInteger := DM1.Add_KartDok.Params.Items[0].AsInteger;
      if (q_ostatkiOSTATOK_END_S.AsFloat < ostKol) and (q_ostatki.RecNo < q_ostatki.RecordCount) then
        q_specKartKOL_RASH.AsFloat := q_ostatkiOSTATOK_END_S.AsFloat
      else
        q_specKartKOL_RASH.AsFloat := ostKol;
//      if (q_specOstOT_S.AsFloat < ostKol) and (q_specOst.RecNo < q_specOst.RecordCount) then
//        q_specKartKOL_RASH.AsFloat := q_specOstOT_S.AsFloat
//      else
//        q_specKartKOL_RASH.AsFloat := ostKol;
      ostKol := ostKol - q_specKartKOL_RASH.AsFloat;
      q_specKart.Post;
      q_ostatki.Next;
    end;
  end;
  q_specKart.ApplyUpdates;
  dm1.commitWriteTrans(true);
  NormiMemDat.Edit;
  NormiMemDatSPEC.AsInteger := 1;
  NormiMemDat.Post;
end;

procedure TFAktRashoda.addRecToNotAdded;
begin
  mem_notAdded.Append;
  mem_notAdded.Edit;
  mem_notAddedKSM_ID.AsInteger := NormiMemDatKSM_ID.AsInteger;
  mem_notAddedKOL.AsFloat := NormiMemDatFACTRASHOD.AsFloat;
  mem_notAddedNMAT_KSM.AsString := NormiMemDatNMAT_KSM.AsString;
  mem_notAdded.Post;
  NormiMemDat.Edit;
  NormiMemDatSPEC.AsInteger := 2;
  NormiMemDatFACTRASHOD.AsFloat := 0;
  NormiMemDat.Post;
end;

function TFAktRashoda.findPrepOst(ksmId, razdelId : integer) : boolean;
begin
  result := false;
  q_ostatki.close;
  q_ostatki.ParamByName('struk_id').AsInteger := vStruk_Id;
  q_ostatki.ParamByName('ksm_id').AsInteger := ksmId;
//  q_ostatki.ParamByName('ksm_idpr').AsInteger := s_kodp;
//  q_ostatki.ParamByName('ksm_idpr').AsInteger := 0;
//  q_ostatki.ParamByName('razdel_id').AsInteger := razdelId;
//  q_ostatki.ParamByName('razdel_id').AsInteger := 0;
  q_ostatki.ParamByName('dat1').AsDate := StrToDate(s_dat1);
  q_ostatki.ParamByName('dat2').AsDate := StrToDate(s_dat2);
  q_ostatki.Open;
  q_ostatki.FetchAll;
  if (q_ostatki.RecordCount > 0) then
    result := true;
end;

function TFAktRashoda.findSpecOstAllOr11(ksmId : integer; allAccs : boolean) : boolean;
begin
  result := false;
  q_specOst.Close;
  q_specOst.ParamByName('ksm_id').AsInteger := ksmId;
  q_specOst.ParamByName('struk_id').AsInteger := vStruk_Id;
  if (allAccs) then  
    q_specOst.MacroByName('usl_account').AsString := 'ostatki.account in (''10/10'', ''10/11'') '
  else
    q_specOst.MacroByName('usl_account').AsString := 'ostatki.account in (''10/11'') ';
  q_specOst.Open;
  if (q_specOst.RecordCount > 0) then
    result := true;
end;

function TFAktRashoda.getCurOst11() : double;
begin
  q_curOst.Close;
  q_curOst.ParamByName('ksm_id').AsInteger := NormiMemDatKSM_ID.AsInteger;
  q_curOst.ParamByName('struk_id').AsInteger := vStruk_Id;
  q_curOst.ParamByName('dat1').AsDate := StrToDate(s_dat1);
  q_curOst.ParamByName('dat2').AsDate := StrToDate(s_dat2);
  q_curOst.ParamByName('account').AsString := '10/11';
  q_curOst.Open;
  result := q_curOstOSTATOK_END_S.AsFloat;  
end;

procedure TFAktRashoda.createSpecDoc;
begin
  if (not q_specDoc.Active) then
    openSpecDoc();

  DM1.Add_KartDok.StoredProcName := 'ADD_DOCUMENT';
  DM1.Add_KartDok.ExecProc;

  q_specDoc.Insert;
  if (vTip_Doc_Id = 144) then
    q_specDocNDOK.AsString := 'мик.' + IntToStr(monthCombo.ItemIndex + 1)
                              + '.' + yearEdit.Text;
  if (vTip_Doc_Id = 209) then
    q_specDocNDOK.AsString := 'сиз.' + IntToStr(monthCombo.ItemIndex + 1)
                              + '.' + yearEdit.Text;
  q_specDocSTRUK_ID.AsInteger := vStruk_Id;
  q_specDocKLIENT_ID.AsInteger := vStruk_Id;
  q_specDocTIP_OP_ID.AsInteger := 32;
  q_specDocTIP_DOK_ID.AsInteger := 198;
  q_specDocDOC_ID.AsInteger := DM1.Add_KartDok.Params.Items[0].AsInteger;
  q_specDocDATE_DOK.AsDateTime := edit_dokDate.Date;
  q_specDocDATE_OP.AsDateTime := edit_dokDate.Date;
  q_specDocDOK_OSN_ID.AsInteger := curDocId;
  q_specDoc.Post;
  q_specDoc.ApplyUpdates;
  dm1.commitWriteTrans(true);
end;

function TFAktRashoda.openSpecDoc() : boolean;
begin
  result := false;
  q_specDoc.Close;
  if (vTip_Doc_Id = 144) then
    q_specDoc.MacroByName('usl').AsString := ' document.ndok = ''мик.'
                                                + IntToStr(monthCombo.ItemIndex + 1)
                                                + '.' + yearEdit.Text + ''' ';
  if (vTip_Doc_Id = 209) then
    q_specDoc.MacroByName('usl').AsString := ' document.ndok = ''сиз.'
                                                + IntToStr(monthCombo.ItemIndex + 1)
                                                + '.' + yearEdit.Text + ''' ';
  q_specDoc.ParamByName('struk_id').AsInteger := vStruk_Id;
  q_specDoc.ParamByName('dat1').AsDate := StrToDate(s_dat1);
  q_specDoc.ParamByName('dat2').AsDate := StrToDate(s_dat2);
  q_specDoc.Open;
  q_specDoc.First;
  if (q_specDoc.RecordCount > 0) and (not q_specDoc.Eof) then
  begin
    result := true;
    if (q_specDocDOK_OSN_ID.AsInteger <> curDocId) then
    begin
      q_specDoc.Edit;
      q_specDocDOK_OSN_ID.AsInteger := curDocId;
      q_specDoc.Post;
      q_specDoc.ApplyUpdates;
      dm1.commitWriteTrans(true);
    end;
  end;
end;

procedure TFAktRashoda.findAndSet10Account;
begin
  findSpecKart(vStruk_Id, 0, StrToDate(s_dat1), StrToDate(s_dat2));
  q_specKart.First;
  while (not q_specKart.Eof) do
  begin
    if (NormiMemDat.Locate('ksm_id;razdel_id',
                           VarArrayOf([q_specKartKSM_ID.AsInteger,
                                       q_specKartRAZDEL_ID.AsInteger]),
                           []))  then
    begin
      NormiMemDat.Edit;
      NormiMemDatFACTRASHOD.AsFloat := NormiMemDatFACTRASHOD.AsFloat + q_specKartKOL_RASH.AsFloat;
      NormiMemDatACCOUNT.AsString := '10/11';
      NormiMemDat.Post;
    end
    else
    begin
      NormiMemDat.Last;
      insertRec2MemDat(q_specKartKSM_ID.AsInteger, q_specKartSTRUK_ID.AsInteger,
                       q_specKartRAZDEL_ID.AsInteger, 0,
                       q_specKartKEI_ID.AsInteger, q_specKartKRAZ.AsInteger,
                       q_specKartNMAT.AsString, q_specKartNEIS.AsString, '','',
                       q_specKartNAMRAZ.AsString, '10/11', 0, q_specKartKOL_RASH.AsFloat,
                       q_specKartSTRUK_ID.AsInteger, 0);
    end;
    q_specKart.Next;
  end;
end;

function TFAktRashoda.findSpecKart(strukId, ksmId : integer; date1, date2 : TDate) : boolean;
begin
  result := false;
  q_specKart.Close;
  if (vTip_Doc_Id = 144) then  
    q_specKart.MacroByName('usl').AsString := ' document.ndok = ''мик.'
                                                + IntToStr(monthCombo.ItemIndex + 1)
                                                + '.' + yearEdit.Text + ''' ';
  if (vTip_Doc_Id = 209) then
    q_specKart.MacroByName('usl').AsString := ' document.ndok = ''сиз.'
                                                + IntToStr(monthCombo.ItemIndex + 1)
                                                + '.' + yearEdit.Text + ''' ';
  if (ksmId <> 0) then
    q_specKart.MacroByName('usl').AsString := q_specKart.MacroByName('usl').AsString
                                              + ' and kart.ksm_id = ' + IntToStr(ksmId) + ' ';
  q_specKart.ParamByName('struk_id').AsInteger := strukId;
  q_specKart.ParamByName('dat1').AsDateTime := date1;
  q_specKart.ParamByName('dat2').AsDateTime := date2;
  q_specKart.Open;
  if (q_specKart.RecordCount > 0) then
    result := true;
end;

procedure TFAktRashoda.BitBtn1Click(Sender: TObject);
begin
  PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFAktRashoda.Button1Click(Sender: TObject);
var
  curMonth, curYear : integer;
  Splash: TForm;
begin
  if (NormiMemDat.State = dsEdit)
     or (NormiMemDat.State = dsInsert)
     or (NormiMemDat.Modified) then
     NormiMemDat.Post;
  if (nDocEdit.Text = '') then
    MessageDlg('Перед сохранением введите номер документа! ', mtWarning, [mbOK], 0)
  else
  begin
//    try
      Splash := ShowSplashWindow(AniBmp1,
                'Сохранение данных. Подождите, пожалуйста...', True, nil);
      NormiMemDat.DisableControls;
//      setAktOrCurMonth2Conf(true);
      curMonth := monthCombo.ItemIndex + 1;
      curYear := StrToInt(yearEdit.Text);
      if (not findCurDoc(vStruk_Id, curMonth, curYear, vTip_Doc_Id, '')) then
        createCurDoc(vStruk_Id, curMonth, curYear, '');
      if (saveDoc()) then
      begin
        loadKart(vStruk_Id, DM1.DocumentDOC_ID.AsInteger);
        saveMemToKart();
        saveDocTipParam();
      end;
      NormiMemDat.EnableControls;
      btn_notAdded.Visible := false;
      Splash.Free;
      if (mem_notAdded.RecordCount > 0) then
      begin
        btn_notAdded.Visible := true;
        ShowMessage('Не все материалы были сохранены, т.к. не хватает количества или '
                    + #10#13 + 'не были введены в эксплуатацию или'
                    + #10#13 + 'не истек срок использования!'
                    + #10#13 + 'Увидеть их можно нажав на кнопку с перечеркнутой дискетой на панели');
      end;
//      setAktOrCurMonth2Conf(false);
      reloadNorms(0);
//    except
//      on e : exception do
//        setAktOrCurMonth2Conf(false);
//    end;
  end;
end;

procedure TFAktRashoda.Button2Click(Sender: TObject);
begin
  NormiMemDat.First;
  while not NormiMemDat.Eof do
  begin
    NormiMemDat.Edit;
    NormiMemDatFACTRASHOD.AsFloat := NormiMemDatPLNORM.AsFloat;
    NormiMemDatPERENOS.AsBoolean := true;
    NormiMemDat.Next;
  end;
end;

procedure TFAktRashoda.Button3Click(Sender: TObject);
begin
  if findRecInNorms(NormiMemDatKSM_ID.AsInteger) then
    MessageDlg('Нельзя удалять сырье, которое находится в нормах! '
                + #13
                + 'Можно только обнулить фактический расход', mtWarning, [mbOK], 0)
  else
    NormiMemDat.Delete;
end;

function TFAktRashoda.findRecInNorms(ksmId : integer) : boolean;
begin
  NormVQuery.First;
  while not NormVQuery.eof do
  begin
    if NormVQueryKSM_ID.AsInteger = ksmId then
      break  
    else
      NormVQuery.Next;
  end;
  if NormVQueryKSM_ID.AsInteger = ksmId then
    result := true
  else
    result := false;
end;

procedure TFAktRashoda.Edit1Change(Sender: TObject);
begin
  if edit1.text <> ''   then
  begin
    skod := replacestr(edit1.text,',','.')+'%';
    IBQuery1.Active := False;
    IBQuery1.SQL.Clear;
    IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
    IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM');
    IBQuery1.SQL.Add(' FROM SPPROD');
    IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
    IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
    IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like ' + '''' + skod + ''''
                          + ' AND SPPROD.STRUK_ID=' + INTTOSTR(vStruk_Id));
    IBQuery1.Active := True;
    if not IBQuery1.Eof then
      Label19.Caption := IBQuery1.FieldByName('kod_PROD').Asstring
                          + IBQuery1.FieldByName('nmat').AsString
    else
      Label19.Caption := '';

    begin
    end;
    Label19.Refresh;
   end;
end;

procedure TFAktRashoda.Edit1Click(Sender: TObject);
begin
  edit1.text:='';
end;

procedure TFAktRashoda.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    StartWait;
    if (edit1.text <> '') and (not IBQuery1.Eof)  then
    begin
      EDIT1.OnChange := nil;
      edit1.text := IBQuery1.FieldByName('kod_PROD').Asstring;
      EDIT1.OnChange := Edit1Change;
      s_kodp := IBQuery1.FieldByName('KSM_ID').value;
      s_nmat := IBQuery1.FieldByName('NMAT').AsString;
      if IBQuery1.FieldByName('ACTIVP').Asinteger = 1 then
        s_lab11 := 'Действующие'
      else
        s_lab11 := 'Недействующие';
      label19.caption := s_NMAT;
      usl_n := '';
      reloadNorms(0);
      label11.caption := s_lab11;
      IF NormiMemDat.IsEmpty THEN
      begin
        label11.caption := 'Нет норм';
        label11.Font.Color := clRed;
      end
      else
      begin
        if s_lab11 = 'Действующие' then
          label11.Font.Color := clNavy
        else
          label11.Font.Color := clRed;
      end;
    end;
      StopWait;
  end;
end;

procedure TFAktRashoda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  destroyTIFPairArr;
  btn_notAdded.Visible := false;
  closeQueries();
  FreeAndNil(underS);
end;

procedure TFAktRashoda.FormCreate(Sender: TObject);
begin
  firstMonthChange := true;
end;

procedure TFAktRashoda.FormShow(Sender: TObject);
var
//  nmat : string;
  curYear, curMonth, curDay : word;
begin
  DM1.Document.Close;
  dm1.Document.MacroByName('usl').AsString := '0=0';
  DM1.Kart.Close;
  dm1.Kart.MacroByName('usl').AsString := '0=0';
  dm1.Ostatki.Close;
  dm1.Ostatki.MacroByName('usl').AsString := '0=0';
  dm1.IBT_Read.RollbackRetaining;
  dm1.IBT_Write.RollbackRetaining;
  s_kodp := 0;
  s_nmat := '';
  vklient_id := 0;
  s_ksm := 0;
  v_razdel := 0;
  v_kein := 0;
  vdocument_id := 0;
  btn_notAdded.Visible := false;
  firstLoad := 0;
  descend := false;
  initTIFPairArr;

  DecodeDate(now, curYear, curMonth, curDay);
  if (curMonth <> mes_conf) then
  begin
    IF (MES < 10) THEN
      S_MES := '0' + INTTOSTR(MES)
    ELSE
      S_MES := INTTOSTR(MES);
    S_DAT1 := '01.' + S_MES + '.' + INTTOSTR(GOD);
    edit_dokDate.Text := datetostr(IncMonth(strtodate(s_dat1), 1) - 1);
  end
  else
    edit_dokDate.Date := now;
  yearEdit.Text := IntToStr(GOD_conf);
  setMonthCombo(MES_conf);

  Label11.Caption := '';
  Label19.Caption := '';

  if (findCurDoc(vStruk_Id, MES_conf, GOD_conf, 144, '')) then
  begin
    s_nmat := 'Обеспечение требований по микробиологической чистоте';
    s_kodp := findKodInFindSpprod(s_nmat);
    vTip_Doc_Id := 144;
    reloadNorms(0);
    label19.caption := s_nmat;
  end
  else
  begin
    if (findCurDoc(vStruk_Id, MES_conf, GOD_conf, 145, '')) then
    begin
      s_nmat := 'Содержание и эксплуатация оборудования';
      s_kodp := findKodInFindSpprod(s_nmat);
      vTip_Doc_Id := 145;
      reloadNorms(0);
      label19.caption := s_nmat;
    end
    else
    begin
      if (findCurDoc(vStruk_Id, MES_conf, GOD_conf, 143, '')) then
      begin
        s_nmat := 'Инвентарь и хозпринадлежности';
        s_kodp := findKodInFindSpprod(s_nmat);
        vTip_Doc_Id := 143;
        reloadNorms(0);
        label19.caption := s_nmat;
      end
      else
      begin
        if (findCurDoc(vStruk_Id, MES_conf, GOD_conf, 209, '')) then
        begin
          s_nmat := 'Спецодежда и средства индивидуальной защиты';
          s_kodp := findKodInFindSpprod(s_nmat);
          vTip_Doc_Id := 209;
          reloadNorms(0);
          label19.caption := s_nmat;
        end
        else
          if showViborPrep() then
          begin
            reloadNorms(0);
          end;
      end;
    end;
  end;
end;

procedure TFAktRashoda.monthComboSelect(Sender: TObject);
begin
  reloadNorms(0);
end;

function TFAktRashoda.activateNormQuery() : boolean;
begin
  try
    if (s_kodp <> 0) then
    begin
      NormVQuery.Active := False;
      NormVQuery.ParamByName('GOD').AsInteger := StrToInt(yearEdit.Text);
      NormVQuery.ParamByName('MES').AsInteger := monthCombo.ItemIndex + 1;
      NormVQuery.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
      NormVQuery.ParamByName('KSM_ID').AsInteger := s_kodp;
      NormVQuery.Active := True;
    end;

    result := true;
  except
  on E: Exception do
    result := false;
  end;
end;

function TFAktRashoda.loadNormMemDat() : boolean;
begin
    NormiMemDat.EmptyTable;
    NormiMemDat.LoadFromDataSet(NormVQuery,0,lmAppend);
    NormiMemDat.Active := True;
    NormiMemDat.First;
    result := true;
end;

function TFAktRashoda.loadKart(strukId, docId : integer) : boolean;
begin
    DM1.Kart.Close;
    DM1.Kart.MacroByName('USL').AsString := ' where kart.doc_id = '
                                            + IntToStr(docId);
  //                                          + ' and kart.struk_id = '
  //                                          + IntToStr(strukId);
    DM1.Kart.Active := true;

    result := true;
end;

function TFAktRashoda.saveMemToKart() : boolean;
begin
    if (DM1.Kart.RecordCount > 0) then
      // Сначала удаляем из Карта все, чего нету в мемори таблице
      deleteKart();
    if ((vTip_Doc_Id = 144) or (vTip_Doc_Id = 209)) and (yearEdit.Text >= '2015') then
      deleteSpecKart;
    deletePrixKart;
      // Затем переносим все изменения из мемори таблицы в Карт и сохраняем
    saveAllMem2Kart();
    result := true;
end;

procedure TFAktRashoda.deleteSpecKart;
begin
  if (findSpecKart(vStruk_Id, 0, StrToDate(s_dat1), StrToDate(s_dat2))) then
  begin
    q_specKart.First;
    while (not q_specKart.Eof) do
      q_specKart.Delete;
    q_specKart.ApplyUpdates;
    dm1.commitWriteTrans(true);
  end;
end;

function TFAktRashoda.deleteKart() : boolean;
begin
  DM1.Kart.First;
  while (not DM1.Kart.Eof) do
    DM1.Kart.Delete;
  if (dm1.Kart.UpdatesPending) then
  begin
    DM1.Kart.ApplyUpdates;
    DM1.IBT_Write.CommitRetaining;
  end;
  dm1.kart.Close;
  result := true;
end;

//function TFAktRashoda.deleteKart() : boolean;
//begin
//  DM1.Kart.First;
//  while (not DM1.Kart.Eof) do
//  begin
//    if (not NormiMemDat.Locate('ksm_id', dm1.KartKSM_ID.AsInteger, [])) then
//    begin
//      DM1.Kart.Delete;
//      DM1.Kart.ApplyUpdates;
//      DM1.IBT_Write.CommitRetaining;
//    end
//    else
//      DM1.Kart.Next;
//  end;
//  result := true;
//end;

function TFAktRashoda.saveMemRec2Kart() : boolean;
begin
  loadKart(vStruk_Id, DM1.DocumentDOC_ID.AsInteger);
    DM1.Kart.Insert;
    vKart_Id := 0;
    DM1.KartStroka_Id.AsInteger := vStroka_Id;
    DM1.KartStruk_Id.AsInteger := vStruk_Id;
    DM1.KartKart_Id.AsInteger := vKart_Id;
    DM1.KartDoc_Id.AsInteger := DM1.DocumentDOC_ID.AsInteger;
    DM1.Karttip_op_id.AsInteger := DM1.DocumentTIP_OP_ID.AsInteger;
    DM1.Karttip_dok_id.AsInteger := DM1.DocumentTIP_DOK_ID.AsInteger;
//    if (NormiMemDatSPEC.AsInteger = 1) then
//      DM1.Kartkol_rash_ediz.AsFloat := 0
//    else
      if (NormiMemDatSPEC.AsInteger = 0) then
        DM1.Kartkol_rash_ediz.AsFloat := NormiMemDatFACTRASHOD.AsFloat;
    DM1.KartKSM_ID.AsInteger := NormiMemDatKSM_ID.AsInteger;
    DM1.KartRAZDEL_ID.AsInteger := NormiMemDatRAZDEL_ID.AsInteger;
    DM1.KartKEI_ID.AsInteger := NormiMemDatKEI_ID.AsInteger;
    DM1.KartKRAZ.AsInteger := NormiMemDatKRAZ.AsInteger;
//    dm1.KartCENA.AsFloat := NormiMemDatCENA.AsFloat;
//    dm1.KartCENA_VP.AsFloat := NormiMemDatCENA.AsFloat;
    VDOCUMENT_ID := DM1.DocumentDOC_ID.AsInteger;
    DM1.Kart.Post;
    if (DM1.Kart.UpdatesPending) then
    begin
      DM1.Kart.ApplyUpdates;
      dm1.commitWriteTrans(true);
    end;
    result := true;

end;

function TFAktRashoda.isRecIsSpec(ksmId : integer) : boolean;
begin
  result := false;
  q_matrop.Close;
  q_matrop.ParamByName('ksm_id').AsInteger := ksmId;
  q_matrop.Open;
  if (q_matropACCOUNT.AsString = '10/10') or (q_matropACCOUNT.AsString = '10/11') then
    result := true;
end;

function TFAktRashoda.saveAllMem2Kart() : boolean;
begin
    NormiMemDat.First;
    if (not DM1.Kart.Active) then
      dm1.Kart.Open;
    mem_notAdded.EmptyTable;
    mem_notAdded.Open;
    if (yearEdit.Text >= '2015') then
    begin
      if (not openSpecDoc()) then
        createSpecDoc;
      findSpecKart(vStruk_Id, 0, StrToDate(s_dat1), StrToDate(s_dat2));
    end;
    while (not NormiMemDat.Eof) do
    begin
      try
        if (NormiMemDatFACTRASHOD.AsFloat <> 0) then
        begin
          if (yearEdit.Text >= '2015') then
          begin
            if (not cb_saveNoSpec.Checked)
               and ((findSpecOstAllOr11(NormiMemDatKSM_ID.AsInteger, true)
                    or (isRecIsSpec(NormiMemDatKSM_ID.AsInteger)))
                   and ((vTip_Doc_Id = 144) or (vTip_Doc_Id = 209))) then
            begin
              if (findSpecOstAllOr11(NormiMemDatKSM_ID.AsInteger, false))
                 and (getCurOst11() >= NormiMemDatFACTRASHOD.AsFloat) then
              begin
//                if (addSpecRec2Prixod()) then
                  insertRecToSpecKart;
              end
              else
                addRecToNotAdded;
            end;
          end
          else
          begin
            NormiMemDat.Edit;
            NormiMemDatSPEC.AsInteger := 0;
            NormiMemDat.Post;
          end;
          if (NormiMemDatSPEC.AsInteger = 0) then
            saveMemRec2Kart();
        end;
      except
        on e : exception do
        begin
          dm1.Kart.CancelUpdates;
          dm1.IBT_Write.RollbackRetaining;
          dm1.IBT_Read.RollbackRetaining;
          MessageDlg('Произошла ошибка при сохранении! ' + #13 + E.Message, mtWarning, [mbOK], 0);
          result := false;
        end;
      end;
        NormiMemDat.Next;
    end;
    if (vTip_Doc_Id = 144) or (vTip_Doc_Id = 209) then
      deleteSpecDoc;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//    add2Prixod();//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    NormiMemDat.First;
    while (not NormiMemDat.Eof) do
    begin
      NormiMemDat.Edit;
      NormiMemDatSPEC.AsInteger := 0;
      NormiMemDat.Post;
      NormiMemDat.Next;
    end;

    result := true;
end;

procedure TFAktRashoda.deleteSpecDoc;
begin
  if (q_specKart.RecordCount = 0) then
  begin
    if (q_specDoc.RecordCount <> 0) then
    begin
      q_specKart.Close;
      q_docParam.Close;
      q_docParam.ParamByName('doc_id').AsInteger := q_specDocDOC_ID.AsInteger;
      q_docParam.Open;
      dm1.commitReadTrans(true);
      q_specDoc.Delete;
      q_specDoc.ApplyUpdates;
      dm1.commitWriteTrans(true);
    end;
  end;
end;

//function TFAktRashoda.saveAllMem2Kart() : boolean;
//begin
//  try
//    NormiMemDat.First;
//    if (not DM1.Kart.Active) then
//      dm1.Kart.Open;
//    while (not NormiMemDat.Eof) do
//    begin
//      if (dm1.Kart.Locate('ksm_id', NormiMemDatKSM_ID.AsInteger, [])) then
//      begin
//        if (NormiMemDatFACTRASHOD.AsFloat = 0) then
//        begin
//          dm1.Kart.Delete;
//          dm1.Kart.ApplyUpdates;
//          dm1.commitWriteTrans(true);                                                                                                                      //////
//        end
//        else
//        begin
//          if (DM1.KartKOL_RASH_EDIZ.AsFloat <> NormiMemDatFACTRASHOD.AsFloat)
//             or (DM1.KartRAZDEL_ID.AsInteger <> NormiMemDatRAZDEL_ID.AsInteger)
//             or (Dm1.KartKEI_IDN.AsInteger <> NormiMemDatKEI_ID.AsInteger)
//             {or (dm1.KartCENA.AsFloat <> NormiMemDatCENA.AsFloat)} then
//          begin
//            DM1.Kart.Edit;
//            DM1.KartKOL_RASH_EDIZ.AsFloat := NormiMemDatFACTRASHOD.AsFloat;
//            DM1.KartRAZDEL_ID.AsInteger := NormiMemDatRAZDEL_ID.AsInteger;
//            DM1.KartKEI_ID.AsInteger := NormiMemDatKEI_ID.AsInteger;
////            dm1.KartCENA.AsFloat := NormiMemDatCENA.AsFloat;
////            dm1.KartCENA_VP.AsFloat := NormiMemDatCENA.AsFloat;
//            VDOCUMENT_ID := DM1.DocumentDOC_ID.AsInteger;
//            vKart_id := DM1.KartKART_ID.AsInteger;
//            DM1.Kart.Post;
//          end;
//        end;
//      end
//      else
//        if (NormiMemDatFACTRASHOD.AsFloat <> 0) then
//          saveMemRec2Kart();
//      NormiMemDat.Next;
//    end;
//    saveKart2DB();
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//    add2Prixod();//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//    result := true;
//  except
//    on e: exception do
//    begin
//      MessageDlg('Произошла ошибка! ' + #13 + E.Message, mtWarning, [mbOK], 0);
//      result := false;
//    end;
//  end;
//end;

procedure TFAktRashoda.N3Click(Sender: TObject);
begin
  askToSaveModified(Sender);
  askToPrintNullRecords;
  frxReport1.LoadFromFile(reportsPath + 'AktRashoda#2.fr3');
  loadNormiReport();
end;

procedure TFAktRashoda.N1Click(Sender: TObject);
begin
  askToSaveModified(Sender);
  askToPrintNullRecords;
  frxReport1.LoadFromFile(reportsPath + 'AktRashoda#2inv.fr3');
  loadNormiReport();
end;

procedure TFAktRashoda.N2Click(Sender: TObject);
begin
  askToSaveModified(Sender);
  askToPrintNullRecords;
  frxReport1.LoadFromFile(reportsPath + 'AktRashoda#2spec.fr3');
  loadNormiReport();
end;

procedure TFAktRashoda.N4Click(Sender: TObject);
begin
  askToSaveModified(Sender);
  askToPrintNullRecords;
  frxReport1.LoadFromFile(reportsPath + 'AktRashoda#2materials.fr3');
  loadNormiReport();
end;

function TFAktRashoda.loadNormiReport() : boolean;
begin
  frxReport1.Script.Variables['year'] := yearEdit.Text;
  frxReport1.Script.Variables['month'] := dm1.GetStrMes(monthCombo.ItemIndex + 1);
  if NormVQuerySTNAME.AsString <> 'Экспер-произв.цех' then
    frxReport1.Script.Variables['ceh'] := IntToStr(GetCehNum(NormVQuerySTNAME.AsString))
  else
    frxReport1.Script.Variables['ceh'] := 'экспер.-произв. цех';
  frxReport1.Script.Variables['nDoc'] := nDocEdit.Text;
    {DocTipParam.First;
    frxReport1.Script.Variables['param1'] := DocTipParamPARAM_NAME.AsString;
    frxReport1.Script.Variables['podp1'] := DocTipParamDEFAULT_VALUE.AsString;
    DocTipParam.Next;
    if not DocTipParam.Eof then
    begin
      frxReport1.Script.Variables['param2'] := DocTipParamPARAM_NAME.AsString;
      frxReport1.Script.Variables['podp2'] := DocTipParamDEFAULT_VALUE.AsString;
      DocTipParam.Next;
    end
    else
    begin
      frxReport1.Script.Variables['param2'] := '';
      frxReport1.Script.Variables['podp2'] := '';
    end;
    if not DocTipParam.Eof then
    begin
      frxReport1.Script.Variables['param3'] := DocTipParamPARAM_NAME.AsString;
      frxReport1.Script.Variables['podp3'] := DocTipParamDEFAULT_VALUE.AsString;
      DocTipParam.Next;
    end
    else
    begin
      frxReport1.Script.Variables['param3'] := '';
      frxReport1.Script.Variables['podp3'] := '';
    end;
    if not DocTipParam.Eof then
    begin
      frxReport1.Script.Variables['param4'] := DocTipParamPARAM_NAME.AsString;
      frxReport1.Script.Variables['podp4'] := DocTipParamDEFAULT_VALUE.AsString;
      DocTipParam.Next;
    end
    else
    begin
      frxReport1.Script.Variables['param4'] := '';
      frxReport1.Script.Variables['podp4'] := '';
    end;
    if not DocTipParam.Eof then
    begin
      frxReport1.Script.Variables['param5'] := DocTipParamPARAM_NAME.AsString;
      frxReport1.Script.Variables['podp5'] := DocTipParamDEFAULT_VALUE.AsString;
    end
    else
    begin
      frxReport1.Script.Variables['param5'] := '';
      frxReport1.Script.Variables['podp5'] := '';
    end;
    DocTipParam.Next;
    if not DocTipParam.Eof then
    begin
      frxReport1.Script.Variables['param6'] := DocTipParamPARAM_NAME.AsString;
      frxReport1.Script.Variables['podp6'] := DocTipParamDEFAULT_VALUE.AsString;
      DocTipParam.Next;
    end
    else
    begin
      frxReport1.Script.Variables['param6'] := '';
      frxReport1.Script.Variables['podp6'] := '';
    end;
    if not DocTipParam.Eof then
    begin
      frxReport1.Script.Variables['param7'] := DocTipParamPARAM_NAME.AsString;
      frxReport1.Script.Variables['podp7'] := DocTipParamDEFAULT_VALUE.AsString;
      DocTipParam.Next;
    end
    else
    begin
      frxReport1.Script.Variables['param7'] := '';
      frxReport1.Script.Variables['podp7'] := '';
    end;
    if not DocTipParam.Eof then
    begin
      frxReport1.Script.Variables['param8'] := DocTipParamPARAM_NAME.AsString;
      frxReport1.Script.Variables['podp8'] := DocTipParamDEFAULT_VALUE.AsString;  
    end
    else
    begin
      frxReport1.Script.Variables['param8'] := '';
      frxReport1.Script.Variables['podp8'] := '';
    end;                   }
  frxReport1.ShowReport(true);
  result := true;
end;

procedure TFAktRashoda.NormiMemDatFACTRASHODChange(Sender: TField);
var
  otklonenie : double;
begin
  otklonenie := NormiMemDatFACTRASHOD.AsFloat - NormiMemDatPLNORM.AsFloat;
  otklonenie := setZnak1(NormiMemDatKSM_ID.AsInteger,
                         otklonenie,
                         NormiMemDatPLNORM.AsFloat); 
  if otklonenie > 0 then
    NormiMemDatOTKLONENIE.AsString := '+' + FloatToStr(otklonenie)
  else
    NormiMemDatOTKLONENIE.AsString := FloatToStr(otklonenie);
end;

procedure TFAktRashoda.NormiMemDatPLNORMChange(Sender: TField);
var
  otklonenie : double;
begin
  otklonenie := NormiMemDatFACTRASHOD.AsFloat - NormiMemDatPLNORM.AsFloat;
  otklonenie := setZnak1(NormiMemDatKSM_ID.AsInteger,
                         otklonenie,
                         NormiMemDatPLNORM.AsFloat);
  if otklonenie > 0 then
    NormiMemDatOTKLONENIE.AsString := '+' + FloatToStr(otklonenie)
  else
    NormiMemDatOTKLONENIE.AsString := FloatToStr(otklonenie);
end;

function TFAktRashoda.GetCehNum(cehName: string) : integer;
begin
  Delete(cehName,1,5);
  Delete(cehName,3,13);
  result := StrToInt(cehName);
end;

function TFAktRashoda.SetMonthCombo(month : integer) : boolean;
begin
//  try
    monthCombo.ItemIndex := month - 1;
    result := true;
//  except
//    on e : exception do
//    result := false;
//  end;
end;

procedure TFAktRashoda.ToolButton1Click(Sender: TObject);
begin
   PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFAktRashoda.btn_appendSignClick(Sender: TObject);
begin
  underS.appendUnderSign;
end;

procedure TFAktRashoda.btn_delAllClick(Sender: TObject);
begin
  underS.deleteAll;
end;

procedure TFAktRashoda.btn_delSignClick(Sender: TObject);
begin
  deleteDocTipParam;
end;

procedure TFAktRashoda.btn_insertSignClick(Sender: TObject);
begin
  insertDocTipParam;
end;

procedure TFAktRashoda.btn_moveDownClick(Sender: TObject);
begin
  underS.moveDown;
end;

procedure TFAktRashoda.btn_moveUpClick(Sender: TObject);
begin
  underS.moveUp;
end;

procedure TFAktRashoda.SpeedButton2Click(Sender: TObject);
begin
  if showViborPrep() then
  begin
    reloadNorms(0);
  end;
end;

procedure TFAktRashoda.ToolButton5Click(Sender: TObject);
var
  razdelId, kRaz : integer;
  namRaz : string;
begin
  razdelId := NormiMemDatRAZDEL_ID.AsInteger;
  namRaz := NormiMemDatNAMRAZ.AsString;
  kRaz := NormiMemDatKRAZ.AsInteger;
  NormiMemDat.Insert;
  NormiMemDatRAZDEL_ID.AsInteger := razdelId;
  NormiMemDatNAMRAZ.AsString := namRaz;
  NormiMemDatKRAZ.AsInteger := kRaz;
  NormiMemDat.Post;
end;

procedure TFAktRashoda.ToolButton8Click(Sender: TObject);
begin
  S_ksm := NormiMemDatKSM_ID.AsInteger;
  FOstSyr.Edit1.text := inttostr(NormiMemDatKSM_ID.AsInteger);
  FOstSyr.Label7.Caption := NormiMemDatNMAT_KSM.AsString;
  FOstSyr.label8.Caption := NormiMemDatNEIS.AsString;

  FOstSyr.DateEdit3.Date := strtodate(s_dat1);
  FOstSyr.DateEdit4.Date := strtodate(s_dat2);
  if FOstSyr = nil then
    FOstSyr := TFOstSyr.Create(Application);
  FOstSyr.ShowModal;
end;

procedure TFAktRashoda.btn_notAddedClick(Sender: TObject);
begin
  frxReport1.LoadFromFile(reportsPath + 'AktRashoda_not_added.fr3');
  frxReport1.ShowReport(true);  
end;

procedure TFAktRashoda.activateFindMatrop;
begin
  if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
    FindMatrop.DataBaseName:=dm1.BELMED;
  FindMatrop.ReadOnly:=true;
  FindMatrop.ShowModal;
end;

procedure TFAktRashoda.insertFindMatropInMemDat;
var
  razdelId, kRaz : integer;
  namRaz : string;
begin
  if FindMatrop.ModalResult > 50 then
  begin
    if NormiMemDatRazdel_id.AsInteger = 0 then
    begin
      razdelId := 13;
      kRaz := 41;
      namRaz := 'Вспомогательное сырье';
    end
    else
    begin
      razdelId := NormiMemDatRAZDEL_ID.AsInteger;
      namRaz := NormiMemDatNAMRAZ.AsString;
      kRaz := NormiMemDatKRAZ.AsInteger;
    end;
    NormiMemDat.Insert;
    NormiMemDat.Edit;
    NormiMemDatKSM_ID.AsInteger := FindMatrop.IBMatropKSM_ID.AsInteger;
    NormiMemDatNMAT_KSM.AsString := FindMatrop.IBMatropNMAT.AsString;
    NormiMemDatNEIS.AsString := FindMatrop.IBMatropNEIS.AsString;
    NormiMemDatPLNORM.AsFloat := 0.0;
    NormiMemDatRAZDEL_ID.AsInteger := razdelId;
    NormiMemDatNAMRAZ.AsString := namRaz;
    NormiMemDatKRAZ.AsInteger := kRaz;
    NormiMemDatPERENOS.AsBoolean := false;
    NormiMemDatKEI_ID.AsInteger := FindMatrop.IBMatropKEI_ID.AsInteger;
    NormiMemDat.Post;
//    NormiMemDat.SortOnFields('NAMRAZ', true, false);
  end;
end;

procedure TFAktRashoda.changeFindMatropInMemDat;
var
  razdelId, ksmId, kRaz : integer;
  namRaz : string;
begin
  if (FindMatrop.ModalResult > 50) then
  begin
    ksmId := FindMatrop.IBMatropKSM_ID.AsInteger;
    if (NormiMemDat.Locate('ksm_id', ksmId, [])) then
      ShowMessage('This material is in report')
    else
    begin
      setEmptyMemAsCur(ksmId);
      if (NormiMemDatRazdel_id.AsInteger = 0) then
      begin
        razdelId := 13;
        kRaz := 41;
        namRaz := 'Вспомогательное сырье';
      end
      else
      begin
        razdelId := NormiMemDatRAZDEL_ID.AsInteger;
        namRaz := NormiMemDatNAMRAZ.AsString;
        kRaz := NormiMemDatKRAZ.AsInteger;
      end;
      NormiMemDat.Edit;
      NormiMemDatKSM_ID.AsInteger := FindMatrop.IBMatropKSM_ID.AsInteger;
      NormiMemDatNMAT_KSM.AsString := FindMatrop.IBMatropNMAT.AsString;
      NormiMemDatNEIS.AsString := FindMatrop.IBMatropNEIS.AsString;
      NormiMemDatPLNORM.AsFloat := 0.0;
      NormiMemDatRAZDEL_ID.AsInteger := razdelId;
      NormiMemDatNAMRAZ.AsString := namRaz;
      NormiMemDatKRAZ.AsInteger := kRaz;
      NormiMemDatPERENOS.AsBoolean := false;
      NormiMemDatKEI_ID.AsInteger := FindMatrop.IBMatropKEI_ID.AsInteger;
      NormiMemDat.Post;
//      formCenaQ(false);
//      cenaQ.Open;
//      distributeCena(false);
  //    NormiMemDat.SortOnFields('NAMRAZ', true, false);
    end;
  end;
end;

procedure TFAktRashoda.yearEditKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    reloadNorms(0);
end;

function TFAktRashoda.findCurDoc(strukId, month, year, tipDokId : integer; materChar : string) : boolean;
begin
  DM1.Document.Active := false;
  DM1.Document.MacroByName('USL').AsString := ' where document.struk_id = ' +
                                              IntToStr(strukId) + ' and ' +
                                              'document.tip_dok_id = ' +
                                              IntToStr(tipDokId) +
                                              ' and document.date_dok between '''
                                              + s_dat1 + ''' and '''
                                              + s_dat2 + ''' ';
//                                              ' and document.date_dok = ''01.' +
//                                              IntToStr(month) +
//                                              '.' +
//                                              IntToStr(year) +
//                                              '''';
  DM1.Document.Active := true;
  dm1.Document.FetchAll;

  if (DM1.Document.Eof) then
    result := false
  else
  begin
    curDocId := dm1.DocumentDOC_ID.AsInteger;
    edit_dokDate.Date := dm1.DocumentDATE_DOK.AsDateTime;
    result := true;
  end;
end;

function TFAktRashoda.showViborPrep() : boolean;
begin
  if FindSpprod = nil then
    FindSpprod := TfindSpprod.Create(Application);
  FindSpprod.DataBaseName := dm1.BELMED;
  FindSpprod.ReadOnly := true;
  FindSpprod.Usl_Struk := 'spprod.struk_id=' + inttostr(vStruk_id);
  FindSpprod.ShowModal;

  if FindSpprod.ModalResult > 50 then
  begin
    EDIT1.OnChange := nil;
    edit1.text := FindSpprod.IBSpprodKod_Prod.Asstring;
    EDIT1.OnChange := Edit1Change;
    s_kodp := FindSpprod.ModalResult - 50;
    s_nmat := FindSpprod.IBSpprodNMAT.AsString;
    if FindSpprod.IBSpprod.FieldByName('ACTIVP').Asinteger = 1 then
      s_lab11 := 'Действующие'
    else
      s_lab11 := 'Недействующие';
    label19.caption := s_NMAT;
    usl_n := '';
    label11.caption := s_lab11;
//    IF NormiMemDat.eof THEN
//    begin
//      label11.caption := 'Нет норм';
//      label11.Font.Color := clRed;
//    end
//    else
//    begin
      if s_lab11 = 'Действующие' then
        label11.Font.Color := clNavy
      else
        label11.Font.Color := clRed;
//    end;
    result := true;
  end
  else
    result := false;
end;

function TFAktRashoda.createCurDoc(strukId, month, year : integer; materChar : string) : boolean;  
begin
  vTip_Op_Id := 32;
//  if materChar = '' then
//    vTip_Doc_Id := 144;
//  if materChar = 'м' then
//    vTip_Doc_Id := 145;
  vNdoc := nDocEdit.Text;
  vDate_dok := edit_dokDate.Date;
  vDate_op := vDate_dok;
  DM1.Document.Edit;
  result := true;
end;

procedure TFAktRashoda.DBGridEh1CellClick(Column: TColumnEh);
begin
  if (Column.Index = 6) then
  begin
    NormiMemDat.Edit;
    if (Column.CheckboxState = (cbUnChecked)) then
      NormiMemDatFACTRASHOD.AsFloat := NormiMemDatPLNORM.AsFloat
    else
      NormiMemDatFACTRASHOD.AsFloat := 0;
  end;
end;

procedure TFAktRashoda.DBGridEh1Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  activateFindMatrop;
  changeFindMatropInMemDat;
end;

procedure TFAktRashoda.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  FLookupEis.IBQuery.DataBase := DM1.BELMED;
  FLookupEis.IBQuery.SQL.Text:='select ediz.kei_id, ediz.neis ' +
                                 'from ediz ';
  FLookupEis.IBQuery.Open;
  FLookupEis.IBQuery.FetchAll;
  FLookupEis.Left := Mouse.CursorPos.X;
  FLookupEis.Top := Mouse.CursorPos.Y;
  FLookupEis.ShowModal;
  if FLookupEis.ModalResult <> mrCancel then
  begin
    NormiMemDat.Edit;
    NormiMemDatNEIS.AsString := FLookupEis.IBQuery.FieldByName('NEIS').AsString;
    NormiMemDatKEI_ID.AsInteger := FLookupEis.IBQuery.FieldByName('KEI_ID').AsInteger;
  end;
  FLookupEis.IBQuery.Close;
end;

procedure TFAktRashoda.DBGridEh1Columns7EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  FLookupRaz.IBQuery.DataBase := DM1.BELMED;
  FLookupRaz.IBQuery.SQL.Text:='select razdel.namraz, razdel.RAZDEL_ID, razdel.kraz ' +
                                 'from razdel ';
  FLookupRaz.IBQuery.Open;
  FLookupRaz.IBQuery.FetchAll;
  FLookupRaz.Left := Mouse.CursorPos.X - FLookupRaz.Width;
  FLookupRaz.Top := Mouse.CursorPos.Y;
  FLookupRaz.ShowModal;
  if FLookupRaz.ModalResult <> mrCancel then
  begin
    NormiMemDat.Edit;
    NormiMemDatNAMRAZ.AsString := FLookupRaz.IBQuery.FieldByName('NAMRAZ').AsString;
    NormiMemDatRAZDEL_ID.AsInteger := FLookupRaz.IBQuery.FieldByName('RAZDEL_ID').AsInteger;
    NormiMemDatKRAZ.AsInteger := FLookupRaz.IBQuery.FieldByName('KRAZ').AsInteger;
    NormiMemDat.Post;
    NormiMemDat.SortOnFields('NAMRAZ', true, false);
  end;
  FLookupRaz.IBQuery.Close;

end;

procedure TFAktRashoda.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (DBGridEh1.Col = 1) then
  begin
    if (Key = vk_return) then
    begin
      if (tempQuery.Active) then
        tempQuery.Active := false;
      if (NormiMemDat.State = dsEdit) or (NormiMemDat.State = dsInsert) then
        NormiMemDat.Post;
      tempQuery.ParamByName('KSM_ID').AsInteger := NormiMemDatKSM_ID.AsInteger;
      tempQuery.Active := true;

      if (not tempQuery.IsEmpty) then
      begin
        changeRecInMem(tempQueryKSM_ID.AsInteger,
                       vStruk_Id,
                       NormiMemDatRAZDEL_ID.AsInteger,
                       NormiMemDatMEDEND.AsInteger,
                       tempQueryKEI_ID.AsInteger,
                       NormiMemDatKRAZ.AsInteger,
                       tempQueryNMAT.AsString,
                       tempQueryNEIS.AsString,
                       NormiMemDatSTNAME.AsString,
                       NormiMemDatNMAT.AsString,
                       NormiMemDatNAMRAZ.AsString,
                       '',
                       0,
                       NormiMemDatFACTRASHOD.AsFloat,
                       NormiMemDatOST_STRUK_ID.AsInteger,
                       0);
//        formCenaQ(false);
//        cenaQ.Open;
//        distributeCena(false);
      end
      else
        ShowMessage('Не найдено такое сырье');
      tempQuery.Active := false;
    end;
  end;

  if (key = 73) and (Shift = [ssCtrl]) then
  begin
    S_ksm := NormiMemDatKSM_ID.AsInteger;
    FOstSyr.Edit1.text := inttostr(NormiMemDatKSM_ID.AsInteger);
    FOstSyr.Label7.Caption := NormiMemDatNMAT_KSM.AsString;
    FOstSyr.label8.Caption := NormiMemDatNEIS.AsString;

    FOstSyr.DateEdit3.Date := strtodate(s_dat1);
    FOstSyr.DateEdit4.Date := strtodate(s_dat2);
    if FOstSyr = nil then
      FOstSyr := TFOstSyr.Create(Application);
    FOstSyr.ShowModal;
  end;
end;

procedure TFAktRashoda.DBGridEh1TitleClick(Column: TColumnEh);
begin
  if (Column.Index = 8) then
  begin
      NormiMemDat.SortOnFields('NAMRAZ', true, descend);
      if (descend = false) then
        descend := true
      else
        descend := false;
  end;
  if (Column.Index = 7) then
  begin
      NormiMemDat.SortOnFields('KRAZ', true, descend);
      if (descend = false) then
        descend := true
      else
        descend := false;
  end;

end;

procedure TFAktRashoda.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
  if DocTipParam.IsEmpty then
  begin
    DocTipParam.Edit;
    DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
    DocTipParamPARAM_TYPE.AsString := 'C';
    DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
    DocTipParam.Post;
  end
  else
  begin
    if DocTipParamTIP_DOK_ID.AsInteger = 0 then
    begin
      DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
      DocTipParamPARAM_TYPE.AsString := 'C';
      DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
    end;
  end;
end;

function TFAktRashoda.saveDoc() : boolean;
begin
  try
    DM1.Document.Edit;
    DM1.DocumentNDOK.AsString := nDocEdit.Text;
    dm1.DocumentKLIENT_ID.AsInteger := s_kodp;
    dm1.DocumentDATE_OP.AsDateTime := edit_dokDate.Date;
    dm1.DocumentDATE_DOK.AsDateTime := edit_dokDate.Date;
    DM1.Document.Post;
    DM1.Document.ApplyUpdates;
    dm1.startReadTrans;
    dm1.startWriteTrans;
    DM1.IBT_WRITE.CommitRetaining;
    DM1.IBT_READ.CommitRetaining;
    curDocId := dm1.DocumentDOC_ID.AsInteger;
    result := true;
  except
  on e: exception do
  begin
    result := false;
    MessageDlg('Произошла ошибка при записи документа акта! '+ #13 + E.Message, mtWarning, [mbOK], 0);
  end;
  end;
end;

function TFAktRashoda.findKodInFindSpprod(nmat : string) : integer;
begin
//  FindSpprod.IBSpprod.Database := dm1.BELMED;
  {FindSpprod.}IBSpprod.Active := False;
  {FindSpprod.}IBSpprod.MacroByName('Usl_Spvis').AsString := ' spprod.nmat '
                                                        + '= ''' + nmat + ''' ';
  {FindSpprod.}IBSpprod.MacroByName('Usl_Struk').AsString := ' spprod.struk_id ' +
                                                            ' = ' +
                                                            IntToStr(vStruk_Id) + ' ';
  {FindSpprod.}IBSpprod.Active := True;
  Edit1.Text := {FindSpprod.}IBSpprodKOD_PROD.AsString;
  if {FindSpprod.}IBSpprod.FieldByName('ACTIVP').Asinteger = 1 then
  begin
    Label11.Caption := 'Действующие';
    label11.Font.Color := clNavy;
  end
  else
  begin
    Label11.Caption := 'Недействующие';
    label11.Font.Color := clRed;
  end;
  result := {FindSpprod.}IBSpprodKSM_ID.AsInteger;
end;

function TFAktRashoda.saveKart2DB() : boolean;
begin
    VDOCUMENT_ID := DM1.DocumentDOC_ID.AsInteger;
    if (DM1.Kart.UpdatesPending) then
    begin
      DM1.Kart.ApplyUpdates;
      dm1.commitWriteTrans(true);
    end;
    result := true;
end;

function TFAktRashoda.closeQueries() : boolean;
begin
//  try
    DM1.Document.Close;
    dm1.Document.MacroByName('usl').AsString := '0=0';
    DM1.Kart.Close;
    dm1.Kart.MacroByName('usl').AsString := '0=0';
    dm1.Ostatki.Close;
    dm1.Ostatki.MacroByName('usl').AsString := '0=0';
    dm1.IBT_Read.RollbackRetaining;
    dm1.IBT_Write.RollbackRetaining;
    s_kodp := 0;
    s_nmat := '';
    vklient_id := 0;
    s_ksm := 0;
    v_razdel := 0;
    v_kein := 0;
    vdocument_id := 0;
    curDocId := 0;

    FindSpprod.IBSpprod.Active := false;
    NormiMemDat.EmptyTable;
    NormiMemDat.Active := false;
    NormiMemDat.Active := false;
    NormVQuery.Active := False;
    deactivateDocTipParam();
    cenaQ.Close;
    result := true;
//  except
//  on e : exception do
//    result := false;
//  end;
end;

function TFAktRashoda.addNormi2Mem() : boolean;
begin
  if (NormVQuery.Active) then
  begin
    NormVQuery.First;
    while (not NormVQuery.Eof) do
    begin
      if (NormiMemDat.Active) and (NormiMemDat.Locate('ksm_id; razdel_id',
                                                      VarArrayOf([NormVQueryKSM_ID.AsInteger,
                                                                  NormVQueryRAZDEL_ID.AsInteger]),
                                                      [])) then
        insertPlnorm2MemDat(NormVQueryPLNORM.AsFloat, NormVQueryKSM_ID.AsInteger)
      else
        insertRec2MemDat(NormVQueryKSM_ID.AsInteger, NormVQueryStruk_ID.AsInteger,
                         NormVQueryRAZDEL_ID.AsInteger, NormVQueryMEDEND.AsInteger,
                         NormVQueryKEI_ID.AsInteger, NormVQueryKRAZ.AsInteger,
                         NormVQueryNMAT_KSM.AsString, NormVQueryNEIS.AsString,
                         NormVQuerySTNAME.AsString, NormVQueryNMAT.AsString,
                         NormVQueryNAMRAZ.AsString, '', NormVQueryPLNORM.AsFloat, 0, vStruk_Id, 0);
//      if (not NormiMemDat.Locate('ksm_id; razdel_id',
//                                    VarArrayOf([NormVQueryKSM_ID.AsInteger,
//                                                NormVQueryRAZDEL_ID.AsInteger]),
//                                    [])) then
//        insertRec2MemDat(NormVQueryKSM_ID.AsInteger, NormVQueryStruk_ID.AsInteger,
//                         NormVQueryRAZDEL_ID.AsInteger, NormVQueryMEDEND.AsInteger,
//                         NormVQueryKEI_ID.AsInteger, NormVQueryKRAZ.AsInteger,
//                         NormVQueryNMAT_KSM.AsString, NormVQueryNEIS.AsString,
//                         NormVQuerySTNAME.AsString, NormVQueryNMAT.AsString,
//                         NormVQueryNAMRAZ.AsString, '', NormVQueryPLNORM.AsFloat, 0, vStruk_Id, 0)
//      else
//        insertPlnorm2MemDat(NormVQueryPLNORM.AsFloat, NormVQueryKSM_ID.AsInteger);
      NormVQuery.Next;
    end;
  end;
  result := true;
end;

function TFAktRashoda.insertRec2MemDat(ksmId, strukId, razdelId, medEnd, keiId, kRaz : integer;
                                       nMatKsm, nEIs, stName, nMat, namRaz, account : string;
                                       plNorm, factRashod : double; ostStrukId : integer; cena : double) : boolean;
begin
  if (not NormiMemDat.Active) then
    NormiMemDat.Active := True;
  NormiMemDat.Insert;
  changeRecInMem(ksmId, strukId, razdelId, medEnd, keiId, kRaz, nMatKsm, nEIs,
                 stName, nMat, namRaz, account, plNorm, factRashod, ostStrukId, cena);
  result := true;
end;

function TFAktRashoda.changeRecInMem(ksmId, strukId, razdelId, medEnd, keiId, kRaz : integer;
                                     nMatKsm, nEIs, stName, nMat, namRaz, account : string;
                                     plNorm, factRashod : double; ostStrukId : integer; cena : double) : boolean;
begin
    NormiMemDat.Edit;
    NormiMemDatKSM_ID.AsInteger := ksmId;
    NormiMemDatNMAT_KSM.AsString := nMatKsm;
    NormiMemDatNEIS.AsString := nEIs;
    NormiMemDatPLNORM.AsFloat := plNorm;
    NormiMemDatSTRUK_ID.AsInteger := strukId;
    NormiMemDatSTNAME.AsString := stName;
    NormiMemDatNMAT.AsString := nMat;
    NormiMemDatNAMRAZ.AsString := namRaz;
    NormiMemDatFACTRASHOD.AsFloat := factRashod;
    NormiMemDatPERENOS.AsBoolean := false;
    NormiMemDatRAZDEL_ID.AsInteger := razdelId;
    NormiMemDatMEDEND.AsInteger := medEnd;
    NormiMemDatKEI_ID.AsInteger := keiId;
    NormiMemDatKRAZ.AsInteger := kRaz;
    NormiMemDatOST_STRUK_ID.AsInteger := ostStrukId;
    NormiMemDatSPEC.AsInteger := 0;
    NormiMemDatACCOUNT.AsString := account;
//    if (NormiMemDatCENA.AsFloat = 0) and (cena <> 0) then
//      NormiMemDatCENA.AsFloat := cena;

    NormiMemDat.Post;
    result := true;
end;

function TFAktRashoda.addKart2Mem(): boolean;
var
  neis : string;
begin
    DM1.Kart.First;
    while (not DM1.Kart.Eof) do
    begin
      neis := DM1.KartNEISN.AsString;
      if (neis = '') then
      begin
        neis := findNormNeis(DM1.KartKSM_ID.AsInteger);
        if (neis = '') then
          neis := DM1.KartNEIS.AsString;
      end;

      insertRec2MemDat(DM1.KartKSM_ID.AsInteger, DM1.KartSTRUK_ID.AsInteger,
                       DM1.KartRAZDEL_ID.AsInteger, NormVQueryMEDEND.AsInteger,
                       DM1.KartKEI_IDN.AsInteger, DM1.KartKRAZ.AsInteger,
                       DM1.KartNMAT.AsString, neis, '','',
                       DM1.KartNAMRAZ.AsString, '', 0, DM1.KartKOL_RASH_EDIZ.AsFloat,
                       dm1.KartOST_STRUK_ID.AsInteger, dm1.KartCENA.AsFloat);
      DM1.Kart.Next;
    end;
    result := true;
end;

function TFAktRashoda.insertPlnorm2MemDat(plNorm : double; ksmId : integer) : boolean;
begin
  if (not NormiMemDat.Active) then
    NormiMemDat.Active := True;
//  result := false;
//  NormiMemDat.First;
//  while not NormiMemDat.Eof do
//  begin
//    if NormiMemDatKSM_ID.AsInteger = ksmId then
//    begin
      NormiMemDat.Edit;
      NormiMemDatPLNORM.AsFloat := plNorm;
      NormiMemDat.Post;
      result := true;
//      break;
//    end
//    else
//    begin
//      NormiMemDat.Next;
//      result := false;
//    end;
//  end;
end;

function TFAktRashoda.reloadNorms(nMat : integer) : boolean;
var
  curMonth, curYear : integer;
begin
  NormiMemDat.DisableControls;
  curMonth := monthCombo.ItemIndex + 1;
  curYear := StrToInt(yearEdit.Text);  
//  s_nmat := Label19.Caption;
  s_dat1 := DateToStr(encodeDate(curYear, curMonth, 1));
  edit_dokDate.Text := datetostr(IncMonth(strtodate(s_dat1), 1) - 1);
  if (curMonth = 12) then
    s_dat2 := DateToStr(encodeDate(curYear + 1, 1, 1) - 1)
  else
    s_dat2 := DateToStr(encodeDate(curYear, curMonth + 1, 1) - 1);


  try
    NormiMemDat.EmptyTable;
    ToolButton2.Enabled := true;
    if (s_nmat = 'Обеспечение требований по микробиологической чистоте') then
    begin
      findCurDoc(vStruk_Id, curMonth, curYear, 144, '');
      vTip_Doc_Id := 144;
      ToolButton2.Enabled := true;
    end;
    if (s_nmat = 'Содержание и эксплуатация оборудования') then
    begin
      findCurDoc(vStruk_Id, curMonth, curYear, 145, 'м');
      vTip_Doc_Id := 145;
      ToolButton2.Enabled := true;
    end;
    if (s_nmat = 'Инвентарь и хозпринадлежности') then
    begin
      findCurDoc(vStruk_Id, curMonth, curYear, 143, '');
      vTip_Doc_Id := 143;
      ToolButton2.Enabled := true;
    end;
    if (s_nmat = 'Спецодежда и средства индивидуальной защиты') then
    begin
      findCurDoc(vStruk_Id, curMonth, curYear, 209, '');
      vTip_Doc_Id := 209;
    end;
    vklient_id := 0;
    vklient_id1 := s_kodp;
    activateNormQuery();

    loadAndAddKart;

//    findAndSet10Account;
    addNormi2Mem();
    if (vTip_Doc_id = 144) or (vTip_Doc_Id = 209) then
      findAndSet10Account;
//    NormiMemDat.SortOnFields('factrashod', true, true);
    NormiMemDat.SortOnFields('Razdel_Id', true, false);
//    NormiMemDat.SortOnFields('factrashod', true, true);
    nDocEdit.Text := DM1.DocumentNDOK.AsString;

    label5.Caption := dm1.DocumentDOC_ID.AsString;
    loadDocTipParam(vTip_Doc_Id, vStruk_Id);

    saveCurState();
//    formCenaQ(true);
//    cenaQ.Open;
//    distributeCena(true);
    NormiMemDat.EnableControls;
    result := true;
  except
  on e : exception do
    result := false;
  end;
end;

procedure TFAktRashoda.loadAndAddKart;
begin
  dm1.Document.First;
  while (not dm1.Document.Eof) do
  begin
    loadKart(vStruk_Id, DM1.DocumentDOC_ID.AsInteger);
    addKart2Mem();
    dm1.Document.Next;
  end;
  
end;

function TFAktRashoda.addSpecRec2Prixod() : boolean;
begin
  // добавление в приход
  v_raspred := NormiMemDatFACTRASHOD.AsFloat;
  v_raspred_dob := NormiMemDatFACTRASHOD.AsFloat;
  s_ksm := NormiMemDatKsm_id.AsInteger;
  v_kein := NormiMemDatKei_id.AsInteger;
  vklient_id := s_kodp;
  v_razdel := NormiMemDatRazdel_id.AsInteger;
  tochn := -6;
  pr_kor := 0;
  self.DobPrixPrep(true);

  dm1.startReadTrans;
  dm1.startWriteTrans;
  DM1.IBT_WRITE.CommitRetaining;
  DM1.IBT_READ.CommitRetaining;
  result := true;
end;

function TFAktRashoda.add2Prixod() : boolean;
//var
//  curIndex : integer;
begin
//    curIndex := 0;
  // добавление в приход
    NormiMemDat.First;
    while (not NormiMemDat.Eof) do
    begin
      try
//      if memState[curIndex].GetValue <> NormiMemDatFACTRASHOD.AsFloat then
//      begin
        v_raspred_dob := NormiMemDatFACTRASHOD.AsFloat;
        s_ksm := NormiMemDatKsm_id.AsInteger;
        v_kein := NormiMemDatKei_id.AsInteger;
        vklient_id := s_kodp;
        v_razdel := NormiMemDatRazdel_id.AsInteger;
        tochn := -6;
        pr_kor := 0;
        if (NormiMemDatSPEC.AsInteger <> 2) and (NormiMemDatSPEC.AsInteger <> 1) then
          self.DobPrixPrep(false);
//      end;
//      curIndex := curIndex + 1;
      except
        on e: exception do
        begin
          result := false;
          MessageDlg('Произошла ошибка при добавлении в приход! '+ #13 + E.Message, mtWarning, [mbOK], 0);
        end;
      end;
      NormiMemDat.Next;
    end;
    dm1.startReadTrans;
    dm1.startWriteTrans;
    DM1.IBT_WRITE.CommitRetaining;
    DM1.IBT_READ.CommitRetaining;
    result := true;
end;

procedure TFAktRashoda.AddBtnClick(Sender: TObject);
begin
  insertDocTipParam;
end;

function TFAktRashoda.saveCurState() : boolean;
begin
//  try
    stateIndex := 0;
    NormiMemDat.First;
    while not NormiMemDat.Eof do
    begin
      memState[stateIndex].SetKey(NormiMemDatKSM_ID.AsInteger);
      memState[stateIndex].SetValue(NormiMemDatFACTRASHOD.AsFloat);
      stateIndex := stateIndex + 1;
      NormiMemDat.Next;
    end;
    result := true;
//  except
//  on e : exception do
//    result := false;
//  end;
end;

procedure TFAktRashoda.initTIFPairArr;
var
  i : integer;
begin
  for i := 0 to 99 do
    memState[i] := TIFPair.Create(0,0);
end;

procedure TFAktRashoda.destroyTIFPairArr;
var
  i : integer;
begin
  for i := 0 to 99 do
    memState[i].Free;
end;

procedure TFAktRashoda.DocTipParamUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin

end;

{ Загружаем подписи }
function TFAktRashoda.loadDocTipParam(tipDokId, strukId : integer) : boolean;
begin
  if (underS = nil) then
    underS := TUnderSign.Create(dm1.BELMED);
  unders.loadUnderSign(vStruk_id, 32, vTip_Doc_Id,
                       DM1.DocumentDOC_ID.AsInteger, vklient_id1);
  ds_underSign.DataSet := underS.getUnderSign();
  frds_underSign.DataSet := underS.getUnderSign();
//  try
{    DocTipParam.Active := false;
    DocTipParam.ParamByName('struk_id').AsInteger := strukId;
    DocTipParam.ParamByName('tip_dok_id').AsInteger := tipDokId;
    DocTipParam.Active := true;

    if DocTipParam.IsEmpty then
    begin
      DocTipParam.Insert;
      DocTipParamPARAM_NAME.AsString := 'Зам. главного технолога';
      DocTipParamPARAM_TYPE.AsString := 'C';
      DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
      DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
      DocTipParam.Post;
      DocTipParam.Insert;
      DocTipParamPARAM_NAME.AsString := 'Инженер-технолог ОГТ (по нормированию)';
      DocTipParamPARAM_TYPE.AsString := 'C';
      DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
      DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
      DocTipParam.Post;
      DocTipParam.Insert;
      DocTipParamPARAM_NAME.AsString := 'Инженер-технолог ОГТ';
      DocTipParamPARAM_TYPE.AsString := 'C';
      DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
      DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
      DocTipParam.Post;
      DocTipParam.Insert;
      if NormVQuerySTNAME.AsString <> 'Экспер-произв.цех' then
        DocTipParamPARAM_NAME.AsString := 'Начальник цеха № ' +
                                IntToStr(GetCehNum(NormVQuerySTNAME.AsString))
      else
        DocTipParamPARAM_NAME.AsString := 'Начальник экспер.-произв. цеха';
      DocTipParamPARAM_TYPE.AsString := 'C';
      DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
      DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
      DocTipParam.Post;
      DocTipParam.Insert;
      if NormVQuerySTNAME.AsString <> 'Экспер-произв.цех' then
        DocTipParamPARAM_NAME.AsString := 'Зам. начальника цеха № ' +
                                IntToStr(GetCehNum(NormVQuerySTNAME.AsString))
      else
        DocTipParamPARAM_NAME.AsString := 'Зам. начальника экспер.-произв. цеха';
      DocTipParamPARAM_TYPE.AsString := 'C';
      DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
      DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
      DocTipParam.Post;
    end;
 }
    result := true;
//  except
//  on e : exception do
//    result := false;
//  end;
end;

function TFAktRashoda.deactivateDocTipParam() : boolean;
begin
  DocTipParam.Close;
  result := true;
end;

procedure TFAktRashoda.DelBtnClick(Sender: TObject);
begin
  deleteDocTipParam;
end;

function TFAktRashoda.saveDocTipParam() : boolean;
begin
  try
    if (underS.underSign.State = dsInsert)
        or (underS.underSign.State = dsEdit)
        or (underS.underSign.Modified) then
    begin
      underS.underSign.Post;
    end;
      underS.saveUnderSign(vStruk_Id, 32, vTip_Doc_Id, dm1.DocumentDOC_ID.AsInteger,
                           VKlient_Id1);

//    if (DocTipParam.UpdatesPending) then
//    begin
//      DocTipParam.ApplyUpdates;
//      dm1.startWriteTrans;
//      DM1.IBT_WRITE.CommitRetaining;
//      DocTipParam.Refresh;
//    end;
    result := true;
  except
  on e : exception do
  begin
    result := false;
    MessageDlg('Произошла ошибка при сохранении подписей! '+ #13 + E.Message, mtWarning, [mbOK], 0);
  end;
  end;
end;

procedure TFAktRashoda.insertDocTipParam;
begin
  underS.insertUnderSign;
//  DocTipParam.Insert;
//  DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
//  DocTipParamPARAM_TYPE.AsString := 'C';
//  DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
//  DocTipParam.Post;
end;

procedure TFAktRashoda.deleteDocTipParam;
begin
  underS.delete;
//  if (not DocTipParam.IsEmpty) then
//    DocTipParam.Delete;
end;

procedure TFAktRashoda.loadCehNormZ(ksmIdPr : integer);
begin
  Ceh_NormZ.Active := false;
  Ceh_NormZ.ParamByName('KSM_ID_PR').AsInteger := ksmIdPr;
  Ceh_NormZ.Active := true;
end;

function TFAktRashoda.findKsmInCehNormZ(ksmIdMat : integer) : boolean;
var
  isHere : integer;
begin
  isHere := 0;
  Ceh_NormZ.First;
  while not Ceh_NormZ.Eof do
  begin
    if ksmIdMat = Ceh_NormZKSM_ID_MAT.AsInteger then
    begin
      znak := Ceh_NormZDECZNAK.AsInteger;
      isHere := isHere + 1;
      break;
    end
    else
      Ceh_NormZ.Next;
  end;
  if isHere > 0 then
    result := true
  else
    result := false;
end;

procedure TFAktRashoda.askToSaveModified(Sender: TObject);
begin
   if NormiMemDat.Modified then
  begin
    if MessageDlg('Записать изменения?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Button1Click(Sender)
    else
      reloadNorms(0);
  end;
end;

procedure TFAktRashoda.askToPrintNullRecords;
begin
  mem_printNull.EmptyTable;
  mem_printNull.Open;
  mem_printNull.Append;
  if (MessageDlg('Печатать строки с нулевым фактическим расходом?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes) then

    mem_printNullprintNull.AsInteger := 1
  else
    mem_printNullprintNull.AsInteger := 0;
  mem_printNull.Post;
end;

function TFAktRashoda.setZnak1(ksmId : integer; otklonenie, plNorm : double) : double;
var
  znaki : integer;
begin
  loadCehNormZ(s_kodp);
  if findKsmInCehNormZ(ksmId) then
    otklonenie := SimpleRoundTo(otklonenie, -znak)
  else
  begin
    znaki := KolZnakovPosleZap(plNorm);
    if znaki > 0 then
      otklonenie := SimpleRoundTo(otklonenie, -znaki)
    else
      otklonenie := SimpleRoundTo(otklonenie, -3);
  end;
  result := otklonenie;
end;

procedure TFAktRashoda.setEmptyMemAsCur(ksmId : integer);
begin
  NormiMemDat.First;
  while not NormiMemDat.Eof do
  begin
    if NormiMemDatNMAT_KSM.AsString = ''  then
      break
    else
      NormiMemDat.Next;
  end;
end;

function TFAktRashoda.findNormNeis(ksmId: Integer) : string;
var
  res : string;
begin
  res := '';
  NormVQuery.First;
  while not NormVQuery.Eof do
  begin
    if NormVQueryKSM_ID.AsInteger = ksmId then
    begin
      res := NormVQueryNEIS.AsString;
      break;
    end;
    NormVQuery.Next;
  end;
  result := res;
end;

procedure TFAktRashoda.DobPrixPrep(spec : boolean);
var
  v_docSt : integer;
  v_tipSt : integer;
  v_kartSt : integer;
begin
  v_docSt := vDocument_id;
  v_tipSt := vTip_op_id;
  v_kartSt := vKart_id;
 // расчет необходимого кол-ва прихода на препарат с учетом остатков
  if (not spec) then
    v_raspred := getNeededPrixInMatropEdiz();    // v_raspred- в ед.изм.справочника (табл.Matrop)
  v_raspred_dob := getNeededPrixInNormnEdiz();   // v_raspred_dob - в ед.изм. норм (табл.Normn)
// поиск карточки сырья цеха, ели нет-создать
  if (spec) then
    v_dok_kart := SelectToVarIB('select Ostatki.kart_id '
                                + 'FROM Ostatki WHERE Ostatki.STRUK_ID = ' + INTTOSTR(VsTRUK_ID)
                                + ' AND ostatki.ksm_id = ' + inttostr(s_Ksm)
                                + ' AND (coalesce(Ostatki.Ksm_idpr, 0) = 0) '
                                + ' and ostatki.account = ''10/11'' '
                                + ' and ostatki.ot_s <> 0 ',
                                dm1.belmed, dm1.ibt_read)
  else
    v_dok_kart := SelectToVarIB('select Ostatki.kart_id '
                                + 'FROM Ostatki WHERE Ostatki.STRUK_ID = ' + INTTOSTR(VsTRUK_ID)
                                + ' AND ostatki.ksm_id = ' + inttostr(s_Ksm)
                                + ' AND (coalesce(Ostatki.Ksm_idpr, 0) = 0)',
                                dm1.belmed, dm1.ibt_read);

  If (v_dok_kart = Null) then
    createKartIdInOstatki(spec)   //  карточки нету, создаем ее
  else
    st_kart := v_dok_kart;  // карточка сырья цеха есть, получаем сумму остатка в сырье
  createPrixodDocumOnPrep;  //                 создаем документ прихода сырья  на препарат
  if (v_raspred_dob > 0) then
  begin
    if (not dm1.Kart.Active) then
    begin
      DM1.Kart.MacroByName('USL').AsString := 'WHERE document.klient_id = '
                                              + inttostr(s_kodp)
                                              + ' and document.date_op between '
                                              + '''' + s_dat1 + '''' + ' and '
                                              + '''' + s_dat2 + '''';
      DM1.Kart.Open
    end;
    dm1.Kart.BeforePost := nil;
// цикл по сериям сырья (OSTATKI)- QUERY
    findOstatkiSyrInCex(spec);
    createKartInPrixodDocumOnPrep(spec);    // запись необходимого прихода на препарат в Kart
  end;
  vdocument_id := v_docSt;
  vTip_Op_Id := v_tipSt;
  vKart_id := v_kartSt;
  dm1.Kart.Close;
end;

function TFAktRashoda.getNeededPrixInMatropEdiz() : double;   // расчет необходимого кол-ва прихода на препарат с учетом остатков
begin
  IBQuery1.Active := False;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('SELECT ost.kei_id, ost.OSTATOK_begin_S, ost.zag_period, '
                       + 'ost.peredano_rash_s, ost.peredano_prih_s, ost.razdel_id ');
  IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM (' + '''' + s_dat1 + '''' + ','
                       + '''' + s_dat2 + '''' + ',' + inttostr(s_kodp) + ','
                       + inttostr(vSTRUK_ID) + ',' + inttostr(s_KSM)
                       + ') ost where ost.razdel_id = ' + inttostr(v_razdel));
  IBQuery1.Active := True;
  if (IBQuery1.RecordCount > 0) then
    result := IBQuery1.FieldByName('zag_period').AsFloat
              + IBQuery1.FieldByName('peredano_rash_s').AsFloat
              - IBQuery1.FieldByName('OSTATOK_begin_S').AsFloat
              - IBQuery1.FieldByName('peredano_prih_s').AsFloat
  else
    result := 0;
end;

function TFAktRashoda.getNeededPrixInNormnEdiz() : double;   // расчет необходимого кол-ва прихода на препарат с учетом остатков
begin
  IBQuery1.Active := False;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('SELECT ost.kei_id, ost.OSTATOK_begin_S, ost.zag_period, '
                       + 'ost.peredano_rash_s, ost.peredano_prih_s, ost.razdel_id ');
  IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM (' + '''' + s_dat1 + '''' + ','
                       + '''' + s_dat2 + '''' + ',' + inttostr(s_kodp) + ','
                       + inttostr(vSTRUK_ID) + ',' + inttostr(s_KSM)
                       + ') ost where ost.razdel_id = ' + inttostr(v_razdel));
  IBQuery1.Active := True;
  if (IBQuery1.RecordCount > 0) then
  begin
    if (v_kein <> IBQuery1.FieldByName('kei_id').asinteger) then
      result := roundto(v_raspred * dm1.Koef_per(v_Kein,
                                                        IBQuery1.FieldByName('Kei_id').AsInteger,
                                                        s_Ksm),
                               tochn)
    else
      result := v_raspred;
  end
  else
    result := v_raspred;
end;

procedure TFAktRashoda.createKartIdInOstatki(spec : boolean);   // создание карточки сырья в остатках
begin
  IF (not DM1.Ostatki.Active) THEN
  begin
    dm1.Ostatki.MacroByName('usl').AsString := '0=0';
    dm1.Ostatki.ParamByName('struk_id').AsInteger := vStruk_Id;
    DM1.Ostatki.Active := TRUE;
  end
  else
    DM1.Ostatki.First;
  DM1.Ostatki.Insert;
  DM1.Ostatki.FieldByName('razdel_id').AsVariant := null;
  DM1.Ostatki.FieldByName('ksm_idpr').AsVariant := null;
  DM1.Ostatki.FieldByName('kei_id').AsVariant := null;
  DM1.Ostatki.Post;
  dm1.Ostatki.ApplyUpdates;
  st_kart := vKart_id;
end;

procedure TFAktRashoda.createPrixodDocumOnPrep;  // создание приходного документа на препарат
var
  dat : TDate;
begin
  dat := strtodate(s_dat1);
  vDocument_id := -1;
  if (dm1.Document.Active) then
    if (dm1.Document.Locate('struk_id;tip_op_id;klient_id;date_op',
                            VarArrayOf([vStruk_id, 30, vKlient_id, dat]), [])) then
      vDocument_id := dm1.DocumentDoc_id.AsInteger;
  if (vDocument_id = -1) then  
  begin
    v_dok_Kart := SelectToVarIB('select DOcUMENT.doc_id FROM document '
                                + ' WHERE DOcUMENT.STRUK_ID = ' + INTTOSTR(VsTRUK_ID)
                                + ' AND DOCUMENT.TIP_OP_ID = 30'
                                + ' AND Document.Date_op between ' + ''''
                                + s_dat1 + '''' + ' and ' + '''' + s_dat2 + ''''
                                + ' AND DOCUMENT.KLIENT_ID = ' + INTTOSTR(S_KODP),
                                dm1.belmed, dm1.ibt_read);
    if (v_dok_Kart <> Null) then
    begin
      vDocument_id := V_DOK_KART;
//                         Удаление данных из KART
      removeKartByDocidKsmidRazdelid(vDocument_id, s_ksm, v_razdel);
    end
    ELSE
    BEGIN
      vTip_Op_Id := 30;
      vTip_Doc_Id := 37;
      vNDoc := 'Рп-' + inttostr(S_Kodp) + '-' + inttostr(mes) + '.' + inttostr(god);
      vKlient_Id := S_KODP;
      vDate_op := edit_dokDate.Date;
      vDate_dok := edit_dokDate.Date;
      dm1.Document.open;
      dm1.Document.Insert;
      dm1.Document.Post;
      dm1.Document.Edit;
      dm1.Document.Post;
      dm1.Document.ApplyUpdates;
    END;
  end;
end;

procedure TFAktRashoda.removeKartByDocidKsmidRazdelid(docId, ksmId, razdelId: Integer);
begin
  dm1.startWriteTrans;
  dm1.IbDel.Active := false;
  dm1.IbDel.SQL.Clear;
  dm1.IbDel.SQL.Add('delete from kart where doc_id = ' + inttostr(vDocument_id)
                + ' and ksm_id = ' + inttostr(s_ksm) + ' and razdel_id = '
                + inttostr(v_razdel) + ' and parent is null ');
  dm1.IbDel.Active := true;
  dm1.commitWriteTrans(true);
end;

procedure TFAktRashoda.findOstatkiSyrInCex(spec : boolean);   // поиск остатков сырья в цехе
begin
  IBQuery1.Active := False;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('SELECT ostatki.kart_id, ostatki.OSTATOK_END_S, ostatki.struk_id, ');
  IBQuery1.SQL.Add(' (select kol_new from ceh_ost_ediz(ostatki.KSM_ID, ostatki.KEI_ID,'
                        + inttostr(v_kein) + ', ostatki.OSTATOK_END_S)) Kot_S');
  if (spec) then
  begin
    IBQuery1.SQL.Add(', os.date_vid, coalesce(os.srok, 0) srok ');
    IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM_ACC (' + '''' + s_dat1 + '''' + ','
                            + '''' + s_dat2 + '''' + ',1,' + inttostr(vSTRUK_ID)
                        + ',' + inttostr(s_KSM) + ', ''10/11'') ostatki ');
    IBQuery1.SQL.Add(' left join ostatki os on os.kart_id = ostatki.kart_id ');
  end
  else
  begin
    IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM1 (' + '''' + s_dat1 + '''' + ','
                        + '''' + s_dat2 + '''' + ',1,' + inttostr(vSTRUK_ID)
                        + ',' + inttostr(s_KSM) + ', 0) ostatki ');
  end;
  IBQuery1.SQL.Add(' order by ostatki.kart_id ');
  IBQuery1.Active := True;
  IBQuery1.First;
end;

function TFAktRashoda.getIsSrokEnded(spec : boolean) : boolean;
var
  dateEndSrok : TDate;
  srokRaznica : integer;
begin
  result := true;
  if (spec) then
  begin
    if (ibquery1.FieldByName('srok').AsInteger <> 9999) then
    begin
      dateEndSrok := IncMonth(ibquery1.fieldbyname('date_vid').AsDateTime,
                              ibquery1.FieldByName('srok').AsInteger);
      srokRaznica := MonthsBetween(dateEndSrok , StrToDate(s_dat2));
      if (dateEndSrok > StrToDate(s_dat2)) and (srokRaznica > 1) then
        result := false;
    end;
  end;
end;

procedure TFAktRashoda.createKartInPrixodDocumOnPrep(spec : boolean);   // добавление необходимого прихода сырья на препарат в Kart
var
  v_ost : double;
  v_ost_razn : double;
  pr_vxod : integer;
  isSrokEnded : boolean;
begin
  pr_vxod := 1;
  if (IBQuery1.RecordCount > 0) then
  begin
    v_ost_razn := v_raspred_dob;
    while (not IBQuery1.eof) and ((v_ost_razn > 0) or (pr_vxod = 1))  do
    begin
      pr_vxod := pr_vxod + 1;
      v_ost := IBQuery1.FieldByName('Kot_S').AsFloat;
      IBQuery1.Next;
      if (v_ost = 0) and (not IBQuery1.eof) then
        IBQuery1.Prior
      else
      begin
        isSrokEnded := getIsSrokEnded(spec);

//        if (isSrokEnded) then
//        begin
          if (IBQuery1.eof) then
          begin
            if (isSrokEnded) then            
              v_raspred_dob := v_ost_razn
          end
          else
          begin
            if (v_ost <> 0) and (not IBQuery1.eof) then
            begin
              IBQuery1.Prior;

              isSrokEnded := getIsSrokEnded(spec);

              if (v_ost_razn - v_ost >= 0){ and (v_ost >= 0)} then
              begin
                if (isSrokEnded) then
                begin
                  v_raspred_dob := v_ost;
                  v_ost_razn := v_ost_razn - v_ost;
                end;
              end
              else
              begin
                if (isSrokEnded) then
                begin
                  v_raspred_dob := v_ost_razn;
                  v_ost_razn := v_ost_razn - v_ost;
                end;
              end;
            end;
          end;
          if (isSrokEnded) then
          begin
            dm1.Kart.Insert;
            dm1.setValues2Kart(s_ksm, vklient_id, v_razdel, v_kein, vdocument_id,
                               IBQuery1.FieldByName('Kart_id').AsInteger,
                               30, 37, v_raspred_dob, 0, 0, 0);
            dm1.Kart.Post;
          end;
      end;
      IBQuery1.Next;
    end;
  end
  else
  begin
    dm1.Kart.Insert;
    dm1.setValues2Kart(s_ksm, vklient_id, v_razdel, v_kein, vdocument_id, st_Kart,
                   30, 37, v_raspred_dob, 0, 0, 0);
    dm1.Kart.Post
  end;
  dm1.Kart.BeforePost := dm1.KartBeforePost;
  DM1.kart.ApplyUpdates;
end;

end.
