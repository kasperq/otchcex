unit Otchet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, Menus, FindDlgEh, ImgList, ComCtrls,
  ExtCtrls, DBCtrls, ToolWin, DB, RxMemDS, Spin, Mask, IBCustomDataSet,
  IBQuery,SplshWnd, IBUpdateSQL, IBUpdSQLW, RxIBQuery, IBStoredProc,
  IBDatabase,IB,DBCtrlsEh,DBLookupEh, BDEUtils, UtilR, UtilRIB,Math,Buttons,
  FR_Class, FR_DSet, FR_DBSet, DBGrids, pr_Common, pr_TxClasses, pr_parser,
  ActnList, IniFiles, frxClass, frxDBSet, frxDMPExport, FileUtil,RxStrUtils,VCLUtils;

type
  TFOtchet = class(TForm)
    ToolBar1: TToolBar;
    DBNavigator1: TDBNavigator;
    ImageList1: TImageList;
    FindDlgEh1: TFindDlgEh;
    DBGridEh3: TDBGridEh;
    Label4: TLabel;
    DSOtchet: TDataSource;
    frDBDataSet1: TfrDBDataSet;
    frReport2: TfrReport;
    Panel1: TPanel;
    Label2: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    Label19: TLabel;
    Label29: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label5: TLabel;
    Label41: TLabel;
    Label1: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Otchet: TRxMemoryData;
    Otchetkraz: TIntegerField;
    OtchetNMAT: TStringField;
    Otchetkol_rash: TFloatField;
    Otchetneis: TStringField;
    OtchetOt_s: TFloatField;
    OtchetOt_nz: TFloatField;
    OtchetOnm_s: TFloatField;
    OtchetOnm_nz: TFloatField;
    Otchetprizpf: TBooleanField;
    Otchetplnorm: TFloatField;
    Otchetfnorm: TFloatField;
    Otchetfnormg: TFloatField;
    Otchetkol_prih: TFloatField;
    Otchetzag: TFloatField;
    Otchetper_s: TFloatField;
    Otchetper_nz: TFloatField;
    Otchetpereras: TFloatField;
    Otchetpererasg: TFloatField;
    Otchetksm_id: TIntegerField;
    Otchetkei_id: TIntegerField;
    Otchetrazdel_id: TIntegerField;
    Otchetkei_idn: TIntegerField;
    OtchetRASXG: TFloatField;
    Query_Otchet: TRxIBQuery;
    Query_OtchetKSM_ID: TIntegerField;
    Query_OtchetKART_ID: TIntegerField;
    Query_OtchetRAZDEL_ID: TSmallintField;
    Query_OtchetKRAZ: TSmallintField;
    Query_OtchetNMAT: TIBStringField;
    Query_OtchetNAMRAZ: TIBStringField;
    Query_OtchetKEI_IDN: TSmallintField;
    DataSource1: TDataSource;
    Query_OtchetNEIS: TIBStringField;
    Query_OtchetNEISN: TIBStringField;
    ToolButton1: TToolButton;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    ActionList1: TActionList;
    APrintMatr: TAction;
    prTxReport1: TprTxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    APrintGraph: TAction;
    AKorOtchet: TAction;
    ANasrtPecht: TAction;
    N4: TMenuItem;
    Otchetkart_id: TIntegerField;
    frxReport1: TfrxReport;
    ToolButton3: TToolButton;
    IBQuery1: TIBQuery;
    Query_OtchetKEI_ID: TSmallintField;
    ToolButton4: TToolButton;
    SpeedButton2: TSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    Otchetnamraz: TStringField;
    ToolButton2: TToolButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    tbtn_delLine: TToolButton;
    Otchetprih_s: TFloatField;
    Otchetprih_nz: TFloatField;
    Query_OtchetKOL_RASXG: TFloatField;
    Query_OtchetKOL: TFloatField;
    Query_OtchetOSTATOK_END_S: TFMTBCDField;
    Query_OtchetOSTATOK_END_NZ: TFMTBCDField;
    Query_OtchetOSTATOK_BEGIN_NZ: TFMTBCDField;
    Query_OtchetOSTATOK_BEGIN_S: TFMTBCDField;
    Query_OtchetZAG_PERIOD: TFMTBCDField;
    Query_OtchetRASH_VIRAB_PERIOD: TFMTBCDField;
    Query_OtchetPRIX_PERIOD: TFMTBCDField;
    Query_OtchetPRIH_S: TFMTBCDField;
    Query_OtchetPRIH_NZ: TFMTBCDField;
    Query_OtchetRASX_PERIOD: TFMTBCDField;
    Query_OtchetPERS: TFMTBCDField;
    Query_OtchetPERNZ: TFMTBCDField;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SostOtchet;

    procedure FormShow(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure frReport2GetValue(const ParName: String;
      var ParValue: Variant);
    procedure SpinEdit4Change(Sender: TObject);
    procedure DBGridEh3SortMarkingChanged(Sender: TObject);
    procedure prTxReport1UnknownVariable(Sender: TObject;
      const VarName: String; var Value: TprVarValue;
      var IsProcessed: Boolean);
    procedure ToolButton1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure APrintMatrExecute(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure APrintGraphExecute(Sender: TObject);
    procedure ANasrtPechtExecute(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure tbtn_delLineClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOtchet: TFOtchet;
  Splash: TForm;
  AniBmp1: TBitmap;
  S_DATN: STRING;
  VidShap: integer;
 

implementation
 uses dm, Find_Spprod, glmenu, NastrPech, KorOtchet, OstSyr,SprFormul,Pech_Vibor,VybPrep;
{$R *.dfm}

procedure TFOtchet.Edit1Change(Sender: TObject);
var
skod:string;
begin
if edit1.text<>''   then begin
 skod:=replacestr(edit1.text,',','.')+'%';
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
 DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,region.nam nam_reg');
 DM1.IBQuery1.SQL.Add(' FROM SPPROD');
 DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
 DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
 DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+skod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
  begin
   Label19.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label41.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
   Label17.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  end
  else
   Label19.Caption:='';
   Label41.Caption:='';
   Label17.Caption:='';
  begin
  end;
 Label19.Refresh;
 Label41.Refresh;
 end;
end;

procedure TFOtchet.Edit1Click(Sender: TObject);
begin
  edit1.text := '';
end;

procedure TFOtchet.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    Splash := ShowSplashWindow(AniBmp1,
                               'Загрузка данных. Подождите, пожалуйста...', True, nil);
    if (edit1.text <> '') and (not dm1.IBQuery1.Eof)  then
    begin
      EDIT1.OnChange := nil;
      edit1.text := DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
      EDIT1.OnChange := Edit1Change;
      s_kodp := DM1.IBQuery1.FieldByName('KSM_ID').value;
      s_gost := DM1.IBQuery1.FieldByName('GOST').AsString;
      s_xarkt := DM1.IBQuery1.FieldByName('XARKT').AsString;
      s_nmat := DM1.IBQuery1.FieldByName('NMAT').AsString;
      s_kei := DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
      s_korg := DM1.IBQuery1.FieldByName('KORG').AsInteger;
      s_kodProd := DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
      s_namorg := DM1.IBQuery1.FieldByName('NAM').AsString;
      s_neiz := DM1.IBQuery1.FieldByName('NEIS').AsString;
      S_NAMREG := DM1.IBQuery1.FieldByName('NAM_REG').AsString;
      label17.caption := s_NAMREG;
      label19.caption := s_NMAT;
      label29.caption := s_namorg;
      label21.caption := s_Neiz;
      label22.caption := s_GOST;
      label41.caption := s_Xarkt;
    end;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT  KARTv.KOL_PRIH');
    DM1.IBQuery1.SQL.Add(' FROM KARTv');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID = ' + INTTOSTR(VsTRUK_ID)
                          + ' and document.struk_id = document.klient_id '
                          + ' AND DOCUMENT.TIP_OP_ID = 36 and document.tip_dok_id = 74'
                          + ' AND KARTv.KSM_ID = ' + INTTOSTR(s_KODP)
                          + ' AND Document.Date_op between ' + '''' + s_dat1 + ''''
                          + ' and ' + '''' + s_dat2 + '''');
    DM1.IBQuery1.Active := True;
    if (not dm1.IBQuery1.Eof) then
    begin
      V_VIPUSK := DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
      label1.caption := FLOATTOSTR(V_VIPUSK) + '   ' + S_NEIZ;
    END
    ELSE
    BEGIN
      V_VIPUSK := 0;
      label1.caption := '0';
    END;
    S_DATN := '01.01.' + INTTOSTR(GOD);
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng, KARTv.KSM_ID');
    DM1.IBQuery1.SQL.Add(' FROM KARTv');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID = ' + INTTOSTR(VsTRUK_ID)
                          + ' and document.struk_id = document.klient_id '
                          + ' AND DOCUMENT.TIP_OP_ID = 36 and document.tip_dok_id = 74'
                          + ' AND KARTv.KSM_ID = ' + INTTOSTR(s_KODP)
                          + ' AND Document.Date_op between ' + '''' + s_datn
                          + '''' + ' and ' + '''' + s_dat2 + '''');
    DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
    DM1.IBQuery1.Active := True;
    if (not dm1.IBQuery1.Eof) then
    begin
      V_VIPUSKG := DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat;
      label14.caption := FLOATTOSTR(V_VIPUSKG) + '   ' + S_NEIZ;
    END
    ELSE
    BEGIN
      V_VIPUSKG := 0;
      label14.caption := '';
    END;
    SostOtchet;
    Splash.Free;
  end;
end;

procedure TFOtchet.SostOtchet;
VAR
  s_fnorm : double;
  s_pereras : double;
  s_fnormg : double;
  s_pererasg : double;
  s_RASXG : DOUBLE;
begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT DISTINCT NORM.KSM_ID, ostatki.kart_id');
  DM1.IBQuery1.SQL.Add(', NORM.KRAZ, NORM.PLNORM, NORM.PRPF, NORM.NEIS, '
                       + 'NORM.KEI_ID KEI_idN, NORM.NMAT_KSM NMAT, RAZDEL.NAMRAZ, '
                       + 'NORM.razdel_id');
  DM1.IBQuery1.SQL.Add(' FROM norm_view(119,' + INTTOSTR(God) + ',' + INTTOSTR(mes)
                       + ',' + INTTOSTR(s_KODP) + ',' + INTTOSTR(Vstruk_ID) + ',0) NORM');
  DM1.IBQuery1.SQL.Add(' INNER JOIN RAZDEL ON (NORM.KRAZ = RAZDEL.KRAZ)');
  DM1.IBQuery1.SQL.Add(' LEFT JOIN ostatki ON (NORM.Kodp = ostatki.Ksm_IDpr and '
                       + 'norm.ksm_id = ostatki.ksm_id and razdel.razdel_id = '
                       + 'ostatki.razdel_id and norm.struk_id = ostatki.struk_id)');
  DM1.IBQuery1.SQL.Add(' ORDER BY  NORM.KRAZ, NORM.NMAT');
  DM1.IBQuery1.Active := True;
  if (DM1.IBQuery1.Eof) then
  begin
    if (GOD < 2010) then
    BEGIN
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT DISTINCT NORM.KSM_ID, ostatki.kart_id');
      DM1.IBQuery1.SQL.Add(',NORM.KRAZ,NORM.PLNORM,NORM.PRPF,EDIZ.NEIS,NORM.KEI_ID KEI_idN,MATROP.NMAT,RAZDEL.NAMRAZ,razdel.razdel_id');
      DM1.IBQuery1.SQL.Add(' FROM NORM');
      DM1.IBQuery1.SQL.Add(' INNER JOIN RAZDEL ON (NORM.KRAZ = RAZDEL.KRAZ)');
      DM1.IBQuery1.SQL.Add(' LEFT JOIN MATROP ON (NORM.KSM_ID = MATROP.KSM_ID)');
      DM1.IBQuery1.SQL.Add(' LEFT JOIN EDIZ ON (NORM.KEI_ID = EDIZ.KEI_ID)');
      DM1.IBQuery1.SQL.Add(' LEFT JOIN ostatki ON (NORM.Kodp = ostatki.Ksm_IDpr and norm.ksm_id=ostatki.ksm_id and razdel.razdel_id=ostatki.razdel_id)');
      DM1.IBQuery1.SQL.Add(' WHERE NORM.KODP=' + INTTOSTR(s_KODP)
                           + ' AND NORM.mes=' + INTTOSTR(mes)
                           + ' AND NORM.god=' + INTTOSTR(god)
                           + ' ORDER BY  NORM.KRAZ,MATROP.NMAT');
      DM1.IBQuery1.Active := True;
    END;
  end;
  Otchet.EmptyTable;
  Otchet.LoadFromDataSet(DM1.IBQuery1, 0, lmAppend);
  S_DATN := '01.01.' + INTTOSTR(GOD);
  Query_Otchet.Active := False;
  Query_otchet.ParamByName('struk').AsInteger := vStruk_id;
  Query_otchet.ParamByName('KODP').AsInteger := s_kodp;
  Query_otchet.ParamByName('DAT1').AsDate := StrToDate(s_DAT1);
  Query_otchet.ParamByName('DAT2').AsDate := StrToDate(s_DAT2);
  Query_otchet.ParamByName('Mes').AsInteger := mes;
  Query_otchet.ParamByName('God').AsInteger := god;
  Query_Otchet.Active := True;
  Otchet.Active := True;
  Otchet.DisableControls;
  While (not Query_Otchet.Eof) do
  begin
    Otchet.First;
    IF (Otchet.Locate('ksm_id;razdel_id',
                      VarArrayOf([Query_OtchetKsm_id.AsInteger,
                                  Query_OtchetRazdel_id.AsInteger]), [])) THEN
    begin
      if (vStruk_id = 540) then
      begin
        if (otchet.Locate('ksm_id;razdel_id;kart_id',
                        VarArrayOf([Query_OtchetKsm_id.AsInteger,
                                    Query_OtchetRazdel_id.AsInteger,
                                    Query_OtchetKART_ID.AsInteger]), [])) then
        begin
          s_ksm := OtchetKsm_ID.AsInteger;
          v_keiN := OtchetKEI_idn.AsInteger;
          Otchet.Edit;
        end
        else
        begin
          Otchet.Insert;
          Otchet.FieldByName('kSM_ID').AsInteger := Query_OtchetKSM_ID.AsIntEger;
          Otchet.FieldByName('RAZDEL_ID').AsInteger := Query_OtchetRAZDEL_ID.AsInteger;
          Otchet.FieldByName('NMAT').AsString := Query_OtchetNMAT.AsString;
          Otchet.FieldByName('NEIS').AsString := Query_OtchetNEISn.AsString;
          Otchet.FieldByName('KRAZ').AsInteger := Query_OtchetKRAZ.AsInteger;
          Otchet.FieldByName('NAMRAZ').AsString := Query_OtchetNAMRAZ.AsString;
          v_keiN := Query_OtchetKEI_IDN.AsInteger;
          s_ksm := Query_Otchet.FieldByName('ksm_id').AsInteger;
        end;
      end
      else
      begin
        s_ksm := OtchetKsm_ID.AsInteger;
        v_keiN := OtchetKEI_idn.AsInteger;
        Otchet.Edit;
      end;
    end
    else
    begin
      Otchet.Insert;
      Otchet.FieldByName('kSM_ID').AsInteger := Query_OtchetKSM_ID.AsIntEger;
      Otchet.FieldByName('RAZDEL_ID').AsInteger := Query_OtchetRAZDEL_ID.AsInteger;
      Otchet.FieldByName('NMAT').AsString := Query_OtchetNMAT.AsString;
      Otchet.FieldByName('NEIS').AsString := Query_OtchetNEISn.AsString;
      Otchet.FieldByName('KRAZ').AsInteger := Query_OtchetKRAZ.AsInteger;
      Otchet.FieldByName('NAMRAZ').AsString := Query_OtchetNAMRAZ.AsString;
      v_keiN := Query_OtchetKEI_IDN.AsInteger;
      s_ksm := Query_Otchet.FieldByName('ksm_id').AsInteger;
    end;
    Otchet.FieldByName('kart_ID').AsInteger := Query_OtchetKart_ID.AsIntEger;
    Otchet.FieldByName('KEI_ID').AsInteger := Query_OtchetKEI_ID.AsInteger;
    Otchet.FieldByName('KEI_IDn').AsInteger := v_keiN;
    s_kei := Query_OtchetKEI_ID.AsInteger;
    Otchet.FieldByName('ONM_S').AsVariant := Query_Otchet.FieldByName('Ostatok_begin_S').AsFloat
                                             * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('ONM_NZ').AsVariant := Query_Otchet.FieldByName('Ostatok_begin_NZ').AsFloat
                                              * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('kol_Prih').AsVariant := Query_OtchetPrix_period.AsFloat
                                                * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('kol_Rash').AsVariant := Query_OtchetRash_virab_period.AsFloat
                                                * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('Zag').AsVariant := Query_OtchetZag_period.AsFloat
                                           * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('Per_s').AsVariant := Query_OtchetPers.AsFloat
                                             * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('Per_nz').AsVariant := Query_OtchetPernz.AsFloat
                                              * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('OT_S').AsVariant := Query_Otchet.FieldByName('Ostatok_end_S').AsFloat
                                            * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('OT_NZ').AsVariant := Query_Otchet.FieldByName('Ostatok_end_NZ').AsFloat
                                             * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('KART_ID').AsVariant := Query_OtchetKART_ID.AsInteger;
    Otchet.FieldByName('PRIH_S').AsFloat := Query_OtchetPRIH_S.AsFloat
                                              * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.FieldByName('PRIH_NZ').AsFloat := Query_OtchetPRIH_NZ.AsFloat
                                              * dm1.Koef_per(v_kein, s_kei, s_ksm);
    Otchet.Post;
    Query_Otchet.Next;
  end;
  dm1.Ceh_Otchet.Close;
  dm1.Ceh_Otchet.ParamByName('mes').AsInteger := Mes;
  dm1.Ceh_Otchet.ParamByName('god').AsInteger := God;
  dm1.Ceh_Otchet.Active := true;
{ else
 if(dm1.Ceh_Otchet.ParamByName('mes').AsInteger<>Mes) or (dm1.Ceh_Otchet.ParamByName('god').AsInteger<>God) then
 begin
  dm1.Ceh_Otchet.Active:=false;
  dm1.Ceh_Otchet.ParamByName('mes').AsInteger:=Mes;
  dm1.Ceh_Otchet.ParamByName('god').AsInteger:=God;
  dm1.Ceh_Otchet.Active:=true;
 end;}
  Otchet.First;
  While (not Otchet.Eof) do             // !!!! ЭТО НАДО ОПТИМИЗИРОВАТЬ    !!!!!!!!!!!!!!!!!!!!!!!!!!
  begin
    S_KSM := Otchet.FieldByName('KSM_ID').AsInteger;
    s_pereras := Otchet.FieldByName('kol_Rash').AsFloat
                  - Otchet.FieldByName('PLNORM').AsFloat
                  * v_vipusk;
    if (v_vipusk <> 0) then
    begin
      if ((Otchet.FieldByName('kraz').AsInteger = 50)
          or (Otchet.FieldByName('kraz').AsInteger = 30)
          or (Otchet.FieldByName('kraz').AsInteger = 60)
          or (Otchet.FieldByName('kraz').AsInteger = 70))
          and (Otchet.FieldByName('kol_Rash').AsFloat = 0) then
        s_fnorm := Otchet.FieldByName('kol_prih').AsFloat / v_vipusk
      else
        s_fnorm := Otchet.FieldByName('kol_Rash').AsFloat / v_vipusk
    end
    else
      s_fnorm := 0;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT CEH_OTCHET.MES, ceh_otchet.kol, ceh_otchet.kol_rasx, ceh_otchet.kart_id ');
    DM1.IBQuery1.SQL.Add(' FROM ceh_otchet');
    DM1.IBQuery1.SQL.Add(' WHERE CEH_OTCHET.MES < ' + INTTOSTR(MES) + ' AND CEH_OTCHET.GOD = ' + INTTOSTR(GOD));
    DM1.IBQuery1.SQL.Add(' AND CEH_OTCHET.Kart_ID = ' + INTTOSTR(Otchet.FieldByName('KART_ID').AsInteger));
    DM1.IBQuery1.SQL.Add(' order by ceh_otchet.god, ceh_otchet.mes');
    DM1.IBQuery1.Active := True;
    if (DM1.IBQuery1.Eof) then
    BEGIN
      if ((Otchet.FieldByName('kraz').AsInteger = 50)
          or (Otchet.FieldByName('kraz').AsInteger = 30)
          or (Otchet.FieldByName('kraz').AsInteger = 60)
          or (Otchet.FieldByName('kraz').AsInteger = 70))
          and (Otchet.FieldByName('kol_Rash').AsFloat = 0) then
      begin
        s_pereras := Otchet.FieldByName('kol_prih').AsFloat
                     - Otchet.FieldByName('PLNORM').AsFloat * v_vipusk;
        S_RASXG := Otchet.FieldByName('kol_prih').AsFloat;
        S_PERERASG := S_PERERAs
      end
      else
      begin
        S_RASXG := Otchet.FieldByName('kol_Rash').AsFloat;
        S_PERERASG := S_PERERAS
      end;
    END
    ELSE
    BEGIN
      DM1.IBQuery1.Last;
      if ((Otchet.FieldByName('kraz').AsInteger = 50)
          or (Otchet.FieldByName('kraz').AsInteger = 30)
          or (Otchet.FieldByName('kraz').AsInteger = 60)
          or (Otchet.FieldByName('kraz').AsInteger = 70))
          and (Otchet.FieldByName('kol_Rash').AsFloat = 0) then
      begin
        s_pereras := Otchet.FieldByName('kol_prih').AsFloat
                     - Otchet.FieldByName('PLNORM').AsFloat * v_vipusk;
        S_RASXG := Otchet.FieldByName('kol_prih').AsFloat
                   + DM1.IBQuery1.FieldByName('Kol_Rasx').AsFloat;
        S_PERERASG := S_PERERAS+DM1.IBQuery1.FieldByName('Kol').AsFloat;
      end
      else
      begin
        S_RASXG := Otchet.FieldByName('kol_Rash').AsFloat
                   + DM1.IBQuery1.FieldByName('Kol_Rasx').AsFloat;
        S_PERERASG := S_PERERAS + DM1.IBQuery1.FieldByName('Kol').AsFloat;
      end;
    END;
    if (v_vipuskg <> 0) then
      s_fnormg := S_RASXG / v_vipuskg
    else
      s_fnormg := 0;
    dm1.CEH_OTCHET.First;
    if (not dm1.CEH_OTCHET.Locate('kart_id',
                                  VarArrayOf([Otchet.FieldByName('KART_ID').AsInteger]),
                                  [])) then
    begin
      IF (Otchet.FieldByName('KART_ID').AsInteger <> 0)
          and (Otchet.FieldByName('KART_ID').AsVariant <> null) THEN
      begin
        dm1.CEH_OTCHET.Insert;
        dm1.CEH_OTCHET.FieldByName('KART_ID').AsInteger := Otchet.FieldByName('KART_ID').AsInteger;
        dm1.CEH_OTCHET.FieldByName('MES').AsInteger := MES;
        dm1.CEH_OTCHET.FieldByName('GOD').AsInteger := GOD;
        dm1.CEH_OTCHET.FieldByName('KOL').AsFloat := S_PERERASG;
        dm1.CEH_OTCHET.FieldByName('KOL_RASX').AsFloat := S_RASXG;
        dm1.CEH_OTCHET.Post;
      end;
    END
    ELSE
    begin
      dm1.CEH_OTCHET.EDIT;
      dm1.CEH_OTCHET.FieldByName('KOL').AsFloat := S_PERERASG;
      dm1.CEH_OTCHET.FieldByName('KOL_RASX').AsFloat := S_RASXG;
      dm1.CEH_OTCHET.Post;
    end;
    Otchet.Edit;
    Otchet.FieldByName('FNORM').AsFloat := S_FNORM;
    Otchet.FieldByName('FNORMG').AsFloat := S_FNORMG;
    Otchet.FieldByName('PERERAS').AsFloat := S_PERERAS;
    Otchet.FieldByName('PERERASG').AsFloat := S_PERERASG;
    Otchet.FieldByName('RASXG').AsFloat := S_RASXG;
    Otchet.Post;
    Otchet.Next;
  end;                    // ^Оптимизировать
  dm1.startReadTrans;
  dm1.startWriteTrans;
  try
    if (dm1.CEH_OTCHET.UpdatesPending) then
    BEGIN
      dm1.CEH_OTCHET.ApplyUpdates;
      DM1.IBT_WRITE.Commit;
      DM1.IBT_READ.CommitRetaining;
      dm1.CEH_OTCHET.Close;
      dm1.IBT_Read.Active := false;
      dm1.IBT_WRITE.Active := false;
    END;
  except
    MessageDlg('Произошла ошибка при записи данных!', mtWarning, [mbOK], 0);
    DM1.IBT_Read.RollbackRetaining;
  end;
// dm1.CEH_OTCHET.Close;
  Otchet.SortOnFields('kraz;nmat', true);
  Otchet.First;
  Otchet.EnableControls;
end;

procedure TFOtchet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if otchet.Active then
    s_ksm := otchetKsm_id.AsInteger;
  dm1.Ceh_Otchet.Close;
end;

procedure TFOtchet.FormShow(Sender: TObject);
begin
  if (AnsiLowerCase(dm.UserName) = 'ld_ceh16_1') or (AnsiLowerCase(dm.UserName) = 'igor') then
    tbtn_delLine.Visible := true
  else
    tbtn_delLine.Visible := false;
//  SpinEdit3.OnChange:=nil;
//  SpinEdit4.OnChange:=nil;
//  SpinEdit3.Value:=mes;
//  SpinEdit4.Value:=god;
  ComboBox2.OnChange:=nil;
  ComboBox1.OnChange:=nil;
  ComboBox1.ItemIndex:=mes-1;
  ComboBox2.ItemIndex:=god-2000;
  ComboBox2.OnChange:=ComboBox2Change;
  ComboBox1.OnChange:=ComboBox1Change;
  IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
//  SpinEdit3.OnChange:=SpinEdit3Change;
//  SpinEdit4.OnChange:=SpinEdit4Change;
 if s_kodp<>0 then
 begin
  Splash := ShowSplashWindow(AniBmp1,'Загрузка данных. Подождите, пожалуйста...', True, nil);
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
  DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,region.nam nam_reg');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.Ksm_id= '+inttostr(s_kodp)+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
  DM1.IBQuery1.Active := True;
  EDIT1.OnChange:=nil;
  edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT1.OnChange:=Edit1Change;
  s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
  s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
  s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
  s_korg:=DM1.IBQuery1.FieldByName('KORG').AsInteger;
  s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
  s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
  s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
  label17.Caption:=DM1.IBQuery1.FieldByName('nam_reg').AsString;
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
  + ' and document.struk_id = document.klient_id '
  + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
  + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
  + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
  DM1.IBQuery1.Active := True;
  if not dm1.IBQuery1.Eof then
  begin
   V_VIPUSK:=DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
   label1.caption:=FLOATTOSTR(V_VIPUSK)+'   '+S_NEIZ;
  END
  ELSE
  BEGIN
   V_VIPUSK:=0;
   label1.caption:='0';
  END;
  S_DATN:='01.01.'+INTTOSTR(GOD);
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
  DM1.IBQuery1.SQL.Add(' FROM KARTv');
  DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
  DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' and document.struk_id = document.klient_id '
  + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
  + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
  + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
  DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
  DM1.IBQuery1.Active := True;
  if not dm1.IBQuery1.Eof then
  begin
   V_VIPUSKG:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat;
   label14.caption:=FLOATTOSTR(V_VIPUSKG)+'   '+S_NEIZ;
  END
  ELSE
  BEGIN
   V_VIPUSKG:=0;
   label14.caption:='';
  END;
  SostOtchet;
  Splash.Free;
 end
 else
 begin
  if otchet.Active then otchet.Active:=false;
  EDIT1.Text:='';
  LABEL1.Caption:='';
  LABEL14.Caption:='';
  LABEL22.Caption:='';
  LABEL21.Caption:='';
  LABEL41.Caption:='';
  LABEL19.Caption:='';
  LABEL29.Caption:='';
  label17.Caption:='';
 end;
 DBGridEH3.SetFocus;
end;
  


procedure TFOtchet.SpeedButton2Click(Sender: TObject);
begin
if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
 FindSpprod.DataBaseName:=dm1.BELMED;
 FindSpprod.ReadOnly:=true;
 FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
 FindSpprod.ShowModal;
 if FindSpprod.ModalResult > 50 then
 begin
  EDIT1.OnChange:=nil;
  edit1.text:=FindSpprod.IBSpprodKod_Prod.Asstring;
  EDIT1.OnChange:=Edit1Change;
  s_kodp:=FindSpprod.ModalResult-50;
  s_gost:=FindSpprod.IBSpprodGOST.AsString;
  s_xarkt:=FindSpprod.IBSpprodXARKT.AsString;
  s_nmat:=FindSpprod.IBSpprodNMAT.AsString;
  s_kei:=FindSpprod.IBSpprodKEI_ID.VALUE;
  s_korg:=FindSpprod.IBSpprodKORG.AsInteger;
  s_kodProd:=FindSpprod.IBSpprodKOD_PROD.AsString;
  s_namorg:=FindSpprod.IBSpprodNAME_ORG.AsString;
  s_neiz:=FindSpprod.IBSpprodNEIS.AsString;
  Label17.Caption:=FindSpprod.IBSpprodName_REG.AsString;
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
                      + ' and document.struk_id = document.klient_id '
  + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
  + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
  + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
 begin
  V_VIPUSK:=DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
  label1.caption:=FLOATTOSTR(V_VIPUSK);
 END
 ELSE
 BEGIN
  V_VIPUSK:=0;
  label1.caption:='0';
 END;
 S_DATN:='01.01.'+INTTOSTR(GOD);
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
 DM1.IBQuery1.SQL.Add(' FROM KARTv');
 DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
 DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' and document.struk_id = document.klient_id '
 + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
 + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
 + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
 DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
 begin
  V_VIPUSKG:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat;
  label14.caption:=FLOATTOSTR(V_VIPUSKG)+'   '+S_NEIZ;
 END
 ELSE
 BEGIN
  V_VIPUSKG:=0;
  label14.caption:='';
 END;
 SostOtchet;
 end;
end;

procedure TFOtchet.SpinEdit3Change(Sender: TObject);
begin
{mes:=SpinEdit3.Value;
if (mes<=12)and(mes>=1) then
begin
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  if Edit1.Text<>'' then
  begin
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT  KARTv.KOL_PRIH');
   DM1.IBQuery1.SQL.Add(' FROM KARTv');
   DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=36'
   + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
   + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then
   begin
    V_VIPUSK:=DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
    label1.caption:=FLOATTOSTR(V_VIPUSK)+'   '+S_NEIZ;
   END
   ELSE
   BEGIN
    V_VIPUSK:=0;
    label1.caption:='0';
   END;
   S_DATN:='01.01.'+INTTOSTR(GOD);
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
   DM1.IBQuery1.SQL.Add(' FROM KARTv');
   DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=36'
   + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
   + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
   DM1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then
   begin
    V_VIPUSKG:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat;
    label14.caption:=FLOATTOSTR(V_VIPUSKG)+'   '+S_NEIZ;
   END
   ELSE
   BEGIN
    V_VIPUSKG:=0;
    label14.caption:='';
   END;
   SostOtchet;
  end;
end; }
end;

procedure TFOtchet.ToolButton5Click(Sender: TObject);
begin
  Otchet.DisableControls;
  FrReport2.LoadFromFile(reportsPath + 'P_Otchet.frf');
  FrReport2.ShowReport;
  Otchet.EnableControls;
end;

procedure TFOtchet.frReport2GetValue(const ParName: String;
  var ParValue: Variant);
begin
  nammes := dm1.getStrMes(FOtchet.ComboBox1.ItemIndex + 1); 
if ParName='nammes' then ParValue:=nammes;
if ParName='lekkod' then ParValue:=FOtchet.Edit1.Text;
if ParName='gostp' then ParValue:=FOtchet.Label22.Caption;
if ParName='xarkt' then ParValue:=FOtchet.Label41.Caption;
if ParName='namorg' then ParValue:=FOtchet.Label29.Caption;
if ParName='stname' then ParValue:=FGlMenu.RxLabel1.Caption;
if ParName='Nam_prep' then ParValue:=FOtchet.Label19.Caption;
if ParName='neiz_prep' then ParValue:=FOtchet.Label21.Caption;
if ParName='god' then ParValue:=FOtchet.ComboBox2.ItemIndex+2000;
if ParName='sdano_m' then ParValue:=FOtchet.Label1.Caption;
if ParName='sdano_g' then ParValue:=FOtchet.Label14.Caption;
end;

procedure TFOtchet.SpinEdit4Change(Sender: TObject);
begin
{god:=SpinEdit4.Value;
IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  if Edit1.Text<>'' then
  begin
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT  KARTv.KOL_PRIH');
   DM1.IBQuery1.SQL.Add(' FROM KARTv');
   DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=36'
   + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
   + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then
   begin
    V_VIPUSK:=DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
    label1.caption:=FLOATTOSTR(V_VIPUSK)+'   '+S_NEIZ;
   END
   ELSE
   BEGIN
    V_VIPUSK:=0;
    label1.caption:='0';
   END;
   S_DATN:='01.01.'+INTTOSTR(GOD);
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
   DM1.IBQuery1.SQL.Add(' FROM KARTv');
   DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=36'
   + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
   + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
   DM1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then
   begin
    V_VIPUSKG:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat;
    label14.caption:=FLOATTOSTR(V_VIPUSKG)+'   '+S_NEIZ;
   END
   ELSE
   BEGIN
    V_VIPUSKG:=0;
    label14.caption:='';
   END;
   SostOtchet;
  end; }
end;

procedure TFOtchet.tbtn_delLineClick(Sender: TObject);
begin
  Otchet.Delete;
end;

procedure TFOtchet.DBGridEh3SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
 Usl_Sort := '';
 for i := 0 to DBGridEh3.SortMarkedColumns.Count-1 do
 BEGIN
  Usl_sort:=DBGridEh3.SortMarkedColumns[i].FieldName;
  if DBGridEh3.SortMarkedColumns[i].Title.SortMarker = smUpEh then
   Otchet.SortOnFields(Usl_Sort,false,true)
  else
    Otchet.SortOnFields(Usl_Sort,true,false);
 END;
end;

procedure TFOtchet.prTxReport1UnknownVariable(Sender: TObject;
  const VarName: String; var Value: TprVarValue; var IsProcessed: Boolean);
begin
  nammes := dm1.getStrMes(FOtchet.ComboBox1.ItemIndex + 1);
if vstruk_id<>106 then nachn:='Начальник участка ___________________________________'
else nachn:='Инженер-технолог ____________________________________';
if VarName='nammes' then _vSetAsString(Value, nammes);
if VarName='lekkod' then _vSetAsString(Value, FOtchet.Edit1.Text);
if VarName='gostp' then _vSetAsString(Value, FOtchet.Label22.Caption);
if VarName='xarkt' then _vSetAsString(Value, FOtchet.Label41.Caption);
if VarName='namorg' then _vSetAsString(Value, FOtchet.Label29.Caption);
if VarName='stname' then _vSetAsString(Value, FGlMenu.RxLabel1.Caption);
if VarName='nam_prep' then _vSetAsString(Value, FOtchet.Label19.Caption);
if VarName='neiz_prep' then _vSetAsString(Value, FOtchet.Label21.Caption);
if VarName='god' then _vSetAsInteger(Value, FOtchet.ComboBox2.ItemIndex+2000);
if VarName='sdano_m' then _vSetAsString(Value, FOtchet.Label1.Caption);
if VarName='sdano_g' then _vSetAsString(Value, FOtchet.Label14.Caption);
if VarName='reg' then
     _vSetAsString(Value, SelectToVarIB('SELECT NAM FROM REGION '+
     'INNER JOIN SPPROD on region.reg=spprod.reg '+
     'where spprod.ksm_id='+IntTOStr(s_kodp),
     DM1.BELMED,
     DM1.IBT_Read));
if VarName='s_dolgn' then _vSetAsString(Value, s_dolgn);
if VarName='s_fio' then _vSetAsString(Value, s_fio);
if (VarName='nach') then  _vSetAsString(Value, nachn);
if VarName='Tochn' then
IsProcessed:=true;
end;

procedure TFOtchet.ToolButton1Click(Sender: TObject);
begin
  IniOtchet := TIniFile.Create(exePath + 'OTCHET.Ini');
  VidShap := IniOtchet.ReadInteger('Config', 'Shap_id', 5);
  s_Dolgn := IniOtchet.ReadString('Config', 'Dolgn', 'Зам.генрального директора');
  s_Fio := IniOtchet.ReadString('Config', 'FIO','Гаврилюк Н.Ю.');
  PopupMenu2.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFOtchet.ToolButton2Click(Sender: TObject);

begin
//if Fvipusk=nil then Fvipusk:=tFvipusk.Create(Application);
// Fvipusk.ShowModal;
{ if FPech_Vibor=nil then FPech_Vibor:=TfPech_Vibor.Create(Application);
 FPech_Vibor.ShowModal;
 if FPech_Vibor.ModalResult=mrOk then
 begin
  p_yes:=true;
  FPech_Vibor.PechVipusk.First;
  While not FPech_Vibor.PechVipusk.Eof and p_yes do
  begin
   if FPech_Vibor.PechVipuskVib.AsBoolean then
   begin
    p_yes:=false; }
  if FVybPrep=nil then FVybprep:=TfVybPrep.Create(Application);
  FVybPrep.ShowModal;
  if FVybPrep.ModalResult=mrOk then
  begin
    s_kodp:=FVybPrep.mem_vipuskKsm_id.AsInteger;
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
    s_korg:=DM1.IBQuery1.FieldByName('KORG').AsInteger;
    s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
    s_Lek_id:=DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
    s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
    s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
    s_Formv:=DM1.IBQuery1.FieldByName('NAMEFV').AsString;
    s_Sprod_id:=DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
    s_namREG:=DM1.IBQuery1.FieldByName('NAM_ReG').AsString;
    Label17.Caption:=s_namREG;
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
    + ' and document.struk_id = document.klient_id '
    + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
    + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then
   begin
    V_VIPUSK:=DM1.IBQuery1.FieldByName('KOL_PRIH').AsFloat;
    label1.caption:=FLOATTOSTR(V_VIPUSK);
   END
   ELSE
   BEGIN
    V_VIPUSK:=0;
    label1.caption:='0';
   END;
   S_DATN:='01.01.'+INTTOSTR(GOD);
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
   DM1.IBQuery1.SQL.Add(' FROM KARTv');
   DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
   + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
   + ' and document.struk_id = document.klient_id '
   + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
   DM1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then
   begin
    V_VIPUSKG:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat;
    label14.caption:=FLOATTOSTR(V_VIPUSKG)+'   '+S_NEIZ;
   END
   ELSE
   BEGIN
    V_VIPUSKG:=0;
    label14.caption:='';
   END;
   SostOtchet;
   StopWait;
  end;
//    FPech_Vibor.PechVipusk.Next;
//  end;
// end;
end;

procedure TFOtchet.MenuItem1Click(Sender: TObject);
begin
FOtchet.APrintMatr.Execute;
end;

procedure TFOtchet.APrintMatrExecute(Sender: TObject);
var IniOtchet: TIniFile;
begin
IniOtchet := TIniFile.Create(exePath + 'OTCHET.Ini');
VidShap := IniOtchet.ReadInteger('Config', 'Shap_id', 5);
s_Dolgn := IniOtchet.ReadString('Config', 'Dolgn', 'Зам.генерального директора');
s_Fio := IniOtchet.ReadString('Config', 'FIO','Адамович С.И.');
Otchet.DisableControls;
dm1.PechOtchet.EmptyTable;
dm1.PechOtchet.LoadFromDataSet(fOtchet.Otchet,0,lmAppend);
     dm1.PechOtchet.First;
     while not dm1.PechOtchet.Eof do
     begin
       if dm1.PechOtchetKodp.AsVariant=null then
       begin
        dm1.PechOtchet.Edit;
        dm1.PechOtchetKodp.asInteger:=s_kodp;
        dm1.PechOtchetVip.asFloat:=v_vipusk;
        dm1.PechOtchetVipg.asFloat:=v_vipuskg;
        dm1.PechOtchetKod_prod.asString:=S_KODPROD;
        dm1.PechOtchetNamprod.AsString:=S_Nmat;
        dm1.PechOtchetNamorg.asString:=s_Namorg;
        dm1.PechOtchetNamreg.asString:=s_Namreg;
        dm1.PechOtchetGost.asString:=s_Gost;
        dm1.PechOtchetXarkt.asString:=S_Xarkt;
        dm1.PechOtchetNeisp.asString:=S_Neiz;
        dm1.PechOtchetstruk_id.AsInteger := VsTRUK_ID;
        dm1.PechOtchet.Post;
       end;
       dm1.PechOtchet.Next;
     end;
dm1.frxReport1.LoadFromFile(reportsPath + 'o_report-' + IntToStr(VidShap) + '.fr3');
dm1.frxReport1.ShowReport(true);
(*rTxReport1.LoadTemplateFromFile('otchet-'+IntToStr(VidShap)+'.prt', False);
PrTxReport1.PrepareReport;
PrTxReport1.PreviewPreparedReport(True);*)
Otchet.EnableControls;
end;

procedure TFOtchet.ComboBox1Change(Sender: TObject);
begin
 god:=ComboBox2.ItemIndex+2000;
 mes:=ComboBox1.ItemIndex+1;
 if (mes<=12)and(mes>=1) then
begin
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  if Edit1.Text<>'' then
  begin
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
    label1.caption:=FLOATTOSTR(V_VIPUSK)+'   '+S_NEIZ;
   END
   ELSE
   BEGIN
    V_VIPUSK:=0;
    label1.caption:='0';
   END;
   S_DATN:='01.01.'+INTTOSTR(GOD);
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
   DM1.IBQuery1.SQL.Add(' FROM KARTv');
   DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
   + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
   + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
   DM1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then
   begin
    V_VIPUSKG:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat;
    label14.caption:=FLOATTOSTR(V_VIPUSKG)+'   '+S_NEIZ;
   END
   ELSE
   BEGIN
    V_VIPUSKG:=0;
    label14.caption:='';
   END;
   SostOtchet;
  end;
end;
end;

procedure TFOtchet.ComboBox2Change(Sender: TObject);
begin
 god:=ComboBox2.ItemIndex+2000;
 mes:=ComboBox1.ItemIndex+1;
 if (mes<=12)and(mes>=1) then
begin
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  if Edit1.Text<>'' then
  begin
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
    label1.caption:=FLOATTOSTR(V_VIPUSK)+'   '+S_NEIZ;
   END
   ELSE
   BEGIN
    V_VIPUSK:=0;
    label1.caption:='0';
   END;
   S_DATN:='01.01.'+INTTOSTR(GOD);
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
   DM1.IBQuery1.SQL.Add(' FROM KARTv');
   DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
   + ' AND KARTv.KSM_ID='+INTTOSTR(s_KODP)
   + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
   DM1.IBQuery1.Active := True;
   if not dm1.IBQuery1.Eof then
   begin
    V_VIPUSKG:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat;
    label14.caption:=FLOATTOSTR(V_VIPUSKG)+'   '+S_NEIZ;
   END
   ELSE
   BEGIN
    V_VIPUSKG:=0;
    label14.caption:='';
   END;
   SostOtchet;
  end;
end;
end;

procedure TFOtchet.MenuItem2Click(Sender: TObject);
begin
// FOtchet.ANastrPech..Execute;
{if FNastrPech=nil then FNastrPech:=TfNastrPech.Create(Application);
modres:=FNastrPech.ShowModal;
if modres=12 then
FOtchet.APrintMatr.Execute;}
end;

procedure TFOtchet.frxReport1GetValue(const VarName: String; var Value: Variant);
begin
  nammes := dm1.getStrMes(FOtchet.ComboBox1.ItemIndex + 1);
  if (VarName = 'nammes') then
    Value := nammes;
  if (VarName = 'lekkod') then
    Value := FOtchet.Edit1.Text;
  if (VarName = 'nammes') then
    Value := nammes;
  if (VarName = 'lekkod') then
    Value := FOtchet.Edit1.Text;
  if (VarName = 'gostp') then
    Value := FOtchet.Label22.Caption;
  if (VarName = 'xarkt') then
    Value := FOtchet.Label41.Caption;
  if (VarName = 'namorg') then
    Value := FOtchet.Label29.Caption;
  if (VarName = 'stname') then
    Value := FGlMenu.RxLabel1.Caption;
  if (VarName = 'nam_prep') then
    Value := s_nmat;
  if (VarName = 'neiz_prep') then
    Value := FOtchet.Label21.Caption;
  if (VarName = 'god') then
    Value := FOtchet.ComboBox2.ItemIndex+2000;
  if (VarName = 'sdano_m') then
    Value := FOtchet.Label1.Caption;
  if (VarName = 'sdano_g') then
    Value := FOtchet.Label14.Caption;
  if (VarName = 'reg') then
    Value := SelectToVarIB('SELECT NAM FROM REGION '+
                           'INNER JOIN SPPROD on region.reg=spprod.reg '+
                           'where spprod.ksm_id=' + IntTOStr(s_kodp),
                           DM1.BELMED, DM1.IBT_Read);
  if (VarName = 's_dolgn') then
    Value := s_dolgn;
  if (VarName = 's_fio') then
    Value := s_fio;
  if (VarName = 'nach') and (vstruk_id = 106 )then
    Value := 'Инженер-технолог ___________________';
  if (VarName = 'nach') and (vstruk_id<>106 )then
    Value := 'Начальник участка __________________';
  if (VarName = 'Tochn') then
  begin
    if (FSprFormul = nil) then
      FSprFormul := TfSprFormul.Create(Application);
    if (FSprFormul.Ceh_Normz.Active = true) then
      FSprFormul.CEH_NormZ.Close;
    FSprFormul.CEH_NormZ.MacroByName('SORT').AsString := '';
    FSprFormul.CEH_NormZ.MacroByName('USL').AsString := ' Where CEH_NORMZ.KSM_ID_PR='
                                                        + INTTOSTR(S_KODP)
                                                        + ' and CEH_NORMZ.KSM_ID_MAt='
                                                        + INTTOSTR(OtchetKsm_id.AsInteger)
                                                        + ' and CEH_NORMZ.razdel_id= '
                                                        + IntToStr(Otchetrazdel_id.AsInteger);
    FSprFormul.CEH_NormZ.Open;
    if (not FSprFormul.CEH_NORMZ.eof) then
      if (FSprFormul.CEH_NORMZDecznak.AsVariant <> null) then
        tochn := FSprFormul.CEH_NORMZDecznak.asinteger
      else
        tochn := 3
    else
      tochn := 3;
//    tochn := 5;
    Value := tochn;
  end;
end;

procedure TFOtchet.APrintGraphExecute(Sender: TObject);
var
  IniOtchet : TIniFile;
begin
  S_DATN := '01.01.' + INTTOSTR(GOD);
  Otchet.DisableControls;
  dm1.PechOtchet.EmptyTable;
  dm1.PechOtchet.LoadFromDataSet(fOtchet.Otchet, 0, lmAppend);
  dm1.PechOtchet.First;
  while (not dm1.PechOtchet.Eof) do
  begin
    if (dm1.PechOtchetKodp.AsVariant = null) then
    begin
      dm1.PechOtchet.Edit;
      dm1.PechOtchetKodp.asInteger := s_kodp;
      dm1.PechOtchetVip.asFloat := v_vipusk;
      dm1.PechOtchetVipg.asFloat := v_vipuskg;
      dm1.PechOtchetKod_prod.asString := S_KODPROD;
      dm1.PechOtchetNamprod.AsString := S_Nmat;
      dm1.PechOtchetNamorg.asString := s_Namorg;
      dm1.PechOtchetNamreg.asString := s_Namreg;
      dm1.PechOtchetGost.asString := s_Gost;
      dm1.PechOtchetXarkt.asString := S_Xarkt;
      dm1.PechOtchetNeisp.asString := S_Neiz;
      dm1.PechOtchetstruk_id.AsInteger := VsTRUK_ID;
      dm1.PechOtchet.Post;
    end;
    dm1.PechOtchet.Next;
  end;
  IniOtchet := TIniFile.Create(exePath + 'OTCHET.Ini');
  VidShap := IniOtchet.ReadInteger('Config', 'Shap_id', 5);
  s_Dolgn := IniOtchet.ReadString('Config', 'Dolgn', 'Зам.генерального директора');
  s_Fio := IniOtchet.ReadString('Config', 'FIO','Адамович С.И.');
  dm1.frxReport1.LoadFromFile(reportsPath + 'P_otchet_cex-' + IntToStr(VidShap) + '.fr3');
  dm1.FrxReport1.ShowReport;
  Otchet.EnableControls;
end;


procedure TFOtchet.ANasrtPechtExecute(Sender: TObject);
begin
  if (FNastrPech = nil) then
    FNastrPech := TfNastrPech.Create(Application);
  FNastrPech.ShowModal;
end;

procedure TFOtchet.ToolButton3Click(Sender: TObject);
begin
  if (MessageDlg('Удалять данные отчета?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    IBQuery1.Active := False;
    IBQuery1.SQL.Clear;
    IBQuery1.SQL.Add('SELECT DISTINCT D.DOC_ID');
    IBQuery1.SQL.Add(' FROM DOCUMENT D');
    IBQuery1.SQL.Add(' WHERE D.TIP_OP_ID IN (30,33,34,35,37,85)');
    IBQuery1.SQL.Add(' AND (D.DATE_DOK BETWEEN ' + '''' + s_DAT1 + '''' + ' AND'
                     + '''' + s_dat2 + '''' + ') AND D.KLIENT_ID=' + INTTOSTR(S_KODP));
    IBQuery1.Active := True;
    TRY
      dm1.startReadTrans;
      dm1.startWriteTrans;
      WHILE (not IBQuery1.Eof) DO
      begin
        DM1.DeleteDocument.ParamByName('NDOC_ID').AsInteger := IBQuery1.FieldByName('DOC_ID').AsInteger;
        DM1.DeleteDocument.ExecProc;
        IBQuery1.Next;
      END;
      DM1.IBT_Write.Commit;
      DM1.IBT_Read.Active := FALSE;
      DM1.IBT_Write.Active := FALSE;
      dm1.startReadTrans;
      dm1.startWriteTrans;
      SostOtchet;
    except
      on E : EIBInterbaseError do
      begin
        ShowMessage(E.Message);
        DM1.IBT_Write.rollback;
      end;
    END;
  end;
end;

procedure TFOtchet.ToolButton4Click(Sender: TObject);
begin
  S_ksm := OtchetKsm_id.AsInteger;
  FOstSyr.Edit1.text := inttostr(OtchetKsm_id.AsInteger);
  FOstSyr.Label7.Caption := OtchetNmat.AsString;
  FOstSyr.label8.Caption := OtchetNeis.AsString;
  FOstSyr.DateEdit3.Date := strtodate(s_dat1);
  FOstSyr.DateEdit4.Date := strtodate(s_dat2);
  if (FOstSyr = nil) then
    FOstSyr := TFOstSyr.Create(Application);
  FOstSyr.ShowModal;
end;

end.
