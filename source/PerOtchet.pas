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
    Otchet: TTable;
    OtchetMES1: TStringField;
    OtchetOTSTRK: TStringField;
    OtchetOTPROD: TStringField;
    OtchetOTKPN: TStringField;
    OtchetOTKVI: TStringField;
    OtchetOTMATR: TStringField;
    OtchetNMAT: TStringField;
    OtchetOTCENA: TFloatField;
    OtchetCENAZA: TFloatField;
    OtchetOSTSN: TFloatField;
    OtchetOSTNZN: TFloatField;
    OtchetPRIX: TFloatField;
    OtchetZAG: TFloatField;
    OtchetRASM: TFloatField;
    OtchetRASG: TFloatField;
    OtchetPERS: TFloatField;
    OtchetPERP: TFloatField;
    OtchetOSTSK: TFloatField;
    OtchetOSTZK: TFloatField;
    OtchetPRIXK: TFloatField;
    OtchetRASK: TFloatField;
    OtchetFACTK: TFloatField;
    OtchetFACTM: TFloatField;
    OtchetPEREM: TFloatField;
    OtchetPEREG: TFloatField;
    OtchetOTRAZ: TStringField;
    OtchetPKV: TStringField;
    OtchetPGD: TStringField;
    OtchetMES: TStringField;
    OtchetPR: TSmallintField;
    OtchetPRS: TSmallintField;
    OtchetKSM_ID: TFloatField;
    OtchetOTPROD_S: TStringField;
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
    ncmatrd: TTable;
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
    prizm: TTable;
    prizmNCSTRK: TStringField;
    prizmNCPROD: TStringField;
    prizmNCKPN: TStringField;
    prizmNCKVI: TStringField;
    prizmNCMATR: TStringField;
    prizmPMFORM: TStringField;
    prizmPMGR: TStringField;
    prizmPMFORN: TStringField;
    prizmPMNSH: TStringField;
    prizmNCRAZ: TStringField;
    prizmMARK: TStringField;
    prizmKSM_ID: TFloatField;
    prizmNCPROD_S: TStringField;
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

    procedure setSpprodDbfText;
    procedure openWorkSes;
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
    q_spprodDbfSPPRN.AsString := q_spprodSPPRN.AsString;
    q_spprodDbfSPVIS.AsString := q_spprodSPVIS.AsString;
    q_spprodDbfSPNAME.AsString := q_spprodNMAT.AsString;
    q_spprodDbfSPSNAM.AsString := q_spprodNMATS.AsString;
    q_spprodDbfSPKEI.AsString := q_spprodKEI_ID.AsString;
    q_spprodDbfSPCEH.AsString := dm1.stkod;
    q_spprodDbfSPXRKT.AsString := q_spprodXARKT.AsString;
    q_spprodDbfSPRODS.AsString := Copy(q_spprodKSM_ID.AsString,
                                       length(q_spprodKSM_ID.AsString) - 2,
                                       length(q_spprodKSM_ID.AsString));
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
end;

function TFPerOtchet.openQSpprodDbf() : boolean;
begin
  result := false;
  openWorkSes;
  if (q_spprodDbf.Active) then
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
    workSes.NetFileDir := 'f:\' + machine + '\otchbas\';
    workSes.PrivateDir := 'f:\' + machine + '\otchbas\';
    workSes.Active := true;
  end;
end;

function TFPerOtchet.openTSpprodDbf() : boolean;
begin
  result := false;
  openWorkSes;
  if (t_spprodDbf.Active) then
    t_spprodDbf.Close;
  t_spprodDbf.Exclusive := true;
  t_spprodDbf.Open;
  if (t_spprodDbf.RecordCount > 0) then
    result := true;
end;

procedure TFPerOtchet.setSpprodDbfText;
begin
  if (q_spprodDbf.Active) then
    q_spprodDbf.Close;
  q_spprodDbf.EhSQL.Text := 'select * from ''f:\' + machine + '\otchbas\spprod.dbf'' spprod '
                            + 'where spprod.struk_id = ' + IntToStr(vStruk_id) + ' ';
  up_q_spprodDbf.DeleteSQL.Text := 'delete from "f:\' + machine + '\otchbas\spprod.dbf" '
                                   + 'where KSM_ID = :OLD_KSM_ID ';
  up_q_spprodDbf.InsertSQL.Text := 'insert into "f:\' + machine + '\otchbas\spprod.dbf" '
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
  up_q_spprodDbf.ModifySQL.Text := 'update "f:\' + machine + '\otchbas\spprod.dbf" '
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
  if (t_spprodDbf.Active) then
    t_spprodDbf.Close;
  t_spprodDbf.TableName := 'f:\' + machine + '\otchbas\spprod.dbf';
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
    packSpprodDbf;
//    clearSpprodDbf;
//    isKartvInSpprodDbf;
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
  if not otchet.Active then
    otchet.Active := true;
  Query_Otchet.Active := False;
// Query_otchet.ParamByName('struk').AsInteger:=vStruk_id;
  Query_otchet.ParamByName('KODP').AsInteger := s_kodp;
  Query_otchet.MacroByName('DAT1').AsSTRING := '''' + s_DAT1 + '''';
  Query_otchet.MacroByName('DAT2').AsSTRING := '''' + s_DAT2 + '''';
  Query_otchet.MacroByName('Mes').AsSTRING := inttostr(mes);
  Query_otchet.MacroByName('God').AsSTRING := inttostr(god);
  Query_Otchet.Active := True;
  While not Query_Otchet.Eof do
  begin
    if Length(trim(inttostr(Query_OtchetKSM_ID.AsInteger))) = 1 then
      sT_ksm := '0000' + trim(inttostr(Query_OtchetKSM_ID.AsInteger));
    if length(trim(inttostr(Query_OtchetKSM_ID.AsInteger))) = 2 then
      sT_ksm := '000' + trim(inttostr(Query_OtchetKSM_ID.AsInteger));
    if length(trim(inttostr(Query_OtchetKSM_ID.AsInteger))) = 3 then
      sT_ksm := '00' + trim(inttostr(Query_OtchetKSM_ID.AsInteger));
    if length(trim(inttostr(Query_OtchetKSM_ID.AsInteger))) = 4 then
      sT_ksm := '0' + trim(inttostr(Query_OtchetKSM_ID.AsInteger));
    if length(trim(inttostr(Query_OtchetKSM_ID.AsInteger))) = 5 then
      sT_ksm := trim(inttostr(Query_OtchetKSM_ID.AsInteger));
    s_kei := Query_OtchetKEI_ID.AsInteger;
    s_ksm := Query_OtchetKsm_ID.AsInteger;
    s_kART := Query_OtchetKART_ID.AsInteger;
//  DM1.IBQuery1.First;
//  IF DM1.IBQuery1.Locate('ksm_id;Kraz',VarArrayOf([Query_OtchetKsm_id.AsInteger,Query_OtchetKRaz.AsInteger]),[]) THEN
    Normt.first;
    if Normt.Locate('razdel_id;ksm_id',
                    VarArrayOf([Query_Otchetrazdel_id.AsInteger,
                                Query_OtchetKsm_id.AsInteger]), []) then
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
    if mes < 10 then
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
    if Query_OtchetPers.AsFloat <> 0 then
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
      if v_PERE <> NULL then
        OtchetPrs.AsVariant := 1
      else
        OtchetPrs.AsInteger := 0;
    end
    else
      OtchetPrs.AsInteger := 0;

    if Query_OtchetPerNZ.AsFloat <> 0 then
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
      if v_PERE <> NULL then
        OtchetPr.AsVariant := 1
      else
        OtchetPr.AsInteger := 0;
    end
    else
      OtchetPr.AsInteger := 0;
    if v_vipusk <> 0 then
      Otchet.FieldByName('factm').AsVariant := v_rasm / v_vipusk
    else
      Otchet.FieldByName('factm').AsVariant := 0;
    dm1.CEH_OTCHET.First;
    if dm1.CEH_OTCHET.Locate('kart_id',
                             VarArrayOf([Query_Otchet.FieldByName('KART_ID').AsInteger]),
                             []) then
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
    if Ras_Vir.Locate('kart_id',
                      VarArrayOf([Query_Otchet.FieldByName('KART_ID').AsInteger]),
                      []) then
      Otchet.FieldByName('rask').AsVariant := Ras_Vir.FieldByName('Rash_virab_period').AsVariant
    else
      Otchet.FieldByName('rask').AsVariant := v_rasm;
// ввод цены прихода из старого отчета
    if Otchets.Active = false then
      Otchets.Active := true;
    otchets.First;
    if otchets.Locate('otstrk;otmatr', VarArrayOf([s_stkod, sT_ksm]), []) then
      Otchet.FieldByName('otcena').AsVariant := Otchets.FieldByName('otcena').AsVariant
    else
      Otchet.FieldByName('otcena').AsVariant := 0;
    Otchet.Post;
// ввод цены прихода из RASXOD главной машины
    st_ksm1 := '00' + st_ksm;
    rasxod.Open;
    RASXOD.First;
    Otchet.edit;
    if RASXOD.Locate('cex;numkcu', VarArrayOf([s_stkod, sT_ksm1]), []) then
      Otchet.FieldByName('otcena').AsVariant := RASXOD.FieldByName('money').AsVariant;
    Otchet.post;
// добавление в NCMATRD
    if Length(trim(inttostr(v_kein))) = 1 then
      sv_kein := '00' + trim(inttostr(v_kein)) + ' ';
    if Length(trim(inttostr(v_kein))) = 2 then
      sv_kein := '0' + trim(inttostr(v_kein)) + ' ';
    if Length(trim(inttostr(v_kein))) = 3 then
      sv_kein := trim(inttostr(v_kein)) + ' ';
    if Length(trim(inttostr(S_keiP))) = 1 then
      sv_keiP := '00' + trim(inttostr(S_keiP)) + ' ';
    if Length(trim(inttostr(S_keiP))) = 2 then
      sv_keiP := '0' + trim(inttostr(S_keiP)) + ' ';
    if Length(trim(inttostr(S_keiP))) = 3 then
      sv_keiP := trim(inttostr(S_keiP)) + ' ';
    if Ncmatrd.Active = false then
      Ncmatrd.Active := true;
{  Normt.first;
  if Normt.Locate('razdel_id;ksm_id',VarArrayOf([Query_Otchetrazdel_id.AsInteger,Query_OtchetKsm_id.AsInteger]),[]) then
    v_norm:=Normt.FieldByName('plnorm').asfloat
  else
    v_norm:=0;}
    Ncmatrd.First;
    if not Ncmatrd.Locate('ncstrk;ncprod;ncraz;ncmatr',
                          VarArrayOf([s_stkod, sT_kodp, inttostr(Query_OtchetKraz.AsInteger), sT_ksm]),
                          []) then
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
    if Prizm.Active = false then
      Prizm.Active := true;
    FSprFormul.Ceh_Normz.First;
    if FSprFormul.Ceh_Normz.Locate('razdel_id;ksm_id_mat',
                                   VarArrayOf([Query_Otchetrazdel_id.AsInteger, Query_OtchetKsm_id.AsInteger]),
                                   []) then
      IF FSprFormul.Ceh_Normz.FieldByName('decznak').AsVariant <> NULL THEN
        v_znak := FSprFormul.Ceh_Normz.FieldByName('decznak').AsInteger
      else
        v_znak := 3
    else
      v_znak := 3;
    Prizm.First;
    if not Prizm.Locate('ncstrk;ncprod;ncraz;ncmatr',
                        VarArrayOf([s_stkod, sT_kodp, inttostr(Query_OtchetKraz.AsInteger), sT_ksm]),
                        []) then
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
      spisok.DatabaseName := 'ot';
      otchet.DatabaseName := 'ot';
      otchets.DatabaseName := 'pc1';
      prizpr.DatabaseName := 'ot';
      prizm.DatabaseName := 'ot';
      ncmatrd.DatabaseName := 'ot';
      regot.DatabaseName := 'ot';
      machine := 'pc1';
    end
    else
    begin
      spisok.DatabaseName := 'ot_pc2';
      otchet.DatabaseName := 'ot_pc2';
      otchets.DatabaseName := 'pc2';
      prizpr.DatabaseName := 'ot_pc2';
      prizm.DatabaseName := 'ot_pc2';
      ncmatrd.DatabaseName := 'ot_pc2';
      regot.DatabaseName := 'ot_pc2';
      machine := 'pc2';
    end;
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
  if (Otchet.Active = true) then
    Otchet.Close;
  if (Otchets.Active = true) then
    Otchets.Close;
  if (Prizpr.active = true) then
    Prizpr.Close;
  if (Prizm.active = true) then
    Prizm.Close;
  if (regot.active = true) then
    regot.Close;
  if (Spisok.Active = true) then
    Spisok.close;
  if (ncmatrd.Active = true) then
    ncmatrd.Close;
  if (rasxod.Active = true) then
    rasxod.Close;
end;


procedure TFPerOtchet.ToolButton1Click(Sender: TObject);
begin
  updatePCSppod;
end;

procedure TFPerOtchet.ToolButton4Click(Sender: TObject);
var
  S_DATk : string;
  v_vipuskk : double;
begin
  IF (VDOCUMENT_ID = 0) OR (DM1.KARTV.Eof) THEN
  begin
    DM1.DOCUMENT.Close;
    DM1.DOcUMENT.MacroByName('USL').AsString := 'WHERE DOcUMENT.STRUK_ID = '
                                                + INTTOSTR(VsTRUK_ID)
                                                + ' AND DOCUMENT.TIP_OP_ID = 36 and document.tip_dok_id=74'
                                                + ' AND Document.Date_op between '
                                                + '''' + s_dat1 + '''' + ' and '
                                                + '''' + s_dat2 + '''';
    DM1.DOCUMENT.OPEN;
    IF NOT DM1.Document.Eof THEN
      VDOCUMENT_ID := DM1.DocumentDOc_ID.ASINTEGER
    else
      VDOCUMENT_ID := 0;
    DM1.KARTV.Close;
    DM1.KartV.MacroByName('USL').AsString := 'WHERE KARTv.DOC_ID = ' + INTTOSTR(VDOCUMENT_id);
    DM1.KartV.MacroByName('SORT').AsString := 'ORDER BY SPPROD.Kod_prod';
    DM1.KARTV.OPEN;
  end;
  IF (VDOCUMENT_ID <> 0) and (not DM1.KARTV.Eof) THEN
  begin
    Splash := ShowSplashWindow(AniBmp1,
                               'Передача данных из цеха в АСУ. Подождите, пожалуйста...',
                               True,
                               nil);
    regot.Filter := 'CEX=' + '''' + S_STKOD + '''' + ' AND MES=' + INTTOSTR(MES);
    regot.Filtered := TRUE;
    regot.Open;
    IF REGOT.Eof THEN
    BEGIN
      regot.Insert;
      regotdatcex.AsString := datetostr(date);
      regotCex.AsString := s_stkod;
      regotMes.AsInteger := mes;
      regot.Post;
    END
    ELSE
    BEGIN
      regot.Last;
      IF regotDATACY.AsString = '' THEN
      BEGIN
        regot.Edit;
        regotdatcex.AsString := datetostr(date);
        regotMes.AsInteger := mes;
        regot.Post;
      END
      ELSE
      BEGIN
        Splash.Free;
        MessageDlg(' Данные НЕ переданы, т.к. они были уже переданы и использованы!',
                   mtWarning, [mbOK], 0);
        SysUtils.Abort;
      END;
    END;
    if Otchets.Active = false then
      Otchets.Active := true;
    if Otchet.Active = true then
      Otchet.Close;
    otchet.Filter := 'otstrk=' + '''' + s_stkod + '''';
    Otchet.Open;
    otchet.Filtered := true;
    otchet.First;
    while (not otchet.Eof) do
      otchet.Delete;
    if Spisok.Active = true then
      Spisok.Close;
    Spisok.Filter := 'otstrk=' + '''' + s_stkod + '''';
    Spisok.Open;
    Spisok.Filtered := true;
    Spisok.First;
    while (not Spisok.Eof) do
      Spisok.Delete;
    DM1.KARTV.First;
    while not DM1.KARTV.Eof do
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
      if FSprFormul.CEH_NormZ.Active then
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
//выпуск с начала года
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng');
      DM1.IBQuery1.SQL.Add(' FROM KARTv');
      DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
      DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                           + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                           + ' AND KARTv.KSM_ID=' + INTTOSTR(s_KODP)
                           + ' AND Document.Date_op between ' + '''' + s_datn
                           + '''' + ' and ' + '''' + s_dat2 + '''');
      DM1.IBQuery1.Active := True;
      if not dm1.IBQuery1.Eof then
        V_VIPUSKG := DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat
      ELSE
        V_VIPUSKG := 0;
//выпуск с начала квартала
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_k');
      DM1.IBQuery1.SQL.Add(' FROM KARTv');
      DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
      DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                           + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                           + ' AND KARTv.KSM_ID=' + INTTOSTR(s_KODP)
                           + ' AND Document.Date_op between ' + '''' + s_datk
                           + '''' + ' and ' + '''' + s_dat2 + '''');
      DM1.IBQuery1.Active := True;
      if not dm1.IBQuery1.Eof then
        V_VIPUSKk := DM1.IBQuery1.FieldByName('VIPUSK_k').AsFloat
      ELSE
        V_VIPUSKk := 0;
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
      if prizpr.Active then
        prizpr.Close;
      prizpr.Open;
      if prizpr.Locate('sprod', st_kodp, []) then
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
      if mes < 10 then
        prizprPrmes.AsString := ' ' + inttostr(mes)
      else
        prizprPrmes.AsString := inttostr(mes);
      prizprPrg1.AsVariant := dm1.KartVKOL_PRIH.AsFloat;
      prizprKolg1.AsVariant := v_vipuskg;
      prizprKolgs1.AsVariant := v_vipuskg - dm1.KartVKOL_PRIH.AsFloat;
      prizprKolk1.AsVariant := v_vipuskk;
      prizprKolks1.AsVariant := v_vipuskk - dm1.KartVKOL_PRIH.AsFloat;
      prizpr.Post;
// формирование списка препаратов для передачи
      Spisok.Append;
      spisokOtprod.AsString := sT_kodp;
      spisokOtstrk.AsString := s_stkod;
      spisokNmat.AsString := DM1.KARTVNmat.AsString;
      spisokMes.AsInteger := mes;
      spisokGod.AsInteger := god;
      spisok.Post;
      OTCHET_ST;
      DM1.KARTV.Next;
    end;
    updatePCSppod;
    Splash.Free;
    if spisok.Active then
      spisok.Close;
    if otchet.Active then
      otchet.Close;
    if otchets.Active then
      otchet.Close;
    if prizpr.Active then
      prizpr.Close;
    if prizm.Active then
      prizpr.Close;
    if ncmatrd.Active then
      ncmatrd.Close;
    if regot.Active then
      regot.Close;
    if rasxod.Active then
      rasxod.Close;
  end
  else
  begin
    MessageDlg('Нет отчетов за заданный месяц !', mtWarning, [mbOK], 0);
    SysUtils.Abort;
  end;
end;

procedure TFPerOtchet.ToolButton5Click(Sender: TObject);
begin
  FrReport1.LoadFromFile(reportsPath + 'P_VIPUSK.frf');
  FrReport1.ShowReport;
end;

end.
