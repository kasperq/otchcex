unit PerOtchet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Grids, DBGridEh, StdCtrls, Spin, ComCtrls, ToolWin, DB,
  DBTables, IBCustomDataSet, IBQuery, RxIBQuery, RxMemDS,UtilRIB,SplshWnd,
  DBGrids, FR_DSet, FR_DBSet, FR_Class, RxQuery, ERxQuery, BDE;

type
  TFPerOtchet = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Label3: TLabel;
    DBGridEh2: TDBGridEh;
    ImageList1: TImageList;
    regot: TTable;
    regotDATCEX: TStringField;
    regotSNZAP: TStringField;
    regotDATACY: TStringField;
    regotCEX: TStringField;
    regotMES: TSmallintField;
    Prizpr: TTable;
    PrizprPRGOD: TStringField;
    PrizprPRMES: TStringField;
    PrizprSPROD: TStringField;
    PrizprSPPOL: TStringField;
    PrizprSPPRN: TStringField;
    PrizprSPVIS: TStringField;
    PrizprPRSHAP: TStringField;
    PrizprPRGRA: TStringField;
    PrizprPRG1: TFloatField;
    PrizprPRG2: TFloatField;
    PrizprPRG3: TFloatField;
    PrizprPRG4: TFloatField;
    PrizprPRG5: TFloatField;
    PrizprSPCEH: TStringField;
    PrizprKOLG1: TFloatField;
    PrizprKOLG2: TFloatField;
    PrizprKOLG3: TFloatField;
    PrizprKOLG4: TFloatField;
    PrizprKOLGS1: TFloatField;
    PrizprKOLGS2: TFloatField;
    PrizprKOLGS3: TFloatField;
    PrizprKOLGS4: TFloatField;
    PrizprKOLK1: TFloatField;
    PrizprKOLK2: TFloatField;
    PrizprKOLK3: TFloatField;
    PrizprKOLK4: TFloatField;
    PrizprKOLKS1: TFloatField;
    PrizprKOLKS2: TFloatField;
    PrizprKOLKS3: TFloatField;
    PrizprKOLKS4: TFloatField;
    PrizprKSM_ID: TFloatField;
    PrizprSPROD_S: TStringField;
    Query_Otchet: TRxIBQuery;
    Query_OtchetKSM_ID: TIntegerField;
    Query_OtchetOSTATOK_END_S: TFMTBCDField;
    Query_OtchetOSTATOK_END_NZ: TFMTBCDField;
    Query_OtchetOSTATOK_BEGIN_NZ: TFMTBCDField;
    Query_OtchetOSTATOK_BEGIN_S: TFMTBCDField;
    Query_OtchetNMAT: TIBStringField;
    Query_OtchetZAG_PERIOD: TFMTBCDField;
    Query_OtchetRASH_VIRAB_PERIOD: TFMTBCDField;
    Query_OtchetPRIX_PERIOD: TFMTBCDField;
    Query_OtchetRASX_PERIOD: TFMTBCDField;
    Query_OtchetPERS: TFMTBCDField;
    Query_OtchetPERNZ: TFMTBCDField;
    Query_OtchetKRAZ: TSmallintField;
    Query_OtchetKEI_ID: TSmallintField;
    Query_OtchetRAZDEL_ID: TSmallintField;
    Query_OtchetKART_ID: TIntegerField;
    Otchets: TTable;
    OtchetsMES1: TStringField;
    OtchetsOTSTRK: TStringField;
    OtchetsOTPROD: TStringField;
    OtchetsOTKPN: TStringField;
    OtchetsOTKVI: TStringField;
    OtchetsOTMATR: TStringField;
    OtchetsOTCENA: TFloatField;
    OtchetsCENAZA: TFloatField;
    OtchetsOSTSN: TFloatField;
    OtchetsOSTNZN: TFloatField;
    OtchetsPRIX: TFloatField;
    OtchetsZAG: TFloatField;
    OtchetsRASM: TFloatField;
    OtchetsRASG: TFloatField;
    OtchetsPERS: TFloatField;
    OtchetsPERP: TFloatField;
    OtchetsOSTSK: TFloatField;
    OtchetsOSTZK: TFloatField;
    OtchetsPRIXK: TFloatField;
    OtchetsRASK: TFloatField;
    OtchetsFACTK: TFloatField;
    OtchetsFACTM: TFloatField;
    OtchetsPEREM: TFloatField;
    OtchetsPEREG: TFloatField;
    OtchetsOTRAZ: TStringField;
    OtchetsPKV: TStringField;
    OtchetsPGD: TStringField;
    OtchetsMES: TStringField;
    OtchetsPR: TSmallintField;
    OtchetsKSM_ID: TFloatField;
    OtchetsOTPROD_S: TStringField;
    Spisok: TTable;
    SpisokOTPROD: TStringField;
    SpisokNMAT: TStringField;
    SpisokOTSTRK: TStringField;
    SpisokMES: TSmallintField;
    SpisokGOD: TSmallintField;
    Ras_Vir: TIBQuery;
    normt: TIBQuery;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    rasxod: TTable;
    rasxodDEBET: TStringField;
    rasxodBALS: TStringField;
    rasxodNUMKCU: TStringField;
    rasxodNAMEPR: TStringField;
    rasxodKEI: TStringField;
    rasxodEIZ: TStringField;
    rasxodOPER: TStringField;
    rasxodDATETR: TDateField;
    rasxodNUMDOK: TStringField;
    rasxodCEX: TStringField;
    rasxodPOST: TStringField;
    rasxodMOL: TStringField;
    rasxodKOL: TFloatField;
    rasxodMONEY: TFloatField;
    rasxodSUM: TFloatField;
    rasxodKPZ: TStringField;
    rasxodSKLAD: TStringField;
    rasxodNACEN: TFloatField;
    rasxodDT1: TStringField;
    rasxodKT1: TStringField;
    rasxodSUM1: TFloatField;
    rasxodDT2: TStringField;
    rasxodKT2: TStringField;
    rasxodPRIZN: TStringField;
    rasxodPRIZNVX: TStringField;
    rasxodOTK: TFloatField;
    rasxodKT: TStringField;
    rasxodNMASH: TStringField;
    rasxodKORR: TStringField;
    rasxodSUMD: TFloatField;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    q_spprodDbf: TERxQuery;
    q_spprodDbfSPROD: TStringField;
    q_spprodDbfSPPOL: TStringField;
    q_spprodDbfSPPRN: TStringField;
    q_spprodDbfSPVIS: TStringField;
    q_spprodDbfSPSTAD: TStringField;
    q_spprodDbfSPNAME: TStringField;
    q_spprodDbfSPSNAM: TStringField;
    q_spprodDbfSPKEI: TStringField;
    q_spprodDbfSPCENA: TFloatField;
    q_spprodDbfSPCENAB: TFloatField;
    q_spprodDbfSPCENAR: TFloatField;
    q_spprodDbfSPCEH: TStringField;
    q_spprodDbfSPXRKT: TStringField;
    q_spprodDbfSPRODS: TStringField;
    q_spprodDbfCODE: TStringField;
    q_spprodDbfSPKEIS: TStringField;
    q_spprodDbfINPUT1: TFloatField;
    q_spprodDbfINPUT2: TFloatField;
    q_spprodDbfUMN: TSmallintField;
    q_spprodDbfSPRIZ: TStringField;
    q_spprodDbfSPKEY: TStringField;
    q_spprodDbfSPNAMES: TStringField;
    q_spprodDbfEAN13: TSmallintField;
    q_spprodDbfKORG: TFloatField;
    q_spprodDbfSTRUK_ID: TSmallintField;
    q_spprodDbfGOST: TStringField;
    q_spprodDbfNEW_KOD: TStringField;
    q_spprodDbfKSM_ID: TFloatField;
    q_spprodDbfACTIVP: TSmallintField;
    q_spprodDbfNAM: TStringField;
    up_q_spprodDbf: TUpdateSQL;
    t_spprodDbf: TTable;
    t_spprodDbfSPROD: TStringField;
    t_spprodDbfSPPOL: TStringField;
    t_spprodDbfSPPRN: TStringField;
    t_spprodDbfSPVIS: TStringField;
    t_spprodDbfSPSTAD: TStringField;
    t_spprodDbfSPNAME: TStringField;
    t_spprodDbfSPSNAM: TStringField;
    t_spprodDbfSPKEI: TStringField;
    t_spprodDbfSPCENA: TFloatField;
    t_spprodDbfSPCENAB: TFloatField;
    t_spprodDbfSPCENAR: TFloatField;
    t_spprodDbfSPCEH: TStringField;
    t_spprodDbfSPXRKT: TStringField;
    t_spprodDbfSPRODS: TStringField;
    t_spprodDbfCODE: TStringField;
    t_spprodDbfSPKEIS: TStringField;
    t_spprodDbfINPUT1: TFloatField;
    t_spprodDbfINPUT2: TFloatField;
    t_spprodDbfUMN: TSmallintField;
    t_spprodDbfSPRIZ: TStringField;
    t_spprodDbfSPKEY: TStringField;
    t_spprodDbfSPNAMES: TStringField;
    t_spprodDbfEAN13: TSmallintField;
    t_spprodDbfKORG: TFloatField;
    t_spprodDbfSTRUK_ID: TSmallintField;
    t_spprodDbfGOST: TStringField;
    t_spprodDbfNEW_KOD: TStringField;
    t_spprodDbfKSM_ID: TFloatField;
    t_spprodDbfACTIVP: TSmallintField;
    t_spprodDbfNAM: TStringField;
    q_spprod: TRxIBQuery;
    q_spprodSPROD_ID: TIntegerField;
    q_spprodKSM_ID: TIntegerField;
    q_spprodSPKSM: TIBStringField;
    q_spprodSPPRN: TSmallintField;
    q_spprodSPVIS: TSmallintField;
    q_spprodNMAT: TIBStringField;
    q_spprodPROD_ID: TIntegerField;
    q_spprodKEI_ID: TSmallintField;
    q_spprodLEK_ID: TSmallintField;
    q_spprodMOD_ID: TSmallintField;
    q_spprodSPRODS: TSmallintField;
    q_spprodSPSR: TSmallintField;
    q_spprodVOL_ID: TSmallintField;
    q_spprodUMN: TSmallintField;
    q_spprodEAN13: TSmallintField;
    q_spprodSPRIZ: TSmallintField;
    q_spprodSTRUK_ID: TSmallintField;
    q_spprodREG: TSmallintField;
    q_spprodKORG: TIntegerField;
    q_spprodSPFS: TIBStringField;
    q_spprodSPFV: TSmallintField;
    q_spprodSPVU: TSmallintField;
    q_spprodSPTIP: TSmallintField;
    q_spprodSPSPIS: TSmallintField;
    q_spprodDOLPO: TIBBCDField;
    q_spprodSTAT: TSmallintField;
    q_spprodPUP: TSmallintField;
    q_spprodNMATS: TIBStringField;
    q_spprodGOST: TIBStringField;
    q_spprodGR: TIBStringField;
    q_spprodPGR: TIBStringField;
    q_spprodXARKT: TIBStringField;
    q_spprodACTIVP: TSmallintField;
    q_spprodACTIVF: TSmallintField;
    q_spprodREGISTR_ID: TIntegerField;
    q_spprodVOLUMF: TFMTBCDField;
    q_spprodVOL_OV: TFMTBCDField;
    q_spprodKOD_PROD: TIBStringField;
    q_spprodMAIN_SPROD_ID: TIntegerField;
    q_spprodVES_UP: TIBBCDField;
    q_spprodINOV: TSmallintField;
    q_spprodDATEI_1: TDateField;
    q_spprodDATEI_2: TDateField;
    q_spprodREGLS_ID: TIntegerField;
    q_spprodSERTIFIED: TSmallintField;
    workSes: TSession;
    ToolButton1: TToolButton;
    OtchetOld: TTable;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    FloatField46: TFloatField;
    StringField32: TStringField;
    ncmatrd: TERxQuery;
    upd_ncmatrd: TUpdateSQL;
    ncmatrdNCPROD: TStringField;
    ncmatrdNCKPN: TStringField;
    ncmatrdNCKVI: TStringField;
    ncmatrdNCEDIZ: TStringField;
    ncmatrdNCSTRK: TStringField;
    ncmatrdNCRAZ: TStringField;
    ncmatrdNCMATR: TStringField;
    ncmatrdNCPROC: TFloatField;
    ncmatrdNCEDIZM: TStringField;
    ncmatrdNCNRDS: TFloatField;
    ncmatrdNCNRFK: TFloatField;
    ncmatrdNMATS: TStringField;
    ncmatrdNCCENA: TFloatField;
    ncmatrdKSM_ID: TFloatField;
    ncmatrdNCPROD_S: TStringField;
    otchet: TERxQuery;
    upd_otchet: TUpdateSQL;
    otchetMES1: TStringField;
    otchetOTSTRK: TStringField;
    otchetOTPROD: TStringField;
    otchetOTKPN: TStringField;
    otchetOTKVI: TStringField;
    otchetOTMATR: TStringField;
    otchetNMAT: TStringField;
    otchetOTCENA: TFloatField;
    otchetCENAZA: TFloatField;
    otchetOSTSN: TFloatField;
    otchetOSTNZN: TFloatField;
    otchetPRIX: TFloatField;
    otchetZAG: TFloatField;
    otchetRASM: TFloatField;
    otchetRASG: TFloatField;
    otchetPERS: TFloatField;
    otchetPERP: TFloatField;
    otchetOSTSK: TFloatField;
    otchetOSTZK: TFloatField;
    otchetPRIXK: TFloatField;
    otchetRASK: TFloatField;
    otchetFACTK: TFloatField;
    otchetFACTM: TFloatField;
    otchetPEREM: TFloatField;
    otchetPEREG: TFloatField;
    otchetOTRAZ: TStringField;
    otchetPKV: TStringField;
    otchetPGD: TStringField;
    otchetMES: TStringField;
    otchetPR: TSmallintField;
    otchetPRS: TSmallintField;
    otchetKSM_ID: TFloatField;
    otchetOTPROD_S: TStringField;
    prizm: TERxQuery;
    upd_prizm: TUpdateSQL;
    fSes: TSession;
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton4Click(Sender: TObject);
    procedure Otchet_ST;
    procedure DBGridEh2SortMarkingChanged(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    machine : string;
    S_DATk : string;
    localDirPath, oldFilePath : string;

    procedure perOtchet;
    function copyDbfToLocalDir() : boolean;
    function copyDbfToNetDir() : boolean;
    procedure openSpisokPreps;
    procedure copyRegot;
    procedure copyPrizpr;
    procedure copySpisok;

    procedure setOtchetText;
    procedure setPrizmText;
    procedure setNcmatrdText;
    procedure setSpprodDbfText;
    procedure openWorkSes;
    procedure openFSes;
    function openQSpprodDbf() : boolean;
    function openTSpprodDbf() : boolean;
    procedure clearSpprodDbf;
    procedure isSpprodDbfInKartv;
    procedure isKartvInSpprodDbf;
    procedure findInsertSpprodToSpprodDbf;
    procedure saveSpprodDbfFile;
    procedure packSpprodDbf;
    
  public
    procedure updatePCSppod;

  end;

var
  FPerOtchet: TFPerOtchet;
  vxod: boolean;
  mes_vib: integer;
  god_vib: integer;
  st_kodp: string;
   s_spprn: string;
  s_spvis: string;
  sv_keip: string;
  s_keip:integer;
  S_DATN: string;
  AniBmp1: TBitmap;

implementation

uses dm, SprFormul, GlMenu, CopyFiles;
 //,vipusk, Find_Spprod;
{$R *.dfm}

procedure TFPerOtchet.findInsertSpprodToSpprodDbf;
begin
  q_spprod.Close;
  q_spprod.ParamByName('ksm_id').AsInteger := dm1.KartVKSM_ID.AsInteger;
  q_spprod.Open;
  if (q_spprod.RecordCount > 0) then
  begin
    q_spprodDbf.Insert;
    if (length(q_spprodKSM_ID.AsString) > 4) then
      q_spprodDbfSPROD.AsString := '0' + Copy(q_spprodKSM_ID.AsString, 1, 1)
    else
      q_spprodDbfSPROD.AsString := '00';

    if (length(q_spprodKSM_ID.AsString) <= 3) then
      q_spprodDbfSPPRN.AsString := '0'
    else
      if (length(q_spprodKSM_ID.AsString) = 4) then
        q_spprodDbfSPPRN.AsString := copy(q_spprodKSM_ID.AsString, 1, 1)
      else
        q_spprodDbfSPPRN.AsString := copy(q_spprodKSM_ID.AsString, 2, 1);

    if (length(q_spprodKSM_ID.AsString) <= 2) then
      q_spprodDbfSPVIS.AsString := '0'
    else
      if (length(q_spprodKSM_ID.AsString) = 3) then
        q_spprodDbfSPVIS.AsString := copy(q_spprodKSM_ID.AsString, 1, 1)
      else
        if (length(q_spprodKSM_ID.AsString) = 4) then
          q_spprodDbfSPVIS.AsString := copy(q_spprodKSM_ID.AsString, 2, 1)
        else
          q_spprodDbfSPVIS.AsString := copy(q_spprodKSM_ID.AsString, 3, 1);
    q_spprodDbfSPNAME.AsString := q_spprodNMAT.AsString;
    q_spprodDbfSPSNAM.AsString := q_spprodNMATS.AsString;
    q_spprodDbfSPKEI.AsString := q_spprodKEI_ID.AsString;
    q_spprodDbfSPCEH.AsString := dm1.stkod;
    q_spprodDbfSPXRKT.AsString := q_spprodXARKT.AsString;
    q_spprodDbfSPRODS.AsString := Copy(q_spprodKSM_ID.AsString,
                                       length(q_spprodKSM_ID.AsString) - 1,
                                       length(q_spprodKSM_ID.AsString) + 1);
    q_spprodDbfSTRUK_ID.AsInteger := q_spprodSTRUK_ID.AsInteger;
    q_spprodDbfGOST.AsString := q_spprodGOST.AsString;
    q_spprodDbfNEW_KOD.AsString := q_spprodKOD_PROD.AsString;
    q_spprodDbfKSM_ID.AsString := q_spprodKSM_ID.AsString;
    q_spprodDbfACTIVP.AsInteger := 1;
    q_spprodDbf.Post;
  end;
end;

procedure TFPerOtchet.clearSpprodDbf;
begin
  q_spprodDbf.First;
  while (not q_spprodDbf.Eof) do
    q_spprodDbf.Delete;
  q_spprodDbf.ApplyUpdates;
  q_spprodDbf.CommitUpdates;
end;

procedure TFPerOtchet.isSpprodDbfInKartv;
begin
  q_spprodDbf.First;
  while (not q_spprodDbf.Eof) do
  begin
    if (dm1.KartV.Locate('ksm_id', q_spprodDbfKSM_ID.AsInteger, [])) then
      q_spprodDbf.Next
    else
      q_spprodDbf.Delete;
  end;
  q_spprodDbf.ApplyUpdates;
  q_spprodDbf.CommitUpdates;
end;

procedure TFPerOtchet.isKartvInSpprodDbf;
begin
  dm1.KartV.First;
  while (not dm1.KartV.Eof) do
  begin
    if (not q_spprodDbf.Locate('ksm_id', dm1.KartVKSM_ID.AsInteger, [])) then
      findInsertSpprodToSpprodDbf;
    dm1.KartV.Next
  end;
  q_spprodDbf.ApplyUpdates;
  q_spprodDbf.CommitUpdates;
  q_spprodDbf.Close;
  q_spprod.Close;
  packSpprodDbf;
end;

procedure TFPerOtchet.packSpprodDbf;
begin
  q_spprodDbf.Close;
  workSes.Active := false;
  if (openTSpprodDbf()) then
  begin
    DbiPackTable(t_spprodDbf.dbhandle, t_spprodDbf.Handle, nil, nil, false);
    t_spprodDbf.Close;
  end;
  workSes.Active := false;
  workSes.Close;
end;

procedure TFPerOtchet.copyRegot;
begin
  regot.Filter := 'CEX=' + '''' + S_STKOD + '''' + ' AND MES=' + INTTOSTR(MES);
  regot.Filtered := TRUE;
  regot.Open;
  if (REGOT.Eof) then
  begin
    regot.Insert;
    regotdatcex.AsString := datetostr(date);
    regotCex.AsString := s_stkod;
    regotMes.AsInteger := mes;
    regot.Post;
  end
  else
  begin
    regot.Last;
    if (regotDATACY.AsString = '') then
    begin
      regot.Edit;
      regotdatcex.AsString := datetostr(date);
      regotMes.AsInteger := mes;
      regot.Post;
    end
    else
    begin
//      Splash.Free;
      MessageDlg(' Данные НЕ переданы, т.к. они были уже переданы и использованы!',
                 mtWarning, [mbOK], 0);
      SysUtils.Abort;
    end;
  end;
  regot.ApplyUpdates;
  regot.CommitUpdates;
  regot.Close;
end;

procedure TFPerOtchet.copyPrizpr;
var
  v_vipuskk : double;
begin
  //выпуск с начала года
  DM1.IBQuery1.Close;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng');
  DM1.IBQuery1.SQL.Add(' FROM KARTv');
  DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
  DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                       + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                       + ' AND KARTv.KSM_ID=' + INTTOSTR(s_KODP)
                       + ' AND Document.Date_op between ' + '''' + s_datn
                       + '''' + ' and ' + '''' + s_dat2 + '''');
  DM1.IBQuery1.Open;
  if (not dm1.IBQuery1.Eof) then
    V_VIPUSKG := DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat
  else
    V_VIPUSKG := 0;
  //выпуск с начала квартала
  DM1.IBQuery1.Close;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_k');
  DM1.IBQuery1.SQL.Add(' FROM KARTv');
  DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
  DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                       + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                       + ' AND KARTv.KSM_ID=' + INTTOSTR(s_KODP)
                       + ' AND Document.Date_op between ' + '''' + s_datk
                       + '''' + ' and ' + '''' + s_dat2 + '''');
  DM1.IBQuery1.Open;
  if (not dm1.IBQuery1.Eof) then
    v_vipuskk := DM1.IBQuery1.FieldByName('VIPUSK_k').AsFloat
  else
    v_vipuskk := 0;
  DM1.IBQuery1.Close;
  
  prizpr.Close;
  prizpr.Open;
  if (prizpr.Locate('sprod', st_kodp, [])) then
    prizpr.Edit
  else
  begin
    prizpr.Insert;
    prizprSprod.AsString := sT_kodp;
    prizprSpceh.AsString := s_stkod;
    prizprSpprn.AsString := s_spprn;
    prizprSpvis.AsString := s_spvis;
  end;
  prizprPrgod.AsString := inttostr(god);
  if (mes < 10) then
    prizprPrmes.AsString := ' ' + inttostr(mes)
  else
    prizprPrmes.AsString := inttostr(mes);
  prizprPrg1.AsVariant := dm1.KartVKOL_PRIH.AsFloat;
  prizprKolg1.AsVariant := v_vipuskg;
  prizprKolgs1.AsVariant := v_vipuskg - dm1.KartVKOL_PRIH.AsFloat;
  prizprKolk1.AsVariant := v_vipuskk;
  prizprKolks1.AsVariant := v_vipuskk - dm1.KartVKOL_PRIH.AsFloat;
  prizpr.Post;
end;

procedure TFPerOtchet.copySpisok;
begin
// формирование списка препаратов для передачи
  Spisok.Append;
  spisokOtprod.AsString := sT_kodp;
  spisokOtstrk.AsString := s_stkod;
  spisokNmat.AsString := DM1.KARTVNmat.AsString;
  spisokMes.AsInteger := mes;
  spisokGod.AsInteger := god;
  spisok.Post;
end;

procedure TFPerOtchet.openSpisokPreps;
begin
  if (VDOCUMENT_ID = 0) or (DM1.KARTV.Eof) then
  begin
    DM1.DOCUMENT.Close;
    DM1.DOcUMENT.MacroByName('USL').AsString := 'WHERE DOcUMENT.STRUK_ID = '
                                                + INTTOSTR(VsTRUK_ID)
                                                + ' AND DOCUMENT.TIP_OP_ID = 36 and document.tip_dok_id=74'
                                                + ' AND Document.Date_op between '
                                                + '''' + s_dat1 + '''' + ' and '
                                                + '''' + s_dat2 + '''';
    DM1.DOCUMENT.OPEN;
    if (not DM1.Document.Eof) then
      VDOCUMENT_ID := DM1.DocumentDOC_ID.AsInteger
    else
      VDOCUMENT_ID := 0;
    DM1.KARTV.Close;
    DM1.KartV.MacroByName('USL').AsString := 'WHERE KARTv.DOC_ID = ' + INTTOSTR(VDOCUMENT_id);
    DM1.KartV.MacroByName('SORT').AsString := 'ORDER BY SPPROD.Kod_prod';
    DM1.KARTV.OPEN;
  end;
end;

function TFPerOtchet.copyDbfToLocalDir() : boolean;
begin
  result := false;
  try
    if (DirectoryExists('c:\work\')) then
    begin
      localDirPath := 'c:\work\' + machine + '\';
      oldFilePath := 'f:\' + machine + '\';
      if (ForceDirectories(localDirPath)) then
      begin
        fileCopy('f:\bmomts\bmg\zerno1\rasxod.dbf', localDirPath + 'rasxod.dbf');
        fileCopy(oldFilePath + 'ot\otchbas\prizm.dbf', localDirPath + 'prizm.dbf');
        fileCopy(oldFilePath + 'otchbas\otchets.dbf', localDirPath + 'otchets.dbf');
        fileCopy(oldFilePath + 'ot\otchbas\otchet.dbf', localDirPath + 'otchet.dbf');
        fileCopy(oldFilePath + 'ot\otchbas\ncmatrd.dbf', localDirPath + 'ncmatrd.dbf');
        fileCopy(oldFilePath + 'otchbas\spprod.dbf', localDirPath + 'spprod.dbf');
        if (FileExists(localDirPath + 'rasxod.dbf')) and
           (FileExists(localDirPath + 'prizm.dbf')) and
           (FileExists(localDirPath + 'otchets.dbf')) and
           (FileExists(localDirPath + 'otchet.dbf')) and
           (FileExists(localDirPath + 'ncmatrd.dbf')) then
        begin
          openFSes;
          OtchetOld.Close;
          otchetOld.Exclusive := true;
          otchetOld.Open;

          result := true;
        end;
      end
      else
        ShowMessage('Не создали локальную папку.');
    end;
  except
    on e : exception do
    begin
//      Splash.free;
      MessageDlg('Не удалось скопировать файлы в локальную папку. ' + e.Message, mtWarning, [mbOK], 0);
      SysUtils.Abort;
    end;
  end;
//  Splash.free;
end;

function TFPerOtchet.copyDbfToNetDir() : boolean;
begin
  result := false;
  try
    otchetOld.Close;
    fSes.Active := false;
    fileCopy(localDirPath + 'otchet.dbf', oldFilePath + 'ot\otchbas\otchet.dbf');
    fileCopy(localDirPath + 'prizm.dbf', oldFilePath + 'ot\otchbas\prizm.dbf');
    fileCopy(localDirPath + 'ncmatrd.dbf', oldFilePath + 'ot\otchbas\ncmatrd.dbf');
    fileCopy(localDirPath + 'spprod.dbf', oldFilePath + 'otchbas\spprod.dbf');

    while (not FileExists(oldFilePath + 'ot\otchbas\otchet.dbf'))
           and (not FileExists(oldFilePath + 'ot\otchbas\ncmatrd.dbf'))
           and (not FileExists(oldFilePath + 'ot\otchbas\prizm.dbf'))
           and (not FileExists(oldFilePath + 'otchbas\spprod.dbf')) do
    begin

    end;
  except
    on e : exception do
    begin
      MessageDlg('Не удалось скопировать обновленные файлы на сетевой диск. #10#13 '
                 + ' Обратитесь к программисту! ', mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TFPerOtchet.perOtchet;
begin
  openSpisokPreps;
  if (VDOCUMENT_ID <> 0) and (not DM1.KARTV.Eof) then
  begin
    try
      copyDbfToLocalDir();
  //    Splash := ShowSplashWindow(AniBmp1,
  //                               'Передача данных из цеха в АСУ. Подождите, пожалуйста...',
  //                               True,
  //                               nil);
      openWorkSes;
      copyRegot;

      if (not Otchets.Active) then
        Otchets.Active := true;

      Otchet.Close;
      otchet.ParamByName('struk_id').AsString := s_stkod;
      otchet.ParamByName('ksm_idpr').AsString := '';
      Otchet.Open;
      otchet.First;
      while (not otchet.Eof) do
        otchet.Delete;
      otchet.ApplyUpdates;
      otchet.CommitUpdates;
      otchet.Close;

      Spisok.Close;
      Spisok.Filter := 'otstrk=' + '''' + s_stkod + '''';
      Spisok.Open;
      Spisok.Filtered := true;
      Spisok.First;
      while (not Spisok.Eof) do
        Spisok.Delete;
      spisok.ApplyUpdates;
      spisok.CommitUpdates;

      DM1.KARTV.First;
      while (not DM1.KARTV.Eof) do
      begin
        S_KODP := DM1.KARTVKSM_ID.ASINTEGER;
        v_vipusk := dm1.KartVKOL_PRIH.AsFloat;
        s_spprn := INTTOSTR(DM1.KARTVSpprn.AsInteger);
        s_spvis := inttostr(DM1.KARTVSpvis.AsInteger);
        s_keip := DM1.KARTVKei_id.AsInteger;
        S_DATN := '01.01.' + INTTOSTR(GOD);
        if (mes < 4) and (mes >= 1) then
          S_DATk := '01.01.' + INTTOSTR(GOD);
        if (mes < 7) and (mes > 3) then
          S_DATk := '01.04.' + INTTOSTR(GOD);
        if (mes < 10) and (mes > 6) then
          S_DATk := '01.07.' + INTTOSTR(GOD);
        if (mes <= 12) and (mes > 9) then
          S_DATk := '01.10.' + INTTOSTR(GOD);
  // расход с начала года
        dm1.CEH_OTCHET.Active := FALSE;
        dm1.CEH_OTCHET.ParamByName('MES').AsInteger := mes;
        dm1.CEH_OTCHET.ParamByName('GOD').AsInteger := GOD;
        dm1.CEH_OTCHET.Active := TRUE;
  // нормы
        Normt.Active := False;
        Normt.SQL.Clear;
        Normt.SQL.Add('SELECT norm.ksm_id, norm.Kraz, norm.razdel_id, norm.plnorm, '
                      + 'norm.kei_id kein');
        Normt.SQL.Add(' FROM norm_view' + '(' + '119,' + inttostr(god) + ','
                      + inttostr(mes) + ',' + inttostr(s_kodp) + ',0,0)' + ' NORM ');
        Normt.Active := true;
  // значность
        FSprFormul.CEH_NormZ.Close;
        FSprFormul.CEH_NormZ.MacroByName('USL').AsString := ' Where CEH_NORMZ.KSM_ID_PR='
                                                            + INTTOSTR(S_KODP);
        FSprFormul.CEH_NormZ.Open;
        FSprFormul.CEH_NORMZ.First;
  // расход на выработку с начала квартала
        Ras_Vir.Active := False;
        Ras_Vir.SQL.Clear;
        Ras_Vir.SQL.Add('SELECT DISTINCT ost.ksm_id, ost.razdel_id, ost.KART_ID,');
        Ras_Vir.SQL.Add('ost.rash_virab_period');
        Ras_Vir.SQL.Add(' FROM  SELECT_OB_VED (' + '''' + s_datk + '''' + ',' + ''''
                        + s_dat2 + '''' + ',' + inttostr(s_kodp) + ') ost');
        Ras_Vir.Active := true;

        if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger))) = 1 then
          sT_kodp := '00000' + trim(inttostr(dm1.KartvKSM_ID.AsInteger));
        if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger))) = 2 then
          sT_kodp := '0000' + trim(inttostr(dm1.KartvKSM_ID.AsInteger));
        if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger))) = 3 then
          sT_kodp := '000' + trim(inttostr(dm1.KartvKSM_ID.AsInteger));
        if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger))) = 4 then
          sT_kodp := '00' + trim(inttostr(dm1.KartvKSM_ID.AsInteger));
        if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger))) = 5 then
          sT_kodp := '0' + trim(inttostr(dm1.KartvKSM_ID.AsInteger));
        if lenGTH(trim(inttostr(dm1.KartvKSM_ID.AsInteger))) = 6 then
          sT_kodp := trim(inttostr(dm1.KartvKSM_ID.AsInteger));

        copyPrizpr;
        copySpisok;

        OTCHET_ST;
        DM1.KARTV.Next;
      end;
      prizpr.ApplyUpdates;
      prizpr.CommitUpdates;
      prizpr.Close;
      spisok.ApplyUpdates;
      spisok.CommitUpdates;
      spisok.Close;
      otchet.ApplyUpdates;
      otchet.CommitUpdates;
      otchet.Close;
      otchets.Close;
      prizm.ApplyUpdates;
      prizm.CommitUpdates;
      prizm.Close;
      ncmatrd.ApplyUpdates;
      ncmatrd.CommitUpdates;
      ncmatrd.Close;
      rasxod.Close;
      updatePCSppod;
      workSes.Active := false;
      copyDbfToNetDir();
  //    Splash.Free;
    except
      on e : exception do
      begin
        prizpr.Close;
        spisok.Close;
        otchet.Close;
        otchets.Close;
        prizm.Close;
        ncmatrd.Close;
        rasxod.Close;
        q_spprodDbf.Close;
        t_spprodDbf.Close;
        OtchetOld.Close;
        workSes.Active := false;
        fSes.Active := false;
      end;  
    end;
  end
  else
  begin
    MessageDlg('Нет отчетов за заданный месяц !', mtWarning, [mbOK], 0);
    SysUtils.Abort;
  end;
end;

function TFPerOtchet.openQSpprodDbf() : boolean;
begin
  result := false;
  openWorkSes;
  q_spprodDbf.Close;
  q_spprodDbf.Open;
  if (q_spprodDbf.Active) then
    result := true;
end;

procedure TFPerOtchet.openWorkSes;
var
  StrLangDriver : TStringList;
begin
  StrLangDriver := TStringList.Create;
  StrLangDriver.Add('LANGDRIVER=db866ru0');
  StrLangDriver.Add('LEVEL=4');
  workSes.ModifyDriver('DBASE', StrLangDriver);
  StrLangDriver.Free;
  if (not workSes.Active) then
  begin
    workSes.NetFileDir := 'c:\work\' + machine + '\';
    workSes.PrivateDir := 'c:\work\' + machine + '\';
    workSes.Active := true;
  end;
end;

procedure TFPerOtchet.openFSes;
var
  StrLangDriver : TStringList;
begin
  StrLangDriver := TStringList.Create;
  StrLangDriver.Add('LANGDRIVER=db866ru0');
  StrLangDriver.Add('LEVEL=4');
  fSes.ModifyDriver('DBASE', StrLangDriver);
  StrLangDriver.Free;
  if (not fSes.Active) then
  begin
    fSes.NetFileDir := 'f:\' + machine + 'ot\otchbas\';
    fSes.PrivateDir := 'f:\' + machine + 'ot\otchbas\';
    fSes.Active := true;
  end;
end;

function TFPerOtchet.openTSpprodDbf() : boolean;
begin
  result := false;
//  openWorkSes;
  if (t_spprodDbf.Active) then
    t_spprodDbf.Close;
  t_spprodDbf.Exclusive := true;
  t_spprodDbf.Open;                                    // table is busy ОШИБКА
  if (t_spprodDbf.RecordCount > 0) then
    result := true;
end;

procedure TFPerOtchet.setNcmatrdText;
begin
  ncmatrd.Close;
  ncmatrd.EhSQL.Text := 'select * from ''c:\work\' + machine + '\ncmatrd.dbf'' norm '
                        + 'where norm.ncstrk = :struk_id ';
  upd_ncmatrd.DeleteSQL.Text := 'delete from "c:\work\' + machine + '\ncmatrd.dbf" '
                                + 'where NCPROD = :OLD_NCPROD and NCSTRK = :OLD_NCSTRK and '
                                + 'NCRAZ = :OLD_NCRAZ and NCMATR = :OLD_NCMATR ';
  upd_ncmatrd.InsertSQL.Text := 'insert into "c:\work\' + machine + '\ncmatrd.dbf" '
                                + '(NCPROD, NCKPN, NCKVI, NCEDIZ, NCSTRK, NCRAZ, '
                                + 'NCMATR, NCPROC, NCEDIZM, NCNRDS, NCNRFK, NMATS, '
                                + 'NCCENA, KSM_ID, NCPROD_S) '
                                + 'values (:NCPROD, :NCKPN, :NCKVI, :NCEDIZ, :NCSTRK, '
                                + ':NCRAZ, :NCMATR, :NCPROC, :NCEDIZM, :NCNRDS, '
                                + ':NCNRFK, :NMATS, :NCCENA, :KSM_ID, :NCPROD_S) ';
  upd_ncmatrd.ModifySQL.Text := 'update "c:\work\' + machine + '\ncmatrd.dbf" '
                                + 'set NCPROD = :NCPROD, NCKPN = :NCKPN, NCKVI = :NCKVI, '
                                + 'NCEDIZ = :NCEDIZ, NCSTRK = :NCSTRK, NCRAZ = :NCRAZ, '
                                + 'NCMATR = :NCMATR, NCPROC = :NCPROC, NCEDIZM = :NCEDIZM, '
                                + 'NCNRDS = :NCNRDS, NCNRFK = :NCNRFK, NMATS = :NMATS, '
                                + 'NCCENA = :NCCENA, KSM_ID = :KSM_ID, NCPROD_S = :NCPROD_S '
                                + 'where NCPROD = :OLD_NCPROD and NCSTRK = :OLD_NCSTRK and '
                                + 'NCRAZ = :OLD_NCRAZ and NCMATR = :OLD_NCMATR ';
end;

procedure TFPerOtchet.setOtchetText;
begin
  otchet.Close;
  otchet.EhSQL.Text := 'select * from ''c:\work\' + machine + '\otchet.dbf'' otc '
                       + 'where otc.otstrk = :struk_id and otc.otprod = :ksm_idpr ';
  upd_otchet.DeleteSQL.Text := 'delete from "c:\work\' + machine + '\otchet.dbf" '
                               + 'where OTSTRK = :OLD_OTSTRK and OTPROD = :OLD_OTPROD and '
                               + 'OTMATR = :OLD_OTMATR and OTRAZ = :OLD_OTRAZ ';
  upd_otchet.InsertSQL.Text := 'insert into "c:\work\' + machine + '\otchet.dbf" '
                               + '(MES1, OTSTRK, OTPROD, OTKPN, OTKVI, OTMATR, NMAT, '
                               + 'OTCENA, CENAZA, OSTSN, OSTNZN, PRIX, ZAG, RASM, '
                               + 'RASG, PERS, PERP, OSTSK, OSTZK, PRIXK, RASK, FACTK, '
                               + 'FACTM, PEREM, PEREG, OTRAZ, PKV, PGD, MES, PR, '
                               + 'PRS, KSM_ID, OTPROD_S) '
                               + 'values (:MES1, :OTSTRK, :OTPROD, :OTKPN, :OTKVI, '
                               + ':OTMATR, :NMAT, :OTCENA, :CENAZA, :OSTSN, :OSTNZN, '
                               + ':PRIX, :ZAG, :RASM, :RASG, :PERS, :PERP, :OSTSK, '
                               + ':OSTZK, :PRIXK, :RASK, :FACTK, :FACTM, :PEREM, '
                               + ':PEREG, :OTRAZ, :PKV, :PGD, :MES, :PR, :PRS, :KSM_ID, :OTPROD_S) ';
  upd_otchet.ModifySQL.Text := 'update "c:\work\' + machine + '\otchet.dbf" '
                               + 'set MES1 = :MES1, OTSTRK = :OTSTRK, OTPROD = :OTPROD, '
                               + 'OTKPN = :OTKPN, OTKVI = :OTKVI, OTMATR = :OTMATR, '
                               + 'NMAT = :NMAT, OTCENA = :OTCENA, CENAZA = :CENAZA, '
                               + 'OSTSN = :OSTSN, OSTNZN = :OSTNZN, PRIX = :PRIX, '
                               + 'ZAG = :ZAG, RASM = :RASM, RASG = :RASG, PERS = :PERS, '
                               + 'PERP = :PERP, OSTSK = :OSTSK, OSTZK = :OSTZK, '
                               + 'PRIXK = :PRIXK, RASK = :RASK, FACTK = :FACTK, '
                               + 'FACTM = :FACTM, PEREM = :PEREM, PEREG = :PEREG, '
                               + 'OTRAZ = :OTRAZ, PKV = :PKV, PGD = :PGD, MES = :MES, '
                               + 'PR = :PR, PRS = :PRS, KSM_ID = :KSM_ID, OTPROD_S = :OTPROD_S '
                               + 'where OTSTRK = :OLD_OTSTRK and OTPROD = :OLD_OTPROD and '
                               + 'OTMATR = :OLD_OTMATR and OTRAZ = :OLD_OTRAZ ';
end;

procedure TFPerOtchet.setPrizmText;
begin
  prizm.Close;
  prizm.EhSQL.Text := 'select * from ''c:\work\' + machine + '\prizm.dbf'' prizm '
                      + 'where prizm.ncstrk = :struk_id and prizm.ncprod = :ksm_idpr ';
  upd_prizm.DeleteSQL.Text := 'delete from "c:\work\' + machine + '\prizm.dbf" '
                              + 'where NCSTRK = :OLD_NCSTRK and NCPROD = :OLD_NCPROD and '
                              + 'NCMATR = :OLD_NCMATR and NCRAZ = :OLD_NCRAZ ';
  upd_prizm.InsertSQL.Text := 'insert into "c:\work\' + machine + '\prizm.dbf" '
                              + '(NCSTRK, NCPROD, NCKPN, NCKVI, NCMATR, PMFORM, '
                              + 'PMGR, PMFORN, PMNSH, NCRAZ, MARK, KSM_ID, NCPROD_S) '
                              + 'values (:NCSTRK, :NCPROD, :NCKPN, :NCKVI, :NCMATR, '
                              + ':PMFORM, :PMGR, :PMFORN, :PMNSH, :NCRAZ, :MARK, :KSM_ID, :NCPROD_S) ';
  upd_prizm.ModifySQL.Text := 'update "c:\work\' + machine + '\prizm.dbf" '
                              + 'set NCSTRK = :NCSTRK, NCPROD = :NCPROD, NCKPN = :NCKPN, '
                              + 'NCKVI = :NCKVI, NCMATR = :NCMATR, PMFORM = :PMFORM, '
                              + 'PMGR = :PMGR, PMFORN = :PMFORN, PMNSH = :PMNSH, '
                              + 'NCRAZ = :NCRAZ, MARK = :MARK, KSM_ID = :KSM_ID, '
                              + 'NCPROD_S = :NCPROD_S '
                              + 'where NCSTRK = :OLD_NCSTRK and NCPROD = :OLD_NCPROD and '
                              + 'NCMATR = :OLD_NCMATR and NCRAZ = :OLD_NCRAZ ';
end;

procedure TFPerOtchet.setSpprodDbfText;
begin
  q_spprodDbf.Close;
  q_spprodDbf.EhSQL.Text := 'select * from ''c:\work\' + machine + '\spprod.dbf'' spprod '
                            + 'where spprod.struk_id = ' + IntToStr(vStruk_id) + ' ';
  up_q_spprodDbf.DeleteSQL.Text := 'delete from "c:\work\' + machine + '\spprod.dbf" '
                                   + 'where KSM_ID = :OLD_KSM_ID ';
  up_q_spprodDbf.InsertSQL.Text := 'insert into "c:\work\' + machine + '\spprod.dbf" '
                                   + '(SPROD, SPPOL, SPPRN, SPVIS, SPSTAD, SPNAME, SPSNAM, '
                                   + 'SPKEI, SPCENA, SPCENAB, SPCENAR, SPCEH, SPXRKT, '
                                   + 'SPRODS, CODE, SPKEIS, INPUT1, INPUT2, UMN, SPRIZ, '
                                   + 'SPKEY, SPNAMES, EAN13, KORG, STRUK_ID, GOST, NEW_KOD, '
                                   + 'KSM_ID, ACTIVP, NAM) '
                                   + 'values (:SPROD, :SPPOL, :SPPRN, :SPVIS, :SPSTAD, '
                                   + ':SPNAME, :SPSNAM, :SPKEI, :SPCENA, :SPCENAB, '
                                   + ':SPCENAR, :SPCEH, :SPXRKT, :SPRODS, :CODE, :SPKEIS, '
                                   + ':INPUT1, :INPUT2, :UMN, :SPRIZ, :SPKEY, :SPNAMES, '
                                   + ':EAN13, :KORG, :STRUK_ID, :GOST, :NEW_KOD, :KSM_ID, '
                                   + ':ACTIVP, :NAM) ';
  up_q_spprodDbf.ModifySQL.Text := 'update "c:\work\' + machine + '\spprod.dbf" '
                                   + 'set SPROD = :SPROD, SPPOL = :SPPOL, SPPRN = :SPPRN, '
                                   + 'SPVIS = :SPVIS, SPSTAD = :SPSTAD, SPNAME = :SPNAME, '
                                   + 'SPSNAM = :SPSNAM, SPKEI = :SPKEI, SPCENA = :SPCENA, '
                                   + 'SPCENAB = :SPCENAB, SPCENAR = :SPCENAR, SPCEH = :SPCEH, '
                                   + 'SPXRKT = :SPXRKT, SPRODS = :SPRODS, CODE = :CODE, '
                                   + 'SPKEIS = :SPKEIS, INPUT1 = :INPUT1, INPUT2 = :INPUT2, '
                                   + 'UMN = :UMN, SPRIZ = :SPRIZ, SPKEY = :SPKEY, '
                                   + 'SPNAMES = :SPNAMES, EAN13 = :EAN13, KORG = :KORG, '
                                   + 'STRUK_ID = :STRUK_ID, GOST = :GOST, NEW_KOD = :NEW_KOD, '
                                   + 'KSM_ID = :KSM_ID, ACTIVP = :ACTIVP, NAM = :NAM '
                                   + 'where KSM_ID = :OLD_KSM_ID ';
  t_spprodDbf.Close;
  t_spprodDbf.TableName := 'c:\work\' + machine + '\spprod.dbf';
end;

procedure TFPerOtchet.saveSpprodDbfFile;
begin
  if (not FileExists('f:\' + machine + '\otchbas\spprod_' + IntToStr(mes) + '.dbf')) then
    FileCopy('f:\' + machine + '\otchbas\spprod.dbf',
             'f:\' + machine + '\otchbas\spprod_' + IntToStr(mes) + '.dbf');
end;

procedure TFPerOtchet.updatePCSppod;
begin
  saveSpprodDbfFile;
  setSpprodDbfText;
  if (openQSpprodDbf()) then
  begin
    isSpprodDbfInKartv;
//    packSpprodDbf;
//    clearSpprodDbf;
    isKartvInSpprodDbf;
  end;
end;

procedure TFPerOtchet.Otchet_ST;
VAR
  s_fnorm : double;
  s_pereras : double;
  s_fnormg : double;
  s_pererasg : double;
  v_PERE : VARIANT;
  s_RASXG : DOUBLE;
  st_ksm : string;
  v_rasm : double;
  s_kart : integer;
  sv_keiN : string;
  st_ksm1 : string;
  v_norm : double;
  v_znak : integer;
  mmes : string;
begin
  v_rasm := 0;
{ DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT DISTINCT NORM.KSM_ID,');
 DM1.IBQuery1.SQL.Add('NORM.KRAZ,NORM.PLNORM,NORM.KEI_ID KEIN,MATROP.KEI_ID');
 DM1.IBQuery1.SQL.Add(' FROM norm_view'+'('+'119,'+inttostr(god)+','+inttostr(mes)+','+inttostr(s_kodp)+',0,0)'+' NORM ');}
// DM1.IBQuery1.SQL.Add(' FROM NORM');
{ DM1.IBQuery1.SQL.Add(' LEFT JOIN MATROP ON (NORM.KSM_ID = MATROP.KSM_ID)');}
// DM1.IBQuery1.SQL.Add(' WHERE  NORM.KODP='+INTTOSTR(s_KODP)
// + ' AND NORM.mes='+INTTOSTR(mes)
// + ' AND NORM.god='+INTTOSTR(god));
{ DM1.IBQuery1.Active := True;}
  if (not otchet.Active) then
  begin
    otchet.ParamByName('struk_id').AsString := s_stkod;
    otchet.ParamByName('ksm_idpr').AsString := st_kodp;
    otchet.Open;
  end;
  Query_Otchet.Close;
// Query_otchet.ParamByName('struk').AsInteger:=vStruk_id;
  Query_otchet.ParamByName('KODP').AsInteger := s_kodp;
  Query_otchet.MacroByName('DAT1').AsSTRING := '''' + s_DAT1 + '''';
  Query_otchet.MacroByName('DAT2').AsSTRING := '''' + s_DAT2 + '''';
  Query_otchet.MacroByName('Mes').AsSTRING := inttostr(mes);
  Query_otchet.MacroByName('God').AsSTRING := inttostr(god);
  Query_Otchet.Open;
  While (not Query_Otchet.Eof) do
  begin
    if (Length(trim(inttostr(Query_OtchetKSM_ID.AsInteger))) = 1) then
      sT_ksm := '0000' + trim(inttostr(Query_OtchetKSM_ID.AsInteger));
    if (length(trim(inttostr(Query_OtchetKSM_ID.AsInteger))) = 2) then
      sT_ksm := '000' + trim(inttostr(Query_OtchetKSM_ID.AsInteger));
    if (length(trim(inttostr(Query_OtchetKSM_ID.AsInteger))) = 3) then
      sT_ksm := '00' + trim(inttostr(Query_OtchetKSM_ID.AsInteger));
    if (length(trim(inttostr(Query_OtchetKSM_ID.AsInteger))) = 4) then
      sT_ksm := '0' + trim(inttostr(Query_OtchetKSM_ID.AsInteger));
    if (length(trim(inttostr(Query_OtchetKSM_ID.AsInteger))) = 5) then
      sT_ksm := trim(inttostr(Query_OtchetKSM_ID.AsInteger));
    s_kei := Query_OtchetKEI_ID.AsInteger;
    s_ksm := Query_OtchetKsm_ID.AsInteger;
    s_kART := Query_OtchetKART_ID.AsInteger;
//  DM1.IBQuery1.First;
//  IF DM1.IBQuery1.Locate('ksm_id;Kraz',VarArrayOf([Query_OtchetKsm_id.AsInteger,Query_OtchetKRaz.AsInteger]),[]) THEN
    Normt.first;
    if (Normt.Locate('razdel_id;ksm_id',
                     VarArrayOf([Query_Otchetrazdel_id.AsInteger,
                                 Query_OtchetKsm_id.AsInteger]), [])) then
    begin
      v_norm := Normt.FieldByName('plnorm').asfloat;
      s_pereras := v_rasm - Normt.FieldByName('PLNORM').AsFloat * v_vipusk;
      v_keiN := Normt.FieldByName('kein').AsInteger
    end
    else
    begin
      v_norm := 0;
      s_pereras := 0;
      v_keiN := s_kei;
    end;
{  IF DM1.IBQuery1.Locate('ksm_id;Kraz',VarArrayOf([Query_OtchetKsm_id.AsInteger,Query_OtchetKRaz.AsInteger]),[]) THEN
  begin
   s_pereras:=v_rasm-DM1.IBQuery1.FieldByName('PLNORM').AsFloat*v_vipusk;
   v_keiN:=DM1.IBQuery1.FieldByName('kein').AsInteger
  end
  else
  begin
   s_pereras:=0;
   v_keiN:=s_kei;
  end;}
    v_rasm := Query_OtchetRash_virab_period.AsFloat * dm1.Koef_per(v_kein, s_kei, s_ksm);
    if (mes < 10) then
      mmes := ' ' + inttostr(mes)
    else
      mmes := inttostr(mes);
    Otchet.Insert;
    Otchet.FieldByName('otstrk').AsVariant := s_stkod;
    Otchet.FieldByName('otprod').AsVariant := st_kodp;
    Otchet.FieldByName('otmatr').AsVariant := st_ksm;
    Otchet.FieldByName('mes').AsVariant := mmes;
    Otchet.FieldByName('otraz').AsVariant := inttostr(Query_OtchetKraz.AsInteger);
    Otchet.FieldByName('NMAT').AsVariant := Query_OtchetNMAT.AsString;
    Otchet.FieldByName('OTKPN').AsVariant := s_spprn;
    Otchet.FieldByName('OTKVI').AsVariant := s_spvis;
    Otchet.FieldByName('Ostsn').AsVariant := Query_Otchet.FieldByName('Ostatok_begin_S').AsFloat
                                             * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('Ostnzn').AsVariant := Query_Otchet.FieldByName('Ostatok_begin_NZ').AsFloat
                                              * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('Prix').AsVariant := Query_OtchetPrix_period.AsFloat
                                            * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('Rasm').AsVariant := v_rasm;
    Otchet.FieldByName('Zag').AsVariant := Query_OtchetZag_period.AsFloat
                                           * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('Pers').AsVariant := Query_OtchetPers.AsFloat
                                            * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('Perp').AsVariant := Query_OtchetPernz.AsFloat
                                            * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('Ostsk').AsVariant := Query_Otchet.FieldByName('Ostatok_end_S').AsFloat
                                             * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('Ostzk').AsVariant := Query_Otchet.FieldByName('Ostatok_end_NZ').AsFloat
                                             * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('perem').AsVariant := s_pereras;
    if (Query_OtchetPers.AsFloat <> 0) then           // передача на другой препарат из сырья
    begin
      V_PERE := SelectToVarIB('SELECT DOCUMENT.TIP_OP_ID '
                              + ' FROM document'
                              + ' INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
                              + ' WHERE DOcUMENT.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                              + ' AND DOCUMENT.TIP_OP_ID=34'
                              + ' AND Document.Date_op between ' + '''' +s_dat1
                              + '''' + ' and ' + '''' + s_dat2 + ''''
                              + ' AND KART.KART_ID=' + INTTOSTR(S_KART),
                              dm1.belmed, dm1.ibt_read);
      if (v_PERE <> NULL) then
        OtchetPrs.AsVariant := 1
      else
        OtchetPrs.AsInteger := 0;
    end
    else
      OtchetPrs.AsInteger := 0;

    if (Query_OtchetPerNZ.AsFloat <> 0) then          // передача из незавершенки
    begin
      V_PERE := SelectToVarIB('SELECT DOCUMENT.TIP_OP_ID '
                              + ' FROM document'
                              + ' INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
                              + ' WHERE DOcUMENT.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                              + ' AND DOCUMENT.TIP_OP_ID=37'
                              + ' AND Document.Date_op between ' + '''' + s_dat1
                              + '''' + ' and ' + '''' + s_dat2 + ''''
                              + ' AND KART.KART_ID=' + INTTOSTR(S_KART),
                              dm1.belmed, dm1.ibt_read);
      if (v_PERE <> NULL) then
        OtchetPr.AsVariant := 1
      else
        OtchetPr.AsInteger := 0;
    end
    else
      OtchetPr.AsInteger := 0;
    if (v_vipusk <> 0) then
      Otchet.FieldByName('factm').AsVariant := v_rasm / v_vipusk
    else
      Otchet.FieldByName('factm').AsVariant := 0;
    dm1.CEH_OTCHET.First;
    if (dm1.CEH_OTCHET.Locate('kart_id',
                              VarArrayOf([Query_Otchet.FieldByName('KART_ID').AsInteger]),
                              [])) then
    begin
      Otchet.FieldByName('rasg').AsVariant := dm1.CEH_OtchetKol_Rasx.AsVariant;
      Otchet.FieldByName('pereg').AsVariant := dm1.CEH_OtchetKol.AsVariant;
    end
    else
    BEGIN
      Otchet.FieldByName('rasg').AsVariant := v_rasm;
      Otchet.FieldByName('pereg').AsVariant := s_pereras;
    END;
// расход с на выпуск начала квартала
    Ras_Vir.First;
    if (Ras_Vir.Locate('kart_id',
                       VarArrayOf([Query_Otchet.FieldByName('KART_ID').AsInteger]),
                       [])) then
      Otchet.FieldByName('rask').AsVariant := Ras_Vir.FieldByName('Rash_virab_period').AsVariant
    else
      Otchet.FieldByName('rask').AsVariant := v_rasm;
// ввод цены прихода из старого отчета
    if (not Otchets.Active) then
      Otchets.Open;
    otchets.First;
    if (otchets.Locate('otstrk;otmatr', VarArrayOf([s_stkod, sT_ksm]), [])) then
      Otchet.FieldByName('otcena').AsVariant := Otchets.FieldByName('otcena').AsVariant
    else
      Otchet.FieldByName('otcena').AsVariant := 0;
    Otchet.Post;
// ввод цены прихода из RASXOD главной машины
    st_ksm1 := '00' + st_ksm;
    rasxod.Open;
    RASXOD.First;
    Otchet.edit;
    if (RASXOD.Locate('cex;numkcu', VarArrayOf([s_stkod, sT_ksm1]), [])) then
      Otchet.FieldByName('otcena').AsVariant := RASXOD.FieldByName('money').AsVariant;
    Otchet.post;
// добавление в NCMATRD
    if (Length(trim(inttostr(v_kein))) = 1) then
      sv_kein := '00' + trim(inttostr(v_kein)) + ' ';
    if (Length(trim(inttostr(v_kein))) = 2) then
      sv_kein := '0' + trim(inttostr(v_kein)) + ' ';
    if (Length(trim(inttostr(v_kein))) = 3) then
      sv_kein := trim(inttostr(v_kein)) + ' ';
    if (Length(trim(inttostr(S_keiP))) = 1) then
      sv_keiP := '00' + trim(inttostr(S_keiP)) + ' ';
    if (Length(trim(inttostr(S_keiP))) = 2) then
      sv_keiP := '0' + trim(inttostr(S_keiP)) + ' ';
    if (Length(trim(inttostr(S_keiP))) = 3) then
      sv_keiP := trim(inttostr(S_keiP)) + ' ';
    if (not Ncmatrd.Active) then
    begin
      ncmatrd.ParamByName('struk_id').AsString := s_stkod;
      Ncmatrd.Open;
    end;
{  Normt.first;
  if Normt.Locate('razdel_id;ksm_id',VarArrayOf([Query_Otchetrazdel_id.AsInteger,Query_OtchetKsm_id.AsInteger]),[]) then
    v_norm:=Normt.FieldByName('plnorm').asfloat
  else
    v_norm:=0;}
    Ncmatrd.First;
    if (not Ncmatrd.Locate('ncstrk;ncprod;ncraz;ncmatr',
                           VarArrayOf([s_stkod, sT_kodp, inttostr(Query_OtchetKraz.AsInteger), sT_ksm]),
                           [])) then
    begin
      Ncmatrd.Append;
      Ncmatrd.FieldByName('ncstrk').AsVariant := s_stkod;
      Ncmatrd.FieldByName('ncprod').AsVariant := st_kodp;
      Ncmatrd.FieldByName('ncmatr').AsVariant := st_ksm;
      Ncmatrd.FieldByName('ncraz').AsVariant := inttostr(Query_OtchetKraz.AsInteger);
      Ncmatrd.FieldByName('NMATs').AsVariant := Query_OtchetNMAT.AsString;
      Ncmatrd.FieldByName('ncKPN').AsVariant := s_spprn;
      Ncmatrd.FieldByName('ncKVI').AsVariant := s_spvis;
      Ncmatrd.FieldByName('nccena').AsVariant := Otchets.FieldByName('otcena').AsVariant;
      Ncmatrd.FieldByName('ncediz').AsVariant := sv_keip;
      Ncmatrd.FieldByName('ncedizm').AsVariant := sv_keiN;
      Ncmatrd.FieldByName('ncnrds').AsVariant := v_norm;
      Ncmatrd.Post;
    end
    else
    begin
      Ncmatrd.Edit;
      Ncmatrd.FieldByName('nccena').AsVariant := Otchets.FieldByName('otcena').AsVariant;
      Ncmatrd.FieldByName('ncediz').AsVariant := sv_keip;
      Ncmatrd.FieldByName('ncedizm').AsVariant := Sv_keiN;
      Ncmatrd.FieldByName('ncnrds').AsVariant := v_norm;
      Ncmatrd.Post;
    end;
  // добавление в PRIZM
    if (not Prizm.Active) then
    begin
      prizm.ParamByName('struk_id').AsString := s_stkod;
      prizm.ParamByName('ksm_idpr').AsString := sT_kodp;
      Prizm.Open;
    end;
    FSprFormul.Ceh_Normz.First;
    if (FSprFormul.Ceh_Normz.Locate('razdel_id;ksm_id_mat',
                                    VarArrayOf([Query_Otchetrazdel_id.AsInteger, Query_OtchetKsm_id.AsInteger]),
                                    [])) then
      IF (FSprFormul.Ceh_Normz.FieldByName('decznak').AsVariant <> NULL) THEN
        v_znak := FSprFormul.Ceh_Normz.FieldByName('decznak').AsInteger
      else
        v_znak := 3
    else
      v_znak := 3;
    Prizm.First;
    if (not Prizm.Locate('ncstrk;ncprod;ncraz;ncmatr',
                         VarArrayOf([s_stkod, sT_kodp, inttostr(Query_OtchetKraz.AsInteger), sT_ksm]),
                         [])) then
    begin
      Prizm.Append;
      Prizm.FieldByName('ncstrk').AsVariant := s_stkod;
      Prizm.FieldByName('ncprod').AsVariant := st_kodp;
      Prizm.FieldByName('ncmatr').AsVariant := st_ksm;
      Prizm.FieldByName('ncraz').AsVariant := inttostr(Query_OtchetKraz.AsInteger);
      Prizm.FieldByName('ncKPN').AsVariant := s_spprn;
      Prizm.FieldByName('ncKVI').AsVariant := s_spvis;
      Prizm.FieldByName('pmform').AsString := inttostr(v_znak);
      Prizm.FieldByName('pmforn').AsString := inttostr(v_znak);
      Prizm.FieldByName('pmnsh').AsVariant := 0;
      Prizm.FieldByName('pmgr').AsVariant := 1;
      Prizm.Post;
    end
    else
    begin
      Prizm.Edit;
      Prizm.FieldByName('pmform').AsString := inttostr(v_znak);
      Prizm.FieldByName('pmforn').AsString := inttostr(v_znak);
      Prizm.Post;
    end;
    Query_Otchet.Next;
  end;
end;

procedure TFPerOtchet.SpinEdit3Change(Sender: TObject);
begin
{mes:=SpinEdit3.Value;
IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  DM1.DOCUMENT.Close;
  DM1.DOcUMENT.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.TIP_OP_ID=36'
  + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
  DM1.DOCUMENT.OPEN;
  IF NOT DM1.Document.Eof THEN
    VDOCUMENT_ID:=DM1.DocumentDOc_ID.ASINTEGER
  else VDOCUMENT_ID:=0;
  DM1.KARTV.Close;
  DM1.KartV.MacroByName('USL').AsString:='WHERE KARTv.DOC_ID='+INTTOSTR(VDOCUMENT_id);
  DM1.KartV.MacroByName('SORT').AsString:='ORDER BY SPPROD.kod_prod';
  DM1.KARTV.OPEN; }

end;

procedure TFPerOtchet.SpinEdit4Change(Sender: TObject);
begin
{god:=SpinEdit4.Value;
IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  DM1.DOCUMENT.Close;
  DM1.DOcUMENT.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.TIP_OP_ID=36'
  + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
  DM1.DOCUMENT.OPEN;
  IF NOT DM1.Document.Eof THEN
    VDOCUMENT_ID:=DM1.DocumentDOc_ID.ASINTEGER
  else VDOCUMENT_ID:=0;
  DM1.KARTV.Close;
  DM1.KartV.MacroByName('USL').AsString:='WHERE KARTv.DOC_ID='+INTTOSTR(VDOCUMENT_id);
  DM1.KartV.MacroByName('SORT').AsString:='ORDER BY SPPROD.Kod_prod';
  DM1.KARTV.OPEN;}

end;

procedure TFPerOtchet.FormShow(Sender: TObject);
begin
  if FSprFormul = nil then
    FSprFormul := TfSprFormul.Create(Application);
  if First_vxod then
  begin
    First_vxod := false;
    if (s_stkod = '0500') or (s_stkod = '2412') or (s_stkod = '1600')
       or (s_stkod = '1200') or (s_stkod = '2100') or (s_stkod = '0800')
       or (s_stkod = '0100') or (s_stkod = '0400')then
    begin
      machine := 'pc1';
    end
    else
    begin
      machine := 'pc2';
    end;
    spisok.TableName := 'F:\' + machine + '\ot\otchbas\spisok.dbf';
    otchetOld.TableName := 'f:\' + machine + '\ot\otchbas\otchet.dbf';
    otchets.TableName := 'c:\work\' + machine + '\otchets.dbf';
    prizpr.TableName := 'F:\' + machine + '\ot\otchbas\prizpr.dbf';
    regot.TableName := 'F:\' + machine + '\ot\otchbas\regot.dbf';
    rasxod.TableName := 'c:\work\' + machine + '\rasxod.dbf';
    setPrizmText;
    setOtchetText;
    setNcmatrdText;

    ComboBox2.OnChange := nil;
    ComboBox1.OnChange := nil;
    ComboBox1.ItemIndex := mes - 1;
    ComboBox2.ItemIndex := god - 2000;
    ComboBox2.OnChange := ComboBox2Change;
    ComboBox1.OnChange := ComboBox1Change;

//  SpinEdit3.Value:=mes;
//  SpinEdit4.Value:=god;
    mes_vib := mes;
    god_vib := god;
    IF MES_vib < 10 THEN
      S_MES := '0' + INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
    S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
    S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
    DM1.DOCUMENT.Close;
    DM1.DOcUMENT.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
                                              + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                                              + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
    DM1.DOCUMENT.OPEN;
    IF NOT DM1.Document.Eof THEN
      VDOCUMENT_ID:=DM1.DocumentDOc_ID.ASINTEGER
    else
      VDOCUMENT_ID:=0;
    DM1.KARTV.Close;
    DM1.KartV.MacroByName('USL').AsString:='WHERE KARTv.DOC_ID='+INTTOSTR(VDOCUMENT_id);
    DM1.KartV.MacroByName('SORT').AsString:='ORDER BY SPPROD.KOD_Prod';
    DM1.KARTV.OPEN;
    while not DM1.KARTV.Eof do
    begin
      S_DATN:='01.01.'+INTTOSTR(GOD);
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
      DM1.IBQuery1.SQL.Add(' FROM KARTv');
      DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
      DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
                            + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                            + ' AND KARTv.KSM_ID='+INTTOSTR(DM1.KARTVKsm_id.AsInteger)
                            + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
      DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
      DM1.IBQuery1.Active := True;
      DM1.KARTV.Edit;
      if not dm1.IBQuery1.Eof then
        DM1.KARTVVipNg.AsFloat:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat
      ELSE
        DM1.KARTVVipNg.AsFloat:=0;
      DM1.KARTV.Post;
      DM1.KARTV.Next;
    end;
  END;
end;

procedure TFPerOtchet.frReport1GetValue(const ParName: string;
  var ParValue: Variant);
begin
  nammes := dm1.getStrMes(mes);
  if (ParName = 'nammes') then
    ParValue := nammes;
  if (ParName = 'namceh') then
    ParValue := FGlMenu.RxLabel1.Caption;
  if (ParName = 'god') then
    ParValue := god;
end;

procedure TFPerOtchet.FormCreate(Sender: TObject);
begin
  First_vxod := true;
end;

procedure TFPerOtchet.ComboBox1Change(Sender: TObject);
begin
 god:=ComboBox2.ItemIndex+2000;
 mes:=ComboBox1.ItemIndex+1;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  DM1.DOCUMENT.Close;
  DM1.DOcUMENT.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
  + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
  DM1.DOCUMENT.OPEN;
  IF NOT DM1.Document.Eof THEN
    VDOCUMENT_ID:=DM1.DocumentDOc_ID.ASINTEGER
  else VDOCUMENT_ID:=0;
  DM1.KARTV.Close;
  DM1.KartV.MacroByName('USL').AsString:='WHERE KARTv.DOC_ID='+INTTOSTR(VDOCUMENT_id);
  DM1.KartV.MacroByName('SORT').AsString:='ORDER BY SPPROD.kod_prod';
  DM1.KARTV.OPEN;
end;

procedure TFPerOtchet.ComboBox2Change(Sender: TObject);
begin
 god:=ComboBox2.ItemIndex+2000;
 mes:=ComboBox1.ItemIndex+1;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  DM1.DOCUMENT.Close;
  DM1.DOcUMENT.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
  + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
  DM1.DOCUMENT.OPEN;
  IF NOT DM1.Document.Eof THEN
    VDOCUMENT_ID:=DM1.DocumentDOc_ID.ASINTEGER
  else VDOCUMENT_ID:=0;
  DM1.KARTV.Close;
  DM1.KartV.MacroByName('USL').AsString:='WHERE KARTv.DOC_ID='+INTTOSTR(VDOCUMENT_id);
  DM1.KartV.MacroByName('SORT').AsString:='ORDER BY SPPROD.kod_prod';
  DM1.KARTV.OPEN;
end;

procedure TFPerOtchet.DBGridEh2SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
 Usl_Sort := '';
 for i := 0 to DBGridEh2.SortMarkedColumns.Count-1 do
 BEGIN
  if DBGridEh2.SortMarkedColumns[i].Title.SortMarker = smUpEh then
    Usl_Sort := Usl_Sort+ 'SPPROD."'+ DBGridEh2.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
   else
    Usl_Sort := USL_Sort+'SPPROD."'+ DBGridEh2.SortMarkedColumns[i].FieldName + '"'+ ', '
 END;
 if Usl_Sort <> '' then
 begin
  Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
  DM1.KARTV.Close;
  DM1.KartV.MacroByName('USL').AsString:='WHERE KARTv.DOC_ID='+INTTOSTR(VDOCUMENT_id);
  DM1.KartV.MacroByName('SORT').AsString:='order by '+usl_sort;
  DM1.KARTV.OPEN;
  DM1.KARTV.First;
  while not DM1.KARTV.Eof do
  begin
   S_DATN:='01.01.'+INTTOSTR(GOD);
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
   DM1.IBQuery1.SQL.Add(' FROM KARTv');
   DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
   + ' AND KARTv.KSM_ID='+INTTOSTR(DM1.KARTVKsm_id.AsInteger)
   + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
   DM1.IBQuery1.Active := True;
   DM1.KARTV.Edit;
   if not dm1.IBQuery1.Eof then
    DM1.KARTVVipNg.AsFloat:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat
   ELSE  DM1.KARTVVipNg.AsFloat:=0;
   DM1.KARTV.Post;
   DM1.KARTV.Next;
  end;
 end;
end;

procedure TFPerOtchet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm1.VoprosWriteDoc;
  mes := mes_vib;
  god := god_vib;
  Otchet.Close;
  Otchets.Close;
  Prizpr.Close;
  Prizm.Close;
  regot.Close;
  Spisok.close;
  ncmatrd.Close;
  rasxod.Close;
  First_vxod := true;
end;


procedure TFPerOtchet.ToolButton1Click(Sender: TObject);
begin
  updatePCSppod;
end;

procedure TFPerOtchet.ToolButton4Click(Sender: TObject);
begin
  perOtchet;
end;

procedure TFPerOtchet.ToolButton5Click(Sender: TObject);
begin
  FrReport1.LoadFromFile(reportsPath + 'P_VIPUSK.frf');
  FrReport1.ShowReport;
end;

end.
