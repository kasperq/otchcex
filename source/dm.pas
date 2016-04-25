unit dm;

interface

uses
  SysUtils, Classes, IBCustomDataSet, IBUpdateSQL, RxMemDS, IBTable,
  FR_DSet, FR_DBSet, FR_Class, IBSQL, DB, RxIBQuery, IBQuery, IBStoredProc,
  IBDatabase, IBUpdSQLW,Dialogs,Controls,Variants,IB,Forms,FindDlgEh, Menus, ImgList, Grids, DBGridEh, ComCtrls,
  StdCtrls, Mask, DBCtrls, DBCtrlsEh,ToolWin,Graphics,Windows, Messages,ExtCtrls, DBGrids, 
  DBLookupEh, BDEUtils, UtilR, UtilRIB,SplshWnd,IniFiles,Math, frxClass,
  frxDMPExport, frxDBSet, frxIBXComponents, WinSock, DateUtils;
//  , DBTables;

 type
  TDM1 = class(TDataModule)
    BELMED: TIBDatabase;
    IBT_Read: TIBTransaction;
    AddSeria: TIBStoredProc;
    Prod_Rab: TIBQuery;
    Ediz: TIBQuery;
    IBQuery1: TIBQuery;
    PrixRasx: TRxIBQuery;
    DSPrixRasx: TDataSource;
    DSTipDok: TDataSource;
    PrixRasSyr: TRxIBQuery;
    DSPrixRasSyr: TDataSource;
    VIEW_DOCUMENT: TIBStoredProc;
    PrixRasSyrKOL_PRIH: TFMTBCDField;
    PrixRasSyrKLIENT_ID: TIntegerField;
    PrixRasSyrDATE_DOK: TDateField;
    PrixRasSyrNDOK: TIBStringField;
    PrixRasSyrSERIA: TIBStringField;
    PrixRasSyrNAM_OP: TIBStringField;
    PrixRasSyrTIP_OP_ID: TSmallintField;
    PrixRasSyrTIP_DOK_ID: TSmallintField;
    IBUpdateSQLPrixRasx: TIBUpdateSQLW;
    IBT_Write: TIBTransaction;
    DSDocument: TDataSource;
    DSKart: TDataSource;
    Document: TRxIBQuery;
    IBUpdateDoc: TIBUpdateSQLW;
    IBUpdateKart: TIBUpdateSQLW;
    Kart: TRxIBQuery;
    Tip: TIBQuery;
    DSTip: TDataSource;
    DS_Seria: TDataSource;
    Seria: TRxIBQuery;
    IBUpdateSeria: TIBUpdateSQLW;
    ADD_KartDok: TIBStoredProc;
    Add_Ostatki: TIBStoredProc;
    Ostatki: TRxIBQuery;
    OstatkiUpdate: TIBUpdateSQLW;
    PrixRasSyrKOL_RASH: TFMTBCDField;
    RasSumTipOp: TRxIBQuery;
    DSRasSumTipOp: TDataSource;
    RasSumTipOpSUM_OF_KOL_RASH: TFMTBCDField;
    RasSumTipOpNAM_OP: TIBStringField;
    RasSumTipOpTIP_OP_ID: TSmallintField;
    RasSumTipOpKSM_ID: TIntegerField;
    DS_ConfigUMC: TDataSource;
    ConfigUMC: TRxIBQuery;
    ConfigUMCMES: TSmallintField;
    ConfigUMCGOD: TSmallintField;
    ConfigUMCSTNAME: TIBStringField;
    ConfigUMCSTRUK_ID: TSmallintField;
    ConfigUMCUpdate: TIBUpdateSQLW;
    ConfigUMCTIP_SKLAD_ID: TSmallintField;
    ConfigUMCOTTISK: TIBStringField;
    ConfigUMCPUNKT_POGR: TIBStringField;
    KartKSM_ID: TIntegerField;
    KartKEI_ID: TSmallintField;
    PrixRasxNDOK: TIBStringField;
    PrixRasxDATE_DOK: TDateField;
    PrixRasxKLIENT_ID: TIntegerField;
    PrixRasxTIP_DOK_ID: TSmallintField;
    PrixRasxSTRUK_ID: TSmallintField;
    PrixRasxKSM_ID: TIntegerField;
    PrixRasxKOL_PRIH: TFMTBCDField;
    PrixRasxNMAT: TIBStringField;
    PrixRasxXARKT: TIBStringField;
    PrixRasxSERIA: TIBStringField;
    PrixRasxNEIS: TIBStringField;
    PrixRasxNAM_OP: TIBStringField;
    PrixRasxONM_S: TFMTBCDField;
    PrixRasxMES: TSmallintField;
    PrixRasxGOD: TSmallintField;
    PrixRasxONM_NZ: TFMTBCDField;
    PrixRasxOT_S: TFMTBCDField;
    PrixRasxOT_NZ: TFMTBCDField;
    PrixRasxGR_OP_ID: TSmallintField;
    PrixRasxTIP_OP_ID: TSmallintField;
    PrixRasxKOL_RASH: TFMTBCDField;
    PrixRasxDOC_ID: TIntegerField;
    PrixRasxSTROKA_ID: TIntegerField;
    PrixRasSyrKSM_ID: TIntegerField;
    PrixRasSyrDOC_ID: TIntegerField;
    Norm: TRxIBQuery;
    DSNorm: TDataSource;
    DSNormSyr: TDataSource;
    DSProd_Rab: TDataSource;
    frReport2: TfrReport;
    frDBDataSet2: TfrDBDataSet;
    DSOstatki: TDataSource;
    New_Mes: TIBStoredProc;
    Ceh_Stad: TRxIBQuery;
    IBUpdateCeh_stad: TIBUpdateSQLW;
    DSCeh_Stad: TDataSource;
    Ceh_StadLEK_ID: TSmallintField;
    Ceh_StadSTADIA_ID: TIntegerField;
    Ceh_StadNAME_STAD: TIBStringField;
    Ceh_StadLEKNAMS: TIBStringField;
    Razdel: TIBQuery;
    DSRazdel: TDataSource;
    RazdelRAZDEL_ID: TSmallintField;
    RazdelKODRAZ: TIBStringField;
    RazdelNAMRAZ: TIBStringField;
    RazdelKRAZ: TSmallintField;
    Matrop: TIBQuery;
    MatropNMAT: TIBStringField;
    MatropXARKT: TIBStringField;
    MatropKEI_ID: TSmallintField;
    MatropKSM_ID: TIntegerField;
    MatropNEIS: TIBStringField;
    DocumentTIP_DOK_ID: TSmallintField;
    DocumentNDOK: TIBStringField;
    DocumentDOC_ID: TIntegerField;
    DocumentDATE_OP: TDateField;
    DocumentDATE_DOK: TDateField;
    DocumentKLIENT_ID: TIntegerField;
    DocumentNAM: TIBStringField;
    DocumentTIP_OP_ID: TSmallintField;
    DocumentADRES: TIBStringField;
    DocumentDATE_VVOD: TDateTimeField;
    DocumentSTRUK_ID: TSmallintField;
    DocumentZADACHA_ID: TIBStringField;
    IBQueryNorm: TIBQuery;
    KartKRAZ: TSmallintField;
    LEKGRUP: TIBQuery;
    LEKGRUPLEK_ID: TSmallintField;
    LEKGRUPLEKNAME: TIBStringField;
    LEKGRUPLEKFARM: TIBStringField;
    LEKGRUPLEKNAMS: TIBStringField;
    LEKGRUPSPFV: TSmallintField;
    LEKGRUPGR: TIBStringField;
    LEKGRUPPGR: TIBStringField;
    LEKGRUPSPTIP: TSmallintField;
    DataSource1: TDataSource;
    TipDok: TRxIBQuery;
    TipDokGR_OP_ID: TSmallintField;
    TipDokTIP_OP_ID: TSmallintField;
    TipDokNAM_OP: TIBStringField;
    Ceh_Otchet: TRxIBQuery;
    Ceh_OtchetSTR_ID: TIntegerField;
    Ceh_OtchetKART_ID: TIntegerField;
    Ceh_OtchetMES: TIntegerField;
    Ceh_OtchetGOD: TIntegerField;
    CehOtchetUpdate: TIBUpdateSQLW;
    DS_Ceh_Otchet: TDataSource;
    DSediz: TDataSource;
    EdizKEI_ID: TSmallintField;
    EdizNEIS: TIBStringField;
    IBMatr_pr: TIBQuery;
    IBMatr_prPRMAT: TIBStringField;
    IBMatr_prNAMPR: TIBStringField;
    DS_Matr_pr: TDataSource;
    Ceh_OtchetKOL: TFloatField;
    Ceh_OtchetKOL_RASX: TFloatField;
    DSPechOtchet: TDataSource;
    PechOtchet: TRxMemoryData;
    PechTexGur: TRxMemoryData;
    DSPechTexGur: TDataSource;
    frDBDataSet3: TfrDBDataSet;
    frDBDataSet4: TfrDBDataSet;
    frDBDataSet5: TfrDBDataSet;
    DSKartV: TDataSource;
    IBUpdateKartV: TIBUpdateSQLW;
    KartV: TRxIBQuery;
    KartVDOC_ID: TIntegerField;
    KartVSTROKA_ID: TIntegerField;
    KartVKSM_ID: TIntegerField;
    KartVKOL_PRIH: TFMTBCDField;
    KartVKOD_PROD: TIBStringField;
    KartVNEIS: TIBStringField;
    KartVKLIENT_ID: TIntegerField;
    KartVNMAT: TIBStringField;
    KartVXARKT: TIBStringField;
    frDBDataSet6: TfrDBDataSet;
    Upak_s: TIBQuery;
    DSUpak: TDataSource;
    SpFormv: TIBQuery;
    DSSpFormv: TDataSource;
    SpFormvSPFV: TSmallintField;
    SpFormvNAMEFV: TIBStringField;
    DeleteDocument: TIBStoredProc;
    SeriaSERIA_ID: TIntegerField;
    SeriaKSM_ID: TIntegerField;
    SeriaSERIA: TIBStringField;
    SeriaSROK_GODN: TDateField;
    SeriaSERTIF: TIBStringField;
    SeriaDATE_SERTIF: TDateField;
    SeriaPASPORT: TIBStringField;
    SeriaDATE_PASPORT: TDateField;
    SeriaKOL_SERIA: TFMTBCDField;
    SeriaDATE_VIPUSK: TDateField;
    SeriaFORMA_VIPUSK: TIBStringField;
    SeriaKEI_ID: TSmallintField;
    SeriaDATE_TIME_UPDATE: TDateTimeField;
    SeriaUSER_NAME: TIBStringField;
    SeriaSHEMA: TIBStringField;
    SeriaKODTN: TIBStringField;
    SeriaDATE_ZAG: TDateField;
    SeriaFIO_RASH: TIBStringField;
    SeriaFIO_MASTER: TIBStringField;
    SeriaCOMMENT: TIBStringField;
    SeriaOB_ZAG: TFloatField;
    SeriaVLAG_TM: TFloatField;
    SeriaKOD_TM: TIntegerField;
    SeriaKOL_TM: TFloatField;
    KartVSPPRN: TSmallintField;
    KartVSPVIS: TSmallintField;
    KartDOC_ID: TIntegerField;
    KartSTROKA_ID: TIntegerField;
    KartPARENT: TIntegerField;
    KartRAZDEL_ID: TSmallintField;
    KartCENA: TIBBCDField;
    KartCENA_VP: TIBBCDField;
    KartSERIA_ID: TIntegerField;
    KartNEIS: TIBStringField;
    KartNEISN: TIBStringField;
    KartSERIA: TIBStringField;
    KartSROK_GODN: TDateField;
    KartGOD: TSmallintField;
    KartMES: TSmallintField;
    KartSTRUK_ID: TSmallintField;
    KartNDOK: TIBStringField;
    KartTIP_OP_ID: TSmallintField;
    KartDATE_OP: TDateField;
    KartDATE_DOK: TDateField;
    KartTIP_DOK_ID: TSmallintField;
    KartKLIENT_ID: TIntegerField;
    KartNAM_OP: TIBStringField;
    KartKOD_PROD: TIBStringField;
    KartNMAT: TIBStringField;
    KartXARKT: TIBStringField;
    ceh_ost_ediz: TIBStoredProc;
    KartKSM_IDPR: TIntegerField;
    OstSyr_St: TRxIBQuery;
    DSOstSyr: TDataSource;
    PrixRasxKLIENT_NAME: TIBStringField;
    PrixRasSyrKLIENT_NAME: TIBStringField;
    NormSyr: TRxIBQuery;
    TexStad: TRxIBQuery;
    TexStadUpdate: TIBUpdateSQLW;
    DS_TexStad: TDataSource;
    TexStadJOURNST_ID: TIntegerField;
    TexStadSTADIA_ID: TIntegerField;
    TexStadKART_ID: TIntegerField;
    TexStadDATE_STAD: TDateField;
    TexStadTIME_STAD: TTimeField;
    TexStadTEMPERATURE: TIBBCDField;
    TexStadCOMMENT: TIBStringField;
    TexStadDATE_TIME_UPDATE: TDateTimeField;
    TexStadUSER_NAME: TIBStringField;
    TexStadNAME_STAD: TIBStringField;
    PechTexGurkraz: TIntegerField;
    PechTexGurNMAT: TStringField;
    PechTexGurkol_rash_ediz: TFloatField;
    PechTexGurneis: TStringField;
    PechTexGurOt_s: TFloatField;
    PechTexGurOt_nz: TFloatField;
    PechTexGurksm_id: TIntegerField;
    PechTexGurRAZDEL_ID: TIntegerField;
    PechTexGurKART_ID: TIntegerField;
    PechTexGurkei_id: TIntegerField;
    PechTexGurkein: TIntegerField;
    PechTexGurNAMRAZ: TStringField;
    PechTexGurkodp: TIntegerField;
    PechTexGurdoc_id: TIntegerField;
    PechTexGurseria_id: TIntegerField;
    PechTexGurseria: TStringField;
    PechTexGurdate_zag: TDateTimeField;
    PechTexGurob_zag: TFloatField;
    PechTexGurndok: TStringField;
    PechTexGurmes: TIntegerField;
    PechTexGurgod: TIntegerField;
    PechTexGurnazprpf: TStringField;
    PechTexGurxarkt: TStringField;
    PechTexGurkodraz: TStringField;
    PechTexGurformula: TStringField;
    PechTexGurtip_op_id: TIntegerField;
    PechTexGurdate_op: TDateTimeField;
    PechTexGurkoef1: TFloatField;
    PechTexGurkoef2: TFloatField;
    PechTexGurkoef3: TFloatField;
    PechTexGurproc: TFloatField;
    PechTexGurnormz_id: TIntegerField;
    KartVNAM_REG: TIBStringField;
    KartVVIPNG: TFMTBCDField;
    OstatkiKEI_ID: TSmallintField;
    OstatkiRAZDEL_ID: TSmallintField;
    OstatkiKSM_ID: TIntegerField;
    OstatkiKSM_IDPR: TIntegerField;
    OstatkiMES: TSmallintField;
    OstatkiGOD: TSmallintField;
    OstatkiONM_FD: TFMTBCDField;
    OstatkiONM_NZ: TFMTBCDField;
    OstatkiONM_S: TFMTBCDField;
    OstatkiOT_FD: TFMTBCDField;
    OstatkiOT_NZ: TFMTBCDField;
    OstatkiOT_S: TFMTBCDField;
    OstatkiSERIA_ID: TIntegerField;
    OstatkiSTRUK_ID: TIntegerField;
    OstatkiUSER_NAME: TIBStringField;
    OstatkiKOL_TRANS: TFloatField;
    OstatkiKOL_GRP: TFloatField;
    OstatkiVES_TRANS: TIBBCDField;
    OstatkiNMAT: TIBStringField;
    OstatkiNEIS: TIBStringField;
    KartVKEI_ID: TSmallintField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    PechOtchetkraz: TIntegerField;
    PechOtchetNMAT: TStringField;
    PechOtchetkol_rash: TFloatField;
    PechOtchetneis: TStringField;
    PechOtchetOt_s: TFloatField;
    PechOtchetOt_nz: TFloatField;
    PechOtchetOnm_s: TFloatField;
    PechOtchetOnm_nz: TFloatField;
    PechOtchetplnorm: TFloatField;
    PechOtchetfnorm: TFloatField;
    PechOtchetfnormg: TFloatField;
    PechOtchetkol_prih: TFloatField;
    PechOtchetzag: TFloatField;
    PechOtchetper_s: TFloatField;
    PechOtchetper_nz: TFloatField;
    PechOtchetpereras: TFloatField;
    PechOtchetpererasg: TFloatField;
    PechOtchetksm_id: TIntegerField;
    PechOtchetprpf: TBooleanField;
    PechOtchetRAZDEL_ID: TIntegerField;
    PechOtchetKART_ID: TIntegerField;
    PechOtchetRASXG: TFloatField;
    PechOtchetkei_id: TIntegerField;
    PechOtchetkei_idn: TIntegerField;
    PechOtchetNAMRAZ: TStringField;
    PechOtchetkodp: TIntegerField;
    PechOtchetkod_prod: TStringField;
    PechOtchetneisp: TStringField;
    PechOtchetnamorg: TStringField;
    PechOtchetnamreg: TStringField;
    MatropPRMAT: TIBStringField;
    PechOtchetvipg: TFloatField;
    PechOtchetvip: TFloatField;
    OstSyr_StKOD_PREP: TIBStringField;
    OstSyr_StNMAT_PREP: TIBStringField;
    OstSyr_StOSTATOK_BEGIN_S: TFMTBCDField;
    OstSyr_StOSTATOK_BEGIN_NZ: TFMTBCDField;
    OstSyr_StPRIX_PERIOD: TFMTBCDField;
    OstSyr_StRASX_PERIOD: TFMTBCDField;
    OstSyr_StOSTATOK_END_S: TFMTBCDField;
    OstSyr_StOSTATOK_END_NZ: TFMTBCDField;
    OstSyr_StZAG_PERIOD: TFMTBCDField;
    OstSyr_StKRAZ: TSmallintField;
    OstSyr_StRASH_VIRAB_PERIOD: TFMTBCDField;
    OstSyr_StNEIS: TIBStringField;
    OTK_ANALIT: TRxIBQuery;
    OTK_ANALITANALIT_ID: TIntegerField;
    OTK_ANALITANALIT_NUM: TIntegerField;
    OTK_ANALITDATE_VVOD: TDateField;
    OTK_ANALITNTD_ID: TIntegerField;
    OTK_ANALITNTD: TIBStringField;
    OTK_ANALITNMAT: TIBStringField;
    OTK_ANALITKSM_ID: TIntegerField;
    OTK_ANALITXARACT: TIBStringField;
    OTK_ANALITPROIZVOD: TIBStringField;
    OTK_ANALITPART_NUM: TIBStringField;
    OTK_ANALITPART_VOL: TFMTBCDField;
    OTK_ANALITPART_VOL_AKTIV: TFMTBCDField;
    OTK_ANALITDOC_ID: TIntegerField;
    OTK_ANALITNDOK: TIBStringField;
    OTK_ANALITDATE_DOK: TDateField;
    OTK_ANALITNAM: TIBStringField;
    OTK_ANALITVID_KONTROL: TSmallintField;
    OTK_ANALITDATE_PROB: TDateField;
    OTK_ANALITDATE_BEGIN: TDateField;
    OTK_ANALITDATE_END: TDateField;
    OTK_ANALITDATE_PASPORT: TDateField;
    OTK_ANALITSROK_GODN_NTD: TDateField;
    OTK_ANALITSROK_GODN_SERT: TDateField;
    OTK_ANALITRESULT: TSmallintField;
    OTK_ANALITRESULT_OTK: TSmallintField;
    OTK_ANALITGRMEN_FIO: TIBStringField;
    OTK_ANALITNACH_OTK: TIBStringField;
    OTK_ANALITKLIENT_ID: TIntegerField;
    OTK_ANALITCHEM_FIO: TIBStringField;
    OTK_ANALITCHEM_DOLJNOST: TIBStringField;
    OTK_ANALITMBIOL_DOLJNOST: TIBStringField;
    OTK_ANALITMBIOL_FIO: TIBStringField;
    OTK_ANALITBIOL_FIO: TIBStringField;
    OTK_ANALITBIOL_DOLJNOST: TIBStringField;
    OTK_ANALITNEIS: TIBStringField;
    OTK_ANALITPART_KOL: TFMTBCDField;
    DSotk_analit: TDataSource;
    OstSyr_StPEREDANO_RASH_NZ: TFMTBCDField;
    OstSyr_StPEREDANO_RASH_S: TFMTBCDField;
    OstSyr_StPEREDANO_PRIH_NZ: TFMTBCDField;
    Ost_Syr_Prep: TRxIBQuery;
    DSOst_Syr_Prep: TDataSource;
    Ost_Syr_PrepKSM_ID: TIntegerField;
    Ost_Syr_PrepNMAT: TIBStringField;
    Ost_Syr_PrepKOD_PREP: TIBStringField;
    Ost_Syr_PrepNMAT_PREP: TIBStringField;
    Ost_Syr_PrepOSTATOK_BEGIN_S: TFMTBCDField;
    Ost_Syr_PrepOSTATOK_BEGIN_NZ: TFMTBCDField;
    Ost_Syr_PrepOSTATOK_END_S: TFMTBCDField;
    Ost_Syr_PrepOSTATOK_END_NZ: TFMTBCDField;
    Ost_Syr_PrepKRAZ: TSmallintField;
    Ost_Syr_PrepNEIS: TIBStringField;
    Ost_Syr_PrepPEREDANO_RASH_NZ: TFMTBCDField;
    Ost_Syr_PrepPEREDANO_RASH_S: TFMTBCDField;
    Ost_Syr_PrepNEISP: TIBStringField;
    KartKART_ID: TIntegerField;
    OstatkiKART_ID: TIntegerField;
    OstatkiOT_DOKUM: TFloatField;
    OstatkiONM_DOKUM: TFMTBCDField;
    OstatkiNOMU_ID_TRANS: TSmallintField;
    OstatkiNOMU_ID_GRP: TSmallintField;
    KartKOL_PRIH: TFMTBCDField;
    KartKOL_RASH: TFMTBCDField;
    KartKOL_PRIH_EDIZ: TFloatField;
    KartKOL_RASH_EDIZ: TFloatField;
    KartONM_NZ: TFMTBCDField;
    KartOT_S: TFMTBCDField;
    KartONM_S: TFMTBCDField;
    KartOT_NZ: TFMTBCDField;
    PechOtchetnamprod: TStringField;
    PechOtchetxarkt: TStringField;
    Ost_Syr_Prep_pf: TRxIBQuery;
    DSOst_Syr_Prep_pf: TDataSource;
    Ost_Syr_Prep_pfPRMAT: TIBStringField;
    Ost_Syr_Prep_pfKSM_ID: TIntegerField;
    Ost_Syr_Prep_pfNMAT: TIBStringField;
    Ost_Syr_Prep_pfKOD_PREP: TIBStringField;
    Ost_Syr_Prep_pfNMAT_PREP: TIBStringField;
    Ost_Syr_Prep_pfOSTATOK_BEGIN_S: TFMTBCDField;
    Ost_Syr_Prep_pfOSTATOK_BEGIN_NZ: TFMTBCDField;
    Ost_Syr_Prep_pfOSTATOK_END_S: TFMTBCDField;
    Ost_Syr_Prep_pfOSTATOK_END_NZ: TFMTBCDField;
    Ost_Syr_Prep_pfKRAZ: TSmallintField;
    Ost_Syr_Prep_pfNEIS: TIBStringField;
    Ost_Syr_Prep_pfPEREDANO_RASH_NZ: TFMTBCDField;
    Ost_Syr_Prep_pfPEREDANO_RASH_S: TFMTBCDField;
    OstatkiVOL_TRANS: TFMTBCDField;
    NormKODP: TIntegerField;
    NormDOC_ID: TIntegerField;
    NormTIP_OP_ID: TSmallintField;
    NormKSM_ID: TIntegerField;
    NormSTRUK_ID: TSmallintField;
    NormKEI_ID: TSmallintField;
    NormKRAZ: TSmallintField;
    NormMES: TSmallintField;
    NormGOD: TSmallintField;
    NormPRPF: TSmallintField;
    NormNORM_ID: TIntegerField;
    NormRAZDEL_ID: TSmallintField;
    NormPR_OV: TSmallintField;
    NormNMAT_KSM: TIBStringField;
    NormKOD_PROD_KSM: TIBStringField;
    NormNEIS: TIBStringField;
    NormDATANORM: TDateField;
    NormPLNORM: TFMTBCDField;
    NormXARKT: TIBStringField;
    NormNAZPRPF: TIBStringField;
    NormSTNAME: TIBStringField;
    NormNAM: TIBStringField;
    NormNAMSPSR: TIBStringField;
    NormNAMORG: TIBStringField;
    NormNMAT: TIBStringField;
    NormKOD_PROD: TIBStringField;
    NormSPROD_ID: TIntegerField;
    NormKORG: TIntegerField;
    NormNAMEVIS: TIBStringField;
    NormNAMEPRN: TIBStringField;
    NormNAMRAZ: TIBStringField;
    NormSyrKODP: TIntegerField;
    NormSyrDOC_ID: TIntegerField;
    NormSyrTIP_OP_ID: TSmallintField;
    NormSyrKSM_ID: TIntegerField;
    NormSyrSTRUK_ID: TSmallintField;
    NormSyrKEI_ID: TSmallintField;
    NormSyrKRAZ: TSmallintField;
    NormSyrMES: TSmallintField;
    NormSyrGOD: TSmallintField;
    NormSyrPRPF: TSmallintField;
    NormSyrNORM_ID: TIntegerField;
    NormSyrRAZDEL_ID: TSmallintField;
    NormSyrPR_OV: TSmallintField;
    NormSyrNMAT_KSM: TIBStringField;
    NormSyrKOD_PROD_KSM: TIBStringField;
    NormSyrNEIS: TIBStringField;
    NormSyrDATANORM: TDateField;
    NormSyrPLNORM: TFMTBCDField;
    NormSyrXARKT: TIBStringField;
    NormSyrNAZPRPF: TIBStringField;
    NormSyrSTNAME: TIBStringField;
    NormSyrNAM: TIBStringField;
    NormSyrNAMSPSR: TIBStringField;
    NormSyrNAMORG: TIBStringField;
    NormSyrNMAT: TIBStringField;
    NormSyrKOD_PROD: TIBStringField;
    NormSyrSPROD_ID: TIntegerField;
    NormSyrNAMEVIS: TIBStringField;
    NormSyrNAMEPRN: TIBStringField;
    NormKODRAZ: TIBStringField;
    frDBDataSet1: TfrDBDataSet;
    OstSyr_StSERIA: TIBStringField;
    frxDBDataset3: TfrxDBDataset;
    MDTexStad: TRxMemoryData;
    MDTexStadJOURNST_ID: TIntegerField;
    MDTexStadSTADIA_ID: TIntegerField;
    MDTexStadKART_ID: TIntegerField;
    MDTexStadDATE_STAD: TDateField;
    MDTexStadTIME_STAD: TTimeField;
    MDTexStadTEMPERATURE: TIBBCDField;
    MDTexStadCOMMENT: TIBStringField;
    MDTexStadDATE_TIME_UPDATE: TDateTimeField;
    MDTexStadUSER_NAME: TIBStringField;
    MDTexStadNAME_STAD: TIBStringField;
    frxDBDataset2: TfrxDBDataset;
    DSMDTexstad: TDataSource;
    DSSklad: TDataSource;
    Sklad1: TIBQuery;
    Sklad1STRUK_ID: TSmallintField;
    Sklad1STNAME: TIBStringField;
    IBXComponents: TfrxIBXComponents;
    MDTexStad2: TRxMemoryData;
    DBTexStad2: TfrxDBDataset;
    frDBDataSet7: TfrDBDataSet;
    PechTexGurkol_seria: TFloatField;
    IBdel2: TIBSQL;
    ConfigUMCOTP_RAZR: TIBStringField;
    ConfigUMCACTIVE_SKLAD: TSmallintField;
    ConfigUMCSTKOD: TIBStringField;
    ConfigUMCPRECISION: TSmallintField;
    ConfigUMCOTP_PROIZV: TIBStringField;
    OstSyr: TRxIBQuery;
    OstSyrKOD_PREP: TIBStringField;
    OstSyrNMAT_PREP: TIBStringField;
    OstSyrOSTATOK_BEGIN_S: TFMTBCDField;
    OstSyrOSTATOK_BEGIN_NZ: TFMTBCDField;
    OstSyrPRIX_PERIOD: TFMTBCDField;
    OstSyrPEREDANO_PRIH_NZ: TFMTBCDField;
    OstSyrRASX_PERIOD: TFMTBCDField;
    OstSyrOSTATOK_END_S: TFMTBCDField;
    OstSyrOSTATOK_END_NZ: TFMTBCDField;
    OstSyrZAG_PERIOD: TFMTBCDField;
    OstSyrKRAZ: TSmallintField;
    OstSyrRASH_VIRAB_PERIOD: TFMTBCDField;
    OstSyrNEIS: TIBStringField;
    OstSyrPEREDANO_RASH_NZ: TFMTBCDField;
    OstSyrPEREDANO_RASH_S: TFMTBCDField;
    PechOtchetstruk_id: TIntegerField;
    PrixRasxKART_ID: TIntegerField;
    PrixRasxKEI_ID: TSmallintField;
    PrixRasxKOL_RASH_EDIZ: TFloatField;
    PrixRasxKOL_PRIH_EDIZ: TFloatField;
    PrixRasxDATE_OP: TDateField;
    frxDBDataset4: TfrxDBDataset;
    OstSyrNMAT: TIBStringField;
    IBQuery2: TIBQuery;
    KartNAMRAZ: TIBStringField;
    Upak_sNAME_UPAK: TIBStringField;
    Upak_sNOMU_ID: TIntegerField;
    Upak_sLEN_UP: TIBBCDField;
    Upak_sWIDTH_UP: TIBBCDField;
    Upak_sHEIGHT_UP: TIBBCDField;
    Upak_sVOL_UP: TFMTBCDField;
    Upak_sVES_UPAK: TIBBCDField;
    KartVVIPKV: TFMTBCDField;
    sklad: TIBQuery;
    SmallintField1: TSmallintField;
    IBStringField1: TIBStringField;
    upak: TRxIBQuery;
    UpakUpdate: TIBUpdateSQLW;
    upakNAME_UPAK: TIBStringField;
    upakNOMU_ID: TIntegerField;
    upakLEN_UP: TIBBCDField;
    upakWIDTH_UP: TIBBCDField;
    upakHEIGHT_UP: TIBBCDField;
    upakVOL_UP: TFMTBCDField;
    upakVES_UPAK: TIBBCDField;
    KartGOST: TIBStringField;
    MatropGOST: TIBStringField;
    NormGOST: TIBStringField;
    NormNEIS_PROD: TIBStringField;
    KartVGOST: TIBStringField;
    NormSyrGOST: TIBStringField;
    NormSyrNEIS_PROD: TIBStringField;
    PechOtchetgost: TStringField;
    PechTexGurGost: TStringField;
    skladTIP_SKLAD_ID: TSmallintField;
    IBdel: TIBQuery;
    KartKEI_IDN: TSmallintField;
    PlanVipuskQuery: TRxIBQuery;
    DSPlanVipuskQuery: TDataSource;
    PlanVipuskQueryGOD: TSmallintField;
    PlanVipuskQueryMES: TSmallintField;
    PlanVipuskQueryKOL: TFMTBCDField;
    PlanVipuskQueryKSM_ID: TIntegerField;
    PlanVipuskQueryNMAT: TIBStringField;
    PlanVipuskQueryXARKT: TIBStringField;
    PlanVipuskQueryKOD_PROD: TIBStringField;
    PlanVipuskQuerySTRUK_ID: TSmallintField;
    PlanVipuskQueryKEI_ID: TSmallintField;
    PlanVipuskQueryNAM_REG: TIBStringField;
    PlanVipuskQueryNEIS: TIBStringField;
    PlanVipuskQueryGOST: TIBStringField;
    PlanVipuskQueryKORG: TIntegerField;
    PlanVipuskQuerySPROD_ID: TIntegerField;
    PlanVipuskQueryNAME_ORG: TIBStringField;
    selectOstKsm: TRxIBQuery;
    selectOstKsmPEREDANO_PRIH_NZ: TFMTBCDField;
    selectOstKsmPEREDANO_RASH_NZ: TFMTBCDField;
    selectOstKsmPEREDANO_PRIH_S: TFMTBCDField;
    selectOstKsmPEREDANO_RASH_S: TFMTBCDField;
    selectOstKsmKART_ID: TIntegerField;
    selectOstKsmKSM_ID: TIntegerField;
    selectOstKsmSTRUK_ID: TIntegerField;
    selectOstKsmSPVIS: TSmallintField;
    selectOstKsmSPSR: TSmallintField;
    selectOstKsmNMAT: TIBStringField;
    selectOstKsmKEI_ID: TSmallintField;
    selectOstKsmNEIS: TIBStringField;
    selectOstKsmREG: TSmallintField;
    selectOstKsmPRMAT: TIBStringField;
    selectOstKsmGR: TIBStringField;
    selectOstKsmPGR: TIBStringField;
    selectOstKsmKORG: TIntegerField;
    selectOstKsmKOD_PROD: TIBStringField;
    selectOstKsmOSTATOK_BEGIN_S: TFMTBCDField;
    selectOstKsmOSTATOK_BEGIN_NZ: TFMTBCDField;
    selectOstKsmOSTATOK_END_S: TFMTBCDField;
    selectOstKsmOSTATOK_END_NZ: TFMTBCDField;
    selectOstKsmPRIX_PERIOD: TFMTBCDField;
    selectOstKsmRASX_PERIOD: TFMTBCDField;
    selectOstKsmRAZDEL_ID: TSmallintField;
    selectOstKsmSERIA_ID: TIntegerField;
    selectOstKsmKSM_IDPR: TIntegerField;
    selectOstKsmSERIA: TIBStringField;
    selectOstKsmZAG_PERIOD: TFMTBCDField;
    selectOstKsmRASH_VIRAB_PERIOD: TFMTBCDField;
    selectOstKsmNMAT_PREP: TIBStringField;
    selectOstKsmKOD_PREP: TIBStringField;
    selectOstDayKsm: TRxIBQuery;
    selectOstDayKsmOSSUM: TFMTBCDField;
    PrixRasxostE: TFloatField;
    PrixRasxOTE: TFMTBCDField;
    OstSyrCehQuery: TRxIBQuery;
    DSOstSyCeh: TDataSource;
    OstSyrCehQueryOSTATOK: TFMTBCDField;
    OstSyrCehQueryKSM_ID: TIntegerField;
    OstSyrCehQueryNMAT: TIBStringField;
    gotProdQuery: TRxIBQuery;
    gotProdQueryNDOK: TIBStringField;
    gotProdQueryDOC_ID: TIntegerField;
    gotProdQueryPRIZ_ID: TSmallintField;
    gotProdQueryTIP_OP_ID: TSmallintField;
    gotProdQueryTIP_DOK_ID: TSmallintField;
    gotProdQueryDATE_DOK: TDateField;
    gotProdQueryDOK_OSN_ID: TIntegerField;
    gotProdQuerySTRUK_ID: TSmallintField;
    gotProdQueryVP_ID: TSmallintField;
    gotProdQueryKPV: TFMTBCDField;
    gotProdQueryKLIENT_ID: TIntegerField;
    gotProdQuerySUM_BRB: TIBBCDField;
    gotProdQuerySUM_ISP1: TIBBCDField;
    gotProdQuerySUM_ISP2: TIBBCDField;
    gotProdQuerySUM_VP: TIBBCDField;
    gotProdQuerySUM_ISP1_VP: TIBBCDField;
    gotProdQuerySUM_ISP2_VP: TIBBCDField;
    gotProdQueryNDS: TIBBCDField;
    gotProdQuerySUM_NDS: TIBBCDField;
    gotProdQuerySUM_NDS_VP: TIBBCDField;
    gotProdQueryDATE_OP: TDateField;
    gotProdQueryDATE_VVOD: TDateTimeField;
    gotProdQueryZADACHA_ID: TIBStringField;
    gotProdQueryUSER_NAME: TIBStringField;
    gotProdQueryDOV: TSmallintField;
    gotProdQueryDATE_TIME_UPDATE: TDateTimeField;
    gotProdQueryJORN_ID: TSmallintField;
    gotProdQueryRCHET_ID: TIntegerField;
    gotProdQueryTAG: TIntegerField;
    gotProdQueryKPV_OLD: TFMTBCDField;
    KartOST_STRUK_ID: TIntegerField;
    Ceh_Normz: TRxIBQuery;
    Ceh_NormzFORMULA: TIBStringField;
    Ceh_NormzKOEF1: TIBBCDField;
    Ceh_NormzKOEF2: TIBBCDField;
    Ceh_NormzKOEF3: TIBBCDField;
    Ceh_NormzKSM_ID_MAT: TIntegerField;
    Ceh_NormzKSM_ID_PR: TIntegerField;
    Ceh_NormzNORMZ_ID: TIntegerField;
    Ceh_NormzPROC: TIBBCDField;
    Ceh_NormzRAZDEL_ID: TSmallintField;
    Ceh_NormzNAMRAZ: TIBStringField;
    Ceh_NormzNMATS: TIBStringField;
    Ceh_NormzKRAZ: TSmallintField;
    Ceh_NormzDECZNAK: TSmallintField;
    IBUpdateCeh_normz: TIBUpdateSQLW;
    DSCeh_Normz: TDataSource;
    ConfigUMCSTNAM: TIBStringField;
    ConfigUMCRELA_STRUK_ID: TSmallintField;
    FactVipuskQuery: TRxIBQuery;
    FactVipuskQueryDOC_ID: TIntegerField;
    FactVipuskQuerySTROKA_ID: TIntegerField;
    FactVipuskQueryKSM_ID: TIntegerField;
    FactVipuskQueryKOD_PROD: TIBStringField;
    FactVipuskQueryNEIS: TIBStringField;
    FactVipuskQueryNMAT: TIBStringField;
    FactVipuskQueryXARKT: TIBStringField;
    FactVipuskQueryGOST: TIBStringField;
    FactVipuskQueryKEI_ID: TSmallintField;
    FactVipuskQueryNAM_REG: TIBStringField;
    FactVipuskQueryKORG: TIntegerField;
    FactVipuskQueryNAME_ORG: TIBStringField;
    VipuskMem: TRxMemoryData;
    VipuskMemGOD: TSmallintField;
    VipuskMemMES: TSmallintField;
    VipuskMemKSM_ID: TIntegerField;
    VipuskMemSTRUK_ID: TSmallintField;
    VipuskMemKEI_ID: TSmallintField;
    VipuskMemKORG: TIntegerField;
    VipuskMemSPROD_ID: TIntegerField;
    VipuskMemKOL: TFloatField;
    VipuskMemNMAT: TStringField;
    VipuskMemXARKT: TStringField;
    VipuskMemKOD_PROD: TStringField;
    VipuskMemNAM_REG: TStringField;
    VipuskMemNEIS: TStringField;
    VipuskMemGOST: TStringField;
    VipuskMemNAME_ORG: TStringField;
    FactVipuskQuerySPROD_ID: TIntegerField;
    KartCENA_UCH: TFloatField;
    DocumentDOK_OSN_ID: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure FormToObject(PopupForm : TForm; ControlObject : TControl; HTop:Integer=0; YesWidth:Integer=1);
    procedure VoprosWriteDoc;
    procedure CancelUpdatesDoc;
    procedure ApplyUpdatesDoc;
    procedure RaspredSyr;
    procedure RaspredSyrOt;
    procedure RaspredZag;
    procedure RaspredZagOt;
    procedure RaspredRas;
    procedure RaspredRasOt;
    procedure DobPrixPrep;

// IGOR'S PROCEDURES ARE HERE *************************************************************//
    procedure writeMyUserNameToTxt;
    procedure deleteMyUserNameFromTxt;
    procedure removeKartByDocidKsmidRazdelid(docId, ksmId, razdelId: integer);
    function GetLocalIP: String;
    procedure activateSelectOstKsm(dat1, dat2 : TDate; kodp, strukId, ksmId : integer);
    function getSelectOstKsmOstatokEndSSUM() : double;
    procedure writeWhoUsesGotProd(gotProdId : string);
    procedure setValues2Kart(ksmId, klientId, razdelId, keiId, docId, kartId,
                              tipOpId, tipDokId : integer; kolRashEdiz, kolPrihEdiz,
                              kolRash, kolPrih : double);
    procedure delGotProd(memValue : Pointer; dataBeg, dataEnd : Pointer);
    function isKsmGotProd(ksmId : Pointer; dataBeg, dataEnd : Pointer) : boolean;
    function getStrMes(monthInt : integer) : string;
    function getNeededPrixInMatropEdiz() : double;
    function getNeededPrixInNormnEdiz() : double;
    function MesNameInRodPodezhSmall(Mes: integer): string;
    procedure createKartIdInOstatki;
    procedure createPrixodDocumOnPrep;
    procedure findOstatkiSyrInCex;
    procedure createKartInPrixodDocumOnPrep;
    procedure activateSprFormul(ksmIdPr : integer; ksmIdMat : integer; razdelId : integer);
    procedure commitWriteTrans(retaining : boolean);
    procedure commitReadTrans(retaining : boolean);
    procedure startWriteTrans;
    procedure startReadTrans;

    procedure setCexOptions;
//    procedure activateDocument;
//    procedure activateSeria;
//    procedure activateOstatki;
// IGOR'S PROCEDURES ARE ABOVE ******************************************//
    procedure KartBeforeInsert(DataSet: TDataSet);
    procedure KartNewRecord(DataSet: TDataSet);
    procedure DocumentBeforeInsert(DataSet: TDataSet);
    procedure DocumentBeforeClose(DataSet: TDataSet);
    procedure KartBeforeClose(DataSet: TDataSet);
    procedure DocumentBeforeDelete(DataSet: TDataSet);
    procedure DocumentNewRecord(DataSet: TDataSet);
    procedure SeriaBeforeInsert(DataSet: TDataSet);
    procedure SeriaNewRecord(DataSet: TDataSet);
    procedure OstatkiNewRecord(DataSet: TDataSet);

    function MesNameInRodPodezhBig(Mes: integer): string;
    function SumToString(x: integer): string;
    function Koef_per(kei_in : integer; kei_from : integer; ksm : integer) : double;

    procedure frReport2GetValue(const ParName: String;
      var ParValue: Variant);
    procedure Ceh_StadNewRecord(DataSet: TDataSet);
    procedure OstatkiBeforeInsert(DataSet: TDataSet);
    procedure KartKSM_IDValidate(Sender: TField);
    procedure KartBeforePost(DataSet: TDataSet);
    procedure KartKRAZValidate(Sender: TField);
    procedure Ceh_StadLEK_IDValidate(Sender: TField);
    procedure PrixRasxAfterScroll(DataSet: TDataSet);
    procedure KartVNewRecord(DataSet: TDataSet);
    procedure KartVBeforeEdit(DataSet: TDataSet);
    procedure KartVBeforeInsert(DataSet: TDataSet);
    procedure Ceh_StadBeforeInsert(DataSet: TDataSet);
    procedure SeriaKOD_TMValidate(Sender: TField);
    procedure TexStadNewRecord(DataSet: TDataSet);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure PrixRasxAfterPost(DataSet: TDataSet);
    procedure PrixRasxBeforePost(DataSet: TDataSet);
    procedure upakBeforeDelete(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure PrixRasxCalcFields(DataSet: TDataSet);
    procedure Ceh_NormzNewRecord(DataSet: TDataSet);

  private
    { Private declarations }
  public
    stkod : string;
    
    function LastDayOfMonth(month, year: integer): TDate;
    function getTochn(ksmIdPrep, ksm_id : integer) : integer;

  end;

var
//    AniBmp1: TBitmap;
    DM1: TDM1;
    ss_kodp : integer;
    MODE : INTEGER;
    Splash : TForm;
    str_ser : string;
    skod : string;
    v_raspred : double;
    v_raspred_ediz : double;
    v_osts_pr : double;
    v_ostnz_pr : double;
    v_raspred_dob : double;
    v_kart : integer;
    dob_ras : double;
    v_osts : double;
    st_kart : integer;
    naz_sum : string;
    vNeis_vip : string;
    PR_N : BOOLEAN;
    v_dok_Kart : variant;
    v_kartV : variant;
    prov : boolean;
    i : integer;
    v_razdel : integer;
    s_dat1_period : string;
    s_dat2_period : string;
    MES_conf : integer;
    GOD_conf : integer;
    uslF : string;
    sortF : string;
    vKol : string;
    vPriz_id : Integer;
    vGr_Op_Id : String;
    vTip_Op_Id : Integer;
    vTip_Doc_Id : Integer;
    vDate_Dok : tdate;
    vDate_op : tdate;
    vZadacha_Id : String;
    vStruk_Id : Integer;
    vDocument_Id : Integer;
    vSTADIA_Id : INTEGER;
    vStroka_Id : Integer;
    vSeria_id : Integer;
    vNdoc : String;
    VKlient_Id : Integer;
    vKart_id : Integer;
    UserName : String;
    s_srok_godn : tdate;
    s_dat1 : String;
    s_dat2 : String;
    s_prix : Double;
    s_rasx : Double;
    s_plan : double;
    s_Sprod_id : integer;
    s_razdel : integer;
    Usl_DAT : String;
    Usl_Struk : String;
    Usl_TIP : String;
    Usl_SORT : String;
    Usl_GROP : STRING;
    Usl_ksm : string;
    s_namcex : String;
    s_nam_Tip_Op : String;
    s_nam_Tip_Doc : String;
    s_kodp : integer;
    s_KORG : integer;
    s_nameprn : string;
    s_namevis : string;
    s_namorg : string;
    s_namspsr : string;
    s_Neiz : string;
    s_kodProd : string;
    s_zag : string;
    s_ksm : integer;
    s_nmat : string;
    s_xarkt : string;
    s_gost : string;
    s_kei : integer;
    mes : integer;
    god : integer;
    s_seria : string;
    s_Lek_id : integer;
    vPostPol : string;
    OldCursor : TCursor;
    nammes : string;
    First_vxod : Boolean;
    vLek_id : integer;
    vNameStad : string;
    s_mes : string;
    pr_raspred : integer;
    v_dok : variant;
    v_KeiN : integer;
    MatrPr : string;
    YesSeria : boolEan;
    s_Formv : string;
    s_OPLan : double;
    s_sdano : double;
    pr_ser : integer;
    ksm_ov : integer;
    an_id : integer;
    Tochn : TRoundtoRange;
    s_kol_seria : double;
    v_zag : double;
    VidShap : integer;
    s_fio : string;
    s_dolgn : string;
    S_STKOD : STRING;
    pr_button9 : boolEan;
    s_kart_id : integer;
    s_namreg : string;
    star_kod : integer;
    V_VIPUSK : DOUBLE;
    v_vipuskg : double;
    v_prix_period : double;
    pr_zanes : boolean;
    pr_kor : integer;
    nachn : string;
    struk_id : integer;
    s_Usl_Sort : string;
    s_del : integer;
    p_yes : boolean;
    s_klient1 : integer;
    s_STRUK1 : INTEGER;
    s_stname1 : string;
    upak_id2 : integer;
    reportsPath, exePath, curRole : string;

implementation

uses NormCex,glmenu,Ostatki,SprStad, VibPrep, Start, rascex, TexGurOld,Got_Prod,Pech_Vibor,
  SprFormul, Otchet,Analitlist_tg;

  
{$R *.dfm}

function TDM1.getTochn(ksmIdPrep, ksm_id : integer) : integer;
begin
  if (FSprFormul = nil) then
    FSprFormul := TfSprFormul.Create(Application);
  if (FSprFormul.Ceh_Normz.Active = true) then
    FSprFormul.CEH_NormZ.Close;
  FSprFormul.CEH_NormZ.MacroByName('SORT').AsString := '';
  FSprFormul.CEH_NormZ.MacroByName('USL').AsString := ' Where CEH_NORMZ.KSM_ID_PR = '
                                                      + INTTOSTR(ksmIdPrep)
                                                      + ' and CEH_NORMZ.KSM_ID_MAt = '
                                                      + INTTOSTR(ksm_id);
  FSprFormul.CEH_NormZ.Open;
  if (not FSprFormul.CEH_NORMZ.eof) then
    if (FSprFormul.CEH_NORMZDecznak.AsVariant <> null)  then
      result := -FSprFormul.CEH_NORMZDecznak.asinteger
    else
      result := -3
  else
      result := -3;
end;

procedure TDM1.startWriteTrans;
begin
  if (not IBT_Write.Active) then
    IBT_Write.StartTransaction;
end;

procedure TDM1.startReadTrans;
begin
  if (not IBT_Read.Active) then
    IBT_Read.StartTransaction;
end;

procedure TDM1.commitWriteTrans(retaining : boolean);
begin
  startWriteTrans;
  if (retaining) then
    IBT_Write.CommitRetaining
  else
    IBT_Write.Commit;
end;

procedure TDM1.commitReadTrans(retaining : boolean);
begin
  startReadTrans;
  if (retaining) then
    IBT_Read.CommitRetaining
  else
    IBT_Read.Commit;
end;

function TDM1.isKsmGotProd(ksmId : Pointer; dataBeg, dataEnd : Pointer) : boolean;
begin
  gotProdQuery.Active := false;
  gotProdQuery.ParamByName('struk_id').AsInteger := vStruk_Id;
  gotProdQuery.ParamByName('ksm_id').AsInteger := Integer(ksmId^);
  gotProdQuery.ParamByName('datab').AsDate := TDate(dataBeg^);
  gotProdQuery.ParamByName('datae').AsDate := TDate(dataEnd^);
  gotProdQuery.Active := true;
  if (gotProdQuery.RecordCount > 0) then
    result := true
  else
    result := false;
end;

procedure TDM1.delGotProd(memValue : Pointer; dataBeg, dataEnd : Pointer);
var
  ksmId : integer;
begin
  TRxMemoryData(memValue^).First;
  if (TRxMemoryData(memValue^).RecordCount > 0) then
    while (not TRxMemoryData(memValue^).Eof) do
    begin
    ksmId := TRxMemoryData(memValue^).FieldByName('ksm_id').AsInteger;
      if (isKsmGotProd(@ksmId, dataBeg, dataEnd)) then
        TRxMemoryData(memValue^).Delete
      else
        TRxMemoryData(memValue^).Next;
    end;
end;

function TDM1.getSelectOstKsmOstatokEndSSUM() : double;
var
  sumOstEndS : double;
begin
  sumOstEndS := 0.0;
  if (selectOstKsm.Active) then
  begin
    if (selectOstKsm.RecordCount > 0) then
    begin
      selectOstKsm.First;
      while (not selectOstKsm.Eof) do
      begin
        sumOstEndS := sumOstEndS + selectOstKsmOSTATOK_END_S.AsFloat;
        selectOstKsm.Next;
      end;
    end;
  end;
  result := sumOstEndS;
end;

procedure TDM1.activateSelectOstKsm(dat1: TDate; dat2: TDate; kodp: Integer;
                                    strukId: Integer; ksmId: Integer);
begin
//  selectOstKsm.Active := false;
//  selectOstKsm.ParamByName('struk_id').AsInteger := strukId;
//  selectOstKsm.ParamByName('kodp').AsInteger := kodp;
//  selectOstKsm.ParamByName('ksm_id').AsInteger := ksmId;
//  selectOstKsm.ParamByName('dat1').AsDate := dat1;
//  selectOstKsm.ParamByName('dat2').AsDate := dat2;
//  selectOstKsm.Active := true;

  selectOstDayKsm.Active := false;
  selectOstDayKsm.ParamByName('struk_id').AsInteger := strukId;
  selectOstDayKsm.ParamByName('ksm_id').AsInteger := ksmId;
  selectOstDayKsm.ParamByName('dat2').AsDate := dat2 + 1;
  selectOstDayKsm.Active := true;
end;

procedure TDM1.setCexOptions;
begin
  DM1.ConfigUMC.Close;
  DM1.ConfigUMC.MacroByName('USL').AsString := 'configumc.STRUK_ID = ' + IntToStr(vSTRUK_ID);
  DM1.ConfigUMC.Open;
  S_namcex := DM1.ConfigUMCSTNAME.AsString;
  if (MonthOf(Date()) = DM1.ConfigUMCMES.AsInteger)
      and (YearOf(Date()) = DM1.ConfigUMCGOD.AsInteger) then
  begin
    MODE := 0;
  end
  else
    if ((MonthOf(Date()) = DM1.ConfigUMCMES.AsInteger - 1)
          and (YearOf(Date()) = DM1.ConfigUMCGOD.AsInteger))
        or ((YearOf(Date()) = DM1.ConfigUMCGOD.AsInteger - 1)
            and (MonthOf(Date()) = 12) and (DM1.ConfigUMCMES.AsInteger = 1))then
    begin
//     Label5.Caption:='(Прошлый месяц)';
      MODE := 1;
    end
    else
    begin
//      Label5.Caption:='(Только просмотр)';
      MODE := 2;
    end;
  FGlMenu.RXLabel1.Caption := DM1.ConfigUMCSTNAME.AsString;
  FGlMenu.Label2.Caption := FormatDateTime('mmmm', EncodeDate(DM1.ConfigUMCGOD.AsInteger,
                                                              DM1.ConfigUMCMES.AsInteger,
                                                              1));
  MES := DM1.ConfigUMCMES.AsInteger;
  GOD := DM1.ConfigUMCGOD.AsInteger;
  MES_conf := DM1.ConfigUMCMES.AsInteger;
  GOD_conf := DM1.ConfigUMCGOD.AsInteger;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1 := '01.' + S_MES + '.' + INTTOSTR(GOD);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1), 1) -1);
  s_dat1_period := s_dat1;
  s_dat2_period := s_dat2;
  First_vxod := true;
  FGlMenu.Label5.Caption := FormatDateTime('yyyy', EncodeDate(DM1.ConfigUMCGOD.AsInteger,
                                                              DM1.ConfigUMCMES.AsInteger,
                                                              1)) + 'г.';
  vSTRUK_ID := DM1.ConfigUMCSTRUK_ID.AsInteger;
  dm1.stkod := dm1.ConfigUMCSTKOD.AsString;
  DM1.ConfigUMC.Close;
  DM1.IBQuery1.Close;
  DM1.IBQuery1.SQL.Text := 'SELECT STKOD FROM Struk WHERE STRUK_ID = ' + IntToStr(VSTRUK_ID);
  DM1.IBQuery1.Open;
  S_STKOD := DM1.IBQuery1.fieldByName('STKOD').AsString;
end;

procedure TDM1.DataModuleCreate(Sender: TObject);
var
  IniUMC : TIniFile;
begin
  star_kod := 0;
  st_kart := 0;
  exePath := ExtractFilePath(ParamStr(0));
  curRole := ParamStr(2);
//  IniUMC := TIniFile.Create('UMC.Ini');
  IniUMC := TIniFile.Create(exePath + 'UMC.Ini');
  VStruk_ID := IniUMC.ReadInteger('Config', 'Struk_Id', 0);
  MatrPr := IniUMC.ReadString('Config', 'MatrPr', '02');
  YesSeria := IniUMC.ReadBool('Config', 'YesSeria', True);
  MODE := 0;
  UserName := AnsiUpperCase(GetCurrentUserName);
  vZadacha_Id := 'OTCHCEX';
//   UserName :='EPC1';
  DM1.BELMED.Close;
  DM1.BELMED.Params.Clear;
  DM1.BELMED.Params.Add('lc_ctype=WIN1251');
  DM1.BELMED.Params.Add('sql_role_name=sklad_CEH');
  DM1.BELMED.Params.Add('user_name=' + UserName);
  DM1.BELMED.Params.Add('password=' + AnsiLowerCase(UserName));
  try
    DM1.BELMED.Open;
    startReadTrans;
  except
    if DM1.BELMED.DatabaseName = 'DATAMEDIC:D:\IBDATA\REST.GDB' then
    begin
      DM1.BELMED.Params.Add('user_name=sysdba');
      DM1.BELMED.Params.Add('password=masterkey');
      UserName := DM1.BELMED.Params[2];
    end
    else
      DM1.BELMED.LoginPrompt := True;
    try
      DM1.BELMED.Params[3] := '';
      DM1.BELMED.Open;
      startReadTrans;
    except
      Delete(UserName, 1, 10);
      ShowMessage('У пользователя ' + UserName + ' нет доступа к базе данных');
      Application.Terminate;
    end;
  end;
  BELMED.Connected := True;
  {$IFDEF RELEASE}
  reportsPath := 'F:\Otchcex\Report\';
  {$ENDIF}
  {$IFDEF DEBUG}
  reportsPath := 'C:\MyProg\Otchcex_3\Source\Report\';
  {$ENDIF}
  writeMyUserNameToTxt;
end;

procedure TDM1.DataModuleDestroy(Sender: TObject);
begin
  FGlMenu.OnResize := nil;
  deleteMyUserNameFromTxt;
end;

function TDM1.GetLocalIP: String;
const WSVer = $101;
var
  wsaData: TWSAData;
  P: PHostEnt;
  Buf: array [0..127] of Char;
begin
  Result := '';
  if WSAStartup(WSVer, wsaData) = 0 then begin
    if GetHostName(@Buf, 128) = 0 then begin
      P := GetHostByName(@Buf);
      if P <> nil then Result := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
    end;
    WSACleanup;
  end;
end;

procedure TDM1.writeMyUserNameToTxt;
var
  myFile : TextFile;
begin
  AssignFile(myFile, 'F:\Otchcex\CurrentUsers');
  Append(myFile);
  WriteLn(myFile, UserName);
  writeln(myFile, '   ' + DateTimeToStr(Now));
  CloseFile(myFile);
end;

procedure TDM1.writeWhoUsesGotProd(gotProdId : string);
var
  myFile : TextFile;
begin
  AssignFile(myFile, 'F:\Otchcex\GotProd');
  Append(myFile);
  WriteLn(myFile, gotProdId + '  ' + UserName);
  CloseFile(myFile);
end;

procedure TDM1.deleteMyUserNameFromTxt;
var
 f : TStringList;
 i : integer;
begin
  try
    f := TStringList.Create;
    f.LoadFromFile('F:\Otchcex\CurrentUsers');
    for i := 0 to f.Count - 1 do
    begin
      if (f.Strings[i] = UserName) then
      begin
        f.Delete(i);
        f.Delete(i);
        break;
      end;
    end;
    f.SaveToFile('F:\Otchcex\CurrentUsers');
    f.Free;
  except
  on e : exception do
  //
  end;
end;

function TDM1.getNeededPrixInMatropEdiz() : double;   // расчет необходимого кол-ва прихода на препарат с учетом остатков
begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT ost.kei_id, ost.OSTATOK_begin_S, ost.zag_period, '
                       + 'ost.peredano_rash_s, ost.peredano_prih_s, ost.razdel_id ');
  DM1.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM (' + '''' + s_dat1 + '''' + ','
                       + '''' + s_dat2 + '''' + ',' + inttostr(s_kodp) + ','
                       + inttostr(vSTRUK_ID) + ',' + inttostr(s_KSM)
                       + ') ost where ost.razdel_id = ' + inttostr(v_razdel));
  DM1.IBQuery1.Active := True;
  if (DM1.IBQuery1.RecordCount > 0) then
    result := dm1.IBQuery1.FieldByName('zag_period').AsFloat
                 + dm1.IBQuery1.FieldByName('peredano_rash_s').AsFloat
                 - dm1.IBQuery1.FieldByName('OSTATOK_begin_S').AsFloat
                 - dm1.IBQuery1.FieldByName('peredano_prih_s').AsFloat
  else
    result := 0;
end;

function TDM1.getNeededPrixInNormnEdiz() : double;   // расчет необходимого кол-ва прихода на препарат с учетом остатков
begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT ost.kei_id, ost.OSTATOK_begin_S, ost.zag_period, '
                       + 'ost.peredano_rash_s, ost.peredano_prih_s, ost.razdel_id ');
  DM1.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM (' + '''' + s_dat1 + '''' + ','
                       + '''' + s_dat2 + '''' + ',' + inttostr(s_kodp) + ','
                       + inttostr(vSTRUK_ID) + ',' + inttostr(s_KSM)
                       + ') ost where ost.razdel_id = ' + inttostr(v_razdel));
  DM1.IBQuery1.Active := True;
  if (DM1.IBQuery1.RecordCount > 0) then
  begin
    if (v_kein <> dm1.IBQuery1.FieldByName('kei_id').asinteger) then
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

procedure TDM1.createKartIdInOstatki;   // создание карточки сырья в остатках
begin
  IF (not DM1.Ostatki.Active) THEN
    DM1.Ostatki.Active := TRUE
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

procedure TDM1.createPrixodDocumOnPrep;  // создание приходного документа на препарат
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
      vDate_op := strtodate(s_dat1);
      vDate_dok := strtodate(s_dat1);
      dm1.Document.MacroByName('usl').AsString := ' WHERE DOcUMENT.STRUK_ID = ' + INTTOSTR(VsTRUK_ID)
                                + ' AND DOCUMENT.TIP_OP_ID = 30'
                                + ' AND Document.Date_op between ' + ''''
                                + s_dat1 + '''' + ' and ' + '''' + s_dat2 + ''''
                                + ' AND DOCUMENT.KLIENT_ID = ' + INTTOSTR(S_KODP);
      dm1.Document.open;
      dm1.Document.Insert;
      dm1.Document.Post;
      dm1.Document.ApplyUpdates;
    END;
  end;
end;

procedure TDM1.createKartInPrixodDocumOnPrep;   // добавление необходимого прихода сырья на препарат в Kart
var
  v_ost : double;
  v_ost_razn : double;
  pr_vxod : integer;
begin
  pr_vxod := 1;
  if (DM1.IBQuery1.RecordCount > 0) then
  begin
    v_ost_razn := v_raspred_dob;
    while (not DM1.IBQuery1.eof) and ((v_ost_razn > 0) or (pr_vxod = 1))  do
    begin
      pr_vxod := pr_vxod + 1;
      v_ost := DM1.IBQuery1.FieldByName('Kot_S').AsFloat;
      DM1.IBQuery1.Next;
      if (v_ost = 0) and (not DM1.IBQuery1.eof) then
        DM1.IBQuery1.Prior
      else
      begin
        if (DM1.IBQuery1.eof) then
          v_raspred_dob := v_ost_razn
        else
        begin
          if (v_ost <> 0) and (not DM1.IBQuery1.eof) then
          begin
            DM1.IBQuery1.Prior;
            if (v_ost_razn - v_ost >= 0){ and (v_ost >= 0)} then
            begin
              v_raspred_dob := v_ost;
              v_ost_razn := v_ost_razn - v_ost;
            end
            else
            begin
              v_raspred_dob := v_ost_razn;
              v_ost_razn := v_ost_razn - v_ost;
            end;
          end;
        end;
        dm1.Kart.Insert;
        setValues2Kart(s_ksm, vklient_id, v_razdel, v_kein, vdocument_id,
                       DM1.IBQuery1.FieldByName('Kart_id').AsInteger,
                       30, 37, v_raspred_dob, 0, 0, 0);
        dm1.Kart.Post;
      end;
      DM1.IBQuery1.Next;
    end;
  end
  else
  begin
    dm1.Kart.Insert;
    setValues2Kart(s_ksm, vklient_id, v_razdel, v_kein, vdocument_id, st_Kart,
                   30, 37, v_raspred_dob, 0, 0, 0);
    dm1.Kart.Post
  end;
  dm1.Kart.BeforePost := KartBeforePost;
  DM1.kart.ApplyUpdates;
end;

procedure TDM1.findOstatkiSyrInCex;   // поиск остатков сырья в цехе
begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT ostatki.kart_id, ostatki.OSTATOK_END_S, ostatki.struk_id, ');
  DM1.IBQuery1.SQL.Add(' (select kol_new from ceh_ost_ediz(ostatki.KSM_ID, ostatki.KEI_ID,'
                        + inttostr(v_kein) + ', ostatki.OSTATOK_END_S)) Kot_S');
  DM1.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM1 (' + '''' + s_dat1 + '''' + ','
                       + '''' + s_dat2 + '''' + ',1,' + inttostr(vSTRUK_ID)
                       + ',' + inttostr(s_KSM) + ', 0) ostatki ');
  DM1.IBQuery1.SQL.Add(' order by ostatki.kart_id ');
  DM1.IBQuery1.Active := True;
  DM1.IBQuery1.First;
end;

procedure TDM1.DobPrixPrep;
var
  v_docSt : integer;
  v_tipSt : integer;
  v_kartSt : integer;
begin
  v_docSt := vDocument_id;
  v_tipSt := vTip_op_id;
  v_kartSt := vKart_id;
 // расчет необходимого кол-ва прихода на препарат с учетом остатков
  v_raspred := getNeededPrixInMatropEdiz();    // v_raspred- в ед.изм.справочника (табл.Matrop)
  v_raspred_dob := getNeededPrixInNormnEdiz();   // v_raspred_dob - в ед.изм. норм (табл.Normn)
// поиск карточки сырья цеха, ели нет-создать
  v_dok_kart := SelectToVarIB('select Ostatki.kart_id '
                              + 'FROM Ostatki WHERE Ostatki.STRUK_ID = ' + INTTOSTR(VsTRUK_ID)
                              + ' AND ostatki.ksm_id = ' + inttostr(s_Ksm)
                              + ' AND (coalesce(Ostatki.Ksm_idpr, 0) = 0)',
                              dm1.belmed, dm1.ibt_read);

  If (v_dok_kart = Null) then
    createKartIdInOstatki   //  карточки нету, создаем ее
  else
    st_kart := v_dok_kart;  // карточка сырья цеха есть, получаем сумму остатка в сырье
  createPrixodDocumOnPrep;  //                 запись в Kart прихода сырья  на препарат
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
    findOstatkiSyrInCex;
    createKartInPrixodDocumOnPrep;    // запись необходимого прихода на препарат в Kart
  end;
  vdocument_id := v_docSt;
  vTip_Op_Id := v_tipSt;
  vKart_id := v_kartSt;
end;

procedure TDM1.setValues2Kart(ksmId, klientId, razdelId, keiId, docId, kartId,
                              tipOpId, tipDokId : integer; kolRashEdiz, kolPrihEdiz,
                              kolRash, kolPrih : double);
begin
  DM1.Kart.FieldByName('Ksm_Id').AsInteger := ksmId;
  dm1.KartKol_rash_ediz.AsFloat := kolRashEdiz;
  dm1.KartKol_prih_ediz.AsFloat := kolPrihEdiz;
//  dm1.KartKol_rash.AsFloat := kolRash;
//  dm1.KartKol_prih.AsFloat := kolPrih;
  DM1.Kart.FieldByName('klient_Id').AsInteger := klientId;
  DM1.Kart.FieldByName('razdel_Id').AsInteger := razdelId;
  DM1.Kart.FieldByName('kei_Id').AsInteger := keiId;
  DM1.Kart.FieldByName('Doc_Id').AsInteger := docId;
  DM1.Kart.FieldByName('KART_Id').AsInteger := kartId;
  DM1.Kart.FieldByName('TIP_OP_Id').AsInteger := tipOpId;
  DM1.Kart.FieldByName('TIP_DOK_Id').AsInteger := tipDokId;
end;


procedure TDM1.RaspredSyr; 
begin
 DM1.Kart.BeforePost:=NIL;
 DM1.Kart.BeforeClose:=NIL;
 if FSprFormul=nil then FSprFormul:=TfSprFormul.Create(Application);
 if FvibPrep=nil then FVibPrep:=tFVibPrep.Create(Application);
  FVibPrep.RadioGroup4.Visible:=false;
  FVibPrep.ShowModal;
  FVibPrep.RadioGroup4.Visible:=true;
  if FVibPrep.ModalResult=mrOk then
  begin
   Splash := ShowSplashWindow(AniBmp1,'Распределение приходов. Подождите, пожалуйста...', True, nil);
   FVibPrep.Syrie.DisableControls;
   FVibPrep.DBGridEh3.OnSortMarkingChanged:=nil;
   FVibPrep.Syrie.First;
   while not FVibPrep.Syrie.Eof do
   begin
    if FVibPrep.SyrieVib.asInteger=1 then
    begin
     s_ksm:=FVibPrep.SyrieKsm_id.AsInteger;
     str_ser:=' and ostatki.seria_id is null';
//     if FVibPrep.SyrieSeria_id.AsInteger=0 then str_ser:=' and ostatki.seria_id is null'
//     else str_ser:=' and ostatki.seria_id='+INTTOSTR(FVibPrep.SyrieSeria_id.AsInteger);
     IBQueryNorm.Active := False;
     IBQueryNorm.SQL.Clear;
{     IBQueryNorm.SQL.Add('SELECT OSTATKI.KART_ID,OSTATKI.OSTATOK_END_S ot_s,OSTATKI.OSTATOK_END_NZ ot_nz,OSTATKI.KEI_ID ');
     IBQueryNorm.SQL.Add(' FROM SELECT_OST_KSM ('+''''+s_dat1+''''+','+''''+s_dat2+''''+',1,'+inttostr(VSTRUK_ID)+','+inttostr(S_KSM)+') OSTATKI ');
     IBQueryNorm.SQL.Add(' where 0=0 ');}
     IBQueryNorm.SQL.Add('SELECT OSTATKI.KART_ID,OSTATKI.KSM_ID,OSTATKI.OT_S,OSTATKI.OT_NZ,OSTATKI.KEI_ID ');
     IBQueryNorm.SQL.Add(' FROM OSTATKI ');
     IBQueryNorm.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_KSM)+' and (OSTATKI.KSM_IDPR IS NULL or OSTATKI.KSM_IDPR=0) AND OSTATKI.STRUK_ID='+INTTOSTR(Vstruk_iD));
     IBQueryNorm.SQL.Add(str_ser);
     IBQueryNorm.Active := True;
     if not IBQueryNorm.Eof then
     begin
      V_KART:=IBQueryNorm.FieldByName('KART_ID').ASInteger;
      s_KEI:=IBQueryNorm.FieldByName('KEI_ID').ASInteger;
      V_OSTS:=IBQueryNorm.FieldByName('OT_S').AsFloat;
//      if v_osts>0 then
//      begin
       IF DM1.Kart.Active THEN DM1.Kart.Close;
       DM1.Kart.MacroByName('USL').AsString:=' WHERE DOCUMENT.TIP_OP_ID=30 AND DOCUMENT.TIP_DOK_ID=37 '
       +' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
       +' AND KART.ksm_id='+INTTOSTR(s_ksm)
       +' AND DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID);
       dm1.Kart.Active:=true;
       DM1.IBQuery1.Active := False;
       DM1.IBQuery1.SQL.Clear;
       DM1.IBQuery1.SQL.Add('SELECT kartv.kol_prih,KARTv.KSM_ID,norm.razdel_id,NORM.PLNORM,norm.kei_id ,kartv.doc_id,cast(norm.plnorm*kartv.kol_prih as numeric(16,7))  as raspred ');
       DM1.IBQuery1.SQL.Add(' FROM norm_view'+'('+'119,'+inttostr(god)+','+inttostr(mes)+','+'0,0,'+inttostr(s_ksm)+')'+' NORM ');
       DM1.IBQuery1.SQL.Add(' INNER JOIN KARTv ON (NORM.KODP = KARTv.KSM_ID) ');
       DM1.IBQuery1.SQL.Add(' INNER JOIN document ON (kartv.doc_id = document.doc_id)');
       DM1.IBQuery1.SQL.Add(' WHERE KARTv.DOC_ID='+INTTOSTR(V_DOk));
//       DM1.IBQuery1.SQL.Add(' AND NORM.KSM_ID='+INTTOSTR(S_KSM));
//       DM1.IBQuery1.SQL.Add(' AND NORM.mes='+INTTOSTR(mes));
//       DM1.IBQuery1.SQL.Add(' AND NORM.god='+INTTOSTR(god));
       DM1.IBQuery1.Active := True;
       DM1.IBQuery1.First;
//       v_raspred_sum:=0;
       while not DM1.IBQuery1.Eof do
       begin
        v_razdel:=dm1.IBQuery1.FieldByName('razdel_ID').AsiNTEGER;
        S_KODP:=dm1.IBQuery1.FieldByName('KSM_ID').AsiNTEGER;
        v_KeiN:=dm1.IBQuery1.FieldByName('Kei_ID').AsiNTEGER;
        FVibPrep.FactVipusk.First;
        if FVibPrep.FactVipusk.Locate('KSM_ID;VIB',VarArrayOf([S_KODP,TRUE]),[]) THEN
        BEGIN
         FVibPrep.RAZDEL1.First;
         if FVibPrep.RAZDEL1.Locate('RAZDEL_ID;VIB',VarArrayOf([dm1.IBQuery1.FieldByName('RAZDEL_ID').AsInteger,TRUE]),[]) THEN
         BEGIN
          if FSprFormul.Ceh_Normz.Active=true then
           FSprFormul.CEH_NormZ.Close;
          FSprFormul.CEH_NormZ.MacroByName('SORT').AsString:='';
          FSprFormul.CEH_NormZ.MacroByName('USL').AsString:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP)+' and CEH_NORMZ.KSM_ID_MAt='+INTTOSTR(S_Ksm);
          FSprFormul.CEH_NormZ.Open;
          if not FSprFormul.CEH_NORMZ.eof then
           if  FSprFormul.CEH_NORMZDecznak.AsVariant<>null  then
            tochn:=0-FSprFormul.CEH_NORMZDecznak.asinteger
           else tochn:=-3
          else tochn:=-3;
          v_raspred:=dm1.IBQuery1.FieldByName('raspred').AsFloat*dm1.Koef_per(s_kei,v_keiN,s_ksm);
//          v_raspred_sum:=v_raspred_sum+dm1.IBQuery1.FieldByName('raspred').AsFloat;
          IBQueryNorm.Active := False;
          IBQueryNorm.SQL.Clear;
          IBQueryNorm.SQL.Add('SELECT OSTATKI.KART_ID,OSTATKI.KSM_ID,OSTATKI.RAZDEL_ID,OSTATKI.OT_S,OSTATKI.OT_NZ ');
          IBQueryNorm.SQL.Add(' FROM OSTATKI ');
          IBQueryNorm.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_KSM)+' and (OSTATKI.KSM_IDPR='+INTTOSTR(S_KODP)+')');
          IBQueryNorm.SQL.Add(' AND (OSTATKI.STRUK_ID='+INTTOSTR(Vstruk_iD)+')');
          IBQueryNorm.SQL.Add(' and (OSTATKI.razdel_id='+INTTOSTR(v_razdel)+')');
          IBQueryNorm.SQL.Add( str_ser);
          IBQueryNorm.Active := True;
          IBQueryNorm.first;
          if not IBQueryNorm.Eof then
          begin
           V_OSTS_PR:=IBQueryNorm.FieldByName('OT_S').AsFloat;
           V_OSTNZ_PR:=IBQueryNorm.FieldByName('OT_NZ').AsFloat;
          end
          else
          begin
           V_OSTS_PR:=0;
           V_OSTNZ_PR:=0;
          end;
//          IF V_RASPRED-V_OSTS_PR-V_OSTNZ_PR<=V_OSTS THEN v_raspred_dob:=v_raspred-V_OSTS_PR-V_OSTNZ_PR
//          else v_raspred_dob:=V_OSTS;
          v_raspred_dob:=v_raspred-V_OSTS_PR-V_OSTNZ_PR;
          if v_raspred_dob<>0 then
          begin
//           v_osts:=v_osts-v_raspred_dob;
           v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
           + ' AND DOCUMENT.TIP_OP_ID=30'
           + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
           + ' AND DOCUMENT.KLIENT_ID='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
           v_raspred_dob:=SimpleRoundTo(v_raspred_dob*dm1.Koef_per(v_keiN,s_kei,s_ksm),tochn);
           If v_dok_Kart<>Null then
           begin
            vDocument_id:=V_DOK_KART;
            dm1.Kart.Insert;
            DM1.Kart.FieldByName('Ksm_Id').AsInteger :=s_ksm;
            dm1.KartKol_rash_ediz.AsFloat:=v_raspred_dob;
            dm1.KartKol_prih_ediz.AsFloat:=0;
            dm1.KartKol_rash.AsFloat:=0;
            dm1.KartKol_prih.AsFloat:=0;
            DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
            DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
            DM1.Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
            DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
            DM1.Kart.FieldByName('TIP_OP_Id').AsInteger :=30;
            DM1.Kart.FieldByName('TIP_DOK_Id').AsInteger :=37;
            DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
            dm1.Kart.Post;
           END
           ELSE
           BEGIN
            vTip_Op_Id:=30;
            vTip_Doc_Id:=37;
            vNDoc:='Рп-'+inttostr(S_Kodp)+'-'+inttostr(mes)+'.'+inttostr(god);
            vKlient_Id:=S_KODP;
            vDate_op:=strtodate(s_dat1);
            vDate_dok:=date;
            vpriz_id:=1;
            dm1.Document.open;
            dm1.Document.Insert;
            dm1.Document.Post;
            dm1.Kart.Insert;
            dm1.KartKsm_id.AsInteger:=S_KSM;
            dm1.KartKol_RASH_ediz.AsFloat:=V_RASPRED_DOb;
            dm1.KartDoc_id.AsInteger:=vDocument_id;
            DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
            DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
            dm1.KartKol_prih_ediz.AsFloat:=0;
            dm1.KartKol_rash.AsFloat:=0;
            dm1.KartKol_prih.AsFloat:=0;
            DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
            DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
            dm1.Kart.Post;
           END;
          end;
         end;
        end;
        DM1.IBQuery1.Next;
       END;
       DM1.ApplyUpdatesDoc;

//      end
//      else if pr_raspred=1 then
//      begin
//       Splash.Free;
//       showMessage('Нет сырья в наличии!');
//      end;
//     end
//     else if pr_raspred=1 then
//     begin
//      Splash.Free;
//      ShowMessage('Нет сырья в наличии!');
     end;
    end;
    FVibPrep.Syrie.Next;
   end;
   FVibPrep.Syrie.EnableControls;
   FVibPrep.DBGridEh3.OnSortMarkingChanged:=FVibPrep.DBGridEh3SortMarkingCHanged;
  end
  else if pr_raspred=1 then showMessage('Не помечены препараты, на которые распределять сырье!');
  Splash.Free;
// end
// else if pr_raspred=1 then showMessage('Нет данных о выпуске продукции! Воспользуйтесь кнопкой Выпуск продукции!!');
 DM1.Kart.BeforePost:=DM1.KartBeforePost;
 DM1.Kart.BeforeClose:=DM1.KartBeforeClose;
 if dm1.Kart.Active then dm1.Kart.Close;
 if dm1.Document.Active then dm1.Document.Close;
 if dm1.Ostatki.Active then dm1.Ostatki.Close;
 dm1.IBT_WRITE.Active:=FALSE;
 dm1.IBT_READ.Active:=FALSE;
 dm1.IBT_Read.StartTransaction;
end;

procedure TDM1.RaspredZagOT;
var
  rrazdel: variant;
begin
 DM1.Kart.BeforePost:=NIL;
 DM1.Kart.BeforeClose:=NIL;
 Splash := ShowSplashWindow(AniBmp1,'Распределение загрузки. Подождите, пожалуйста...', True, nil);
 FStart.Otchet.Filter:='otstrk='+''''+s_STKOD+''''+' and zag<>0';
 FStart.Otchet.Active := True;
 FStart.Otchet.First;
 while not FStart.Otchet.Eof do
 begin
 if FStart.Otchet.FieldByName('zag').AsFloat<>0 then
 begin
  s_ksm:=StrToInt(FStart.Otchet.FieldByName('OTMATR').AsString);
  V_RASPRED_DOB:= FStart.Otchet.FieldByName('zag').AsFloat;
  s_Kodp := StrToInt(FStart.Otchet.FieldByName('OTPROD').AsString);
  V_kein:=FStart.Otchet.FieldByName('kein').asinteger;
  s_kei:=FStart.Otchet.FieldByName('kei').asinteger;
  rrazdel:=SelectToVarIB('select RAZDEL.RAZDEL_id   FROM RAZDEL WHERE RAZDEL.KRAZ='+''''+FStart.OtchetOTRAZ.ASSTRING+
  '''',Dm1.belmed,dm1.ibt_read);
  IF RRAZDEL <> NULL THEN V_RAZDEL:=RRAZDEL ELSE V_RAZDEL:=0;
  if v_kein=0 then v_kein:=s_kei;
  if v_kein=s_kei then v_raspred:=V_RASPRED_DOB else v_raspred:=V_RASPRED_DOB*dm1.Koef_per(s_kei,v_keiN,s_ksm);
  dm1.IBT_WRITE.Active:=FALSE;
  dm1.IBT_READ.Active:=FALSE;
  If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
  IBQueryNorm.Active := False;
  IBQueryNorm.SQL.Clear;
  IBQueryNorm.SQL.Add('SELECT OSTATKI.KART_ID,OSTATKI.KSM_ID,OSTATKI.OSTATOK_END_S,OSTATKI.OSTATOK_END_NZ ');
  IBQueryNorm.SQL.Add(' FROM SELECT_OB_VED ('+''''+s_dat1+''''+','+''''+s_dat2+''''+','+inttostr(s_kodp)+') OSTATKI ');
  IBQueryNorm.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_KSM)+' and OSTATKI.KSM_IDPR='+inttostr(s_kodp)+' and ostatki.razdel_id='+inttostr(v_razdel));
  IBQueryNorm.Active := True;
  if not IBQueryNorm.Eof then
  begin
   V_KART:=IBQueryNorm.FieldByName('KART_ID').ASInteger;
   V_OSTS:=IBQueryNorm.FieldByName('OSTATOK_END_S').AsFloat;
   if v_osts>=V_RASPRED then
   begin
    IF DM1.Kart.Active THEN DM1.Kart.Close;
    DM1.Kart.MacroByName('USL').AsString:=' WHERE DOCUMENT.TIP_OP_ID=33 AND DOCUMENT.TIP_DOK_ID=37 '
    +' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
    +' AND KART.ksm_id='+INTTOSTR(s_ksm)
    +' AND DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID);
    dm1.Kart.Active:=true;
    v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=33'
    + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
    + ' AND DOCUMENT.KLIENT_ID='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
    If v_dok_Kart<>Null then
    begin
     vDocument_id:=V_DOK_KART;
     vKlient_id:=s_kodp;
     dm1.Kart.Insert;
     DM1.Kart.FieldByName('Ksm_Id').AsInteger :=s_ksm;
     dm1.KartKol_rash_ediz.AsFloat:=v_raspred_dob;
     dm1.KartKol_prih_ediz.AsFloat:=0;
     dm1.KartKol_rash.AsFloat:=0;
     dm1.KartKol_prih.AsFloat:=0;
     DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
     DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
     DM1.Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
     DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
     DM1.Kart.FieldByName('TIP_OP_Id').AsInteger :=33;
     DM1.Kart.FieldByName('TIP_DOK_Id').AsInteger :=37;
     DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
     dm1.Kart.Post;
     DM1.ApplyUpdatesDoc;
    END
    ELSE
    BEGIN
     vTip_Op_Id:=33;
     vTip_Doc_Id:=37;
     vNDoc:='Рз-'+inttostr(S_Kodp)+'-'+inttostr(mes)+'.'+inttostr(god);
     vKlient_Id:=S_KODP;
     vDate_op:=strtodate(s_dat1);
     vDate_dok:=strtodate(s_dat1);
     dm1.Document.open;
     dm1.Document.Insert;
     dm1.Document.Post;
     dm1.Kart.Insert;
     dm1.KartKsm_id.AsInteger:=S_KSM;
     dm1.KartKol_RASH_ediz.AsFloat:=V_RASPRED_DOb;
     dm1.KartDoc_id.AsInteger:=vDocument_id;
     DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
     DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
     dm1.KartKol_prih_ediz.AsFloat:=0;
     dm1.KartKol_rash.AsFloat:=0;
     dm1.KartKol_prih.AsFloat:=0;
     DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
     DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
     dm1.Kart.Post;
     DM1.ApplyUpdatesDoc;
    END;
   end;
  end;
 end;
 FStart.Otchet.Next;
 END;

 Splash.Free;
 DM1.Kart.BeforePost:=DM1.KartBeforePost;
 DM1.Kart.BeforeClose:=DM1.KartBeforeClose;
end;


procedure TDM1.RaspredSyrOt;
 var
  rrazdel: variant;
begin
 DM1.Kart.BeforePost:=NIL;
 DM1.Kart.BeforeClose:=NIL;
 Splash := ShowSplashWindow(AniBmp1,'Распределение приходов. Подождите, пожалуйста...', True, nil);
 FStart.Otchet.Filter:='otstrk='+''''+s_STKOD+''''+' and prix<>0';
 FStart.Otchet.Active := True;
 FStart.Otchet.First;
 while not FStart.Otchet.Eof do
 begin
 if FStart.Otchet.FieldByName('PRIX').AsFloat<>0 then
 begin
  s_ksm:=StrToInt(FStart.Otchet.FieldByName('OTMATR').AsString);
  V_RASPRED_DOB:= FStart.Otchet.FieldByName('PRIX').AsFloat;
  s_Kodp := StrToInt(FStart.Otchet.FieldByName('OTPROD').AsString);
  V_kein:=FStart.Otchet.FieldByName('kein').asinteger;
  s_kei:=FStart.Otchet.FieldByName('kei').asinteger;
  rrazdel:=SelectToVarIB('select RAZDEL.RAZDEL_id   FROM RAZDEL WHERE RAZDEL.KRAZ='+''''+FStart.OtchetOTRAZ.ASSTRING+
  '''',Dm1.belmed,dm1.ibt_read);
  IF RRAZDEL <> NULL THEN V_RAZDEL:=RRAZDEL ELSE V_RAZDEL:=0;
  if v_kein=0 then v_kein:=s_kei;
  if v_kein=s_kei then v_raspred:=V_RASPRED_DOB else v_raspred:=V_RASPRED_DOB*dm1.Koef_per(s_kei,v_keiN,s_ksm);
  dm1.IBT_WRITE.Active:=FALSE;
  dm1.IBT_READ.Active:=FALSE;
  If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
  IBQueryNorm.Active := False;
  IBQueryNorm.SQL.Clear;
  IBQueryNorm.SQL.Add('SELECT OSTATKI.KART_ID,OSTATKI.KSM_ID,OSTATKI.OSTATOK_END_S,OSTATKI.OSTATOK_END_NZ ');
  IBQueryNorm.SQL.Add(' FROM SELECT_OB_VED ('+''''+s_dat1+''''+','+''''+s_dat2+''''+',0) OSTATKI ');
  IBQueryNorm.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_KSM)+' and (OSTATKI.KSM_IDPR IS NULL or OSTATKI.KSM_IDPR=0) AND OSTATKI.STRUK_ID='+INTTOSTR(Vstruk_iD));
  IBQueryNorm.Active := True;
  if not IBQueryNorm.Eof then
  begin
   V_KART:=IBQueryNorm.FieldByName('KART_ID').ASInteger;
   V_OSTS:=IBQueryNorm.FieldByName('OSTATOK_END_S').AsFloat;
   if v_osts>=V_RASPRED then
   begin
    IF DM1.Kart.Active THEN DM1.Kart.Close;
    DM1.Kart.MacroByName('USL').AsString:=' WHERE DOCUMENT.TIP_OP_ID=30 AND DOCUMENT.TIP_DOK_ID=37 '
    +' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
    +' AND KART.ksm_id='+INTTOSTR(s_ksm)
    +' AND DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID);
    dm1.Kart.Active:=true;
    v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=30'
    + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
    + ' AND DOCUMENT.KLIENT_ID='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
    If v_dok_Kart<>Null then
    begin
     vDocument_id:=V_DOK_KART;
     vKlient_id:=s_kodp;
     st_kart:=v_kart;
     dm1.Kart.Insert;
     DM1.Kart.FieldByName('Ksm_Id').AsInteger :=s_ksm;
     dm1.KartKol_rash_ediz.AsFloat:=v_raspred_dob;
     dm1.KartKol_prih_ediz.AsFloat:=0;
     dm1.KartKol_rash.AsFloat:=0;
     dm1.KartKol_prih.AsFloat:=0;
     DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
     DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
     DM1.Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
     DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
     DM1.Kart.FieldByName('TIP_OP_Id').AsInteger :=30;
     DM1.Kart.FieldByName('TIP_DOK_Id').AsInteger :=37;
     DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
     dm1.Kart.Post;
     DM1.ApplyUpdatesDoc;
    END
    ELSE
    BEGIN
     vTip_Op_Id:=30;
     vTip_Doc_Id:=37;
     vNDoc:='Рп-'+inttostr(S_Kodp)+'-'+inttostr(mes)+'.'+inttostr(god);
     vKlient_Id:=S_KODP;
     vDate_op:=strtodate(s_dat1);
     vDate_dok:=strtodate(s_dat1);
     dm1.Document.open;
     dm1.Document.Insert;
     dm1.Document.Post;
     st_kart:=v_kart;
     dm1.Kart.Insert;
     dm1.KartKsm_id.AsInteger:=S_KSM;
     dm1.KartKol_RASH_ediz.AsFloat:=V_RASPRED_DOb;
     dm1.KartDoc_id.AsInteger:=vDocument_id;
     DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
     DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
     dm1.KartKol_prih_ediz.AsFloat:=0;
     dm1.KartKol_rash.AsFloat:=0;
     dm1.KartKol_prih.AsFloat:=0;
     DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
     DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
     dm1.Kart.Post;
     DM1.ApplyUpdatesDoc;
    END;
   end;
  end;
 end;
 FStart.Otchet.Next;
 END;

 Splash.Free;
 DM1.Kart.BeforePost:=DM1.KartBeforePost;
 DM1.Kart.BeforeClose:=DM1.KartBeforeClose;
end;

procedure TDM1.RaspredZag;
var
V_RAS2: DOUBLE;

begin
 DM1.Kart.BeforePost:=NIL;
 DM1.Kart.BeforeClose:=NIL;
  if FSprFormul=nil then FSprFormul:=TfSprFormul.Create(Application);
  if FvibPrep=nil then FVibPrep:=tFVibPrep.Create(Application);
  FVibPrep.RadioGroup4.Visible:=false;
  FVibPrep.ShowModal;
  FVibPrep.RadioGroup4.Visible:=true;
  if FVibPrep.ModalResult=mrOk then
  begin
   Splash := ShowSplashWindow(AniBmp1,
   'Распределение загрузки. Подождите, пожалуйста...', True, nil);
   FVibPrep.Syrie.First;
   while not FVibPrep.Syrie.Eof do
   begin
    if FVibPrep.SyrieVib.AsInteger=1 then
    begin
     s_ksm:=FVibPrep.SyrieKsm_id.AsInteger;
     s_kei:=FVibPrep.SyrieKei_id.AsInteger;
     str_ser:=' and ostatki.seria_id is null';
//     if FVibPrep.SyrieSeria_id.AsInteger=0 then str_ser:=' and ostatki.seria_id is null'
//     else str_ser:=' and ostatki.seria_id='+INTTOSTR(FVibPrep.SyrieSeria_id.AsInteger);
     IF DM1.Kart.Active THEN DM1.Kart.Close;
     DM1.Kart.MacroByName('USL').AsString:=' WHERE DOCUMENT.TIP_OP_ID=33 AND DOCUMENT.TIP_DOK_ID=37 '
     +' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
     +' AND KART.ksm_id='+INTTOSTR(s_ksm)+'and kart.parent is null'
     +' AND DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID);
     dm1.Kart.Active:=true;
     IBQuery2.Active := False;
     IBQuery2.SQL.Clear;
     DM1.IBQuery2.SQL.Add('SELECT distinct kartv.kol_prih,KARTv.KSM_ID,norm.razdel_id,NORM.PLNORM,norm.kei_id ,kartv.doc_id,cast(norm.plnorm*kartv.kol_prih as numeric(16,7))  as raspred ');
     DM1.IBQuery2.SQL.Add(' FROM norm_view'+'('+'119,'+inttostr(god)+','+inttostr(mes)+','+'0,0,'+inttostr(s_ksm)+')'+' NORM ');
     DM1.IBQuery2.SQL.Add(' INNER JOIN KARTv ON (NORM.KODP = KARTv.KSM_ID) ');
     DM1.IBQuery2.SQL.Add(' INNER JOIN document ON (kartv.doc_id = document.doc_id)');
     DM1.IBQuery2.SQL.Add(' WHERE KARTv.DOC_ID='+INTTOSTR(V_DOk));
     DM1.IBQuery2.Active := True;
     DM1.IBQuery2.First;
     while not DM1.IBQuery2.Eof do
     begin
      v_razdel:=dm1.IBQuery2.FieldByName('razdel_ID').AsiNTEGER;
      S_KODP:=dm1.IBQuery2.FieldByName('KSM_ID').AsiNTEGER;
      v_KeiN:=dm1.IBQuery2.FieldByName('Kei_ID').AsiNTEGER;
      FVibPrep.FactVipusk.First;
      if FVibPrep.FactVipusk.Locate('KSM_ID;VIB',VarArrayOf([S_KODP,true]),[]) THEN
      BEGIN
       FVibPrep.RAZDEL1.First;
       if FVibPrep.RAZDEL1.Locate('RAZDEL_ID;VIB',VarArrayOf([dm1.IBQuery2.FieldByName('RAZDEL_ID').AsInteger,true]),[]) THEN
       BEGIN
        v_raspred:=dm1.IBQuery2.FieldByName('raspred').AsFloat*dm1.Koef_per(s_kei,v_keiN,s_ksm);
        IBQueryNorm.Active := False;
        IBQueryNorm.SQL.Clear;
        IBQueryNorm.SQL.Add('SELECT OSTATKI.KART_ID,OSTATKI.OSTATOK_END_S ot_s,OSTATKI.OSTATOK_END_NZ ot_nz ');
        IBQueryNorm.SQL.Add(' FROM SELECT_OST_KSM ('+''''+s_dat1+''''+','+''''+s_dat2+''''+','+INTTOSTR(S_KODP)+','+inttostr(VSTRUK_ID)+','+inttostr(S_KSM)+') OSTATKI ');
        IBQueryNorm.SQL.Add(' where (OSTATKI.razdel_id='+INTTOSTR(v_razdel)+')');
        IBQueryNorm.Active := True;
        IBQueryNorm.first;
        if not IBQueryNorm.Eof then
        begin
         V_OSTS_PR:=IBQueryNorm.FieldByName('OT_S').AsFloat;
         V_OSTNZ_PR:=IBQueryNorm.FieldByName('OT_NZ').AsFloat;
         V_KART:=IBQueryNorm.FieldByName('KART_ID').ASInteger;
         V_RAS2:=V_RASPRED-V_OSTNZ_PR
        end
        else
        begin
         V_OSTS_PR:=0;
         V_OSTNZ_PR:=0;
         V_RAS2:=V_RASPRED;
         if DM1.Ostatki.Active=false then DM1.Ostatki.Active:=TRUE;
         DM1.Ostatki.Insert;
         DM1.Ostatki.Post;
         dm1.Ostatki.ApplyUpdates;
         v_kart:=vKart_id;
        end;
        v_raspred_dob:=v_ras2;
//        IF (V_OSTS_PR>=V_RAS2) AND (V_RAS2=0) THEN v_raspred_dob:=0;
//        IF (V_OSTS_PR>=V_RAS2) AND (V_RAS2>=0) THEN v_raspred_dob:=V_RAS2;
//        IF (V_OSTS_PR<V_RAS2) THEN v_raspred_dob:=V_OSTS_PR;
        if v_raspred_dob<>0 then
        begin
         if FSprFormul.CEH_NormZ.Active=true then  FSprFormul.CEH_NormZ.Close;
         FSprFormul.CEH_NormZ.MacroByName('SORT').AsString:='';
         FSprFormul.CEH_NormZ.MacroByName('USL').AsString:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP)+' and CEH_NORMZ.KSM_ID_MAt='+INTTOSTR(S_Ksm);
         FSprFormul.CEH_NormZ.Open;
         if not FSprFormul.CEH_NORMZ.eof then
           if (FSprFormul.CEH_NORMZDecznak.AsVariant<>null)  then
            tochn:=0-FSprFormul.CEH_NORMZDecznak.asinteger
           else tochn:=-3
         else tochn:=-3;
         v_raspred_dob:=SimpleRoundTo(v_raspred_dob*dm1.Koef_per(v_keiN,s_kei,s_ksm),tochn);
         v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
         + ' AND DOCUMENT.TIP_OP_ID=33'
         + ' AND DOCUMENT.TIP_DOK_ID=37'
         + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
         + ' AND DOCUMENT.KLIENT_ID='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
         dm1.Kart.BeforePost:=nil;
         If v_dok_Kart<>Null then
         begin
           vDocument_id:=V_DOK_KART;
           vKlient_id:=s_kodp;
           dm1.Kart.Insert;
           DM1.Kart.FieldByName('Ksm_Id').AsInteger :=s_ksm;
           dm1.KartKol_rash_ediz.AsFloat:=v_raspred_dob;
           dm1.KartKol_prih_ediz.AsFloat:=0;
           dm1.KartKol_rash.AsFloat:=0;
           dm1.KartKol_prih.AsFloat:=0;
           DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
           DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
           DM1.Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
           DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
           DM1.Kart.FieldByName('TIP_OP_Id').AsInteger :=33;
           DM1.Kart.FieldByName('TIP_DOK_Id').AsInteger :=37;
           DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
           dm1.Kart.Post;
         END
         ELSE
         BEGIN
           vTip_Op_Id:=33;
           vTip_Doc_Id:=37;
           vNDoc:='Рз-'+inttostr(S_Kodp)+'-'+inttostr(mes)+'.'+inttostr(god);
           vKlient_Id:=S_KODP;
           vDate_op:=strtodate(s_dat1);
           vDate_dok:=date;
           vpriz_id:=1;
           dm1.Document.open;
           dm1.Document.Insert;
           dm1.Document.Post;
           dm1.Kart.Insert;
           dm1.KartKsm_id.AsInteger:=S_KSM;
           dm1.KartKol_RASH_ediz.AsFloat:=V_RASPRED_DOb;
           dm1.KartDoc_id.AsInteger:=vDocument_id;
           DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
           DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
           dm1.KartKol_prih_ediz.AsFloat:=0;
           dm1.KartKol_rash.AsFloat:=0;
           dm1.KartKol_prih.AsFloat:=0;
           DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
           DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
           dm1.Kart.Post;
         end;
         dm1.Kart.BeforePost:=KartBeforePost;
         pr_kor:=0;
         DM1.ApplyUpdatesDoc;
         DM1.DobPrixPrep;
        end;
       end;
      end;
      DM1.IBQuery2.Next;
     END;
     DM1.ApplyUpdatesDoc;
// дозапись прихода
 //    pr_kor:=0;
 //    DM1.DobPrixPrep;
    end;
    FVibPrep.Syrie.Next;
   end;
   Splash.Free;
  end
  else if pr_raspred=1 then showMessage('Не помечены препараты, на которые распределять сырье!');

 DM1.Kart.BeforePost:=DM1.KartBeforePost;
 DM1.Kart.BeforeClose:=DM1.KartBeforeClose;
 if dm1.Kart.Active then dm1.Kart.Close;
 if dm1.Document.Active then dm1.Document.Close;
 if dm1.Ostatki.Active then dm1.Ostatki.Close;
 dm1.IBT_WRITE.Active:=FALSE;
 dm1.IBT_READ.Active:=FALSE;
 dm1.IBT_Read.StartTransaction;
end;

 procedure TDM1.RaspredRasOT;
var
  rrazdel: variant;
begin
 DM1.Kart.BeforePost:=NIL;
 DM1.Kart.BeforeClose:=NIL;
 Splash := ShowSplashWindow(AniBmp1,'Распределение расхода. Подождите, пожалуйста...', True, nil);
 FStart.Otchet.Filter:='otstrk='+''''+s_STKOD+''''+' and rasm<>0';
 FStart.Otchet.Active := True;
 FStart.Otchet.First;
 while not FStart.Otchet.Eof do
 begin
 if FStart.Otchet.FieldByName('rasm').AsFloat<>0 then
 begin
  s_ksm:=StrToInt(FStart.Otchet.FieldByName('OTMATR').AsString);
  V_RASPRED_DOB:= FStart.Otchet.FieldByName('rasm').AsFloat;
  s_Kodp := StrToInt(FStart.Otchet.FieldByName('OTPROD').AsString);
  V_kein:=FStart.Otchet.FieldByName('kein').asinteger;
  s_kei:=FStart.Otchet.FieldByName('kei').asinteger;
  rrazdel:=SelectToVarIB('select RAZDEL.RAZDEL_id   FROM RAZDEL WHERE RAZDEL.KRAZ='+''''+FStart.OtchetOTRAZ.ASSTRING+
  '''',Dm1.belmed,dm1.ibt_read);
  IF RRAZDEL <> NULL THEN V_RAZDEL:=RRAZDEL ELSE V_RAZDEL:=0;
  if v_kein=0 then v_kein:=s_kei;
  if v_kein=s_kei then v_raspred:=V_RASPRED_DOB else v_raspred:=V_RASPRED_DOB*dm1.Koef_per(s_kei,v_keiN,s_ksm);
  dm1.IBT_WRITE.Active:=FALSE;
  dm1.IBT_READ.Active:=FALSE;
  If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
  IBQueryNorm.Active := False;
  IBQueryNorm.SQL.Clear;
  IBQueryNorm.SQL.Add('SELECT OSTATKI.KART_ID,OSTATKI.KSM_ID,OSTATKI.OSTATOK_END_S,OSTATKI.OSTATOK_END_NZ,OSTATKI.ZAG_PERIOD ');
  IBQueryNorm.SQL.Add(' FROM SELECT_OB_VED ('+''''+s_dat1+''''+','+''''+s_dat2+''''+','+inttostr(s_kodp)+') OSTATKI ');
  IBQueryNorm.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_KSM)+' and OSTATKI.KSM_IDPR='+inttostr(s_kodp)+' and ostatki.razdel_id='+inttostr(v_razdel));
  IBQueryNorm.Active := True;
  if not IBQueryNorm.Eof then
  begin
   V_KART:=IBQueryNorm.FieldByName('KART_ID').ASInteger;
   V_OSTS:=IBQueryNorm.FieldByName('OSTATOK_END_NZ').AsFloat+IBQueryNorm.FieldByName('ZAG_PERIOD').AsFloat;
   if v_osts>=V_RASPRED then
   begin
    IF DM1.Kart.Active THEN DM1.Kart.Close;
    DM1.Kart.MacroByName('USL').AsString:=' WHERE DOCUMENT.TIP_OP_ID=35 AND DOCUMENT.TIP_DOK_ID=37 '
    +' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
    +' AND KART.ksm_id='+INTTOSTR(s_ksm)
    +' AND DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID);
    dm1.Kart.Active:=true;
    v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=35'
    + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
    + ' AND DOCUMENT.KLIENT_ID='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
    If v_dok_Kart<>Null then
    begin
     vDocument_id:=V_DOK_KART;
     vKlient_id:=s_kodp;
     dm1.Kart.Insert;
     DM1.Kart.FieldByName('Ksm_Id').AsInteger :=s_ksm;
     dm1.KartKol_rash_ediz.AsFloat:=v_raspred_dob;
     dm1.KartKol_prih_ediz.AsFloat:=0;
     dm1.KartKol_rash.AsFloat:=0;
     dm1.KartKol_prih.AsFloat:=0;
     DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
     DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
     DM1.Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
     DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
     DM1.Kart.FieldByName('TIP_OP_Id').AsInteger :=35;
     DM1.Kart.FieldByName('TIP_DOK_Id').AsInteger :=37;
     DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
     dm1.Kart.Post;
     DM1.ApplyUpdatesDoc;
    END
    ELSE
    BEGIN
     vTip_Op_Id:=35;
     vTip_Doc_Id:=37;
     vNDoc:='Рв-'+inttostr(S_Kodp)+'-'+inttostr(mes)+'.'+inttostr(god);
     vKlient_Id:=S_KODP;
     vDate_op:=strtodate(s_dat1);
     vDate_dok:=strtodate(s_dat1);
     dm1.Document.open;
     dm1.Document.Insert;
     dm1.Document.Post;
     dm1.Kart.Insert;
     dm1.KartKsm_id.AsInteger:=S_KSM;
     dm1.KartKol_RASH_ediz.AsFloat:=V_RASPRED_DOb;
     dm1.KartDoc_id.AsInteger:=vDocument_id;
     DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
     DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
     dm1.KartKol_prih_ediz.AsFloat:=0;
     dm1.KartKol_rash.AsFloat:=0;
     dm1.KartKol_prih.AsFloat:=0;
     DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
     DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
     dm1.Kart.Post;
     DM1.ApplyUpdatesDoc;
    END;
   end;
  end;
 end;
 FStart.Otchet.Next;
 END;

 Splash.Free;
 DM1.Kart.BeforePost:=DM1.KartBeforePost;
 DM1.Kart.BeforeClose:=DM1.KartBeforeClose;
end;

 procedure TDM1.RaspredRas;

begin
 DM1.Kart.BeforePost:=NIL;
 DM1.Kart.BeforeClose:=NIL;
 if FSprFormul=nil then FSprFormul:=TfSprFormul.Create(Application);
  if FvibPrep=nil then FVibPrep:=tFVibPrep.Create(Application);
  FVibPrep.ShowModal;
  if FVibPrep.ModalResult=mrOk then
  begin
   Splash := ShowSplashWindow(AniBmp1,
   'Распределение расхода на выработку. Подождите, пожалуйста...', True, nil);
   FVibPrep.Syrie.First;
   while not FVibPrep.Syrie.Eof do
   begin
    if FVibPrep.SyrieVib.AsInteger=1 then
    begin
     s_ksm:=FVibPrep.SyrieKsm_id.AsInteger;

     DM1.DOCUMENT.Close;
     DM1.DOcUMENT.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
     + ' AND DOCUMENT.TIP_OP_ID=35'
     + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
     DM1.DOCUMENT.OPEN;
     str_ser:=' and ostatki.seria_id is null';
//     if FVibPrep.SyrieSeria_id.AsInteger=0 then str_ser:=' and ostatki.seria_id is null'
//     else str_ser:=' and ostatki.seria_id='+INTTOSTR(FVibPrep.SyrieSeria_id.AsInteger);
     IF DM1.Kart.Active THEN DM1.Kart.Close;
     DM1.Kart.MacroByName('USL').AsString:=' WHERE DOCUMENT.TIP_OP_ID=35 AND DOCUMENT.TIP_DOK_ID=37 '
     +' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
     +' AND DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
     +' AND KART.ksm_id='+INTTOSTR(s_ksm)+'and kart.parent is null';
     DM1.Kart.Open;
     IBQuery1.Active := False;
     IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('SELECT distinct kartv.kol_prih,KARTv.KSM_ID,norm.razdel_id,NORM.PLNORM,norm.kei_id ,kartv.doc_id,cast(norm.plnorm*kartv.kol_prih as numeric(16,7))  as raspred ');
     DM1.IBQuery1.SQL.Add(' FROM norm_view'+'('+'119,'+inttostr(god)+','+inttostr(mes)+','+'0,0,'+inttostr(s_ksm)+')'+' NORM ');
     DM1.IBQuery1.SQL.Add(' INNER JOIN KARTv ON (NORM.KODP = KARTv.KSM_ID) ');
     DM1.IBQuery1.SQL.Add(' INNER JOIN document ON (kartv.doc_id = document.doc_id)');
     DM1.IBQuery1.SQL.Add(' WHERE KARTv.DOC_ID='+INTTOSTR(V_DOk));
     DM1.IBQuery1.Active := True;
     DM1.IBQuery1.First;
     while not DM1.IBQuery1.Eof do
     begin
      v_razdel:=dm1.IBQuery1.FieldByName('razdel_ID').AsiNTEGER;
      S_KODP:=dm1.IBQuery1.FieldByName('KSM_ID').AsiNTEGER;
      v_KeiN:=dm1.IBQuery1.FieldByName('Kei_ID').AsiNTEGER;
      FVibPrep.FactVipusk.First;
      if FVibPrep.FactVipusk.Locate('KSM_ID;VIB',VarArrayOf([S_KODP,TRUE]),[]) THEN
      BEGIN
       FVibPrep.RAZDEL1.First;
       if FVibPrep.RAZDEL1.Locate('RAZDEL_ID;VIB',VarArrayOf([dm1.IBQuery1.FieldByName('RAZDEL_ID').AsInteger,TRUE]),[]) THEN
       BEGIN
        IBQueryNorm.Active := False;
        IBQueryNorm.SQL.Clear;
        IBQueryNorm.SQL.Add('SELECT OSTATKI.KART_ID,OSTATKI.KSM_ID,OSTATKI.RAZDEL_ID,OSTATKI.OT_S,OSTATKI.OT_NZ,OSTATKI.KEI_ID ');
        IBQueryNorm.SQL.Add(' FROM OSTATKI ');
        IBQueryNorm.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_KSM)+' and (OSTATKI.KSM_IDPR='+INTTOSTR(S_KODP)+')');
        IBQueryNorm.SQL.Add(' AND (OSTATKI.STRUK_ID='+INTTOSTR(Vstruk_iD)+')');
        IBQueryNorm.SQL.Add(' and (OSTATKI.razdel_id='+INTTOSTR(v_razdel)+')');
        IBQueryNorm.SQL.Add(str_ser);
        IBQueryNorm.Active := True;
        IBQueryNorm.first;
        if not IBQueryNorm.Eof then
        begin
         s_KEI:=IBQueryNorm.FieldByName('KEI_ID').ASInteger;
         V_OSTS_PR:=IBQueryNorm.FieldByName('OT_S').AsFloat;
         V_OSTNZ_PR:=IBQueryNorm.FieldByName('OT_NZ').AsFloat;
         V_KART:=IBQueryNorm.FieldByName('KART_ID').ASInteger;
// Всю незавершенку в расход?
         if FVibPrep.RadioGroup4.ItemIndex=0 then v_raspred:=V_OSTNZ_PR
         else v_raspred:=dm1.IBQuery1.FieldByName('raspred').AsFloat*dm1.Koef_per(s_kei,v_keiN,s_ksm);
         IF V_RASPRED<=V_OSTNZ_PR THEN v_raspred_dob:=v_raspred
         else v_raspred_dob:=V_OSTNZ_PR;
         if v_raspred_dob>0 then
         begin
          if FSprFormul.CEH_NormZ.Active=true then  FSprFormul.CEH_NormZ.Close;
          FSprFormul.CEH_NormZ.MacroByName('SORT').AsString:='';
          FSprFormul.CEH_NormZ.MacroByName('USL').AsString:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP)+' and CEH_NORMZ.KSM_ID_MAt='+INTTOSTR(S_Ksm);
          FSprFormul.CEH_NormZ.Open;
          if not FSprFormul.CEH_NORMZ.eof then
           if (FSprFormul.CEH_NORMZDecznak.AsVariant<>null)  then
            tochn:=0-FSprFormul.CEH_NORMZDecznak.asinteger
           else tochn:=-3
          else tochn:=-3;
          v_raspred_dob:=SimpleRoundTo(v_raspred_dob*dm1.Koef_per(v_keiN,s_kei,s_ksm),tochn);
          if dm1.document.Locate('klient_id',s_kodp,[]) then
          begin
           vDocument_id:=dm1.DOcUMENTdoc_id.AsInteger ;
           vKlient_id:=s_kodp;
           dm1.Kart.Insert;
           DM1.Kart.FieldByName('Ksm_Id').AsInteger :=s_ksm;
           dm1.KartKol_rash_ediz.AsFloat:=v_raspred_dob;
           dm1.KartKol_prih_ediz.AsFloat:=0;
           dm1.KartKol_rash.AsFloat:=0;
           dm1.KartKol_prih.AsFloat:=0;
           DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
           DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
           DM1.Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
           DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
           DM1.Kart.FieldByName('TIP_OP_Id').AsInteger :=35;
           DM1.Kart.FieldByName('TIP_DOK_Id').AsInteger :=37;
           DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
           dm1.Kart.Post;
          END
          ELSE
          BEGIN
           vTip_Op_Id:=35;
           vTip_Doc_Id:=37;
           vNDoc:='Рв-'+inttostr(S_Kodp)+'-'+inttostr(mes)+'.'+inttostr(god);
           vKlient_Id:=S_KODP;
           vDate_op:=strtodate(s_dat1);
           vDate_dok:=strtodate(s_dat1);
           vpriz_id:=1;
           dm1.Document.open;
           dm1.Document.Insert;
           dm1.Document.Post;
           dm1.Document.ApplyUpdates;
           dm1.Kart.Insert;
           dm1.KartKsm_id.AsInteger:=S_KSM;
           dm1.KartKol_RASH_ediz.AsFloat:=V_RASPRED_DOb;
           dm1.KartDoc_id.AsInteger:=vDocument_id;
           DM1.Kart.FieldByName('razdel_Id').AsInteger :=v_razdel;
           DM1.Kart.FieldByName('kei_Id').AsInteger :=v_kein;
           dm1.KartKol_prih_ediz.AsFloat:=0;
           dm1.KartKol_rash.AsFloat:=0;
           dm1.KartKol_prih.AsFloat:=0;
           DM1.Kart.FieldByName('KART_Id').AsInteger := V_KART;
           DM1.Kart.FieldByName('klient_Id').AsInteger :=vklient_id;
           dm1.Kart.Post;
          end;
         end;
//         else if pr_raspred=1 then showMessage('Нет сырья в наличии!');;
        END;
//        else if pr_raspred=1 then showMessage('Нет сырья на препарате для распределения!');;
       end;
      end;
      DM1.IBQuery1.Next;
     END;
     DM1.ApplyUpdatesDoc;
    end;
    FVibPrep.Syrie.Next;
   end;
  end
  else if pr_raspred=1 then showMessage('Не помечены препараты, на которые распределять сырье!');
  Splash.Free;
// end;
// else if pr_raspred=1 then showMessage('Нет данных о выпуске продукции! Воспользуйтесь кнопкой Выпуск продукции!!');
 DM1.Kart.BeforePost:=DM1.KartBeforePost;
 DM1.Kart.BeforeClose:=DM1.KartBeforeClose;
 if dm1.Kart.Active then dm1.Kart.Close;
 if dm1.Document.Active then dm1.Document.Close;
 if dm1.Ostatki.Active then dm1.Ostatki.Close;
 dm1.IBT_WRITE.Active:=FALSE;
 dm1.IBT_READ.Active:=FALSE;
 dm1.IBT_Read.StartTransaction;
end;


procedure TDM1.VoprosWriteDoc;
begin
  if DM1.Document.Modified then
     DM1.Document.Post;
  if DM1.Kart.Modified then
     DM1.Kart.Post;
  if (DM1.Document.UpdatesPending) or (DM1.Kart.UpdatesPending) then
  begin
   if MessageDlg('Записать изменения?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
      ApplyUpdatesDoc
    else
      CancelUpdatesDoc;
  end;
end;

procedure TDM1.CancelUpdatesDoc;
begin
  DM1.Document.CancelUpdates;
  DM1.Kart.CancelUpdates;
  DM1.IBT_Read.RollbackRetaining;
end;

procedure TDM1.ApplyUpdatesDoc;
begin
  if not dm1.IBT_Read.Active then
    dm1.IBT_Read.StartTransaction;
  if not dm1.IBT_WRITE.Active then
    dm1.IBT_WRITE.StartTransaction;
  try
    if DM1.Seria.UpdatesPending then
       DM1.Seria.ApplyUpdates;
    if DM1.Document.UpdatesPending then
       DM1.Document.ApplyUpdates;
    if DM1.Kart.UpdatesPending then
       DM1.Kart.ApplyUpdates;
    if DM1.KartV.UpdatesPending then
       DM1.KartV.ApplyUpdates;
    if DM1.Ostatki.UpdatesPending then
       DM1.Ostatki.ApplyUpdates;
    DM1.IBT_WRITE.Commit;
    DM1.IBT_READ.CommitRetaining;
  except
    On E: Exception do
    begin
      MessageDlg('Произошла ошибка при записи данных!' + E.Message, mtWarning, [mbOK], 0);
      DM1.IBT_WRITE.RollbackRetaining;
    end;
  end;
end;



procedure TDM1.KartBeforeInsert(DataSet: TDataSet);
begin
  if st_kart = 0 then
    vKart_Id := 0
  else
    vkart_id := st_kart;
  s_seria := '';
  DM1.Add_KartDok.StoredProcName := 'ADD_KART';
  DM1.Add_KartDok.ExecProc;
  vStroka_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TDM1.KartNewRecord(DataSet: TDataSet);
begin
  DM1.Kart.FieldByName('Stroka_Id').AsInteger := vStroka_Id;
  DM1.Kart.FieldByName('Struk_Id').AsInteger := vStruk_Id;
  DM1.Kart.FieldByName('Kart_Id').AsInteger := vKart_Id;
  DM1.Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
  DM1.Kart.FieldByName('tip_op_id').AsInteger := vTip_op_id;
  DM1.Kart.FieldByName('tip_dok_id').AsInteger := vTip_doc_id;
  DM1.Kart.FieldByName('Klient_Id').AsInteger := vKlient_Id;
  if (DM1.Kart.FieldByName('kol_prih').AsVariant = null) then
    DM1.Kart.FieldByName('kol_prih').AsVariant := 0;
  if (DM1.Kart.FieldByName('kol_rash').AsVariant = null) then
    DM1.Kart.FieldByName('kol_rash').AsVariant := 0;
  if (DM1.Kart.FieldByName('kol_prih_ediz').AsVariant = null) then
    DM1.Kart.FieldByName('kol_prih_ediz').AsFloat := 0;
  if (DM1.Kart.FieldByName('kol_rash_ediz').AsVariant = null) then
    DM1.Kart.FieldByName('kol_rash_ediz').AsFloat := 0;
end;


procedure TDM1.DocumentBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_DOCUMENT';
  DM1.Add_KartDok.ExecProc;
  vDocument_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TDM1.DocumentBeforeClose(DataSet: TDataSet);
begin
//VoprosWriteDoc;
end;

procedure TDM1.KartBeforeClose(DataSet: TDataSet);
begin
//VoprosWriteDoc;
end;

procedure TDM1.DocumentBeforeDelete(DataSet: TDataSet);
begin
  DM1.Kart.First;
  If (not DM1.Kart.Eof) then
  begin
    MessageDlg('Перед удалением документа необходимо удалить препараты.', mtWarning, [mbOK], 0);
    Abort;
  end;
end;

procedure TDM1.DocumentNewRecord(DataSet: TDataSet);
begin
  DM1.Document.FieldByName('Doc_Id').AsInteger := vDocument_Id;
  DM1.Document.FieldByName('Tip_Op_Id').AsInteger := vTip_Op_Id;
  DM1.Document.FieldByName('Struk_Id').AsInteger := vStruk_Id;
//  DM1.Document.FieldByName('Zadacha_Id').AsString := vZadacha_Id;
  DM1.Document.FieldByName('Tip_Dok_Id').AsInteger := vTip_Doc_Id;
  if copy(vNdoc, 1, 5) = 'Старт' then
    vNdoc := vndoc + inttostr(vDocument_id);
  DM1.Document.FieldByName('NDok').AsString := vNDoc;
  DM1.Document.FieldByName('Klient_Id').AsInteger := vKlient_Id;
  DM1.Document.FieldByName('Date_Dok').AsDateTime := vDate_dok;
  DM1.Document.FieldByName('Date_Op').AsDateTime := vDate_op;
end;


procedure TDM1.SeriaBeforeInsert(DataSet: TDataSet);
begin
  DM1.AddSeria.ExecProc;
  vSERIA_ID := DM1.AddSeria.Params.Items[0].AsInteger;
end;

procedure TDM1.SeriaNewRecord(DataSet: TDataSet);
begin
  DM1.SeriaSERIA_ID.AsInteger := vSeria_Id;
  DM1.SeriaKSM_ID.AsInteger := S_KSM;
//  DM1.SeriaSrok_Godn.AsDateTime:=S_Srok_Godn;
  DM1.SeriaSERIA.AsString := s_SERIA;
  if DM1.SeriaKol_Seria.AsVariant = '' then
    DM1.SeriaKol_Seria.AsFloat := 0;
end;

procedure TDM1.OstatkiNewRecord(DataSet: TDataSet);
begin
  DM1.Ostatki.FieldByName('Kart_Id').AsInteger := vKart_Id;
  DM1.Ostatki.FieldByName('Ksm_Id').AsInteger := s_KSM;
  IF v_razdel <> 0 then
    DM1.Ostatki.FieldByName('razdel_id').AsInteger := v_razdel;
  IF (s_kodp <> 0) and (s_kodp <> s_ksm) then
    DM1.Ostatki.FieldByName('ksm_idpr').AsInteger := s_kodp;
  IF vSeria_id <> 0 then
    DM1.Ostatki.FieldByName('Seria_id').AsInteger := vseria_id;
  DM1.Ostatki.FieldByName('Kei_Id').AsInteger := s_KEI;
  DM1.Ostatki.FieldByName('Struk_Id').AsInteger := vstruk_id;
  DM1.Ostatki.FieldByName('Mes').AsInteger := Mes_conf;
  DM1.Ostatki.FieldByName('God').AsInteger := God_conf;
end;

function TDM1.MesNameInRodPodezhBig(Mes: integer): string;
begin
  case Mes of
    1: Result := 'Января';
    2: Result := 'Февраля';
    3: Result := 'Марта';
    4: Result := 'Апреля';
    5: Result := 'Мая';
    6: Result := 'Июня';
    7: Result := 'Июля';
    8: Result := 'Августа';
    9: Result := 'Сентября';
    10: Result := 'Октября';
    11: Result := 'Ноября';
    12: Result := 'Декабря';
  end;
end;

function TDM1.MesNameInRodPodezhSmall(Mes: integer): string;
begin
  case Mes of
    1: Result := 'января';
    2: Result := 'февраля';
    3: Result := 'марта';
    4: Result := 'апреля';
    5: Result := 'мая';
    6: Result := 'июня';
    7: Result := 'июля';
    8: Result := 'августа';
    9: Result := 'сентября';
    10: Result := 'октября';
    11: Result := 'ноября';
    12: Result := 'декабря';
  end;
end;

function TDM1.Koef_per(kei_in : integer; kei_from : integer; ksm : integer) : double;
var
  vKoef : variant;
begin
  if (kei_in <> kei_from) and (kei_in <> 0) and (kei_from <> 0) then
  begin
// Коэффициент перевода  из одной единицы измерения в другую
    vKoef := SelectToVarIB('SELECT KOEFPR.KOEF FROM KOEFPR WHERE KOEFPR.KEIR = '
                           + IntToStr(kei_in) + ' AND KOEFPR.KEI_ID = '
                           + IntToStr(kei_from) + ' AND KOEFPR.KSM_ID = 0 AND KOEFPR.KOEF <> 0 ',
                           BELMED, IBT_Read);
    if (vKoef = NULL) then
    begin
      vKoef := SelectToVarIB('SELECT KOEFPR.KOEF FROM KOEFPR WHERE KOEFPR.KEIR = '
                             + IntToStr(kei_in) + ' AND KOEFPR.KEI_ID = '
                             + IntToStr(kei_from) + ' AND KOEFPR.KSM_ID =' + IntToStr(Ksm)
                             + ' AND KOEFPR.KOEF <> 0 ',
                             BELMED, IBT_Read);
      if (vKoef = NULL) then
        vKoef := 1;
    end;
    result := vKoef;
  end
  else
    result := 1;
end;

procedure TDM1.frReport2GetValue(const ParName: String; var ParValue: Variant);
begin
  nammes := getStrMes(mes);
  if (ParName = 'sum_vip') then
    ParValue := Naz_sum;
  if (ParName = 'neis_vip') then
    ParValue := vNeis_vip;
  if (ParName = 'nammes') then
    ParValue := nammes;
  if (ParName = 'lekkod') then
    ParValue := FNormCex.Edit1.Text;
  if (ParName = 'gostp') then
    ParValue := FNormCex.Label22.Caption;
  if (ParName = 'neisp') then
    ParValue := FNormCex.Label21.Caption;
  if (ParName = 'nams') then
    ParValue := FNormCex.DBText1.Caption;
  if (ParName = 'ksm_id') then
    ParValue := FNormCex.DBText6.Caption;
  if (ParName = 'gosts') then
    ParValue := FNormCex.DBText8.Caption;
  if (ParName = 'xarkts') then
    ParValue := FNormCex.DBText7.Caption;
  if (ParName = 'neiss') then
    ParValue := FNormCex.DBText2.Caption;
  if (FGlMenu.Active = true) then
//if Screen.ActiveForm=FGlMenu then
  begin
    if (FPech_Vibor.PechVipusk.Locate('ksm_id', PechTexGurKodp.AsInteger, [])) then
    begin
      s_kodprod := FPech_Vibor.PechVipuskKod_Prod.AsString;
      s_gost := FPech_Vibor.PechVipuskGost.AsString;
      s_nmat := FPech_Vibor.PechVipuskNmat.AsString;
      s_neiz := FPech_Vibor.PechVipuskNeis.AsString;
      s_xarkt := FPech_Vibor.PechVipuskXarkt.AsString;
      s_namorg := FPech_Vibor.PechVipuskNamorg.AsString;
      s_namreg := FPech_Vibor.PechVipuskNamreg.AsString;
    end
    else
    begin
      s_kodprod := '';
      s_gost := '';
      s_nmat := '';
      s_neiz := '';
      s_xarkt := '';
      s_namorg := '';
      s_namreg := '';
    end;
  end;
  if (ParName = 'Kod_prod') then
  begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id', PechTexGurKodp.AsInteger, [])) then
        s_kodprod := FPech_Vibor.PechVipuskKod_Prod.AsString
      else
        s_kodprod := '';
    ParValue := s_kodprod;
  end;
  if (ParName = 'gost') then
  begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id', PechTexGurKodp.AsInteger, [])) then
        s_gost := FPech_Vibor.PechVipuskGost.AsString
      else
        s_Gost := '';
    ParValue := s_gost;
  end;
  if (ParName = 'nmat') then
  begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id', PechTexGurKodp.AsInteger, [])) then
        s_nmat := FPech_Vibor.PechVipuskNmat.AsString
      else
        s_Nmat := '';
    ParValue := s_nmat;
  end;
  if (ParName = 'neis') then
  begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id', PechTexGurKodp.AsInteger, [])) then
        s_neiz := FPech_Vibor.PechVipuskNeis.AsString
      else
        s_Neiz := '';
    ParValue := s_neiz;
  end;
  if (ParName = 'xarkt') then
  begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id', PechTexGurKodp.AsInteger, [])) then
        s_xarkt := FPech_Vibor.PechVipuskXarkt.AsString
      else
        s_xarkt := '';
    ParValue := s_xarkt;
  end;
  if (ParName = 'namorg') then
  begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id', PechTexGurKodp.AsInteger, [])) then
        s_namorg := FPech_Vibor.PechVipuskNamorg.AsString
      else
        s_Namorg := '';
    ParValue := s_namorg;
  end;
  if (ParName = 'namreg') then
  begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id', PechTexGurKodp.AsInteger, [])) then
        s_namreg := FPech_Vibor.PechVipuskNamreg.AsString
      else
        s_Namreg := '';
    ParValue := s_namreg;
  end;
  if (ParName = 'namcex') then
    ParValue := s_namcex;
  if (ParName = 'god') then
    ParValue := god;
  if (ParName = 'stname') then
    ParValue := s_namcex;
end;

procedure TDM1.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  nammes := getStrMes(mes);
  if (VarName = 'nammes') then
    Value := nammes;
  if (VarName = 'stname') then
    Value := FGlMenu.RxLabel1.Caption;
  if (VarName = 'lekkod') then
    Value := FOtchet.Edit1.Text;
  if (VarName = 'gostp') then
    Value := FOtchet.Label22.Caption;
  if (VarName = 'xarkt') then
    Value := FOtchet.Label41.Caption;
  if (VarName = 'namorg') then
    Value := FOtchet.Label29.Caption;
  if (VarName = 'nam_prep') then
    Value := FOtchet.Label19.Caption;
  if (VarName = 'neiz_prep') then
    Value := FOtchet.Label21.Caption;
  if (VarName = 'god') then
    Value := god;
  if (VarName = 'sdano_m') then
    Value := FOtchet.Label1.Caption;
  if (VarName = 'sdano_g') then
    Value := FOtchet.Label14.Caption;
  if (VarName = 'reg') then
    Value := SelectToVarIB('SELECT NAM FROM REGION '
                           + 'INNER JOIN SPPROD on region.reg=spprod.reg '
                           + 'where spprod.ksm_id=' + IntTOStr(s_kodp),
                           DM1.BELMED, DM1.IBT_Read);
  if (VarName = 's_dolgn') then
    Value := s_dolgn;
  if (VarName = 's_fio') then
    Value := s_fio;
  if (VarName = 'nach') and (vstruk_id = 106 )then
    Value := 'Инженер-технолог _______________________________________________';
  if (VarName = 'nach') and (vstruk_id <> 106 )then
    Value := 'Начальник участка ______________________________________________';
  if (VarName = 'Tochn') then
  begin
    if (FSprFormul = nil) then
      FSprFormul := TfSprFormul.Create(Application);
    if (FSprFormul.Ceh_Normz.Active = true) then
      FSprFormul.CEH_NormZ.Close;
    FSprFormul.CEH_NormZ.MacroByName('SORT').AsString := '';
    FSprFormul.CEH_NormZ.MacroByName('USL').AsString := ' Where CEH_NORMZ.KSM_ID_PR='
                                                        + INTTOSTR(dm1.PechOtchetKodp.asInteger)
                                                        + ' and CEH_NORMZ.KSM_ID_MAt='
                                                        + INTTOSTR(dm1.PechOtchetKsm_id.AsInteger)
                                                        + ' and ceh_normz.razdel_id = '
                                                        + IntToStr(dm1.PechOtchetRAZDEL_ID.AsInteger);
    FSprFormul.CEH_NormZ.Open;
    if (not FSprFormul.CEH_NORMZ.eof) then
      if (FSprFormul.CEH_NORMZDecznak.AsVariant <> null) then
        tochn := FSprFormul.CEH_NORMZDecznak.asinteger
      else
        tochn := 3
    else
      tochn := 3;
  // tochn := 6;
    Value := tochn;
  end;
  if (VarName = 'prizgr') then
  begin
    if (dm1.PechOtchetKodp.AsVariant = star_kod) then
      Value := 1
    else
      Value := 2;
   star_kod := dm1.PechOtchetKodp.AsVariant;
  end;
  if (VarName = 'Kod_prod') then begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id',PechTexGurKodp.AsInteger,[])) then
        s_kodprod := FPech_Vibor.PechVipuskKod_Prod.AsString
      else
        s_kodprod := '';
    Value := s_kodprod;
  end;
  if (VarName = 'gost') then begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id',PechTexGurKodp.AsInteger,[])) then
        s_gost := FPech_Vibor.PechVipuskGost.AsString
      else
        s_Gost := '';
    Value := s_gost;
  end;
  if (VarName = 'nmat') then begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id',PechTexGurKodp.AsInteger,[])) then
        s_nmat := FPech_Vibor.PechVipuskNmat.AsString
      else
        s_Nmat := '';
    Value := s_nmat;
  end;
  if (VarName = 'neis') then begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id',PechTexGurKodp.AsInteger,[])) then
        s_neiz := FPech_Vibor.PechVipuskNeis.AsString
      else
        s_Neiz := '';
    Value := s_neiz;
  end;
  if (VarName = 'xarkt') then begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id',PechTexGurKodp.AsInteger,[])) then
        s_xarkt := FPech_Vibor.PechVipuskXarkt.AsString
      else
        s_xarkt := '';
    Value := s_xarkt;
  end;
  if (VarName = 'namorg') then begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id',PechTexGurKodp.AsInteger,[])) then
        s_namorg := FPech_Vibor.PechVipuskNamorg.AsString
      else
        s_Namorg := '';
    Value := s_namorg;
  end;
  if (VarName = 'namreg') then begin
    if (prov) then
      if (FPech_Vibor.PechVipusk.Locate('ksm_id', PechTexGurKodp.AsInteger, [])) then
        s_namreg := FPech_Vibor.PechVipuskNamreg.AsString
      else
        s_Namreg := '';
    Value := s_namreg;
  end;
  if (VarName = 'strukt_id') then
    Value := vstruk_id;
end;

procedure TDM1.Ceh_StadNewRecord(DataSet: TDataSet);
begin
  DM1.Ceh_StadStadia_ID.AsInteger:=VSTADIA_ID;

end;

procedure TDM1.OstatkiBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_Ostatki.ExecProc;
  vkart_Id := DM1.Add_Ostatki.Params.Items[0].AsInteger;
end;

procedure TDM1.KartKSM_IDValidate(Sender: TField);
begin
 dM1.Matrop.Active:=false;
 dM1.Matrop.ParamByName('ksm').AsInteger:=dm1.Kart.FieldByName('ksm_id').AsInteger;
 dM1.Matrop.Active:=TRUE;
 if not dm1.Matrop.eof then
 begin
  dm1.Kart.FieldByName('Nmat').AsString:=dm1.Matrop.FieldByName('Nmat').AsString;
  DM1.Kart.FieldByName('Gost').AsString :=dm1.Matrop.FieldByName('Gost').AsString;
  DM1.Kart.FieldByName('Kei_Id').AsInteger :=dm1.Matrop.FieldByName('Kei_id').AsInteger;
  DM1.Kart.FieldByName('neis').AsString :=dm1.Matrop.FieldByName('Neis').AsString;
  DM1.Kart.FieldByName('Xarkt').AsString :=dm1.Matrop.FieldByName('Xarkt').AsString;
 end
 else
  showMessage('Нет такого кода! Воспользуйтесь справочником!');
end;

procedure TDM1.KartBeforePost(DataSet: TDataSet);
begin
  s_ksm := dm1.KartKSM_ID.AsInteger;
  s_kei := dm1.KartKei_ID.AsInteger;
  v_Razdel := dm1.KartRazdel_ID.AsInteger;
  If DM1.Kart.FieldByName('Ksm_id').AsInteger = 0 then
  begin
    MessageDlg('Введите код сырья!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If (DM1.Kart.FieldByName('Kei_id').AsInteger = 0)
      and ((DM1.Kart.FieldByName('Kol_prih_ediz').AsFloat <> 0)
            or (DM1.Kart.FieldByName('Kol_rash_ediz').AsFloat <> 0)) then
  begin
    MessageDlg('Введите единицу измерения!', mtWarning, [mbOK], 0);
    Abort;
  end;
  try
    DM1.Seria.Active := False;
    DM1.Seria.ParamByName('ksm_id').AsInteger := dm1.KartKSM_ID.AsInteger;
    dm1.Seria.Active := true;
    if dm1.Seria.locate('seria', dm1.KartSeria.asstring, []) then
    begin
      s_seria := dm1.SeriaSeria.asstring;
      vseria_id := dm1.SeriaSERIA_ID.AsInteger;
      dm1.KartSROK_GODN.AsDateTime := dm1.SeriaSROK_GODN.AsDateTime;
    end
    else
    begin
      if not dm1.KartSeria.IsNull then
      begin
        s_seria := dm1.KartSeria.asstring;
        DM1.Seria.Insert;
        DM1.Seria.Post;
        DM1.Seria.ApplyUpdates;
      end
      else
        vSeria_id := 0;
    end;
    IF vKart_Id = 0  then
    begin
      if dm1.Ostatki.Active then
        dm1.Ostatki.Active := false;
      DM1.Ostatki.ParamByName('struk_ID').AsInteger := vstruk_id;
      if v_Razdel = 0 then
        DM1.Ostatki.MacroByName('usl').AsString := ' and ((ost.razdel_id is null) OR (ost.razdel_id = 0))'
                                                   + ' AND OST.KSM_ID = ' + INTTOSTR(dm1.KartKSM_ID.AsInteger)
      else
      begin
        DM1.Ostatki.MacroByName('usl').AsString := ' and ost.razdel_id = ' + inttostr(v_Razdel)
                                                   + ' and ost.ksm_idpr = ' + inttostr(s_kodp)
                                                   + ' AND OST.KSM_ID = ' + INTTOSTR(dm1.KartKSM_ID.AsInteger);
      end;
      dm1.Ostatki.Open;
      dm1.Ostatki.First;
      if dm1.Ostatki.Eof then
        dm1.Ostatki.Insert
      else
        if vSeria_id <> 0 then
          if dm1.Ostatki.Locate('SERIA_ID;ksm_idpr', VarArrayOf([vseria_id, s_kodp]), []) then
            vkart_id := dm1.OstatkiKART_ID.AsInteger
          else
          BEGIN
            IF S_KODP = 0 THEN
            begin
              if dm1.Ostatki.Locate('SERIA_ID;ksm_idpr', VarArrayOf([vseria_id, null]), []) then
                vkart_id := dm1.OstatkiKART_ID.AsInteger
              else
                dm1.Ostatki.Insert
            end
            else
              dm1.Ostatki.Insert;
          END
          else
            vkart_id := dm1.OstatkiKART_ID.AsInteger;
    end;
    if (DM1.Ostatki.Modified)
        or (DM1.Ostatki.State = dsEdit)
        or (DM1.Ostatki.State = dsInsert) then
    begin
      DM1.Ostatki.Post;
      dm1.Ostatki.ApplyUpdates;
    end;
    DM1.Kart.FieldByName('Kart_Id').AsInteger := vKart_Id;
    DM1.Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
  except
    MessageDlg('Произошла ошибка при добавлении нового сырья в документ.', mtWarning, [mbOK], 0);
    Abort;
  end;
end;

procedure TDM1.KartKRAZValidate(Sender: TField);
begin
 if not dm1.Razdel.Active then dm1.Razdel.Active:=true;
 if dm1.Razdel.Locate('kraz',dm1.KartKRAZ.AsInteger,[]) then
 begin
  dm1.Kart.FieldByName('RAZDEL_ID').value:=dm1.RazdelRAZDEL_ID.AsInteger;
  v_razdel:=dm1.RazdelRAZDEL_ID.AsInteger;
 end;
end;

procedure TDM1.Ceh_StadLEK_IDValidate(Sender: TField);
begin
IF not DM1.LEKGRUP.Active then DM1.LEKGRUP.Active:=true;
IF DM1.LEKGRUP.Locate('LEK_ID',DM1.Ceh_StadlEK_ID.AsInteger,[]) THEN
 DM1.Ceh_StadLEKNAMS.AsString:=DM1.LEKGRUPLEKNAMS.AsString;
end;

procedure TDM1.PrixRasxAfterPost(DataSet: TDataSet);
begin
// IF DM1.Kart.Active THEN DM1.Kart.Close;
// DM1.Kart.MacroByName('USL').AsString:='WHERE KART.stroka_ID='+inttostr(dm1.PrixRasx.FieldByName('stroka_ID').AsInteger);
// DM1.Kart.Open;
// if not dm1.Kart.Eof then
// begin
//  dm1.Kart.BeforePost:=nil;
//  DM1.Kart.edit;
//  DM1.PrixRasxKol_Rash_ediz.AsFloat:=DM1.PrixrasxKol_rash.AsFloat;
//  DM1.KartKol_Rash.AsFloat:=DM1.PrixrasxKol_rash.AsFloat;
//  DM1.KartKei_id.AsInteger:=DM1.PrixrasxKei_id.asinteger;
//  DM1.Kart.Post;
//  dm1.Kart.BeforePost:=KartBeforePost;
// end;
end;

procedure TDM1.PrixRasxAfterScroll(DataSet: TDataSet);
begin
 Usl_ksm:='Kart.Ksm_id='+intToStr(dm1.PrixRasxKsm_id.AsInteger);
{ Usl_Sort:=' Document.date_op';
 Usl_tip:=' 0=0';
 usl_dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
 Usl_grop:=' TIP_OPER.TIP_OP_ID IN (33,34,35,37) and Kart.kol_rash<>0';
 DM1.PrixrasSyr.Active := False;
 DM1.PrixrasSyr.MacroByName('SKSM').AsString:= Usl_KSM;
 DM1.PrixrasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
 DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= Usl_GROP;
 DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
 DM1.PrixRasSyr.MacroByName('SORT').AsString:= Usl_SORT;
 DM1.PrixRasSyr.Active := True; }
 DM1.RasSumTipOp.Active := False;
 DM1.RasSumTipOp.MacroByName('SKSM').AsString:= Usl_KSM;
 DM1.RasSumTipOp.MacroByName('SDAT').AsString:= Usl_DAT;
 DM1.RasSumTipOp.MacroByName('STIP').AsString:= Usl_TIP;
 DM1.RasSumTipOp.MacroByName('CEX').AsString:= Usl_Struk;
 DM1.RasSumTipOp.Active := True;


 frascex.OST_KSM_ras.Close;
 fRascex.OST_KSM_ras.ParamByName('STRUK').AsiNTEGER:= VStruk_ID;
 fRascex.OST_KSM_ras.ParamByName('ksm').AsInteger:=DM1.PrixRasxKsm_id.Asinteger;
 fRascex.OST_KSM_ras.Active:=TRUE;

  dm1.OstSyrCehQuery.Active := false;
  dm1.OstSyrCehQuery.ParamByName('struk_id').AsInteger := vStruk_Id;
  dm1.OstSyrCehQuery.ParamByName('dat2').AsDate := StrToDate(s_dat2_period) + 1;
  dm1.OstSyrCehQuery.ParamByName('ksm_id').AsInteger := dm1.PrixRasxKSM_ID.AsInteger;
  dm1.OstSyrCehQuery.Active := true;
end;

procedure TDM1.PrixRasxBeforePost(DataSet: TDataSet);
begin
  DM1.PrixRasxKol_Rash_ediz.AsFloat:=DM1.PrixrasxKol_rash.AsFloat;
end;

procedure TDM1.PrixRasxCalcFields(DataSet: TDataSet);
begin
//  activateSelectOstKsm(StrToDate(s_dat1_period), StrToDate(s_dat2_period), 0, vStruk_Id, PrixRasxKSM_ID.AsInteger);
//  PrixRasxostE.AsFloat := selectOstDayKsmOSSUM.AsFloat;
end;

function TDM1.SumToString(x: integer): string;
  label 1;
  Var ed: array[0..12] of  string;
  Var dec1: array[0..10] of  string;
  Var dec: array[0..8] of  string;
  Var cot: array[0..10] of  string;
  Var ts: array[0..4] of  string;
  Var ts1: array[0..4] of  string;
  Var ts2: array[0..4] of  string;
  Var x_n1,x_n3,n,x_f,x_f1,x_r1,x_r2,x_r3,x_pr: integer;
    s,x_nf:string;
    i:integer;
begin
  ed[1]:='ОДИН'; ed[2]:= 'ДВА'; ed[3]:='ТРИ'; ed[4]:='ЧЕТЫРЕ'; ed[5]:='ПЯТЬ';
  ed[6]:='ШЕСТЬ'; ed[7]:='СЕМЬ'; ed[8]:='ВОСЕМЬ'; ed[9]:='ДЕВЯТЬ'; ed[10]:='ОДHА';
  ed[11]:='ДВЕ'; ed[12]:='';
  dec1[1]:='ДЕСЯТЬ';dec1[2]:='ОДИHHАДЦАТЬ';dec1[3]:='ДВЕHАДЦАТЬ';dec1[4]:='ТРИHАДЦАТЬ';
  dec1[5]:='ЧЕТЫРHАДЦАТЬ';dec1[6]:='ПЯТHАДЦАТЬ';dec1[7]:='ШЕСТHАДЦАТЬ';
  dec1[8]:='СЕМHАДЦАТЬ';dec1[9]:='ВОСЕМHАДЦАТЬ';dec1[10]:='ДЕВЯТHАДЦАТЬ';
  dec[1]:='ДВАДЦАТЬ';dec[2]:='ТРИДЦАТЬ';dec[3]:='СОРОК';dec[4]:='ПЯТЬДЕСЯТ';
  dec[5]:='ШЕСТЬДЕСЯТ';dec[6]:='СЕМЬДЕСЯТ';dec[7]:='ВОСЕМЬДЕСЯТ';dec[8]:='ДЕВЯHОСТО';
  cot[1]:='СТО';cot[2]:='ДВЕСТИ';cot[3]:='ТРИСТА';cot[4]:='ЧЕТЫРЕСТА';cot[5]:='ПЯТЬСОТ';
  cot[6]:='ШЕСТЬСОТ';cot[7]:='СЕМЬСОТ';cot[8]:='ВОСЕМЬСОТ';cot[9]:='ДЕВЯТЬСОТ';
  cot[10]:='СТО';
  ts[1]:=' ';ts[2]:='ТЫСЯЧ';ts[3]:='МИЛЛИОHОВ';ts[4]:='МИЛЛИАРДОВ';
  ts1[1]:=' ';ts1[2]:='ТЫСЯЧИ';ts1[3]:='МИЛЛИОHА';ts1[4]:='МИЛЛИАРДА';
  ts2[1]:=' ';ts2[2]:='ТЫСЯЧА';ts2[3]:='МИЛЛИОH';ts2[4]:='МИЛЛИАРД';
  s:='';
  x_f1:=0; //x_n1:=0; x_n3:=0;  n:=0;
  n:=x;
  x_f:=length(trim(IntToStr(n)));
  if n=0 then
  begin
    Result:='0';
    Exit;
  end;
  if n<1000000000000000 then x_f1:=5;
  if n<1000000000000 then x_f1:=4;
  if n<1000000000 then x_f1:=3;
  if n<1000000 then x_f1:=2;
  if n<1000 then x_f1:=1;
  i:=1;
  case x_f of
    12: x_nf:=IntToStr(n);
    11: x_nf:='0'+IntToStr(n);
    10: x_nf:='00'+IntToStr(n);
    9: x_nf:=IntToStr(n);
    8: x_nf:='0'+IntToStr(n);
    7: x_nf:='00'+IntToStr(n);
    6: x_nf:=IntToStr(n);
    5: x_nf:='0'+IntToStr(n);
    4: x_nf:='00'+IntToStr(n);
    3: x_nf:=IntToStr(n);
    2: x_nf:='0'+IntToStr(n);
    1: x_nf:='00'+IntToStr(n);
    else
    begin
      s:=IntToStr(x);
      Result:=Trim(s);
      Exit;
    end;
  end;

  while x_f1>0 do
  begin
    x_r1:=i*3-2;
    x_r2:=i*3-1;
    x_r3:=i*3;
    x_pr:=0;
    x_n3:=0;
    x_n1:=StrToInt(copy(x_nf,x_r1,1));
    if x_n1<>0 then
    begin
      s:=s+cot[x_n1]+' ';
      x_pr:=1;
    end;
    x_n1:=StrToInt(copy(x_nf,x_r2,1));
    case x_n1 of
      2..99:
      begin   //
        s:=s+dec[x_n1-1]+' ';
        x_pr:=1;
        x_n1:=StrToInt(copy(x_nf,x_r3,1));
        if x_n1<>0 then
        begin
          if x_f1=2 then
          begin
            if x_n1=1 then s:=s+ed[10]+' ';
            if x_n1=2 then s:=s+ed[11]+' ';
            if x_n1>2 then s:=s+ed[x_n1]+' ';
          end
          else s:=s+ed[x_n1]+' ';
            x_pr:=1;
          end;
      end;  //
      1:
      begin
        x_pr:=1;
        x_n1:=StrToInt(copy(x_nf,x_r3,1));
        s:=s+dec1[x_n1+1]+' ';
        x_n3:=x_n1;
      end;
      0:
      begin //
        x_n1:=StrToInt(copy(x_nf,x_r3,1));
        if x_n1<>0 then
        begin
          if x_f1=2 then
          begin
            if x_n1=1 then s:=s+ed[10]+' ';
            if x_n1=2 then s:=s+ed[11]+' ';
            if x_n1>2 then s:=s+ed[x_n1]+' ';
          end
          else
            s:=s+ed[x_n1]+' ';
          x_pr:=1;
        end;
      end;
    end;
    if x_pr=1 then
    begin
      if x_n3<>0 then
      begin
        s:=s+ts[x_f1]+' ';
        goto 1;
      end;
      if (x_n1=3)or(x_n1=2)or(x_n1=4) then
      begin
        s:=s+ts1[x_f1]+' ';
        goto 1;
      end;
      if x_n1=1 then
      begin
        s:=s+ts2[x_f1]+' ';
        goto 1;
      end;
      s:=s+ts[x_f1]+' ';
    end;
    1: x_f1:=x_f1-1;
       i:=i+1;
  end;
  Result:=Trim(s);
end;
procedure TDM1.KartVNewRecord(DataSet: TDataSet);
begin
  DM1.KartV.FieldByName('Stroka_Id').AsInteger := vStroka_Id;
end;

procedure TDM1.KartVBeforeEdit(DataSet: TDataSet);
begin
  vKart_Id := dm1.KartKart_id.AsInteger;
end;

procedure TDM1.KartVBeforeInsert(DataSet: TDataSet);
begin
  vKart_Id := 0;
  s_seria := '';
  DM1.Add_KartDok.StoredProcName := 'ADD_KARTV';
  DM1.Add_KartDok.ExecProc;
  vStroka_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TDM1.activateSprFormul(ksmIdPr : integer; ksmIdMat : integer;
                                 razdelId : integer);
begin
  CEH_NormZ.Close;
  if (ksmIdPr <> 0) then
  begin
    CEH_NormZ.MacroByName('USL').AsString := ' Where CEH_NORMZ.KSM_ID_PR = '
                                             + INTTOSTR(S_KODP);
    if (ksmIdMat <> 0) then
      CEH_NormZ.MacroByName('USL').AsString := CEH_NormZ.MacroByName('USL').AsString
                                               + ' and CEH_NORMZ.KSM_ID_MAT = '
                                               + INTTOSTR(ksmIdMat);
    if (razdelId <> 0) then
      CEH_NormZ.MacroByName('USL').AsString := CEH_NormZ.MacroByName('USL').AsString
                                               + ' and CEH_NORMZ.razdel_id = '
                                               + INTTOSTR(razdelId);
    CEH_NormZ.Open;
  end;
end;

procedure TDM1.Ceh_NormzNewRecord(DataSet: TDataSet);
begin
  Ceh_Normz.FieldByName('Normz_Id').AsInteger := 0;
  Ceh_Normz.FieldByName('Ksm_Id_pr').AsInteger := s_kodP;
end;

procedure TDM1.Ceh_StadBeforeInsert(DataSet: TDataSet);
begin
DM1.Add_KartDok.StoredProcName := 'ADD_STADIA';
 DM1.Add_KartDok.ExecProc;
 vSTADIA_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TDM1.SeriaKOD_TMValidate(Sender: TField);
begin
{ if (SERIAKOD_TM.AsVariant<>'') OR (SERIAKOD_TM.AsVariant<>0) then
 begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=Strtoint(FTEXGUR.dbeditEh3.Text);
  dM1.Matrop.Active:=TRUE;
  if not dm1.Matrop.eof then FTEXGUR.Label6.Caption:=dm1.MatropNMAT.AsString
  else showMessage('Нет такого кода! Воспользуйтесь справочником!');
 end;}
End;

//Процедура располагает форму  (PopUpForm) приближенно
//к заданному объекту управления  (ControlObject)
procedure TDM1.FormToObject(PopupForm : TForm; ControlObject : TControl; HTop:Integer=0; YesWidth:Integer=1);
var
  xy : TPoint;
begin
  xy.Y := 0;
  xy.X := 0;
  xy:= ControlObject.ClientToScreen(xy);
  PopupForm.Position := poDesigned;
  PopupForm.BorderStyle := bsNone;
  PopupForm.Top := xy.Y+ControlObject.Height;
  if PopupForm.Top+PopupForm.Height > Screen.Height then
    PopupForm.Top := PopupForm.Top-PopupForm.Height-ControlObject.Height;
  if PopupForm.Top < 0 then
  begin
    PopupForm.Height := PopupForm.Height+PopupForm.Top-HTop;
    PopupForm.Top := HTop;
  end;
  PopupForm.Left := xy.X;
  if YesWidth = 1 then
    PopupForm.Width := ControlObject.Width;
end;

procedure TDM1.TexStadNewRecord(DataSet: TDataSet);
begin
 TexStadKart_ID.AsInteger:=s_Kart_id;
 TexStadDate_Stad.AsDateTime:=FTexGurOld.DateEdit1.Date;
 TexStadDate_Time_Update.AsDateTime:=date;
 TexStadUser_Name.AsString:=UserName;
end;

procedure TDM1.upakBeforeDelete(DataSet: TDataSet);
begin
  if SelectToVarIB('SELECT distinct nomu_id_trans FROM ostatki '
  +'WHERE ostatki.nomu_id_trans='+DM1.upak.FieldByName('nomu_id').AsString,DM1.BELMED, DM1.IBT_Read)>0 then
  begin
    ShowMessage('В картотеке используется такой вид тары!');
    abort;
  end;
end;

procedure TDM1.removeKartByDocidKsmidRazdelid(docId: Integer; ksmId: Integer;
                                              razdelId: Integer);
begin
  if not dm1.IBT_WRITE.Active then
    dm1.IBT_WRITE.StartTransaction;
  IbDel.Active := false;
  IbDel.SQL.Clear;
  IbDel.SQL.Add('delete from kart where doc_id = ' + inttostr(vDocument_id)
                + ' and ksm_id = ' + inttostr(s_ksm) + ' and razdel_id = '
                + inttostr(v_razdel) + '  ');
  IbDel.Active := true;
  dm1.IBT_WRITE.CommitRetaining;
  if not dm1.IBT_WRITE.Active then
    dm1.IBT_WRITE.StartTransaction;
end;

function TDM1.getStrMes(monthInt : integer) : string;
begin
  case monthInt of
  1 : result := 'январь';
  2 : result := 'февраль';
  3 : result := 'март';
  4 : result := 'апрель';
  5 : result := 'май';
  6 : result := 'июнь';
  7 : result := 'июль';
  8 : result := 'август';
  9 : result := 'сентябрь';
  10 : result := 'октябрь';
  11 : result := 'ноябрь';
  12 : result := 'декабрь';
  end;
end;

function TDM1.LastDayOfMonth(month, year: integer): TDate;
 var
   y, m: Word;
 begin
  m := month + 1;
  y := year;
  if m > 12 then
  begin
    y := y + 1;
    m := 1;
  end;
   Result := EncodeDate(y, m, 1) - 1;
 end;

end.
