unit Pech_vibor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Spin, ComCtrls, ExtCtrls, DBCtrls, ToolWin,
  DB, RxMemDS, Grids, DBGridEh, Buttons,SplshWnd,ToolEdit,
  Mask,DBGrids,IBCustomDataSet, IBQuery,IBUpdSQLW,IBSQL,
  IBUpdateSQL, RxIBQuery,
  Menus, VCLUtils,UtilRIB,
  wwDialog, Wwfltdlg,Fr_pars,
  IBTable,
  FR_DSet, FR_DBSet, FR_Class,IBStoredProc,
  IBDatabase, IB,
  DBCtrlsEh,
  DBLookupEh, BDEUtils, UtilR, FindDlgEh;

  type
  TFPech_Vibor = class(TForm)
    DBGridEh1: TDBGridEh;
    PechVipusk: TRxMemoryData;
    PechVipuskkol_prih: TFloatField;
    PechVipuskNMAT: TStringField;
    PechVipuskKOD_PROD: TStringField;
    PechVipuskvib: TBooleanField;
    PechVipuskKSM_ID: TIntegerField;
    PechVipuskSTRUK_ID: TIntegerField;
    DSPechVipusk: TDataSource;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    PechVipuskneis: TStringField;
    PechVipuskgost: TStringField;
    PechVipusknamorg: TStringField;
    PechVipusknamreg: TStringField;
    PechVipuskvipg: TFloatField;
    PechVipuskXARKT: TStringField;
    ToolBar1: TToolBar;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPech_Vibor : TFPech_Vibor;
  Splash : TForm;
  AniBmp1 : TBitmap;

implementation

uses dm, Otchet;
{$R *.dfm}

procedure TFPech_Vibor.DBGridEh1DblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFPech_Vibor.FormShow(Sender: TObject);
begin
 SpinEdit3.OnChange:=nil;
 SpinEdit4.OnChange:=nil;
 Splash := ShowSplashWindow(AniBmp1,
 'Загрузка данных. Подождите, пожалуйста...', True, nil);
 SpinEdit3.Value:=mes;
 SpinEdit4.Value:=god;
 SpinEdit3.OnChange:=SpinEdit3Change;
 SpinEdit4.OnChange:=SpinEdit4Change;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
 + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''',dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then
 begin
  vDocument_id:=V_DOK;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT kart.kol_prih,SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD,SPPROD.STRUK_ID,KART.KSM_ID,ediz.neis neis,spprod.gost,sprorg.nam namorg,region.nam namreg');
  DM1.IBQuery1.SQL.Add(' FROM KARTv kart');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (KART.KSM_ID = SPPROD.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' left JOIN SProrg ON (spprod.Korg = SProrg.Kod)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN ediz ON (spprod.Kei_ID = ediz.Kei_ID)');
  DM1.IBQuery1.SQL.Add(' WHERE KART.DOC_ID='+INTTOSTR(Vdocument_id));
  DM1.IBQuery1.SQL.Add(' ORDER BY SPPROD.NMAT ');
  DM1.IBQuery1.Active:=true;
  PechVipusk.EmptyTable;
  PechVipusk.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
  PechVipusk.Active := True;
  PechVipusk.First;
  PechVipusk.DisableControls;
  While not PechVipusk.Eof do
  begin
   PechVipusk.Edit;
   PechVipusk.FieldByName('Vib').ASBoolean := False;
   PechVipusk.Post;
   PechVipusk.Next;
  end;
  PechVipusk.First;
  PechVipusk.EnableControls;
 end;
 Splash.Free;
end;

procedure TFPech_Vibor.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=1 then
 begin
  PechVipusk.First;
  PechVipusk.DisableControls;
  While not PechVipusk.Eof do
  begin
   PechVipusk.Edit;
   PechVipusk.FieldByName('Vib').ASBoolean := True;
   PechVipusk.Post;
   PechVipusk.Next;
  end;
  PechVipusk.First;
  PechVipusk.EnableControls;
 end
 else
 begin
  PechVipusk.First;
  PechVipusk.DisableControls;
  While not PechVipusk.Eof do
  begin
   PechVipusk.Edit;
   PechVipusk.FieldByName('Vib').ASBoolean := False;
   PechVipusk.Post;
   PechVipusk.Next;
  end;
  PechVipusk.First;
  PechVipusk.EnableControls;
 end;
end;

procedure TFPech_Vibor.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFPech_Vibor.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

procedure TFPech_Vibor.SpinEdit3Change(Sender: TObject);
begin
Splash := ShowSplashWindow(AniBmp1,
 'Загрузка данных. Подождите, пожалуйста...', True, nil);
 mes:=SpinEdit3.Value;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
 + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''',dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then
 begin
  vDocument_id:=V_DOK;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT kart.kol_prih,SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD,SPPROD.STRUK_ID,KART.KSM_ID,ediz.neis,spprod.gost,sprorg.nam namorg,region.nam namreg');
  DM1.IBQuery1.SQL.Add(' FROM KARTv kart');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (KART.KSM_ID = SPPROD.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' left JOIN SProrg ON (spprod.Korg = SProrg.Kod)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN ediz ON (spprod.Kei_ID = ediz.Kei_ID)');
  DM1.IBQuery1.SQL.Add(' WHERE KART.DOC_ID='+INTTOSTR(Vdocument_id));
  DM1.IBQuery1.SQL.Add(' ORDER BY SPPROD.NMAT ');
  DM1.IBQuery1.Active:=true;
  PechVipusk.EmptyTable;
  PechVipusk.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
  PechVipusk.Active := True;
  PechVipusk.First;
  PechVipusk.DisableControls;
  While not PechVipusk.Eof do
  begin
   PechVipusk.Edit;
   PechVipusk.FieldByName('Vib').ASBoolean := False;
   PechVipusk.Post;
   PechVipusk.Next;
  end;
  PechVipusk.First;
  PechVipusk.EnableControls;
 end;
 Splash.Free;
end;

procedure TFPech_Vibor.SpinEdit4Change(Sender: TObject);
begin
 Splash := ShowSplashWindow(AniBmp1,
 'Загрузка данных. Подождите, пожалуйста...', True, nil);
 GOD:=SpinEdit4.Value;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 v_dok:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
 + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''',dm1.belmed,dm1.ibt_read);
 If v_dok<>Null then
 begin
  vDocument_id:=V_DOK;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT kart.kol_prih,SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD,SPPROD.STRUK_ID,KART.KSM_ID,ediz.neis,spprod.gost,sprorg.nam namorg,region.nam namreg');
  DM1.IBQuery1.SQL.Add(' FROM KARTv kart');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (KART.KSM_ID = SPPROD.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' left JOIN SProrg ON (spprod.Korg = SProrg.Kod)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN ediz ON (spprod.Kei_ID = ediz.Kei_ID)');
  DM1.IBQuery1.SQL.Add(' WHERE KART.DOC_ID='+INTTOSTR(Vdocument_id));
  DM1.IBQuery1.SQL.Add(' ORDER BY SPPROD.NMAT ');
  DM1.IBQuery1.Active:=true;
  PechVipusk.EmptyTable;
  PechVipusk.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
  PechVipusk.Active := True;
  PechVipusk.First;
  PechVipusk.DisableControls;
  While not PechVipusk.Eof do
  begin
   PechVipusk.Edit;
   PechVipusk.FieldByName('Vib').ASBoolean := False;
   PechVipusk.Post;
   PechVipusk.Next;
  end;
  PechVipusk.First;
  PechVipusk.EnableControls;
 end;
 Splash.Free;
end;

end.
