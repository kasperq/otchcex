unit NormCex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Mask, Grids, DBGrids, ComCtrls,
  Spin, Buttons, DBGridEh, FindDlgEh,
  db,Menus, ImgList,ToolWin,
  SplshWnd, wwDialog, Wwfltdlg,
  FR_DSet, FR_DBSet, FR_Class,VCLUtils,Printers,RxStrUtils;
type
  TFNormCex = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    ImageList1: TImageList;
    FindDlgEh1: TFindDlgEh;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N5: TMenuItem;
    ToolBar1: TToolBar;
    DBNavigator1: TDBNavigator;
    ToolButton8: TToolButton;
    ToolButton5: TToolButton;
    Label4: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    TabSheet1: TTabSheet;
    FindDlgEh2: TFindDlgEh;
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
    Edit1: TEdit;
    Panel2: TPanel;
    DBGridEh3: TDBGridEh;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    Label23: TLabel;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    DBText5: TDBText;
    Label1: TLabel;
    Label11: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNormCex: TFNormCex;
   s_lab11:string;
   USL_N:STRING;
   SORT_N:STRING;
   s_sort_n:string;
implementation
 uses dm , Find_Spprod, Find_Matrop;
{$R *.dfm}

procedure TFNormCex.DBGridEh1SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
 Usl_Sort := ' order by ';
 for i := 0 to DBGridEh1.SortMarkedColumns.Count-1 do
 BEGIN
  if DBGridEh1.SortMarkedColumns[i].Title.SortMarker = smUpEh then
  begin
   Usl_Sort := USL_Sort + '"'+ DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
  end
  else
  begin
   Usl_Sort := Usl_Sort + '"'+DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ', ';
  end;
 END;
 if copy(Usl_Sort,11,1) <> '' then
 begin
  Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
  DM1.NormSyr.Close;
   DM1.NormSyr.ParamByName('KSM_ID').AsInteger:=DM1.NormKsm_Id.AsInteger;
   DM1.NormSyr.ParamByName('GOD').AsInteger:=SpinEdit4.Value;
   DM1.NormSyr.ParamByName('MES').AsInteger:=SpinEdit3.Value;
   DM1.NormSyr.ParamByName('STRUK').AsInteger:=vSTRUK_ID;
   DM1.NormSyr.MacroByName('SORT').AsString:=Usl_Sort;
   DM1.NormSyr.Open;

 end;

end;

procedure TFNormCex.Edit1Change(Sender: TObject);

begin
if edit1.text<>''   then begin
 skod:=replacestr(edit1.text,',','.')+'%';
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
 DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM');
 DM1.IBQuery1.SQL.Add(' FROM SPPROD');
 DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
 DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+skod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
  begin
   Label19.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label41.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
  end
  else
   Label19.Caption:='';
   Label41.Caption:='';
  begin
  end;
 Label19.Refresh;
 Label41.Refresh;
 end;
end;

procedure TFNormCex.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
  StartWait;
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
    s_korg:=DM1.IBQuery1.FieldByName('KORG').AsInteger;
    s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
    s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
    s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
    if DM1.IBQuery1.FieldByName('ACTIVP').Asinteger=1 then
    s_lab11:='Действующие' else s_lab11:='Недействующие';
    label19.caption:=s_NMAT;
//    label28.caption:=Inttostr(s_KORG);
    label29.caption:=s_namorg;
    label21.caption:=s_Neiz;
    label22.caption:=s_GOST;
    label41.caption:=s_Xarkt;
//    USL_N:=' AND NORM.MES='+INTTOSTR(SpinEdit3.Value)+' AND NORM.GOD='+INTTOSTR(SpinEdit4.Value);
    usl_n:='';
    DM1.Norm.Close;
    DM1.Norm.ParamByName('KODP').AsInteger:=S_KODP;
    DM1.Norm.ParamByName('god').AsInteger:=SpinEdit4.Value;
    DM1.Norm.ParamByName('mes').AsInteger:=SpinEdit3.Value;
    DM1.Norm.MacroByName('SORT').AsString:=SORT_N;
    DM1.Norm.MacroByName('USL').AsString:=USL_N;
    DM1.Norm.Open;
    DM1.NORM.First;
    label11.caption:=s_lab11;
    IF DM1.NORM.eof THEN
     begin
      label11.caption:='Нет норм';
      label11.Font.Color:=clRed;
     end
    else
     begin
      if s_lab11='Действующие' then label11.Font.Color:=clNavy
      else label11.Font.Color:=clRed;
     end;
  end;
  StopWait;
 end;
end;

procedure TFNormCex.Edit1Click(Sender: TObject);
begin
edit1.text:='';
end;

procedure TFNormCex.FormCreate(Sender: TObject);
begin
LABEL11.Caption:='Нет норм';
LABEL19.Caption:='';
LABEL21.Caption:='';
LABEL22.Caption:='';
LABEL29.Caption:='';
//LABEL28.Caption:='';
LABEL41.Caption:='';
USL_N:=' AND NORM.MES='+INTTOSTR(SpinEdit3.Value)+' AND NORM.GOD='+INTTOSTR(SpinEdit4.Value);
SORT_N:=' ORDER BY NORM.KRAZ ';
SpinEdit3.Value:=mes;
SpinEdit4.Value:=god;

end;

procedure TFNormCex.ToolButton8Click(Sender: TObject);
begin
PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFNormCex.ToolButton5Click(Sender: TObject);
begin
  nammes := dm1.getStrMes(FnormCex.SpinEdit3.Value);
 if PageControl1.ActivePage=tabsheet1 then
 begin
  s_sort_n:=SORT_N;
  SORT_N:=' ORDER BY NORM.KRAZ,NORM.NMAT_KSM ';
  DM1.Norm.Close;
  usl_n:='';
  DM1.Norm.ParamByName('KODP').AsInteger:=S_KODP;
  DM1.Norm.ParamByName('god').AsInteger:=SpinEdit4.Value;
  DM1.Norm.ParamByName('mes').AsInteger:=SpinEdit3.Value;
  DM1.Norm.MacroByName('SORT').AsString:=SORT_N;
  DM1.Norm.MacroByName('USL').AsString:=USL_N;
  DM1.Norm.Open;
  DM1.norm.First;
  if not dm1.norm.Eof then
   begin
    DM1.Norm.DisableControls;
    DM1.FrReport2.LoadFromFile(reportsPath + 'P_normCex.frf');
    DM1.FrReport2.ShowReport;
    DM1.Norm.EnableControls;
    sort_n:=s_SORT_N;
    DM1.Norm.Close;
    usl_n:='';
    DM1.Norm.ParamByName('KODP').AsInteger:=S_KODP;
    DM1.Norm.ParamByName('god').AsInteger:=SpinEdit4.Value;
    DM1.Norm.ParamByName('mes').AsInteger:=SpinEdit3.Value;
    DM1.Norm.MacroByName('SORT').AsString:=SORT_N;
    DM1.Norm.MacroByName('USL').AsString:=USL_N;
    DM1.Norm.Open;
   end;
  end
 else
 begin
  DM1.normSyr.First;
  if not dm1.normSyr.Eof then
  begin
   DM1.NormSyr.DisableControls;
   DM1.FrReport2.LoadFromFile(reportsPath + 'P_normSyr.frf');
   DM1.FrReport2.ShowReport;
   DM1.NormSyr.EnableControls;
  end;
 end;

end;

procedure TFNormCex.N2Click(Sender: TObject);
begin
SORT_N:=' ORDER BY NORM.KRAZ ';
DM1.Norm.Close;

DM1.Norm.MacroByName('SORT').ASSTRING:=SORT_N;
DM1.Norm.Open;
end;

procedure TFNormCex.N3Click(Sender: TObject);
begin
SORT_N:=' ORDER BY NORM.KRAZ,norm.NMAT_KSM ';
DM1.Norm.Close;
DM1.Norm.MacroByName('SORT').ASSTRING:=SORT_N;
DM1.Norm.Open;
end;

procedure TFNormCex.N6Click(Sender: TObject);
begin
SORT_N:=' ORDER BY NORM.KRAZ,NORM.KSM_ID ';
DM1.Norm.Close;
DM1.Norm.MacroByName('SORT').ASSTRING:=SORT_N;
DM1.Norm.Open;
end;

procedure TFNormCex.N4Click(Sender: TObject);
begin
SORT_N:=' ORDER BY norm.NMAT_KSM ';
DM1.Norm.Close;
DM1.Norm.MacroByName('SORT').ASSTRING:=SORT_N;
DM1.Norm.Open;
end;

procedure TFNormCex.N1Click(Sender: TObject);
begin
SORT_N:=' ORDER BY NORM.KSM_ID ';
DM1.Norm.Close;
DM1.Norm.MacroByName('SORT').ASSTRING:=SORT_N;
DM1.Norm.Open;
end;

procedure TFNormCex.N5Click(Sender: TObject);
begin
SORT_N:='';
DM1.Norm.Close;
DM1.Norm.MacroByName('SORT').ASSTRING:=SORT_N;
DM1.Norm.Open;
end;

procedure TFNormCex.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=tabsheet1 then
 BEGIN
//  DBNavigator1.VisibleButtons:=[nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbdelete,nbPost];
  DBNavigator1.DataSource:=DM1.DSnorm;
  ToolButton8.Visible:=true;
 END
else
 BEGIN
   usl_sort:=' order by norm.nmat';
   ToolButton8.Visible:=false;
//   DBNavigator1.VisibleButtons:=[nbFirst,nbPrior,nbNext,nbLast];
   DBNavigator1.DataSource:=DM1.DSnormSyr;
   DM1.NormSyr.Close;
   DM1.NormSyr.ParamByName('KSM_ID').AsInteger:=DM1.NormKsm_Id.AsInteger;
   DM1.NormSyr.ParamByName('GOD').AsInteger:=SpinEdit4.Value;
   DM1.NormSyr.ParamByName('MES').AsInteger:=SpinEdit3.Value;
   DM1.NormSyr.ParamByName('STRUK').AsInteger:=vSTRUK_ID;
   DM1.NormSyr.MacroByName('SORT').AsString:=Usl_Sort;
   DM1.NormSyr.Open;
 end;

end;

procedure TFNormCex.SpeedButton2Click(Sender: TObject);
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
  if FindSpprod.IBSpprod.FieldByName('ACTIVP').Asinteger=1 then
  s_lab11:='Действующие' else s_lab11:='Недействующие';
  label19.caption:=s_NMAT;
//  label28.caption:=Inttostr(s_KORG);
    label29.caption:=s_namorg;
    label21.caption:=s_Neiz;
    label22.caption:=s_GOST;
    label41.caption:=s_Xarkt;
    USL_N:='  AND NORM.MES='+INTTOSTR(SpinEdit3.Value)+' AND NORM.GOD='+INTTOSTR(SpinEdit4.Value);
    DM1.Norm.Close;
    usl_n:='';
    DM1.Norm.ParamByName('KODP').AsInteger:=S_KODP;
    DM1.Norm.ParamByName('god').AsInteger:=SpinEdit4.Value;
    DM1.Norm.ParamByName('mes').AsInteger:=SpinEdit3.Value;
    DM1.Norm.MacroByName('SORT').AsString:=SORT_N;
    DM1.Norm.MacroByName('USL').AsString:=USL_N;
    DM1.Norm.Open;
    DM1.NORM.First;
    label11.caption:=s_lab11;
    IF DM1.NORM.eof THEN
     begin
      label11.caption:='Нет норм';
      label11.Font.Color:=clRed;
     end
    else
     begin
      if s_lab11='Действующие' then label11.Font.Color:=clNavy
      else label11.Font.Color:=clRed;
//      IF (SpinEdit3.Value<>mes) or (SpinEdit4.Value<>god) THEN ToolButton3.enabled:=FALSE
//      eLSE toolButton3.enabled:=true;
    end;
  end;
end;

procedure TFNormCex.FormShow(Sender: TObject);
begin
 prov:=false;
 PageControl1.ActivePage:=tabsheet1;
 if s_kodp<>0 then
 begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
  DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.ksm_id='+inttostr(s_kodp)+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
  DM1.IBQuery1.Active := True;
  if not dm1.IBQuery1.Eof then
  begin
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
   if DM1.IBQuery1.FieldByName('ACTIVP').Asinteger=1 then
   s_lab11:='Действующие' else s_lab11:='Недействующие';
   label19.caption:=s_NMAT;
//   label28.caption:=Inttostr(s_KORG);
   label29.caption:=s_namorg;
   label21.caption:=s_Neiz;
   label22.caption:=s_GOST;
   label41.caption:=s_Xarkt;
   USL_N:='  AND NORM.MES='+INTTOSTR(SpinEdit3.Value)+' AND NORM.GOD='+INTTOSTR(SpinEdit4.Value);
   DM1.Norm.Close;
   usl_n:='';
   DM1.Norm.ParamByName('KODP').AsInteger:=S_KODP;
   DM1.Norm.ParamByName('god').AsInteger:=SpinEdit4.Value;
   DM1.Norm.ParamByName('mes').AsInteger:=SpinEdit3.Value;
   DM1.Norm.MacroByName('SORT').AsString:=SORT_N;
   DM1.Norm.MacroByName('USL').AsString:=USL_N;
   DM1.Norm.Open;
   DM1.NORM.First;
   label11.caption:=s_lab11;
   IF DM1.NORM.eof THEN
   begin
    label11.caption:='Нет норм';
    label11.Font.Color:=clRed;
   end
   else
   begin
    if s_lab11='Действующие' then label11.Font.Color:=clNavy
    else label11.Font.Color:=clRed;
   end;
  end;
 end
 else
 begin
  LABEL11.Caption:='Нет норм';
  LABEL19.Caption:='';
  LABEL21.Caption:='';
  LABEL22.Caption:='';
  LABEL29.Caption:='';
//  LABEL28.Caption:='';
  LABEL41.Caption:='';
 end;
end;

procedure TFNormCex.ToolButton4Click(Sender: TObject);
begin
if PageControl1.ActivePage=tabsheet1 then
  FindDlgEh1.DBGrid:=DBGRIDEH3 ELSE FindDlgEh1.DBGrid:=DBGRIDEH1;
 If FindDlgEh1.Filtered Then FindDlgEh1.Filtered := False;
  FindDlgEh1.ShowFindResult := not (FindDlgEh1.Execute  = mrCancel);
end;

procedure TFNormCex.ToolButton6Click(Sender: TObject);
begin
if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
FindSpprod.DataBaseName:=dm1.BELMED;
FindSpprod.ReadOnly:=true;
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
  if FindSpprod.IBSpprod.FieldByName('ACTIVP').Asinteger=1 then
  s_lab11:='Действующие' else s_lab11:='Недействующие';
  label19.caption:=s_NMAT;
//  label28.caption:=Inttostr(s_KORG);
    label29.caption:=s_namorg;
    label21.caption:=s_Neiz;
    label22.caption:=s_GOST;
    label41.caption:=s_Xarkt;
    USL_N:='  AND NORM.MES='+INTTOSTR(SpinEdit3.Value)+' AND NORM.GOD='+INTTOSTR(SpinEdit4.Value);
    DM1.Norm.Close;
    usl_n:='';
    DM1.Norm.ParamByName('KODP').AsInteger:=S_KODP;
    DM1.Norm.ParamByName('god').AsInteger:=SpinEdit4.Value;
    DM1.Norm.ParamByName('mes').AsInteger:=SpinEdit3.Value;
    DM1.Norm.MacroByName('SORT').AsString:=SORT_N;
    DM1.Norm.MacroByName('USL').AsString:=USL_N;
    DM1.Norm.Open;
    DM1.NORM.First;
    label11.caption:=s_lab11;
    IF DM1.NORM.eof THEN
     begin
      label11.caption:='Нет норм';
      label11.Font.Color:=clRed;
     end
    else
     begin
      if s_lab11='Действующие' then label11.Font.Color:=clNavy
      else label11.Font.Color:=clRed;
//      IF (SpinEdit3.Value<>mes) or (SpinEdit4.Value<>god) THEN ToolButton3.enabled:=FALSE
//      eLSE toolButton3.enabled:=true;
    end;
  end;
end;

end.
