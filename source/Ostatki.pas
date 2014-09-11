unit Ostatki;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ImgList, StdCtrls, ComCtrls, ToolWin, Spin,
  DBCtrls, DB, IBCustomDataSet, IBQuery, RxIBQuery, RXCtrls, FindDlgEh,
  Menus, FR_Class, FR_DSet, FR_DBSet, ExtCtrls, Mask, ToolEdit,SplshWnd,
  PrnDbgeh, Buttons, IBUpdateSQL, IBUpdSQLW, RxMemDS;

type
  TFOstatki = class(TForm)
    ToolBar1: TToolBar;
    ToolButton6: TToolButton;
    ToolButton5: TToolButton;
    ImageList1: TImageList;
    DSOst: TDataSource;
    Ost: TRxIBQuery;
    PopupMenu2: TPopupMenu;
    FindDlgEh1: TFindDlgEh;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    frDBDataSet3: TfrDBDataSet;
    frReport2: TfrReport;
    PopupMenu3: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    PechOstSyr: TRxIBQuery;
    frDBDataSet1: TfrDBDataSet;
    Label2: TLabel;
    Label4: TLabel;
    N1: TMenuItem;
    Label35: TLabel;
    ToolButton3: TToolButton;
    DBGridEh2: TDBGridEh;
    Label1: TLabel;
    OstKSM_ID: TIntegerField;
    OstNMAT: TIBStringField;
    OstNEIS: TIBStringField;
    OstOSTATOK_BEGIN_S: TFMTBCDField;
    OstPRIX_PERIOD: TFMTBCDField;
    OstRASX_PERIOD: TFMTBCDField;
    OstOSTATOK_END_S: TFMTBCDField;
    OstOSTATOK_BEGIN_NZ: TFMTBCDField;
    OstOSTATOK_END_NZ: TFMTBCDField;
    N2: TMenuItem;
    frDBDataSet2: TfrDBDataSet;
    N3: TMenuItem;
    N6: TMenuItem;
    DSPechOstSyr: TDataSource;
    PechOstSyrKSM_ID: TIntegerField;
    PechOstSyrS_ONM_NZ: TFMTBCDField;
    PechOstSyrS_ONM_S: TFMTBCDField;
    PechOstSyrS_OT_NZ: TFMTBCDField;
    PechOstSyrS_OT_S: TFMTBCDField;
    PechOstSyrNMAT: TIBStringField;
    PechOstSyrNEIS: TIBStringField;
    DBGridEh1: TDBGridEh;
    FindDlgEh2: TFindDlgEh;
    N12: TMenuItem;
    frDBDataSet4: TfrDBDataSet;
    N13: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    N11: TMenuItem;
    PrintDBGridEh2: TPrintDBGridEh;
    DateEdit3: TDateEdit;
    DateEdit2: TDateEdit;
    SpeedButton1: TSpeedButton;
    ToolButton1: TToolButton;
    OstNAMPR: TIBStringField;
    OstPRMAT: TIBStringField;
    Vipusk_na_Ost1: TIBQuery;
    frDBDataSet5: TfrDBDataSet;
    N14: TMenuItem;
    Vipusk_na_Ost1KSM_ID: TIntegerField;
    Vipusk_na_Ost1NMAT: TIBStringField;
    Vipusk_na_Ost1KOD_PREP: TIBStringField;
    Vipusk_na_Ost1NMAT_PREP: TIBStringField;
    Vipusk_na_Ost1OSTATOK_END_S: TFMTBCDField;
    Vipusk_na_Ost1OSTATOK_END_NZ: TFMTBCDField;
    Vipusk_na_Ost1KRAZ: TSmallintField;
    Vipusk_na_Ost1NEIS: TIBStringField;
    Vipusk_na_Ost1NEISP: TIBStringField;
    Vipusk_na_Ost1PLNORM: TFMTBCDField;
    Vipusk_na_Ost1VOL_Z: TFloatField;
    Vipusk_na_Ost: TRxIBQuery;
    Vipusk_na_OstKSM_ID: TIntegerField;
    Vipusk_na_OstNMAT: TIBStringField;
    Vipusk_na_OstKOD_PREP: TIBStringField;
    Vipusk_na_OstNMAT_PREP: TIBStringField;
    Vipusk_na_OstOSTATOK_END_NZ: TFMTBCDField;
    Vipusk_na_OstKRAZ: TSmallintField;
    Vipusk_na_OstNEIS: TIBStringField;
    Vipusk_na_OstNEISP: TIBStringField;
    Vipusk_na_OstVOL_Z: TFloatField;
    IBUDVip_na_ost: TIBUpdateSQLW;
    Vipusk_na_OstOSTATOK_END_S: TFMTBCDField;
    Vipusk_na_OstPLNORM: TFMTBCDField;
    Ost1: TRxMemoryData;
    Ost1KSM_ID: TIntegerField;
    Ost1NMAT: TIBStringField;
    Ost1NEIS: TIBStringField;
    Ost1NAMPR: TIBStringField;
    Ost1PRMAT: TIBStringField;
    Ost1OSTATOK_BEGIN_S: TFloatField;
    Ost1PRIX_PERIOD: TFloatField;
    Ost1RASX_PERIOD: TFloatField;
    Ost1OSTATOK_END_S: TFloatField;
    Ost1OSTATOK_BEGIN_NZ: TFloatField;
    Ost1OSTATOK_END_NZ: TFloatField;
    PechOstSyr1: TRxMemoryData;
    PechOstSyr1KSM_ID: TIntegerField;
    PechOstSyr1NMAT: TIBStringField;
    PechOstSyr1NEIS: TIBStringField;
    PechOstSyr1S_ONM_NZ: TFloatField;
    PechOstSyr1S_ONM_S: TFloatField;
    PechOstSyr1S_OT_NZ: TFloatField;
    PechOstSyr1S_OT_S: TFloatField;



    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure frReport2GetValue(const ParName: String;
      var ParValue: Variant);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure DBGridEh2SortMarkingChanged(Sender: TObject);
    procedure DateEdit3Change(Sender: TObject);
    procedure DateEdit2Change(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure OstAfterOpen(DataSet: TDataSet);
    procedure OstBeforeClose(DataSet: TDataSet);
    procedure PechOstSyrAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOstatki: TFOstatki;
  Ost_usl: STRING;
  Ost_usl1: STRING;
  Ost_sort: STRING;
  OstSyr_usl: STRING;
  OstSyr_sort: STRING;
  ost_pr: string;
  AniBmp1: TBitmap;
  ost_s:string;
  Usl: String;
  od: string;
  od1: string;
  od2: string;

implementation

USES DM,GlMenu, OstSyr,Vibor_Spr_Tree,Vibor_Spr{, UOstThread};

{$R *.dfm}

procedure TFOstatki.FormCreate(Sender: TObject);
begin
  AniBmp1 := TBitmap.Create;
  AniBmp1.LoadFromResourceName(HInstance, 'booka');
  ost_pr := '';
  label4.Caption := '';
end;

procedure TFOstatki.FormDestroy(Sender: TObject);
begin
  AniBmp1.Destroy;
end;

procedure TFOstatki.FormShow(Sender: TObject);
//var
//  MyThread: TOstThread;
begin
  Splash := ShowSplashWindow(AniBmp1,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  DateEdit3.OnChange := nil;
  DateEdit2.OnChange := nil;
  DateEdit3.Date := strtodate(s_dat1);
  DateEdit2.Date := strtodate(s_dat2);
  DateEdit3.OnChange := DateEdit3Change;
  DateEdit2.OnChange := DateEdit2Change;
  label2.caption := '';

  Ost_Usl := ' ';
  ost_s := ' ';
  Ost_Usl1 := ' having  (sum(Ostatok_end_NZ) <> 0) or (sum(Ostatok_end_S) <> 0) '
              + ' or (sum(Ostatok_begin_NZ) <> 0) or (sum(Ostatok_begin_S) <> 0) '
              + ' or (sum(OST.PRIX_PERIOD) <> 0) or (sum(OST.RASX_PERIOD) <> 0)';
  Ost_sort := ' ORDER BY 1';
  OstSyr_sort := ' ORDER BY OST.ksm_id';
  Ost.Close;
  Ost.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  Ost.MacroByName('DAT1').AsString := '''' + S_DAT1 + '''';
  Ost.MacroByName('DAT2').AsString := '''' + S_DAT2 + '''';
  Ost.MacroByName('usl').AsString := Ost_Usl;
  Ost.MacroByName('USL1').AsString := Ost_Usl1;
  Ost.MacroByName('SORT').AsString := Ost_Sort;
  Ost.Open;

  dbgrideh1.Visible := false;
  dbgrideh2.Visible := true;
  Splash.Free;
//  MyThread := TOstThread.Create(False);

end;

procedure TFOstatki.ToolButton6Click(Sender: TObject);
begin
  If (FindDlgEh1.Filtered) Then
    FindDlgEh1.Filtered := False;
  If (FindDlgEh2.Filtered) Then
    FindDlgEh1.Filtered := False;
  ost_pr := '';
  PopupMenu2.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
end;

procedure TFOstatki.N4Click(Sender: TObject);
begin
//      Показать все сырье по заданным разделам         //
  Splash := ShowSplashWindow(AniBmp1,
         'Загрузка данных. Подождите, пожалуйста...', True, nil);
  label4.Caption := '';
  label2.Caption := '';
//od:='01';
//od:='02';
//od2:='05';
//Ost_Usl:=' where ost.prmat='+''''+od+''''+' or ost.prmat='+''''+od2+'''' +' or ost.prmat='+''''+od1+'''';
//Ost_Usl:=' ';
  Ost_USL1 := '';
  Ost.Close;
  Ost.MacroByName('DAT1').AsString := '''' + datetostr(DateEdit3.Date) + '''';
  Ost.MacroByName('DAT2').AsString := '''' + datetostr(DateEdit2.Date) + '''';
  Ost.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  Ost.MacroByName('USL1').AsString := Ost_Usl1;
  Ost.MacroByName('USL').AsString := Ost_Usl;
  Ost.MacroByName('SORT').AsString := Ost_Sort;
  Ost.Open;
  dbgrideh1.Visible := false;
  dbgrideh2.Visible := true;
  Splash.Free;
end;

procedure TFOstatki.N3Click(Sender: TObject);
begin
  dm1.writeWhoUsesGotProd('Печать остатков по препартам (в разрезе сырья)');
  //      Печать остатков по препаратам (в разрезе сырья)        //
  dm1.Ost_Syr_prep.Close;
  dm1.Ost_Syr_prep.MacroByName('DAT1').AsString := '''' + S_DAT1 + '''';
  dm1.Ost_Syr_prep.MacroByName('DAT2').AsString := '''' + S_DAT2 + '''';
  dm1.Ost_Syr_prep.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  dm1.Ost_Syr_prep.MacroByName('Sort').AsString := ' ORDER BY OST.Ksm_id';
  dm1.Ost_Syr_prep.Open;
  FrReport2.LoadFromFile(reportsPath + 'P_Ost_Syr_Syr.frf');
  FrReport2.ShowReport;
  dm1.Ost_Syr_prep.Close;
end;

procedure TFOstatki.N1Click(Sender: TObject);
begin
  //      Только  сырье на производство            //
  Splash := ShowSplashWindow(AniBmp1,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  label2.Caption := '  Фильтр: ';
  label4.Caption := ' Только сырье на основное производство';
  od := '01';
  od2 := '05';
  Ost_Usl := ' where ost.prmat = ' + '''' + od + '''' + ' or ost.prmat = '
              + '''' + od2 + '''' ;
  Ost_Usl1 := ' having  (sum(Ostatok_end_NZ) <> 0) or (sum(Ostatok_end_S) <> 0) '
              + 'or (sum(Ostatok_begin_NZ) <> 0) or (sum(Ostatok_begin_S) <> 0) '
              + 'or (sum(OST.PRIX_PERIOD) <> 0) or (sum(OST.RASX_PERIOD) <> 0)';
  Ost.Close;
  Ost.MacroByName('DAT1').AsString := '''' + datetostr(DateEdit3.Date) + '''';
  Ost.MacroByName('DAT2').AsString := '''' + datetostr(DateEdit2.Date) + '''';
  Ost.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  Ost.MacroByName('USL').AsString := Ost_Usl;
  Ost.MacroByName('USL1').AsString := Ost_Usl1;
  Ost.MacroByName('SORT').AsString := Ost_Sort;
//OST.Filter:='OST.PRIX<>0 OR OST.RASX<>0';
  Ost.Open;
  dbgrideh1.Visible := false;
  dbgrideh2.Visible := true;
  Splash.Free;
end;

procedure TFOstatki.N2Click(Sender: TObject);
begin
  dm1.writeWhoUsesGotProd('Печать остатков по препаратам (в разрезе препаратов)');
  //      Печать остатков по препаратам (в разрезе препаратов)      //
  dm1.Ost_Syr_prep.Close;
  dm1.Ost_Syr_prep.MacroByName('DAT1').AsString := '''' + S_DAT1 + '''';
  dm1.Ost_Syr_prep.MacroByName('DAT2').AsString := '''' + S_DAT2 + '''';
  dm1.Ost_Syr_prep.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  dm1.Ost_Syr_prep.MacroByName('Sort').AsString := ' ORDER BY OST.Kod_prep';
  dm1.Ost_Syr_prep.Open;
  FrReport2.LoadFromFile(reportsPath + 'P_Ost_Syr_prep.frf');
  FrReport2.ShowReport;
  dm1.Ost_Syr_prep.Close;
end;

procedure TFOstatki.N5Click(Sender: TObject);
begin
  //    Не показывать нулевые строки           //
  Splash := ShowSplashWindow(AniBmp1,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  label2.Caption := '  Фильтр: ';
  label4.Caption := ' Не показывать нулевые строки';
//od:='01';
//od:='02';
//od2:='05';
//Ost_Usl:=' where ost.prmat='+''''+od+''''+' or ost.prmat='+''''+od2+'''' +' or ost.prmat='+''''+od1+'''';
  Ost_Usl1 := ' having  (sum(Ostatok_end_NZ) <> 0) or (sum(Ostatok_end_S) <> 0) '
              + 'or (sum(Ostatok_begin_NZ) <> 0) or (sum(Ostatok_begin_S) <> 0) '
              + 'or (sum(OST.PRIX_PERIOD) <> 0) or (sum(OST.RASX_PERIOD) <> 0)';
  Ost.Close;
  Ost.MacroByName('DAT1').AsString := '''' + datetostr(DateEdit3.Date) + '''';
  Ost.MacroByName('DAT2').AsString := '''' + datetostr(DateEdit2.Date) + '''';
  Ost.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  Ost.MacroByName('USL').AsString := Ost_Usl;
  Ost.MacroByName('USL1').AsString := Ost_Usl1;
  Ost.MacroByName('SORT').AsString := Ost_Sort;
//OST.Filter:='OST.PRIX<>0 OR OST.RASX<>0';
  Ost.Open;
  dbgrideh1.Visible := false;
  dbgrideh2.Visible := true;
  Splash.Free;
end;

procedure TFOstatki.N6Click(Sender: TObject);

begin
  //      Остатки на препаратах                    //
  Splash := ShowSplashWindow(AniBmp1,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  ost_s := ost_usl;
// if ost_usl='  ' then ost_usl:=' where (ksm_idpr<>0 and not(ksm_idpr is null))'
// else ost_usl:=ost_usl+' and (ksm_idpr<>0 and not(ksm_idpr is null))';
  ost_usl := ' where (ksm_idpr <> 0 and not(ksm_idpr is null))';
  PechOstSyr.Close;
  PechOstSyr.MacroByName('DAT1').AsString := '''' + datetostr(DateEdit3.Date) + '''';
  PechOstSyr.MacroByName('DAT2').AsString := '''' + datetostr(DateEdit2.Date) + '''';
  PechOstSyr.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  PechOstSyr.MacroByName('USL').AsString := Ost_Usl;
  PechOstSyr.MacroByName('USL1').AsString := Ost_Usl1;
  PechOstSyr.MacroByName('SORT').AsString := OstSyr_Sort;
  PechOstSyr.Open;
  dbgrideh2.Visible := false;
  dbgrideh1.Visible := true;
  Splash.Free;
  ost_usl := ost_s;
  ost_s := '1';
end;

procedure TFOstatki.N7Click(Sender: TObject);
begin
  //      Показать сырье, по которому есть остатки          //
  Splash := ShowSplashWindow(AniBmp1,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  label2.Caption := '  Фильтр: ';
  label4.Caption := 'Показать сырье с остатками';
//od:='01';
//od:='02';
//od2:='05';
//Ost_Usl:=' where ost.prmat='+''''+od+''''+' or ost.prmat='+''''+od2+'''' +' or ost.prmat='+''''+od1+'''';
  Ost_Usl1 := ' having  (sum(Ostatok_end_NZ) <> 0) or (sum(Ostatok_end_S) <> 0)';
  Ost.Close;
  Ost.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  Ost.MacroByName('USL').AsString := Ost_Usl;
  Ost.MacroByName('USL1').AsString := Ost_Usl1;
  Ost.MacroByName('SORT').AsString := Ost_Sort;
  Ost.MacroByName('DAT1').AsString := '''' + datetostr(DateEdit3.Date) + '''';
  Ost.MacroByName('DAT2').AsString := '''' + datetostr(DateEdit2.Date) + '''';
  Ost.Open;
  dbgrideh1.Visible := false;
  dbgrideh2.Visible := true;
  Splash.Free;
end;

procedure TFOstatki.N8Click(Sender: TObject);
begin
  //      Показать сырье, по которому было движение          //
  Splash := ShowSplashWindow(AniBmp1,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  label2.Caption := '  Фильтр: ';
  label4.Caption := ' Сырье,по которому было движение';
//od:='01';
//od:='02';
//od2:='05';
//Ost_Usl:=' where ost.prmat='+''''+od+''''+' or ost.prmat='+''''+od2+'''' +' or ost.prmat='+''''+od1+'''';
  Ost_Usl1 := ' having  (sum(ost.prix_period) <> 0) or (sum(ost.rasx_period) <> 0)';
  Ost.Close;
  Ost.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  Ost.MacroByName('USL').AsString := Ost_Usl;
  Ost.MacroByName('USL1').AsString := Ost_Usl1;
  Ost.MacroByName('SORT').AsString := Ost_Sort;
  Ost.MacroByName('DAT1').AsString := '''' + datetostr(DateEdit3.Date) + '''';
  Ost.MacroByName('DAT2').AsString := '''' + datetostr(DateEdit2.Date) + '''';
  Ost.Open;
  dbgrideh1.Visible := false;
  dbgrideh2.Visible := true;
  Splash.Free;
end;

procedure TFOstatki.N9Click(Sender: TObject);
begin
  //      Показать сырье, по которому был приход          //
  Splash := ShowSplashWindow(AniBmp1,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  label2.Caption := '  Фильтр: ';
  label4.Caption := ' Сырье,по которому был приход';
//od:='01';
//od:='02';
//od2:='05';
//Ost_Usl:=' where ost.prmat='+''''+od+''''+' or ost.prmat='+''''+od2+'''' +' or ost.prmat='+''''+od1+'''';
  Ost_Usl1 := ' having  sum(ost.prix_period)<>0)';
  ost_pr := 'prix';
  Ost.Close;
  Ost.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  Ost.MacroByName('USL').AsString := Ost_Usl;
  Ost.MacroByName('USL1').AsString := Ost_Usl1;
  Ost.MacroByName('SORT').AsString := Ost_Sort;
  Ost.MacroByName('DAT1').AsString := '''' + datetostr(DateEdit3.Date) + '''';
  Ost.MacroByName('DAT2').AsString := '''' + datetostr(DateEdit2.Date) + '''';
  Ost.Open;
  Splash.Free;
  dbgrideh1.Visible := false;
  dbgrideh2.Visible := true;
//ost.Filtered:=true;
end;

procedure TFOstatki.OstAfterOpen(DataSet: TDataSet);
var
  date3, date2 : TDate;
begin
  Ost1.DisableControls;
  Ost1.Close;
  Ost1.EmptyTable;
  Ost1.FieldDefs := Ost.FieldDefs;
  Ost1.LoadFromDataSet(Ost,0,lmAppend);
  Ost1.Open;
  date3 := DateEdit3.Date;
  date2 := DateEdit2.Date;
  dm1.delGotProd(@Ost1, @date3, @date2);
  Ost1.First;
  Ost1.EnableControls;
end;

procedure TFOstatki.OstBeforeClose(DataSet: TDataSet);
begin
  Ost1.Close;
  Ost1.EmptyTable;
end;

procedure TFOstatki.PechOstSyrAfterOpen(DataSet: TDataSet);
var
  date3, date2 : TDate;
begin
  PechOstSyr1.DisableControls;
  PechOstSyr1.Close;
  PechOstSyr1.EmptyTable;
  PechOstSyr1.LoadFromDataSet(PechOstSyr,0,lmAppend);
  PechOstSyr1.Open;
  date3 := DateEdit3.Date;
  date2 := DateEdit2.Date;
  dm1.delGotProd(@PechOstSyr1, @date3, @date2);
  PechOstSyr1.First;
  PechOstSyr1.EnableControls;
end;

procedure TFOstatki.SpeedButton1Click(Sender: TObject);
begin
  s_DAT1:=datetostr(DateEdit3.Date);
  s_DAT2:=datetostr(DateEdit2.Date);
  mes:=strtoint(copy(datetostr(DateEdit2.Date),4,2));
  god:=strtoint(copy(datetostr(DateEdit2.Date),7,4));
  Ost.Close;
  Ost.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
  Ost.MacroByName('USL').AsString:=Ost_Usl;
  Ost.MacroByName('USL1').AsString:=Ost_Usl1;
  Ost.MacroByName('SORT').AsString:=Ost_Sort;
  Ost.MacroByName('DAT1').AsString:=''''+datetostr(DateEdit3.Date)+'''';
  Ost.MacroByName('DAT2').AsString:=''''+datetostr(DateEdit2.Date)+'''';
  Ost.Open;
  PechOstSyr.Close;
  PechOstSyr.MacroByName('DAT1').AsString:=''''+datetostr(DateEdit3.Date)+'''';
  PechOstSyr.MacroByName('DAT2').AsString:=''''+datetostr(DateEdit2.Date)+'''';
  PechOstSyr.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
  PechOstSyr.MacroByName('USL').AsString:=Ost_Usl;
  PechOstSyr.MacroByName('USL1').AsString:=Ost_Usl1;
  PechOstSyr.MacroByName('SORT').AsString:=OstSyr_Sort;
  PechOstSyr.Open;
end;

procedure TFOstatki.N10Click(Sender: TObject);
begin
  //      Показать сырье, по которому был расход          //
  Splash := ShowSplashWindow(AniBmp1,
                             'Загрузка данных. Подождите, пожалуйста...', True, nil);
  label2.Caption := '  Фильтр: ';
  label4.Caption := ' Сырье,по которому был расход';
//od:='01';
//od:='02';
//od2:='05';
//Ost_Usl:=' where ost.prmat='+''''+od+''''+' or ost.prmat='+''''+od2+'''' +' or ost.prmat='+''''+od1+'''';
  Ost_Usl1 := ' having  sum(OST.RASX_PERIOD) <> 0';
  ost_pr := 'rasx';
  Ost.Close;
  Ost.MacroByName('DAT1').AsString := '''' + datetostr(DateEdit3.Date) + '''';
  Ost.MacroByName('DAT2').AsString := '''' + datetostr(DateEdit2.Date) + '''';
  Ost.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  Ost.MacroByName('USL').AsString := Ost_Usl;
  Ost.MacroByName('USL1').AsString := Ost_Usl1;
  Ost.MacroByName('SORT').AsString := Ost_Sort;
  Ost.Open;
  dbgrideh1.Visible := false;
  dbgrideh2.Visible := true;
//ost.Filtered:=true;
  Splash.Free;
end;

procedure TFOstatki.N11Click(Sender: TObject);
var
  F_column : string;
begin
  dm1.writeWhoUsesGotProd('Печать по условию');
  //      Печать  по условию             //
// nm:=dm1.MesName(mes);
  if dbgrideh1.Visible = true then
  begin
    F_column := FindDlgEh1.VerbalUsl.Text;
    printdbgrideh1.Title.Text := 'Остатки сырья. ' + FGlMenu.RXLabel1.Caption
                                 + '.  В период с ' + s_dat1 + ' по ' + s_dat2
                                 + #13 + #10 + ' Условие выборки: ' + F_column;
    PechOstSyr.DisableControls;
    printdbgrideh1.Preview;
    PechOstSyr.EnableControls;
  end
  else
  begin
    F_column := FindDlgEh2.VerbalUsl.Text;
    printdbgrideh2.Title.Text := 'Оборотная ведомость. ' + FGlMenu.RXLabel1.Caption
                                 + '.  В период с ' + s_dat1 + ' по ' + s_dat2
                                 + #13 + #10 + ' Условие выборки: ' + F_column;
    Ost.DisableControls;
    printdbgrideh2.Preview;
    Ost.EnableControls;
  end;
end;

procedure TFOstatki.N12Click(Sender: TObject);
begin
  dm1.writeWhoUsesGotProd('Печать остатков на п/ф по препаратам');
  //      Печать остатков на п/ф по препаратам        //
  dm1.Ost_Syr_prep_pf.Close;
  dm1.Ost_Syr_prep_pf.MacroByName('DAT1').AsString := '''' + S_DAT1 + '''';
  dm1.Ost_Syr_prep_pf.MacroByName('DAT2').AsString := '''' + S_DAT2 + '''';
  dm1.Ost_Syr_prep_pf.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  dm1.Ost_Syr_prep_pf.MacroByName('Sort').AsString := ' ORDER BY OST.Kod_prep';
  dm1.Ost_Syr_prep_pf.Open;
  FrReport2.LoadFromFile(reportsPath + 'P_Ost_Syr_pf.frf');
  FrReport2.ShowReport;
  dm1.Ost_Syr_prep_pf.Close;
end;

procedure TFOstatki.N13Click(Sender: TObject);
begin
  dm1.writeWhoUsesGotProd('Печать остатков на п/ф по сырью');
  //      Печать остатков на п/ф по сырью            //
  dm1.Ost_Syr_prep_pf.Close;
  dm1.Ost_Syr_prep_pf.MacroByName('DAT1').AsString := '''' + S_DAT1 + '''';
  dm1.Ost_Syr_prep_pf.MacroByName('DAT2').AsString := '''' + S_DAT2 + '''';
  dm1.Ost_Syr_prep_pf.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  dm1.Ost_Syr_prep_pf.MacroByName('Sort').AsString := ' ORDER BY OST.Ksm_id';
  dm1.Ost_Syr_prep_pf.Open;
  FrReport2.LoadFromFile(reportsPath + 'P_Ost_Prep_Syr_Syr.frf');
  FrReport2.ShowReport;
  dm1.Ost_Syr_prep_pf.Close;
end;

procedure TFOstatki.N14Click(Sender: TObject);
begin
  dm1.writeWhoUsesGotProd('Печать рассчитанного выпуска на остатки');
  //      Печать рассчитанного выпуска на остатки          //
  PechOstSyr.Close;
  PechOstSyr.MacroByName('DAT1').AsString := '''' + datetostr(DateEdit3.Date) + '''';
  PechOstSyr.MacroByName('DAT2').AsString := '''' + datetostr(DateEdit2.Date) + '''';
  PechOstSyr.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  PechOstSyr.MacroByName('USL').AsString := Ost_Usl;
  PechOstSyr.MacroByName('USL1').AsString := Ost_Usl1;
  PechOstSyr.MacroByName('SORT').AsString := OstSyr_Sort;
  PechOstSyr.Open;

  Vipusk_na_Ost.Close;
  Vipusk_na_Ost.ParamByName('DAT1').AsString := S_DAT1;
  Vipusk_na_Ost.ParamByName('DAT2').AsString := S_DAT2;
  Vipusk_na_Ost.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  Vipusk_na_Ost.ParamByName('god').AsInteger := god;
  Vipusk_na_Ost.ParamByName('mes').AsInteger := mes;
  Vipusk_na_Ost.Open;
  Vipusk_na_Ost.First;
  while not Vipusk_na_Ost.Eof do
  begin
    PechOstSyr.First;
    if PechOstSyr.Locate('ksm_id', Vipusk_na_OstKsm_id.AsInteger, []) then
    begin
      Vipusk_na_Ost.Edit;
      Vipusk_na_OstOstatok_end_s.AsFloat := PechOstSyrS_ot_s.AsFloat;
      Vipusk_na_Ost.Post;
    end;
    Vipusk_na_Ost.Next;
  end;
  FrReport2.LoadFromFile(reportsPath + 'P_Vip_na_Ost_1.frf');
  FrReport2.ShowReport;
  Vipusk_na_Ost.Close;
end;

procedure TFOstatki.ToolButton5Click(Sender: TObject);
begin
 PopupMenu3.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFOstatki.frReport2GetValue(const ParName: String;
  var ParValue: Variant);
var
  s_nm: integer;
  s_gd: integer;
begin
  s_gd:=god;
  if mes=12 then
   begin
     s_nm:=1;
     s_gd:=god+1
    end
    else s_nm:=mes+1;
  nammes := dm1.MesNameInRodPodezhSmall(s_nm);
  if ParName='nammes' then ParValue:=nammes;
  {if ParName='nammes' then
  begin
  if (mes=3) or (mes=8) then s_nm:=FGlmenu.Label2.Caption+'а'
  else s_nm:=copy(FGlmenu.Label2.Caption,1,(length(trim(FGlmenu.Label2.Caption)))-1)+'я';
  ParValue:=AnsiLowerCase(s_nm);
  end;}
  if ParName='god' then
  ParValue:=s_gd;
  if ParName='namceh' then ParValue:=FGlmenu.RxLabel1.Caption;
end;

procedure TFOstatki.MenuItem4Click(Sender: TObject);
begin
  dm1.writeWhoUsesGotProd('Печать оборотной ведомости (без ост.сырья на препартах)');
  //      Печать оборотной ведомости (без ост.сырья на препаратах)     //
  ost1.DisableControls;
//  ost.DisableControls;
  FrReport2.LoadFromFile(reportsPath + 'P_Obved.frf');
  FrReport2.ShowReport;
//  ost.EnableControls;
  ost1.EnableControls;
end;

procedure TFOstatki.MenuItem5Click(Sender: TObject);
var
 s_OstSyr_sort:string;
begin
  dm1.writeWhoUsesGotProd('Печать остатков сырья в цехе(с ост.сырья на препаратах)');
  //      Печать остатаков сырья в цехе(с ост.сырья на препаратах)      //
  ost_s := ' ';
  s_OstSyr_sort := OstSyr_sort;
  OstSyr_sort := ' ORDER BY OST.Nmat';
  PechOstSyr.Close;
  PechOstSyr.MacroByName('DAT1').AsString := '''' + datetostr(DateEdit3.Date) + '''';
  PechOstSyr.MacroByName('DAT2').AsString := '''' + datetostr(DateEdit2.Date) + '''';
  PechOstSyr.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  PechOstSyr.MacroByName('USL').AsString := Ost_Usl;
  PechOstSyr.MacroByName('USL1').AsString := Ost_Usl1;
  PechOstSyr.MacroByName('SORT').AsString := OstSyr_Sort;
  PechOstSyr.Open;
  FrReport2.LoadFromFile(reportsPath + 'P_Ostat.frf');
  FrReport2.ShowReport;
  PechOstSyr.Close;
  OstSyr_sort := s_OstSyr_sort;
end;

procedure TFOstatki.DBGridEh1SortMarkingChanged(Sender: TObject);
var
  i : Integer;
begin    
  ostSyr_Sort := ' ORDER BY ';
  for i := 0 to DBGridEh1.SortMarkedColumns.Count - 1 do
  begin
    if (DBGridEh1.SortMarkedColumns[i].Title.SortMarker = smUpEh) then
    begin
      if (DBGridEh1.SortMarkedColumns[i].FieldName = 'KSM_ID') then
        ostSyr_Sort := ostSyr_Sort + 'Ost."' + DBGridEh1.SortMarkedColumns[i].FieldName + '"' + ' DESC , '
      else
        ostSyr_Sort := ostSyr_Sort + '"' + DBGridEh1.SortMarkedColumns[i].FieldName + '"' + ' DESC , ';
    end
    else
    begin
      if (DBGridEh1.SortMarkedColumns[i].FieldName = 'KSM_ID') then
        ostSyr_Sort := ostSyr_Sort + 'Ost."' + DBGridEh1.SortMarkedColumns[i].FieldName + '"' + ', '
      else
        ostSyr_Sort := ostSyr_Sort + '"' + DBGridEh1.SortMarkedColumns[i].FieldName + '"' + ', ';
    end;
  END;
  if (copy(ostSyr_Sort, 11, 1) <> '') then
  begin
    if (ost_s = '1') then
    begin
      ost_s := ost_usl;
      if (ost_usl = '  ') then
        ost_usl := ' where (ksm_idpr<>0 and not(ksm_idpr is null))'
      else
        ost_usl := ost_usl + ' and (ksm_idpr<>0 and not(ksm_idpr is null))';
    end;
    ostSyr_Sort := Copy(ostSyr_Sort, 1, Length(ostSyr_Sort) - 2);
    PechOstSyr.Close;
    PechOstSyr.MacroByName('DAT1').AsString := '''' + datetostr(DateEdit3.Date) + '''';
    PechOstSyr.MacroByName('DAT2').AsString := '''' + datetostr(DateEdit2.Date) + '''';
    PechOstSyr.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
    PechOstSyr.MacroByName('USL').AsString := Ost_Usl;
    PechOstSyr.MacroByName('USL1').AsString := Ost_Usl1;
    PechOstSyr.MacroByName('SORT').AsString := OstSyr_Sort;
    PechOstSyr.Open;
    if (ost_s = '1') then
      ost_usl := ost_s;
  end;
end;

procedure TFOstatki.DBGridEh2SortMarkingChanged(Sender: TObject);

var
  i :Integer;
begin
 ost_Sort :=' ORDER BY ';
 for i := 0 to DBGridEh2.SortMarkedColumns.Count-1 do
 BEGIN
  if DBGridEh2.SortMarkedColumns[i].Title.SortMarker = smUpEh then
//  begin
//   if DBGridEh2.SortMarkedColumns[i].FieldName='KSM_ID' then
    ost_Sort := ost_Sort+ '"'+ DBGridEh2.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
  else
//   if DBGridEh2.SortMarkedColumns[i].FieldName='KSM_ID' then
//    ost_Sort := ost_Sort+ 'Ost."'+ DBGridEh2.SortMarkedColumns[i].FieldName + '"'+ ', '
//   else
    ost_Sort := ost_Sort + '"'+ DBGridEh2.SortMarkedColumns[i].FieldName+ '"'+ ', ';
//  end;
 END;
 if copy(ost_Sort,11,1) <> '' then
 begin
  ost_Sort := Copy(ost_Sort,1,Length(ost_Sort)-2);
  Ost.Close;
  Ost.MacroByName('DAT1').AsString:=''''+datetostr(DateEdit3.Date)+'''';
  Ost.MacroByName('DAT2').AsString:=''''+datetostr(DateEdit2.Date)+'''';
  Ost.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
  Ost.MacroByName('USL').AsString:=Ost_Usl;
  Ost.MacroByName('USL1').AsString:=Ost_Usl1;
  Ost.MacroByName('SORT').AsString:=Ost_Sort;
  Ost.Open;
 end;
end;

procedure TFOstatki.DateEdit3Change(Sender: TObject);
begin
  s_DAT1 := datetostr(DateEdit3.Date);
  s_DAT2 := datetostr(DateEdit2.Date);
  mes := strtoint(copy(datetostr(DateEdit2.Date), 4, 2));
  god := strtoint(copy(datetostr(DateEdit2.Date), 7, 4));
{Ost.Close;
Ost.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
Ost.MacroByName('USL').AsString:=Ost_Usl;
Ost.MacroByName('SORT').AsString:=Ost_Sort;
Ost.MacroByName('DAT1').AsString:=''''+datetostr(DateEdit3.Date)+'''';
Ost.MacroByName('DAT2').AsString:=''''+datetostr(DateEdit2.Date)+'''';
Ost.Open;
PechOstSyr.Close;
PechOstSyr.MacroByName('DAT1').AsString:=''''+datetostr(DateEdit3.Date)+'''';
PechOstSyr.MacroByName('DAT2').AsString:=''''+datetostr(DateEdit2.Date)+'''';
PechOstSyr.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
PechOstSyr.MacroByName('USL').AsString:=Ost_Usl;
PechOstSyr.MacroByName('SORT').AsString:=OstSyr_Sort;
PechOstSyr.Open; }
end;

procedure TFOstatki.DateEdit2Change(Sender: TObject);
begin
  s_DAT1 := datetostr(DateEdit3.Date);
  s_DAT2 := datetostr(DateEdit2.Date);
  mes := strtoint(copy(datetostr(DateEdit2.Date), 4, 2));
  god := strtoint(copy(datetostr(DateEdit2.Date), 7, 4));
{Ost.Close;
Ost.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
Ost.MacroByName('USL').AsString:=Ost_Usl;
Ost.MacroByName('SORT').AsString:=Ost_Sort;
Ost.MacroByName('DAT1').AsString:=''''+datetostr(DateEdit3.Date)+'''';
Ost.MacroByName('DAT2').AsString:=''''+datetostr(DateEdit2.Date)+'''';
Ost.Open;
PechOstSyr.Close;
PechOstSyr.MacroByName('DAT1').AsString:=''''+datetostr(DateEdit3.Date)+'''';
PechOstSyr.MacroByName('DAT2').AsString:=''''+datetostr(DateEdit2.Date)+'''';
PechOstSyr.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
PechOstSyr.MacroByName('USL').AsString:=Ost_Usl;
PechOstSyr.MacroByName('SORT').AsString:=OstSyr_Sort;
PechOstSyr.Open;}

end;

procedure TFOstatki.ToolButton1Click(Sender: TObject);
begin
 try
  viborSpr.IBSprav.Database:=dm1.BELMED;
  ViborSpr.Usl_Table_Name := 'ost';
  ViborSpr.Usl_Field_Name := 'Prmat';
  ViborSpr.Usl_Field_Tip := 'String';
  ViborSpr.Caption := 'Выбор раздела';
  ViborSpr.ShowModal;
  If ViborSpr.Usl <> '' then
  begin
    If ViborSpr.Usl <> Ost_Usl then
    begin
       Ost_Usl :=' where '+ ViborSpr.Usl;
       Splash := ShowSplashWindow(AniBmp1,
         'Загрузка данных. Подождите, пожалуйста...', True, nil);
     try
      Ost.Close;
      Ost.MacroByName('DAT1').AsString:=''''+datetostr(DateEdit3.Date)+'''';
      Ost.MacroByName('DAT2').AsString:=''''+datetostr(DateEdit2.Date)+'''';
      Ost.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
      Ost.MacroByName('USL').AsString:=Ost_Usl;
      Ost.MacroByName('USL1').AsString:=Ost_Usl1;
      Ost.MacroByName('SORT').AsString:=Ost_Sort;
      Ost.Open;
     finally
      Splash.Free;
     end;
    end;
   end
  Else
  begin
    If ost_Usl <> ' ' then
    begin
       ost_Usl := ' ';
       Ost.Close;
       Ost.MacroByName('DAT1').AsString:=''''+datetostr(DateEdit3.Date)+'''';
       Ost.MacroByName('DAT2').AsString:=''''+datetostr(DateEdit2.Date)+'''';
       Ost.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
       Ost.MacroByName('USL').AsString:=Ost_Usl;
       Ost.MacroByName('USL1').AsString:=Ost_Usl1;
       Ost.MacroByName('SORT').AsString:=Ost_Sort;
       Ost.Open;

    end;

  End;
except
  MessageDlg('Ошибка выбора раздела. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;
end;

procedure TFOstatki.ToolButton3Click(Sender: TObject);
begin
  if (dbgrideh1.Visible) then
  begin
    s_ksm := PechostSyr1Ksm_id.AsInteger;
    FOstSyr.Edit1.text := inttostr(PechostSyr1Ksm_id.AsInteger);
    FOstSyr.Label7.Caption := PechostSyr1Nmat.AsString;
    FOstSyr.label8.Caption := PechostSyr1Neis.AsString;
  end
  else
  begin
    FOstSyr.Edit1.text := inttostr(Ost1Ksm_id.AsInteger);
    FOstSyr.Label7.Caption := Ost1Nmat.AsString;
    FOstSyr.label8.Caption := Ost1Neis.AsString;
    s_ksm := ost1Ksm_id.AsInteger;
  end;
  FOstSyr.DateEdit3.Date := strtodate(s_dat1);
  FOstSyr.DateEdit4.Date := strtodate(s_dat2);
  if (FOstSyr = nil) then
    FOstSyr := TFOstSyr.Create(Application);
  FOstSyr.ShowModal;
end;

end.
