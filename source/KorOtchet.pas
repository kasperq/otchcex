unit KorOtchet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxMemDS, IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, DB, RxIBQuery,
  IBQuery, Menus, FindDlgEh, ImgList, StdCtrls, Mask, DBCtrls, ExtCtrls,
  Grids, DBGridEh, ComCtrls, Spin, ToolWin,SplshWnd,wwDialog,
  VCLUtils,UtilRIB, DBGrids, Buttons,RxStrUtils,Math, Placemnt;

type
  TFKorOtchet = class(TForm)
    ToolBar1: TToolBar;
    ToolButton7: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Label4: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    TabSheet3: TTabSheet;
    DBGridEh3: TDBGridEh;
    TabSheet4: TTabSheet;
    DBGridEh4: TDBGridEh;
    Panel2: TPanel;
    ImageList1: TImageList;
    FindDlgEh1: TFindDlgEh;
    PopupMenu1: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N1: TMenuItem;
    DSRaspSyrPrep: TDataSource;
    RaspSyrPrep: TRxIBQuery;
    RaspSyrPrepUpdate: TIBUpdateSQLW;
    IBOtkudaPerPrep: TIBQuery;
    IBOtkudaPerPrepTIP_OP_ID: TSmallintField;
    IBOtkudaPerPrepKLIENT_ID: TIntegerField;
    IBOtkudaPerPrepKOD_PROD: TIBStringField;
    IBOtkudaPerPrepKEI_PREP: TSmallintField;
    IBOtkudaPerPrepXARKT: TIBStringField;
    IBOtkudaPerPrepNMAT: TIBStringField;
    IBOtkudaPerPrepSTRUK_ID: TSmallintField;
    IBOtkudaPerPrepDATE_DOK: TDateField;
    IBOtkudaPerPrepDOC_ID: TIntegerField;
    IBOtkudaPerPrepKSM_ID: TIntegerField;
    IBOtkudaPerPrepOT_S: TFMTBCDField;
    IBOtkudaPerPrepOT_NZ: TFMTBCDField;
    IBOtkudaPerPrepRAZDEL_ID: TSmallintField;
    IBOtkudaPerPrepKRAZ: TSmallintField;
    IBOtkudaPerPrepKEI_ID_SYR: TSmallintField;
    IBOtkudaPerPrepKSM_IDPR: TIntegerField;
    IBOtkudaPerPrepNEIS: TIBStringField;
    IBOtkudaPerPrepSTROKA_ID: TIntegerField;
    IBOtkudaPerPrepKOL_PRIH_EDIZ: TFloatField;
    IBOtkudaPerPrepKOL_RASH_EDIZ: TFloatField;
    IBOtkudaPerPrepPARENT: TIntegerField;
    IBKudaPerPrep: TIBQuery;
    IBKudaPerPrepTIP_OP_ID: TSmallintField;
    IBKudaPerPrepKLIENT_ID: TIntegerField;
    IBKudaPerPrepKOD_PROD: TIBStringField;
    IBKudaPerPrepKEI_PREP: TSmallintField;
    IBKudaPerPrepXARKT: TIBStringField;
    IBKudaPerPrepNMAT: TIBStringField;
    IBKudaPerPrepSTRUK_ID: TSmallintField;
    IBKudaPerPrepDATE_DOK: TDateField;
    IBKudaPerPrepDOC_ID: TIntegerField;
    IBKudaPerPrepKSM_ID: TIntegerField;
    IBKudaPerPrepPARENT: TIntegerField;
    IBKudaPerPrepOT_S: TFMTBCDField;
    IBKudaPerPrepOT_NZ: TFMTBCDField;
    IBKudaPerPrepRAZDEL_ID: TSmallintField;
    IBKudaPerPrepKEI_ID_SYR: TSmallintField;
    IBKudaPerPrepSTNAME: TIBStringField;
    IBKudaPerPrepKRAZ: TSmallintField;
    IBKudaPerPrepKSM_IDPR: TIntegerField;
    IBKudaPerPrepNEIS: TIBStringField;
    IBKudaPerPrepSTROKA_ID: TIntegerField;
    IBKudaPerPrepKOL_PRIH_EDIZ: TFloatField;
    IBKudaPerPrepKOL_RASH_EDIZ: TFloatField;
    PeredanoPrep: TRxMemoryData;
    PeredanoPrepkraz: TIntegerField;
    PeredanoPrepNMAT: TStringField;
    PeredanoPrepXARKT: TStringField;
    PeredanoPrepKOD_PROD: TStringField;
    PeredanoPrepkol_rash: TFloatField;
    PeredanoPrepneis: TStringField;
    PeredanoPrepTip_op_id: TIntegerField;
    PeredanoPrepstroka_id: TIntegerField;
    PeredanoPrepklient_id: TIntegerField;
    PeredanoPrepkraz1: TIntegerField;
    PeredanoPrepkod1: TStringField;
    PeredanoPrepnaz1: TStringField;
    PeredanoPrepOt_s: TFloatField;
    PeredanoPrepOt_nz: TFloatField;
    PeredanoPrepOt_s1: TFloatField;
    PeredanoPrepOt_nz1: TFloatField;
    DSPeredanoSyr: TDataSource;
    FindDlgEh2: TFindDlgEh;
    FindDlgEh3: TFindDlgEh;
    Label2: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    Label19: TLabel;
    Label29: TLabel;
    Label21: TLabel;
    Label5: TLabel;
    Label41: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    PeredanoSyr: TRxIBQuery;
    IBPerdanoSyr: TIBUpdateSQLW;
    Panel1: TPanel;
    RadioGroup2: TRadioGroup;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    Label6: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    IBQuery1: TIBQuery;
    PeredanoSyrTIP_OP_ID: TSmallintField;
    PeredanoSyrKLIENT_ID: TIntegerField;
    PeredanoSyrKOD_PROD: TIBStringField;
    PeredanoSyrKEI_PREP: TSmallintField;
    PeredanoSyrXARKT: TIBStringField;
    PeredanoSyrNMAT: TIBStringField;
    PeredanoSyrSTRUK_ID: TSmallintField;
    PeredanoSyrSTNAME: TIBStringField;
    PeredanoSyrDATE_DOK: TDateField;
    PeredanoSyrDOC_ID: TIntegerField;
    PeredanoSyrKOL_PRIH_EDIZ: TFloatField;
    PeredanoSyrKSM_ID: TIntegerField;
    PeredanoSyrNMAT1: TIBStringField;
    PeredanoSyrSTROKA_ID: TIntegerField;
    PeredanoSyrOT_S: TFMTBCDField;
    PeredanoSyrOT_NZ: TFMTBCDField;
    PeredanoSyrRAZDEL_IDO: TSmallintField;
    PeredanoSyrKRAZ: TSmallintField;
    PeredanoSyrKEI_ID_SYR: TSmallintField;
    PeredanoSyrKSM_IDPR: TIntegerField;
    PeredanoSyrKOL_RASH_EDIZ: TFloatField;
    PeredanoSyrNEIS: TIBStringField;
    PeredanoSyrKRAZ1: TSmallintField;
    PeredanoSyrRAZDEL_ID: TSmallintField;
    SpeedButton2: TSpeedButton;
    Panel3: TPanel;
    Prix_korr: TIBQuery;
    ToolButton4: TToolButton;
    Label20: TLabel;
    Label23: TLabel;
    PeredanoSyrKART_ID: TIntegerField;
    IBOtkudaPerPrepKART_ID: TIntegerField;
    IBKudaPerPrepKART_ID: TIntegerField;
    DBGridEh5: TDBGridEh;
    FormStorage1: TFormStorage;
    Splitter1: TSplitter;
    KartKorrOtchet: TRxIBQuery;
    IBKartKorrOtchet: TIBUpdateSQLW;
    ostceh: TIBQuery;
    ostcehOT_C: TFMTBCDField;
    ostcehKSM_ID: TIntegerField;
    ToolButton5: TToolButton;
    PopupMenu2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    RaspSyrPrepVIB: TIntegerField;
    RaspSyrPrepKART_ID: TIntegerField;
    RaspSyrPrepKEI_ID: TSmallintField;
    RaspSyrPrepKSM_ID: TIntegerField;
    RaspSyrPrepKOL_RASH_EDIZ: TFloatField;
    RaspSyrPrepSTROKA_ID: TIntegerField;
    RaspSyrPrepKEI: TSmallintField;
    RaspSyrPrepNDOK: TIBStringField;
    RaspSyrPrepPARENT: TIntegerField;
    RaspSyrPrepDOC_ID: TIntegerField;
    RaspSyrPrepTIP_OP_ID: TSmallintField;
    RaspSyrPrepDATE_DOK: TDateField;
    RaspSyrPrepRAZDEL_ID: TSmallintField;
    RaspSyrPrepNEIS: TIBStringField;
    RaspSyrPrepKRAZ: TSmallintField;
    RaspSyrPrepKOL_PRIH_EDIZ: TFloatField;
    RaspSyrPrepKOL_PRIH: TFMTBCDField;
    RaspSyrPrepKOL_RASH: TFMTBCDField;
    RaspSyrPrepSERIA: TIBStringField;
    RaspSyrPrepKSM_IDPR: TIntegerField;
    RaspSyrPrepOT_S: TFloatField;
    RaspSyrPrepOT_NZ: TFloatField;
    RaspSyrPrepONM_S: TFloatField;
    RaspSyrPrepONM_NZ: TFloatField;
    RaspSyrPrepZAG: TFloatField;
    RaspSyrPrepPRIX: TFloatField;
    RaspSyrPrepZAG_PERIOD: TFloatField;
    RaspSyrPrepRASH_VIRAB_PERIOD: TFloatField;
    RaspSyrPrepPRIX_PERIOD: TFloatField;
    RaspSyrPrepPEREDANO_RASH_S: TFloatField;
    RaspSyrPrepPEREDANO_RASH_NZ: TFloatField;
    RaspSyrPrepNMAT: TIBStringField;
    RaspSyrPrepOST_C: TFloatField;
    RaspSyrPrepKOLVIP: TFloatField;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    RaspSyrPrepZNAKI: TIntegerField;
    RaspSyrPrepPLAN_NORM: TFMTBCDField;
    ToolButton6: TToolButton;
    KartKorrOtchetDOC_ID: TIntegerField;
    KartKorrOtchetSTROKA_ID: TIntegerField;
    KartKorrOtchetKSM_ID: TIntegerField;
    KartKorrOtchetCENA: TIBBCDField;
    KartKorrOtchetKOL_PRIH: TFMTBCDField;
    KartKorrOtchetCENA_VP: TIBBCDField;
    KartKorrOtchetNDS: TIBBCDField;
    KartKorrOtchetSUM_NDS: TIBBCDField;
    KartKorrOtchetSUM_NDS_VP: TIBBCDField;
    KartKorrOtchetKOL_RASH: TFMTBCDField;
    KartKorrOtchetKART_ID: TIntegerField;
    KartKorrOtchetORG_ID_BRAK: TIntegerField;
    KartKorrOtchetOSNOV_BRAK_ID: TSmallintField;
    KartKorrOtchetUSER_NAME: TIBStringField;
    KartKorrOtchetDATE_TIME_UPDATE: TDateTimeField;
    KartKorrOtchetPARENT: TIntegerField;
    KartKorrOtchetRAZDEL_ID: TSmallintField;
    KartKorrOtchetSKIDKA: TIBBCDField;
    KartKorrOtchetKEI_ID: TSmallintField;
    KartKorrOtchetSUMMA: TIBBCDField;
    KartKorrOtchetSUMMA_VP: TIBBCDField;
    KartKorrOtchetSUM_SKID: TIBBCDField;
    KartKorrOtchetSUM_SKID_VP: TIBBCDField;
    KartKorrOtchetSUMMA_S_NDS: TIBBCDField;
    KartKorrOtchetSUMMA_S_NDS_VP: TIBBCDField;
    KartKorrOtchetTAG: TIntegerField;
    KartKorrOtchetKOL_PRIH_EDIZ: TFloatField;
    KartKorrOtchetKOL_RASH_EDIZ: TFloatField;
    KartKorrOtchetTIP_OP_ID: TSmallintField;
    KartKorrOtchetTIP_DOK_ID: TSmallintField;
    KartKorrOtchetTAG1: TIntegerField;
    KartKorrOtchetTOV_SKIDKA: TSmallintField;
    KartKorrOtchetKEI_ID2: TSmallintField;
    KartKorrOtchetCENA_PRICE: TIBBCDField;
    KartKorrOtchetSKID_CEN: TIBBCDField;
    KartKorrOtchetCOMMENT: TIBStringField;
    KartKorrOtchetDOP_SUM: TIBBCDField;
    KartKorrOtchetDEBET: TIBStringField;
    KartKorrOtchetDTYPESUB_ID: TSmallintField;
    KartKorrOtchetDCODE: TIntegerField;
    KartKorrOtchetCREDIT: TIBStringField;
    KartKorrOtchetCTYPESUB_ID: TSmallintField;
    KartKorrOtchetCCODE: TIntegerField;
    KartKorrOtchetSROK: TSmallintField;
    KartKorrOtchetDATE_VID: TDateField;
    KartKorrOtchetDOP_RASH: TIBBCDField;
    KartKorrOtchetDOP_RASH_ID: TSmallintField;
    KartKorrOtchetNORM_RASH: TFMTBCDField;
    KartKorrOtchetKOL_RAB: TFMTBCDField;
    RaspSyrPrepksmArr: TIntegerField;

    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure RaspSyrPrepBeforeInsert(DataSet: TDataSet);
    procedure RaspSyrPrepBeforePost(DataSet: TDataSet);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure RaspSyrPrepKSM_IDValidate(Sender: TField);
    procedure RaspSyrPrepKRAZValidate(Sender: TField);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure RaspSyrPrepNewRecord(DataSet: TDataSet);
    procedure PeredanoSyrBeforePost(DataSet: TDataSet);
    procedure PeredanoSyrNewRecord(DataSet: TDataSet);
    procedure DBGridEh4EditButtonClick(Sender: TObject);
    procedure PeredanoSyrKRAZValidate(Sender: TField);
    procedure PeredanoSyrKRAZ1Validate(Sender: TField);
    procedure PeredanoSyrKSM_IDValidate(Sender: TField);
    procedure PeredanoSyrKOD_PRODValidate(Sender: TField);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PeredanoSyrBeforeInsert(DataSet: TDataSet);
    procedure RaspSyrPrepAfterPost(DataSet: TDataSet);
    procedure RaspSyrPrepAfterDelete(DataSet: TDataSet);
    procedure RaspSyrPrepBeforeDelete(DataSet: TDataSet);
    procedure ToolButton5Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
  private
    ksmArray : array of integer;
    ksmLength : integer;

    procedure openOstCeh;
    
  public
    procedure KorSost;
    function getCurZnak(value : double; znak : integer) : integer;
    function getCurRaspSyrRecordMaxZnak() : integer;
    procedure saveTochnost;
    procedure saveCurRecordTochnost;

  end;

var
  FKorOtchet: TFKorOtchet;
  Usl_usl: string;
  v_kolRash: double;
 v_kolRash_s: double;
 seria_ids: integer;
 v_ost_syr: double;
 s_kart: integer;
 v_rasp: double;
implementation
 uses dm, Find_Spprod, Dob_peredano, Vipusk,Otchet, ediz, Find_Matrop,
  razdel, Find_Struk, OstSyr, SprFormul, Pech_Vibor, VibSyr, VybPrep, CopyFiles;
{$R *.dfm}

procedure TFKorOtchet.openOstCeh;
var
  ksmArr : string;
  i : integer;
  findedKsm : boolean;
begin
  if (RaspSyrPrep.Active) then
  begin
    for i := 0 to ksmLength - 1 do
      ksmArray[i] := 0;
    SetLength(ksmArray, 0);
    ksmLength := 0;
    ksmArr := '';
    RaspSyrPrep.First;
    while (not RaspSyrPrep.Eof) do
    begin
      findedKsm := false;
      for i := 0 to ksmLength - 1 do
      begin
        if (ksmArray[i] = RaspSyrPrepKSM_ID.AsInteger) then
          findedKsm := true;
      end;
      if (not findedKsm) then
      begin
        ksmLength := ksmLength + 1;
        SetLength(ksmArray, ksmLength);
        ksmArray[ksmLength - 1] := RaspSyrPrepKSM_ID.AsInteger;
      end;
      RaspSyrPrep.Next;
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
    ostceh.ParamByName('dat1').AsDateTime := strtodate(s_dat1);
    ostceh.ParamByName('dat2').AsDateTime := strtodate(s_dat2);
    ostceh.ParamByName('struk').AsInteger := vStruk_id;
    ostceh.ParamByName('kart_idpr').AsInteger := 1;
    ostceh.ParamByName('ksm_id').AsInteger := 0;
    if (vStruk_Id = 540) then    
      ostceh.ParamByName('struk_id_rela').AsInteger := 1
    else
      ostceh.ParamByName('struk_id_rela').AsInteger := 0;
    ostceh.ParamByName('ksm_array').AsString := ksmArr;
    ostceh.Open;
  end;
end;

procedure TFKorOtchet.KorSost;
var
  kod : integer;
  s_ost : double;
begin
  if (s_kodp <> 0) then
  begin
    StartWait;
    dm1.Document.Close;
    dm1.Ostatki.Close;
    DM1.IBT_WRITE.Active := false;
    DM1.IBT_read.Active := false;
    DM1.IBT_read.Active := true;
    DM1.IBT_WRITE.Active := TRUE;
    kod := 0;
    vDate_op := strtodate(s_Dat1);
    vKlient_Id := s_kodp;
    vDate_dok := strtodate(s_Dat1);
    vTip_doc_Id := 37;
    Usl_Struk := ' Document.Struk_id=' + inttostr(vStruk_id);
    Usl_Dat := ' Document.Date_op between ' + '''' + s_dat1 + '''' + ' and ' + '''' + s_dat2 + '''';
    if (PageControl1.ActivePage = tabsheet1) then     // Приход
    begin
      kod := 1;
      vTip_Op_Id := 30;
      vNDoc := 'Рп-' + inttostr(S_Kodp) + '-' + inttostr(mes) + '.' + inttostr(god);
      Usl_TIP := ' document.Tip_Op_Id=30 ';
      Usl_GROP := ' Document.KLIENT_ID=' + INTTOSTR(S_KODP);
      ToolButton5.Enabled := false;
    end;
    if (PageControl1.ActivePage = tabsheet2) then     // Расход
    begin
      kod := s_kodp;
      vNDoc := 'Рв-' + inttostr(S_Kodp) + '-' + inttostr(mes) + '.' + inttostr(god);
      vTip_Op_Id := 35;
      Usl_TIP := ' document.Tip_Op_Id=35';
      Usl_GROP := ' Document.klient_id=' + inttostr(s_kodp);
      ToolButton5.Enabled := false;
      ToolButton5.Hint := 'Занесение расхода (н/з=0)';
      ToolButton5.Enabled := True;
    end;
    if (PageControl1.ActivePage = tabsheet3) then       // Загрузка
    begin
      kod := s_kodp;
      vNDoc := 'Рз-' + inttostr(S_Kodp) + '-' + inttostr(mes) + '.' + inttostr(god);
      vTip_Op_Id := 33;
      Usl_TIP := ' document.Tip_Op_Id=33 ';
      Usl_GROP := ' Document.klient_id=' + inttostr(s_kodp);
      ToolButton5.Enabled := false;
      ToolButton5.Hint := 'Занесение загрузки по норме';
      ToolButton5.Enabled := True;
    end;
    if (PageControl1.ActivePage <> tabsheet4) then      // Передано
    begin
      panel3.Visible := true;
      dm1.Document.Close;
      DM1.DOcUMENT.MacroByName('USL').AsString := 'WHERE DOcUMENT.STRUK_ID='
                                                  + INTTOSTR(VsTRUK_ID)
                                                  + ' AND DOCUMENT.TIP_OP_ID='
                                                  + inttostr(vTip_Op_Id)
                                                  + ' AND DOCUMENT.KLIENT_ID='
                                                  + inttostr(vkLIENT_Id)
                                                  + ' AND DOCUMENT.NDOK=' + ''''
                                                  + VnDOC + ''''
                                                  + ' AND Document.Date_dok between '
                                                  + '''' + s_dat1 + '''' + ' and '
                                                  + '''' + s_dat2 + '''';
      dm1.Document.OPEN;
      IF (DM1.Document.Eof) THEN
      begin
        dm1.Document.Insert;
        dm1.Document.Post;
        dm1.Document.ApplyUpdates;
      end;
      vDocument_id := dm1.DocumentDOC_ID.AsInteger;
      RaspSyrPrep.BeforePost := nil;
      RaspSyrPrep.AfterPost := nil;
      RaspSyrPrep.AfterDelete := nil;
      RaspSyrPrep.BeforeDelete := nil;
      RaspSyrPrepKsm_id.OnValidate := nil;
      RaspSyrPrepKRAZ.OnValidate := nil;
      RaspSyrPrep.Active := False;
      RaspSyrPrep.MacroByName('DAT1').AsString := '''' + S_DAT1 + '''';
      RaspSyrPrep.MacroByName('DAT2').AsString := '''' + S_DAT2 + '''';
//  RaspSyrPrep.MacroByName('SDAT').AsString:= Usl_DAT;
      RaspSyrPrep.MacroByName('stip').AsString := Usl_TIP;
      RaspSyrPrep.MacroByName('ksm').AsString := Usl_GROP;
      RaspSyrPrep.ParamByName('kodp').AsInteger := kod;
//      RaspSyrPrep.ParamByName('kodp').AsInteger := s_kodp;
      RaspSyrPrep.ParamByName('struk').AsInteger := vStruk_id;
      RaspSyrPrep.Active := True;
      RaspSyrPrep.First;
      RaspSyrPrep.DisableControls;
// end;
      Prix_korr.Active := False;
      Prix_korr.SQL.Clear;
      Prix_korr.SQL.Add('SELECT DISTINCT ost.ksm_id, ost.razdel_id, ost.KART_ID, ost.ostatok_end_s ot_s,');
      Prix_korr.SQL.Add('ost.ostatok_end_nz ot_nz, ost.ostatok_begin_s onm_s,');
      Prix_korr.SQL.Add('ost.ostatok_begin_nz onm_nz, ost.rash_virab_period,');
      Prix_korr.SQL.Add('(ost.zag_period + ost.peredano_prih_nz) as zag_period,');
      Prix_korr.SQL.Add('(ost.prix_period + ost.peredano_prih_nz) as prix_period,');
      Prix_korr.SQL.Add('ost.peredano_rash_s, ost.peredano_rash_nz');
      Prix_korr.SQL.Add(' FROM  SELECT_OB_VED (' + '''' + s_dat1 + '''' + ','
                        + '''' + s_dat2 + '''' + ',' + inttostr(s_kodp) + ') ost');
      Prix_korr.Active := true;


      IBQuery1.Active := False;
      IBQuery1.SQL.Clear;
      IBQuery1.SQL.Add('SELECT distinct ostatki.kart_id, norm.plnorm, norm.KODP, '
                        + 'NORM.KEI_ID KEIN, NORM.KSM_ID, NORM.KRAZ, NORM.MES, '
                        + 'NORM.GOD, NORM.NAZPRPF, ostatki.ot_s, ostatki.ot_nz, '
                        + 'ostatki.onm_s, ostatki.onm_nz,');
      IBQuery1.SQL.Add(' NORM.NMAT_KSM NMAT, NORM.xarkt, NORM.gost, matrop.KEI_ID, '
                        + 'NORM.NEIS, NORM.razdel_id');
      IBQuery1.SQL.Add(' FROM norm_view(119, ' + INTTOSTR(God) + ', '
                        + INTTOSTR(mes) + ', ' + INTTOSTR(s_KODP) + ','
                        + INTTOSTR(Vstruk_ID) + ', 0) NORM ');
      IBQuery1.SQL.Add(' inner join matrop on (norm.ksm_id = matrop.ksm_id)');
      IBQuery1.SQL.Add(' left JOIN ostatki ON ((NORM.kodp = ostatki.ksm_idpr) '
                        + 'AND (norm.ksm_id = ostatki.ksm_id) AND '
                        + '(NORM.razdel_id = ostatki.razdel_id))');
      IBQuery1.Active := True;
      IBQuery1.First;
      while not IBQuery1.Eof do
      begin
        s_kei := IBQuery1.FieldByName('KEI_id').AsInteger;
        v_keiN := IBQuery1.FieldByName('KEIN').AsInteger;
        s_ksm := IBQuery1.FieldByName('Ksm_id').AsInteger;
        tochn := dm1.getTochn(s_kodp, IBQuery1.FieldByName('KSM_ID').AsInteger);

        s_ost := 0;

        RaspSyrPrep.First;
        if NOT RaspSyrPrep.Locate('ksm_id;kraz',
                                  VarArrayOf([IBQuery1.FieldByName('KSM_ID').AsInteger,
                                              IBQuery1.FieldByName('KRAZ').AsInteger]),
                                              []) THEN
        BEGIN
          tochn := dm1.getTochn(s_kodp, IBQuery1.FieldByName('KSM_ID').AsInteger);
          RaspSyrPrep.Insert;
          RaspSyrPrepDoc_id.AsInteger := vDocument_id;
          RaspSyrPrepRazdel_id.AsInteger := IBQuery1.FieldByName('Razdel_id').AsInteger;
          RaspSyrPrepKRAZ.AsInteger := IBQuery1.FieldByName('KRAZ').AsInteger;
          RaspSyrPrepNmat.ASSTRING := IBQuery1.FieldByName('NMAT').AsString;
          RaspSyrPrepKEI_id.AsInteger := IBQuery1.FieldByName('KEIN').AsInteger;
          RaspSyrPrepKEI.AsInteger := IBQuery1.FieldByName('KEI_id').AsInteger;
          RaspSyrPrepNeis.AsString := IBQuery1.FieldByName('NEIS').AsString;
          RaspSyrPrepStroka_id.AsInteger := vStroka_id;
          RaspSyrPrepNdok.ASSTRING := vNdoc;
          RaspSyrPrepTip_op_id.AsInteger := vTip_op_Id;
          RaspSyrPrepKol_Rash_Ediz.ASFLOAT := 0;
          RaspSyrPrepKol_prih_Ediz.ASFLOAT := 0;
          RaspSyrPrepKART_id.AsInteger := IBQuery1.FieldByName('Kart_id').AsInteger;
          RaspSyrPrepKSM_ID.AsInteger := IBQuery1.FieldByName('KSM_ID').AsInteger;
          RaspSyrPrepKolvip.ASFLOAT := ROUNDTO(IBQuery1.FieldByName('Plnorm').ASFLOAT * v_vipusk, tochn);
          RaspSyrPrepPLAN_NORM.AsFloat := IBQuery1.FieldByName('Plnorm').AsFloat;
          if (IBQuery1.FieldByName('Ot_s').ASFLOAT <> 0)
              and (IBQuery1.FieldByName('Ot_s').AsVariant <> null) then
            RaspSyrPrepOt_s.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('Ot_s').ASFLOAT
                                                           * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                          IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                          IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                           tochn))
          else
            RaspSyrPrepOt_s.AsVariant := 0;
//    if (IBQuery1.FieldByName('Ost_c').ASFLOAT<>0) and (IBQuery1.FieldByName('Ost_c').AsVariant<>null) then
          RaspSyrPrepOst_c.ASstring := FloatToStr(RoundTo(s_Ost
                                                          * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                         IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                         IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                          tochn));
//    else RaspSyrPrepOst_c.AsVariant:=0;
          if (IBQuery1.FieldByName('Ot_nz').ASFLOAT <> 0)
              and (IBQuery1.FieldByName('Ot_nz').AsVariant <> null)then
            RaspSyrPrepOt_Nz.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('Ot_nz').ASFLOAT
                                                            * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                           IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                           IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                            tochn))
          else
            RaspSyrPrepOt_nz.AsVariant := 0;
          if (IBQuery1.FieldByName('Onm_s').ASFLOAT <> 0)
              and (IBQuery1.FieldByName('Onm_s').AsvARIant <> null) then
            RaspSyrPrepOnm_s.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('Onm_s').AsFloat
                                                            * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                           IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                           IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                            tochn))
          else
            RaspSyrPrepOnm_s.AsVariant := 0;
          if (IBQuery1.FieldByName('Onm_NZ').AsFloat <> 0)
              and (IBQuery1.FieldByName('Onm_NZ').AsVariant <> null)then
            RaspSyrPrepOnm_Nz.asfloat := RoundTo(IBQuery1.FieldByName('Onm_NZ').AsFloat
                                                 * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                 tochn)
          else
            RaspSyrPrepOnm_nz.AsVariant := 0;
          if (IBQuery1.FieldByName('Kart_id').AsInteger = 0)
              or (IBQuery1.FieldByName('Kart_id').AsVariant = null) then
          begin
            s_kei := IBQuery1.FieldByName('Kei_id').AsInteger;
            v_razdel := IBQuery1.FieldByName('Razdel_id').AsInteger;
            s_ksm := IBQuery1.FieldByName('Ksm_id').AsInteger;
            v_dok_kart := SelectToVarIB('select Ostatki.kart_id '
                                        + 'FROM Ostatki WHERE Ostatki.STRUK_ID = '
                                        + INTTOSTR(VsTRUK_ID)
                                        + ' AND ostatki.ksm_id = ' + inttostr(s_Ksm)
                                        + ' AND Ostatki.razdel_id = ' + inttostr(v_razdel)
                                        + ' AND Ostatki.Ksm_idpr = '+ INTTOSTR(S_KODP),
                                        dm1.belmed, dm1.ibt_read);
            If v_dok_kart = Null then
            begin
              IF DM1.Ostatki.Active = FALSE THEN
                DM1.Ostatki.Active := TRUE;
              DM1.Ostatki.Insert;
              DM1.Ostatki.Post;
              dm1.Ostatki.ApplyUpdates;
              RaspSyrPrepKart_id.AsInteger := vKart_id;
            end
            else
              RaspSyrPrepKart_id.AsInteger := v_dok_kart;
          end;
          RaspSyrPrepKolvip.ASstring := FloatToStr(ROUNDTO(IBQuery1.FieldByName('Plnorm').ASFLOAT
                                                           * v_vipusk,
                                                           tochn));
          RaspSyrPrepPLAN_NORM.AsFloat := IBQuery1.FieldByName('Plnorm').AsFloat;
          RaspSyrPrep.Post;
        END
        else
        begin
          while (RaspSyrPrepKsm_id.AsInteger = IBQuery1.FieldByName('Ksm_id').AsInteger)
                and (RaspSyrPrepRazdel_id.AsInteger = IBQuery1.FieldByName('Razdel_id').AsInteger)
                and ( not RaspSyrPrep.Eof) do
          begin
            tochn := dm1.getTochn(s_kodp, IBQuery1.FieldByName('KSM_ID').AsInteger);
            RaspSyrPrep.Edit;
            if RaspSyrPrepTip_op_id.AsInteger <> 30 then
            begin
              if (RaspSyrPrepOt_s.ASFLOAT <> 0)
                  and (RaspSyrPrepOt_s.AsVariant <> null) then
                RaspSyrPrepOt_s.ASstring := FloatToStr(RoundTo(RaspSyrPrepOt_s.ASFLOAT
                                                               * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                              IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                              IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                               tochn))
              else
                RaspSyrPrepOt_s.AsVariant := 0;

              if (RaspSyrPrepOt_nz.ASFLOAT <> 0)
                  and (RaspSyrPrepOt_nz.AsVariant <> null) then
                RaspSyrPrepOt_Nz.ASstring := FloatToStr(RoundTo(RaspSyrPrepOt_nz.ASFLOAT
                                                                *dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                              IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                              IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                tochn))
              else
                RaspSyrPrepOt_nz.AsVariant := 0;

              if (RaspSyrPrepOnm_s.ASFLOAT <> 0)
                  and (RaspSyrPrep.FieldByName('Onm_s').AsvARIant <> null) then
                RaspSyrPrepOnm_s.ASstring := FloatToStr(RoundTo(RaspSyrPrep.FieldByName('Onm_s').AsFloat
                                                                * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                               IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                               IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                tochn))
              else
                RaspSyrPrepOnm_s.AsVariant := 0;

              if (RaspSyrPrep.FieldByName('Onm_NZ').AsFloat <> 0)
                  and (RaspSyrPrep.FieldByName('Onm_NZ').AsVariant <> null)then
                RaspSyrPrepOnm_Nz.ASstring := FloatToStr(RoundTo(RaspSyrPrep.FieldByName('Onm_NZ').AsFloat
                                                                 * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                 tochn))
              else
                RaspSyrPrepOnm_nz.AsVariant := 0;

              if (RaspSyrPrep.FieldByName('zag_period').ASFLOAT <> 0)
                  and (RaspSyrPrep.FieldByName('zag_period').AsVariant <> null) then
                RaspSyrPrepzag_period.ASstring := FloatToStr(RoundTo(RaspSyrPrep.FieldByName('zag_period').ASFLOAT
                                                                     * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                    IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                    IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                     tochn))
              else
                RaspSyrPrepZag_period.AsVariant := 0;

              if (RaspSyrPrep.FieldByName('prix_period').AsFloat <> 0)
                  and (RaspSyrPrep.FieldByName('prix_period').AsVariant <> null)then
                RaspSyrPrepprix_period.ASstring := FloatToStr(RoundTo(RaspSyrPrep.FieldByName('prix_period').ASFLOAT
                                                                      * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                     IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                     IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                      tochn))
              else
                RaspSyrPrepprix_period.AsVariant := 0;

              if (RaspSyrPrep.FieldByName('rash_virab_period').ASFLOAT <> 0)
                  and (RaspSyrPrep.FieldByName('rash_virab_period').AsvARIant <> null) then
                RaspSyrPreprash_virab_period.ASstring := FloatToStr(RoundTo(RaspSyrPrep.FieldByName('rash_virab_period').asfloat
                                                                            * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                           IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                           IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                            tochn))
              else
                RaspSyrPreprash_virab_period.AsVariant := 0;

              if (RaspSyrPrep.FieldByName('Peredano_rash_s').AsFloat <> 0)
                  and (RaspSyrPrep.FieldByName('Peredano_rash_s').AsVariant <> null)then
                RaspSyrPrepPeredano_rash_s.ASstring := FloatToStr(RoundTo(RaspSyrPrep.FieldByName('Peredano_rash_s').AsFloat
                                                                          * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                         IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                         IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                          tochn))
              else
                RaspSyrPrepPeredano_rash_s.AsVariant := 0;

              if (RaspSyrPrep.FieldByName('Peredano_rash_nz').AsFloat <> 0)
                  and (RaspSyrPrep.FieldByName('Peredano_rash_nz').AsVariant <> null)then
                RaspSyrPrepPeredano_rash_nz.ASstring := FloatToStr(RoundTo(RaspSyrPrep.FieldByName('Peredano_rash_nz').AsFloat
                                                                           * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                          IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                          IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                           tochn))
              else
                RaspSyrPrepPeredano_rash_nz.AsVariant := 0;
//     if (IBQuery1.FieldByName('Ost_c').ASFLOAT<>0) and (IBQuery1.FieldByName('Ost_c').AsVariant<>null) then
//       RaspSyrPrepOst_c.ASstring := FloatToStr(RoundTo(s_Ost*dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,IBQuery1.FieldByName('Kei_id').AsInteger,IBQuery1.FieldByName('Ksm_id').AsInteger),tochn));
//     else RaspSyrPrepOst_c.AsVariant:=0;
            end
            else
            begin
              Prix_korr.First;
              if Prix_korr.Locate('ksm_id;razdel_id',
                                  VarArrayOf([RaspSyrPrepKsm_id.AsInteger, RaspSyrPrepRazdel_id.AsInteger]),
                                  []) then
              begin
                if (Prix_Korr.FieldByName('Ot_s').ASFLOAT <> 0)
                    and (Prix_Korr.FieldByName('Ot_s').AsVariant <> null) then
                  RaspSyrPrepOt_s.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Ot_s').ASFLOAT
                                                                 * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                 {tochn}-6))
                else
                  RaspSyrPrepOt_s.AsVariant := 0;
                if (Prix_Korr.FieldByName('Ot_nz').AsFloat <> 0)
                    and (Prix_Korr.FieldByName('Ot_nz').AsVariant <> null)then
//        RaspSyrPrepOt_Nz.AsFloat := (RoundTo(Prix_Korr.FieldByName('Ot_nz').ASFLOAT*dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,IBQuery1.FieldByName('Kei_id').AsInteger,IBQuery1.FieldByName('Ksm_id').AsInteger),tochn))
                  RaspSyrPrepOt_Nz.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Ot_nz').ASFLOAT
                                                                  * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                 IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                 IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                  {tochn}-6))
                else
                  RaspSyrPrepOt_nz.AsVariant := 0;
                if (Prix_Korr.FieldByName('Onm_s').ASFLOAT <> 0)
                    and (Prix_Korr.FieldByName('Onm_s').AsvARIant <> null) then
//        RaspSyrPrepOnm_s.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Onm_s').asfloat*dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,IBQuery1.FieldByName('Kei_id').AsInteger,IBQuery1.FieldByName('Ksm_id').AsInteger),tochn))
                  RaspSyrPrepOnm_s.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Onm_s').asfloat
                                                                  * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                 IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                 IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                  {tochn}-6))
                else
                  RaspSyrPrepOnm_s.AsVariant := 0;
                if (Prix_Korr.FieldByName('Onm_nz').AsFloat <> 0)
                    and (Prix_Korr.FieldByName('Onm_nz').AsVariant <> null)then
//        RaspSyrPrepOnm_Nz.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Onm_nz').AsFloat*dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,IBQuery1.FieldByName('Kei_id').AsInteger,IBQuery1.FieldByName('Ksm_id').AsInteger),tochn))
                  RaspSyrPrepOnm_Nz.AsFloat := (RoundTo(Prix_Korr.FieldByName('Onm_nz').AsFloat
                                                        * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                       IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                       IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                        {tochn}-6))
                else
                  RaspSyrPrepOnm_nz.AsVariant := 0;
                if (Prix_Korr.FieldByName('zag_period').ASFLOAT <> 0)
                    and (Prix_Korr.FieldByName('zag_period').AsVariant <> null) then
                  RaspSyrPrepzag_period.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('zag_period').ASFLOAT
                                                                       * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                      IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                      IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                       {tochn}-6))
                else
                  RaspSyrPrepZag_period.AsVariant := 0;
                if (Prix_Korr.FieldByName('prix_period').AsFloat <> 0)
                    and (Prix_Korr.FieldByName('prix_period').AsVariant <> null)then
                  RaspSyrPrepprix_period.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('prix_period').ASFLOAT
                                                                        * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                       IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                       IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                        {tochn}-6))
                else
                  RaspSyrPrepprix_period.AsVariant := 0;
                if (Prix_Korr.FieldByName('rash_virab_period').ASFLOAT <> 0)
                    and (Prix_Korr.FieldByName('rash_virab_period').AsvARIant <> null) then
                  RaspSyrPreprash_virab_period.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('rash_virab_period').asfloat
                                                                              * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                             IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                             IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                              {tochn}-6))
                else
                  RaspSyrPreprash_virab_period.AsVariant := 0;
                if (Prix_Korr.FieldByName('Peredano_rash_s').AsFloat <> 0)
                    and (Prix_Korr.FieldByName('Peredano_rash_s').AsVariant <> null)then
                  RaspSyrPrepPeredano_rash_s.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Peredano_rash_s').AsFloat
                                                                            * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                           IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                           IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                            {tochn}-6))
                else
                  RaspSyrPrepPeredano_rash_s.AsVariant := 0;
                if (Prix_Korr.FieldByName('Peredano_rash_nz').AsFloat <> 0)
                    and (Prix_Korr.FieldByName('Peredano_rash_nz').AsVariant <> null)then
                  RaspSyrPrepPeredano_rash_nz.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Peredano_rash_nz').AsFloat
                                                                             * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                            IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                            IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                             {tochn}-6))
                else
                  RaspSyrPrepPeredano_rash_nz.AsVariant := 0;
 //      if (IBQuery1.FieldByName('Ost_c').ASFLOAT<>0) and (IBQuery1.FieldByName('Ost_c').AsVariant<>null) then
 //       RaspSyrPrepOst_c.ASstring := FloatToStr(RoundTo(s_Ost*dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,IBQuery1.FieldByName('Kei_id').AsInteger,IBQuery1.FieldByName('Ksm_id').AsInteger),tochn));
 //      else RaspSyrPrepOst_c.AsVariant:=0;
              end
              else
              begin
                RaspSyrPrepOt_s.AsVariant := 0;
                RaspSyrPrepOt_nz.AsVariant := 0;
                RaspSyrPrepOnm_s.AsVariant := 0;
                RaspSyrPrepOnm_nz.AsVariant := 0;
                RaspSyrPrepZag_period.AsVariant := 0;
                RaspSyrPrepprix_period.AsVariant := 0;
                RaspSyrPreprash_virab_period.AsVariant := 0;
                RaspSyrPrepPeredano_rash_s.AsVariant := 0;
                RaspSyrPrepPeredano_rash_nz.AsVariant := 0;
              end;

              RaspSyrPrepKEI_id.AsInteger := IBQuery1.FieldByName('KEIN').AsInteger;
              RaspSyrPrepNeis.AsString := IBQuery1.FieldByName('NEIS').AsString;
            end;
            RaspSyrPrepKolvip.ASFLOAT := ROUNDTO(IBQuery1.FieldByName('Plnorm').ASFLOAT
                                                 * v_vipusk,
                                                 tochn);
            RaspSyrPrepPLAN_NORM.AsFloat := IBQuery1.FieldByName('Plnorm').AsFloat;
            RaspSyrPrep.Post;
            RaspSyrPrep.Next;
          end;
        end;
        IBQuery1.Next;
      END;
  // добавление вставленных материалов
      IBQuery1.Active := False;
      IBQuery1.SQL.Clear;
      IBQuery1.SQL.Add(' SELECT DISTINCT ost.KART_ID,norm.kei_id kein,ost.kei_id,ost.KSM_ID,ost.KSM_IDpr kodp,ost.neis neis_ost,');
      IBQuery1.SQL.Add(' ost.RAZDEL_ID,EDIZ.NEIS,ost.nmat, ost.ostatok_end_s ot_s,');
      IBQuery1.SQL.Add(' ost.ostatok_end_nz ot_nz, ost.ostatok_begin_s onm_s,');
      IBQuery1.SQL.Add(' ost.ostatok_begin_nz onm_nz,RAZDEL.KRAZ,');
      IBQuery1.SQL.Add('(ost.zag_period+ ost.peredano_prih_nz) as zag_period,');
      IBQuery1.SQL.Add('(ost.prix_period+ost.peredano_prih_nz) as prix_period,');
      IBQuery1.SQL.Add('ost.peredano_rash_s,ost.peredano_rash_nz,ost.rash_virab_period');
      IBQuery1.SQL.Add(' FROM select_ost_ksm ('+''''+s_dat1+''''+','+''''+s_dat2+''''+','+inttostr(s_kodp)+','+inttostr(vstruk_id)+',0) ost');
      IBQuery1.SQL.Add(' inner JOIN RAZDEL ON (ost.RAZDEL_ID = RAZDEL.RAZDEL_ID)');
      IBQuery1.SQL.Add(' left JOIN norm_view(119,'+INTTOSTR(God)+','+INTTOSTR(mes)+','+INTTOSTR(s_KODP)+','+INTTOSTR(Vstruk_ID)+',0) norm on ((NORM.kodp = ost.ksm_idpr) AND (norm.ksm_id=ost.ksm_id) AND (NORM.razdel_id=ost.razdel_id))');
      IBQuery1.SQL.Add(' left JOIN EDIZ on (norm.kEI_id=EDIZ.kEI_id)');
      IBQuery1.SQL.Add('left join (  select kart_id, max(mes),kol_rasx,kol from ceh_otchet where ceh_otchet.mes<='+inttostr(mes)+' and ceh_otchet.god='+inttostr(god));
      IBQuery1.SQL.Add(' group by kart_id,kol_rasx,kol) co(kart_id, mes,kol_rasx,kol) on (ost.kart_id=co.kart_id)');
      IBQuery1.SQL.Add(' where  (z(zag_period)<>0 or z( prix_period)<>0  or  z(OST.OSTATOK_END_S)<>0 or z(OST.OSTATOK_END_NZ)<>0 ');
      IBQuery1.SQL.Add(' or z(rasx_period)<>0 or z(rash_virab_period)<>0 or z(co.kol_rasx)<>0 or z(co.kol)<>0 or z(OST.OSTATOK_BEGIN_NZ)<>0 or z(OST.OSTATOK_BEGIN_S) <>0 )');
      IBQuery1.SQL.Add(' or z(ost.peredano_rash_s)<>0 or z(ost.peredano_rash_nz)<>0');
      IBQuery1.Active :=true;
      IBQuery1.First;
      while not IBQuery1.Eof do
      begin
        s_kei := IBQuery1.FieldByName('KEI_id').AsInteger;
        if IBQuery1.FieldByName('KEIN').AsVariant = null  then
          v_keiN := s_kei
        else
          v_keiN := IBQuery1.FieldByName('KEIN').AsInteger;
        s_ksm := IBQuery1.FieldByName('Ksm_id').AsInteger;

        s_ost := 0;

        RaspSyrPrep.First;
        if NOT RaspSyrPrep.Locate('ksm_id;kraz',
                                  VarArrayOf([IBQuery1.FieldByName('KSM_ID').AsInteger,
                                              IBQuery1.FieldByName('KRAZ').AsInteger]),
                                  []) THEN
        BEGIN
          tochn := dm1.getTochn(s_kodp, IBQuery1.FieldByName('KSM_ID').AsInteger);

          RaspSyrPrep.Insert;
          RaspSyrPrepDoc_id.AsInteger := vDocument_id;
          RaspSyrPrepRazdel_id.AsInteger := IBQuery1.FieldByName('Razdel_id').AsInteger;
          RaspSyrPrepKRAZ.AsInteger := IBQuery1.FieldByName('KRAZ').AsInteger;
          RaspSyrPrepNmat.ASSTRING := IBQuery1.FieldByName('NMAT').AsString;
          RaspSyrPrepKEI.AsInteger := IBQuery1.FieldByName('KEI_id').AsInteger;
          if IBQuery1.FieldByName('KEIN').AsVariant = null  then
          begin
            RaspSyrPrepKEI_id.AsInteger := IBQuery1.FieldByName('KEI_id').AsInteger;
            RaspSyrPrepNeis.AsString := IBQuery1.FieldByName('NEIS_ost').AsString;
          end
          else
          begin
            RaspSyrPrepKEI_id.AsInteger := IBQuery1.FieldByName('KEIN').AsInteger;
            RaspSyrPrepNeis.AsString := IBQuery1.FieldByName('NEIS').AsString;
          end;
          RaspSyrPrepStroka_id.AsInteger := vStroka_id;
          RaspSyrPrepNdok.ASSTRING := vNdoc;
          RaspSyrPrepTip_op_id.AsInteger := vTip_op_Id;
          RaspSyrPrepKol_Rash_Ediz.ASFLOAT := 0;
          RaspSyrPrepKol_prih_Ediz.ASFLOAT := 0;
          RaspSyrPrepKART_id.AsInteger := IBQuery1.FieldByName('Kart_id').AsInteger;
          RaspSyrPrepKSM_ID.AsInteger := IBQuery1.FieldByName('KSM_ID').AsInteger;
          if (IBQuery1.FieldByName('Ot_s').ASFLOAT <> 0)
              and (IBQuery1.FieldByName('Ot_s').AsVariant <> null) then
            RaspSyrPrepOt_s.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('Ot_s').ASFLOAT
                                                           * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                          IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                          IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                           {tochn}-6))
          else
            RaspSyrPrepOt_s.AsVariant := 0;
          if (IBQuery1.FieldByName('Ot_nz').ASFLOAT <> 0)
              and (IBQuery1.FieldByName('Ot_nz').AsVariant <> null)then
            RaspSyrPrepOt_Nz.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('Ot_nz').ASFLOAT
                                                            * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                           IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                           IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                            {tochn}-6))
          else
            RaspSyrPrepOt_nz.AsVariant := 0;
          if (IBQuery1.FieldByName('Onm_s').ASFLOAT <> 0)
              and (IBQuery1.FieldByName('Onm_s').AsvARIant <> null) then
            RaspSyrPrepOnm_s.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('Onm_s').AsFloat
                                                            * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                           IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                           IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                            {tochn}-6))
          else
            RaspSyrPrepOnm_s.AsVariant := 0;
          if (IBQuery1.FieldByName('Onm_NZ').AsFloat <> 0)
              and (IBQuery1.FieldByName('Onm_NZ').AsVariant <> null)then
            RaspSyrPrepOnm_Nz.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('Onm_NZ').AsFloat
                                                             * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                            IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                            IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                             {tochn}-6))
          else
            RaspSyrPrepOnm_nz.AsVariant := 0;
          if (IBQuery1.FieldByName('zag_period').ASFLOAT <> 0)
              and (IBQuery1.FieldByName('zag_period').AsVariant <> null) then
            RaspSyrPrepzag_period.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('zag_period').ASFLOAT
                                                                 * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                 {tochn}-6))
          else
            RaspSyrPrepZag_period.AsVariant := 0;
          if (IBQuery1.FieldByName('prix_period').AsFloat <> 0)
              and (IBQuery1.FieldByName('prix_period').AsVariant <> null)then
            RaspSyrPrepprix_period.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('prix_period').ASFLOAT
                                                                  * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                 IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                 IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                  {tochn}-6))
          else
            RaspSyrPrepprix_period.AsVariant := 0;
          if (IBQuery1.FieldByName('rash_virab_period').ASFLOAT <> 0)
              and (IBQuery1.FieldByName('rash_virab_period').AsvARIant <> null) then
            RaspSyrPreprash_virab_period.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('rash_virab_period').asfloat
                                                                        * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                       IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                       IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                        {tochn}-6))
          else
            RaspSyrPreprash_virab_period.AsVariant := 0;
          if (IBQuery1.FieldByName('Peredano_rash_s').AsFloat <> 0)
              and (IBQuery1.FieldByName('Peredano_rash_s').AsVariant <> null) then
            RaspSyrPrepPeredano_rash_s.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('Peredano_rash_s').AsFloat
                                                                      * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                     IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                     IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                      {tochn}-6))
          else
            RaspSyrPrepPeredano_rash_s.AsVariant := 0;
          if (IBQuery1.FieldByName('Peredano_rash_nz').AsFloat <> 0)
              and (IBQuery1.FieldByName('Peredano_rash_nz').AsVariant <> null) then
            RaspSyrPrepPeredano_rash_nz.ASstring := FloatToStr(RoundTo(IBQuery1.FieldByName('Peredano_rash_nz').AsFloat
                                                                       * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                                      IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                                      IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                                       {tochn}-6))
          else
            RaspSyrPrepPeredano_rash_nz.AsVariant := 0;
//    if (IBQuery1.FieldByName('Ost_c').ASFLOAT<>0) and (IBQuery1.FieldByName('Ost_c').AsVariant<>null) then
          RaspSyrPrepOst_c.ASstring := FloatToStr(RoundTo(s_Ost
                                                          * dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,
                                                                         IBQuery1.FieldByName('Kei_id').AsInteger,
                                                                         IBQuery1.FieldByName('Ksm_id').AsInteger),
                                                          {tochn}-6));
//    else RaspSyrPrepOst_c.AsVariant:=0;
          RaspSyrPrep.Post;
        END;
        IBQuery1.Next;
      end;
      RaspSyrPrep.First;
      while not RaspSyrPrep.Eof do
      begin
        IF RaspSyrPrepTip_op_id.AsInteger = 30 then
        begin
          tochn := dm1.getTochn(s_kodp, RaspSyrPrep.FieldByName('KSM_ID').AsInteger);
          Prix_korr.First;
          if Prix_korr.Locate('ksm_id;razdel_id',
                              VarArrayOf([RaspSyrPrepKsm_id.AsInteger, RaspSyrPrepRazdel_id.AsInteger]),
                              []) then
          begin
            RaspSyrPrep.Edit;
            if (Prix_Korr.FieldByName('Ot_s').ASFLOAT <> 0)
                and (Prix_Korr.FieldByName('Ot_s').AsVariant <> null) then
              RaspSyrPrepOt_s.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Ot_s').ASFLOAT
                                                             * dm1.Koef_per(RaspSyrPrep.FieldByName('Kei_id').AsInteger,
                                                                            RaspSyrPrep.FieldByName('Kei').AsInteger,
                                                                            RaspSyrPrep.FieldByName('Ksm_id').AsInteger),
                                                             {tochn}-6))
//        RaspSyrPrepOt_s.AsFloat := (RoundTo(Prix_Korr.FieldByName('Ot_s').ASFLOAT*dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,IBQuery1.FieldByName('Kei_id').AsInteger,IBQuery1.FieldByName('Ksm_id').AsInteger),tochn))
            else
              RaspSyrPrepOt_s.AsVariant := 0;
            if (Prix_Korr.FieldByName('Ot_nz').AsFloat <> 0)
                and (Prix_Korr.FieldByName('Ot_nz').AsVariant <> null)then
              RaspSyrPrepOt_Nz.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Ot_nz').ASFLOAT
                                                              * dm1.Koef_per(RaspSyrPrep.FieldByName('Kei_id').AsInteger,
                                                                             RaspSyrPrep.FieldByName('Kei').AsInteger,
                                                                             RaspSyrPrep.FieldByName('Ksm_id').AsInteger),
                                                              {tochn}-6))
//        RaspSyrPrepOt_Nz.AsFloat := (RoundTo(Prix_Korr.FieldByName('Ot_nz').ASFLOAT*dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,IBQuery1.FieldByName('Kei_id').AsInteger,IBQuery1.FieldByName('Ksm_id').AsInteger),tochn))
            else
              RaspSyrPrepOt_nz.AsVariant := 0;
            if (Prix_Korr.FieldByName('Onm_s').ASFLOAT <> 0)
                and (Prix_Korr.FieldByName('Onm_s').AsvARIant <> null) then
              RaspSyrPrepOnm_s.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Onm_s').asfloat
                                                              * dm1.Koef_per(RaspSyrPrep.FieldByName('Kei_id').AsInteger,
                                                                             RaspSyrPrep.FieldByName('Kei').AsInteger,
                                                                             RaspSyrPrep.FieldByName('Ksm_id').AsInteger),
                                                              {tochn}-6))
            else
              RaspSyrPrepOnm_s.AsVariant := 0;
            if (Prix_Korr.FieldByName('Onm_nz').AsFloat <> 0)
                and (Prix_Korr.FieldByName('Onm_nz').AsVariant <> null)then
              RaspSyrPrepOnm_Nz.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Onm_nz').AsFloat
                                                               * dm1.Koef_per(RaspSyrPrep.FieldByName('Kei_id').AsInteger,
                                                                              RaspSyrPrep.FieldByName('Kei').AsInteger,
                                                                              RaspSyrPrep.FieldByName('Ksm_id').AsInteger),
                                                               {tochn}-6))
//        RaspSyrPrepOnm_Nz.AsFloat := (RoundTo(Prix_Korr.FieldByName('Onm_nz').AsFloat*dm1.Koef_per(IBQuery1.FieldByName('Kein').AsInteger,IBQuery1.FieldByName('Kei_id').AsInteger,IBQuery1.FieldByName('Ksm_id').AsInteger),tochn))
            else
              RaspSyrPrepOnm_nz.AsVariant := 0;
            if (Prix_Korr.FieldByName('zag_period').ASFLOAT <> 0)
              and (Prix_Korr.FieldByName('zag_period').AsVariant <> null) then
              RaspSyrPrepzag_period.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('zag_period').ASFLOAT
                                                                   * dm1.Koef_per(RaspSyrPrep.FieldByName('Kei_id').AsInteger,
                                                                                  RaspSyrPrep.FieldByName('Kei').AsInteger,
                                                                                  RaspSyrPrep.FieldByName('Ksm_id').AsInteger),
                                                                   {tochn}-6))
            else
              RaspSyrPrepZag_period.AsVariant := 0;
            if (Prix_Korr.FieldByName('prix_period').AsFloat <> 0)
                and (Prix_Korr.FieldByName('prix_period').AsVariant <> null)then
              RaspSyrPrepprix_period.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('prix_period').ASFLOAT
                                                                    * dm1.Koef_per(RaspSyrPrep.FieldByName('Kei_id').AsInteger,
                                                                                   RaspSyrPrep.FieldByName('Kei').AsInteger,
                                                                                   RaspSyrPrep.FieldByName('Ksm_id').AsInteger),
                                                                    {tochn}-6))
            else
              RaspSyrPrepprix_period.AsVariant := 0;
            if (Prix_Korr.FieldByName('rash_virab_period').ASFLOAT <> 0)
                and (Prix_Korr.FieldByName('rash_virab_period').AsvARIant <> null) then
              RaspSyrPreprash_virab_period.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('rash_virab_period').asfloat
                                                                          * dm1.Koef_per(RaspSyrPrep.FieldByName('Kei_id').AsInteger,
                                                                                         RaspSyrPrep.FieldByName('Kei').AsInteger,
                                                                                         RaspSyrPrep.FieldByName('Ksm_id').AsInteger),
                                                                          {tochn}-6))
            else
              RaspSyrPreprash_virab_period.AsVariant := 0;
            if (Prix_Korr.FieldByName('Peredano_rash_s').AsFloat <> 0)
                and (Prix_Korr.FieldByName('Peredano_rash_s').AsVariant <> null)then
              RaspSyrPrepPeredano_rash_s.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Peredano_rash_s').AsFloat
                                                                        * dm1.Koef_per(RaspSyrPrep.FieldByName('Kei_id').AsInteger,
                                                                                       RaspSyrPrep.FieldByName('Kei').AsInteger,
                                                                                       RaspSyrPrep.FieldByName('Ksm_id').AsInteger),
                                                                        {tochn}-6))
            else
              RaspSyrPrepPeredano_rash_s.AsVariant := 0;
            if (Prix_Korr.FieldByName('Peredano_rash_nz').AsFloat <> 0)
                and (Prix_Korr.FieldByName('Peredano_rash_nz').AsVariant <> null)then
              RaspSyrPrepPeredano_rash_nz.ASstring := FloatToStr(RoundTo(Prix_Korr.FieldByName('Peredano_rash_nz').AsFloat
                                                                         * dm1.Koef_per(RaspSyrPrep.FieldByName('Kei_id').AsInteger,
                                                                                        RaspSyrPrep.FieldByName('Kei').AsInteger,
                                                                                        RaspSyrPrep.FieldByName('Ksm_id').AsInteger),
                                                                         {tochn}-6))
            else
              RaspSyrPrepPeredano_rash_nz.AsVariant := 0;
            RaspSyrPrep.Post;
          end;
        end;
        RaspSyrPrep.Next;
      end;
      RaspSyrPrep.First;
      if (PageControl1.ActivePage = tabsheet2)
          or (PageControl1.ActivePage = tabsheet3) then
      begin
        While not RaspSyrPrep.Eof do
        begin
          RaspSyrPrep.Edit;
          RaspSyrPrep.FieldByName('Vib').AsInteger := 0;
          RaspSyrPrep.Post;
          RaspSyrPrep.Next;
        end;
      end;

      openOstCeh;
      RaspSyrPrep.First;
      while (not RaspSyrPrep.Eof) do
      begin
        ostceh.First;
        if (ostceh.Locate('ksm_id', RaspSyrPrep.FieldByName('Ksm_id').AsInteger, [])) THEN
          s_ost := ostcehOt_c.asfloat
        else
          s_ost := 0;

        RaspSyrPrep.Edit;
        RaspSyrPrepOst_c.ASstring := FloatToStr(RoundTo(s_Ost
                                                        * dm1.Koef_per(RaspSyrPrep.FieldByName('KEI_id').AsInteger,
                                                                       RaspSyrPrep.FieldByName('KEI').AsInteger,
                                                                       RaspSyrPrep.FieldByName('Ksm_id').AsInteger),
                                                        -6));
        RaspSyrPrep.post;
        RaspSyrPrep.Next;
      end;

      RaspSyrPrep.First;
      RaspSyrPrep.EnableControls;
      RaspSyrPrep.BeforePost := RaspSyrPrepBeforePost;
      RaspSyrPrep.AfterPost := RaspSyrPrepAfterPost;
      RaspSyrPrep.AfterDelete := RaspSyrPrepAfterDelete;
      RaspSyrPrep.BeforeDelete := RaspSyrPrepBeforeDelete;
      RaspSyrPrepKsm_id.OnValidate := RaspSyrPrepKsm_idValidate;
      RaspSyrPrepKraz.OnValidate := RaspSyrPrepKrazValidate;
    end;
    if PageControl1.ActivePage = tabsheet4 then
    begin
      DM1.DOcUMENT.close;
      DM1.DOcUMENT.MacroByName('USL').AsString := 'WHERE DOcUMENT.STRUK_ID = '
                                                  + INTTOSTR(VsTRUK_ID)
//  + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
//  + ' AND DOCUMENT.KLIENT_ID='+inttostr(vkLIENT_Id)
//  + ' AND DOCUMENT.NDOK='+''''+VnDOC+''''
                                                  + ' AND Document.Date_dok between '
                                                  + '''' + s_dat1 + '''' + ' and '
                                                  + '''' + s_dat2 + '''';
      DM1.DOcUMENT.open;
      panel3.Visible := false;
      PeredanoSyr.Close;
      PeredanoSyr.ParamByName('KSM').AsInteger := s_kodp;
      PeredanoSyr.ParamByName('cex').AsInteger := vStruk_id;
      PeredanoSyr.ParamByName('dat1').AsString := s_dat1;
      PeredanoSyr.ParamByName('dat2').AsString := S_dat2;
      PeredanoSyr.Open;
      ToolButton5.Enabled := false;
    end;
    StopWait;
  end;
  if (PageControl1.ActivePage = tabsheet1) then
    DBGridEh1.SetFocus;
  if (PageControl1.ActivePage = tabsheet2) then
    DBGridEh2.SetFocus;
  if (PageControl1.ActivePage = tabsheet3) then
    DBGridEh3.SetFocus;
  if (PageControl1.ActivePage = tabsheet4) then
    DBGridEh4.SetFocus;
end;

procedure TFKorOtchet.MenuItem1Click(Sender: TObject);
begin
 if PageControl1.ActivePage=tabsheet2 then
 begin
//  расход на выработку - н/з=0

   Splash := ShowSplashWindow(AniBmp1,
   'Распределение расхода на выработку. Подождите, пожалуйста...', True, nil);
   RaspSyrPrep.First;
   while not RaspSyrPrep.Eof do
   begin
      v_rasp:=RaspSyrPrepOt_nz.AsFloat;
      RaspSyrPrep.Edit;
      RaspSyrPrepKol_rash_ediz.AsFloat:=v_rasp;
      RaspSyrPrep.Post;
      RaspSyrPrep.Next;
   end;
   Splash.Free;
   RaspSyrPrep.First;
 end;
 if PageControl1.ActivePage=tabsheet3 then
 begin
//  загрузка по норме
  Splash := ShowSplashWindow(AniBmp1,
   'Распределение загрузки по норме. Подождите, пожалуйста...', True, nil);
   RaspSyrPrep.First;
   while not RaspSyrPrep.Eof do
   begin
      v_rasp:=RaspSyrPrepKolVip.AsFloat;
      RaspSyrPrep.Edit;
      RaspSyrPrepKol_rash_ediz.AsFloat:=v_rasp;
      RaspSyrPrep.Post;
      RaspSyrPrep.Next;
   end;
   Splash.Free;
   RaspSyrPrep.First;
 end;
end;

procedure TFKorOtchet.MenuItem2Click(Sender: TObject);
begin
 if PageControl1.ActivePage=tabsheet2 then
 begin
//  расход на выработку - н/з=0

   Splash := ShowSplashWindow(AniBmp1,
   'Распределение расхода на выработку. Подождите, пожалуйста...', True, nil);
   RaspSyrPrep.First;
   while not RaspSyrPrep.Eof do
   begin
    if RaspSyrPrepVib.AsInteger=1 then
    begin
      v_rasp:=RaspSyrPrepOt_nz.AsFloat;
      RaspSyrPrep.Edit;
      RaspSyrPrepKol_rash_ediz.AsFloat:=v_rasp;
      RaspSyrPrep.Post;
    end;
    RaspSyrPrep.Next;
   end;
   Splash.Free;
   RaspSyrPrep.First;
 end;
 if PageControl1.ActivePage=tabsheet3 then
 begin
//  загрузка по норме
  Splash := ShowSplashWindow(AniBmp1,
   'Распределение загрузки по норме. Подождите, пожалуйста...', True, nil);
   RaspSyrPrep.First;
   while not RaspSyrPrep.Eof do
   begin
    if RaspSyrPrepVib.AsInteger=1 then
    begin
      v_rasp:=RaspSyrPrepKolVip.AsFloat;
      RaspSyrPrep.Edit;
      RaspSyrPrepKol_rash_ediz.AsFloat:=v_rasp;
      RaspSyrPrep.Post;
    end;
    RaspSyrPrep.Next;
   end;
   Splash.Free;
   RaspSyrPrep.First;
 end;
end;

procedure TFKorOtchet.FormShow(Sender: TObject);
begin
  ComboBox2.OnChange := nil;
  ComboBox1.OnChange := nil;
  ComboBox1.ItemIndex := mes - 1;
  ComboBox2.ItemIndex := god - 2000;
  ComboBox2.OnChange := ComboBox2Change;
  ComboBox1.OnChange := ComboBox1Change;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1 := '01.' + S_MES + '.' + INTTOSTR(GOD);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1), 1) - 1);
  pr_button9 := true;
  pr_kor := 0;
  if (s_kodp <> 0) then
  begin
    edit1.text := s_kodProd;
    label19.caption := s_NMAT;
    label29.caption := s_namorg;
    label21.caption := s_Neiz;
    label22.caption := s_GOST;
    label41.caption := s_Xarkt;
    LABEL1.Caption := S_NAMREG;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT  KARTv.KOL_PRIH');
    DM1.IBQuery1.SQL.Add(' FROM KARTv');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                         + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                         + ' AND KARTv.KSM_ID=' + INTTOSTR(s_KODP)
                         + ' AND Document.Date_op between ' + '''' + s_dat1
                         + '''' + ' and ' + '''' + s_dat2 + '''');
    DM1.IBQuery1.Active := True;
    if (not dm1.IBQuery1.Eof) then
    begin
      V_VIPUSK := DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
      label20.caption := FLOATTOSTR(V_VIPUSK) + '   ' + S_NEIZ;
    end
    ELSE
    BEGIN
      V_VIPUSK := 0;
      label20.caption := '0';
    END;
    if (KartKorrOtchet.Active) then
      KartKorrOtchet.Close;
    KorSost;
  end
  else
  begin
    RaspSyrPrep.Active := False;
    label1.Caption := '';
    label19.caption := '';
    label29.caption := '';
    label21.caption := '';
    label22.caption := '';
    label41.caption := '';
    label20.caption := '';
    vTip_doc_id := 37;
    PageControl1.ActivePage := tabsheet3;
    ToolButton5.Enabled := false;
    ToolButton5.Hint := 'Занесение загрузки по норме';
    ToolButton5.Enabled := True;
  end;
end;

procedure TFKorOtchet.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if (edit1.text<>'') and (not dm1.IBQuery1.Eof)  then
    begin
      EDIT1.OnChange:=nil;
      edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
      EDIT1.OnChange:=Edit1Change;
      s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
      s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
      s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
      s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
      s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
      s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
      s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
      s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
      s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
      s_namREG:=DM1.IBQuery1.FieldByName('NAM_ReG').AsString;
      label1.Caption:=dm1.IBQuery1.FieldByName('Nam_reg').AsString;
      label19.caption:=s_NMAT;
      label29.caption:=s_namorg;
      label21.caption:=s_Neiz;
      label22.caption:=s_GOST;
      label41.caption:=s_Xarkt;
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT  KARTv.KOL_PRIH');
      DM1.IBQuery1.SQL.Add(' FROM KARTv');
      DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
      DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
      + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
      + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
      + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
      DM1.IBQuery1.Active := True;
      if not dm1.IBQuery1.Eof then
      begin
        V_VIPUSK:=DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
        label20.caption:=FLOATTOSTR(V_VIPUSK)+'   '+S_NEIZ;
      end
      ELSE
      BEGIN
        V_VIPUSK:=0;
        label20.caption:='0';
      END;
      if KartKorrOtchet.Active then
        KartKorrOtchet.Close;
      KorSost;
    end;
  end;
end;

procedure TFKorOtchet.Edit1Change(Sender: TObject);
begin
if edit1.text<>''   then begin
 skod:=replacestr(edit1.text,',','.')+'%';
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,SPPROD.SPROD_ID,');
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
   Label41.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  end
  else
  begin
   Label19.Caption:='';
   Label41.Caption:='';
  end;
 Label19.Refresh;
 Label41.Refresh;
 end;
end;

procedure TFKorOtchet.Edit1Click(Sender: TObject);
begin
Edit1.text:='';
end;

procedure TFKorOtchet.RaspSyrPrepAfterDelete(DataSet: TDataSet);
begin
  dm1.startWriteTrans;
  if (not KartKorrOtchet.Active) then
  begin
    KartKorrOtchet.MacroByName('usl').AsString := ' WHERE document.klient_id='
                                                  + inttostr(s_kodp)
                                                  + ' and (document.date_op between '
                                                  + '''' + s_dat1 + '''' + ' and '
                                                  + '''' + s_dat2 + '''' + ') and '
                                                  + usl_tip;
    KartKorrOtchet.Open;
  end;
  if (KartKorrOtchet.Locate('stroka_id', s_del, [])) then
  begin
    KartKorrOtchet.Delete;
    KartKorrOtchet.ApplyUpdates;
  end;
end;

procedure TFKorOtchet.RaspSyrPrepAfterPost(DataSet: TDataSet);
begin
  dm1.startWriteTrans;
  if (not KartKorrOtchet.Active) then
  begin
    KartKorrOtchet.MacroByName('usl').AsString := ' WHERE document.klient_id='
                                                  + inttostr(s_kodp)
                                                  + ' and (document.date_op between '
                                                  + '''' + s_dat1 + '''' + ' and '
                                                  + '''' + s_dat2 + '''' + ') and '
                                                  + usl_tip;
    KartKorrOtchet.Open;
  end;
  if (KartKorrOtchet.Locate('stroka_id', RaspSyrPrepStroka_id.AsInteger, [])) then
  begin
    KartKorrOtchet.edit;
    KartKorrOtchetKol_Rash_Ediz.AsFloat := RaspSyrPrepKol_rash_Ediz.AsFloat;
    KartKorrOtchet.Post;
  end
  else
  begin
    KartKorrOtchet.Insert;
    KartKorrOtchetKart_id.AsInteger := RaspSyrPrepKart_id.AsInteger;
    KartKorrOtchetStroka_id.AsInteger := RaspSyrPrepStroka_id.AsInteger;
    KartKorrOtchetDoc_id.AsInteger := RaspSyrPrepDoc_id.AsInteger;
    KartKorrOtchetKsm_id.AsInteger := RaspSyrPrepKsm_id.AsInteger;
    KartKorrOtchetRazdel_id.AsInteger := RaspSyrPrepRazdel_id.AsInteger;
    KartKorrOtchetKei_id.AsInteger := RaspSyrPrepKei_id.AsInteger;
    KartKorrOtchetTip_op_id.AsInteger := RaspSyrPrepTip_Op_id.AsInteger;
    KartKorrOtchetKol_Rash_Ediz.AsFloat := RaspSyrPrepKol_rash_Ediz.AsFloat;
    KartKorrOtchetKol_Prih_Ediz.AsFloat := RaspSyrPrep.FieldByName('KOL_PRIH_EDIZ').AsFloat;
    KartKorrOtchet.Post;
  end;
  KartKorrOtchet.ApplyUpdates;
end;

procedure TFKorOtchet.RaspSyrPrepBeforeDelete(DataSet: TDataSet);
begin
  s_del := RaspSyrPrepStroka_id.AsInteger;    
end;

procedure TFKorOtchet.RaspSyrPrepBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_KART';
  DM1.Add_KartDok.ExecProc;
  vStroka_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFKorOtchet.RaspSyrPrepBeforePost(DataSet: TDataSet);
begin
  If RaspSyrPrepRazdel_id.AsInteger = 0 then
  begin
   MessageDlg('Введите раздел!', mtWarning, [mbOK], 0);
   Abort;
  end;
  If RaspSyrPrep.FieldByName('ksm_id').AsInteger = 0 then
  begin
   MessageDlg('Введите код сырья!', mtWarning, [mbOK], 0);
   Abort;
  end;
  If RaspSyrPrep.FieldByName('kei_ID').AsInteger = 0 then
  begin
   MessageDlg('Введите единицу измерения!', mtWarning, [mbOK], 0);
   Abort;
  end;

  if (vTip_op_id=30) then
  begin
   v_KartV:=SelectToVarIB('select Ostatki.kart_id   FROM Ostatki'
   + ' WHERE Ostatki.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND ostatki.ksm_id='+inttostr(RaspSyrPrepKsm_id.AsInteger)
   + ' AND( Ostatki.Ksm_idpr=0 or Ostatki.Ksm_idpr is null)',dm1.belmed,dm1.ibt_read);
   RaspSyrPrep.Edit;
   If (v_KartV <> Null) and (v_KartV <> 0) then
      RaspSyrPrepKart_id.AsInteger:=V_KARTV
   else
     RaspSyrPrepKart_id.AsInteger:=0;
  end
  else
  begin
   if (RaspSyrPrepKart_id.AsInteger=0) then
   begin
    v_KartV:=SelectToVarIB('select Ostatki.kart_id   FROM Ostatki'
    + ' WHERE Ostatki.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND ostatki.ksm_id='+inttostr(RaspSyrPrepKsm_id.AsInteger)
    + ' AND Ostatki.razdel_id='+inttostr(RaspSyrPrepRazdel_id.AsInteger)
    + ' AND Ostatki.Ksm_idpr='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
    If (v_KartV <> Null) and (v_KartV <> 0) then
     RaspSyrPrepKart_id.AsInteger:=V_KARTV
    else RaspSyrPrepKart_id.AsInteger:=0;
   end;
   if (vTip_op_id=33) then
   begin
// проверка наличия сырья на препарате
    if (RaspSyrPrep.FieldByName('kei').AsInteger=0) or (RaspSyrPrep.FieldByName('kei').AsVariant= null)  then
    begin
     v_KartV:=SelectToVarIB('select matrop.kei_id   FROM matrop'
     + ' WHERE matrop.ksm_id='+INTTOSTR(RaspSyrPrepKsm_id.AsInteger),dm1.belmed,dm1.ibt_read);
     If (v_KartV <> Null) and (v_KartV <> 0) then
     begin
      s_kei:=V_KARTV;
      RaspSyrPrep.FieldByName('kei').AsInteger:=s_kei;
     end
     else
      s_kei:=RaspSyrPrep.FieldByName('kei_ID').AsInteger;
    end
    ELSE s_kei:=RaspSyrPrep.FieldByName('kei').AsInteger;
    v_razdel:=RaspSyrPrepRazdel_id.AsInteger;
    v_keiN:=RaspSyrPrep.FieldByName('kei_ID').AsInteger;
    s_ksm:=RaspSyrPrep.FieldByName('ksm_id').AsInteger;
    v_kolRash:=RaspSyrPrepKol_Rash.AsFloat;
    v_prix_period:=RaspSyrPrepPrix_period.AsFloat;
    v_kolRash_s:=RaspSyrPrepKol_Rash.AsFloat*dm1.Koef_per(v_keiN,s_kei,s_ksm);
    v_ost_syr:=RaspSyrPrepOnm_s.AsFloat*dm1.Koef_per(s_kei,v_keiN,s_ksm);
    v_raspred:=RaspSyrPrepKol_Rash_ediz.AsFloat*dm1.Koef_per(s_kei,v_keiN,s_ksm)-RaspSyrPrepOnm_s.AsFloat;
    v_raspred_dob:=RaspSyrPrepKol_Rash_ediz.AsFloat-v_ost_syr;
    if v_raspred_dob<0 then
    begin
     v_raspred:=0;
     v_raspred_dob:=0;
    end;
   end;
  end;
//  проверка и добавление Kart_id после добавления в приход
  if (RaspSyrPrepKart_id.AsInteger=0) or (RaspSyrPrepRazdel_id.AsInteger=null)  then
  begin
    s_ksm:=RaspSyrPrepKsm_id.AsInteger;
    IF RaspSyrPrepTip_op_id.AsInteger<>30 THEN
    BEGIN
     S_KEI:=RaspSyrPrepKEI.AsInteger;
     v_dok_kart:=SelectToVarIB('select Ostatki.kart_id   FROM Ostatki WHERE Ostatki.STRUK_ID='+INTTOSTR(VsTRUK_ID)
     + ' AND ostatki.ksm_id='+inttostr(s_Ksm)
     + ' AND Ostatki.razdel_id='+inttostr(v_razdel)
     + ' AND Ostatki.Ksm_idpr='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
    end
    else
    begin
     v_dok_kart:=SelectToVarIB('select Ostatki.kart_id   FROM Ostatki WHERE Ostatki.STRUK_ID='+INTTOSTR(VsTRUK_ID)
     + ' AND ostatki.ksm_id='+inttostr(s_Ksm)
     + ' AND Ostatki.razdel_id is null'
     + ' AND Ostatki.Ksm_idpr is null',dm1.belmed,dm1.ibt_read);
    end;
    If v_dok_kart = Null then
    begin
     IF DM1.Ostatki.Active=FALSE THEN DM1.Ostatki.Active:=TRUE;
     DM1.Ostatki.Insert;
     IF RaspSyrPrepTip_op_id.AsInteger=30 THEN
     BEGIN
      DM1.Ostatki.FieldByName('razdel_id').AsVariant:=null;
      DM1.Ostatki.FieldByName('ksm_idpr').AsVariant:=null;
      DM1.Ostatki.FieldByName('kei_id').AsVariant:=null;
     end
     else
     begin
      DM1.Ostatki.FieldByName('razdel_id').AsVariant:=RaspSyrPrepRazdel_id.AsInteger;
      DM1.Ostatki.FieldByName('ksm_idpr').AsVariant:=s_kodp;
      DM1.Ostatki.FieldByName('kei_id').AsVariant:=RaspSyrPrepKei.AsInteger;
     end;
     DM1.Ostatki.Post;
     dm1.Ostatki.ApplyUpdates;
     RaspSyrPrep.Edit;
     RaspSyrPrepKart_id.AsInteger:=vKart_id;
    end
    else
    BEGIN
     RaspSyrPrep.Edit;
     RaspSyrPrepKart_id.AsInteger:=v_dok_kart;
    END;
  end;
end;

function TFKorOtchet.getCurZnak(value : double; znak : integer) : integer;
var
  curZnak : integer;
  strValue : string;
begin
  curZnak := KolZnakovPosleZap(value);
  if (curZnak > 6) then
  begin
    strValue := FloatToStr(SimpleRoundTo(value, -6));
    if (strValue[length(strValue)] = '9') and (KolZnakovPosleZap(SimpleRoundTo(value, -6)) = 6) then
      if (StrToInt(strValue[length(strValue) - 1]) > 7) then
        curZnak := KolZnakovPosleZap(SimpleRoundTo(value, -4))
      else
        curZnak := KolZnakovPosleZap(SimpleRoundTo(value, -5))
    else
      curZnak := KolZnakovPosleZap(SimpleRoundTo(value, -6));
  end;
  if (znak < curZnak) then
    znak := curZnak;
  result := znak;
end;

function TFKorOtchet.getCurRaspSyrRecordMaxZnak() : integer;
var
  znak : integer;
//  factNorm : double;
begin
  znak := 3;
  znak := getCurZnak(RaspSyrPrepONM_S.AsFloat, znak);
  znak := getCurZnak(RaspSyrPrepONM_NZ.AsFloat, znak);
  znak := getCurZnak(RaspSyrPrepOT_S.AsFloat, znak);
  znak := getCurZnak(RaspSyrPrepOT_NZ.AsFloat, znak);
  znak := getCurZnak(RaspSyrPrepKOL_RASH_EDIZ.AsFloat, znak);
  znak := getCurZnak(RaspSyrPrepKOL_PRIH_EDIZ.AsFloat, znak);
  znak := getCurZnak(RaspSyrPrepKOLVIP.AsFloat, znak);
  znak := getCurZnak(RaspSyrPrepPLAN_NORM.AsFloat, znak);

//  if (PageControl1.ActivePage = TabSheet2) then
//  begin
//    if (v_vipusk <> 0) then
//    begin
//      if ((RaspSyrPrepKRAZ.AsInteger = 50)
//          or (RaspSyrPrepKRAZ.AsInteger = 30)
//          or (RaspSyrPrepKRAZ.AsInteger = 60)
//          or (RaspSyrPrepKRAZ.AsInteger = 70))
//          and (RaspSyrPrepKOL_RASH_EDIZ.AsFloat = 0) then
//        factNorm := RaspSyrPrepKOL_PRIH_EDIZ.AsFloat / v_vipusk
//      else
//        factNorm := RaspSyrPrepKOL_RASH_EDIZ.AsFloat / v_vipusk
//    end
//    else
//      factNorm := 0;
//    znak := getCurZnak(factNorm, znak);
//  end;

  result := znak;
end;

procedure TFKorOtchet.saveCurRecordTochnost;
var
  znak : integer;
begin
  znak := getCurRaspSyrRecordMaxZnak();
  if (not dm1.Ceh_Normz.Active)
     and (dm1.Ceh_Normz.MacroByName('USL').AsString <> 'Where CEH_NORMZ.KSM_ID_PR = '
                                                      + INTTOSTR(S_KODP)) then
    dm1.activateSprFormul(S_KODP, 0, 0);
  if ((not dm1.Ceh_Normz.Locate('ksm_id_mat;razdel_id',
                               VarArrayOf([RaspSyrPrepKSM_ID.AsInteger, RaspSyrPrepRAZDEL_ID.AsInteger]),
                               []))
      or (dm1.Ceh_Normz.RecordCount = 0))
      and ((RaspSyrPrepKSM_ID.AsInteger <> 0) and (RaspSyrPrepRAZDEL_ID.AsInteger <> 0)) then
  begin
    dm1.Ceh_Normz.Insert;
    dm1.Ceh_Normz.Edit;
    dm1.Ceh_NormzKSM_ID_MAT.AsInteger := RaspSyrPrepKSM_ID.AsInteger;
    dm1.Ceh_NormzRAZDEL_ID.AsInteger := RaspSyrPrepRAZDEL_ID.AsInteger;
    dm1.Ceh_Normz.Post;
  end;
  if (znak > dm1.Ceh_NormzDECZNAK.AsInteger) and (dm1.Ceh_Normz.RecordCount > 0) then
  begin
    dm1.Ceh_Normz.Edit;
    dm1.Ceh_NormzDECZNAK.AsInteger := znak;
    dm1.Ceh_Normz.Post;
  end;
  if (dm1.Ceh_Normz.UpdatesPending) then
  begin
    dm1.Ceh_Normz.ApplyUpdates;
    dm1.IBT_Write.CommitRetaining;
  end;
end;

procedure TFKorOtchet.saveTochnost;
begin
  if (RaspSyrPrep.Active) then
  begin
    RaspSyrPrep.First;
    while (not RaspSyrPrep.Eof) do
    begin
      saveCurRecordTochnost;
      RaspSyrPrep.Next;
    end;
  end;
end;

procedure TFKorOtchet.SpeedButton2Click(Sender: TObject);
begin
  if FindSpprod = nil then
    FindSpprod := TfindSpprod.Create(Application);
  FindSpprod.DataBaseName := dm1.BELMED;
  FindSpprod.Usl_Struk := 'spprod.struk_id = ' + inttostr(vStruk_id);
  FindSpprod.ReadOnly := true;
  FindSpprod.ShowModal;
 if FindSpprod.ModalResult > 50 then
 begin
  StartWait;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,SPPROD.SPROD_ID,spprod.volumf,spprod.vol_ov,');
  DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,SPPROD.LEK_ID,SPFORMV.NAMEFv,region.nam nam_reg');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KSM_ID='+INTTOSTR(FindSpprod.ModalResult-50));
  DM1.IBQuery1.Active := True;
  EDIT1.OnChange:=nil;
  edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT1.OnChange:=Edit1Change;
  s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
  s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
  s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
  s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
  s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
  s_Lek_id:=DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
  s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
  s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
  s_Formv:=DM1.IBQuery1.FieldByName('NAMEFV').AsString;
  s_Sprod_id:=DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
  s_namREG:=DM1.IBQuery1.FieldByName('NAM_ReG').AsString;
  label1.Caption:=dm1.IBQuery1.FieldByName('Nam_reg').AsString;
  label19.caption:=s_NMAT;
  label29.caption:=s_namorg;
  label21.caption:=s_Neiz;
  label22.caption:=s_GOST;
  label41.caption:=s_Xarkt;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT  KARTv.KOL_PRIH');
  DM1.IBQuery1.SQL.Add(' FROM KARTv');
  DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
  DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
  + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
  + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
  DM1.IBQuery1.Active := True;
  if not dm1.IBQuery1.Eof then
  begin
   V_VIPUSK:=DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
   label20.caption:=FLOATTOSTR(V_VIPUSK)+'   '+S_NEIZ;
  end
  ELSE
  BEGIN
   V_VIPUSK:=0;
   label20.caption:='0';
  END;
  if KartKorrOtchet.Active then KartKorrOtchet.Close;
  KorSost;
  StopWait;
 end;
end;

procedure TFKorOtchet.SpinEdit3Change(Sender: TObject);
begin
{ mes:=SpinEdit3.Value;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 if Edit1.Text<>'' then
 begin
  if KartKorrOtchet.Active then KartKorrOtchet.Close;
  KorSost;
 end;}
end;

procedure TFKorOtchet.SpinEdit4Change(Sender: TObject);
begin
{god:=SpinEdit4.Value;
IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  if Edit1.Text<>'' then
  begin
   if KartKorrOtchet.Active then KartKorrOtchet.Close;
   KorSost;
  end; }
end;

procedure TFKorOtchet.ToolButton1Click(Sender: TObject);
begin
 if PageControl1.ActivePage=tabsheet4 then
 BEGIN
  PeredanoSyr.Insert;
 end
 else
  RaspSyrPrep.Insert;
end;

procedure TFKorOtchet.ToolButton2Click(Sender: TObject);
begin
 if MessageDlg('Удалять запись? ',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
 begin
  try
   if PageControl1.ActivePage=tabsheet4 then
    PeredanoSyr.Delete
   else
    RaspSyrPrep.Delete;
  
  except
   On E: Exception do
   begin
    MessageDlg('Произошла ошибка при удалении записи!'+E.Message, mtWarning, [mbOK], 0);
    Abort;
   end;
  end;
 end;
end;

procedure TFKorOtchet.ToolButton3Click(Sender: TObject);
begin
  if (PageControl1.ActivePage <> tabsheet4) then
  begin
    if (RaspSyrPrep.Modified)
        or (RaspSyrPrep.State = dsEdit)
        or (RaspSyrPrep.State = dsInsert) then
      RaspSyrPrep.Post;
  end;
  Splash := ShowSplashWindow(AniBmp1,
                              'Сохранение данных. Подождите, пожалуйста...', True, nil);
  try
    if (not dm1.IBT_Read.Active) then
      dm1.IBT_Read.StartTransaction;
    if (not dm1.IBT_WRITE.Active) then
      dm1.IBT_WRITE.StartTransaction;
    if (PeredanoSyr.Modified) then
      PeredanoSyr.Post;
    if (DM1.Document.Modified) then
      DM1.Document.Post;
    if (DM1.Ostatki.Modified) then
      DM1.Ostatki.Post;
    if (DM1.Document.UpdatesPending) then
      DM1.Document.ApplyUpdates;
    if (DM1.Ostatki.UpdatesPending) then
      DM1.Ostatki.ApplyUpdates;
    if (PeredanoSyr.UpdatesPending) then
      PeredanoSyr.ApplyUpdates;
    DM1.IBT_WRITE.Commit;
    DM1.IBT_READ.CommitRetaining;
//
//  добавление в приход
//
    IF (RaspSyrPrepTip_op_id.AsInteger = 33) THEN
    BEGIN
      s_ksm := 0;
      v_razdel := 0;
      RaspSyrPrep.First;
      while (not RaspSyrPrep.Eof) do
      begin
        if not ((RaspSyrPrepKsm_id.AsInteger=s_ksm)
                and (RaspSyrPrepRazdel_id.AsInteger = v_razdel)) then
        begin
          s_ksm := RaspSyrPrepKsm_id.AsInteger;
          v_kein := RaspSyrPrepKei_id.AsInteger;
          vklient_id := s_kodp;
          v_razdel := RaspSyrPrepRazdel_id.AsInteger;
          pr_kor := 0;
          DM1.DobPrixPrep;
        end;
        RaspSyrPrep.Next;
      end;
      DM1.IBT_WRITE.Commit;
      DM1.IBT_READ.CommitRetaining;
    END;
  except
    On E: Exception do
    begin
      MessageDlg('Произошла ошибка при записи данных!' + E.Message, mtWarning, [mbOK], 0);
      DM1.IBT_Read.RollbackRetaining;
    end;
  end;
  KorSost;
//  saveTochnost;
  Splash.Free;
end;

procedure TFKorOtchet.ToolButton4Click(Sender: TObject);
begin
  if PageControl1.ActivePage = tabsheet4 then
  begin
    S_ksm := PeredanoSyrKsm_id.AsInteger;
    FOstSyr.Edit1.text := inttostr(PeredanoSyrKsm_id.AsInteger);
    FOstSyr.Label7.Caption := PeredanoSyrNmat.AsString;
    FOstSyr.label8.Caption := PeredanoSyrNeis.AsString;
  end
  else
  begin
    S_ksm := RaspSyrPrepKsm_id.AsInteger;
    FOstSyr.Edit1.text := inttostr(RaspSyrPrepKsm_id.AsInteger);
    FOstSyr.Label7.Caption := RaspSyrPrepNmat.AsString;
    FOstSyr.label8.Caption := RaspSyrPrepNeis.AsString;
  end;
  FOstSyr.DateEdit3.Date := strtodate(s_dat1);
  FOstSyr.DateEdit4.Date := strtodate(s_dat2);
  if FOstSyr = nil then
    FOstSyr := TFOstSyr.Create(Application);
  FOstSyr.ShowModal;
end;

procedure TFKorOtchet.ToolButton5Click(Sender: TObject);
begin
PopupMenu2.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFKorOtchet.ToolButton6Click(Sender: TObject);
begin
  saveTochnost;
end;

procedure TFKorOtchet.PageControl1Change(Sender: TObject);
begin
  KartKorrOtchet.Close;
  KorSost;
end;

procedure TFKorOtchet.ToolButton7Click(Sender: TObject);

begin
 if FVybPrep=nil then FVybprep:=TfVybPrep.Create(Application);
 FVybPrep.ShowModal;
 if FVybPrep.ModalResult=mrOk then
 begin
    s_kodp:=FVybPrep.vprepKsm_id.AsInteger;
    StartWait;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,SPPROD.SPROD_ID,spprod.volumf,spprod.vol_ov,');
    DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,SPPROD.LEK_ID,SPFORMV.NAMEFv,region.nam nam_reg');
    DM1.IBQuery1.SQL.Add(' FROM SPPROD');
    DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
    DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KSM_ID='+INTTOSTR(s_kodp));
    DM1.IBQuery1.Active := True;
    EDIT1.OnChange:=nil;
    edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
    EDIT1.OnChange:=Edit1Change;
    s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
    s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
    s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
    s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
    s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
    s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
    s_Lek_id:=DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
    s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
    s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
    s_Formv:=DM1.IBQuery1.FieldByName('NAMEFV').AsString;
    s_Sprod_id:=DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
    s_namREG:=DM1.IBQuery1.FieldByName('NAM_ReG').AsString;
    label1.Caption:=dm1.IBQuery1.FieldByName('Nam_reg').AsString;
    label19.caption:=s_NMAT;
    label29.caption:=s_namorg;
    label21.caption:=s_Neiz;
    label22.caption:=s_GOST;
    label41.caption:=s_Xarkt;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT  KARTv.KOL_PRIH');
    DM1.IBQuery1.SQL.Add(' FROM KARTv');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
    + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
    begin
     V_VIPUSK:=DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
     label20.caption:=FLOATTOSTR(V_VIPUSK)+'   '+S_NEIZ;
    end
    ELSE
    BEGIN
     V_VIPUSK:=0;
     label20.caption:='0';
    END;
    if KartKorrOtchet.Active then KartKorrOtchet.Close;
    KorSost;
    StopWait;
  end;

end;

procedure TFKorOtchet.RaspSyrPrepKSM_IDValidate(Sender: TField);
begin
 dM1.Matrop.Active:=false;
 dM1.Matrop.ParamByName('ksm').AsInteger:=RaspSyrPrep.FieldByName('ksm_id').AsInteger;
 dM1.Matrop.Active:=TRUE;
 if not dm1.Matrop.eof then
 begin
  RaspSyrPrep.FieldByName('Nmat').AsString:=dm1.Matrop.FieldByName('Nmat').AsString;

 end
 else
  showMessage('Нет такого кода! Воспользуйтесь справочником!');
end;

procedure TFKorOtchet.RaspSyrPrepKRAZValidate(Sender: TField);
begin
if not dm1.Razdel.Active then dm1.Razdel.Active:=true;
 if dm1.Razdel.Locate('kraz',RaspSyrPrepKRAZ.AsInteger,[]) then
 begin
  RaspSyrPrep.FieldByName('RAZDEL_ID').value:=dm1.RazdelRAZDEL_ID.AsInteger;
  v_razdel:=dm1.RazdelRAZDEL_ID.AsInteger;
 end;
end;

procedure TFKorOtchet.DBGridEh3EditButtonClick(Sender: TObject);
var
  nm : integer;
begin
  nm := 0;
  if (dbgrideh3.SelectedField.FieldName = 'NEIS') then
    nm := 3;
  if (dbgrideh3.SelectedField.FieldName = 'KSM_ID') then
    nm := 1;
  if (dbgrideh3.SelectedField.FieldName = 'KRAZ') then
    nm := 2;
  RaspSyrPrep.Edit;
  case nm of
    3 : begin
          if (FEdiz = nil) then
            FEdiz := TFEdiz.Create(Application);
          FEdiz.ShowModal;
          if (FEdiz.ModalResult > 50) then
          begin
            s_kei := FEdiz.ModalResult - 50;
            RaspSyrPrepKei_ID.AsInteger := s_kei;
            RaspSyrPrepNeis.AsString := DM1.EdizNeis.AsString;
          end;
        end;
    1 : begin
          if (FindMatrop = nil) then
            FindMatrop := TfindMatrop.Create(Application);
          FindMatrop.DataBaseName := dm1.BELMED;
          FindMatrop.ReadOnly := true;
          FindMatrop.ShowModal;
          if (FindMatrop.ModalResult > 50) then
          begin
            dM1.Matrop.Active := false;
            dM1.Matrop.ParamByName('ksm').AsInteger := FindMatrop.ModalResult - 50;
            dM1.Matrop.Active := TRUE;
            if (not dm1.Matrop.eof) then
            begin
              RaspSyrPrep.FieldByName('Ksm_Id').AsInteger := dm1.Matrop.FieldByName('Ksm_id').AsInteger;
              RaspSyrPrep.FieldByName('Nmat').AsString := dm1.Matrop.FieldByName('Nmat').AsString;
            end;
          end;
        end;
    2 : begin
          if (FRazdel = nil) then
            FRazdel := TFRazdel.Create(Application);
          FRazdel.ShowModal;
          if (FRazdel.ModalResult > 50) then
          begin
            RaspSyrPrepRazdel_id.AsInteger := FRazdel.ModalResult - 50;
            RaspSyrPrepKraz.AsInteger := s_Razdel;
          end;
        end;
  end;
end;

procedure TFKorOtchet.DBGridEh2EditButtonClick(Sender: TObject);
var
  nm : integer;
begin
  nm := 0;
  if dbgrideh2.SelectedField.FieldName='NEIS' then nm:=3;
  if dbgrideh2.SelectedField.FieldName='KSM_ID' then nm:=1;
  if dbgrideh2.SelectedField.FieldName='KRAZ' then nm:=2;
  RaspSyrPrep.Edit;
  case nm of
  3: begin
      if FEdiz=nil then FEdiz:=TFEdiz.Create(Application);
      FEdiz.ShowModal;
      if FEdiz.ModalResult > 50 then
      begin
       s_kei:=FEdiz.ModalResult-50;
       RaspSyrPrepKei_id.AsInteger:=s_kei;
       RaspSyrPrepNeis.AsString:=DM1.EdizNeis.AsString;
      end;
     end;
  1: begin
      if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
      FindMatrop.DataBaseName:=dm1.BELMED;
      FindMatrop.ReadOnly:=true;
      FindMatrop.ShowModal;
      if FindMatrop.ModalResult > 50 then
      begin
       dM1.Matrop.Active:=false;
       dM1.Matrop.ParamByName('ksm').AsInteger:=FindMatrop.ModalResult-50;
       dM1.Matrop.Active:=TRUE;
       if not dm1.Matrop.eof then
       begin
        RaspSyrPrep.FieldByName('Ksm_Id').AsInteger :=dm1.Matrop.FieldByName('Ksm_id').AsInteger;
        RaspSyrPrep.FieldByName('Nmat').AsString:=dm1.Matrop.FieldByName('Nmat').AsString;
       end;
      end;
     end;
  2: begin
      if FRazdel=nil then FRazdel:=TFRazdel.Create(Application);
      FRazdel.ShowModal;
      if FRazdel.ModalResult>50 then
      begin
       RaspSyrPrepRazdel_id.AsInteger:=FRazdel.ModalResult-50;
       RaspSyrPrepKraz.AsInteger:=s_Razdel;
      end;
     end;
  end;
end;

procedure TFKorOtchet.ComboBox1Change(Sender: TObject);
begin
 god:=ComboBox2.ItemIndex+2000;
 mes:=ComboBox1.ItemIndex+1;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 if Edit1.Text<>'' then
 begin
  if KartKorrOtchet.Active then KartKorrOtchet.Close;
  KorSost;
 end;
end;

procedure TFKorOtchet.ComboBox2Change(Sender: TObject);
begin
  god := ComboBox2.ItemIndex + 2000;
  mes := ComboBox1.ItemIndex + 1;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1 := '01.' + S_MES + '.' + copy(INTTOSTR(GOD), 3, 2);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1), 1) - 1);
  if (Edit1.Text <> '') then
  begin
    if (KartKorrOtchet.Active) then
      KartKorrOtchet.Close;
    KorSost;
  end;
end;

procedure TFKorOtchet.DBGridEh1EditButtonClick(Sender: TObject);
var
  nm : integer;
begin
  nm := 0;
  if dbgrideh1.SelectedField.FieldName='NEIS' then nm:=3;
  if dbgrideh1.SelectedField.FieldName='KSM_ID' then nm:=1;
  if dbgrideh1.SelectedField.FieldName='KRAZ' then nm:=2;
  RaspSyrPrep.Edit;
  case nm of
  3: begin
      if FEdiz=nil then FEdiz:=TFEdiz.Create(Application);
      FEdiz.ShowModal;
      if FEdiz.ModalResult > 50 then
      begin
       s_kei:=FEdiz.ModalResult-50;
       RaspSyrPrepKei_id.AsInteger:=s_kei;
       RaspSyrPrepNeis.AsString:=DM1.EdizNeis.AsString;
      end;
     end;
  1: begin
      if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
      FindMatrop.DataBaseName:=dm1.BELMED;
      FindMatrop.ReadOnly:=true;
      FindMatrop.ShowModal;
      if FindMatrop.ModalResult > 50 then
      begin
       dM1.Matrop.Active:=false;
       dM1.Matrop.ParamByName('ksm').AsInteger:=FindMatrop.ModalResult-50;
       dM1.Matrop.Active:=TRUE;
       if not dm1.Matrop.eof then
       begin
        RaspSyrPrep.FieldByName('Ksm_Id').AsInteger :=dm1.Matrop.FieldByName('Ksm_id').AsInteger;
        RaspSyrPrep.FieldByName('Nmat').AsString:=dm1.Matrop.FieldByName('Nmat').AsString;
       end;
      end;
     end;
  2: begin
      if FRazdel=nil then FRazdel:=TFRazdel.Create(Application);
      FRazdel.ShowModal;
      if FRazdel.ModalResult>50 then
      begin
       RaspSyrPrepRazdel_id.AsInteger:=FRazdel.ModalResult-50;
       RaspSyrPrepKraz.AsInteger:=s_Razdel;
      end;
     end;
  end;
end;

procedure TFKorOtchet.RaspSyrPrepNewRecord(DataSet: TDataSet);
begin
  RaspSyrPrepStroka_id.AsInteger := vStroka_id;
  RaspSyrPrepDoc_id.AsInteger := vDocument_id;
  RaspSyrPrep.FieldByName('tip_op_id').AsInteger := vTip_op_id;
  RaspSyrPrep.FieldByName('ksm_idpr').AsInteger := s_kodp;
  IF (RaspSyrPrep.FieldByName('KOL_PRIH_EDIZ').AsVariant = NULL) THEN
    RaspSyrPrep.FieldByName('KOL_PRIH_EDIZ').AsFloat := 0;
end;

procedure TFKorOtchet.PeredanoSyrBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_KART';
  DM1.Add_KartDok.ExecProc;
  vStroka_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFKorOtchet.PeredanoSyrBeforePost(DataSet: TDataSet);
begin
  if PeredanoSyrRazdel_ido.AsInteger = 0 then
  begin
    MessageDlg('Введите раздел!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If PeredanoSyr.FieldByName('ksm_id').AsInteger = 0 then
  begin
    MessageDlg('Введите код сырья!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If PeredanoSyr.FieldByName('kei_id_syr').AsInteger = 0 then
  begin
    MessageDlg('Введите единицу измерения!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (PeredanoSyrDoc_id.AsInteger = 0) or (PeredanoSyrDoc_id.AsVariant = null) then
  begin
    if RadioGroup1.ItemIndex = 0 then
    begin
      vNDoc := 'Пер_с-' + inttostr(PeredanoSyrKsm_id.AsInteger) + '-' + inttostr(mes) +'.' + inttostr(god);
      vTip_Op_Id := 34;
    end
    else
    begin
      vTip_Op_Id := 37;
//   vNDoc:='Пер_н/з-'+inttostr(PeredanoSyrKsm_id.AsInteger)+'-'+inttostr(mes)+'.'+inttostr(god);
      vNDoc:='Пер_н/з-'+inttostr(s_kodp);
    end;
    vTip_Doc_Id := 37;
    case RadioGroup2.ItemIndex of
      0: begin
          If (PeredanoSyrKlient_id.AsInteger = 0) or (PeredanoSyrKlient_id.AsVariant = null)  then
          begin
            MessageDlg('Введите препарат куда передается сырье!', mtWarning, [mbOK], 0);
            Abort;
          end;
          if PeredanoSyrRazdel_id.AsInteger = 0 then
          begin
            MessageDlg('Введите раздел!', mtWarning, [mbOK], 0);
            Abort;
          end;
        end;
    1: begin
        if RadioGroup1.ItemIndex=0 then
        begin
          If (PeredanoSyrKlient_id.AsInteger = 0) or (PeredanoSyrKlient_id.AsVariant = null)  then
          begin
            MessageDlg('Введите подразделение куда передается сырье!', mtWarning, [mbOK], 0);
            Abort;
          end;
          vTip_Doc_Id := 9;
          vTip_Op_Id := 8;
        end
        else
        begin
          If (PeredanoSyrKlient_id.AsInteger = 0) or (PeredanoSyrKlient_id.AsVariant = null)  then
          begin
            MessageDlg('Введите препарат куда передается сырье из н/з!', mtWarning, [mbOK], 0);
            Abort;
          end;
          if PeredanoSyrRazdel_id.AsInteger = 0 then
          begin
            MessageDlg('Введите раздел!', mtWarning, [mbOK], 0);
            Abort;
          end;
          If (PeredanoSyrKlient_id.AsInteger = 0) or (PeredanoSyrKlient_id.AsVariant = null)  then
          begin
            MessageDlg('Введите подразделение куда передается сырье из н/з!', mtWarning, [mbOK], 0);
            Abort;
          end;
          vTip_Doc_Id := 37;
          vTip_Op_Id := 139;
//       MessageDlg('Нельзя передать на склад сырье из незавершенного производства!', mtWarning, [mbOK], 0);
//       Abort;
        end;
      end;
    2: begin
        PeredanoSyrKlient_id.AsInteger:=0;
        vTip_Doc_Id:=38;
        if RadioGroup1.ItemIndex=0 then
          vTip_Op_Id:=32
        ELSE
          vTip_Op_Id:=85;
        PeredanoSyrRazdel_id.AsInteger:=PeredanoSyrRazdel_ido.AsInteger;
       end;
    end;
  vKlient_Id:=PeredanoSyrKlient_id.AsInteger;
  vDate_dok:=strtodate(s_dat1);
  vDate_op:=strtodate(s_dat1);
{  v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
  + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
  + ' AND DOCUMENT.NDOK='+''''+ vNDoc+''''
  + ' AND DOCUMENT.KLIENT_ID='+ INTTOSTR(PeredanoSyrKlient_id.AsInteger),dm1.belmed,dm1.ibt_read);  }
//  If v_dok_Kart<>Null then VDOCUMENT_ID:=v_dok_kart
  if dm1.Document.Locate('struk_id;tip_op_id;klient_id;ndok',VarArrayOf([vStruk_id,vTip_op_id,PeredanoSyrKlient_id.AsInteger,vndoc]),[]) then
       vDocument_id:=dm1.DocumentDoc_id.AsInteger
  else
  begin
//   DM1.DOCUMENT.OPEN;
   dm1.Document.Insert;
   dm1.Document.Post;
  end;
  PeredanoSyrStruk_id.AsInteger:=vStruk_id;
  PeredanoSyrTip_op_id.AsInteger:=vTip_op_id;
  PeredanoSyrDoc_id.AsInteger:=vDocument_id;
  v_KartV:=SelectToVarIB('select Ostatki.kart_id   FROM Ostatki'
  + ' WHERE Ostatki.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND ostatki.ksm_id='+inttostr(PeredanoSyrKsm_id.AsInteger)
  + ' AND Ostatki.razdel_id='+inttostr(PeredanoSyrRazdel_ido.AsInteger)
  + ' AND Ostatki.Ksm_idpr='+ INTTOSTR(S_KODP),dm1.belmed,dm1.ibt_read);
  If (v_KartV <> Null) and (v_KartV <> 0) then
    PeredanoSyrKart_id.AsInteger:=V_KARTV
  else
    showMessage('Нет сырья на препарате для передачи!');
  end;
end;

procedure TFKorOtchet.PeredanoSyrNewRecord(DataSet: TDataSet);
begin
 PeredanoSyrStroka_id.AsInteger:=vStroka_id;
// PeredanoSyrDoc_id.AsInteger:=vDocument_id;
// PeredanoSyr.FieldByName('tip_op_id').AsInteger :=vTip_op_id;
 IF PeredanoSyr.FieldByName('KOL_PRIH_EDIZ').AsVariant=NULL THEN PeredanoSyr.FieldByName('KOL_PRIH_EDIZ').AsFloat :=0;
end;

procedure TFKorOtchet.DBGridEh4EditButtonClick(Sender: TObject);
var
  nm : integer;
begin
  nm := 0;
  if dbgrideh4.SelectedField.FieldName='NEIS' then nm:=3;
  if dbgrideh4.SelectedField.FieldName='KSM_ID' then nm:=1;
  if dbgrideh4.SelectedField.FieldName='KRAZ' then nm:=2;
  if dbgrideh4.SelectedField.FieldName='KRAZ1' then nm:=4;
  if dbgrideh4.SelectedField.FieldName='STNAME' then nm:=5;
  if dbgrideh4.SelectedField.FieldName='KOD_PROD' then nm:=6;
  PeredanoSyr.Edit;
  case nm of
  3: begin
      if FEdiz=nil then FEdiz:=TFEdiz.Create(Application);
      FEdiz.ShowModal;
      if FEdiz.ModalResult > 50 then
      begin
       PeredanoSyrKei_id_Syr.AsInteger:=FEdiz.ModalResult-50;
       PeredanoSyrNeis.AsString:=DM1.EdizNeis.AsString;
      end;
     end;
  1: begin
      if FVibSyr=nil then FVibSyr:=TfVibSyr.Create(Application);
       FVibSyr.ShowModal;
      if FVibSyr.ModalResult= mrOk then
      begin
       if FVibSyr.RadioGroup1.ItemIndex=0 then
       begin
        peredanoSyrRazdel_ido.AsInteger:=FVibSyr.ostprep.FieldByName('razdel_id').AsInteger;
        PeredanoSyrKraz.AsInteger:= FVibSyr.ostprep.FieldByName('kraz').Asinteger;
        PeredanoSyr.FieldByName('Ksm_Id').AsInteger :=FVibSyr.ostprep.FieldByName('Ksm_id').AsInteger;
        PeredanoSyr.FieldByName('Nmat1').AsString:=FVibSyr.ostprep.FieldByName('Nmat').AsString;
        PeredanoSyrKei_id_Syr.AsInteger:=FVibSyr.ostprep.FieldByName('kei_id').AsInteger;
        PeredanoSyrNeis.AsString:=FVibSyr.ostprep.FieldByName('neis').AsString;
        peredanoSyrRazdel_id.AsInteger:=FVibSyr.ostprep.FieldByName('razdel_id').AsInteger;
        PeredanoSyrKraz1.AsInteger:=FVibSyr.ostprep.FieldByName('kraz').Asinteger;
        if RadioGroup2.ItemIndex=0 then
         PeredanoSyrKol_rash_ediz.AsFloat:=FVibSyr.ostprep.FieldByName('Ostatok_end_s').AsFloat
        else
         PeredanoSyrKol_rash_ediz.AsFloat:=FVibSyr.ostprep.FieldByName('Ostatok_end_nz').AsFloat;
       end
       else
       begin
        FVibSyr.ostprep.First;
        while not FVibSyr.ostprep.Eof do
        begin
         if (((RadioGroup1.ItemIndex=0)and (FVibSyr.ostprep.FieldByName('Ostatok_end_s').AsFloat<>0))
          or((RadioGroup1.ItemIndex=1)and (FVibSyr.ostprep.FieldByName('Ostatok_end_nz').AsFloat<>0)))
          and (FVibSyr.ostprep.FieldByName('vib').AsInteger=1) then
         begin
          peredanoSyr.Insert;
          peredanoSyrRazdel_ido.AsInteger:=FVibSyr.ostprep.FieldByName('razdel_id').AsInteger;
          PeredanoSyrKraz.AsInteger:= FVibSyr.ostprep.FieldByName('kraz').Asinteger;
          PeredanoSyr.FieldByName('Ksm_Id').AsInteger :=FVibSyr.ostprep.FieldByName('Ksm_id').AsInteger;
          PeredanoSyr.FieldByName('Nmat1').AsString:=FVibSyr.ostprep.FieldByName('Nmat').AsString;
          PeredanoSyrKei_id_Syr.AsInteger:=FVibSyr.ostprep.FieldByName('kei_id').AsInteger;
          PeredanoSyrNeis.AsString:=FVibSyr.ostprep.FieldByName('neis').AsString;
          peredanoSyrRazdel_id.AsInteger:=FVibSyr.ostprep.FieldByName('razdel_id').AsInteger;
          PeredanoSyrKraz1.AsInteger:=FVibSyr.ostprep.FieldByName('kraz').Asinteger;
          if (RadioGroup2.ItemIndex=0)or(RadioGroup1.ItemIndex=1)and(RadioGroup2.ItemIndex=1)then
          begin
           PeredanoSyr.FieldByName('Nmat').AsString:=FVibSyr.Label2.Caption;
           PeredanoSyr.FieldByName('Kod_prod').AsString:=FVibSyr.Edit1.Text;
          end;
          if (RadioGroup1.ItemIndex=0)and(RadioGroup2.ItemIndex=1) then
            PeredanoSyrStname.AsString:=FVibSyr.Label2.Caption;
          if RadioGroup1.ItemIndex=0 then
           PeredanoSyrKol_rash_ediz.AsFloat:=FVibSyr.ostprep.FieldByName('Ostatok_end_s').AsFloat
          else
           PeredanoSyrKol_rash_ediz.AsFloat:=FVibSyr.ostprep.FieldByName('Ostatok_end_nz').AsFloat;
          if RadioGroup2.ItemIndex<>2 then
           PeredanoSyrKlient_id.AsInteger:=s_klient1;
          peredanoSyr.Post;
         end;
         FVibSyr.ostprep.Next;
        end;
       end;
      end;
     end;
  2: begin
      if FRazdel=nil then FRazdel:=TFRazdel.Create(Application);
      FRazdel.ShowModal;
      if FRazdel.ModalResult>50 then
      begin
       peredanoSyrRazdel_ido.AsInteger:=FRazdel.ModalResult-50;
       PeredanoSyrKraz.AsInteger:=s_Razdel;
      end;
     end;
   4: begin
      if FRazdel=nil then FRazdel:=TFRazdel.Create(Application);
      FRazdel.ShowModal;
      if FRazdel.ModalResult>50 then
      begin
       peredanoSyrRazdel_id.AsInteger:=FRazdel.ModalResult-50;
       PeredanoSyrKraz1.AsInteger:=s_Razdel;
      end;
     end;
   6: begin
      if (RadioGroup1.ItemIndex=1) and (RadioGroup2.ItemIndex=1) then
      begin
       if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
       FindSpprod.DataBaseName:=dm1.BELMED;
       FindSpprod.ReadOnly:=true;
       FindSpprod.ShowModal;
       if FindSpprod.ModalResult > 50 then
       begin
        DM1.IBQuery1.Active := False;
        DM1.IBQuery1.SQL.Clear;
        DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,struk.stname');
        DM1.IBQuery1.SQL.Add(' FROM SPPROD');
        DM1.IBQuery1.SQL.Add(' inner JOIN struk ON (SPPROD.struk_id = struk.struk_id)');
        DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KSM_ID='+INTTOSTR(FindSpprod.ModalResult-50));
        DM1.IBQuery1.Active := True;
        PeredanoSyrKod_prod.AsString:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
        PeredanoSyrNmat.AsString:=DM1.IBQuery1.FieldByName('NMAT').AsString;
        PeredanoSyrKlient_id.AsInteger:=DM1.IBQuery1.FieldByName('ksm_id').AsInteger;
        PeredanoSyrStname.AsString:=DM1.IBQuery1.FieldByName('Stname').AsString;
       end;
      end
      else
      begin
       if FVybPrep=nil then FVybprep:=TfVybPrep.Create(Application);
       FVybPrep.ShowModal;
       if FVybPrep.ModalResult=mrOk then
       begin
          PeredanoSyrKlient_id.AsInteger:=FVybPrep.vprepKsm_id.AsInteger;
          PeredanoSyrKod_prod.AsString:=FVybPrep.VprepKod_Prod.Asstring;
          PeredanoSyrNmat.AsString:=FVybPrep.VprepNMAT.AsString;
       end;
      end;
      end;
   5: begin
     if FindStruk=nil then FindStruk:=TfindStruk.Create(Application);
      FindStruk.DataBaseName:=dm1.BELMED;
      FindStruk.ReadOnly:=true;
      FindStruk.ShowModal;
      if FindStruk.ModalResult>50 then
      begin
       PeredanoSyrStname.AsString:=FindStruk.name;
       PeredanoSyrKlient_id.AsInteger:=FindStruk.ModalResult-50;
      end;
     end
  end;      
end;

procedure TFKorOtchet.DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);

 //var Pole:string;
begin
//  Pole:=AnsiUpperCase(Column.FieldName);
//  if PeredanoSyrTip_op_id.AsInteger=37 then
// begin
// // if DM.JUV.FieldByName(Pole).asString <> 'Рейс' then
// // begin
//    BackGround:=clMoneyGreen;
//  //  clSkyBlue;
//  end;

end;

procedure TFKorOtchet.PeredanoSyrKRAZValidate(Sender: TField);
begin
if not dm1.Razdel.Active then dm1.Razdel.Active:=true;
 if dm1.Razdel.Locate('kraz',PeredanoSyrKRAZ.AsInteger,[]) then
 begin
  PeredanoSyr.FieldByName('RAZDEL_IDO').value:=dm1.RazdelRAZDEL_ID.AsInteger;
 end;
// else
//  showMessage('Нет такого кода! Воспользуйтесь справочником!');
end;

procedure TFKorOtchet.PeredanoSyrKRAZ1Validate(Sender: TField);
begin
if not dm1.Razdel.Active then dm1.Razdel.Active:=true;
 if dm1.Razdel.Locate('kraz',PeredanoSyrKRAZ1.AsInteger,[]) then
 begin
  PeredanoSyr.FieldByName('RAZDEL_ID').value:=dm1.RazdelRAZDEL_ID.AsInteger;
 end;
// else
//  showMessage('Нет такого кода! Воспользуйтесь справочником!');
end;

procedure TFKorOtchet.PeredanoSyrKSM_IDValidate(Sender: TField);
begin
 dM1.Matrop.Active:=false;
 dM1.Matrop.ParamByName('ksm').AsInteger:=PeredanoSyr.FieldByName('ksm_id').AsInteger;
 dM1.Matrop.Active:=TRUE;
 if not dm1.Matrop.eof then
 begin
  PeredanoSyr.FieldByName('Nmat1').AsString:=dm1.Matrop.FieldByName('Nmat').AsString;
 end;
// else
//  showMessage('Нет такого кода! Воспользуйтесь справочником!');
end;

procedure TFKorOtchet.PeredanoSyrKOD_PRODValidate(Sender: TField);
begin
if PeredanoSyrKlient_id.AsVariant=null then
begin
 IBQuery1.Active := False;
 IBQuery1.SQL.Clear;
 IBQuery1.SQL.Add('SELECT SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KSM_ID');
 IBQuery1.SQL.Add(' FROM SPPROD');
 IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD= '+''''+PeredanoSyrKOD_PROD.AsString+'''');
 IBQuery1.Active := True;
 if not IBQuery1.Eof then
  begin
   PeredanoSyrKlient_id.AsInteger:=IBQuery1.FieldByName('ksm_id').AsInteger;
   PeredanoSyrNmat.AsString:=IBQuery1.FieldByName('NMAT').Asstring;
  end;
end;  
//  else
//  showMessage('Нет такого кода! Воспользуйтесь справочником!');
end;

procedure TFKorOtchet.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if (PeredanoSyrTip_op_id.AsInteger=37)or(PeredanoSyrTip_op_id.AsInteger=85) or (PeredanoSyrTip_op_id.AsInteger=139) then
 begin
  DBGridEh4.Canvas.Brush.Color:=clMoneyGreen;
  DBGridEh4.Canvas.Font.Color:=clBlack;
  DBGridEh4.Canvas.FillRect(Rect);
  DBgridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
 end;
end;

end.
