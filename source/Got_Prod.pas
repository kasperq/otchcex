unit Got_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit, ImgList, ComCtrls, ToolWin,
  Grids, DBGridEh, DB, IBCustomDataSet, IBQuery, RxIBQuery, IBUpdateSQL,
  IBUpdSQLW,VCLUtils,UtilRIB, Buttons, Placemnt, RxStrUtils, DBCtrlsEh,
  DBLookupEh, DBCtrls, frxClass, frxDBSet, RxMemDS, Menus,FR_DSet, FR_DBSet, FR_Class,Math,
  DBGrids, frxExportXLS, frXMLExl, frxExportImage, frxExportPDF, CopyFiles;

type
  TFGot_Prod = class(TForm)
    DBGridEh2: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ImageList1: TImageList;
    ToolButton2: TToolButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label19: TLabel;
    Label29: TLabel;
    Label21: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label22: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    DSKart_Vipusk: TDataSource;
    IBUpdateKart_Vipusk: TIBUpdateSQLW;
    Kart_Vipusk: TRxIBQuery;
    Label28: TLabel;
    ToolButton6: TToolButton;
    Panel3: TPanel;
    Label3: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    SpeedButton2: TSpeedButton;
    FormStorage1: TFormStorage;
    Label10: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBNavigator1: TDBNavigator;
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
    GetUpak: TIBQuery;
    MD_Nakladupak_trans: TStringField;
    PMPrint: TPopupMenu;
    Npa4: TMenuItem;
    Npa5: TMenuItem;
    ToolButton4: TToolButton;
    MD_Nakladves_upak: TFloatField;
    MD_Nakladnam: TStringField;
    MD_Nakladvol_up: TFloatField;
    Label4: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    MD_NakladKOL_GRP: TFloatField;
    MD_Nakladsum_prop: TStringField;
    IBTara: TIBQuery;
    frxDBDataset2: TfrxDBDataset;
    IBTaraVOL_TRANS: TFMTBCDField;
    IBTaraUPAK_TRANS: TIBStringField;
    IBTaraSIZE_UPAK: TIBStringField;
    RMUpak: TRxMemoryData;
    RMUpakves_trans: TFloatField;
    RMUpakkol_upak: TIntegerField;
    RMUpakkol_upak_prop: TStringField;
    RMUpakves_upak: TFloatField;
    frxDBDataset3: TfrxDBDataset;
    RMUpakves_trans1: TFloatField;
    MD_Nakladves_trans1: TFloatField;
    RMUpakseria: TStringField;
    DSnaklad: TDataSource;
    DSUpak: TDataSource;
    MD_Nakl_s: TRxMemoryData;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField4: TFloatField;
    StringField8: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField9: TStringField;
    FloatField7: TFloatField;
    IBQuery1: TIBQuery;
    Kart_VipuskDOC_ID: TIntegerField;
    Kart_VipuskKSM_ID: TIntegerField;
    Kart_VipuskSTROKA_ID: TIntegerField;
    Kart_VipuskKART_ID: TIntegerField;
    Kart_VipuskKOD_PROD: TIBStringField;
    Kart_VipuskNMAT: TIBStringField;
    Kart_VipuskXARKT: TIBStringField;
    Kart_VipuskGOST: TIBStringField;
    Kart_VipuskSERIA_ID: TIntegerField;
    Kart_VipuskKOL_TRANS: TFloatField;
    Kart_VipuskVOL_TRANS: TFMTBCDField;
    Kart_VipuskKOL_GRP: TFloatField;
    Kart_VipuskVES_TRANS: TIBBCDField;
    Kart_VipuskGOD: TSmallintField;
    Kart_VipuskMES: TSmallintField;
    Kart_VipuskNOMU_ID_TRANS: TSmallintField;
    Kart_VipuskNOMU_ID_GRP: TSmallintField;
    Kart_VipuskKOL_UPAK: TIntegerField;
    Kart_VipuskSERIA: TIBStringField;
    Kart_VipuskNEIS: TIBStringField;
    Kart_VipuskSROK_GODN: TDateField;
    Kart_VipuskDATE_OP: TDateField;
    Kart_VipuskKLIENT_ID: TIntegerField;
    Kart_VipuskNDOK: TIBStringField;
    Kart_VipuskUPAK_TRANS: TIBStringField;
    Kart_VipuskVES_UPAK: TIBBCDField;
    Kart_VipuskUPAK_GRP: TIBStringField;
    Kart_VipuskVES_GRP: TIBBCDField;
    Kart_VipuskNAM: TIBStringField;
    Kart_VipuskVES_TARA: TIBBCDField;
    MD_Nakladves_tara: TFloatField;
    MD_Nakl_sves_tara: TFloatField;
    MD_Nakl_sves_grp: TFloatField;
    Panel2: TPanel;
    Label9: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    MD_Nakladnmat: TStringField;
    Label8: TLabel;
    Kart_VipuskKEI_ID: TSmallintField;
    MD_Nakladkol_trans: TFloatField;
    RMUpakkol_trans: TFloatField;
    MD_Nakl_skol_trans: TFloatField;
    Kart_VipuskOT_DOKUM: TFMTBCDField;
    Kart_VipuskKOL_RASH: TFMTBCDField;
    cbRF: TCheckBox;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frXMLExcelExport1: TfrXMLExcelExport;
    frxXLSExport1: TfrxXLSExport;
    Kart_VipuskKOL_PRIH: TFMTBCDField;
    Kart_VipuskKOL_SERIA: TFloatField;
    Kart_VipuskONM_DOKUM: TFMTBCDField;
    Kart_VipuskONM_FD: TFloatField;
    Kart_VipuskOT_FD: TFMTBCDField;
    Kart_VipuskOT_S: TFMTBCDField;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure Kart_VipuskBeforePost(DataSet: TDataSet);
    procedure Kart_VipuskBeforeInsert(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBLookupComboboxEh1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure Npa4Click(Sender: TObject);
    procedure Npa5Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure Kart_VipuskNewRecord(DataSet: TDataSet);
    procedure Prosmotr;
    procedure Kart_VipuskKOL_TRANSChange(Sender: TField);
    procedure DateEdit1Change(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Kart_VipuskKOL_RASHChange(Sender: TField);
    procedure Kart_VipuskVES_UPAKChange(Sender: TField);
    procedure Kart_VipuskVES_GRPChange(Sender: TField);
    procedure Kart_VipuskKOL_GRPChange(Sender: TField);
    procedure Kart_VipuskUPAK_GRPValidate(Sender: TField);
    procedure Kart_VipuskUPAK_GRPChange(Sender: TField);


    procedure setLabelsOnForm(kodPr, vDoc, sNmat, sXarkt, sNamorg,
                              sNeiz, sGost, sNamreg : string; sKorg : integer;
                              dateDoc : TDate);
    procedure assignValues2KartVipusk(ksmId, seriaId, kartId, klientId,
                                      nomuIdTrans, docId: integer; seria, upakTrans,
                                      volTrans: string; vesUpak, vesTara, kolRash: double);
    procedure setGridCol3DisplayFormat;
    procedure loadAndInitMDNaklad;
    procedure openNaklS;
    procedure getKeiId;
    procedure loadUnderSigns;
    procedure saveUnderSigns;
    procedure deleteUnderSigns;
    procedure devideGotKartBy1000;

    procedure Kart_VipuskCalcFields(DataSet: TDataSet);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure Kart_VipuskAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public

  end;

var
  FGot_Prod: TFGot_Prod;
  sum_int: integer;
  sum_frac: integer;
  Sum_variant: variant;
  Sum_vipusk: double;
  vv: integer;
  vv1, vvv: double;
  keiId: integer;
  param1IsHere, param2IsHere : bool;

implementation
 uses dm, Find_Spprod, Ser, Upak, VibDocProd, Vipusk_seria, DocP, Num2Text;
{$R *.dfm}

procedure TFGot_Prod.assignValues2KartVipusk(ksmId, seriaId, kartId, klientId,
                                              nomuIdTrans, docId: integer; seria,
                                              upakTrans, volTrans: string;
                                              vesUpak, vesTara, kolRash: Double);
begin
  if ksmId <> -32000 then
    Kart_Vipuskksm_id.AsInteger := ksmId;
  if seriaId <> -32000 then
    Kart_VipuskSeria_id.AsInteger := seriaId;
  if kartId <> -32000 then
    Kart_Vipuskkart_id.AsInteger := kartId;
  if nomuIdTrans <> -32000 then
    Kart_VipuskNomu_id_trans.AsInteger := nomuIdTrans;
  if klientId <> -32000 then
    Kart_VipuskKlient_id.AsInteger := klientId;
  if docId <> -32000 then
  Kart_Vipuskdoc_id.AsInteger := docId;
  Kart_VipuskKEI_ID.AsInteger := keiId;

  if seria <> '-32000' then
    Kart_VipuskSeria.AsString := seria;
  if upakTrans <> '-32000' then
    Kart_VipuskUPAK_Trans.AsString := upakTrans;
  if volTrans <> '-32000' then
    Kart_Vipusk.FieldByName('VOL_TRANS').AsString := volTrans;

//      Kart_Vipuskkol_trans.AsVariant:=FVipusk_Seria.Kart_Vipusk_SERIA.FieldByName('kol_trans').AsVariant;
  if vesUpak <> -32000 then
    Kart_Vipusk.FieldByName('Ves_upak').AsFloat := vesUpak;
  if vesTara <> -32000 then
    Kart_Vipusk.FieldByName('Ves_tara').AsFloat := vesTara;
  if kolRash <> -32000 then
    Kart_Vipuskkol_rash.AsString := FloatToStr(kolRash);
//    Kart_Vipuskkol_rash.AsFloat := kolRash;  
end;

procedure TFGot_Prod.setLabelsOnForm(kodPr: string; vDoc: string;
                                      sNmat: string; sXarkt: string;
                                      sNamorg: string; sNeiz: string;
                                      sGost: string; sNamreg: string;
                                      sKorg: Integer; dateDoc: TDate );
begin
  Edit1.Text := kodPr;
  Edit2.Text := vDoc;
  DateEdit1.Date := dateDoc;
  label19.Caption := sNmat;
  label11.Caption := sXarkt;
  label29.Caption := sNamorg;
  label21.Caption := sNeiz;
  label28.Caption := inttostr(sKorg);
  label22.Caption := sGost;
  Label6.Caption := sNamreg;
end;

procedure TFGot_Prod.loadUnderSigns;
begin
  DM1.IBQuery1.Active := False;
  if not dm1.Document.eof then
  begin
    dm1.IBQuery1.Active := false;
    dm1.IBQuery1.SQL.Clear;
    dm1.IBQuery1.SQL.Add('select doc_param.param_value '
                          + 'from doc_param '
                          + 'where doc_param.tip_param_id = ');
    if (vStruk_id = 1) or (vStruk_id = 29) or (vStruk_id = 106) then
      dm1.IBQuery1.SQL.Add(' 544 ')
    else
      dm1.IBQuery1.SQL.Add(' 542 ');
    dm1.IBQuery1.SQL.Add(' and doc_param.doc_id = ' + dm1.DocumentDOC_ID.AsString);
    dm1.IBQuery1.Active := true;
  end;

  if (dm1.IBQuery1.Eof) {or (dm1.Document.eof)} then
  begin
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT default_value '
                         + 'from doc_tip_param '
                         + 'where tip_param_id = ');
    if (vStruk_id = 1) or (vStruk_id = 29) or (vStruk_id = 106) then
      dm1.IBQuery1.SQL.Add(' 544 ')
    else
      dm1.IBQuery1.SQL.Add(' 542 ');
    DM1.IBQuery1.Active := True;
    Edit3.Text := DM1.IBQuery1.FieldByName('default_value').asstring;
    param1IsHere := false;
  end
  else
  begin
    param1IsHere := true;
    Edit3.Text := DM1.IBQuery1.FieldByName('param_value').asstring;
  end;
  DM1.IBQuery1.Active := False;
  if not dm1.Document.eof then
  begin
    dm1.IBQuery1.Active := false;
    dm1.IBQuery1.SQL.Clear;
    dm1.IBQuery1.SQL.Add('select doc_param.param_value '
                          + 'from doc_param '
                          + 'where doc_param.tip_param_id = 543 '
                          + 'and doc_param.doc_id = ' + dm1.DocumentDOC_ID.AsString);
    dm1.IBQuery1.Active := true;
    param2IsHere := false;
  end;
  if (not dm1.IBQuery1.Eof) {and (not dm1.Document.Eof)} then
  begin
    Edit4.Text := DM1.IBQuery1.FieldByName('param_value').asstring;
    param2IsHere := true;
  end;
end;

procedure TFGot_Prod.saveUnderSigns;
var
  docParamId : string;
begin
  if Edit3.Text <> '' then
  begin
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    if (vStruk_id = 1) or (vStruk_id = 29) or (vStruk_id = 106) then
      docParamId := ' 544 '
    else
      docParamId := ' 542 ';
    if not param1IsHere then
      DM1.IBQuery1.SQL.Add('insert into doc_param (tip_param_id, doc_id, param_value) '
                            + 'values ( ' + docParamId + ', ' + dm1.DocumentDOC_ID.AsString
                            + ', ''' + edit3.Text + ''')')
    else
      DM1.IBQuery1.SQL.Add('update doc_param set param_value = ''' + edit3.Text
                            + ''' where tip_param_id = ' + docParamId + ' and doc_id = '
                            + dm1.DocumentDOC_ID.AsString);
    dm1.IBQuery1.Active := true;
  end;

  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  if not param2IsHere then
    DM1.IBQuery1.SQL.Add('insert into doc_param (tip_param_id, doc_id, param_value) '
                         + 'values (543, ' + dm1.DocumentDOC_ID.AsString
                         + ', ''' + edit4.Text + ''')')
  else
    DM1.IBQuery1.SQL.Add('update doc_param set param_value = ''' + edit4.Text
                         + ''' where tip_param_id = 543 and doc_id = '
                         + dm1.DocumentDOC_ID.AsString);
  dm1.IBQuery1.Active := true;
end;

procedure TFGot_Prod.deleteUnderSigns;
begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('delete from doc_param where doc_id = ' + dm1.DocumentDOC_ID.AsString);
  dm1.IBQuery1.Active := true;
end;

// Функция определяет название месяца в родительном падеже
function MesName(Mes: integer): string;
begin
  case Mes of
    1: Result:='Января';
    2: Result:='Февраля';
    3: Result:='Марта';
    4: Result:='Апреля';
    5: Result:='Мая';
    6: Result:='Июня';
    7: Result:='Июля';
    8: Result:='Августа';
    9: Result:='Сентября';
    10: Result:='Октября';
    11: Result:='Ноября';
    12: Result:='Декабря';
  end;
end;

procedure TFGot_Prod.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
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
      s_korg := DM1.IBQuery1.FieldByName('KORG').VALUE;
      s_kodProd := DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
      s_Lek_id := DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
      s_namorg := DM1.IBQuery1.FieldByName('NAM').AsString;
      s_neiz := DM1.IBQuery1.FieldByName('NEIS').AsString;
      s_Sprod_id := DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
      keiId := DM1.IBQuery1.FieldByName('KEI_ID').AsInteger;
      setLabelsOnForm(s_kodProd, Edit2.Text, s_nmat, s_xarkt, s_namorg, s_neiz,
                      s_gost, DM1.IBQuery1.FieldByName('NAMreg').AsString, s_korg,
                      DateEdit1.Date);
      if label28.caption = '0' then
        label28.caption := '';
      Prosmotr;
    end;
  end;
end;

procedure TFGot_Prod.Edit2Change(Sender: TObject);
begin
  vNDoc := Edit2.Text;
end;

procedure TFGot_Prod.Edit1Change(Sender: TObject);
begin
  if edit1.text <> ''   then begin
    skod := replacestr(edit1.text, ',', '.') + '%';
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID, SPPROD.NMAT, SPPROD.KOD_PROD, '
                          + 'SPPROD.KEI_ID, SPPROD.KSM_ID, SPPROD.SPROD_ID,');
    DM1.IBQuery1.SQL.Add('SPPROD.GOST, EDIZ.NEIS, SPPROD.KORG, SPPROD.XARKT, '
                          + 'SPPROD.ACTIVP, SPRORG.NAM, SPPROD.LEK_ID, region.nam namreg');
    DM1.IBQuery1.SQL.Add(' FROM SPPROD');
    DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.ReG = region.reg)');
    DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like ' + '''' + skod + ''''
                          + ' AND SPPROD.STRUK_ID=' + INTTOSTR(vStruk_Id));
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
    begin
      Label19.Caption := DM1.IBQuery1.FieldByName('kod_PROD').Asstring
                         + DM1.IBQuery1.FieldByName('nmat').AsString;
      Label11.Caption := DM1.IBQuery1.FieldByName('Xarkt').AsString;
      Label6.Caption := DM1.IBQuery1.FieldByName('namreg').AsString;
    end
    else
    begin
      Label19.Caption := '';
      Label11.Caption := '';
      Label6.Caption := '';
    end;
    Label19.Refresh;
    Label11.Refresh;
  end;
end;

procedure TFGot_Prod.Edit1Click(Sender: TObject);
begin
  edit1.text := '';
end;

procedure TFGot_Prod.FormShow(Sender: TObject);
begin
  param1IsHere := false;
  param2IsHere := false;
  edit3.Text := '';
  edit4.Text := '';
  vTip_Op_Id := 93;
  vTip_Doc_Id := 90;
  DateEdit1.OnChange := nil;
  kart_vipusk.Close;
  dm1.Sklad.Active := true;
  if s_kodProd <> '' then
  begin
    if FDocP.DBLookupComboboxEh1.KeyValue <> null then
      DBLookupComboboxEh1.KeyValue := FDocP.DBLookupComboboxEh1.KeyValue;
    setLabelsOnForm(s_kodProd, vndoc, s_nmat, s_xarkt, s_namorg,
                    s_neiz, s_gost, s_namreg, s_korg, vdate_dok);
    Prosmotr;
    getKeiId;
    if FVipusk_Seria.Kart_Vipusk_SERIA.Active then
    begin
      FVipusk_Seria.Kart_Vipusk_SERIA.BeforePost := nil;
      FVipusk_Seria.Kart_Vipusk_SERIA.First;
      while not FVipusk_Seria.Kart_Vipusk_SERIA.Eof do
      begin
        if FVipusk_Seria.Kart_Vipusk_SERIAVib.AsInteger = 1 then
        begin
          Kart_Vipusk.First;
          if not (Kart_Vipusk.Locate('kart_id', FVipusk_Seria.Kart_Vipusk_SERiaKart_id.AsInteger, []))then
          begin
            Kart_Vipusk.Insert;
            assignValues2KartVipusk(FVipusk_Seria.Kart_Vipusk_SERIA.FieldByName('ksm_id').AsInteger,
                                    FVipusk_Seria.Kart_Vipusk_SERIA.FieldByName('Seria_id').AsInteger,
                                    FVipusk_Seria.Kart_Vipusk_SERIA.FieldByName('kart_id').AsInteger,
                                    struk_id, FVipusk_Seria.Kart_Vipusk_SERIA.FieldByName('Nomu_id_trans').AsInteger,
                                    vdocument_id, FVipusk_Seria.Kart_Vipusk_SERIA.FieldByName('Seria').AsString,
                                    FVipusk_Seria.Kart_Vipusk_seriaUPAK_Trans.AsString,
                                    FVipusk_Seria.Kart_Vipusk_seria.FieldByName('VOL_TRANS').AsString,
                                    FVipusk_Seria.Kart_Vipusk_seria.FieldByName('Ves_upak').AsFloat,
                                    FVipusk_Seria.Kart_Vipusk_seria.FieldByName('Ves_upak').AsFloat,
                                    FVipusk_Seria.Kart_Vipusk_SERIA.FieldByName('kol_prih').AsFloat);
          end
          else
          begin
            Kart_Vipusk.Edit;
            assignValues2KartVipusk(-32000, -32000, -32000, struk_id,
                                    FVipusk_Seria.Kart_Vipusk_SERIA.FieldByName('Nomu_id_trans').AsInteger,
                                    -32000, '-32000', '-32000',
                                    FVipusk_Seria.Kart_Vipusk_seria.FieldByName('VOL_TRANS').AsString,
                                    FVipusk_Seria.Kart_Vipusk_seria.FieldByName('Ves_upak').AsFloat,
                                    FVipusk_Seria.Kart_Vipusk_seria.FieldByName('Ves_upak').AsFloat,
                                    FVipusk_Seria.Kart_Vipusk_SERIA.FieldByName('kol_prih').AsFloat);
          end;
          Kart_Vipusk.BeforePost := nil;
          Kart_Vipusk.Post;
          Kart_Vipusk.BeforePost := Kart_VipuskBeforePost;
        end;
        FVipusk_Seria.Kart_Vipusk_SERIA.Next;
      end;
      FVipusk_Seria.Kart_Vipusk_SERIA.BeforePost := FVipusk_Seria.Kart_Vipusk_SERIABeforePost;
    end;
  end
  else
    setLabelsOnForm('', '', '', '', '', '', '', '', 0, date());
  DateEdit1.OnChange := DateEdit1Change;
  loadUnderSigns;
//  DM1.IBQuery1.Active := False;
//  DM1.IBQuery1.SQL.Clear;
//  DM1.IBQuery1.SQL.Add('SELECT otp_razr from configumc where struk_id=' + inttostr(vstruk_id));
//  DM1.IBQuery1.SQL.Add('SELECT default_value '
//                       + 'from doc_tip_param '
//                       + 'where tip_dok_id = 90 ');
//  DM1.IBQuery1.Active := True;
//  Edit3.Text := DM1.IBQuery1.FieldByName('default_value').asstring;
//  DM1.IBQuery1.Active := False;

  setGridCol3DisplayFormat;
  if vNdoc <> '' then
    ToolButton6.Enabled := true
  else
    ToolButton6.Enabled := false;
end;

procedure TFGot_Prod.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  DateTime: TDateTime;
  Year: Word;
  Month: Word;
  Day: Word;
  all_kol: Real;
begin
  if VarName = 'fio_nach_okk' then
    Value := Edit3.Text;
  if VarName = 'fio_sdal' then
    Value := Edit4.Text;
  if VarName = 'nakl_nom' then
  begin
    Value := Edit2.Text;
  end
  else
    if VarName = 'data' then
    begin
      DateTime := DateEdit1.Date;
      DecodeDate(DateTime, Year, Month, Day);
      Value := '"  ' + IntToStr(Day) + '  "   ' + MesName(Month) + '   '
               + IntToStr(Year) + '  г.';
    end
    else
      if VarName = 'kod_prod' then
      begin
        Value := Edit1.Text;
      end
      else
        if VarName = 'nom_ceh' then
        begin
          Value := S_namcex;
        end
        else
          if VarName = 'all_summa' then
          begin
            all_kol := 0;
            MD_Naklad.First;
            while not MD_Naklad.Eof do
            begin
              all_kol := all_kol + MD_Naklad.FieldByName('KOL_RASH').AsFloat;
              MD_Naklad.Next;
            end;
            Value := all_kol;
          end
          else
            if VarName = 'all_summa_propis' then
            begin
              all_kol := 0;
              MD_Naklad.First;
              while not MD_Naklad.Eof do
              begin
                all_kol := all_kol+MD_Naklad.FieldByName('KOL_RASH').AsFloat;
                MD_Naklad.Next;
              end;
              Value := SumToString(Round(all_kol * 1000));
            end;
end;

procedure TFGot_Prod.ToolButton2Click(Sender: TObject);
var
  st : String;
  v_kol_upak : integer;
  v_kol_upak1 : integer;
  v_seria1 : string;
//  s_vesup : double;

begin
  if Kart_Vipusk.RecordCount > 0 then
  begin
    MD_Nakl_s.EmptyTable;
    RMUpak.EmptyTable;
    MD_Naklad.EmptyTable;

    IBQuery1.Active := False;
    IBQuery1.SQL.Clear;
    IBQuery1.SQL.Add(' SELECT sum(KART.KOL_Rash) kol_rash,SPPROD.NMAT,KART.DOC_ID, KART.KSM_ID,');
    IBQuery1.SQL.Add(' OSTATKI.SERIA_ID,SERIA.SERIA, EDIZ.NEIS,region.nam ');
    IBQuery1.SQL.Add(' FROM KART  ');
    IBQuery1.SQL.Add(' inner JOIN OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)');
    IBQuery1.SQL.Add(' inner JOIN SPPROD ON (OSTATKI.KSM_ID = SPPROD.KSM_ID)');
    IBQuery1.SQL.Add(' LEFT JOIN region ON (SPPROD.ReG = region.reg)');
    IBQuery1.SQL.Add(' LEFT JOIN SERIA ON (OSTATKI.SERIA_ID = SERIA.SERIA_ID)');
    IBQuery1.SQL.Add(' inner JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
    IBQuery1.SQL.Add(' where kart.doc_id = ' + inttostr(vDocument_id));
    IBQuery1.SQL.Add(' group by SPPROD.NMAT, KART.DOC_ID, KART.KSM_ID, '
                     + 'OSTATKI.SERIA_ID, SERIA.SERIA, EDIZ.NEIS, region.nam ');
    IBQuery1.Active := True;

    loadAndInitMDNaklad;

    ibtara.Close;
    ibtara.paramByName('doc').AsInteger := vdocument_id;
    IbTara.Open;
    openNaklS;
    RMUpak.Close;
    RMUpak.Open;
    while not MD_Nakl_s.Eof do
    begin
      v_kol_upak1 := 0;
      MD_Nakl_s.Edit;
      MD_Nakl_s.FieldByName('kol_upak').AsInteger := MD_Nakl_s.FieldByName('kol_grp').AsInteger;
      st := '';
      st := SumToString(Round(MD_Nakl_s.FieldByName('kol_grp').AsInteger));
      MD_Nakl_s.FieldByName('kol_upak_prop').AsString := st;
      if (keiId = 166) or (keiId = 170) or (keiId = 163) then
      begin
        v_kol_upak := Trunc(MD_Nakl_s.FieldByName('KOL_RASH').AsFloat
                            / MD_Nakl_s.FieldByName('kol_trans').AsFloat);
        if v_kol_upak < MD_Nakl_s.FieldByName('KOL_RASH').AsFloat
                        / MD_Nakl_s.FieldByName('kol_trans').AsFloat then
          v_kol_upak1 := 1;
      end
      else
      begin
        v_kol_upak := Trunc(MD_Nakl_s.FieldByName('KOL_RASH').AsFloat * 1000
                            / MD_Nakl_s.FieldByName('kol_trans').AsFloat);
        if v_kol_upak < (MD_Nakl_s.FieldByName('KOL_RASH').AsFloat * 1000)
                        / MD_Nakl_s.FieldByName('kol_trans').AsFloat then
          v_kol_upak1 := 1;
      end;
      GetUpak.Close;
      GetUpak.ParamByName('name_upak').AsString := MD_Nakl_s.FieldByName('upak_trans').AsString;
      GetUpak.Open;
      if not GetUpak.Eof then
      begin
        MD_Nakl_s.FieldByName('size_upak').AsString := GetUpak.FieldByName('len_up').AsString
                                                       + 'x'
                                                       + GetUpak.FieldByName('width_up').AsString
                                                       + 'x'
                                                       + GetUpak.FieldByName('height_up').AsString;
        MD_Nakl_s.FieldByName('vol_trans').AsFloat := GetUpak.FieldByName('vol_up').AsFloat
      end;
      RMUpak.Append;
      RMUpak.FieldByName('kol_upak').AsInteger := v_kol_upak;
      if (keiId = 166) or (keiId = 170) or (keiId = 163) then
        RMUpak.FieldByName('kol_trans').AsFloat := MD_Nakl_s.FieldByName('KOL_trans').AsFloat
      else
        RMUpak.FieldByName('kol_trans').AsInteger := MD_Nakl_s.FieldByName('KOL_trans').AsInteger;
      RMUpak.FieldByName('seria').AsString := MD_Nakl_s.FieldByName('seria').AsString;
      st := '';
      st := SumToString(v_kol_upak);
      RMUpak.FieldByName('kol_upak_prop').AsString := st;
      RMUpak.FieldByName('ves_trans').AsFloat := MD_Nakl_s.FieldByName('Ves_trans').AsFloat;
      RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_tara').AsFloat;
      RMUpak.Post;
//      s_vesup:=RMUpak.FieldByName('ves_upak').AsFloat;
      if v_kol_upak1 = 1 then
      begin
        RMUpak.Append;
        RMUpak.FieldByName('seria').asstring := v_seria1;
        RMUpak.FieldByName('kol_upak').AsInteger := v_kol_upak1;
        if (keiId = 166) or (keiId = 170) or (keiId = 163) then
        begin
          vvv := MD_Nakl_s.FieldByName('KOL_RASH').AsFloat;
          RMUpak.FieldByName('kol_trans').AsFloat := vvv - (MD_Nakl_s.FieldByName('KOL_trans').AsFloat * v_kol_upak);
          if MD_Nakl_s.FieldByName('KOL_grp').AsInteger <> 0 then
            RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_upak').AsFloat
                                                      + (RMUpak.FieldByName('kol_trans').AsInteger
                                                      / MD_Nakl_s.FieldByName('KOL_grp').AsInteger
                                                      * MD_Nakl_s.FieldByName('ves_grp').AsFloat)
          else
            RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_upak').AsFloat;
          if MD_Nakl_s.FieldByName('KOL_trans').AsInteger <> 0 then
            RMUpak.FieldByName('ves_trans').AsFloat := RMUpak.FieldByName('KOL_trans').AsFloat
                                                       + MD_Nakl_s.FieldByName('Ves_upak').AsFloat
                                                       * v_kol_upak1
          else
            RMUpak.FieldByName('ves_trans').AsFloat := 0;
        end
        else
        begin
          vv := round(MD_Nakl_s.FieldByName('KOL_RASH').AsFloat * 1000);
          RMUpak.FieldByName('kol_trans').AsInteger := vv - (MD_Nakl_s.FieldByName('KOL_trans').AsInteger * v_kol_upak);
          if MD_Nakl_s.FieldByName('KOL_grp').AsInteger <> 0 then
            RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_upak').AsFloat
                                                      + (RMUpak.FieldByName('kol_trans').AsInteger
                                                      / MD_Nakl_s.FieldByName('KOL_grp').AsInteger
                                                      * MD_Nakl_s.FieldByName('ves_grp').AsFloat)
          else
            RMUpak.FieldByName('ves_upak').AsFloat := MD_Nakl_s.FieldByName('Ves_upak').AsFloat;
          if MD_Nakl_s.FieldByName('KOL_trans').AsInteger <> 0 then
            RMUpak.FieldByName('ves_trans').AsFloat := roundto(((vv
                                                       - (MD_Nakl_s.FieldByName('KOL_trans').AsInteger
                                                       * v_kol_upak))
                                                       * MD_Nakl_s.FieldByName('Ves_trans').AsFloat)
                                                       / MD_Nakl_s.FieldByName('KOL_trans').AsInteger,
                                                       -2)
          else
            RMUpak.FieldByName('ves_trans').AsFloat := 0;
        end;
        RMUpak.FieldByName('seria').AsString := MD_Nakl_s.FieldByName('seria').AsString;
        st := '';
        st := SumToString(v_kol_upak1);
        RMUpak.FieldByName('kol_upak_prop').AsString := st;
        RMUpak.Post;
       end;
       MD_Nakl_s.Next;
    end;

    if (keiId = 166) or (keiId = 170) or (keiId = 163) then
      FrxReport1.LoadFromFile(reportsPath + 'Got_Prod_n_kod166.fr3')
    else
      FrxReport1.LoadFromFile(reportsPath + 'Got_Prod_n.fr3');

    FrxReport1.ShowReport;
//    PMPrint.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
  end;
end;

procedure TFGot_Prod.ToolButton1Click(Sender: TObject);
begin 
  Edit2.Visible := true;
  label1.Caption := '';
  DBLookupComboboxEh1.KeyValue := null;
  kart_vipusk.Active := false;
  dm1.Document.Active := false;
  label3.Caption:='Задайте номер накладной:';
  setLabelsOnForm('', '', '', '', '', '', '', '', 0, Now);
  Edit2.SetFocus;
end;

procedure TFGot_Prod.ToolButton6Click(Sender: TObject);
begin
  if MessageDlg('Удалять документ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      while not kart_vipusk.Eof do
        kart_Vipusk.Delete;
      Kart_Vipusk.ApplyUpdates;
      deleteUnderSigns;
      dm1.IBT_Read.CommitRetaining;
      dm1.IBT_Write.CommitRetaining;
      dm1.Document.First;
      if  dm1.Document.Locate('doc_id', vdocument_id, []) then
      begin
        DM1.Document.BeforeDelete := nil;
        dm1.Document.Delete;
        dm1.Document.BeforeDelete := dm1.DocumentBeforeDelete;
      end;
      dm1.Document.ApplyUpdates;
      dm1.IBT_Read.CommitRetaining;
      dm1.IBT_Write.CommitRetaining;
//      DM1.ApplyUpdatesDoc;
      setLabelsOnForm('','','','','','','','',0,Now);
      Edit2.Visible := true;
      DBLookupComboboxEh1.KeyValue := null;
      kart_vipusk.Close;
      label3.Caption := 'Задайте номер накладной:';
      Edit2.SetFocus;
    except
      On E: Exception do
      begin
        MessageDlg('Произошла ошибка при удалении записи!' + E.Message, mtWarning, [mbOK], 0);
        Abort;
      end;
    end;
  end;
end;

procedure TFGot_Prod.devideGotKartBy1000;
begin
  if (Kart_VipuskKEI_ID.AsInteger <> 166) and (Kart_VipuskKEI_ID.AsInteger <> 163)
        and (Kart_VipuskKEI_ID.AsInteger <> 170) then
  begin
    Kart_Vipusk.First;
    while (not Kart_Vipusk.Eof) do
    begin
      Kart_Vipusk.Edit;
      Kart_VipuskKOL_TRANS.AsFloat := Kart_VipuskKOL_TRANS.AsFloat / 1000;
      Kart_VipuskKOL_GRP.AsFloat := Kart_VipuskKOL_GRP.AsFloat / 1000;
      Kart_Vipusk.Post;
      Kart_Vipusk.Next;
    end;
  end;
end;

procedure TFGot_Prod.ToolButton3Click(Sender: TObject);
begin
try
  dm1.writeWhoUsesGotProd('OLD GotProd');
  if Kart_Vipusk.Eof then
    ToolButton6Click(Sender)
  else
  begin
    devideGotKartBy1000;
    if Edit2.Text = '' then
    begin
      MessageDlg('Задайте номер накладной.', mtWarning, [mbOK], 0);
      Abort;
    end;
    if DBLookupComboboxEh1.KeyValue = null then
    begin
      MessageDlg('Выберите склад отправки препарата', mtWarning, [mbOK], 0);
      Abort;
    end;
    if Edit1.Text = '' then
    begin
      MessageDlg('Задайте ппрепарат', mtWarning, [mbOK], 0);
      Abort;
    end;
    if not dm1.Document.Active then
    begin
      MessageDlg('Документ не открыт!', mtWarning, [mbOK], 0);
      Exit;
  //  Prosmotr;
    end
    else
    begin
      dm1.Document.Edit;
      dm1.DocumentNdok.AsString := edit2.Text;
      dm1.DocumentKlient_Id.AsInteger := struk_id;
      dm1.DocumentDate_dok.AsDateTime := dateEdit1.date;
      dm1.DocumentDate_op.AsDateTime := dateEdit1.date;
      DM1.Document.Post;
      saveUnderSigns;
    end;
    if (Kart_Vipusk.Modified)
        or (Kart_Vipusk.State = dsEdit)
        or (Kart_Vipusk.State = dsInsert) then
      Kart_Vipusk.Post;
    Kart_Vipusk.ApplyUpdates;
    DM1.ApplyUpdatesDoc;
    Prosmotr;
    MessageDlg('Данные записаны.', mtInformation, [mbOk], 0);
  end;
// dm1.IBT_READ.Active:=FALSE;
// dm1.Sklad.Open;
// DBLookupComboboxEh1.KeyValue:=struk_id;
// Kart_Vipusk.Active:=true;
{ If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
 naz_sum:='';
 Sum_variant:=SelectToVarIB('select SUM(KART.KOL_rasH)   FROM KART'
 +' WHERE kart.doc_ID='+INTTOSTR(vdocument_ID),dm1.belmed,dm1.ibt_read);
 if Sum_variant<>null then
 begin
  Sum_vipusk:=Sum_variant;
  sum_int:=strtoint(floattostr(int(sum_vipusk)));
  sum_frac:=round(frac(sum_vipusk)*1000);
  naz_sum:=AnsiUpperCase(Copy(DM1.SumToString(Sum_int),1,1))
  +AnsiLowerCase(Copy(DM1.SumToString(Sum_int),2,Length(DM1.SumToString(Sum_int))))
  +' тысяч '
  +AnsiLowerCase(Copy(DM1.SumToString(Sum_int),2,Length(DM1.SumToString(Sum_int))))
  +inttostr(sum_frac);
  vNeis_vip:=Label21.Caption;
 end;}
  finally

  end;
end;

procedure TFGot_Prod.ToolButton4Click(Sender: TObject);
begin
  Prosmotr;
end;

procedure TFGot_Prod.Prosmotr;
begin
  if (Edit2.Text = '')
      or (DBLookupComboboxEh1.KeyValue = null)
      or (Edit1.Text = '') then
    Exit;
  StartWait;
  vNDoc := Edit2.Text;
  vKlient_Id := struk_id;
  vDate_op := dateEdit1.date;
  vDate_dok := dateEdit1.date;
  if not dm1.Document.Active then
  begin
    v_dok := SelectToVarIB('select DOcUMENT.doc_id FROM document WHERE DOcUMENT.STRUK_ID = '
                            + INTTOSTR(VsTRUK_ID)
                            + ' AND DOCUMENT.TIP_OP_ID = 93'
                            + ' AND DOCUMENT.KLIENT_ID = ' + inttostr(vKlient_Id)
                            + ' AND DOCUMENT.Ndok=' + '''' + edit2.text + ''''
                            + ' AND Document.Date_dok = ' + '''' + datetostr(vDate_dok) + '''',
                            dm1.belmed, dm1.ibt_read);
    if v_dok <> Null then
    begin
      vDocument_id := V_DOK;
      dm1.Document.Active := false;
      dm1.Document.MacroByName('usl').AsString := ' Where Document.doc_id=' + inttostr(v_dok);
      dm1.Document.Active := true;
    end
    else
    begin
      dm1.Document.Active := true;
      dm1.Document.Insert;
      dm1.Document.Post;
      dm1.Document.ApplyUpdates;
    end;
  end
  else
  begin
    if dm1.Document.Locate('ndok;tip_op_id;date_op;struk_id;klient_id',
                           VarArrayOf([vndoc, 93, vDate_op, vstruk_id, vKlient_id]),
                           []) then
      vDocument_id := dm1.DocumentDoc_id.AsInteger
    else
    begin
      dm1.Document.Insert;
      dm1.Document.Post;
      dm1.Document.ApplyUpdates;
    end;
  end;
  if Kart_Vipusk.Active then
    Kart_Vipusk.Active := false;
  Kart_Vipusk.MacroByName('USL').AsString := ' Where document.doc_id=' + inttostr(vDocument_id);
  Kart_Vipusk.Active := true;
  dbgrideh2.Refresh;
  usl_dat := '0=0';
// if dm1.Seria.Active then dm1.Seria.Active:=false;
// Dm1.Seria.ParamByName('Ksm_id').AsInteger:=S_KODP;
// dm1.Seria.Active:=true;
  StopWait;
end;

procedure TFGot_Prod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not dm1.IBT_Read.Active then
    dm1.IBT_Read.Active := true;
  if not dm1.IBT_Write.Active then
    dm1.IBT_Write.Active := true;
  if (dm1.Document.Active) then  
    dm1.Document.Active := false;
  if (dm1.Seria.Active) then  
    dm1.Seria.Active := false;
  if (Kart_vipusk.Active) then  
    Kart_vipusk.Active := false;
  param1IsHere := false;
  param2IsHere := false;
end;

procedure TFGot_Prod.DateEdit1Change(Sender: TObject);
begin
  vDate_dok := dateEdit1.date;
  vDate_op := dateEdit1.date;
end;

procedure TFGot_Prod.DBGridEh2CellClick(Column: TColumnEh);
begin
//  if Column.Index = 15 then
//  begin
//    if Kart_VipuskRF.AsBoolean = false then
//      Kart_VipuskRF.AsBoolean := true
//    else
//      Kart_VipuskRF.AsBoolean := false;
//  end;

end;

procedure TFGot_Prod.DBGridEh2DblClick(Sender: TObject);
var
  i:integer;
begin
  for i := 0 to DBGridEh2.Columns.Count - 1 do
  BEGIN
    if dbgrideh2.Columns[i].FieldName = 'VES_TRANS' then
    BEGIN
      Kart_Vipusk.Edit;
      Kart_Vipusk.FieldByName('ves_trans').AsFloat := vv1;
    END;
  END;
end;

procedure TFGot_Prod.DBGridEh2EditButtonClick(Sender: TObject);
begin
  if dbgrideh2.SelectedField.FieldName = 'SERIA' then
  BEGIN
    if  not dm1.Seria.Eof then
    begin
      if FSer = nil then
        FSer := TFSer.Create(Application);
      pr_ser := 0;
      FSer.Position := poDesigned;
      FSer.Top := Mouse.CursorPos.Y;
      FSer.Left := Mouse.CursorPos.X - 100;
      FSer.ShowModal;
      if FSer.ModalResult > 50 then
      begin
        Kart_Vipusk.Edit;
        Kart_VipuskSeria_id.AsInteger := FSer.ModalResult - 50;
        Kart_VipuskSeria.AsString := DM1.SeriaSeria.AsString;
        Kart_VipuskKol_rash.AsFloat := dm1.SeriaKol_seria.AsFloat;
      end;
    end
    else
    begin
      MessageDlg('Нет серии заданного препарата!', mtWarning, [mbOK], 0);
      vseria_id := 0;
    end;
  END;
  if dbgrideh2.SelectedField.FieldName = 'UPAK_GRP' then
  BEGIN
    if FUPAK = nil then
      FUPAK := TFUPAK.Create(Application);
    FUPAK.Position := poDesigned;
    FUPAK.Top := Mouse.CursorPos.Y;
    FUPAK.Left := Mouse.CursorPos.X - 200;
    FUPAK.ShowModal;
    if FUPAK.ModalResult > 50 then
    begin
      Kart_Vipusk.Edit;
      Kart_VipuskNOMU_id_GRP.AsInteger := FUPAK.ModalResult - 50;
      Kart_VipuskUPAK_GRP.AsString := DM1.UpakName_upak.AsString;
      Kart_Vipusk.FieldByName('Ves_grp').AsFloat := FUPAK.DBGridEH1.DataSource.DataSet.FieldByName('Ves_UPak').AsFloat;
    end;
  end;  
  if dbgrideh2.SelectedField.FieldName = 'UPAK_TRANS' then
  BEGIN
    if FUPAK = nil then
      FUPAK := TFUPAK.Create(Application);
    FUPAK.Position := poDesigned;
    FUPAK.Top := Mouse.CursorPos.Y;
    FUPAK.Left := Mouse.CursorPos.X - 200;
    FUPAK.ShowModal;
    if FUPAK.ModalResult > 50 then
    begin
      Kart_Vipusk.Edit;
      Kart_VipuskNOMU_id_Trans.AsInteger := FUPAK.ModalResult - 50;
      Kart_VipuskUPAK_Trans.AsString := DM1.UpakName_upak.AsString;
      Kart_Vipusk.FieldByName('VOL_TRANS').AsString := FUPAK.DBGridEH1.DataSource.DataSet.FieldByName('VOL_UP').AsString;
      Kart_Vipusk.FieldByName('Ves_upak').AsFloat := FUPAK.DBGridEH1.DataSource.DataSet.FieldByName('Ves_UPak').AsFloat;
    end;
  end;
end;

procedure TFGot_Prod.DBLookupComboboxEh1Change(Sender: TObject);
begin
  if DBLookupComboboxEh1.KeyValue <> null then
    struk_id := DBLookupComboboxEh1.KeyValue;
end;

procedure TFGot_Prod.Kart_VipuskBeforePost(DataSet: TDataSet);
//VAR
//v_ser: variant;
begin
// s_ksm:=s_kodp;
{  if not dm1.Seria.Active then
  begin
   dm1.Seria.ParamByName('KSM_ID').AsInteger:=S_KODP;
   dm1.Seria.Active:=TRUE
  end;
  if dm1.Seria.Locate('seria_id',KART_VIPUSKSERIA_id.AsInteger,[]) then
  begin
   dm1.Seria.Edit;
   dm1.SeriaKol_seria.AsFloat:=Kart_VipuskKol_rash.AsFloat
  end
  else
  begin
   S_SERIA:=kART_vIPUSKsERIA.AsString;
   dm1.Seria.Insert;
   dm1.SeriaKol_seria.AsFloat:=Kart_VipuskKol_rash.AsFloat
  end;
  dm1.Seria.Post;
  dm1.Seria.ApplyUpdates; }

  if not dm1.Ostatki.Active then
  begin
    DM1.Ostatki.ParamByName('struk_ID').AsInteger := vstruk_id;
    DM1.Ostatki.MacroByName('usl').AsString := '  AND ost.ksm_id = ' + inttostr(s_kodp);
    dm1.Ostatki.Open;
  end
  else
  begin
    dm1.Ostatki.First;
    if dm1.OstatkiKsm_id.AsInteger <> s_kodp then
    begin
      dm1.Ostatki.Active := false;
      DM1.Ostatki.ParamByName('struk_ID').AsInteger := vstruk_id;
      DM1.Ostatki.MacroByName('usl').AsString := '  AND ost.ksm_id=' + inttostr(s_kodp);
      dm1.Ostatki.Open;
    end;
  end;
  dm1.Ostatki.First;
  if dm1.Ostatki.Locate('kart_id', KART_VIPUSKKart_id.AsInteger, []) then
  begin
//  OST.KSM_ID='+INTTOSTR(s_kodp)
// +' and ost.seria_id='+inttostr(KART_VIPUSKSERIA_id.AsInteger)+' and ost.Nomu_id_trans='+inttostr(KART_VIPUSKnomu_id_trans.AsInteger);

{ if dm1.Ostatki.Eof then
 begin
  dm1.Ostatki.Insert;
  dm1.OstatkiNomu_id_Trans.Asinteger:=Kart_VipuskNomu_id_Trans.asInteger;
  dm1.OstatkiKol_Trans.AsFloat:=Kart_VipuskKol_Trans.AsFloat;
  dm1.OstatkiKol_grp.AsFloat:= Kart_VipuskKol_grp.AsFloat;
  dm1.OstatkiVol_Trans.AsFloat:=Kart_VipuskVol_Trans.AsFloat;
  dm1.OstatkiVes_Trans.AsFloat:= Kart_VipuskVes_Trans.AsFloat;
  DM1.Ostatki.Post;
  DM1.Ostatki.ApplyUpdates;
 end
 else
 begin}
    dm1.Ostatki.Edit;
    dm1.OstatkiNomu_id_trans.Asinteger := Kart_VipuskNomu_id_trans.asInteger;
    dm1.OstatkiNomu_id_grp.Asinteger := Kart_VipuskNomu_id_grp.asInteger;
    dm1.OstatkiKol_Trans.AsFloat := Kart_VipuskKol_Trans.AsFloat;
    dm1.OstatkiKol_grp.AsFloat := Kart_VipuskKol_grp.AsFloat;
    dm1.OstatkiVol_Trans.AsFloat := Kart_VipuskVol_Trans.AsFloat;
    dm1.OstatkiVes_Trans.AsFloat := Kart_VipuskVes_Trans.AsFloat;
    DM1.Ostatki.Post;
    DM1.Ostatki.ApplyUpdates;
  end
  else
  begin
    MessageDlg('Сначала ввидите выпуск на данную серию!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  Kart_VipuskDoc_id.AsInteger := vDocument_id;
  Kart_VipuskKlient_id.AsInteger := struk_id;
  Kart_VipuskKOL_PRIH.AsFloat := 0.0;
  vv1 := Kart_VipuskVes_trans.asfloat;
end;

procedure TFGot_Prod.Kart_VipuskCalcFields(DataSet: TDataSet);
begin
//  Kart_VipuskRF.AsBoolean := false;
end;

procedure TFGot_Prod.Kart_VipuskKOL_GRPChange(Sender: TField);
begin
  if Kart_Vipusk.FieldByName('KOL_grp').AsFloat <> 0 then
    Kart_Vipuskves_tara.AsFloat := Kart_Vipuskves_upak.AsFloat
                                   + (Kart_VipuskKol_trans.AsFloat
                                      / Kart_Vipusk.FieldByName('KOL_grp').AsFloat
                                      * Kart_Vipusk.FieldByName('ves_grp').AsFloat)
  else
    Kart_Vipuskves_tara.AsFloat := Kart_Vipuskves_upak.AsFloat;
end;

procedure TFGot_Prod.Kart_VipuskKOL_RASHChange(Sender: TField);
begin
  if Kart_VipuskKOL_TRANS.AsInteger <> 0 then
    if ((KART_vipuskKOL_Rash.AsFloat * 1000 / KART_vipuskkOL_TRANS.AsInteger) >
        trunc(KART_vipuskKOL_Rash.AsFloat * 1000 / KART_vipuskkOL_TRANS.AsInteger)) then
      Kart_Vipuskkol_upak.asinteger := trunc(KART_vipuskKOL_Rash.AsFloat * 1000 / KART_vipuskkOL_TRANS.AsInteger) + 1
    else
      Kart_Vipuskkol_upak.asinteger := trunc(KART_vipuskKOL_Rash.AsFloat * 1000 / KART_vipuskkOL_TRANS.AsInteger)
  else
    Kart_Vipuskkol_upak.asinteger := 0;
end;

procedure TFGot_Prod.Kart_VipuskKOL_TRANSChange(Sender: TField);
begin
  if (keiId = 166) or (keiId = 170) or (keiId = 163) then
  begin
//    if not Kart_VipuskRF.AsBoolean then
//    begin
      if Kart_VipuskKOL_TRANS.AsFloat <> 0 then
        if ((KART_vipuskKOL_Rash.AsFloat / KART_vipuskkOL_TRANS.AsFloat) >
            trunc(KART_vipuskKOL_Rash.AsFloat / KART_vipuskkOL_TRANS.AsFloat)) then
          Kart_Vipuskkol_upak.asinteger := trunc(KART_vipuskKOL_Rash.AsFloat / KART_vipuskkOL_TRANS.AsFloat) + 1
        else
          Kart_Vipuskkol_upak.asinteger := trunc(KART_vipuskKOL_Rash.AsFloat / KART_vipuskkOL_TRANS.AsFloat)
      else
        Kart_Vipuskkol_upak.asinteger := 0;
//    end
//    else
//      Kart_Vipuskkol_upak.asinteger := Round(KART_vipuskKOL_Rash.AsFloat * 1000) + 1;
  end
  else
  begin
//    if not Kart_VipuskRF.AsBoolean then
//    begin
      if Kart_VipuskKOL_TRANS.AsInteger <> 0 then
        if ((KART_vipuskKOL_Rash.AsFloat * 1000 / KART_vipuskkOL_TRANS.AsInteger) >
            trunc(KART_vipuskKOL_Rash.AsFloat * 1000 / KART_vipuskkOL_TRANS.AsInteger)) then
          Kart_Vipuskkol_upak.asinteger := trunc(KART_vipuskKOL_Rash.AsFloat * 1000 / KART_vipuskkOL_TRANS.AsInteger) + 1
        else
          Kart_Vipuskkol_upak.asinteger := trunc(KART_vipuskKOL_Rash.AsFloat * 1000 / KART_vipuskkOL_TRANS.AsInteger)
      else
        Kart_Vipuskkol_upak.asinteger := 0;
//    end
//    else
//      Kart_Vipuskkol_upak.asinteger := Round(KART_vipuskKOL_Rash.AsFloat * 1000) + 1;
  end;

  if Kart_Vipusk.FieldByName('KOL_grp').AsFloat <> 0 then
    Kart_Vipuskves_tara.AsFloat := Kart_Vipuskves_upak.AsFloat
                                   + (Kart_VipuskKol_trans.AsFloat
                                      / Kart_Vipusk.FieldByName('KOL_grp').AsFloat
                                      * Kart_Vipusk.FieldByName('ves_grp').AsFloat)
  else
    Kart_Vipuskves_tara.AsFloat := Kart_Vipuskves_upak.AsFloat;
end;

procedure TFGot_Prod.Kart_VipuskAfterOpen(DataSet: TDataSet);
begin
  if (not Kart_Vipusk.Eof) then
  begin
    Kart_Vipusk.First;
    while not Kart_Vipusk.Eof do
    begin
      if (Kart_VipuskKOL_PRIH.AsVariant = NULL) then
      begin
        Kart_Vipusk.BeforePost := nil;
        Kart_Vipusk.Edit;
        Kart_VipuskKOL_PRIH.AsFloat := 0.0;
        Kart_Vipusk.Post;
        Kart_Vipusk.BeforePost := Kart_VipuskBeforePost;
      end;
      if (KolZnakovPosleZap(Kart_VipuskKOL_TRANS.AsFloat) > 6) then
      begin
        Kart_Vipusk.BeforePost := nil;
        Kart_Vipusk.Edit;
        Kart_VipuskKOL_TRANS.AsFloat := SimpleRoundTo(Kart_VipuskKOL_TRANS.AsFloat, -5);
        Kart_Vipusk.Post;
        Kart_Vipusk.BeforePost := Kart_VipuskBeforePost;
      end;
      if (KolZnakovPosleZap(Kart_VipuskKOL_GRP.AsFloat) > 6) then
      begin
        Kart_Vipusk.BeforePost := nil;
        Kart_Vipusk.Edit;
        Kart_VipuskKOL_GRP.AsFloat := SimpleRoundTo(Kart_VipuskKOL_GRP.AsFloat, -5);
        Kart_Vipusk.Post;
        Kart_Vipusk.BeforePost := Kart_VipuskBeforePost;
      end;
      Kart_Vipusk.Next;
    end;
  end;
end;

procedure TFGot_Prod.Kart_VipuskBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_KART';
  DM1.Add_KartDok.ExecProc;
  vStroka_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFGot_Prod.Kart_VipuskNewRecord(DataSet: TDataSet);
begin
  Kart_VipuskStroka_id.AsInteger := vStroka_id;
end;

procedure TFGot_Prod.Kart_VipuskUPAK_GRPChange(Sender: TField);
begin
  if Kart_VipuskUPAK_GRP.AsString = '' then
  begin
    Kart_VipuskNomu_id_grp.AsVariant := 0;
    Kart_VipuskKol_grp.AsVariant := 0;
  end;
end;

procedure TFGot_Prod.Kart_VipuskUPAK_GRPValidate(Sender: TField);
begin
{  if Kart_VipuskUPAK_GRP.AsString='' then
  begin
    Kart_VipuskNomu_id_grp.AsVariant:=nil;
    Kart_VipuskKol_grp.AsVariant:=nil;
  end;}
end;

procedure TFGot_Prod.Kart_VipuskVES_GRPChange(Sender: TField);
begin
  if Kart_Vipusk.FieldByName('KOL_grp').AsFloat <> 0 then
    Kart_Vipuskves_tara.AsFloat := Kart_Vipuskves_upak.AsFloat
                                   + (Kart_VipuskKol_trans.AsFloat
                                      / Kart_Vipusk.FieldByName('KOL_grp').AsFloat
                                      * Kart_Vipusk.FieldByName('ves_grp').AsFloat)
  else
    Kart_Vipuskves_tara.AsFloat := 0;
end;

procedure TFGot_Prod.Kart_VipuskVES_UPAKChange(Sender: TField);
begin
  if Kart_Vipusk.FieldByName('KOL_grp').AsFloat <> 0 then
    Kart_Vipuskves_tara.AsFloat := Kart_Vipuskves_upak.AsFloat
                                   + (Kart_VipuskKol_trans.AsFloat
                                      / Kart_Vipusk.FieldByName('KOL_grp').AsFloat
                                      * Kart_Vipusk.FieldByName('ves_grp').AsFloat)
  else
    Kart_Vipuskves_tara.AsFloat := Kart_Vipuskves_upak.AsFloat;
end;

procedure TFGot_Prod.Npa4Click(Sender: TObject);
begin
  FrxReport1.LoadFromFile(reportsPath + 'P_Got_ProdA4.fr3');
  FrxReport1.ShowReport;
end;

procedure TFGot_Prod.Npa5Click(Sender: TObject);
begin
  FrxReport1.LoadFromFile(reportsPath + 'Got_Prod_n.fr3');
  FrxReport1.ShowReport;
end;

procedure TFGot_Prod.SpeedButton1Click(Sender: TObject);
begin
  if FVibDocProd = nil then
    FVibDocProd := TfVibDocProd.Create(Application);
  FVibDocProd.ShowModal;
  if FVibDocProd.ModalResult > 50 then
  begin
    StartWait;
    edit2.text := FVibDocProd.docGotProdNdok.AsString;
    vDocument_id := FVibDocProd.docGotProdDoc_id.AsInteger;
    vDate_dok := FVibDocProd.docGotProdDate_Dok.AsDateTime;
    dateEdit1.OnChange := nil;
    dateEdit1.date := vDate_dok;
    dateEdit1.OnChange := dateEdit1Change;
    dm1.Document.Close;
    dm1.Document.MacroByName('usl').AsString := ' Where Document.doc_id = ' + inttostr(vdocument_id);
    dm1.Document.Active := true;
    Kart_Vipusk.Active := false;
    Kart_Vipusk.MacroByName('USL').AsString := ' Where document.doc_id = ' + inttostr(vDocument_id);
    Kart_Vipusk.Active := true;
    s_kodp := Kart_VipuskKsm_ID.AsInteger;
    s_kodProd := Kart_VipuskKod_Prod.AsString;
    dm1.Seria.Active := false;
    Dm1.Seria.ParamByName('Ksm_id').AsInteger := S_KODP;
    DM1.Seria.MacroByName('usl').AsString := ' 0=0';
    dm1.Seria.Active := true;
    EDIT1.OnChange := nil;
    edit1.text := Kart_VipuskKod_Prod.AsString;
    EDIT1.OnChange := Edit1Change;
    label19.caption := Kart_VipuskNMAT.AsString;
    s_xarkt := Kart_VipuskXARKT.AsString;
    s_gost := Kart_VipuskGOST.AsString;
    s_nmat := Kart_VipuskNMAT.AsString;
    s_neiz := Kart_VipuskNEIS.AsString;
    keiId := Kart_VipuskKEI_ID.AsInteger;
    label19.caption := s_NMAT;
    label21.caption := s_Neiz;
    label22.caption := s_GOST;
    label11.caption := s_Xarkt;
    Label6.Caption := Kart_VipuskNAM.AsString;
    DBLookupComboboxEh1.KeyValue := dm1.Documentklient_id.AsInteger;
    StopWait;
    setGridCol3DisplayFormat;
    ToolButton6.Enabled := true;
    loadUnderSigns;
  end;
end;

procedure TFGot_Prod.SpeedButton2Click(Sender: TObject);
begin
  if FindSpprod = nil then
    FindSpprod := TfindSpprod.Create(Application);
  FindSpprod.DataBaseName := dm1.BELMED;
  FindSpprod.ReadOnly := true;
  FindSpprod.Usl_Struk :='spprod.struk_id = ' + inttostr(vStruk_id);
  FindSpprod.ShowModal;
  if FindSpprod.ModalResult > 50 then
  begin
//  StartWait;
    EDIT1.OnChange := nil;
    edit1.text := FindSpprod.IBSpprodKod_Prod.Asstring;
    EDIT1.OnChange := Edit1Change;
    s_kodp := FindSpprod.ModalResult-50;
    s_gost := FindSpprod.IBSpprodGOST.AsString;
    s_xarkt := FindSpprod.IBSpprodXARKT.AsString;
    s_nmat := FindSpprod.IBSpprodNMAT.AsString;
    s_kei := FindSpprod.IBSpprodKEI_ID.VALUE;
    s_korg := FindSpprod.IBSpprodKORG.VALUE;
    s_kodProd := FindSpprod.IBSpprodKOD_PROD.AsString;
    s_namorg := FindSpprod.IBSpprodNAME_ORG.AsString;
    s_neiz := FindSpprod.IBSpprodNEIS.AsString;
    s_Sprod_id := FindSpprod.IBSpprodSprod_Id.AsInteger;
    keiId := FindSpprod.IBSpprodKEI_ID.AsInteger;
    setLabelsOnForm(s_kodProd, Edit2.Text, s_nmat, s_xarkt, s_namorg, s_neiz,
                    s_gost, FindSpprod.IBSpprodNAME_REG.AsString, s_korg,
                    DateEdit1.Date);
    if label28.caption = '0' then
      label28.caption := '';
    Prosmotr;
    setGridCol3DisplayFormat;
  end;
end;

procedure TFGot_Prod.setGridCol3DisplayFormat;
begin
  if (keiId = 166) or (keiId = 170) or (keiId = 163) then
  begin
    DBGridEh2.Columns[3].DisplayFormat := '';
    DBGridEh2.Columns[7].DisplayFormat := '';
    DBGridEh2.Columns[3].Title.Caption := 'Кол_во упаковок в коробе, кг';
  end
  else
  begin
    DBGridEh2.Columns[3].DisplayFormat := '######0';
    DBGridEh2.Columns[7].DisplayFormat := '######0';
    DBGridEh2.Columns[3].Title.Caption := 'Кол_во упаковок в коробе, шт.';
  end;
end;

procedure TFGot_Prod.loadAndInitMDNaklad;
var
  st : string;
begin
  MD_Naklad.Close;
  MD_Naklad.EmptyTable;
  MD_Naklad.Open;
  MD_Naklad.LoadFromDataSet(IBQuery1, 0, lmAppend);
  MD_Naklad.First;
  while not MD_Naklad.Eof do
  begin
    MD_Naklad.edit;
    st := '';
    if (keiId = 166) or (keiId = 170) or (keiId = 163) then
      st := AnsiUpperCase(FloatToText(MD_Naklad.FieldByName('KOL_RASH').AsFloat, 3))
    else
      st := SumToString(Round(MD_Naklad.FieldByName('KOL_RASH').AsFloat * 1000));
    MD_Naklad.FieldByName('SUM_PROP').AsString := st;
    MD_Naklad.Post;
    MD_Naklad.next;
  end;
end;

procedure TFGot_Prod.openNaklS;
begin
  MD_Nakl_s.Close;
  MD_Nakl_s.EmptyTable;
  MD_Nakl_s.Open;
  MD_Nakl_s.LoadFromDataSet(Kart_Vipusk, 0, lmAppend);
  MD_Nakl_s.First;
end;

procedure TFGot_Prod.getKeiId;
begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.KEI_ID');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD = ''' + s_kodProd + '''');
  DM1.IBQuery1.Active := True;
  keiId := DM1.IBQuery1.FieldByName('KEI_ID').AsInteger;
end;

end.
