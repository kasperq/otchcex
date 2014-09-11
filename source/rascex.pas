unit rascex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FindDlgEh, Menus, ImgList, Grids, DBGridEh, ComCtrls, ToolWin,dm,
  StdCtrls, Mask, DBCtrls, ExtCtrls,DB, IBCustomDataSet, IBQuery, ToolEdit,IB,
  RxIBQuery, Placemnt;

type
  TFRascex = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    Label9: TLabel;
    ImageList1: TImageList;
    FindDlgEh1: TFindDlgEh;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    Ost_ksm_RAS: TIBQuery;
    Ost_ksm_RASOT_S: TFMTBCDField;
    Ost_ksm_RASSERIA: TIBStringField;
    Ost_ksm_RASOT_NZ: TFMTBCDField;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    Label13: TLabel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DSOst_ksm_RAS: TDataSource;
    CheckBox1: TCheckBox;
    Panel5: TPanel;
    DBGridEh3: TDBGridEh;
    DSPrixRasx: TDataSource;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Splitter2: TSplitter;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    Splitter1: TSplitter;
    FormStorage1: TFormStorage;

    procedure activatePrixRasx;

    procedure FormCreate(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure DateEdit2Change(Sender: TObject);
    procedure DBGridEh3SortMarkingChanged(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRascex: TFRascex;

implementation

uses ViborPerioda, New_Prix, TipOp,OstSyr;

{$R *.dfm}

procedure TFRascex.activatePrixRasx;
begin
  DM1.PrixRasx.Active := False;
  DM1.PrixRasx.MacroByName('SDAT').AsString := Usl_DAT;
  DM1.PrixRasx.MacroByName('STIP').AsString := Usl_TIP;
  DM1.PrixRasx.MacroByName('CEX').AsString := Usl_Struk;
  DM1.PrixRasx.MacroByName('SORT').AsString := Usl_SORT;
  DM1.PrixRasx.MacroByName('GR_OP').AsString := Usl_GROP;
  dm1.PrixRasx.ParamByName('dat2').AsDate := StrToDate(s_dat2_period) + 1;
  dm1.PrixRasx.ParamByName('struk_id').AsInteger := vStruk_Id;
  DM1.PrixRasx.Active := True;
end;

procedure TFRascex.FormCreate(Sender: TObject);
begin
  s_dat1_period := s_dat1;
  s_dat2_period := datetostr(date);
  label13.Caption := '';
end;

procedure TFRascex.ToolButton3Click(Sender: TObject);
begin
//Сохранение внесенных измененний по документу
 try
  if (DM1.Prixrasx.Modified) or (DM1.Prixrasx.State = dsEdit)
      or  (DM1.Prixrasx.State = dsInsert)   then
  begin
   DM1.Prixrasx.Post;
   DM1.Prixrasx.ApplyUpdates;
  end;
  if (DM1.Document.Modified) or (DM1.Document.State =dsEdit) or (DM1.Document.State =dsInsert)  then
   DM1.Document.Post;
  if (DM1.Kart.Modified)or (DM1.Kart.State =dsEdit) or (DM1.Kart.State =dsInsert)  then
   DM1.Kart.Post;

{    if not dm1.IBT_Read.Active then
     dm1.IBT_Read.StartTransaction;
    if not dm1.IBT_WRITE.Active then
     dm1.IBT_WRITE.StartTransaction;
    if DM1.Prixrasx.UpdatesPending then
     DM1.Prixrasx.ApplyUpdates;
    DM1.IBT_Read.Commit;
    DM1.IBT_WRITE.CommitRetaining;
    dm1.IBT_Read.Active:=false;
    dm1.IBT_WRITE.Active:=false;
   end;}
   DM1.ApplyUpdatesDoc;

{   CheckBox1.Checked:=false;
   Usl_Dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
   vGr_Op_Id := 'TIP_OPER.GR_OP_ID in (2,5,9) ';
   DM1.TipDok.Active :=False;
   DM1.TipDok.MacroByName('STIP').AsString:='TIP_OPER.GR_OP_ID in (2,5,9) ';
   dm1.TipDok.Active:=true; }
   Usl_Sort:=' MATROP.Nmat';

   DM1.PrixRasx.AfterScroll:=nil;
   activatePrixRasx;
   DM1.PrixRasx.AfterScroll:=DM1.PrixRasxAfterScroll;

   Usl_ksm:='Kart.Ksm_id='+intToStr(dm1.PrixRasxKsm_id.AsInteger);
//   Usl_Sort:=' Document.date_op';
//   Usl_tip:=' 0=0';
//   usl_dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
//   Usl_grop:=' document.TIP_OP_ID IN (33,34,35,30,37) and Kart.kol_rash<>0';
{   DM1.PrixrasSyr.Active := False;
   DM1.PrixrasSyr.MacroByName('SKSM').AsString:= Usl_KSM;
   DM1.PrixrasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
   DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= ' document.TIP_OP_ID IN (33,34,35,30,37) and Kart.kol_rash<>0';
   DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
   DM1.PrixRasSyr.MacroByName('SORT').AsString:= ' Document.date_op';
   DM1.PrixRasSyr.Active := True;}

   DM1.RasSumTipOp.Active := False;
   DM1.RasSumTipOp.MacroByName('SKSM').AsString:= Usl_KSM;
   DM1.RasSumTipOp.MacroByName('SDAT').AsString:= Usl_DAT;
   DM1.RasSumTipOp.MacroByName('STIP').AsString:=' 0=0 ';
   DM1.RasSumTipOp.MacroByName('CEX').AsString:= Usl_Struk;
   DM1.RasSumTipOp.Active := True;

   OST_KSM_ras.Close;
   OST_KSM_ras.ParamByName('STRUK').AsiNTEGER:= VStruk_ID;
   OST_KSM_ras.ParamByName('ksm').AsInteger:=DM1.PrixRasxKsm_id.Asinteger;
   OST_KSM_ras.Active:=TRUE;

  except
    MessageDlg('Произошла ошибка при записи документа!', mtWarning, [mbOK], 0);
    DM1.IBT_Read.RollbackRetaining;
  end;
end;

procedure TFRascex.ToolButton2Click(Sender: TObject);
begin
PopupMenu2.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFRascex.ToolButton4Click(Sender: TObject);
begin
  S_ksm:=dm1.PrixRasxKsm_id.AsInteger;
 FOstSyr.Edit1.text:=inttostr(dm1.PrixRasxKsm_id.AsInteger);
 FOstSyr.Label7.Caption:=dm1.PrixRasxNmat.AsString;
 FOstSyr.label8.Caption:=dm1.PrixRasxNeis.AsString;
 FOstSyr.DateEdit3.Date:=strtodate(s_dat1);
 FOstSyr.DateEdit4.Date:=strtodate(s_dat2);
if FOstSyr=nil then FOstSyr:=TFOstSyr.Create(Application);
  FOstSyr.ShowModal;
//If FindDlgEh1.Filtered Then FindDlgEh1.Filtered := False;
//  FindDlgEh1.ShowFindResult := not (FindDlgEh1.Execute  = mrCancel);
end;

procedure TFRascex.ToolButton1Click(Sender: TObject);
begin
  VDocument_Id := 0;
  vKart_id := 0;
  vStroka_id := 0;
  vPostPol := 'Получатель:';
  if FNew_Prix = nil then
    FNew_Prix := TFNew_prix.Create(Application);
  FNew_Prix.ShowModal;
  if dm1.PrixRasx.Active then
    dm1.PrixRasx.Close;
  label13.Caption:=' ';
// Usl_Dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
// Usl_Tip:='  Document.Tip_Op_Id in (8,32)and (kart.kol_rash<>0) ';
 Usl_Struk:=' Document.Struk_id='+inttostr(vStruk_id);
// vGr_Op_Id := 'TIP_OPER.GR_OP_ID in (2,5,9)';
// Usl_GROP:=vGr_Op_Id;
// Usl_GROP:=' 0=0';
 DM1.TipDok.Active :=False;
 DM1.TipDok.MacroByName('STIP').AsString:=vGr_Op_Id;
 dm1.TipDok.Active:=true;
// Usl_Sort:=' MATROP.Nmat';

 DM1.PrixRasx.AfterScroll:=nil;
 activatePrixRasx;
 DM1.PrixRasx.AfterScroll:=DM1.PrixRasxAfterScroll;
 Usl_ksm:='Kart.Ksm_id='+intToStr(dm1.PrixRasxKsm_id.AsInteger);
// Usl_Sort:=' Document.date_op';
// Usl_tip:=' 0=0';
// usl_dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
// Usl_grop:=' document.TIP_OP_ID IN (8,33,34,35,30,37) and Kart.kol_rash<>0';
 {DM1.PrixrasSyr.Active := False;
 DM1.PrixrasSyr.MacroByName('SKSM').AsString:= Usl_KSM;
 DM1.PrixrasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
 DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= ' document.TIP_OP_ID IN (8,33,34,35,30,37) and Kart.kol_rash<>0 ';
 DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
 DM1.PrixRasSyr.MacroByName('SORT').AsString:=' Document.date_op';
 DM1.PrixRasSyr.Active := True;}

 DM1.RasSumTipOp.Active := False;
 DM1.RasSumTipOp.MacroByName('SKSM').AsString:= Usl_KSM;
 DM1.RasSumTipOp.MacroByName('SDAT').AsString:= Usl_DAT;
 DM1.RasSumTipOp.MacroByName('STIP').AsString:= ' 0=0 ';
 DM1.RasSumTipOp.MacroByName('CEX').AsString:= Usl_Struk;
 DM1.RasSumTipOp.Active := True;

 OST_KSM_ras.Close;
 OST_KSM_ras.ParamByName('STRUK').AsiNTEGER:= VStruk_ID;
 OST_KSM_ras.ParamByName('ksm').AsInteger:=DM1.PrixRasxKsm_id.Asinteger;
 OST_KSM_ras.Active:=TRUE;

 end;

procedure TFRascex.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF DM1.Kart.Active THEN DM1.Kart.Close;
  IF DM1.PrixRasx.Active THEN DM1.PrixRasx.Active := false;
  IF DM1.Document.Active THEN DM1.Document.Close;
end;

procedure TFRascex.N4Click(Sender: TObject);
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
//   Usl_GROP:=' 0=0';
//   Usl_GROP:=vGr_Op_Id;
//   Usl_Tip:=' (kart.kol_rash<>0) ';
   dm1.PrixRasx.Close;
   DM1.PrixRasx.AfterScroll:=nil;
   DM1.PrixRasx.MacroByName('SDAT').AsString:= Usl_DAT;
   DM1.PrixRasx.MacroByName('STIP').AsString:= Usl_TIP;
   DM1.PrixRasx.MacroByName('GR_OP').AsString:= Usl_GROP;
   DM1.PrixRasx.MacroByName('CEX').AsString:= Usl_Struk;
   DM1.PrixRasx.MacroByName('SORT').AsString:= Usl_SORT;
   DM1.PrixRasx.Open;
   DM1.PrixRasx.First;
   DM1.PrixRasx.AfterScroll:=DM1.PrixRasxAfterScroll;
  end;
end;


procedure TFRascex.N5Click(Sender: TObject);

begin
 if MessageDlg('Удалять запись? ',
     mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    try
      vDocument_id:=dm1.PrixRasx.FieldByName('DOC_ID').AsInteger;
      IF DM1.Kart.Active THEN DM1.Kart.Close;
      DM1.Kart.MacroByName('USL').AsString:='WHERE KART.stroka_ID='+inttostr(dm1.PrixRasx.FieldByName('stroka_ID').AsInteger);
      DM1.Kart.Open;
      if not dm1.Kart.Eof then
      begin
       DM1.Kart.Delete;
       DM1.Kart.ApplyUpdates;
       DM1.IBT_Write.Commit;
      end;
{     IF DM1.Kart.RecordCount=0 THEN
     begin
      if DM1.Document.Active then dm1.Document.Close;
      dm1.Document.MacroByName('usl').AsString:='  where document.doc_id='+inttostr(vdocument_id);
      dm1.Document.Open
      IF not DM1.Document.eof THEN
      DM1.Document.Delete;
     end;
     DM1.ApplyUpdatesDoc;}
//      s_Usl_Sort:=Usl_Sort;
//      Usl_Sort:=' Document.Doc_id';
//      Usl_GROP:=vGr_Op_Id;
      dm1.PrixRasx.Close;
      DM1.PrixRasx.AfterScroll:=nil;
      DM1.PrixRasx.MacroByName('SDAT').AsString:= Usl_DAT;
      DM1.PrixRasx.MacroByName('STIP').AsString:= Usl_TIP;
      DM1.PrixRasx.MacroByName('GR_OP').AsString:= Usl_GROP;
      DM1.PrixRasx.MacroByName('CEX').AsString:= Usl_Struk;
      DM1.PrixRasx.MacroByName('SORT').AsString:= Usl_SORT;
      DM1.PrixRasx.Open;
      DM1.PrixRasx.AfterScroll:=DM1.PrixRasxAfterScroll;
//      Usl_Sort:=s_Usl_Sort;
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

procedure TFRascex.FormShow(Sender: TObject);
begin
 DateEdit1.OnChange:=nil;
 DateEdit2.OnChange:=nil;
 DateEdit1.Date:=strtodate(s_dat1);
 DateEdit2.Date:=date;
 DateEdit1.OnChange:=DateEdit1Change;
 DateEdit2.OnChange:=DateEdit2Change;
 DM1.PrixRasx.AfterScroll:=NIL;
 dm1.IBT_WRITE.Active:=FALSE;
 dm1.IBT_READ.Active:=FALSE;
 vGr_op_id:='TIP_OPER.GR_OP_ID in (2,9)';
 If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
 vKol:='KOL_RASH_ediz';
 s_zag:='Расход сырья в цехе';
 Usl_Dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
 Usl_Tip:='  Document.Tip_Op_Id in (8,32,33,85) and (kart.kol_rash<>0)';
 Usl_Struk:=' Document.Struk_id='+inttostr(vStruk_id);
 Usl_GROP := 'TIP_OPER.GR_OP_ID in (2,9) ';
 DM1.TipDok.Active :=False;
 DM1.TipDok.MacroByName('STIP').AsString:=Usl_GROP;
 dm1.TipDok.Active:=true;
 Usl_Sort:=' MATROP.Nmat';
 activatePrixRasx;
 Usl_ksm:='Kart.Ksm_id='+intToStr(dm1.PrixRasxKsm_id.AsInteger);
// Usl_Sort:=' Document.date_op';
// Usl_tip:=' 0=0';
// usl_dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
// Usl_grop:=' document.TIP_OP_ID IN (33,34,35,30,37) and Kart.kol_rash<>0';
{ DM1.PrixrasSyr.Active := False;
 DM1.PrixrasSyr.MacroByName('SKSM').AsString:= Usl_KSM;
 DM1.PrixrasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
 DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= ' document.TIP_OP_ID IN (33,34,35,30,37) and Kart.kol_rash<>0';
 DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
 DM1.PrixRasSyr.MacroByName('SORT').AsString:= ' Document.date_op';
 DM1.PrixRasSyr.Active := True; }

 DM1.RasSumTipOp.Active := False;
 DM1.RasSumTipOp.MacroByName('SKSM').AsString:= Usl_KSM;
 DM1.RasSumTipOp.MacroByName('SDAT').AsString:= Usl_DAT;
 DM1.RasSumTipOp.MacroByName('STIP').AsString:= ' 0=0 ';
 DM1.RasSumTipOp.MacroByName('CEX').AsString:= Usl_Struk;
 DM1.RasSumTipOp.Active := True;

 OST_KSM_ras.Close;
 OST_KSM_ras.ParamByName('STRUK').AsiNTEGER:= VStruk_ID;
 OST_KSM_ras.ParamByName('ksm').AsInteger:=DM1.PrixRasxKsm_id.Asinteger;
 OST_KSM_ras.Active:=TRUE;
 DM1.PrixRasx.AfterScroll:=DM1.PrixRasxAfterScroll;
end;

procedure TFRascex.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked=false then
 begin
  label13.Caption:='';
  Usl_Dat:=' Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
  Usl_Tip:='  Document.Tip_Op_Id in (8,32,33,85) and (kart.kol_rash<>0) ';
  Usl_Struk:=' Document.Struk_id='+inttostr(vStruk_id);
  Usl_GROP := 'TIP_OPER.GR_OP_ID in (2,5,9)';

  DM1.TipDok.Active :=False;
  DM1.TipDok.MacroByName('STIP').AsString:=Usl_GROP;
  dm1.TipDok.Active:=true;

  Usl_Sort:=' MATROP.Nmat';

  DM1.PrixRasx.AfterScroll:=nil;
  activatePrixRasx;
  DM1.PrixRasx.AfterScroll:=DM1.PrixRasxAfterScroll;

  Usl_ksm:='Kart.Ksm_id='+intToStr(dm1.PrixRasxKsm_id.AsInteger);

{  DM1.PrixrasSyr.Active := False;
  DM1.PrixrasSyr.MacroByName('SKSM').AsString:= Usl_KSM;
  DM1.PrixrasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
  DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= ' document.TIP_OP_ID IN (33,34,35,30,37) and Kart.kol_rash<>0';
  DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
  DM1.PrixRasSyr.MacroByName('SORT').AsString:= ' Document.date_op';
  DM1.PrixRasSyr.Active := True; }

  DM1.RasSumTipOp.Active := False;
  DM1.RasSumTipOp.MacroByName('SKSM').AsString:= Usl_KSM;
  DM1.RasSumTipOp.MacroByName('SDAT').AsString:= Usl_DAT;
  DM1.RasSumTipOp.MacroByName('STIP').AsString:= ' 0=0 ';
  DM1.RasSumTipOp.MacroByName('CEX').AsString:= Usl_Struk;
  DM1.RasSumTipOp.Active := True;

  OST_KSM_ras.Close;
  OST_KSM_ras.ParamByName('STRUK').AsiNTEGER:= VStruk_ID;
  OST_KSM_ras.ParamByName('ksm').AsInteger:=DM1.PrixRasxKsm_id.Asinteger;
  OST_KSM_ras.Active:=TRUE;

 end
 else
 begin
  vGr_op_id:='TIP_OPER.GR_OP_ID in (2,9)';
  Usl_Tip:='  Document.Tip_Op_Id in (8,32,33,85) and (kart.kol_rash<>0) ';
  if FtipOp=nil then FTipOP:=TfTipOp.Create(Application);
  FTipOp.ShowModal;
  label13.Caption:=s_nam_Tip_Op;
  if FTipOp.ModalResult > 50 then
  begin
   vtip_op_id:=FTipOp.ModalResult-50;
   Usl_tip:=' Document.Tip_op_id='+inttostr(vtip_op_id)+' and (kart.kol_rash<>0)';
  end
  else
  begin
    CheckBox1.OnClick:=nil;
    CheckBox1.Checked:=false;
    CheckBox1.OnClick:=CheckBox1Click;
  end;

  Usl_GROP:=vGr_Op_Id;
  Usl_sort:=' matrop.nmat';
  DM1.PrixRasx.AfterScroll:=nil;
  activatePrixRasx;
  DM1.PrixRasx.AfterScroll:=DM1.PrixRasxAfterScroll;

  Usl_ksm:='Kart.Ksm_id='+intToStr(dm1.PrixRasxKsm_id.AsInteger);

 { DM1.PrixrasSyr.Active := False;
  DM1.PrixrasSyr.MacroByName('SKSM').AsString:= Usl_KSM;
  DM1.PrixrasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
  DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= ' document.TIP_OP_ID IN (33,34,35,30,37) and Kart.kol_rash<>0';
  DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
  DM1.PrixRasSyr.MacroByName('SORT').AsString:= ' Document.date_op';
  DM1.PrixRasSyr.Active := True;}

  DM1.RasSumTipOp.Active := False;
  DM1.RasSumTipOp.MacroByName('SKSM').AsString:= Usl_KSM;
  DM1.RasSumTipOp.MacroByName('SDAT').AsString:= Usl_DAT;
  DM1.RasSumTipOp.MacroByName('STIP').AsString:= ' 0=0';
  DM1.RasSumTipOp.MacroByName('CEX').AsString:= Usl_Struk;
  DM1.RasSumTipOp.Active := True;

  OST_KSM_ras.Close;
  OST_KSM_ras.ParamByName('STRUK').AsiNTEGER:= VStruk_ID;
  OST_KSM_ras.ParamByName('ksm').AsInteger:=DM1.PrixRasxKsm_id.Asinteger;
  OST_KSM_ras.Active:=TRUE;
 end;
end;

procedure TFRascex.DateEdit1Change(Sender: TObject);
begin

 s_dat1_period:=datetostr(DateEdit1.Date);
 Usl_Dat:=' Document.Date_doK between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
 DM1.PrixRasx.AfterScroll:=nil;
 activatePrixRasx;
 DM1.PrixRasx.AfterScroll:=DM1.PrixRasxAfterScroll;
 Usl_ksm:='Kart.Ksm_id='+intToStr(dm1.PrixRasxKsm_id.AsInteger);

{ DM1.PrixrasSyr.Active := False;
 DM1.PrixrasSyr.MacroByName('SKSM').AsString:= Usl_KSM;
 DM1.PrixrasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
 DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= ' document.TIP_OP_ID IN (33,34,35,30,37) and Kart.kol_rash<>0';
 DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
 DM1.PrixRasSyr.MacroByName('SORT').AsString:= ' Document.date_op';
 DM1.PrixRasSyr.Active := True;}

 DM1.RasSumTipOp.Active := False;
 DM1.RasSumTipOp.MacroByName('SKSM').AsString:= Usl_KSM;
 DM1.RasSumTipOp.MacroByName('SDAT').AsString:= Usl_DAT;
 DM1.RasSumTipOp.MacroByName('STIP').AsString:= ' 0=0';
 DM1.RasSumTipOp.MacroByName('CEX').AsString:= Usl_Struk;
 DM1.RasSumTipOp.Active := True;

 OST_KSM_ras.Close;
 OST_KSM_ras.ParamByName('STRUK').AsiNTEGER:= VStruk_ID;
 OST_KSM_ras.ParamByName('ksm').AsInteger:=DM1.PrixRasxKsm_id.Asinteger;
 OST_KSM_ras.Active:=TRUE;
end;

procedure TFRascex.DateEdit2Change(Sender: TObject);
begin
 s_dat2_period:=datetostr(DateEdit2.Date);
 Usl_Dat:=' Document.Date_doK between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''';
 DM1.PrixRasx.AfterScroll:=nil;
 activatePrixRasx;
 DM1.PrixRasx.AfterScroll:=DM1.PrixRasxAfterScroll;

 Usl_ksm:='Kart.Ksm_id='+intToStr(dm1.PrixRasxKsm_id.AsInteger);

 {DM1.PrixrasSyr.Active := False;
 DM1.PrixrasSyr.MacroByName('SKSM').AsString:= Usl_KSM;
 DM1.PrixrasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
 DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= ' document.TIP_OP_ID IN (33,34,35,30,37) and Kart.kol_rash<>0';
 DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
 DM1.PrixRasSyr.MacroByName('SORT').AsString:= ' Document.date_op';
 DM1.PrixRasSyr.Active := True;}

 DM1.RasSumTipOp.Active := False;
 DM1.RasSumTipOp.MacroByName('SKSM').AsString:= Usl_KSM;
 DM1.RasSumTipOp.MacroByName('SDAT').AsString:= Usl_DAT;
 DM1.RasSumTipOp.MacroByName('STIP').AsString:= ' 0=0';
 DM1.RasSumTipOp.MacroByName('CEX').AsString:= Usl_Struk;
 DM1.RasSumTipOp.Active := True;

 OST_KSM_ras.Close;
 OST_KSM_ras.ParamByName('STRUK').AsiNTEGER:= VStruk_ID;
 OST_KSM_ras.ParamByName('ksm').AsInteger:=DM1.PrixRasxKsm_id.Asinteger;
 OST_KSM_ras.Active:=TRUE;
end;

procedure TFRascex.DBGridEh3SortMarkingChanged(Sender: TObject);
var
  i : Integer;
begin
  Usl_Sort := '';
  for i := 0 to DBGridEh3.SortMarkedColumns.Count - 1 do
  BEGIN
    if (DBGridEh3.SortMarkedColumns[i].Title.SortMarker = smUpEh) then
    begin
      if (DBGridEh3.SortMarkedColumns[i].FieldName = 'KSM_ID') then
        Usl_Sort := USL_Sort + 'Kart."' + DBGridEh3.SortMarkedColumns[i].FieldName + '"' + ' DESC , '
      else
        Usl_Sort := USL_Sort + '"' + DBGridEh3.SortMarkedColumns[i].FieldName + '"' + ' DESC , ';
    end
    else
    begin
      if (DBGridEh3.SortMarkedColumns[i].FieldName = 'KSM_ID') then
        Usl_Sort := USL_Sort + 'Kart."' + DBGridEh3.SortMarkedColumns[i].FieldName + '"' + ', '
      else
        Usl_Sort := Usl_Sort + '"' + DBGridEh3.SortMarkedColumns[i].FieldName + '"' + ', ';
    end;
  END;
  if (Usl_Sort <> '') then
  begin
    Usl_Sort := Copy(Usl_Sort, 1, Length(Usl_Sort) - 2);
    DM1.PrixRasx.AfterScroll := nil;
    activatePrixRasx;
    DM1.PrixRasx.AfterScroll := DM1.PrixRasxAfterScroll;
    Usl_ksm := 'Kart.Ksm_id=' + intToStr(dm1.PrixRasxKsm_id.AsInteger);

{ DM1.PrixrasSyr.Active := False;
 DM1.PrixrasSyr.MacroByName('SKSM').AsString:= Usl_KSM;
 DM1.PrixrasSyr.MacroByName('SDAT').AsString:= Usl_DAT;
 DM1.PrixRasSyr.MacroByName('GR_OP').AsString:= ' document.TIP_OP_ID IN (33,34,35,30,37) and Kart.kol_rash<>0';
 DM1.PrixRasSyr.MacroByName('CEX').AsString:= Usl_Struk;
 DM1.PrixRasSyr.MacroByName('SORT').AsString:= ' Document.date_op';
 DM1.PrixRasSyr.Active := True; }

    DM1.RasSumTipOp.Active := False;
    DM1.RasSumTipOp.MacroByName('SKSM').AsString := Usl_KSM;
    DM1.RasSumTipOp.MacroByName('SDAT').AsString := Usl_DAT;
    DM1.RasSumTipOp.MacroByName('STIP').AsString := ' 0=0';
    DM1.RasSumTipOp.MacroByName('CEX').AsString := Usl_Struk;
    DM1.RasSumTipOp.Active := True;

    OST_KSM_ras.Close;
    OST_KSM_ras.ParamByName('STRUK').AsiNTEGER := VStruk_ID;
    OST_KSM_ras.ParamByName('ksm').AsInteger := DM1.PrixRasxKsm_id.Asinteger;
    OST_KSM_ras.Active := TRUE;
  end;
end;

procedure TFRascex.ToolButton5Click(Sender: TObject);
begin
PopupMenu3.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFRascex.ToolButton6Click(Sender: TObject);
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

end.
