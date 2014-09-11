unit prixcex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,dm, FindDlgEh, Menus, ImgList, Grids, DBGridEh, ComCtrls, ToolWin,
  DBCtrls, StdCtrls, Mask, ExtCtrls, DBGrids,db, IBCustomDataSet, IBQuery,
  SplshWnd, ToolEdit,IB, Spin, RxIBQuery, FR_DSet, FR_DBSet, FR_Class, PrnDbgeh;
type
  TFprixcex = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    FindDlgEh1: TFindDlgEh;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label7: TLabel;
    Label9: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DBGridEh3: TDBGridEh;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ImageList1: TImageList;
    Ost_ksm: TIBQuery;
    DSOst_ksm: TDataSource;
    Ost_ksmOT_S: TFMTBCDField;
    Ost_ksmSERIA: TIBStringField;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    FindDlgEh2: TFindDlgEh;
    Panel1: TPanel;
    DBGridEh2: TDBGridEh;
    Panel2: TPanel;
    Label3: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    CheckBox1: TCheckBox;
    Label13: TLabel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    Label4: TLabel;
    Panel7: TPanel;
    DBNavigator1: TDBNavigator;
    PrixPrep: TRxIBQuery;
    DSPrixPrep: TDataSource;
    PrixPrepNDOK: TIBStringField;
    PrixPrepKOD_PROD: TIBStringField;
    PrixPrepNMAT: TIBStringField;
    PrixPrepXARKT: TIBStringField;
    PrixPrepNEIS: TIBStringField;
    PrixPrepKRAZ: TSmallintField;
    PrixPrepKOL_PRIH: TFMTBCDField;
    Label2: TLabel;
    DBGridEh5: TDBGridEh;
    PrixPrepDATE_DOK: TDateField;
    frReport1: TfrReport;
    ToolButton4: TToolButton;
    frDBDataSet1: TfrDBDataSet;
    PrixKart: TIBQuery;
    PrixKartKSM_ID: TIntegerField;
    PrixKartKOL_PRIX: TFMTBCDField;
    PrixKartNMAT: TIBStringField;
    PrixKartNEIS: TIBStringField;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    ToolButton5: TToolButton;
    DBGridEh4: TDBGridEh;
    procedure activatePrixRasx;
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure DateEdit2Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGridEh3SortMarkingChanged(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprixcex: TFprixcex;

  Splash: TForm;
  AniBmp1: TBitmap;
  SUM_PL: DOUBLE;
  SUM_FACT: DOUBLE;
  SUM_RASPR: DOUBLE;
implementation

uses ViborPerioda, New_Prix, TipOp,GlMenu,OstSyr;

{$R *.dfm}

procedure TFprixcex.activatePrixRasx;
begin
  DM1.PrixRasx.Active := False;
  DM1.PrixRasx.MacroByName('SDAT').AsString:= Usl_DAT;
  DM1.PrixRasx.MacroByName('STIP').AsString:= Usl_TIP;
  DM1.PrixRasx.MacroByName('CEX').AsString:= Usl_Struk;
  DM1.PrixRasx.MacroByName('SORT').AsString:= Usl_SORT;
  DM1.PrixRasx.MacroByName('GR_OP').AsString:= Usl_GROP;
  dm1.PrixRasx.ParamByName('dat2').AsDate := StrToDate(s_dat2_period) + 1;
  dm1.PrixRasx.ParamByName('struk_id').AsInteger := vStruk_Id;
  DM1.PrixRasx.Active := True;
end;

procedure TFprixcex.ToolButton6Click(Sender: TObject);
begin
if FviborPerioda=nil then FviborPerioda:=TFviborPerioda.Create(Application);
 FviborPerioda.ShowModal;
// label8.Caption:=s_dat1_period;
// label10.Caption:=s_dat2_period;
end;

procedure TFprixcex.ToolButton4Click(Sender: TObject);
var
  F_column: string;
begin
  F_column := FindDlgEh1.VerbalUsl.Text;
  printdbgrideh1.Title.Text := 'Приходы сырья в цех. ' + FGlMenu.RXLabel1.Caption
                               + '.  В период с ' + s_dat1 + ' по ' + s_dat2
                               + #13 + #10 + ' Условие выборки: ' + F_column;
  printdbgrideh1.Preview;
//FrReport1.LoadFromFile(programPath + 'P_Prixod.frf');
// FrReport1.ShowReport; 
end;

procedure TFprixcex.ToolButton5Click(Sender: TObject);
begin
S_ksm:=dm1.PrixRasxKsm_id.AsInteger;
 FOstSyr.Edit1.text:=inttostr(dm1.PrixRasxKsm_id.AsInteger);
 FOstSyr.Label7.Caption:=dm1.PrixRasxNmat.AsString;
 FOstSyr.label8.Caption:=dm1.PrixRasxNeis.AsString;
 FOstSyr.DateEdit3.Date:=strtodate(s_dat1_period);
 FOstSyr.DateEdit4.Date:=strtodate(s_dat2_period);
if FOstSyr=nil then FOstSyr:=TFOstSyr.Create(Application);
  FOstSyr.ShowModal;
end;

procedure TFprixcex.FormCreate(Sender: TObject);
begin
  s_dat1_period := s_dat1;
  s_dat2_period :=datetostr(date);
  label13.Visible := false;
end;

procedure TFprixcex.ToolButton8Click(Sender: TObject);
begin
  PopupMenu1.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
end;

procedure TFprixcex.N1Click(Sender: TObject);
begin
Usl_Sort:=' Matrop.Nmat';
IF DBGRIDEH3.Focused THEN BEGIN
  activatePrixRasx;
END;
IF DBGRIDEH2.Focused THEN BEGIN
 Usl_grop:=' TIP_OPER.GR_OP_ID=1 and Kart.kol_prih<>0';
DM1.PrixRasSyr.Active := False;
DM1.PrixRasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= Usl_GROP;
DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
DM1.PrixRasSyr.MacroByName('SORT').AsString:= Usl_SORT;
DM1.PrixRasSyr.Active := True;
END;
IF DBGRIDEH1.Focused THEN BEGIN
Usl_Sort:=' Spprod.Nmat';
Usl_tip:=' (document.Tip_op_id=30 or document.Tip_op_id=21)';
usl_dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
//+' and utplan.mes='+inttostr(mes)+' and utplan.god='+inttostr(god);
PrixPrep.Active := False;
PrixPrep.MacroByName('SDAT').AsString:= Usl_DAT;
PrixPrep.MacroByName('STIP').AsString:= Usl_TIP;
PrixPrep.MacroByName('CEX').AsString:= Usl_Struk;
//PrixPrep.MacroByName('SORT').AsString:= Usl_SORT;
PrixPrep.Active := True;
END;
end;

procedure TFprixcex.N2Click(Sender: TObject);
begin
  Usl_Sort:=' Document.date_dok';
  activatePrixRasx;
end;

procedure TFprixcex.ToolButton1Click(Sender: TObject);
begin
VDocument_Id:=0;
vKart_id:=0;
vStroka_id:=0;
vPostPol:='Поставщик:';
if FNew_Prix=nil then FNew_Prix:=TFNew_prix.Create(Application);
 FNew_Prix.ShowModal;
 if dm1.PrixRasx.Active then dm1.PrixRasx.Close;
 activatePrixRasx;
 DBGridEh3.Refresh;
end;

procedure TFprixcex.PageControl1Change(Sender: TObject);

begin
// Splash := ShowSplashWindow(AniBmp1,
// 'Загрузка данных. Подождите, пожалуйста...', True, nil);
 if PageControl1.ActivePage=tabsheet2 then
 BEGIN
  s_ksm:=DM1.PrixRasxKsm_id.Asinteger;
  Usl_Ksm:=' KART.KSM_ID='+inttostr(DM1.PrixRasxKsm_id.Asinteger);
  Usl_Sort:=' spprod.nmat';
  Usl_tip:=' (document.Tip_op_id=30 or document.Tip_op_id=21)';
  usl_dat:=' Document.Date_dok between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  PrixPrep.Active :=False;
  PrixPrep.MacroByName('SDAT').AsString:= Usl_DAT;
  PrixPrep.MacroByName('STIP').AsString:= Usl_TIP;
  PrixPrep.MacroByName('CEX').AsString:= Usl_Struk;
  PrixPrep.MacroByName('Sksm').AsString:=Usl_Ksm;
  PrixPrep.Active:=true;
  PrixPrep.First;
  Usl_tip:=' 0=0';
  usl_dat:=' Document.Date_dok between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  Usl_Sort:=' Document.date_op';
  Usl_grop:=' TIP_OPER.GR_OP_ID=1 and Kart.kol_prih<>0';
  DM1.PrixRasSyr.Active := False;
  DM1.PrixRasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
  DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= Usl_GROP;
  DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
  DM1.PrixRasSyr.MacroByName('SORT').AsString:= Usl_SORT;
  DM1.PrixRasSyr.MacroByName('Sksm').AsString:=Usl_Ksm;
  DM1.PrixRasSyr.Active := True;
  OST_KSM.Close;
  OST_KSM.ParamByName('STRUK').AsiNTEGER:= VStruk_ID;
  OST_KSM.ParamByName('ksm').AsInteger:=DM1.PrixRasxKsm_id.Asinteger;
  Ost_ksm.ParamByName('DAT1').AsDateTime:=strtodate(S_DAT1);
  Ost_ksm.ParamByName('DAT2').AsDateTime:=strtodate(S_DAT2);
  OST_KSM.Active:=TRUE;
 END
 ELSE
 BEGIN
  Usl_tip:='kart.kol_prih<>0';
  Usl_grop:=' TIP_OPER.GR_OP_ID=1';
  Usl_Sort:=' MATROP.Nmat';
  usl_dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  activatePrixRasx;
  DM1.PrixRasx.Locate('ksm_id',s_ksm,[]);
 END;
 Splash.Free;
end;

procedure TFprixcex.ToolButton3Click(Sender: TObject);
begin
//Сохранение внесенных измененний по документу
 if DM1.Document.Modified then
     DM1.Document.Post;
  if DM1.Kart.Modified then
     DM1.Kart.Post;
  if (DM1.Document.UpdatesPending) or (DM1.Kart.UpdatesPending) then
  begin
   if MessageDlg('Записать изменения?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
     dm1.ApplyUpdatesDoc
    else
      dm1.CancelUpdatesDoc;
  end;

end;

procedure TFprixcex.ToolButton2Click(Sender: TObject);

begin
PopupMenu2.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);

end;

procedure TFprixcex.N3Click(Sender: TObject);
begin
  Usl_Sort:=' Document.Klient';
  activatePrixRasx;
end;

procedure TFprixcex.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF DM1.Kart.Active THEN DM1.Kart.Close;
  IF DM1.PrixRasx.Active THEN DM1.PrixRasx.active := false;
  IF DM1.Document.Active THEN DM1.Document.Close;
  IF DM1.Ostatki.Active THEN DM1.Ostatki.Close;
  DM1.PrixRasx.AfterScroll:=DM1.PrixRasxAfterScroll;
end;

procedure TFprixcex.N4Click(Sender: TObject);

begin
// Удаление документа
  if MessageDlg('Удалять документ? ',
     mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
   DM1.DeleteDocument.ParamByName('NDOC_ID').AsInteger:=DM1.PrixRasx.FieldByName('DOC_ID').AsInteger;
   try
    DM1.DeleteDocument.ExecProc;
    DM1.IBT_Write.Commit;
   except
     on E:EIBInterbaseError do
     begin
      ShowMessage(E.Message);
      DM1.IBT_Write.rollback;
     end;
   end;
   dm1.PrixRasx.Close;
   DM1.PrixRasx.MacroByName('SDAT').AsString:= Usl_DAT;
   DM1.PrixRasx.MacroByName('STIP').AsString:= Usl_TIP;
   DM1.PrixRasx.MacroByName('GR_OP').AsString:= Usl_GROP;
   DM1.PrixRasx.MacroByName('CEX').AsString:= Usl_Struk;
   DM1.PrixRasx.MacroByName('SORT').AsString:= Usl_SORT;
   DM1.PrixRasx.Open;
   DM1.PrixRasx.First;
  end;
end;

procedure TFprixcex.N5Click(Sender: TObject);
begin
if MessageDlg('Удалять запись? ',
     mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    try
      vDocument_id:=DM1.PrixRasx.FieldByName('DOC_ID').AsInteger;
      IF DM1.Kart.Active THEN
      DM1.Kart.Close;
      DM1.Kart.MacroByName('USL').AsString:='WHERE KART.DOC_ID='+INTTOSTR(vDocument_id);
      DM1.Kart.Open;
      DM1.Kart.First;
      IF DM1.Kart.Locate('KSM_ID',DM1.PrixRasx.FieldByName('KSM_ID').AsInteger,[]) THEN
        DM1.Kart.Delete;
      DM1.Kart.ApplyUpdates;
      DM1.IBT_Write.Commit;

{     IF DM1.Kart.RecordCount=0 THEN
     begin
      DM1.Document.Open;
      IF DM1.Document.Locate('DOC_ID',vDocument_iD,[]) THEN
      DM1.Document.Delete;
     end;
     DM1.ApplyUpdatesDoc; }
      s_Usl_Sort:=Usl_Sort;
      Usl_Sort:=' Document.Doc_id';
      dm1.PrixRasx.Close;
      DM1.PrixRasx.MacroByName('SDAT').AsString:= Usl_DAT;
      DM1.PrixRasx.MacroByName('STIP').AsString:= Usl_TIP;
      DM1.PrixRasx.MacroByName('GR_OP').AsString:= Usl_GROP;
      DM1.PrixRasx.MacroByName('CEX').AsString:= Usl_Struk;
      DM1.PrixRasx.MacroByName('SORT').AsString:= Usl_SORT;
      DM1.PrixRasx.Open;
      DM1.PrixRasx.First;
    except
      On E: Exception do
      begin
        MessageDlg('Произошла ошибка при удалении документа!'+E.Message, mtWarning, [mbOK], 0);
        Abort;
      end;
    end;
    dbGridEh3.Refresh;
  end;
end;

procedure TFprixcex.N6Click(Sender: TObject);
begin
  Usl_Sort:=' Document.doc_id';
  activatePrixRasx;
end;

procedure TFprixcex.FormShow(Sender: TObject);
begin
  //Splash := ShowSplashWindow(AniBmp1,
  // 'Загрузка данных. Подождите, пожалуйста...', True, nil);
  DM1.PrixRasx.AfterScroll := NIL;
  DateEdit1.OnChange := nil;
  DateEdit2.OnChange := nil;
  DateEdit1.Date := strtodate(s_dat1);
  DateEdit2.Date := date;
  DateEdit1.OnChange := DateEdit1Change;
  DateEdit2.OnChange := DateEdit2Change;
  dm1.IBT_WRITE.Active := FALSE;
  dm1.IBT_READ.Active := FALSE;
  If not dm1.IBT_Read.Active then
    dm1.IBT_Read.StartTransaction;
  s_zag := 'Приход сырья в цех';
  vKol := 'KOL_PRIH_ediz';
  Usl_Dat := ' Document.Date_op between ' + '''' + s_dat1_period + '''' + ' and ' + '''' + s_dat2_period + '''';
  Usl_TIP := ' 0=0';
  Usl_Struk := ' Document.Struk_id=' + inttostr(vStruk_id);
  Usl_Sort := ' MATROP.Nmat';
  vGr_Op_Id := 'TIP_OPER.GR_OP_ID=1';
  DM1.TipDok.Active := False;
  DM1.TipDok.MacroByName('STIP').AsString := 'TIP_OPER.GR_OP_ID=1';
  dm1.TipDok.Active := true;
  Usl_GROP := ' TIP_OPER.GR_OP_ID=1';
  Usl_Tip := 'kart.kol_prih<>0';
  activatePrixRasx;
  PrixKart.Active := False;
  PrixKart.ParamByName('dat1').AsDateTime := strtodate(s_dat1_period);
  PrixKart.ParamByName('dat2').AsDateTime := strtodate(s_dat2_period);
  PrixKart.ParamByName('struk').AsInteger := vstruk_id;
  PrixKart.Active := true;
  PageControl1.ActivePage := tabsheet1;
end;

procedure TFprixcex.frReport1GetValue(const ParName: string;
  var ParValue: Variant);
begin
  if (ParName = 'dat1') then
    ParValue:=s_dat1_period;
  if (ParName = 'namceh') then
    ParValue := FGlMenu.RxLabel1.Caption;
  if (ParName = 'dat2') then
    ParValue := s_dat2_period;
end;

procedure TFprixcex.DateEdit1Change(Sender: TObject);
begin
s_dat1_period:=datetostr(DateEdit1.Date);
 if PageControl1.ActivePage=tabsheet2 then
 BEGIN
  s_ksm:=DM1.PrixRasxKsm_id.Asinteger;
  Usl_Ksm:=' KART.KSM_ID='+inttostr(DM1.PrixRasxKsm_id.Asinteger);
  Usl_Sort:=' spprod.nmat';
  Usl_tip:=' (document.Tip_op_id=30 or document.Tip_op_id=21)';
  usl_dat:=' Document.Date_dok between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  PrixPrep.Active :=False;
  PrixPrep.MacroByName('SDAT').AsString:= Usl_DAT;
  PrixPrep.MacroByName('STIP').AsString:= Usl_TIP;
  PrixPrep.MacroByName('CEX').AsString:= Usl_Struk;
  PrixPrep.MacroByName('Sksm').AsString:=Usl_Ksm;
  PrixPrep.Active:=true;
  PrixPrep.First;
  Usl_tip:=' 0=0';
  usl_dat:=' Document.Date_dok between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  Usl_Sort:=' Document.date_op';
  Usl_grop:=' TIP_OPER.GR_OP_ID=1 and Kart.kol_prih<>0';
  DM1.PrixRasSyr.Active := False;
  DM1.PrixRasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
  DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= Usl_GROP;
  DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
  DM1.PrixRasSyr.MacroByName('SORT').AsString:= Usl_SORT;
  DM1.PrixRasSyr.MacroByName('Sksm').AsString:=Usl_Ksm;
  DM1.PrixRasSyr.Active := True;
  OST_KSM.Close;
  OST_KSM.ParamByName('STRUK').AsiNTEGER:= VStruk_ID;
  OST_KSM.ParamByName('ksm').AsInteger:=DM1.PrixRasxKsm_id.Asinteger;
  Ost_ksm.ParamByName('DAT1').AsDateTime:=strtodate(S_DAT1);
  Ost_ksm.ParamByName('DAT2').AsDateTime:=strtodate(S_DAT2);
  OST_KSM.Active:=TRUE;
 END
 ELSE
 BEGIN
  Usl_Dat:=' Document.Date_doK between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  activatePrixRasx;
 end;
end;

procedure TFprixcex.DateEdit2Change(Sender: TObject);
begin
s_dat2_period:=datetostr(DateEdit2.Date);
if PageControl1.ActivePage=tabsheet2 then
BEGIN
  s_ksm:=DM1.PrixRasxKsm_id.Asinteger;
  Usl_Ksm:=' KART.KSM_ID='+inttostr(DM1.PrixRasxKsm_id.Asinteger);
  Usl_Sort:=' spprod.nmat';
  Usl_tip:=' (document.Tip_op_id=30 or document.Tip_op_id=21)';
  usl_dat:=' Document.Date_dok between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  PrixPrep.Active :=False;
  PrixPrep.MacroByName('SDAT').AsString:= Usl_DAT;
  PrixPrep.MacroByName('STIP').AsString:= Usl_TIP;
  PrixPrep.MacroByName('CEX').AsString:= Usl_Struk;
  PrixPrep.MacroByName('Sksm').AsString:=Usl_Ksm;
  PrixPrep.Active:=true;
  PrixPrep.First;
  Usl_tip:=' 0=0';
  usl_dat:=' Document.Date_dok between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  Usl_Sort:=' Document.date_op';
  Usl_grop:=' TIP_OPER.GR_OP_ID=1 and Kart.kol_prih<>0';
  DM1.PrixRasSyr.Active := False;
  DM1.PrixRasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
  DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= Usl_GROP;
  DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
  DM1.PrixRasSyr.MacroByName('SORT').AsString:= Usl_SORT;
  DM1.PrixRasSyr.MacroByName('Sksm').AsString:=Usl_Ksm;
  DM1.PrixRasSyr.Active := True;
  OST_KSM.Close;
  OST_KSM.ParamByName('STRUK').AsiNTEGER:= VStruk_ID;
  OST_KSM.ParamByName('ksm').AsInteger:=DM1.PrixRasxKsm_id.Asinteger;
  Ost_ksm.ParamByName('DAT1').AsDateTime:=strtodate(S_DAT1);
  Ost_ksm.ParamByName('DAT2').AsDateTime:=strtodate(S_DAT2);
  OST_KSM.Active:=TRUE;
 END
 ELSE
 BEGIN
  Usl_Dat:=' Document.Date_doK between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  activatePrixRasx;
 end;
end;

procedure TFprixcex.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked=false then
 begin
 label13.Visible:=false;
 Usl_GROP:=' TIP_OPER.GR_OP_ID=1';
 Usl_TIP:=' 0=0';
 Usl_sort:=' matrop.nmat';
 activatePrixRasx;
end
else
begin
 if FtipOp=nil then FTipOP:=TfTipOp.Create(Application);
 DM1.FormToObject(FTipOp,CheckBox1);
 FTipOp.ShowModal;
 label13.Visible:=true;
 label13.Caption:=s_nam_Tip_Op;
 if FTipOp.ModalResult > 50 then
 begin
  vTip_op_id:=FTipOp.ModalResult-50;
  Usl_tip:=' Document.Tip_op_id='+inttostr(vTip_op_id);
 end
 else
 begin
   CheckBox1.OnClick:=nil;
   CheckBox1.Checked:=false;
   CheckBox1.OnClick:=CheckBox1Click;
   Usl_tip:=' 0=0'
 end;
 Usl_grop:='0=0';
 Usl_sort:=' matrop.nmat';
 activatePrixRasx;
 end;
end;

procedure TFprixcex.DBGridEh3SortMarkingChanged(Sender: TObject);

var
  i :Integer;
begin
 Usl_Sort := '';
 for i := 0 to DBGridEh3.SortMarkedColumns.Count-1 do
 BEGIN
  if DBGridEh3.SortMarkedColumns[i].Title.SortMarker = smUpEh then
  begin
   if DBGridEh3.SortMarkedColumns[i].FieldName='KSM_ID' then
    Usl_Sort := USL_Sort+ 'Kart."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
   else
   Usl_Sort := USL_Sort + '"'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
  end
  else
  begin
   if DBGridEh3.SortMarkedColumns[i].FieldName='KSM_ID' then
    Usl_Sort := USL_Sort+ 'Kart."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', '
   else
    Usl_Sort := Usl_Sort + '"'+DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', ';
  end;
 END;
 if Usl_Sort <> '' then
 begin
  Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
  activatePrixRasx;
 end;
end;

procedure TFprixcex.SpinEdit3Change(Sender: TObject);
begin
{ mes:=SpinEdit3.Value;
 Usl_Ksm:=' KART.KSM_ID='+inttostr(DM1.PrixRasxKsm_id.Asinteger);
  Usl_Sort:=' spprod.nmat';
  Usl_tip:=' (document.Tip_op_id=30)';
  usl_dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  PrixPrep.Active :=False;
  PrixPrep.MacroByName('SDAT').AsString:= Usl_DAT;
  PrixPrep.MacroByName('STIP').AsString:= Usl_TIP;
  PrixPrep.MacroByName('CEX').AsString:= Usl_Struk;
//  PrixPrep.MacroByName('SORT').AsString:= Usl_SORT;
  PrixPrep.MacroByName('Sksm').AsString:=Usl_Ksm;
  PrixPrep.Active:=true;
  PrixPrep.First;
  SUM_PL:=0;
  SUM_FACT:=0;
  WHILE NOT DM1.PrixPrep.Eof DO
  BEGIN
   SUM_PL:=SUM_PL+DM1.PrixPrepPlPRIH.AsFloat;
   SUM_FACT:=SUM_FACT+DM1.PrixPrepKOL_PRIH.AsFloat;
   DM1.PrixPrep.Next;
  END;
  DM1.PrixPrep.EnableControls;
  SUM_RASPR:=SUM_PL-SUM_FACT;
  if sum_raspr<0.0001 then sum_raspr:=0;
  EDIT1.Text:=floatTOSTRf(SUM_RASPR,ffGeneral,7,15);}
end;

procedure TFprixcex.SpinEdit4Change(Sender: TObject);
begin
{ god:=SpinEdit4.Value;
 Usl_Ksm:=' KART.KSM_ID='+inttostr(DM1.PrixRasxKsm_id.Asinteger);
  Usl_Sort:=' spprod.nmat';
  Usl_tip:=' (document.Tip_op_id=30 or document.Tip_op_id=21)';
  usl_dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  PrixPrep.Active :=False;
  PrixPrep.MacroByName('SDAT').AsString:= Usl_DAT;
  PrixPrep.MacroByName('STIP').AsString:= Usl_TIP;
  PrixPrep.MacroByName('CEX').AsString:= Usl_Struk;
//  PrixPrep.MacroByName('SORT').AsString:= Usl_SORT;
  PrixPrep.MacroByName('Sksm').AsString:=Usl_Ksm;
  PrixPrep.Active:=true;
  PrixPrep.First;
  SUM_PL:=0;
  SUM_FACT:=0;
  WHILE NOT DM1.PrixPrep.Eof DO
  BEGIN
   SUM_PL:=SUM_PL+DM1.PrixPrepPlPRIH.AsFloat;
   SUM_FACT:=SUM_FACT+DM1.PrixPrepKOL_PRIH.AsFloat;
   DM1.PrixPrep.Next;
  END;
  DM1.PrixPrep.EnableControls;
  SUM_RASPR:=SUM_PL-SUM_FACT;
  if sum_raspr<0.0001 then sum_raspr:=0;
  EDIT1.Text:=floatTOSTRf(SUM_RASPR,ffGeneral,7,15);}
end;

end.
