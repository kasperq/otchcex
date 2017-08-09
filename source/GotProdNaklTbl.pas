unit GotProdNaklTbl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, Buttons, Grids, Mask, StdCtrls, DBCtrlsEh, DBLookupEh,
  ExtCtrls, Spin, DB, IBCustomDataSet, IBQuery, RxIBQuery, RxMemDS, FindDlgEh,
  SplshWnd, IBUpdateSQL, IBUpdSQLW, Menus, ImgList, ComCtrls, Tabs, frxDCtrl,
  frxClass, frxDBSet, frxExportXLS, frxExportRTF;

type
  TFGotProdNaklTbl = class(TForm)
    TopPanel: TPanel;
    Label1: TLabel;
    curMonthCombo: TComboBox;
    StrukCombo: TDBLookupComboboxEh;
    NaklGrid: TDBGridEh;
    BottomPanel: TPanel;
    Label2: TLabel;
    ttnAmountLbl: TLabel;
    ToolBarPanel: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    YearEdit: TSpinEdit;
    GotNaklMem: TRxMemoryData;
    GotNaklMemDOC_ID: TIntegerField;
    GotNaklMemNDOK: TStringField;
    GotNaklMemDATE_DOK: TDateField;
    GotNaklMemSERIA: TStringField;
    GotNaklMemSTNAME: TStringField;
    GotNaklQuery: TRxIBQuery;
    GotNaklQueryDOC_ID: TIntegerField;
    GotNaklQueryNDOK: TIBStringField;
    GotNaklQueryDATE_DOK: TDateField;
    GotNaklQueryKOD_PROD: TIBStringField;
    GotNaklQueryNMAT: TIBStringField;
    GotNaklQuerySERIA_ID: TIntegerField;
    GotNaklQuerySERIA: TIBStringField;
    GotNaklQueryKOL_RASH: TFMTBCDField;
    GotNaklQuerySTNAME: TIBStringField;
    DSGotNaklMem: TDataSource;
    GotNaklQueryNEIS: TIBStringField;
    GotNaklMemNEIS: TStringField;
    GotNaklMemSERIA_ID: TStringField;
    GotNaklMemKOL_RASH: TStringField;
    GotNaklMemKOD_PROD: TStringField;
    GotNaklMemNMAT: TStringField;
    FindDlgEh1: TFindDlgEh;
    GotNaklQueryoneDoc: TIntegerField;
    GotNaklQueryUpd: TIBUpdateSQLW;
    PopupMenu1: TPopupMenu;
    ImageList1: TImageList;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    SpinButton1: TSpinButton;
    GotNaklQuerySTRUK_ID: TSmallintField;
    GotNaklMemSTRUK_ID: TSmallintField;
    GotNaklMemHAS_PRIH: TIntegerField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDialogControls1: TfrxDialogControls;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    GotNaklQueryKART_ID: TIntegerField;
    GotNaklQuerySTROKA_ID: TIntegerField;
    GotNaklQueryHAS_PRIH: TIntegerField;

    procedure activateGotNaklQuery;
    procedure assignGotNaklQueryToGotNaklMem;
    procedure loadGotNaklTbl;
    procedure editGotNaklMemRecord(docId: integer; nDoc: string; dateDoc: TDate;
                                   kodProd: string; nMat: string; seriaId: string;
                                   seria: string; neis: string; kolRash: string;
                                   stName: string);
    procedure setNaklAmount;
    procedure loadGotProdNaklView;
    procedure cancelUpd;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure curMonthComboChange(Sender: TObject);
    procedure YearEditChange(Sender: TObject);
    procedure StrukComboChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure NaklGridDblClick(Sender: TObject);
    procedure NaklGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure GotNaklQueryCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure NaklGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NaklGridTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure NaklGridSortMarkingChanged(Sender: TObject);
    procedure monthUpDownClick(Sender: TObject; Button: TUDBtnType);
    procedure monthUpDownChangingEx(Sender: TObject; var AllowChange: Boolean;
      NewValue: Smallint; Direction: TUpDownDirection);
    procedure Scroller1Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGotProdNaklTbl: TFGotProdNaklTbl;

  prevDId, prevOneDoc : integer;
  beginDate, endDate : TDate;
  uslOrd : string;

implementation

{$R *.dfm}
uses GotProd, dm, GotProdNaklView, Find_Spprod;

procedure TFGotProdNaklTbl.cancelUpd;
begin
  GotNaklQuery.Active := false;
  GotNaklMem.Active := false;
end;

procedure TFGotProdNaklTbl.loadGotProdNaklView;
var
  day, month, year : word;
begin
  DecodeDate(FGotProd.beginDate, year, month, day);
  FGotProdNaklView.curDocId := GotNaklQueryDOC_ID.AsInteger;
  FGotProdNaklView.curMonth := month;
  FGotProdNaklView.curYear := year;
  FGotProdNaklView.curStrukId := vStruk_Id;
  FGotProdNaklView.fromVipusk := 0;
  FGotProdNaklView.ShowModal;
  loadGotNaklTbl;     
end;

procedure TFGotProdNaklTbl.monthUpDownChangingEx(Sender: TObject;
  var AllowChange: Boolean; NewValue: Smallint; Direction: TUpDownDirection);
begin
  if (Direction = updUp) and (curMonthCombo.ItemIndex <> 11) then
    curMonthCombo.ItemIndex := curMonthCombo.ItemIndex + 1;
  if (Direction = updDown) and (curMonthCombo.ItemIndex <> 0) then
    curMonthCombo.ItemIndex := curMonthCombo.ItemIndex - 1;
end;

procedure TFGotProdNaklTbl.monthUpDownClick(Sender: TObject;
  Button: TUDBtnType);
begin
//  if (Button = ComCtrls.btNext) then
//    curMonthCombo.ItemIndex := curMonthCombo.ItemIndex + 1;
//  if (Button = ComCtrls.btPrev) then
//    curMonthCombo.ItemIndex := curMonthCombo.ItemIndex - 1;
end;

procedure TFGotProdNaklTbl.NaklGridDblClick(Sender: TObject);
begin
  loadGotProdNaklView;
end;

procedure TFGotProdNaklTbl.NaklGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if GotNaklQueryoneDoc.AsInteger = 1 then
    NaklGrid.Canvas.Brush.Color := clMoneyGreen;
  NaklGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFGotProdNaklTbl.NaklGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_INSERT) then
    SpeedButton3Click(sender);
  if (key = VK_CONTROL + VK_DELETE) then
    SpeedButton1Click(sender);
  if (key = VK_RETURN) then
    SpeedButton2Click(sender);
end;

procedure TFGotProdNaklTbl.NaklGridSortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
  uslOrd := '';
  for i := 0 to NaklGrid.SortMarkedColumns.Count-1 do
  begin
    if (NaklGrid.SortMarkedColumns[i].Title.SortMarker = smUpEh) then
       uslOrd := uslOrd + '"'+ NaklGrid.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
    else
       uslOrd := uslOrd + '"'+NaklGrid.SortMarkedColumns[i].FieldName + '"'+ ', ';
  end;
  if (uslOrd <> '') then
    uslOrd := Copy(uslOrd, 1, Length(uslOrd) - 2);
  loadGotNaklTbl;
end;

procedure TFGotProdNaklTbl.NaklGridTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  if (ACol = 3) then
  begin

  end;
end;

procedure TFGotProdNaklTbl.ScrollBar1Change(Sender: TObject);
begin
  curMonthCombo.ItemIndex := curMonthCombo.ItemIndex + 1;
end;

procedure TFGotProdNaklTbl.Scroller1Click(Sender: TObject);
begin
  curMonthCombo.ItemIndex := curMonthCombo.ItemIndex + 1;
end;

procedure TFGotProdNaklTbl.setNaklAmount;
var
  amount, prevDocId : integer;
begin
  amount := 0;
  prevDocId := 0;
  GotNaklMem.First;
  while (not GotNaklMem.Eof) do
  begin
    if (GotNaklMemDOC_ID.AsInteger <> prevDocId)
        and (GotNaklMemNMAT.AsString <> '') then
      amount := amount + 1;
    prevDocId := GotNaklMemDOC_ID.AsInteger;
    GotNaklMem.Next;
  end;
  GotNaklMem.Last;
  ttnAmountLbl.Caption := IntToStr(amount);
end;

procedure TFGotProdNaklTbl.editGotNaklMemRecord(docId: Integer; nDoc: string;
                                                dateDoc: TDate; kodProd: string;
                                                nMat: string; seriaId: string;
                                                seria: string; neis: string;
                                                kolRash: string; stName: string);
begin
  GotNaklMem.Edit;
  GotNaklMemDOC_ID.AsInteger := docId;
  GotNaklMemNDOK.AsString := nDoc;
  GotNaklMemDATE_DOK.AsDateTime := dateDoc;
  GotNaklMemKOD_PROD.AsString := kodProd;
  GotNaklMemNMAT.AsString := nMat;
  GotNaklMemSERIA_ID.AsString := seriaId;
  GotNaklMemSERIA.AsString := seria;
  GotNaklMemNEIS.AsString := neis;
  GotNaklMemKOL_RASH.AsString := kolRash;
  GotNaklMemSTNAME.AsString := stName;
  GotNaklMem.Post;
end;

procedure TFGotProdNaklTbl.loadGotNaklTbl;
begin
  activateGotNaklQuery;
  assignGotNaklQueryToGotNaklMem;
  setNaklAmount;
end;

procedure TFGotProdNaklTbl.SpeedButton1Click(Sender: TObject);
begin
  FGotProdNaklView.loadSkladDocument(GotNaklQueryDOC_ID.AsInteger,
                                         FGotProd.StrukQuerySTRUK_ID.AsInteger,
                                         GotNaklQuerySTRUK_ID.AsInteger);
  if (not FGotProdNaklView.skladDocumentIsProvided) then
  begin
    if (MessageDlg('Удалить накладную ' + GotNaklQueryNDOK.AsString + '?',
                   mtWarning, [mbOk, mbCancel], 0) = mrOk) then
    begin
      Splash := ShowSplashWindow(AniBmp1,
                    'Удаление данных. Подождите, пожалуйста...', True, nil);
      try
        dm1.startReadTrans;
        dm1.startWriteTrans;
        FGotProdNaklView.curDocId := GotNaklQueryDOC_ID.AsInteger;
        FGotProdNaklView.activateNDokDateDokSkladOnChange(false);
        dm1.Sklad.Active := true;
        FGotProdNaklView.loadGotDocument;
        FGotProdNaklView.loadGotKart;
        FGotProdNaklView.loadUndersigns;
        FGotProdNaklView.getKeiId;
        FGotProdNaklView.DellAllRecsClick(Sender);
        FGotProdNaklView.GotKartQuery.ApplyUpdates;
        dm1.commitWriteTrans(true);
        FGotProdNaklView.deleteUnderSigns(FGotProdNaklView.GotDocumentDOC_ID.AsInteger);
        dm1.commitReadTrans(true);
        FGotProdNaklView.delSkladDocument;
        FGotProdNaklView.GotDocument.Delete;
        FGotProdNaklView.GotDocument.ApplyUpdates;
        dm1.commitWriteTrans(true);
        dm1.startReadTrans;
        dm1.startWriteTrans;
        FGotProdNaklView.activateNDokDateDokSkladOnChange(true);
        loadGotNaklTbl
      except
        on e : exception do
        begin
          MessageDlg('Произошла ошибка при удалении данных!' + E.Message, mtWarning, [mbOK], 0);
          DM1.IBT_WRITE.RollbackRetaining;
          DM1.IBT_Read.RollbackRetaining;
          Splash.Free;
        end;
      end;
      Splash.Free;
    end;
  end
  else
    ShowMessage('Документ проведен на складе. Для удаления необходимо отменить проведение, свяжитесь со складовщиком.');
end;

procedure TFGotProdNaklTbl.SpeedButton2Click(Sender: TObject);
begin
  loadGotProdNaklView;
end;

procedure TFGotProdNaklTbl.SpeedButton3Click(Sender: TObject);
var
  day, month, year : word;
begin
  DecodeDate(FGotProd.beginDate, year, month, day);
  FGotProdNaklView.curMonth := month;
  FGotProdNaklView.curYear := year;
  FGotProdNaklView.curStrukId := vStruk_Id;
  FGotProdNaklView.fromVipusk := 0;
  FGotProdNaklView.ShowModal;
  loadGotNaklTbl;
end;

procedure TFGotProdNaklTbl.SpeedButton5Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(reportsPath + 'got_nakls_spisok.fr3');
  frxReport1.ShowReport();
end;

procedure TFGotProdNaklTbl.SpinButton1DownClick(Sender: TObject);
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

procedure TFGotProdNaklTbl.SpinButton1UpClick(Sender: TObject);
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

procedure TFGotProdNaklTbl.StrukComboChange(Sender: TObject);
begin
  FGotProd.curStrukId := FGotProd.StrukQuerySTRUK_ID.AsInteger;
  FGotProd.setStruk(FGotProd.StrukQuerySTRUK_ID.AsInteger);
  loadGotNaklTbl;
end;

procedure TFGotProdNaklTbl.YearEditChange(Sender: TObject);
begin
  if (YearEdit.Text <> '') and (length(YearEdit.Text) = 4) then
  begin
    FGotProd.curGod := StrToInt(YearEdit.Text);
    FGotProd.setBeginEndDate(1);
    loadGotNaklTbl;
  end;
end;

procedure TFGotProdNaklTbl.assignGotNaklQueryToGotNaklMem;
//var
//  prevDocId, prevSeriaId : integer;
begin
  GotNaklMem.EmptyTable;
  GotNaklMem.Active := false;
  GotNaklMem.LoadFromDataSet(GotNaklQuery, 0, lmAppend);
  GotNaklMem.Active := true;
 
//  prevDocId := 0;
//  prevSeriaId := 0;
//  GotNaklQuery.First;
//  while not GotNaklQuery.Eof do
//  begin
//    GotNaklMem.Append;
//    if GotNaklQueryDOC_ID.AsInteger = prevDocId then
//    begin
//      if GotNaklQuerySERIA_ID.AsInteger = prevSeriaId then
//        editGotNaklMemRecord(GotNaklQueryDOC_ID.AsInteger, '',
//                             GotNaklQueryDATE_DOK.AsDateTime, GotNaklQueryKOD_PROD.AsString,
//                             GotNaklQueryNMAT.AsString, GotNaklQuerySERIA_ID.AsString,
//                             '', GotNaklQueryNEIS.AsString,
//                             GotNaklQueryKOL_RASH.AsString, GotNaklQuerySTNAME.AsString)
//      else
//        editGotNaklMemRecord(GotNaklQueryDOC_ID.AsInteger, '',
//                             GotNaklQueryDATE_DOK.AsDateTime, GotNaklQueryKOD_PROD.AsString,
//                             GotNaklQueryNMAT.AsString, GotNaklQuerySERIA_ID.AsString,
//                             GotNaklQuerySERIA.AsString, GotNaklQueryNEIS.AsString,
//                             GotNaklQueryKOL_RASH.AsString, GotNaklQuerySTNAME.AsString);
//    end
//    else
//      editGotNaklMemRecord(GotNaklQueryDOC_ID.AsInteger, GotNaklQueryNDOK.AsString,
//                             GotNaklQueryDATE_DOK.AsDateTime, GotNaklQueryKOD_PROD.AsString,
//                             GotNaklQueryNMAT.AsString, GotNaklQuerySERIA_ID.AsString,
//                             GotNaklQuerySERIA.AsString, GotNaklQueryNEIS.AsString,
//                             GotNaklQueryKOL_RASH.AsString, GotNaklQuerySTNAME.AsString);
//    prevDocId := GotNaklQueryDOC_ID.AsInteger;
//    prevSeriaId := GotNaklQuerySERIA_ID.AsInteger;
//    GotNaklQuery.Next;
//  end;
end;

procedure TFGotProdNaklTbl.curMonthComboChange(Sender: TObject);
begin
  FGotProd.curMes := curMonthCombo.ItemIndex + 1;
  FGotProd.setBeginEndDate(1);
  loadGotNaklTbl;
end;

procedure TFGotProdNaklTbl.activateGotNaklQuery;
begin
  GotNaklQuery.Active := false;
  GotNaklQuery.ParamByName('struk_id').AsInteger := FGotProd.curStrukId;
  GotNaklQuery.ParamByName('date1').AsDate := FGotProd.beginDate;
  GotNaklQuery.ParamByName('date2').AsDate := FGotProd.endDate;
  if (uslOrd = '') then
    GotNaklQuery.MacroByName('usl_ord').AsString := 'document.date_dok, document.doc_id, seria.seria '
  else
    GotNaklQuery.MacroByName('usl_ord').AsString := uslOrd;
  GotNaklQuery.Active := true;
end;

procedure TFGotProdNaklTbl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cancelUpd;
end;

procedure TFGotProdNaklTbl.FormShow(Sender: TObject);
begin
  if (UserName = 'IGOR') or (UserName = 'GRBOR') or (UserName = 'BVI') then
  begin
    StrukCombo.Visible := true;
    NaklGrid.Columns[11].Visible := true;
  end
  else
  begin
    StrukCombo.Visible := false;
    NaklGrid.Columns[11].Visible := false;
  end;
  loadGotNaklTbl; 
end;

procedure TFGotProdNaklTbl.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if (VarName = 'month') then
    Value := curMonthCombo.Text;
  if (VarName = 'year') then
    Value := YearEdit.Value;
  if (VarName = 'namceh') then
    Value := dm1.naimCeh;
end;

procedure TFGotProdNaklTbl.GotNaklQueryCalcFields(DataSet: TDataSet);
begin
  if GotNaklQueryDOC_ID.AsInteger <> prevDId then
  begin
    if prevOneDoc = 1 then
      prevOneDoc := 0
    else
      prevOneDoc := 1;
  end;
  prevDId := GotNaklQueryDOC_ID.AsInteger;
  GotNaklQueryoneDoc.AsInteger := prevOneDoc;
end;

end.
