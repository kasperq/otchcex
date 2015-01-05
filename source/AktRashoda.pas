unit AktRashoda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, frxDCtrl, DB, IBCustomDataSet, IBQuery, RxIBQuery,
  Grids, DBGridEh, StdCtrls, RxMemDS, Buttons, RxStrUtils, VCLUtils, Menus,
  RxMenus, IBDataBase, ToolWin, ComCtrls, ImgList, ExtCtrls, SplshWnd,
  IBUpdateSQL, IBUpdSQLW, RXCtrls, Math;

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
    DBGridEh2: TDBGridEh;
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
                              nMatKsm, nEIs, stname, nMat, namRaz : string;
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
                                     nMatKsm, nEIs, stName, nMat, namRaz : string;
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
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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

  private
//    procedure formCenaQ(allMem : boolean);
//    procedure distributeCena(allMem : boolean);
//    procedure setCurNormiMemDatCena;
//    procedure editNormiMemDatCena(cena : double);

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

implementation

{$R *.dfm}

uses dm, Find_Spprod, Find_Matrop, f_lookupEis, CopyFiles, f_lookupRaz, OstSyr;

//���������� ���� (pair implementation)
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

//���������� ������ (logic implementation)
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
    MessageDlg('����� ����������� ������� ����� ���������! ', mtWarning, [mbOK], 0)
  else
  begin
    Splash := ShowSplashWindow(AniBmp1,
              '���������� ������. ���������, ����������...', True, nil);
    NormiMemDat.DisableControls;
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
    Splash.Free;
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
    MessageDlg('������ ������� �����, ������� ��������� � ������! '
                + #13
                + '����� ������ �������� ����������� ������', mtWarning, [mbOK], 0)
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
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
    DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM');
    DM1.IBQuery1.SQL.Add(' FROM SPPROD');
    DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
    DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
    DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like ' + '''' + skod + ''''
                          + ' AND SPPROD.STRUK_ID=' + INTTOSTR(vStruk_Id));
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
      Label19.Caption := DM1.IBQuery1.FieldByName('kod_PROD').Asstring
                          + DM1.IBQuery1.FieldByName('nmat').AsString
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
    if (edit1.text <> '') and (not dm1.IBQuery1.Eof)  then
    begin
      EDIT1.OnChange := nil;
      edit1.text := DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
      EDIT1.OnChange := Edit1Change;
      s_kodp := DM1.IBQuery1.FieldByName('KSM_ID').value;
      s_nmat := DM1.IBQuery1.FieldByName('NMAT').AsString;
      if DM1.IBQuery1.FieldByName('ACTIVP').Asinteger = 1 then
        s_lab11 := '�����������'
      else
        s_lab11 := '�������������';
      label19.caption := s_NMAT;
      usl_n := '';
      reloadNorms(0);
      label11.caption := s_lab11;
      IF NormiMemDat.IsEmpty THEN
      begin
        label11.caption := '��� ����';
        label11.Font.Color := clRed;
      end
      else
      begin
        if s_lab11 = '�����������' then
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

//  NormVQuery.Active := False;
  closeQueries();
end;

procedure TFAktRashoda.FormShow(Sender: TObject);
var
  nmat : string;
begin
  firstLoad := 0;
  descend := false;
  initTIFPairArr;

  yearEdit.Text := IntToStr(GOD_conf);
  setMonthCombo(MES_conf);

  Label11.Caption := '';
  Label19.Caption := '';

  if findCurDoc(vStruk_Id, MES_conf, GOD_conf, 144, '') then
  begin
    nmat := '����������� ���������� �� ������������������ �������';
    s_kodp := findKodInFindSpprod(nmat);
    vTip_Doc_Id := 144;
    reloadNorms(0);
    label19.caption := nmat; 
  end
  else
  begin
    if findCurDoc(vStruk_Id, MES_conf, GOD_conf, 145, '') then
    begin
      nmat := '���������� � ������������ ������������';
      s_kodp := findKodInFindSpprod(nmat);
      vTip_Doc_Id := 145;
      reloadNorms(0);
      label19.caption := nmat;
    end
    else
      if showViborPrep() then
      begin
        reloadNorms(0);
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
    NormVQuery.Active := False;
    NormVQuery.ParamByName('GOD').AsInteger := StrToInt(yearEdit.Text);
    NormVQuery.ParamByName('MES').AsInteger := monthCombo.ItemIndex + 1;
    NormVQuery.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
    NormVQuery.ParamByName('KSM_ID').AsInteger := s_kodp;
    NormVQuery.Active := True;

    result := true;
  except
  on E: Exception do
    result := false;
  end;
end;

function TFAktRashoda.loadNormMemDat() : boolean;
begin
  try
    NormiMemDat.EmptyTable;
    NormiMemDat.LoadFromDataSet(NormVQuery,0,lmAppend);
    NormiMemDat.Active := True;
    NormiMemDat.First;
    result := true;
  except
  on e : exception do
    result := false;
  end;
end;

function TFAktRashoda.loadKart(strukId, docId : integer) : boolean;
begin
  try
    DM1.Kart.Active := false;
    DM1.Kart.MacroByName('USL').AsString := ' where kart.doc_id = '
                                            + IntToStr(docId);
  //                                          + ' and kart.struk_id = '
  //                                          + IntToStr(strukId);
    DM1.Kart.Active := true;

    result := true;
  except
  on e : exception do
    result := false;
  end;
end;

function TFAktRashoda.saveMemToKart() : boolean;
begin
  try
    if (DM1.Kart.RecordCount > 0) then
      // ������� ������� �� ����� ���, ���� ���� � ������ �������
      deleteKart();
      // ����� ��������� ��� ��������� �� ������ ������� � ���� � ���������
    saveAllMem2Kart();
    result := true;
  except
  on e : exception do
    result := false;
  end;
end;

function TFAktRashoda.deleteKart() : boolean;
begin
  DM1.Kart.First;
  while (not DM1.Kart.Eof) do
  begin
    if (not NormiMemDat.Locate('ksm_id', dm1.KartKSM_ID.AsInteger, [])) then
    begin
      DM1.Kart.Delete;
      DM1.Kart.ApplyUpdates;
      DM1.IBT_Write.CommitRetaining;
    end
    else
      DM1.Kart.Next;
  end;
  result := true;
end;

function TFAktRashoda.saveMemRec2Kart() : boolean;
begin
  try
    DM1.Kart.Insert;
    vKart_Id := 0;
    DM1.KartStroka_Id.AsInteger := vStroka_Id;
    DM1.KartStruk_Id.AsInteger := vStruk_Id;
    DM1.KartKart_Id.AsInteger := vKart_Id;
    DM1.KartDoc_Id.AsInteger := DM1.DocumentDOC_ID.AsInteger;
    DM1.Karttip_op_id.AsInteger := DM1.DocumentTIP_OP_ID.AsInteger;
    DM1.Karttip_dok_id.AsInteger := DM1.DocumentTIP_DOK_ID.AsInteger;
    DM1.Kartkol_rash_ediz.AsFloat := NormiMemDatFACTRASHOD.AsFloat;
    DM1.KartKSM_ID.AsInteger := NormiMemDatKSM_ID.AsInteger;
    DM1.KartRAZDEL_ID.AsInteger := NormiMemDatRAZDEL_ID.AsInteger;
    DM1.KartKEI_ID.AsInteger := NormiMemDatKEI_ID.AsInteger;
    DM1.KartKRAZ.AsInteger := NormiMemDatKRAZ.AsInteger;
//    dm1.KartCENA.AsFloat := NormiMemDatCENA.AsFloat;
//    dm1.KartCENA_VP.AsFloat := NormiMemDatCENA.AsFloat;
    VDOCUMENT_ID := DM1.DocumentDOC_ID.AsInteger;
    DM1.Kart.Post;

    result := true;
  except
  on e: exception do
  begin
    result := false;
    MessageDlg('��������� ������ ��� ������ ������! '+ #13 + E.Message, mtWarning, [mbOK], 0);
  end;
  end;
end;

function TFAktRashoda.saveAllMem2Kart() : boolean;
begin
  try
    NormiMemDat.First;
    if (not DM1.Kart.Active) then
      dm1.Kart.Open;
    while (not NormiMemDat.Eof) do
    begin
      if (dm1.Kart.Locate('ksm_id', NormiMemDatKSM_ID.AsInteger, [])) then
      begin
        if (NormiMemDatFACTRASHOD.AsFloat = 0) then
        begin
          dm1.Kart.Delete;
          dm1.Kart.ApplyUpdates;
          dm1.commitWriteTrans(true);                                                                                                                      //////
        end
        else
        begin
          if (DM1.KartKOL_RASH_EDIZ.AsFloat <> NormiMemDatFACTRASHOD.AsFloat)
             or (DM1.KartRAZDEL_ID.AsInteger <> NormiMemDatRAZDEL_ID.AsInteger)
             or (Dm1.KartKEI_IDN.AsInteger <> NormiMemDatKEI_ID.AsInteger)
             {or (dm1.KartCENA.AsFloat <> NormiMemDatCENA.AsFloat)} then
          begin
            DM1.Kart.Edit;
            DM1.KartKOL_RASH_EDIZ.AsFloat := NormiMemDatFACTRASHOD.AsFloat;
            DM1.KartRAZDEL_ID.AsInteger := NormiMemDatRAZDEL_ID.AsInteger;
            DM1.KartKEI_ID.AsInteger := NormiMemDatKEI_ID.AsInteger;
//            dm1.KartCENA.AsFloat := NormiMemDatCENA.AsFloat;
//            dm1.KartCENA_VP.AsFloat := NormiMemDatCENA.AsFloat;
            VDOCUMENT_ID := DM1.DocumentDOC_ID.AsInteger;
            vKart_id := DM1.KartKART_ID.AsInteger;
            DM1.Kart.Post;
          end;
        end;
      end
      else
        if (NormiMemDatFACTRASHOD.AsFloat <> 0) then
          saveMemRec2Kart();
      NormiMemDat.Next;
    end;
    saveKart2DB();
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    add2Prixod();//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    result := true;
  except
    on e: exception do
    begin
      MessageDlg('��������� ������! ' + #13 + E.Message, mtWarning, [mbOK], 0);
      result := false;
    end;
  end;
end;

procedure TFAktRashoda.N1Click(Sender: TObject);
begin
  askToSaveModified(Sender);

  frxReport1.LoadFromFile(reportsPath + 'AktRashoda#2.fr3');
  loadNormiReport();
end;

procedure TFAktRashoda.N2Click(Sender: TObject);
begin
  askToSaveModified(Sender);
  frxReport1.LoadFromFile(reportsPath + 'AktRashoda#2materials.fr3');
  loadNormiReport();
end;

function TFAktRashoda.loadNormiReport() : boolean;
begin
  try
    frxReport1.Script.Variables['year'] := yearEdit.Text;
    frxReport1.Script.Variables['month'] := dm1.GetStrMes(monthCombo.ItemIndex + 1);
    if NormVQuerySTNAME.AsString <> '������-������.���' then
      frxReport1.Script.Variables['ceh'] := IntToStr(GetCehNum(NormVQuerySTNAME.AsString))
    else
      frxReport1.Script.Variables['ceh'] := '������.-������. ���';
    frxReport1.Script.Variables['nDoc'] := nDocEdit.Text;
    DocTipParam.First;
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
    end;
    frxReport1.ShowReport(true);
    result := true;
  except
    On e : exception do
    result := false;
  end;
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
  try
    monthCombo.ItemIndex := month - 1;
    result := true;
  except
    on e : exception do
    result := false;
  end;
end;

procedure TFAktRashoda.SpeedButton1Click(Sender: TObject);
begin
  PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
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
      namRaz := '��������������� �����';
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
        namRaz := '��������������� �����';
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
  if Key = #13 then
    reloadNorms(0);
end;

function TFAktRashoda.findCurDoc(strukId, month, year, tipDokId : integer; materChar : string) : boolean;
begin
  DM1.Document.Active := false;
  DM1.Document.MacroByName('USL').AsString := ' where document.struk_id = ' +
                                              IntToStr(strukId) + ' and ' +
                                              'document.tip_dok_id = ' +
                                              IntToStr(tipDokId) +
                                              ' and document.date_dok = ''01.' +
                                              IntToStr(month) +
                                              '.' +
                                              IntToStr(year) +
                                              '''';
  DM1.Document.Active := true;

  if DM1.Document.Eof then
    result := false
  else
    result := true;
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
      s_lab11 := '�����������'
    else
      s_lab11 := '�������������';
    label19.caption := s_NMAT;
    usl_n := '';
    label11.caption := s_lab11;
//    IF NormiMemDat.eof THEN
//    begin
//      label11.caption := '��� ����';
//      label11.Font.Color := clRed;
//    end
//    else
//    begin
      if s_lab11 = '�����������' then
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
//  if materChar = '�' then
//    vTip_Doc_Id := 145;
  vNdoc := nDocEdit.Text;
  vDate_dok := StrToDate('01.' + IntToStr(month) + '.' + IntToStr(year));
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
                       0,
                       NormiMemDatFACTRASHOD.AsFloat,
                       NormiMemDatOST_STRUK_ID.AsInteger,
                       0);
//        formCenaQ(false);
//        cenaQ.Open;
//        distributeCena(false);
      end
      else
        ShowMessage('�� ������� ����� �����');
      tempQuery.Active := false;
    end;
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
    DM1.Document.Post;
    DM1.Document.ApplyUpdates;
    dm1.startReadTrans;
    dm1.startWriteTrans;
    DM1.IBT_WRITE.CommitRetaining;
    DM1.IBT_READ.CommitRetaining;
    result := true;
  except
  on e: exception do
  begin
    result := false;
    MessageDlg('��������� ������ ��� ������ ������! '+ #13 + E.Message, mtWarning, [mbOK], 0);
  end;
  end;
end;

function TFAktRashoda.findKodInFindSpprod(nmat : string) : integer;
begin
  FindSpprod.IBSpprod.Database := dm1.BELMED;
  FindSpprod.IBSpprod.Active := False;
  FindSpprod.IBSpprod.MacroByName('Usl_Spvis').AsString := ' spprod.nmat '
                                                        + '= ''' + nmat + ''' ';
  FindSpprod.IBSpprod.MacroByName('Usl_Struk').AsString := ' spprod.struk_id ' +
                                                            ' = ' +
                                                            IntToStr(vStruk_Id) + ' ';
  FindSpprod.IBSpprod.Active := True;
  Edit1.Text := FindSpprod.IBSpprodKOD_PROD.AsString;
  if FindSpprod.IBSpprod.FieldByName('ACTIVP').Asinteger = 1 then
  begin
    Label11.Caption := '�����������';
    label11.Font.Color := clNavy;
  end
  else
  begin
    Label11.Caption := '�������������';
    label11.Font.Color := clRed;
  end;
  result := FindSpprod.IBSpprodKSM_ID.AsInteger;
end;

function TFAktRashoda.saveKart2DB() : boolean;
begin
  try
    VDOCUMENT_ID := DM1.DocumentDOC_ID.AsInteger;
    if (DM1.Kart.UpdatesPending) then
    begin
      DM1.Kart.ApplyUpdates;
      dm1.startReadTrans;
      dm1.startWriteTrans;
      DM1.IBT_Write.CommitRetaining;
      DM1.IBT_Read.CommitRetaining;
    end;
    result := true;
  except
  on e: exception do
  begin
    result := false;
    MessageDlg('��������� ������ ��� ������ ������! ' + #13 + E.Message, mtWarning, [mbOK], 0);
  end;
  end;
end;

function TFAktRashoda.closeQueries() : boolean;
begin
  try
    DM1.Document.Active := false;
    DM1.Kart.Active := false;
    FindSpprod.IBSpprod.Active := false;
    NormiMemDat.EmptyTable;
    NormiMemDat.Active := false;
    NormiMemDat.Active := false;
    NormVQuery.Active := False;
    deactivateDocTipParam();
    cenaQ.Close;
    result := true;
  except
  on e : exception do
    result := false;
  end;
end;

function TFAktRashoda.addNormi2Mem() : boolean;
begin
  NormVQuery.First;
  while (not NormVQuery.Eof) do
  begin
    if (NormiMemDat.RecordCount = 0) or (not NormiMemDat.Locate('ksm_id', NormVQueryKSM_ID.AsInteger, [])) then
      insertRec2MemDat(NormVQueryKSM_ID.AsInteger, NormVQueryStruk_ID.AsInteger,
                       NormVQueryRAZDEL_ID.AsInteger, NormVQueryMEDEND.AsInteger,
                       NormVQueryKEI_ID.AsInteger, NormVQueryKRAZ.AsInteger,
                       NormVQueryNMAT_KSM.AsString, NormVQueryNEIS.AsString,
                       NormVQuerySTNAME.AsString, NormVQueryNMAT.AsString,
                       NormVQueryNAMRAZ.AsString, NormVQueryPLNORM.AsFloat, 0, vStruk_Id, 0)
    else
      insertPlnorm2MemDat(NormVQueryPLNORM.AsFloat, NormVQueryKSM_ID.AsInteger);
    NormVQuery.Next;
  end;
  result := true;
end;

function TFAktRashoda.insertRec2MemDat(ksmId, strukId, razdelId, medEnd, keiId, kRaz : integer;
                                       nMatKsm, nEIs, stName, nMat, namRaz : string;
                                       plNorm, factRashod : double; ostStrukId : integer; cena : double) : boolean;
begin
  if (not NormiMemDat.Active) then
    NormiMemDat.Active := True;
  NormiMemDat.Insert;
  changeRecInMem(ksmId, strukId, razdelId, medEnd, keiId, kRaz, nMatKsm, nEIs,
                 stName, nMat, namRaz, plNorm, factRashod, ostStrukId, cena);
  result := true;
end;

function TFAktRashoda.changeRecInMem(ksmId, strukId, razdelId, medEnd, keiId, kRaz : integer;
                                     nMatKsm, nEIs, stName, nMat, namRaz : string;
                                     plNorm, factRashod : double; ostStrukId : integer; cena : double) : boolean;
begin
  try
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
//    if (NormiMemDatCENA.AsFloat = 0) and (cena <> 0) then
//      NormiMemDatCENA.AsFloat := cena;

    NormiMemDat.Post;
    result := true;
  except
    on e : exception do
      result := false;
  end;
end;

function TFAktRashoda.addKart2Mem(): boolean;
var
  neis : string;
begin
  try
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
                       DM1.KartNAMRAZ.AsString, 0, DM1.KartKOL_RASH_EDIZ.AsFloat,
                       dm1.KartOST_STRUK_ID.AsInteger, dm1.KartCENA.AsFloat);
      DM1.Kart.Next;
    end;
    result := true;
  except
  on e : exception do
    result := false;
  end;
end;

function TFAktRashoda.insertPlnorm2MemDat(plNorm : double; ksmId : integer) : boolean;
begin
  if not NormiMemDat.Active then
    NormiMemDat.Active := True;
  result := false;
  NormiMemDat.First;
  while not NormiMemDat.Eof do
  begin
    if NormiMemDatKSM_ID.AsInteger = ksmId then
    begin
      NormiMemDat.Edit;
      NormiMemDatPLNORM.AsFloat := plNorm;
      NormiMemDat.Post;
      result := true;
      break;
    end
    else
    begin
      NormiMemDat.Next;
      result := false;
    end;
  end;
end;

function TFAktRashoda.reloadNorms(nMat : integer) : boolean;
var
  curMonth, curYear : integer;
begin
  NormiMemDat.DisableControls;
  curMonth := monthCombo.ItemIndex + 1;
  curYear := StrToInt(yearEdit.Text);  
  s_nmat := Label19.Caption;
  s_dat1 := DateToStr(encodeDate(curYear, curMonth, 1));
  if (curMonth = 12) then
    s_dat2 := DateToStr(encodeDate(curYear + 1, 1, 1) - 1)
  else
    s_dat2 := DateToStr(encodeDate(curYear, curMonth + 1, 1) - 1);


  try
    NormiMemDat.EmptyTable;
    if (s_nmat = '����������� ���������� �� ������������������ �������') then
    begin
      findCurDoc(vStruk_Id, curMonth, curYear, 144, '');
      vTip_Doc_Id := 144;
    end;
    if (s_nmat = '���������� � ������������ ������������') then
    begin
      findCurDoc(vStruk_Id, curMonth, curYear, 145, '�');
      vTip_Doc_Id := 145;
    end;
    activateNormQuery();
    loadKart(vStruk_Id, DM1.DocumentDOC_ID.AsInteger);
    addKart2Mem();
    addNormi2Mem();
    NormiMemDat.SortOnFields('Razdel_Id', true, false);
    nDocEdit.Text := DM1.DocumentNDOK.AsString;

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

function TFAktRashoda.add2Prixod() : boolean;
//var
//  curIndex : integer;
begin
  try
//    curIndex := 0;
  // ���������� � ������
    NormiMemDat.First;
    while not NormiMemDat.Eof do
    begin
//      if memState[curIndex].GetValue <> NormiMemDatFACTRASHOD.AsFloat then
//      begin
        v_raspred_dob := NormiMemDatFACTRASHOD.AsFloat;
        s_ksm := NormiMemDatKsm_id.AsInteger;
        v_kein := NormiMemDatKei_id.AsInteger;
        vklient_id := s_kodp;
        v_razdel := NormiMemDatRazdel_id.AsInteger;
        tochn := -6;
        pr_kor := 0;
        DM1.DobPrixPrep;
//      end;
//      curIndex := curIndex + 1;
      NormiMemDat.Next;
    end;
    dm1.startReadTrans;
    dm1.startWriteTrans;
    DM1.IBT_WRITE.CommitRetaining;
    DM1.IBT_READ.CommitRetaining;
    result := true;
  except
  on e: exception do
  begin
    result := false;
    MessageDlg('��������� ������ ��� ���������� � ������! '+ #13 + E.Message, mtWarning, [mbOK], 0);
  end;
  end;
end;

procedure TFAktRashoda.AddBtnClick(Sender: TObject);
begin
  insertDocTipParam;
end;

function TFAktRashoda.saveCurState() : boolean;
begin
  try
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
  except
  on e : exception do
    result := false;
  end;
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

{ ��������� ������� }
function TFAktRashoda.loadDocTipParam(tipDokId, strukId : integer) : boolean;
begin
  try
    DocTipParam.Active := false;
    DocTipParam.ParamByName('struk_id').AsInteger := strukId;
    DocTipParam.ParamByName('tip_dok_id').AsInteger := tipDokId;
    DocTipParam.Active := true;

    if DocTipParam.IsEmpty then
    begin
      DocTipParam.Insert;
//      DocTipParam.Edit;
      DocTipParamPARAM_NAME.AsString := '���. �������� ���������';
      DocTipParamPARAM_TYPE.AsString := 'C';
      DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
      DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
      DocTipParam.Post;
      DocTipParam.Insert;
      DocTipParamPARAM_NAME.AsString := '�������-�������� ��� (�� ������������)';
      DocTipParamPARAM_TYPE.AsString := 'C';
      DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
      DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
      DocTipParam.Post;
      DocTipParam.Insert;
      DocTipParamPARAM_NAME.AsString := '�������-�������� ���';
      DocTipParamPARAM_TYPE.AsString := 'C';
      DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
      DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
      DocTipParam.Post;
      DocTipParam.Insert;
      if NormVQuerySTNAME.AsString <> '������-������.���' then
        DocTipParamPARAM_NAME.AsString := '��������� ���� � ' +
                                IntToStr(GetCehNum(NormVQuerySTNAME.AsString))
      else
        DocTipParamPARAM_NAME.AsString := '��������� ������.-������. ����';
      DocTipParamPARAM_TYPE.AsString := 'C';
      DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
      DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
      DocTipParam.Post;
      DocTipParam.Insert;
      if NormVQuerySTNAME.AsString <> '������-������.���' then
        DocTipParamPARAM_NAME.AsString := '���. ���������� ���� � ' +
                                IntToStr(GetCehNum(NormVQuerySTNAME.AsString))
      else
        DocTipParamPARAM_NAME.AsString := '���. ���������� ������.-������. ����';
      DocTipParamPARAM_TYPE.AsString := 'C';
      DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
      DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
      DocTipParam.Post;
    end;

    result := true;
  except
  on e : exception do
    result := false;
  end;
end;

function TFAktRashoda.deactivateDocTipParam() : boolean;
begin
  try
    if DocTipParam.Active then    
      DocTipParam.Active := false;
    result := true;
  except
  on e : exception do
    result := false;
  end;
end;

procedure TFAktRashoda.DelBtnClick(Sender: TObject);
begin
  deleteDocTipParam;
end;

function TFAktRashoda.saveDocTipParam() : boolean;
begin
  try
    if DocTipParam.UpdatesPending then
    begin
      DocTipParam.ApplyUpdates;
      dm1.startWriteTrans;
      DM1.IBT_WRITE.CommitRetaining;
      DocTipParam.Refresh;
    end;
    result := true;
  except
  on e : exception do
  begin
    result := false;
    MessageDlg('��������� ������ ��� ���������� ��������! '+ #13 + E.Message, mtWarning, [mbOK], 0);
  end;
  end;
end;

procedure TFAktRashoda.insertDocTipParam;
begin
  DocTipParam.Insert;
  DocTipParamTIP_DOK_ID.AsInteger := vTip_Doc_Id;
  DocTipParamPARAM_TYPE.AsString := 'C';
  DocTipParamSTRUK_ID.AsInteger := vStruk_Id;
  DocTipParam.Post;
end;

procedure TFAktRashoda.deleteDocTipParam;
begin
  try
    if (not DocTipParam.IsEmpty) then
      DocTipParam.Delete;  
  except
    on e : exception do
      MessageDlg('��������� ������ ��� �������� �������! '+ #13 + E.Message, mtWarning, [mbOK], 0);
  end;
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
    if MessageDlg('�������� ���������?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Button1Click(Sender)
    else
      reloadNorms(0);
  end;
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

end.
