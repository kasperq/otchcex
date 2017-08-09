unit GotProdVipusk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, Grids, Buttons, Spin, StdCtrls, Mask, DBCtrlsEh,
  DBLookupEh, ExtCtrls, IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, DB, IBQuery,
  RxIBQuery, FR_Dock, frxDCtrl, frxClass, frxDBSet;

type
  TFGotProdVipusk = class(TForm)
    TopPanel: TPanel;
    Label1: TLabel;
    curMonthCombo: TComboBox;
    StrukCombo: TDBLookupComboboxEh;
    YearEdit: TSpinEdit;
    ToolBarPanel: TPanel;
    DelSeriaBtn: TSpeedButton;
    BrowseNaklBtn: TSpeedButton;
    AddSeriaBtn: TSpeedButton;
    CreateNaklBtn: TSpeedButton;
    PrepsGrid: TDBGridEh;
    VipuskGrid: TDBGridEh;
    VipPreps: TRxIBQuery;
    DSVipPreps: TDataSource;
    VipSeria: TRxIBQuery;
    VipSeriaUpd: TIBUpdateSQLW;
    DSVipSeria: TDataSource;
    VipPrepsNDOK: TIBStringField;
    VipPrepsDOC_ID: TIntegerField;
    VipPrepsSTRUK_ID: TSmallintField;
    VipPrepsKLIENT_ID: TIntegerField;
    VipPrepsTIP_OP_ID: TSmallintField;
    VipPrepsTIP_DOK_ID: TSmallintField;
    VipPrepsNMAT: TIBStringField;
    VipPrepsKOD_PROD: TIBStringField;
    VipPrepsUpd: TIBUpdateSQLW;
    VipSeriaDOC_ID: TIntegerField;
    VipSeriaKSM_ID: TIntegerField;
    VipSeriaSTROKA_ID: TIntegerField;
    VipSeriaKART_ID: TIntegerField;
    VipSeriaNDOK: TIBStringField;
    VipSeriaDDOC_ID: TIntegerField;
    VipSeriaSERIA: TIBStringField;
    VipSeriaSERIA_ID: TIntegerField;
    VipSeriaDATE_VIPUSK: TDateField;
    VipSeriaUPAK_TRANS: TIBStringField;
    VipSeriaNOMU_ID_TRANS: TSmallintField;
    VipSeriaVES_UPAK: TIBBCDField;
    VipSeriaVES_TRANS: TIBBCDField;
    VipSeriaKOL_TRANS: TFloatField;
    VipSeriaVIB: TIntegerField;
    VipPrepsNEIS: TIBStringField;
    VipSeriaTIP_OP_ID: TSmallintField;
    VipSeriaTIP_DOK_ID: TSmallintField;
    VipSeriaKEI_ID: TSmallintField;
    frTBSeparator1: TfrTBSeparator;
    AddPrepBtn: TSpeedButton;
    SaveBtn: TSpeedButton;
    VipPrepsDATE_DOK: TDateField;
    VipPrepsDATE_OP: TDateField;
    DelPrepBtn: TSpeedButton;
    VipSeriaKOL_PRIH_EDIZ: TFloatField;
    VipSeriaKOL_RASH_EDIZ: TFloatField;
    VipSeriaVOL_TRANS: TFMTBCDField;
    VipPrepsKEI_ID: TSmallintField;
    VipSeriaCOMMENT: TIBStringField;
    VipPrepsKOL_PRIH: TFMTBCDField;
    printBtn: TSpeedButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDialogControls1: TfrxDialogControls;
    SpinButton1: TSpinButton;

    procedure loadVipuskTbls;
    procedure loadPreps;
    procedure loadKart;
    function isKsmIdHere(ksmId : integer) : boolean;
    procedure cancelUpd;
    procedure assignVipSeria2GotProdNaklView(ksmId, seriaId, kartId, klientId,
                                             nomuIdTrans, docId: integer; seria,
                                             upakTrans, volTrans: string;
                                             vesUpak, vesTara, kolRash: Double;
                                             nMat, kodProd: string; dateVip : TDate;
                                             keiId : integer; neis : string; comment : string);


    procedure curMonthComboChange(Sender: TObject);
    procedure YearEditChange(Sender: TObject);
    procedure StrukComboChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VipPrepsAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddPrepBtnClick(Sender: TObject);
    procedure VipPrepsBeforeInsert(DataSet: TDataSet);
    procedure VipPrepsNewRecord(DataSet: TDataSet);
    procedure DelPrepBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure VipuskGridColumns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure VipuskGridColumns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure VipSeriaBeforeInsert(DataSet: TDataSet);
    procedure VipSeriaNewRecord(DataSet: TDataSet);
    procedure VipSeriaBeforePost(DataSet: TDataSet);
    procedure VipSeriaBeforeDelete(DataSet: TDataSet);
    procedure AddSeriaBtnClick(Sender: TObject);
    procedure DelSeriaBtnClick(Sender: TObject);
    procedure VipPrepsAfterInsert(DataSet: TDataSet);
    procedure BrowseNaklBtnClick(Sender: TObject);
    procedure CreateNaklBtnClick(Sender: TObject);
    procedure VipuskGridDblClick(Sender: TObject);
    procedure printBtnClick(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);

  private
    var
      lastPrepKsmId : integer;
      newPrep : integer;

  public
    { Public declarations }
  end;

var
  FGotProdVipusk: TFGotProdVipusk;



implementation

{$R *.dfm}

uses GotProd, dm, Find_Spprod, Ser, UPAK, GotProdNaklView;

procedure TFGotProdVipusk.assignVipSeria2GotProdNaklView(ksmId, seriaId, kartId,
                                                         klientId, nomuIdTrans,
                                                         docId: integer; seria,
                                                         upakTrans, volTrans: string;
                                                         vesUpak, vesTara, kolRash: Double;
                                                         nMat, kodProd: string;
                                                         dateVip : TDate; keiId : integer;
                                                         neis : string; comment : string);
begin
  FGotProdNaklView.GotKartQuery.Edit;
  FGotProdNaklView.GotKartQueryNMAT.AsString := nMat;
  FGotProdNaklView.GotKartQueryKOD_PROD.AsString := kodProd;
  FGotProdNaklView.GotKartQueryDATE_VIPUSK.AsDateTime := dateVip;
  FGotProdNaklView.GotKartQueryNEIS.AsString := neis;
  FGotProdNaklView.GotKartQueryKEI_ID.AsInteger := keiId;
  FGotProdNaklView.GotKartQueryKSM_ID.AsInteger := ksmId;
  FGotProdNaklView.GotKartQuerySeria_id.AsInteger := seriaId;
  FGotProdNaklView.GotKartQuerykart_id.AsInteger := kartId;
  FGotProdNaklView.GotKartQueryNomu_id_trans.AsInteger := nomuIdTrans;
  FGotProdNaklView.GotKartQueryKlient_id.AsInteger := klientId;
//  FGotProdNaklView.GotKartQuerydoc_id.AsInteger := docId;
  FGotProdNaklView.GotKartQueryKEI_ID.AsInteger := keiId;
  FGotProdNaklView.GotKartQuerySeria.AsString := seria;
  FGotProdNaklView.GotKartQueryUPAK_Trans.AsString := upakTrans;
  FGotProdNaklView.GotKartQueryVOL_TRANS.AsString := volTrans;
  FGotProdNaklView.GotKartQueryVes_upak.AsFloat := vesUpak;
  FGotProdNaklView.GotKartQueryVes_tara.AsFloat := vesTara;
  FGotProdNaklView.GotKartQuerykol_rash_EDIZ.AsString := FloatToStr(kolRash);
  FGotProdNaklView.GotKartQueryCOMMENT.AsString := comment;
  FGotProdNaklView.GotKartQuery.BeforePost := nil;
  FGotProdNaklView.GotKartQuery.Post;
  FGotProdNaklView.GotKartQuery.BeforePost := FGotProdNaklView.GotKartQueryBeforePost;
end;

procedure TFGotProdVipusk.cancelUpd;
begin
  VipSeria.CancelUpdates;
  VipPreps.CancelUpdates;
  dm1.commitWriteTrans(true);
  if VipSeria.Active then
    VipSeria.Active := false;
  if VipPreps.Active then
    VipPreps.Active := false;
  StrukCombo.OnChange := nil;
  dm1.IBT_Read.RollbackRetaining;
  dm1.IBT_Write.RollbackRetaining;
end;

procedure TFGotProdVipusk.CreateNaklBtnClick(Sender: TObject);
var
  day, month, year : word;
begin
  if (VipSeria.Locate('vib', 1, [])) then
  begin
    DecodeDate(FGotProd.beginDate, year, month, day);
    FGotProdNaklView.curMonth := month;
    FGotProdNaklView.curYear := year;
    FGotProdNaklView.curStrukId := vStruk_Id;
    FGotProdNaklView.curDocId := VipSeriaDDOC_ID.AsInteger;
    FGotProdNaklView.fromVipusk := 1;
    FGotProdNaklView.ShowModal;
  end;
end;

function TFGotProdVipusk.isKsmIdHere(ksmId: Integer) : boolean;
var
  isHere : boolean;
begin
  isHere := false;
  VipPreps.First;
  while not VipPreps.Eof do
  begin
    if VipPrepsKLIENT_ID.AsInteger = ksmId then
    begin
      isHere := true;
      break;
    end;
    VipPreps.Next;
  end;
  result := isHere;
end;

procedure TFGotProdVipusk.AddSeriaBtnClick(Sender: TObject);
begin
  VipSeria.Append;
//  VipuskGrid.Enabled := true;
  DelSeriaBtn.Enabled := true;
  BrowseNaklBtn.Enabled := true;
  CreateNaklBtn.Enabled := true;
end;

procedure TFGotProdVipusk.BrowseNaklBtnClick(Sender: TObject);
var
  day, month, year : word;
begin
  DecodeDate(FGotProd.beginDate, year, month, day);
  FGotProdNaklView.curMonth := month;
  FGotProdNaklView.curYear := year;
  FGotProdNaklView.curStrukId := vStruk_Id;
  FGotProdNaklView.curDocId := VipSeriaDDOC_ID.AsInteger;
  FGotProdNaklView.fromVipusk := 0;
  FGotProdNaklView.ShowModal;
  loadVipuskTbls;
end;

procedure TFGotProdVipusk.curMonthComboChange(Sender: TObject);
begin
  FGotProd.curMes := curMonthCombo.ItemIndex + 1;
  FGotProd.setBeginEndDate(2);
  loadVipuskTbls;
end;

procedure TFGotProdVipusk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cancelUpd;
end;

procedure TFGotProdVipusk.FormShow(Sender: TObject);
begin
  if (UserName = 'IGOR') then
    StrukCombo.Visible := true
  else
    StrukCombo.Visible := false;
  loadVipuskTbls;
  newPrep := 0;
end;

procedure TFGotProdVipusk.loadPreps;
begin
  VipPreps.Active := false;
  VipPreps.ParamByName('struk_id').AsInteger := FGotProd.curStrukId;
  VipPreps.ParamByName('date1').AsDate := FGotProd.beginDate;
  VipPreps.ParamByName('date2').AsDate := FGotProd.endDate;
  VipPreps.Active := true;
  if (lastPrepKsmId <> 0) then
    VipPreps.Locate('klient_id', lastPrepKsmId, []);
end;

procedure TFGotProdVipusk.loadKart;
begin
  VipSeria.Active := false;
  VipSeria.ParamByName('struk_id').AsInteger := FGotProd.curStrukId;
  VipSeria.ParamByName('date1').AsDate := FGotProd.beginDate;
  VipSeria.ParamByName('date2').AsDate := FGotProd.endDate;
  VipSeria.ParamByName('doc_id').AsInteger := VipPrepsDOC_ID.AsInteger;
  VipSeria.Active := true;
  if (VipSeria.RecordCount = 0) then
  begin
//    VipuskGrid.Enabled := false;
    DelSeriaBtn.Enabled := false;
    BrowseNaklBtn.Enabled := false;
    CreateNaklBtn.Enabled := false;
  end
  else
  begin
//    VipuskGrid.Enabled := true;
    DelSeriaBtn.Enabled := true;
    BrowseNaklBtn.Enabled := true;
    CreateNaklBtn.Enabled := true;
  end;
end;

procedure TFGotProdVipusk.loadVipuskTbls;
begin
  loadPreps;
end;

procedure TFGotProdVipusk.printBtnClick(Sender: TObject);
begin
  frxReport1.Script.Variables['cex'] := trim(StrukCombo.Text);
  frxReport1.Script.Variables['month'] := curMonthCombo.Text;
  frxReport1.Script.Variables['year'] := YearEdit.Text;
  FrxReport1.LoadFromFile(reportsPath + 'got_prod_vipusk.fr3');
  FrxReport1.ShowReport(true);
end;

procedure TFGotProdVipusk.DelPrepBtnClick(Sender: TObject);
begin
  if (VipSeria.RecordCount = 0) then
    VipPreps.Delete
  else
    MessageDlg('По препарату есть выпуск, сначала удалите выпуск!', mtWarning, [mbOK], 0);
end;

procedure TFGotProdVipusk.DelSeriaBtnClick(Sender: TObject);
begin
  if (not VipSeria.Eof) then
  begin
    VipSeria.Delete;
//    VipSeria.ApplyUpdates;
  end;

end;

procedure TFGotProdVipusk.AddPrepBtnClick(Sender: TObject);
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

    if (not isKsmIdHere(s_kodp)) then
      VipPreps.Insert
    else
      MessageDlg('Такой препарат уже есть!', mtWarning, [mbOK], 0);
  end;
end;

procedure TFGotProdVipusk.SaveBtnClick(Sender: TObject);
begin
  try
    lastPrepKsmId := VipPrepsKLIENT_ID.AsInteger;
    if (VipSeria.Modified)
        or (VipSeria.State = dsEdit)
        or (VipSeria.State = dsInsert) then
      VipSeria.Post;
    VipSeria.ApplyUpdates;
    dm1.commitWriteTrans(true);
    dm1.commitReadTrans(true);

    if (VipPreps.State = dsEdit)
      or (VipPreps.Modified)
      or (VipPreps.State = dsInsert) then
      VipPreps.Post;
    VipPreps.ApplyUpdates;
    dm1.commitWriteTrans(true);
    dm1.commitReadTrans(true);
  except
    On E: Exception do
    begin
      MessageDlg('Произошла ошибка при записи данных!' + E.Message, mtWarning, [mbOK], 0);
      if not dm1.IBT_WRITE.Active then
        dm1.IBT_WRITE.StartTransaction;
      DM1.IBT_WRITE.RollbackRetaining;
    end;
  end;
  loadVipuskTbls;

end;

procedure TFGotProdVipusk.SpinButton1DownClick(Sender: TObject);
begin
  if (curMonthCombo.ItemIndex > 0) then
  begin
    curMonthCombo.ItemIndex := curMonthCombo.ItemIndex - 1;
    curMonthComboChange(sender);
  end
  else
  begin
    curMonthCombo.ItemIndex := 11;
    curMonthComboChange(sender);
  end;
end;

procedure TFGotProdVipusk.SpinButton1UpClick(Sender: TObject);
begin
  if (curMonthCombo.ItemIndex < 11) then
  begin
    curMonthCombo.ItemIndex := curMonthCombo.ItemIndex + 1;
    curMonthComboChange(sender);
  end
  else
  begin
    curMonthCombo.ItemIndex := 0;
    curMonthComboChange(sender);
  end;
end;

procedure TFGotProdVipusk.StrukComboChange(Sender: TObject);
begin
  FGotProd.curStrukId := FGotProd.StrukQuerySTRUK_ID.AsInteger;
  FGotProd.setStruk(FGotProd.StrukQuerySTRUK_ID.AsInteger);
  loadVipuskTbls;
end;

procedure TFGotProdVipusk.VipPrepsAfterInsert(DataSet: TDataSet);
begin
  VipPrepsKLIENT_ID.AsInteger := s_kodp;
  VipPrepsNMAT.AsString := s_nmat;
  VipPrepsNEIS.AsString := s_neiz;
  VipPrepsKEI_ID.AsInteger := s_kei;
  VipPrepsKOL_PRIH.AsFloat := 0.0;
  VipPrepsKOD_PROD.AsString := s_kodProd;
  VipPreps.ApplyUpdates;
end;

procedure TFGotProdVipusk.VipPrepsAfterScroll(DataSet: TDataSet);
begin
  loadKart;
end;

procedure TFGotProdVipusk.VipPrepsBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_DOCUMENT';
  DM1.Add_KartDok.ExecProc;
  vDocument_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFGotProdVipusk.VipPrepsNewRecord(DataSet: TDataSet);
var
  curYear, curMonth, curDay : word;
begin
  VipPreps.FieldByName('Doc_Id').AsInteger := vDocument_Id;
  VipPreps.FieldByName('Tip_Op_Id').AsInteger := 36;
  VipPreps.FieldByName('Struk_Id').AsInteger := vStruk_Id;
  VipPreps.FieldByName('Tip_Dok_Id').AsInteger := 90;
  DecodeDate(FGotProd.beginDate, curYear, curMonth, curDay);
  VipPreps.FieldByName('NDok').AsString := 'Вып_' + inttostr(curMonth) + '_' + inttostr(curYear);
  VipPreps.FieldByName('Date_Dok').AsDateTime := FGotProd.beginDate;
  VipPreps.FieldByName('Date_Op').AsDateTime := FGotProd.beginDate;

  newPrep := 1;
end;

procedure TFGotProdVipusk.VipSeriaBeforeDelete(DataSet: TDataSet);
begin
  if (VipSeriaNdok.AsString <> '') and (UserName <> 'IGOR') then
  begin
    MessageDlg('Невозможно удалить серию, т.к.на основе ее имеются '
               + 'накладные на сдачу продукции на склад. Сначала удалите '
               + 'из накладных!!', mtWarning, [mbOK], 0);
    abort;
  end;
end;

procedure TFGotProdVipusk.VipSeriaBeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_KART';
  DM1.Add_KartDok.ExecProc;
  vStroka_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFGotProdVipusk.VipSeriaBeforePost(DataSet: TDataSet);
begin
  if (VipSeriaDDOC_ID.AsInteger = 0) then
  begin
    If VipSeriaNomu_id_trans.AsInteger = 0 then
    begin
      MessageDlg('Введите вид тары!', mtWarning, [mbOK], 0);
      Abort;
    end;
    If datetostr(VipSeriaDate_vipusk.AsDateTime) = '' then
    begin
      MessageDlg('Введите дату выпуска!', mtWarning, [mbOK], 0);
      Abort;
    end;
    If VipSeriaKOL_PRIH_EDIZ.asfloat = 0 then
    begin
      MessageDlg('Введите количество выпуска!', mtWarning, [mbOK], 0);
      Abort;
    end;
  end;

  FGotProd.PostSeria(VipSeriaSERIA.AsString, VipSeriaKSM_ID.AsInteger,
                      VipSeriaDATE_VIPUSK.AsDateTime, VipSeriaKOL_PRIH_EDIZ.AsFloat,
                      VipSeriaCOMMENT.AsString);
  VipSeriaSeria_id.AsInteger := vSeria_id;

  FGotProd.PostOstatki(VipSeriaKSM_ID.AsInteger, VipSeriaSERIA_ID.AsInteger,
                       VipSeriaNOMU_ID_TRANS.AsInteger, VipSeriaKART_ID.AsInteger,
                       VipSeriaKEI_ID.AsInteger, VipPrepsSTRUK_ID.AsInteger,
                       FGotProd.beginDate, VipSeriaVOL_TRANS.AsString,
                       VipSeriaKOL_TRANS.AsFloat, -666.666,
                       VipSeriaVES_TRANS.AsFloat, -666);
  VipSeriaKART_ID.AsInteger := FGotProd.newKartId;
end;

procedure TFGotProdVipusk.VipSeriaNewRecord(DataSet: TDataSet);
begin
  VipSeriaStroka_id.AsInteger := vStroka_id;
  VipSeriaVib.AsInteger := 0;

  VipSeriaDoc_id.AsInteger := VipPrepsDOC_ID.AsInteger;
  VipSeriaKSM_ID.AsInteger := VipPrepsKLIENT_ID.AsInteger;
  VipSeriaKEI_ID.AsInteger := VipPrepsKEI_ID.AsInteger;
  VipSeriaTIP_OP_ID.AsInteger := 36;
  VipSeriaTIP_DOK_ID.AsInteger := 90;
  VipSeriaKOL_PRIH_EDIZ.AsFloat := 0.0;
end;

procedure TFGotProdVipusk.VipuskGridColumns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  dm1.Seria.Active := false;
  dm1.Seria.ParamByName('Ksm_id').AsInteger := VipPrepsKLIENT_ID.AsInteger;
  dm1.Seria.Active := true;

  if (dm1.Seria.RecordCount > 0) then
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
      VipSeria.Edit;
      VipSeriaSeria_id.AsInteger := FSer.ModalResult - 50;
      VipSeriaSeria.AsString := DM1.SeriaSeria.AsString;
      VipSeriaKol_PRIH_EDIZ.AsFloat := dm1.SeriaKol_seria.AsFloat;
      VipSeriaDATE_VIPUSK.AsDateTime := dm1.SeriaDATE_VIPUSK.AsDateTime;
      VipSeriaCOMMENT.AsString := dm1.SeriaCOMMENT.AsString;
    end;
  end
  else
  begin
    MessageDlg('Нет серии заданного препарата!', mtWarning, [mbOK], 0);
    vseria_id := 0;
  end;
  dm1.Seria.Active := false;
end;

procedure TFGotProdVipusk.VipuskGridColumns3EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if FUPAK = nil then
    FUPAK := TFUPAK.Create(Application);
  FUPAK.Position := poDesigned;
  FUPAK.Top := Mouse.CursorPos.Y;
  FUPAK.Left := Mouse.CursorPos.X - 200;
  FUPAK.ShowModal;
  if FUPAK.ModalResult > 50 then
  begin
    VipSeria.Edit;
    VipSeriaNOMU_id_Trans.AsInteger := FUPAK.ModalResult - 50;
    VipSeriaUPAK_Trans.AsString := DM1.UpakName_upak.AsString;
    VipSeriaVOL_TRANS.AsString := FUPAK.DBGridEH1.DataSource.DataSet.FieldByName('VOL_UP').AsString;
    VipSeriaVes_upak.AsFloat := FUPAK.DBGridEH1.DataSource.DataSet.FieldByName('Ves_UPak').AsFloat;
  end;
end;

procedure TFGotProdVipusk.VipuskGridDblClick(Sender: TObject);
begin
  BrowseNaklBtnClick(Sender);
end;

procedure TFGotProdVipusk.YearEditChange(Sender: TObject);
begin
  if (YearEdit.Text <> '') and (length(YearEdit.Text) = 4) then
  begin
    FGotProd.curGod := StrToInt(YearEdit.Text);
    FGotProd.setBeginEndDate(2);
    loadVipuskTbls;
  end;
end;

end.
