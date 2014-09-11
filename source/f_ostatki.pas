unit f_ostatki;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ActnList, ComCtrls, ToolWin, Buttons, StdCtrls,
  ExtCtrls, Math, DB, DBCtrlsEh, Mask, DBCtrls, FindDlgEh, ToolEdit, UtilRIB,
  RXDBCtrl, RxMemDS, IB, Menus, DBLookupEh, ImgList, inifiles, utilg, FMTBCD;

type
  TFOstatki = class(TForm)
    ActionList1: TActionList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    AAddKart: TAction;
    ToolButton2: TToolButton;
    AAddSeria: TAction;
    AFindMaterial: TAction;
    ACancelChanges: TAction;
    AApplyChanges: TAction;
    AExitForm: TAction;
    FindDlgEh1: TFindDlgEh;
    AAccept: TAction;
    ACenaUch: TAction;
    Panel4: TPanel;
    AFindSprorg: TAction;
    Panel5: TPanel;
    ScrollBar1: TScrollBar;
    Panel6: TPanel;
    DBGridEh1: TDBGridEh;
    ScrollBar2: TScrollBar;
    Panel7: TPanel;
    Label2: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ToolButton4: TToolButton;
    ATakeDolg: TAction;
    AReturnDolg: TAction;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    BitBtn5: TBitBtn;
    AAcceptDolg: TAction;
    Label7: TLabel;
    Edit6: TEdit;
    Panel8: TPanel;
    DBGridEh3: TDBGridEh;
    Panel9: TPanel;
    BitBtn6: TBitBtn;
    AAcceptReturn: TAction;
    BitBtn7: TBitBtn;
    ACancelDolg: TAction;
    BitBtn8: TBitBtn;                                  
    ACancelReturn: TAction;
    ScrollBar3: TScrollBar;
    Edit7: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    DBNavigator1: TDBNavigator;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    AViewKart: TAction;
    ToolButton10: TToolButton;
    ADeleteKart: TAction;
    DBGridEh2: TDBGridEh;
    Panel10: TPanel;
    Label11: TLabel;
    PopupMenu1: TPopupMenu;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    ABtn: TToolButton;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ToolButton3: TToolButton;
    N9: TMenuItem;
    ImageList1: TImageList;
    N10: TMenuItem;
    ToolButton8: TToolButton;
    STRUK: TDBEditEh;
    Label10: TLabel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit1: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    PopupMenu2: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    ActionList2: TActionList;
    AMat: TAction;
    ASeria: TAction;
    CheckBox2: TCheckBox;
    Panel2: TPanel;
    Label12: TLabel;
    DBEditEh1: TDBEditEh;
    Label13: TLabel;
    DBEditEh2: TDBEditEh;
    Label14: TLabel;
    DBEditEh3: TDBEditEh;
    ToolButton11: TToolButton;
    AEditChet: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AAddKartExecute(Sender: TObject);
    procedure DBGridEh2Columns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure AAddSeriaExecute(Sender: TObject);
    procedure DBGridEh1Columns4EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure AFindMaterialExecute(Sender: TObject);
    procedure AExitFormExecute(Sender: TObject);
    procedure ACancelChangesExecute(Sender: TObject);
    procedure AApplyChangesExecute(Sender: TObject);
    procedure AAcceptExecute(Sender: TObject);
    procedure AFindSprorgExecute(Sender: TObject);
    procedure DBGridEh2TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure ATakeDolgExecute(Sender: TObject);
    procedure AReturnDolgExecute(Sender: TObject);
    procedure AAcceptDolgExecute(Sender: TObject);
    procedure AAcceptReturnExecute(Sender: TObject);
    procedure ACancelDolgExecute(Sender: TObject);
    procedure ACancelReturnExecute(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1ColExit(Sender: TObject);
    procedure AViewKartExecute(Sender: TObject);
    procedure ADeleteKartExecute(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboboxEh1CloseUp(Sender: TObject; Accept: Boolean);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ToolButton3Click(Sender: TObject);
    procedure DBGridEh2Columns14EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure ACenaUchExecute(Sender: TObject);
    procedure FormDocument;
    procedure DBGridEh1Columns14UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns13UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns12UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns9UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns10UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns6UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns7UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns8UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns11UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBEditEh1EditButtons0Click(Sender: TObject; var Handled: Boolean);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure ASeriaExecute(Sender: TObject);
    procedure AMatExecute(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure DBGridEh1Columns20UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBEditEh2Change(Sender: TObject);
    procedure DBEditEh1Change(Sender: TObject);
    procedure DBEditEh3Change(Sender: TObject);
    procedure DBGridEh1Columns21UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBEditEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton9Click(Sender: TObject);
    procedure AEditChetExecute(Sender: TObject);
    procedure DBGridEh1Columns15EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    OldCursor: TCursor;
    DolgKSM_ID: integer;
    function VerifyOstData: integer;
    procedure TransferDolg(Mode: integer; Source: integer; Dest: integer; Dolg: double; DokOsnID: integer; SourceKSM_ID: integer; DestKSM_ID: integer);
    procedure ChooseSeria();
    procedure Ediz2Check;
    procedure NalCheck;
    procedure OldKodCheck;
    procedure IzmPrmat;
    { Private declarations }
  public
    NalMode: integer;   // Наличие 1-Докум 2-Реал 3-Фикт  // Не используется
    KSM_Filter: string;
    KART_Filter: string;
    Public_Id :Integer;
    old_kol : double;
    kart_mat :Integer;
    procedure EnableButtons(Mode: integer);
    { Public declarations }
  end;

var
  FOstatki: TFOstatki;

implementation

uses d_m, f_upak, f_dokument, find_sprorg, find_spprod, f_seria, f_kart, f_infmat, f_dialog, find_matrop,
  f_DragMet, datamodule, f_sklad;

{$R *.dfm}

procedure TFOstatki.FormShow(Sender: TObject);
begin
  OldCursor:=Screen.Cursor;
  Screen.Cursor:=crHourGlass;
  try
    if DM.MODE=2 then EnableButtons(4) // Режим просмотра
    else EnableButtons(0);
    DM.Ostatki.Close;
    DM.QueryOst.Close;
    dm.IBMatr_pr.Active:=True;
    if  not DM.IBMatr_pr.Locate('PrMat',DM.MatrPr,[]) then
      DM.IBMatr_pr.First;
    DM.QueryOst.ParamByName('MES').AsInteger:=DM.MES;
    DM.QueryOst.ParamByName('GOD').AsInteger:=DM.GOD;
    DM.QueryOst.ParamByName('STRUKID').AsInteger:=DM.STRUK_ID;
    if CheckBox2.Checked then
      DM.QueryOst.MacroByName('USL').AsString:=KSM_Filter + ' and (Ost.Ot_s <> 0 or kol_rash <> 0)'
    else
      DM.QueryOst.MacroByName('USL').AsString:=KSM_Filter;
    DM.QueryOst.MacroByName('PRMAT').AsString:='Matrop.PRMAT = '+''''+DM.MATRPR+'''';
    DBLookupComboboxEh1.Text:=dm.IBMatr_prNAMPR.AsString;
    ActiveControl:=BitBtn3;
    try
      DM.Ostatki.OnCalcFields := nil;
      DM.QueryOst.OnCalcFields := nil;
      DM.Ostatki.DataSource := nil;
      DM.QueryOst.Open;
      DM.Ostatki.ParamByName('STRUK_ID').AsInteger:=DM.STRUK_ID;
      if CheckBox2.Checked then
        DM.Ostatki.MacroByName('USL').AsString:=KART_Filter +' and (Ost.Ot_s <> 0 or kol_rash <> 0)'
      else
        DM.Ostatki.MacroByName('USL').AsString:=KART_Filter;
      DM.Ostatki.Open;
      if (not DM.YESSERIA)  and (DM.QueryTipOperIS_BSO.AsInteger = 0)  then   // по подразделению не ведется посерийный учет
      begin
        Panel6.Visible := False;
        Panel3.Visible := False;
        ToolButton2.Visible := False;
      end
      else
      begin
        Panel6.Visible := True;
        Panel3.Visible := True;
        ToolButton2.Visible := True;
      end;
    finally
      DM.Ostatki.DataSource := DM.DS_Ost;
      DM.QueryOst.OnCalcFields := DM.QueryOst2CalcFields;
      DM.Ostatki.OnCalcFields := DM.Ostatki2CalcFields;
    end;
    IzmPrMat;
    if (DM.GruppaOper = 2) and ((not DM.YESSERIA) or
    //((DM.Dokument.Active) and (DM.QueryTipOperTIP_OP_ID.AsInteger in [7,8,10]))) then   //Расход
    ((DM.Dokument.Active) and (DM.QueryTipOperTIP_OP_ID.AsInteger = 7))) then   //Расход
    begin
      FDokument.GridEhColumnByName(DBGridEh2,'KOL_RASH').Visible:=True;
      if DM.QueryTipOperTIP_OP_ID.AsInteger = 7 then
         FDokument.GridEhColumnByName(DBGridEh2,'KOL_RASH').ReadOnly:=True;
      if DBGridEh1.Visible then
      begin
        FDokument.GridEhColumnByName(DBGridEh1,'KOL_RASH').Visible:=True;
        FDokument.GridEhColumnByName(DBGridEh1,'BRUTTO').Visible:=True;
        FDokument.GridEhColumnByName(DBGridEh1,'KOL_MEST').Visible:=True;
      end;
      ToolButton3.Visible := True;
    end
    else                                               //Приход
    begin
      FDokument.GridEhColumnByName(DBGridEh2,'KOL_RASH').Visible:=False;
      FDokument.GridEhColumnByName(DBGridEh1,'KOL_RASH').Visible:=False;
      FDokument.GridEhColumnByName(DBGridEh1,'BRUTTO').Visible:=False;
      FDokument.GridEhColumnByName(DBGridEh1,'KOL_MEST').Visible:=False;
      ToolButton3.Visible := False;
    end;
    if ((DM.GruppaOper = 2) and (DM.QueryTipOperTIP_OP_ID.AsInteger <> 7)) then   //Расход
    //if ((DM.GruppaOper = 2) and not(DM.QueryTipOperTIP_OP_ID.AsInteger in [7,8,10])) then   //Расход
    begin
      DBGridEh1.ReadOnly := true;
    end
    else                                               //Приход
    begin
      DBGridEh1.ReadOnly := false;
    end;
    if DM.CURRENT_DATE<>Date() then
       begin
         FDokument.GridEhFieldByName(DBGridEh1,'Cost_day').DisplayLabel:='Наличие на '+FormatDateTime('dd.mm.yy',DM.CURRENT_DATE);
         FDokument.GridEhColumnByName(DBGridEh2,'COST_DAY').Visible:=True;
         FDokument.GridEhColumnByName(DBGridEh2,'CSUM_DAY').Visible:=True;
         FDokument.GridEhColumnByName(DBGridEh2,'NAL_DOKUM').Visible:=False;
         FDokument.GridEhColumnByName(DBGridEh2,'SUMMA_OPT').Visible:=False;
         FDokument.GridEhColumnByName(DBGridEh1,'Cost_day').Visible:=True;
         FDokument.GridEhColumnByName(DBGridEh1,'OT_DOKUM').Visible:=False;
       end
    else
       begin
         FDokument.GridEhColumnByName(DBGridEh2,'NAL_DOKUM').Visible:=True;
         FDokument.GridEhColumnByName(DBGridEh2,'COST_DAY').Visible:=False;
         FDokument.GridEhColumnByName(DBGridEh2,'SUMMA_OPT').Visible:=True;
         FDokument.GridEhColumnByName(DBGridEh2,'CSUM_DAY').Visible:=False;
         FDokument.GridEhColumnByName(DBGridEh1,'OT_DOKUM').Visible:=True;
         FDokument.GridEhColumnByName(DBGridEh1,'Cost_day').Visible:=False;
       end;
  finally
    Screen.Cursor:=OldCursor;
    if FindDlgEh1.Usl.Text <> '' then
       FindDlgEh1.Filtered := True;
    DBGridEh2.SetFocus;
    if Public_Id <> 0 then
    begin
      DM.QueryOst.Locate('Ksm_Id',Public_id,[]);
      if DM.Kart.Active then
        DM.Ostatki.Locate('Kart_id',DM.KartKART_ID.AsInteger,[]);
    end;
  end;
  Ediz2Check;
  OldKodCheck;
  DM.Query.Close;
  DM.Query.SQL.Text:='SELECT ConfigUmc.STNAME, Struk.KOD_STRUK  FROM ConfigUMC '
  +' LEFT JOIN STRUK ON CONFIGUMC.STRUK_ID=STRUK.STRUK_ID '
  +' WHERE CONFIGUMC.STRUK_ID = '+IntToStr(DM.STRUK_ID);
  DM.Query.Open;
  DM.STNAME :=DM.Query.fieldByName('STNAME').AsString;
  DM.KODSTRUK := DM.Query.fieldByName('KOD_STRUK').AsString;
  DM.Query.Close;
  STRUK.Text := DM.KODSTRUK+' '+DM.STNAME;
  DBEditEh1.Text:='';
  DBEditEh2.Text:='';
  DBEditEh3.Text:='';
end;

procedure TFOstatki.IzmPrmat;
begin
   If DM.MATRPR = '05' then
   //If DM.IBMatr_prPRMAT.AsString = '05' then  //Готовая продукция
    begin
      FDokument.GridEhColumnByName(DBGridEh2,'KOD_PROD').Visible:=True;
      FDokument.GridEhColumnByName(DBGridEh2,'SPKSM').Visible:=True;
      FDokument.GridEhColumnByName(DBGridEh2,'KSM_ID').Visible:=False;
      FDokument.GridEhColumnByName(DBGridEh2,'ACCOUNT').Visible:=False;
    end
    else
    begin
      FDokument.GridEhColumnByName(DBGridEh2,'KOD_PROD').Visible:=False;
      FDokument.GridEhColumnByName(DBGridEh2,'SPKSM').Visible:=false;
      FDokument.GridEhColumnByName(DBGridEh2,'KSM_ID').Visible:=True;
      FDokument.GridEhColumnByName(DBGridEh2,'ACCOUNT').Visible:=True;
    end;
end;

procedure TFOstatki.OldKodCheck;
begin
  if dm.IBMatr_prPRMAT.AsString='05'  then
  begin
    Label14.Visible:=True;
    DBEditEh3.Visible:=True;
  end
  else
  begin
    Label14.Visible:=false;
    DBEditEh3.Visible:=false;
  end;
end;

procedure TFOstatki.Ediz2Check;
begin
  if CheckBox1.Checked then
  begin
    FDokument.GridEhColumnByName(DBGridEh2,'OT_S2').Visible:=True;
    FDokument.GridEhColumnByName(DBGridEh1,'OT_S2').Visible:=True;
    FDokument.GridEhColumnByName(DBGridEh1,'PROC_OV').Visible:=True;
    FDokument.GridEhColumnByName(DBGridEh1,'KEI_ID2').Visible:=True;
  end
  else
  begin
    FDokument.GridEhColumnByName(DBGridEh2,'OT_S2').Visible:=false;
    FDokument.GridEhColumnByName(DBGridEh1,'OT_S2').Visible:=false;
    FDokument.GridEhColumnByName(DBGridEh1,'PROC_OV').Visible:=false;
    FDokument.GridEhColumnByName(DBGridEh1,'KEI_ID2').Visible:=False;
  end;
end;

procedure TFOstatki.NalCheck;
begin
  if CheckBox2.Checked then
  begin
    DM.QueryOst.MacroByName('USL').AsString :=KSM_Filter+ ' and (Ost.Ot_s <> 0 or kol_rash <> 0)';
    DM.Ostatki.MacroByName('USL').AsString := Kart_Filter+ ' and (Ost.Ot_s <> 0 or kol_rash <> 0)';
  end
  else
  begin
    DM.QueryOst.MacroByName('USL').AsString :=KSM_Filter;
    DM.Ostatki.MacroByName('USL').AsString := Kart_Filter;
  end;
  DM.QueryOst.Active := false;
  DM.QueryOst.Active := true;
  DM.Ostatki.Active := false;
  DM.Ostatki.Active := true;
end;

procedure TFOstatki.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (DM.GruppaOper = 2) and (DM.QueryOst.UpdatesPending)
    and (MessageDlg('Сформирвать документ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    If DM.QueryOst.State = dsEdit then DM.QueryOst.Post;
      ToolButton3.Click;
  end;
  dm.IBMatr_pr.Active:=False;
  Panel7.Visible:=False;
  Panel8.Visible:=False;
  if ModalResult<50 then
  begin
    DM.Ostatki.Cancel;
    DM.QueryOst.Cancel;
    DM.Ostatki.CancelUpdates;
    DM.QueryOst.CancelUpdates;
    DM.Ostatki.Close;
    DM.QueryOst.Close;
  end;
end;

procedure TFOstatki.DBGridEh2Columns1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  if (DM.DS_Ost.State=dsInsert) or (DM.DS_Ost.State=dsEdit) then
  begin
    AFindMaterial.Execute;
  end
  else if DM.QueryOst.UpdatesPending then
  begin
    DM.QueryOst.Edit;
    AFindMaterial.Execute;
  end;
end;

procedure TFOstatki.AAddKartExecute(Sender: TObject);
begin
  DM.QueryOst.Append;
  AFindMaterial.Execute;
  if DM.QueryOstKSM_ID.AsInteger <> 0 then
  begin
    AApplyChangesExecute(Sender);
    EnableButtons(1);
    if DM.YESSERIA then       // В подразделении используется посерийный учет
    begin
      FocusControl(DBGridEh1);
      DBGridEh1.SelectedField:=FDokument.GridEhFieldByName(DBGridEh1,'SERIA');
      ChooseSeria();
    end
    else
      if (DM.OstatkiKART_ID.AsVariant<> NULL) and (Screen.ActiveForm=FOstatki) then
        ModalResult:=DM.OstatkiKART_ID.AsInteger+50;
  end
  else
    DM.QueryOst.Cancel;
end;


procedure TFOstatki.AAddSeriaExecute(Sender: TObject);
var
  PrizCopy : integer;
begin
  if DM.QueryOst.IsEmpty then Exit;
//  OldCursor:=Screen.Cursor;
//  Screen.Cursor:=crHourGlass;
//  try
    if (DM.Ostatki.RecordCount <> 0)    then
    begin
      FormView(DM.Ostatki,FDokument.FieldsDoc);
      PrizCopy := 1
    end
    else
      PrizCopy := 0;
//    PrizCopy := 0;
    DM.Ostatki.Append;
    if PrizCopy = 1 then
    begin
      While not FDokument.FieldsDoc.eof do
      begin
        if (TRIM(FDokument.FieldsDoc.FieldByName('FieldName').AsString)='VES_TRANS') or
           (TRIM(FDokument.FieldsDoc.FieldByName('FieldName').AsString)='KOL_TRANS') or
           (TRIM(FDokument.FieldsDoc.FieldByName('FieldName').AsString)='KOL_GRP') or
           (TRIM(FDokument.FieldsDoc.FieldByName('FieldName').AsString)='VOL_TRANS') or
           (TRIM(FDokument.FieldsDoc.FieldByName('FieldName').AsString)='VES_GRP') then
          DM.Ostatki.FieldByName(FDokument.FieldsDoc.FieldByName('FieldName').AsString).AsString := FDokument.FieldsDoc.FieldByName('FieldValue').AsString;
        FDokument.FieldsDoc.Next;
      end;
    end;
    DM.Ostatki.FieldByName('KSM_ID').AsInteger:=DM.QueryOst.FieldByName('KSM_ID').AsInteger;
    DM.Ostatki.FieldByName('KEI_ID').AsInteger:=DM.QueryOst.FieldByName('KEI_ID').AsInteger;
    DM.OstatkiSROK_GODN.AsString :='';
    DM.OstatkiPASPORT.AsString:='';
    DM.OstatkiSERTIF.AsString:='';
    DM.OstatkiDATE_SERTIF.AsString:='';
    FocusControl(DBGridEh1);
    DBGridEh1.SelectedField:=FDokument.GridEhFieldByName(DBGridEh1,'SERIA');
    DBGridEh1.ReadOnly:=False;
    EnableButtons(1);
    if DM.YESSERIA then // В подразделении используется посерийный учет
      ChooseSeria();
    if (DM.Ostatki.State=dsEdit) or (DM.Ostatki.State=dsInsert) or (DM.Ostatki.Modified) then
      DM.Ostatki.Post;
    if DM.Ostatki.UpdatesPending  then
      FOstatki.AApplyChanges.Execute;
//  finally
//    Screen.Cursor:=OldCursor;
//  end;
end;

procedure TFOstatki.DBGridEh1Columns4EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
 // FUpak.UpakID:='NOMU_ID_TRANS';
 // FUpak.UpakName:='UPTRANS_NAME';
 // FUpak.ShowModal;
end;

procedure TFOstatki.DBGridEh1Columns6UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  EnableButtons(1);
//  AApplyChanges.Execute;
end;

procedure TFOstatki.DBGridEh1Columns7UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if Text = '' then Text := '0';
  if DM.Dokument.Active then
  begin
    if DM.Dokument.FieldByName('struk_id').AsInteger <> 273 then
    begin
      if SimpleRoundTo(StrToFloat(Text),-3) > SimpleRoundTo(DM.OstatkiOT_S.AsFloat+DM.OstatkiKOL_RASH.AsFloat,-3)  then
      begin
        MessageDlg('Недостаточно количества!', mtWarning, [mbOK], 0);
        Handled := true;
        exit;
      end;
    end;
  old_kol := DM.OstatkiKOL_RASH.AsFloat;
    if DM.Kart.Locate('KART_ID',DM.OstatkiKART_ID.AsInteger,[]) then
      DM.Kart.Edit
    else
      DM.Kart.Insert;
    DM.Kart.FieldByName('KART_ID').AsInteger:=DM.OstatkiKART_ID.AsInteger;
    DM.Kart.FieldByName('SERIA').AsString:=DM.OstatkiSERIA.AsString;
    DM.Kart.FieldByName('DOC_ID').AsInteger:=DM.Dokument.FieldByName('DOC_ID').AsInteger;
    DM.Kart.FieldByName('NDS').AsFloat:=DM.Dokument.fieldByName('NDS').AsFloat;
    DM.Kart.FieldByName('KSM_ID').AsVariant := DM.OstatkiKSM_ID.AsInteger;
    if DM.Dokument.FieldByName('VP_ID').AsInteger = 1 then
    begin
      DM.KartCENA.AsFloat := DM.QueryOstOPT_CENA.AsFloat;
      DM.KartCENA_Vp.AsFloat := DM.QueryOstOPT_CENA.AsFloat;
      DM.KartCENA_PRICE.AsFloat := DM.QueryOstOPT_CENA.AsFloat;
    end;
    DM.KartKOL_RASH.AsFloat := Value;
    DM.Kart.Post;
    DM.Kart.Locate('KART_ID',DM.OstatkiKART_ID.AsInteger,[]);
    if DM.TTN_Stroki.Locate('STROKA_ID',DM.KartSTROKA_ID.AsInteger,[]) then
    begin
      DM.OstatkiBRUTTO.asFloat := DM.TTN_StrokiBRUTTO.AsFloat;
      DM.OstatkiKOL_MEST.asFloat := DM.TTN_StrokiKOL_MEST.AsFloat;
    end;
  end;
end;

procedure TFOstatki.DBGridEh1Columns8UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if Text = '' then Text := '0';
  if not DM.Kart.Locate('KART_ID',DM.OstatkiKART_ID.AsInteger,[]) then
  begin
    MessageDlg('Не найдена строка! ', mtWarning, [mbOK], 0);
    Handled := true;
    exit;
  end;
  if DM.TTN_Stroki.Locate('STROKA_ID',DM.KartSTROKA_ID.AsInteger,[]) then
  begin
    DM.TTN_Stroki.Edit;
    DM.TTN_StrokiBRUTTO.AsFloat := Value;
    DM.TTN_Stroki.Post;
    FDokument.APost.Execute;
  end
  else
  begin
    MessageDlg('Не найдена строка! ', mtWarning, [mbOK], 0);
    Handled := true;
  end;
end;

procedure TFOstatki.DBGridEh1Columns9UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if Text = '' then Text := '0';
  if not DM.Kart.Locate('KART_ID',DM.OstatkiKART_ID.AsInteger,[]) then
  begin
    MessageDlg('Не найдена строка! ', mtWarning, [mbOK], 0);
    Handled := true;
    exit;
  end;
  if DM.TTN_Stroki.Locate('STROKA_ID',DM.KartSTROKA_ID.AsInteger,[]) then
  begin
    DM.TTN_Stroki.Edit;
    DM.TTN_StrokiKol_Mest.AsFloat := Value;
    DM.TTN_Stroki.Post;
    FDokument.APost.Execute;
  end
  else
  begin
    MessageDlg('Не найдена строка! ', mtWarning, [mbOK], 0);
    Handled := true;
  end;
end;

procedure TFOstatki.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  If (DM.OstatkiORG_RESERV_NAM.AsString <> '')  then
    Background := $00CEDEFF;
end;

procedure TFOstatki.DBGridEh1Columns10UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  EnableButtons(1);
//  AApplyChanges.Execute;
end;

procedure TFOstatki.DBGridEh1Columns11UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  EnableButtons(1);
end;

procedure TFOstatki.DBGridEh1Columns12UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  EnableButtons(1);
//  AApplyChanges.Execute;
end;

procedure TFOstatki.DBGridEh1Columns13UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  EnableButtons(1);
//   AApplyChanges.Execute;
end;

procedure TFOstatki.DBGridEh1Columns14UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  EnableButtons(1);
//  AApplyChanges.Execute;
end;

procedure TFOstatki.DBGridEh1Columns15EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FSeria.BitBtn1Click(DBGridEh1.Columns[15]);
end;

procedure TFOstatki.DBGridEh1Columns1UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  EnableButtons(1);
///  AApplyChanges.Execute;
 /// DM.Ostatki.Edit;
end;

procedure TFOstatki.DBGridEh1Columns20UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
 procov : double;
begin
  EnableButtons(1);
//  if value = '' then
//    procov := 0
//  else
//    procov := value;
//  if procov = 0 then
//    DM.OstatkiOT_S2.AsFloat := 0
//  else
//    DM.OstatkiOT_S2.AsBCD := StrToBcd(FormatFloat('#.######',DM.OstatkiOT_S.AsFloat/procov));
end;

procedure TFOstatki.DBGridEh1Columns21UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  EnableButtons(1);
end;

procedure TFOstatki.DBGridEh1Columns2EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
//  FUpak.UpakID:='NOMU_ID_GRP';
//  FUpak.UpakName:='UPGRUP_NAME';
//  FUpak.ShowModal;
end;


procedure TFOstatki.ACenaUchExecute(Sender: TObject);
var
 v_cena_uch : double;
begin
  v_cena_uch :=  DM.OstatkiCENA_UCH.AsFloat;
  v_cena_uch := StrToFloat(InputBox('Учетная цена ', 'Введите цену' , FormatFloat('0.00',v_cena_uch)));
  DM.QueryOst.Edit;
  DM.QueryOstOPT_CENA.AsFloat := v_cena_uch;
end;

procedure TFOstatki.AEditChetExecute(Sender: TObject);
var
 v_chet : string;
begin
  v_chet := InputBox('Счет ', 'Введите счет' , DM.OstatkiACCOUNT.AsString);
  DM.QueryOst.Edit;
  DM.QueryOstACCOUNT.AsString := v_chet;
  DM.Ostatki.Edit;
  DM.OstatkiACCOUNT.AsString := v_chet;
end;

procedure TFOstatki.AFindMaterialExecute(Sender: TObject);
var SpprodResult: integer;
begin
  if dm.IBMatr_prPRMAT.AsString='05' then
  begin
    FindSpprod.DataBaseName:=DM.UMC_DATA;
    FindSpprod.ReadOnly:=True;
    SpprodResult:=FindSpprod.ShowModal-50;
  end
  else
  begin
    FindMatrop.DataBaseName:=DM.UMC_DATA;
    FindMatrop.ReadOnly:=False;
    FindMatrop.Prmat:=dm.IBMatr_prPRMAT.AsString;
    SpprodResult:=FindMatrop.ShowModal-50;
  end;
  if SpprodResult>0 then
  begin
    DM.QueryOstKSM_ID.AsInteger:=SpprodResult;
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Text:='SELECT Matrop.NMAT, Matrop.PrMat, Matrop.KEI_ID, Ediz.NEIS, Spprod.KOD_PROD, SUM(Ost.OT_DOKUM) NAL_DOKUM FROM Matrop '
       +'INNER JOIN Ediz ON Ediz.KEI_ID = Matrop.KEI_ID LEFT JOIN Ostatki Ost ON Matrop.KSM_ID = Ost.KSM_ID '
       +'LEFT JOIN Spprod ON Matrop.KSM_ID = Spprod.KSM_ID WHERE Matrop.KSM_ID = '+IntToStr(SpprodResult)
       +' GROUP BY Matrop.NMAT, Ediz.NEIS, Spprod.KOD_PROD, Matrop.KEI_ID, Matrop.PrMat';
    DM.Query1.Open;
    DM.QueryOstNMAT.AsString:=DM.Query1.FieldByName('NMAT').AsString;
    DM.QueryOstNEIS.AsString:=DM.Query1.FieldByName('NEIS').AsString;

    DM.QueryOstNAL_DOKUM.AsFloat:=DM.Query1.FieldByName('NAL_DOKUM').AsFloat;
    DM.QueryOstKOD_PROD.AsString:=DM.Query1.FieldByName('KOD_PROD').AsString;
    DM.QueryOst.FieldByName('KEI_ID').AsInteger:=DM.Query1.FieldByName('KEI_ID').AsInteger;
    DM.Ostatki.FieldByName('KSM_ID').AsInteger:=DM.QueryOst.FieldByName('KSM_ID').AsInteger;
    DM.Ostatki.FieldByName('KEI_ID').AsInteger:=DM.QueryOst.FieldByName('KEI_ID').AsInteger;
    if DM.IBMatr_pr.FieldByName('PrMat').AsString <> DM.Query1.FieldByName('PrMat').AsString then
    begin
      AApplyChangesExecute(Sender);
      if not DM.IBMatr_pr.Locate('PrMat',DM.Query1.FieldByName('PrMat').AsString,[]) then
        DM.IBMatr_pr.First;
      DBLookupComboboxEh1.Refresh;
      DM.QueryOst.MacroByName('PRMAT').AsString:='Matrop.PRMAT = '+dm.IBMatr_prPRMAT.AsString;
      DM.Ostatki.Close;
      DM.QueryOst.Close;
      DM.QueryOst.Open;
      DM.Ostatki.Open;
      DM.QueryOst.Locate('Ksm_Id',SpprodResult,[])
    end;
    DM.Query1.Close;
  end;
end;

function TFOstatki.VerifyOstData: integer;
begin
{  if ((DM.OstatkiSERIA.AsVariant=NULL) and (DM.YESSERIA)) then
  begin
    ShowMessage('Не введена серия!');
    FocusControl(DBGridEh1);
    DBGridEh1.SelectedField:=FDokument.GridEhFieldByName(DBGridEh1,'SERIA');
    Result:=-1;
    Exit;
  end;    }
{  if (DM.OstatkiLuptrans_name.AsVariant=NULL) and (dm.IBMatr_prPRMAT.AsString='05') then
  begin
    ShowMessage('Не выбрана транспортная упаковка!');
    FocusControl(DBGridEh1);
    DBGridEh1.SelectedField:=FDokument.GridEhFieldByName(DBGridEh1,'UPTRANS_NAME');
    Result:=-1;
    Exit;
  end;
  if (DM.OstatkiKOL_TRANS.AsVariant=NULL) and (dm.IBMatr_prPRMAT.AsString='05') then
  begin
    ShowMessage('Не введено количество в 1 транспортной упаковке!');
    FocusControl(DBGridEh1);
    DBGridEh1.SelectedField:=FDokument.GridEhFieldByName(DBGridEh1,'KOL_TRANS');
    Result:=-1;
    Exit;
  end;  }
  Result:=1;
end;



procedure TFOstatki.AExitFormExecute(Sender: TObject);
begin
  DM.Ostatki.Cancel;
  DM.QueryOst.Cancel;
  DM.Ostatki.CancelUpdates;
  DM.QueryOst.CancelUpdates;
  DM.Ostatki.Close;
  DM.QueryOst.Close;
  ModalResult:=2;
end;

procedure TFOstatki.ACancelChangesExecute(Sender: TObject);
var KsmID: integer;
begin
  OldCursor:=Screen.Cursor;
  Screen.Cursor:=crHourGlass;
  try
    KsmID:=DM.QueryOstKSM_ID.AsInteger;
    EnableButtons(0);
    DM.Ostatki.DisableControls;
    DM.QueryOst.DisableControls;
    DM.Ostatki.Cancel;
    DM.QueryOst.Cancel;
    DM.Ostatki.CancelUpdates;
    DM.QueryOst.CancelUpdates;
    DM.QueryOst.Close;
    DM.QueryOst.Open;
    DM.QueryOst.Locate('KSM_ID',KsmID,[]);
    DM.Ostatki.EnableControls;
    DM.QueryOst.EnableControls;
  finally
    Screen.Cursor:=OldCursor;
  end;
end;

procedure TFOstatki.AApplyChangesExecute(Sender: TObject);
var
  SeriaID: variant;
  KSMID, KartID: integer;
begin
  if ((DM.GruppaOper = 2) and (DM.Struk_id <> 273)) then exit;  //При расходе нельзя изменять остатки
  if (DM.Ostatki.State=dsEdit) or (DM.Ostatki.State=dsInsert) then
     DM.Ostatki.Post;
  if VerifyOstData()<>-1 then
  begin
    if not DM.Tran_Update.Active then DM.Tran_Update.StartTransaction;
    OldCursor:=Screen.Cursor;
    DM.Ostatki.DisableControls;
    DM.QueryOst.DisableControls;
    Screen.Cursor:=crHourGlass;
    try
      try
        if (DM.YESSERIA)  then
        begin
          if (DM.OstatkiSERIA_ID.AsVariant=NULL) and (DM.OstatkiSERIA.AsString<>'') then
          begin
            //
            SeriaID:=SelectToVarIB('SELECT seria_id FROM seria '
               +'WHERE seria.ksm_ID = '+IntToStr(DM.OstatkiKSM_ID.AsInteger)
               +' and trim(seria.seria) ='+''''+trim(DM.OstatkiSERIA.AsString)+'''',DM.UMC_DATA, DM.Tran_Select);
            //
            DM.Seria.ParamByName('KSMID').AsInteger:=DM.OstatkiKSM_ID.AsInteger;
            DM.Seria.Open;
            //
            if (SeriaID<>null) then
            begin
                DM.Seria.Locate('SERIA_ID',SeriaID,[]);
                if DM.SeriaSERIA_id.AsVariant<>null then
                begin
                   DM.Ostatki.edit;
                   DM.OstatkiSERIA_ID.AsVariant:=SeriaID;
                   DM.Ostatki.Post;
                end
            end
            else
            begin
            //
               DM.Seria.Insert;
               DM.AddSeria.ExecProc;
               DM.SeriaSERIA_ID.AsInteger:=DM.AddSeria.Params.ParamValues['SERIA_ID'];
               DM.SeriaKSM_ID.AsInteger:=DM.OstatkiKSM_ID.AsInteger;
               DM.SeriaSERIA.AsString:=DM.OstatkiSERIA.AsString;
               DM.Seria.Post;
               DM.Ostatki.Edit;
               DM.OstatkiSERIA_ID.AsInteger:=DM.Seria.FieldByName('SERIA_ID').AsInteger;
               // Ищем SPROD_ID по KSM_ID
               DM.Query.SQL.Clear;
               DM.Query.SQL.Text:='SELECT SPROD_ID FROM SPPROD WHERE SPPROD.KSM_ID = '+IntToStr(DM.OstatkiKSM_ID.AsInteger);
               DM.Query.Open;
               DM.OstatkiSPROD_ID.AsInteger:=DM.Query.FieldByName('SPROD_ID').AsInteger;
               DM.Query.Close;
               DM.Ostatki.Post;
               DM.Seria.Close;
            end;
          end
          else
          begin
            if DM.OstatkiSERIA_ID.AsInteger<>0 then
            begin
               //SeriaID:=DM.OstatkiSERIA_ID.AsInteger;
               SeriaID:=SelectToVarIB('SELECT seria_id FROM seria '
               +'WHERE seria.ksm_ID = '+IntToStr(DM.OstatkiKSM_ID.AsInteger)
               +' and trim(seria.seria) ='+''''+trim(DM.OstatkiSERIA.AsString)+'''',DM.UMC_DATA, DM.Tran_Select);
               DM.Seria.ParamByName('KSMID').AsInteger:=DM.OstatkiKSM_ID.AsInteger;
               DM.Seria.Open;
               if seriaid<>null then
               begin
                  DM.Seria.Locate('SERIA_ID',SeriaID,[]);
                  if DM.SeriaSERIA.AsString<>DM.OstatkiSERIA.AsString then
                  begin
                    DM.Seria.Edit;
                    DM.SeriaSERIA.AsString:=DM.OstatkiSERIA.AsString;
                    DM.Seria.Post;
                 end
                 else
                 begin
                    DM.Ostatki.edit;
                    DM.OstatkiSERIA_ID.AsVariant:=SeriaID;
                    DM.Ostatki.Post;
                 end;
                 DM.Seria.Close;
               end
               else
               begin
                 DM.Seria.Insert;
                 DM.AddSeria.ExecProc;
                 DM.SeriaSERIA_ID.AsInteger:=DM.AddSeria.Params.ParamValues['SERIA_ID'];
                 DM.SeriaKSM_ID.AsInteger:=DM.OstatkiKSM_ID.AsInteger;
                 DM.SeriaSERIA.AsString:=DM.OstatkiSERIA.AsString;
                 DM.Seria.Post;
                 DM.Ostatki.Edit;
                 DM.OstatkiSERIA_ID.AsInteger:=DM.Seria.FieldByName('SERIA_ID').AsInteger;
                 // Ищем SPROD_ID по KSM_ID
                 DM.Query.SQL.Clear;
                 DM.Query.SQL.Text:='SELECT SPROD_ID FROM SPPROD WHERE SPPROD.KSM_ID = '+IntToStr(DM.OstatkiKSM_ID.AsInteger);
                 DM.Query.Open;
                 DM.OstatkiSPROD_ID.AsInteger:=DM.Query.FieldByName('SPROD_ID').AsInteger;
                 DM.Query.Close;
                 DM.Ostatki.Post;
                 DM.Seria.Close;
               end;
            end;
            if DM.OstatkiKART_ID.AsVariant=NULL then
            begin
              DM.Ostatki.Edit;
              DM.AddOstatki.ExecProc;
              DM.OstatkiKART_ID.AsInteger:=DM.AddOstatki.Params.ParamValues['KART_ID'];
              // Ищем SPROD_ID по KSM_ID
              DM.Query.SQL.Clear;
              DM.Query.SQL.Text:='SELECT SPROD_ID FROM SPPROD WHERE SPPROD.KSM_ID = '+IntToStr(DM.OstatkiKSM_ID.AsInteger);
              DM.Query.Open;
              DM.OstatkiSPROD_ID.AsInteger:=DM.Query.FieldByName('SPROD_ID').AsInteger;
              DM.Query.Close;
              DM.Ostatki.Post;
            end;
          end;
        end;
        KartID:=DM.OstatkiKART_ID.AsInteger;
        DM.Ostatki.ApplyUpdates;
        EnableButtons(0);
        KSMID:=DM.QueryOstKSM_ID.AsInteger;
        DM.QueryOst.Cancel;
        DM.QueryOst.CancelUpdates;
        DM.Tran_Update.Commit;
        DM.QueryOst.Close;
        DM.QueryOst.Open;
   //     DM.QueryOst.Refresh;
        DM.QueryOst.Locate('KSM_ID',KSMID,[]);
        DM.Ostatki.Close;
        DM.Ostatki.Open;
        DM.Ostatki.Locate('KART_ID',KartID,[]);
      except
        on E:EIBInterbaseError do
        begin
          MessageDlg('Ошибка при вводе!', mtError, [mbOK], 0);
          //ShowMessage(E.Message);
          DM.Ostatki.CancelUpdates;
          DM.QueryOst.CancelUpdates;
          DM.Tran_Update.Rollback;
          EnableButtons(0);
          raise;
        end;
      end;
    finally
      DM.Ostatki.EnableControls;
      DM.QueryOst.EnableControls;
      Screen.Cursor:=OldCursor;
    end;
  end
  else
    DM.Ostatki.Edit
end;


procedure TFOstatki.EnableButtons(Mode: integer);
begin
  case Mode of
  0:
  begin  //  Начальное положение
    if DM.GruppaOper = 2 then   //расход
    begin
   //   AAddKart.Enabled:=False;
      if DM.STRUK_ID <> 273 then
        AAddSeria.Enabled:=False
      else
        AAddSeria.Enabled:=true;
      ADeleteKart.Enabled := False;
      AEditChet.Enabled := false;
    end
    else
    begin
      AAddKart.Enabled:=True;
      AAddSeria.Enabled:=True;
      ADeleteKart.Enabled := True;
      AEditChet.Enabled := true;
    end;
    AAccept.Enabled:=True;
    AViewKart.Enabled := True;
    AApplyChanges.Enabled:=False;
    ACancelChanges.Enabled:=False;
    DBGridEh1.ReadOnly:=False;
    DBGridEh2.ReadOnly:=False;
    DBGridEh1.Enabled:=True;
    DBGridEh2.Enabled:=True;
    DBNavigator1.Enabled:=True;
    DBLookupComboboxEh1.Enabled:=True;
  end;
  1:    // Внесены изменения в карточку
  begin
    AAddKart.Enabled:=False;
//    AAddSeria.Enabled:=False;
    AAccept.Enabled:=False;
    AApplyChanges.Enabled:=True;
    ACancelChanges.Enabled:=True;
    ATakeDolg.Enabled:=False;
    AReturnDolg.Enabled:=False;
    ACenaUch.Enabled := false;
    DBGridEh1.Enabled:=True;
    DBGridEh2.Enabled:=True;
    DBNavigator1.Enabled:=False;
    DBLookupComboboxEh1.Enabled:=False;
  end;
  2:   // Берём долг
  begin
    AAddKart.Enabled:=False;
    AAddSeria.Enabled:=False;
    AAccept.Enabled:=False;
    AApplyChanges.Enabled:=False;
    ACancelChanges.Enabled:=False;
    ATakeDolg.Enabled:=False;
    AReturnDolg.Enabled:=False;
    ACenaUch.Enabled:=True;
    DBGridEh1.ReadOnly:=True;
    DBGridEh1.Enabled:=True;
    DBGridEh2.Enabled:=True;
    DBNavigator1.Enabled:=True;
  end;
  3:   // Возвращаем долг
  begin
    AAddKart.Enabled:=False;
    AAddSeria.Enabled:=False;
    AAccept.Enabled:=False;
    AApplyChanges.Enabled:=False;
    ACancelChanges.Enabled:=False;
    ATakeDolg.Enabled:=False;
    AReturnDolg.Enabled:=False;
    ACenaUch.Enabled:=False;
    DBGridEh1.ReadOnly:=True;
    DBGridEh1.Enabled:=False;
    DBGridEh2.Enabled:=False;
    DBNavigator1.Enabled:=False;
  end;
  4:   // Режим просмотра
  begin
    AAddKart.Enabled:=False;
    AAddSeria.Enabled:=False;
    AAccept.Enabled:=False;
    ADeleteKart.Enabled := False;
    AApplyChanges.Enabled:=False;
    ACancelChanges.Enabled:=False;
    ATakeDolg.Enabled:=False;
    AReturnDolg.Enabled:=False;
    ACenaUch.Enabled:=True;
    DBGridEh1.ReadOnly:=True;
    DBGridEh2.ReadOnly:=True;
    DBGridEh1.Enabled:=True;
    DBGridEh2.Enabled:=True;
    DBNavigator1.Enabled:=True;
    DBLookupComboboxEh1.Enabled:=True;
  end;

  end;
end;

procedure TFOstatki.AAcceptExecute(Sender: TObject);
begin
//  if (DM.GruppaOper = 2) and (DM.QueryOst.UpdatesPending)
//    and (MessageDlg('Сформирвать документ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  if ((DM.OstatkiORG_RESERV.AsInteger <> 0) and
     (DM.Dokument.FieldByName('KLIENT_ID').AsInteger <> DM.OstatkiORG_RESERV.AsInteger)) then
  begin
    MessageDlg('Карточка зарезервирована для '+trim(DM.OstatkiORG_RESERV_NAM.AsString) , mtWarning, [mbOK], 0);
    exit;
  end;
  if (DM.GruppaOper = 2) and (DM.QueryOst.UpdatesPending) then
  begin
    If DM.QueryOst.State = dsEdit then DM.QueryOst.Post;
    ToolButton3.Click;
  end
  else
  begin
    AApplyChangesExecute(Sender);
    if (DM.OstatkiKART_ID.AsVariant<> NULL) and (Screen.ActiveForm=FOstatki) then
      ModalResult:=DM.OstatkiKART_ID.AsInteger+50;
  end;   
end;

procedure TFOstatki.AFindSprorgExecute(Sender: TObject);
begin
  if FindSprorg = nil then
     Application.CreateForm(TFindSprorg, FindSprorg);
  FindSprorg.DataBaseName:=DM.UMC_DATA;
  FindSprorg.ReadOnly:=True;
  FindSprorg.ShowModal;
end;

procedure TFOstatki.AMatExecute(Sender: TObject);
begin
  kart_mat:=1;
  if FKart = nil then
     Application.CreateForm(TFKart, FKart);
  if FKart.ShowModal=mrOk then
  begin
  end;
end;

procedure TFOstatki.DBGridEh2TitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
var NalInc: integer;
begin
////////////////////////////////////////////
// Наличие - только документальное. Так что
Exit;
///////////////////////////////////////////
  if Acol>2 then
  begin
    Inc(NalMode);
    if NalMode>3 then
    begin
      NalInc:=-2;
      NalMode:=1;
    end
    else NalInc:=1;
    DBGridEh2.FrozenCols:=DBGridEh2.FrozenCols-1;
    DBGridEh2.Columns[Acol].Visible:=False;
    DBGridEh2.Columns[Acol+NalInc].Visible:=True;
    DBGridEh2.FrozenCols:=DBGridEh2.FrozenCols+1;
    case NalMode of
    1: begin
      FDokument.GridEhColumnByName(DBGridEh1,'OT_DOKUM').Visible:=True;
      FDokument.GridEhColumnByName(DBGridEh1,'OT_S').Visible:=False;
      FDokument.GridEhColumnByName(DBGridEh1,'OT_FD').Visible:=False;
    end;
    2: begin
      FDokument.GridEhColumnByName(DBGridEh1,'OT_DOKUM').Visible:=False;
      FDokument.GridEhColumnByName(DBGridEh1,'OT_S').Visible:=True;
      FDokument.GridEhColumnByName(DBGridEh1,'OT_FD').Visible:=False;
    end;
    3: begin
      FDokument.GridEhColumnByName(DBGridEh1,'OT_DOKUM').Visible:=False;
      FDokument.GridEhColumnByName(DBGridEh1,'OT_S').Visible:=False;
      FDokument.GridEhColumnByName(DBGridEh1,'OT_FD').Visible:=True;
    end;
    end;
  end;
end;

procedure TFOstatki.ATakeDolgExecute(Sender: TObject);
begin
  Edit3.Text:=IntToStr(DM.OstatkiKART_ID.AsInteger);
  Edit4.Text:=DM.OstatkiNMAT.AsString;
  Edit5.Text:=DM.OstatkiSERIA.AsString;
  DolgKSM_ID:=DM.OstatkiKSM_ID.AsInteger;
  Panel7.Visible:=True;
  EnableButtons(2);
end;

procedure TFOstatki.AReturnDolgExecute(Sender: TObject);
begin
  if DM.OstatkiCdolg_prihod.AsFloat<>0 then
  begin
    OldCursor:=Screen.Cursor;
    Screen.Cursor:=crHourGlass;
    try
      DM.QueryDolgPrihod.Close;
      DM.QueryDolgPrihod.ParamByName('KART_ID').AsInteger:=DM.OstatkiKART_ID.AsInteger;
      DM.QueryDolgPrihod.Open;
    finally
      Screen.Cursor:=OldCursor;
    end;
    Panel8.Visible:=True;
    Edit8.Text:=IntToStr(DM.OstatkiKART_ID.AsInteger);
    Edit9.Text:=DM.OstatkiNMAT.AsString;
    Edit10.Text:=DM.OstatkiSERIA.AsString;
    DolgKSM_ID:=DM.OstatkiKSM_ID.AsInteger;
    EnableButtons(3);
    DBGridEh3.SetFocus;
  end;
end;

procedure TFOstatki.ASeriaExecute(Sender: TObject);
var KartID, KsmID: integer;
begin
  kart_mat:=0;
  if DM.Ostatki.IsEmpty then Exit;
  if FKart = nil then
     Application.CreateForm(TFKart, FKart);
  if FKart.ShowModal=mrOk then
  begin
  end;
end;

procedure TFOstatki.AAcceptDolgExecute(Sender: TObject);
var kol: double;
begin
  if (Edit6.Text='') or (DM.OstatkiKART_ID.AsInteger=StrToInt(Edit3.Text)) then Exit;
  try
    kol:=StrToFloat(Edit6.Text);
  except
    on EConvertError do
    begin
      ShowMessage('Неверный ввод');
      Exit;
    end;
  end;
  if kol<=0 then Exit;
  if DM.OstatkiOT_S.AsFloat < kol then
  begin
    ShowMessage('Нет такого количества!');
    Exit;
  end;
  TransferDolg(1,DM.OstatkiKART_ID.AsInteger,StrToInt(Edit3.Text),kol,0,DM.OstatkiKSM_ID.AsInteger,DolgKSM_ID);
  EnableButtons(0);
  Panel7.Visible:=False;
end;

procedure TFOstatki.AAcceptReturnExecute(Sender: TObject);
var kol: double;
begin
  if Edit7.Text='' then Exit;
  try
    kol:=StrToFloat(Edit7.Text);
  except
    on EConvertError do
    begin
      ShowMessage('Неверный ввод');
      Exit;
    end;
  end;
  if kol<=0 then Exit;
  if DM.QueryDolgPrihodSUMDOLG.AsFloat < kol then
  begin
    ShowMessage('Нет такого количества!');
    Exit;
  end;
  DM.Query.SQL.Clear;
  DM.Query.SQL.Text:='SELECT vdolg.DOC_ID, vdolg.DEST_ID, vdolg.DOLG, Kart.KSM_ID from VIEW_DOLG('+IntToStr(DM.QueryDolgPrihodSOURCE_ID.AsInteger)+',1) vdolg '
                     +'INNER JOIN Kart ON Kart.KART_ID = vdolg.DEST_ID WHERE vdolg.DEST_ID ='+IntToStr(DM.QueryDolgPrihodDEST_ID.AsInteger);
  DM.Query.Open;
  while not DM.Query.Eof do
  begin
    if kol<= DM.Query.FieldByName('DOLG').AsFloat then
    begin
      TransferDolg(2,StrToInt(Edit8.Text),DM.Query.FieldByName('DEST_ID').AsInteger,kol,DM.Query.FieldByName('DOC_ID').AsInteger,DolgKSM_ID,DM.Query.FieldByName('KSM_ID').AsInteger);
      break;
    end
    else
    begin
      TransferDolg(2,StrToInt(Edit8.Text),DM.Query.FieldByName('DEST_ID').AsInteger,DM.Query.FieldByName('DOLG').AsFloat,DM.Query.FieldByName('DOC_ID').AsInteger,DolgKSM_ID,DM.Query.FieldByName('KSM_ID').AsInteger);
      kol:=kol-DM.Query.FieldByName('DOLG').AsFloat;
    end;
    DM.Query.Next;
  end;
  DM.Query.Close;
  EnableButtons(0);
  Panel8.Visible:=False;
end;

procedure TFOstatki.ACancelDolgExecute(Sender: TObject);
begin
  EnableButtons(0);
  Panel7.Visible:=False;
end;

procedure TFOstatki.ACancelReturnExecute(Sender: TObject);
begin
  EnableButtons(0);
  Panel8.Visible:=False;
end;


procedure TFOstatki.TransferDolg(Mode, Source, Dest: integer; Dolg: double;
  DokOsnID, SourceKSM_ID, DestKSM_ID: integer);
var DocID: integer;
begin
  try
    DM.Tran_Select.CommitRetaining;
    DM.AddDokument.ExecProc;
    DocID:=DM.AddDokument.Params.ParamValues['DOC_ID'];
    DM.Dokument.Append;
    DM.Dokument.FieldByName('DOC_ID').AsInteger:=DocID;

    if mode=1 then DM.Dokument.FieldByName('NDOK').AsString:='Долг'+IntToStr(DocID)
    else DM.Dokument.FieldByName('NDOK').AsString:='Возв'+IntToStr(DocID);

    DM.Dokument.FieldByName('DATE_DOK').AsDateTime:=Date();
    DM.Dokument.FieldByName('DATE_OP').AsDateTime:=Date();
    DM.Dokument.FieldByName('KLIENT_ID').AsInteger:=DM.STRUK_ID;
    DM.Dokument.FieldByName('TIP_OP_ID').AsInteger:=5;
    DM.Dokument.FieldByName('TIP_DOK_ID').AsInteger:=8;
    DM.Dokument.FieldByName('ZADACHA_ID').AsString:=DM.ZADACHA_ID;
    DM.Dokument.FieldByName('STRUK_ID').AsInteger:=DM.STRUK_ID;
    if mode=2 then DM.Dokument.FieldByName('DOK_OSN_ID').AsInteger:=DokOsnId; // Возврат долга
    DM.Dokument.Post;
    DM.Kart.Append;
    DM.KartDOC_ID.AsInteger:=DocID;
    DM.KartKART_ID.AsInteger:=Source;
    DM.KartKOL_RASH.AsFloat:=Dolg;
    DM.KartKSM_ID.AsInteger:=SourceKSM_ID;
    DM.Kart.Post;
    DM.Kart.Append;
    DM.KartDOC_ID.AsInteger:=DocID;
    DM.KartKART_ID.AsInteger:=Dest;
    DM.KartKOL_PRIH.AsFloat:=Dolg;
    DM.KartKSM_ID.AsInteger:=DestKSM_ID;
    DM.Kart.Post;
    DM.Kart.ApplyUpdates;
  except
    DM.Tran_Select.Rollback;
  end;
end;

procedure TFOstatki.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  begin
    PostMessage((Sender as TWinControl).Handle,wm_KeyDown,VK_TAB,0);
  end;
end;

procedure TFOstatki.DBEditEh1Change(Sender: TObject);
begin
  if DM.MATRPR = '05' then
    DM.QueryOst.Locate('KOD_PROD',DBEditEh1.Text,[loPartialKey,loCaseInsensitive])
  else
    DM.QueryOst.Locate('ksm_id',DBEditEh1.Text,[loPartialKey,loCaseInsensitive]);
  DBGridEh2.Refresh;
end;

procedure TFOstatki.DBEditEh1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  kod :integer;
  IniUMC: TIniFile;
begin
  IniUMC := TIniFile.Create(DM_BUX.PuthINI+'UMC.Ini');
  DM.ConfigUMC.MacroByName('Usl').AsString := IniUMC.ReadString('Config', 'Usl_Struk', '');
  if DM.ConfigUMC.MacroByName('Usl').AsString = '' then
    DM.ConfigUMC.MacroByName('Usl').AsString := '0=0';
  DM.ConfigUMC.Active := false;
  DM.ConfigUMC.Active := true;
  FormToObject(FSklad,STRUK);
  Kod:=FSklad.ShowModal;
  if Kod <> -50 then
  begin
    DM.STRUK_ID := Kod-50;
    dm.precision_ :=SelectToVarIB('SELECT configumc."PRECISION" FROM configumc '
        +'WHERE configumc.struk_ID = '+IntToStr(DM.STRUK_ID),DM.UMC_DATA, DM.Tran_Select);
    if dm.precision_=null then dm.precision_:=0;
  end;
  IniUMC.Free;
  DM.ConfigUMC.MacroByName('Usl').AsString := '0=0';
  DM.ConfigUMC.Active := false;
  DM.ConfigUMC.Active := true;
  FormShow(FOstatki);
end;

procedure TFOstatki.DBEditEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    DBGridEh2.SetFocus;
  end;
end;

procedure TFOstatki.DBEditEh2Change(Sender: TObject);
begin
  if DM.MATRPR = '05' then
    DM.QueryOst.Locate('leknams',DBEditEh2.Text,[loPartialKey,loCaseInsensitive])
  else
    DM.QueryOst.Locate('Nmat',DBEditEh2.Text,[loPartialKey,loCaseInsensitive]);
  DBGridEh2.Refresh;
end;

procedure TFOstatki.DBEditEh3Change(Sender: TObject);
begin
  DM.QueryOst.Locate('SPKSM',DBEditEh3.Text,[loPartialKey]);
  DBGridEh2.Refresh;
end;

procedure TFOstatki.DBGridEh1ColExit(Sender: TObject);
begin
//  if (DBGridEh1.SelectedIndex>=14) then BitBtn4.SetFocus;
end;

procedure TFOstatki.CheckBox1Click(Sender: TObject);
begin
  Ediz2Check;
end;

procedure TFOstatki.CheckBox2Click(Sender: TObject);
begin
  NalCheck;
end;

procedure TFOstatki.ChooseSeria;
var
  SeriaID: integer;
begin
  DM.Seria.ParamByName('KSMID').AsInteger:=DM.OstatkiKSM_ID.AsInteger;
  DM.Seria.Open;
  if not DM.Seria.IsEmpty then
  begin
    DM.Seria.Last;
    if FSeria = nil then
      Application.CreateForm(TFSeria, FSeria);
    SeriaID:=FSeria.ShowModal;
    if SeriaID>50 then
    begin
      DM.OstatkiSERIA_ID.AsInteger:=SeriaID-50;
      DM.OstatkiSERIA.AsString:=DM.SeriaSERIA.AsString;
      DM.OstatkiSROK_GODN.AsDateTime:=DM.SeriaSROK_GODN.AsDateTime;
      DM.OstatkiPASPORT.AsString:=DM.SeriaPASPORT.AsString;
      DM.OstatkiSERTIF.AsString:=DM.SeriaSERTIF.AsString;
      DM.OstatkiDATE_SERTIF.AsDateTime:=DM.SeriaDATE_SERTIF.AsDateTime;
      //Перенос данных по карточке
      DM.Query.Close;
      DM.Query.SQL.Text:=' select first 1 kol_trans, nomu_id_trans, nomu_id_grp, '+
      ' kol_grp, ves_trans, vol_trans, vol_grp, ves_grp, seria_id, kart_id '+
      ' from ostatki '+
      ' where ostatki.seria_id= '+IntToStr(SeriaID-50) + 'and struk_id <> '+IntToStr(DM.STRUK_ID)+
      ' order by  kart_id desc ';
      DM.Query.Open;
      if DM.Query.RecordCount <> 0 then
      begin
        if  DM.OstatkiKOL_TRANS.AsFloat = 0 then
          DM.OstatkiKOL_TRANS.AsFloat:=DM.Query.FieldByName('kol_trans').AsFloat;
        DM.OstatkiNOMU_ID_TRANS.AsInteger:=DM.Query.FieldByName('Nomu_id_trans').AsInteger;
        DM.OstatkiNOMU_ID_GRP.AsInteger:=DM.Query.FieldByName('Nomu_id_grp').AsInteger;
        if DM.OstatkiKOL_GRP.AsFloat = 0 then
          DM.OstatkiKOL_GRP.AsFloat:=DM.Query.FieldByName('kol_grp').AsFloat;
        if DM.Ostatkives_TRANS.AsFloat = 0 then
          DM.Ostatkives_TRANS.AsFloat:=DM.Query.FieldByName('ves_trans').AsFloat;
        if DM.Ostatkivol_TRANS.AsFloat = 0 then
          DM.Ostatkivol_TRANS.AsFloat:=DM.Query.FieldByName('vol_trans').AsFloat;
        if DM.OstatkiVES_GRP.AsFloat = 0 then
          DM.OstatkiVES_GRP.AsFloat:=DM.Query.FieldByName('ves_grp').AsFloat;
      end;
      if (dm.upak_id2>0) then
      begin
          DM.OstatkiNOMU_ID_TRANS.AsInteger:=dm.upak_id2;//FUpak.upak_id;
          dm.OstatkiVOL_TRANS.AsFloat:=fupak.vol_upak;
      end;
    end;
  end;

  DM.Seria.Close;
end;

procedure TFOstatki.AViewKartExecute(Sender: TObject);
var KartID, KsmID: integer;
begin
  if DM.Ostatki.IsEmpty then Exit;
  if FKart = nil then
     Application.CreateForm(TFKart, FKart);
  if FKart.ShowModal=mrOk then
  begin
  end;
end;

procedure TFOstatki.ADeleteKartExecute(Sender: TObject);
begin
  if DM.Ostatki.IsEmpty then Exit;
  if (FDialog.Execute('Удалить строку?')=mrYes) then
  begin
    DM.Ostatki.DisableControls;
    DM.Ostatki.Delete;
    try
      try
        DM.Tran_Update.StartTransaction;
        DM.Ostatki.ApplyUpdates;
        DM.Tran_Update.Commit;
        if not DM.YESSERIA then
          DM.QueryOst.Delete;
      except
        on E:EIBInterbaseError do
        begin
          ShowMessage(E.Message);
          DM.Ostatki.CancelUpdates;
          DM.Tran_Update.Rollback;
        end;
      end;
    finally
      DM.Ostatki.EnableControls;
    end;
  end;
end;

procedure TFOstatki.ComboBox1CloseUp(Sender: TObject);
begin
  if dm.IBMatr_prPRMAT.AsString='05' then DM.QueryOst.MacroByName('PRMAT').AsString:='Matrop.PRMAT = ''05'''
  else DM.QueryOst.MacroByName('PRMAT').AsString:='Matrop.PRMAT = '+dm.IBMatr_prPRMAT.AsString;
  DM.Ostatki.Close;
  DM.QueryOst.Close;
  DM.QueryOst.Open;
  DM.Ostatki.Open;
end;

procedure TFOstatki.DBLookupComboboxEh1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
  if dm.IBMatr_prPRMAT.AsString='05' then DM.QueryOst.MacroByName('PRMAT').AsString:='Matrop.PRMAT = ''05'''
  else DM.QueryOst.MacroByName('PRMAT').AsString:='Matrop.PRMAT = '+dm.IBMatr_prPRMAT.AsString;
  //DM.MATRPR := dm.IBMatr_prPRMAT.AsString;
  IzmPrMat;
  OldKodCheck;
  DM.Ostatki.Close;
  DM.QueryOst.Close;
  DM.QueryOst.Open;
  DM.Ostatki.Open;
end;

procedure TFOstatki.DBGridEh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN)  and (DM.GruppaOper = 1) then  //Нажат ВВОД и приход
  begin
    if (not DM.YESSERIA) then AAcceptExecute(Sender)
    else DBGridEh1.SetFocus;
  end;
end;

procedure TFOstatki.DBGridEh2DblClick(Sender: TObject);
begin
  if DM.GruppaOper = 1  then // приход
    if not DM.YESSERIA then AAcceptExecute(Sender)
    else DBGridEh1.SetFocus;
end;

procedure TFOstatki.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  If DM.QueryOstDM.AsFloat <> 0 then
    Background := $00CEDEFF;
  If (DM.QueryOstKol_DM.AsFloat = 0) and (DM.QueryOstDM.AsFloat <> 0) then
    Background := clYellow;
  If DM.QueryOstKOL_RASH.AsFloat <> 0 then
    Background := clSkyBlue;
end;

procedure TFOstatki.ToolButton3Click(Sender: TObject);
begin
  //FormDocument;
  DM.QueryOst.Close;
  Close;
end;

procedure TFOstatki.ToolButton9Click(Sender: TObject);
begin
  PopupMenu2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFOstatki.FormDocument;
begin
  try
    DM.QueryOst.DisableControls;
    DM.QueryOst.First;
    While not DM.QueryOst.Eof do
    begin
      if DM.QueryOst.FieldByName('Kol_Rash').AsFloat <> 0 then
      begin
        DM.Kart.Insert;
        DM.Query.SQL.Clear;
        DM.Query.SQL.Text:='SELECT Ost.KART_ID,matrop.kei_id, ediz.neis FROM OSTATKI Ost '+
           ' inner join matrop on ost.ksm_id = matrop.ksm_id '+
           ' inner join ediz on matrop.kei_id = ediz.kei_id '+
           'WHERE Ost.STRUK_ID = '+IntToStr(DM.STRUK_ID)+' AND Ost.KSM_ID = '+IntToStr(DM.QueryOst.FieldByName('KSM_ID').AsInteger);
        DM.Query.Open;
        DM.Kart.FieldByName('KART_ID').AsInteger:=DM.Query.FieldByName('KART_ID').AsInteger;
        DM.Kart.FieldByName('KEI_ID').AsInteger:=DM.Query.FieldByName('KEI_ID').AsInteger;
        DM.Kart.FieldByName('NEIS').AsString :=DM.Query.FieldByName('NEIS').AsString;
        DM.Kart.FieldByName('DOC_ID').AsInteger:=DM.Dokument.FieldByName('DOC_ID').AsInteger;
        DM.Kart.FieldByName('KSM_ID').AsInteger:=DM.QueryOst.FieldByName('KSM_ID').AsInteger;
        DM.Kart.FieldByName('Kol_Rash').AsString := DM.QueryOst.FieldByName('KOL_RASH').AsString;
        DM.KartCENA.AsFloat := DM.QueryOst.FieldByName('OPT_CENA').AsFloat;
        DM.KartCENA_VP.AsFloat := DM.QueryOst.FieldByName('OPT_CENA').AsFloat;
        DM.Kart.Post;
        DM.Query.Close;
      end;
      DM.QueryOst.Next;
    end;
  finally
    DM.QueryOst.EnableControls;
  end;
end;

procedure TFOstatki.DBGridEh2Columns14EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  if DragMet = nil then
     Application.CreateForm(TDragMet, DragMet);
  if DM.QueryOstDM.AsInteger <> 0 then
  begin
    DragMet.KSM_ID := DM.QueryOstKSM_ID.AsInteger;
    DragMet.NMAT := DM.QueryOstNMAT.AsString;
    DragMet.ShowModal;
  end
  else
    MessageDlg('Введите в справочник признак содержания драгметаллов!', mtWarning, [mbOK], 0);
end;

end.
