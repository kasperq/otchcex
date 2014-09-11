unit VibPrep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, Grids, DBGridEh, StdCtrls, DB,
  IBCustomDataSet, IBQuery, RxMemDS, Buttons, ExtCtrls,
  DBTables,SplshWnd, Mask, ToolEdit, Spin,
  DBLookupEh, BDEUtils, UtilR, UtilRIB,IniFiles, FindDlgEh, IBUpdateSQL,
  IBUpdSQLW, RxIBQuery;
type
  TFVibPrep = class(TForm)
    FactVipusk: TRxMemoryData;
    ImageList1: TImageList;
    DSFactVipusk: TDataSource;
    FactVipuskkol_prih: TFloatField;
    FactVipuskNMAT: TStringField;
    FactVipuskXARKT: TStringField;
    FactVipuskKOD_PROD: TStringField;
    FactVipuskvib: TBooleanField;
    FactVipuskKSM_ID: TIntegerField;
    FactVipuskSTRUK_ID: TIntegerField;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    DBGridEh2: TDBGridEh;
    Razdel1: TRxMemoryData;
    Razdel1razdel_id: TIntegerField;
    Razdel1Namraz: TStringField;
    Razdel1kodraz: TStringField;
    Razdel1Kraz: TIntegerField;
    Razdel1vib: TBooleanField;
    DSRazdel1: TDataSource;
    Panel3: TPanel;
    DBGridEh3: TDBGridEh;
    DSyrie: TDataSource;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    Panel5: TPanel;
    RadioGroup2: TRadioGroup;
    Label2: TLabel;
    Panel6: TPanel;
    RadioGroup5: TRadioGroup;
    Label3: TLabel;
    FactVipusknam_reg: TStringField;
    Panel7: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup4: TRadioGroup;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    FindDlgEh1: TFindDlgEh;
    FindDlgEh2: TFindDlgEh;
    IBUDSyrie: TIBUpdateSQLW;
    Syrie: TRxIBQuery;
    Splitter2: TSplitter;
    Syrie_s: TRxIBQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    FMTBCDField1: TFMTBCDField;
    IntegerField2: TIntegerField;
    SmallintField1: TSmallintField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField3: TIBStringField;
    SyrieKSM_ID: TIntegerField;
    SyrieNMAT: TIBStringField;
    SyrieVIB: TIntegerField;
    SyrieKEI_ID: TSmallintField;
    procedure VipuskRaspred;
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure DBGridEh3SortMarkingChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVibPrep: TFVibPrep;
   PR_RAZ: INTEGER;
   Splash: TForm;
  AniBmp1: TBitmap;
implementation

uses dm;

{$R *.dfm}
procedure TFVibPrep.VipuskRaspred;
begin
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID=36 and ndok='+''''+VnDOC+''''
 + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''',dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then
 begin
  vDocument_id:=V_DOK;
 Splash := ShowSplashWindow(AniBmp1,
 'Загрузка данных. Подождите, пожалуйста...', True, nil);
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add(' SELECT kart.kol_prih,SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD,SPPROD.STRUK_ID,KART.KSM_ID,region.nam nam_reg');
  DM1.IBQuery1.SQL.Add(' FROM KARTV kart');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (KART.KSM_ID = SPPROD.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE KART.DOC_ID='+INTTOSTR(Vdocument_id));
  DM1.IBQuery1.SQL.Add(' ORDER BY SPPROD.KOD_PROD ');
  DM1.IBQuery1.Active:=true;
  FactVipusk.EmptyTable;
  FactVipusk.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
  FactVipusk.Active := True;
  FactVipusk.First;
  FactVipusk.DisableControls;
  While not FactVipusk.Eof do
  begin
   FactVipusk.Edit;
   FactVipusk.FieldByName('Vib').ASBoolean := False;
   FactVipusk.Post;
   FactVipusk.Next;
  end;
  FactVipusk.First;
  FactVipusk.EnableControls;

 //  разделы
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT DISTINCT RAZDEL.KRAZ,RAZDEL.NAMRAZ,RAZDEL.RAZDEL_ID');
  DM1.IBQuery1.SQL.Add(' FROM RAZDEL');
  DM1.IBQuery1.SQL.Add(' ORDER BY RAZDEL.KRAZ ');
  DM1.IBQuery1.Active:=true;
  RAZDEL1.EmptyTable;
  RAZDEL1.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
  RAZDEL1.Active := True;
  RAZDEL1.First;
  RAZDEL1.DisableControls;
  While not RAZDEL1.Eof do
  begin
   RAZDEL1.Edit;
   RAZDEL1.FieldByName('Vib').ASBoolean := False;
   RAZDEL1.Post;
   RAZDEL1.Next;
  end;
  RAZDEL1.First;
  RAZDEL1.EnableControls;
  PR_RAZ:=0;

 //  сырье
  if pr_raspred=0 then
  begin
   Syrie.Active:=false;
   Syrie.ParamByName('god').AsInteger:=god;
   Syrie.ParamByName('mes').AsInteger:=mes;
   Syrie.ParamByName('struk').AsInteger:=vStruk_id;
   Syrie.MacroByName('dat1').AsString:=''''+s_dat1+'''';
   Syrie.MacroByName('dat2').AsString:=''''+s_dat2+'''';
   Syrie.MacroByName('sort').AsString:=Usl_Sort;
   Syrie.Active:=true;
   Syrie.DisableControls;
   Syrie.First;
   Syrie.EnableControls;
   RadioGroup5.Visible:=true;
   label3.Visible:=true;
  end
  else
  begin
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT distinct norm.KSM_ID,norm.nmat_ksm nmat,norm.xarkt,ostatki.ot_s ots,seria.seria,ostatki.kart_id,ostatki.kei_id,ostatki.seria_id');
   DM1.IBQuery1.SQL.Add(' FROM  norm_view(119,'+inttostr(god)+','+inttostr(mes)+','+
    '0,'+inttostr(vstruk_id)+','+inttostr(s_ksm)+')norm');
   DM1.IBQuery1.SQL.Add(' inner join ostatki on (norm.ksm_id=ostatki.ksm_id and ostatki.razdel_id is null and ostatki.ksm_idpr is null)');
   DM1.IBQuery1.SQL.Add(' left join seria on (ostatki.seria_id=seria.seria_id)');
   DM1.IBQuery1.SQL.Add(' where ostatki.STRUK_ID ='+inttostr(vstruk_id));
//   DM1.IBQuery1.SQL.Add(' INNER JOIN matrop ON (norm.ksm_id = matrop.KSM_ID)');
//   DM1.IBQuery1.SQL.Add(' INNER JOIN spprod ON (norm.kodp = spprod.ksm_id)');
//   DM1.IBQuery1.SQL.Add(' INNER JOIN matrop ON (norm.ksm_id = matrop.KSM_ID)');
//   DM1.IBQuery1.SQL.Add(' INNER JOIN spprod ON (norm.kodp = spprod.ksm_id)');
//   DM1.IBQuery1.SQL.Add(' and Norm.mes='+inttostr(mes));
//   DM1.IBQuery1.SQL.Add(' and Norm.god='+inttostr(god));
   DM1.IBQuery1.Active:=true;
   Syrie.Active:=false;
   Syrie.ParamByName('god').AsInteger:=god;
   Syrie.ParamByName('mes').AsInteger:=mes;
   Syrie.ParamByName('struk').AsInteger:=vStruk_id;
   Syrie.MacroByName('dat1').AsString:=''''+s_dat1+'''';
   Syrie.MacroByName('dat2').AsString:=''''+s_dat2+'''';
   Syrie.MacroByName('sort').AsString:=Usl_Sort;
   Syrie.Active := True;
   Syrie.DisableControls;
   Syrie.First;
   While not Syrie.Eof do
   begin
    Syrie.Delete;
   end;
   DM1.IBQuery1.First;
   while not DM1.IBQuery1.Eof do
   begin
    Syrie.Insert;
    Syrie.FieldByName('Vib').AsInteger :=1;
    Syrie.FieldByName('ksm_id').AsInteger:=s_ksm;
    Syrie.FieldByName('Nmat').AsString:=s_nmat;
    Syrie.FieldByName('Xarkt').AsString:=s_Xarkt;
    Syrie.FieldByName('OTS').AsFloat:=DM1.IBQuery1.FieldByName('ots').AsFloat;
    Syrie.FieldByName('kart_id').AsInteger:=DM1.IBQuery1.FieldByName('kart_id').AsInteger;
    Syrie.FieldByName('kei_id').AsInteger:=DM1.IBQuery1.FieldByName('kei_id').AsInteger;
    Syrie.FieldByName('seria').AsVariant:=DM1.IBQuery1.FieldByName('seria').AsVariant;
    Syrie.FieldByName('seria_id').AsVariant:=DM1.IBQuery1.FieldByName('seria_id').AsVariant;
    Syrie.Post;
    DM1.IBQuery1.Next;
   end;
   Syrie.First;
   Syrie.EnableControls;
   RadioGroup5.Visible:=false;
   label3.Visible:=false;
   RadioGroup5.ItemIndex:=0;
  end;
  RadioGroup1.ItemIndex:=0;
  RadioGroup2.ItemIndex:=0;
  RadioGroup4.ItemIndex:=0;
  Splash.Free;
 end;
end;

procedure TFVibPrep.DBGridEh1SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
 Usl_Sort := '';
 for i := 0 to DBGridEh1.SortMarkedColumns.Count-1 do
 BEGIN
  if DBGridEh1.SortMarkedColumns[i].Title.SortMarker = smUpEh then
  begin
   if DBGridEh1.SortMarkedColumns[i].FieldName='nam_reg' then
    Usl_Sort := USL_Sort+ 'region."'+ 'nam' + '"'+ ' DESC , '
   else
   Usl_Sort := USL_Sort + '"'+ DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
  end
  else
  begin
   if DBGridEh1.SortMarkedColumns[i].FieldName='nam_reg' then
    Usl_Sort := USL_Sort+ 'region."'+'nam'+ '"'+ ', '
   else
   Usl_Sort := Usl_Sort + '"'+DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ', ';
  end;
 END;
 if Usl_Sort <> '' then
 begin
  Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT kart.kol_prih,SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD,SPPROD.STRUK_ID,KART.KSM_ID,region.nam nam_reg');
  DM1.IBQuery1.SQL.Add(' FROM KARTV kart');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (KART.KSM_ID = SPPROD.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE KART.DOC_ID='+INTTOSTR(Vdocument_id));
  DM1.IBQuery1.SQL.Add(' ORDER BY '+Usl_Sort);
  DM1.IBQuery1.Active:=true;
  FactVipusk.EmptyTable;
  FactVipusk.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
  FactVipusk.Active := True;
  FactVipusk.First;
  FactVipusk.DisableControls;
  While not FactVipusk.Eof do
  begin
   FactVipusk.Edit;
   FactVipusk.FieldByName('Vib').ASBoolean := False;
   FactVipusk.Post;
   FactVipusk.Next;
  end;
  FactVipusk.First;
  FactVipusk.EnableControls;
 end;

end;

procedure TFVibPrep.DBGridEh3SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
 Usl_Sort := ' order by';
 for i := 0 to DBGridEh3.SortMarkedColumns.Count-1 do
  if DBGridEh3.SortMarkedColumns[i].Title.SortMarker = smUpEh then
   Usl_Sort := USL_Sort + ' '+ inttostr(DBGridEh3.SortMarkedColumns.Count+1)+ ' '+ ' DESC , '
  else
     Usl_Sort := Usl_Sort + ' '+inttostr(DBGridEh3.SortMarkedColumns.Count+1) + ' '+ ', ';
 if copy(Usl_Sort,12,1) <> '' then
 begin
  Splash := ShowSplashWindow(AniBmp1,
 'Немного подождите...', True, nil);
  Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
  Syrie.Active:=false;
  Syrie.ParamByName('god').AsInteger:=god;
  Syrie.ParamByName('mes').AsInteger:=mes;
  Syrie.ParamByName('struk').AsInteger:=vstruk_id;
  Syrie.MacroByName('dat1').AsString:=''''+s_dat1+'''';
  Syrie.MacroByName('dat2').AsString:=''''+s_dat2+'''';
  Syrie.MacroByName('sort').AsString:=Usl_Sort;
  Syrie.Active:=true;
  Syrie.DisableControls;
  Syrie.First;
  Syrie.EnableControls;
  Splash.Free;
 end;
end;

procedure TFVibPrep.FormShow(Sender: TObject);
begin
Usl_Sort := ' order by 2';
 SpinEdit3.OnChange:=nil;
 SpinEdit4.OnChange:=nil;
 SpinEdit3.Value:=mes;
 SpinEdit4.Value:=god;
 SpinEdit3.OnChange:=SpinEdit3Change;
 SpinEdit4.OnChange:=SpinEdit4Change;
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID=36'
 + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''',dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then
 begin
  vDocument_id:=V_DOK;
  VipuskRaspred;
 end
 else if pr_raspred=1 then showMessage('Нет данных о выпуске продукции! Воспользуйтесь кнопкой Выпуск продукции!!');

end;

procedure TFVibPrep.ToolButton2Click(Sender: TObject);
begin
 FactVipusk.First;
  FactVipusk.DisableControls;
  While not FactVipusk.Eof do
  begin
   FactVipusk.Edit;
   FactVipusk.FieldByName('Vib').ASBoolean := False;
   FactVipusk.Post;
   FactVipusk.Next;
  end;
  FactVipusk.EnableControls;
 close;
end;

procedure TFVibPrep.ToolButton1Click(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

procedure TFVibPrep.RadioGroup1Click(Sender: TObject);
begin
 if RadioGroup1.ItemIndex=1 then
 begin
  FactVipusk.First;
  FactVipusk.DisableControls;
  While not FactVipusk.Eof do
  begin
   FactVipusk.Edit;
   FactVipusk.FieldByName('Vib').ASBoolean := True;
   FactVipusk.Post;
   FactVipusk.Next;
  end;
  FactVipusk.First;
  FactVipusk.EnableControls;
 end
 else
 begin
  FactVipusk.First;
  FactVipusk.DisableControls;
  While not FactVipusk.Eof do
  begin
   FactVipusk.Edit;
   FactVipusk.FieldByName('Vib').ASBoolean := False;
   FactVipusk.Post;
   FactVipusk.Next;
  end;
  FactVipusk.First;
  FactVipusk.EnableControls;
 end;
end;


procedure TFVibPrep.RadioGroup2Click(Sender: TObject);
begin
 Razdel1.DisableControls;
 if RadioGroup2.ItemIndex=1 then
 begin
  Razdel1.First;
  While not Razdel1.Eof do
  begin
   Razdel1.Edit;
   Razdel1.FieldByName('Vib').ASBoolean := True;
   Razdel1.Post;
   Razdel1.Next;
  end;
 end
 else
 begin
  Razdel1.First;
  While not Razdel1.Eof do
  begin
   Razdel1.Edit;
   Razdel1.FieldByName('Vib').ASBoolean := False;
   Razdel1.Post;
   Razdel1.Next;
  end;
 end;
 Razdel1.First;
 Razdel1.EnableControls;
end;

procedure TFVibPrep.RadioGroup5Click(Sender: TObject);
begin
Syrie.DisableControls;
 if RadioGroup5.ItemIndex=1 then
 begin
  Syrie.First;
  While not Syrie.Eof do
  begin
   Syrie.Edit;
   Syrie.FieldByName('Vib').AsInteger:=1;
   Syrie.Post;
   Syrie.Next;
  end;
 end
 else
 begin
  Syrie.First;
  While not Syrie.Eof do
  begin
   Syrie.Edit;
   Syrie.FieldByName('Vib').AsInteger := 0;
   Syrie.Post;
   Syrie.Next;
  end;
 end;
 Syrie.First;
 Syrie.EnableControls;
end;

procedure TFVibPrep.SpeedButton1Click(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TFVibPrep.SpeedButton2Click(Sender: TObject);
begin
 if FactVipusk.Active then
 begin
  FactVipusk.First;
  FactVipusk.DisableControls;
  While not FactVipusk.Eof do
  begin
   FactVipusk.Edit;
   FactVipusk.FieldByName('Vib').ASBoolean := False;
   FactVipusk.Post;
   FactVipusk.Next;
  end;
  FactVipusk.EnableControls;
 end;
 close;
end;

procedure TFVibPrep.SpinEdit3Change(Sender: TObject);
begin
mes:=SpinEdit3.Value;
//god:=SpinEdit4.Value;
IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  VipuskRaspred;
end;

procedure TFVibPrep.SpinEdit4Change(Sender: TObject);
begin
//mes:=SpinEdit3.Value;
god:=SpinEdit4.Value;
IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  VipuskRaspred;
end;

end.
