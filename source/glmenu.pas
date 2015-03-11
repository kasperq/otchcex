unit glmenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, RxGIF, ImgList, ComCtrls, ToolWin, jpeg,
  StdCtrls,DateUtils, RXCtrls, DBCtrls, Grids, DBGridEh, DBGrids,
  RxMemDS, DBTables, IBCustomDataSet, IBQuery,SplshWnd, Buttons,UtilRIB,FileUtil,IniFiles,
  BDEConfig, RXDBCtrl,Math;
type
  TFGlMenu = class(TForm)
    MainMenu1: TMainMenu;
    L1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    N18: TMenuItem;
    Label2: TLabel;
    Label5: TLabel;
    N17: TMenuItem;
    N19: TMenuItem;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    N24: TMenuItem;
    N11: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    Main_Panel: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label3: TLabel;
    N34: TMenuItem;
    N36: TMenuItem;
    N35: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    RxLabel1: TRxLabel;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N48: TMenuItem;
    N51: TMenuItem;
    Timer1: TTimer;
    N52: TMenuItem;
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure MainMenu1Change(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure ToolButton9Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure ChildFormHide(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N48Click(Sender: TObject);

    function GetFileSize(FileName: string): Int64;
    function GetFileDateTime(FileName: string): TDateTime;

    procedure Timer1Timer(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RxLabel1DblClick(Sender: TObject);

  private
    procedure activateRole;

  public
    { Public declarations }
  end;

var
  FGlMenu: TFGlMenu;
  ActiveForm: TForm;
  AtomText: array[0..31] of Char;

implementation

uses prixcex, rascex, F_Splash, dm, f_options, NormCex, PerNovMes, Ostatki,
  TexGur, SprSTAD, SprFormul, Raspred, Otchet, Start, NastrPech,
  f_nastr, Pech_Vibor, ViborPerioda, Vipusk, Got_Prod, KorOtchet, PerOtchet,
  KorOst, PererasZag, NesPrix, PererasPlenka, PererasFolga, Act_Spirt, Poteri,
  Unit3, ShellAPI, OstSyr, Otx_Spirt, InvOp, AktRashoda, act_aceton, vipusk_seria,
  Find_Spprod, Find_Matrop, GotProd, Otpusk;

{$R *.dfm}
{$R x:\publicforms\anitanec.res}

procedure TFGlMenu.activateRole;
begin
  if (curRole = 'ProsmOt') then
  begin
    l1.Visible := false;
    n52.Visible := false;
    n28.Visible := false;
    n2.Visible := false;
    n33.Visible := false;
    n30.Visible := false;
    n16.Visible := false;
    n18.Visible := false;
    n19.Visible := false;
    n17.Visible := false;
    n8.Visible := false;
    n32.Visible := false;
    n29.Visible := false;
    n20.Visible := false;
    n22.Visible := false;
    n23.Visible := false;
    n35.Visible := false;
    n46.Visible := false;
    n49.Visible := false;
    n50.Visible := false;
  end;
end;

procedure TFGlMenu.N14Click(Sender: TObject);
begin
  close;
end;

procedure TFGlMenu.ChildFormHide(Sender: TObject);
begin
  if ActiveForm <> nil then
    if ActiveForm = TForm(Sender) then
    begin
      ActiveForm := Nil;
    end;
end;

procedure TFGlMenu.FormResize(Sender: TObject);
begin
  if (ActiveForm <> nil) then
  begin
    ActiveForm.Width  := Main_Panel.Width;
    ActiveForm.Height := Main_Panel.Height;
  end;
end;

procedure TFGlMenu.FormActivate(Sender: TObject);
begin
  if (ActiveForm <> nil) then
    if (ActiveForm.Visible) and (ActiveForm.Enabled) then
      ActiveForm.SetFocus;
end;

procedure TFGlMenu.N15Click(Sender: TObject);
begin
 DM1.ConfigUMC.close;
 DM1.ConfigUMC.MacroByName('USL').AsString:='0= 0';
 DM1.ConfigUMC.Open;
 DM1.ConfigUMC.Locate('STRUK_ID',vSTRUK_id,[]);
  if FNastr=nil then FNastr:=FNastr.Create(Application);
  if ActiveForm<>nil then
  ActiveForm.Close;
  ActiveForm:=FNastr;
  Label1.Caption:='Настройка';
 FNastr.ShowModal;
 Label1.Caption:='';
 DM1.ConfigUMC.MacroByName('USL').AsString:='configumc.STRUK_ID = '+IntToStr(vSTRUK_ID);
 DM1.ConfigUMC.Open;
 S_namcex := DM1.ConfigUMCSTNAME.AsString;
 if (MonthOf(Date())=DM1.ConfigUMCMES.AsInteger) and (YearOf(Date())=DM1.ConfigUMCGOD.AsInteger) then
 begin
//      Label5.Caption:='(Текущий месяц)';
  MODE:=0;
 end
 else
  if ((MonthOf(Date())=DM1.ConfigUMCMES.AsInteger-1) and (YearOf(Date())=DM1.ConfigUMCGOD.AsInteger)) or ((YearOf(Date())=DM1.ConfigUMCGOD.AsInteger-1) and (MonthOf(Date())=12) and (DM1.ConfigUMCMES.AsInteger=1))then
  begin
//     Label5.Caption:='(Прошлый месяц)';
   MODE:=1;
  end
  else
  begin
//      Label5.Caption:='(Только просмотр)';
   MODE:=2;
  end;

  RXLabel1.Caption:=DM1.ConfigUMCSTNAME.AsString;
  Label2.Caption:=FormatDateTime('mmmm',EncodeDate(DM1.ConfigUMCGOD.AsInteger,DM1.ConfigUMCMES.AsInteger,1));
  MES:=DM1.ConfigUMCMES.AsInteger;
  GOD:=DM1.ConfigUMCGOD.AsInteger;
  IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  Label5.Caption:=FormatDateTime('yyyy',EncodeDate(DM1.ConfigUMCGOD.AsInteger,DM1.ConfigUMCMES.AsInteger,1))+'г.';
  vSTRUK_ID:=DM1.ConfigUMCSTRUK_ID.AsInteger;
  DM1.ConfigUMC.Close;
  DM1.IBQuery1.Close;
  DM1.IBQuery1.SQL.Text:='SELECT STKOD FROM Struk WHERE STRUK_ID = '+IntToStr(VSTRUK_ID);
  DM1.IBQuery1.Open;
  S_STKOD:=DM1.IBQuery1.fieldByName('STKOD').AsString;
end;

procedure TFGlMenu.N16Click(Sender: TObject);
begin
  if RXLabel1.Caption = '' then
  begin
    MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
    Abort;
  end;
  if FPerNovMes = nil then
    FPerNovMes := TfPerNovMes.Create(Application);
  if ActiveForm <> nil then
    ActiveForm.Close;
  ActiveForm := FPerNovMes;
  Label1.Caption := 'Переход на новый месяц';
  FPerNovMes.ShowModal;
  Label1.Caption := '';
end;

procedure TFGlMenu.L1Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
end;

procedure TFGlMenu.N1Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
end;

procedure TFGlMenu.N3Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
end;

procedure TFGlMenu.N40Click(Sender: TObject);
begin
 if RXLabel1.Caption='' then
 begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
 end;
 if FViborPerioda=nil then FViborPerioda:=TfViborPerioda.Create(Application);
 FViborPerioda.ShowModal;
 dm1.Ost_Syr_prep.Close;
 dm1.Ost_Syr_prep.MacroByName('DAT1').AsString:=''''+S_DAT1+'''';
 dm1.Ost_Syr_prep.MacroByName('DAT2').AsString:=''''+S_DAT2+'''';
 dm1.Ost_Syr_prep.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
 dm1.Ost_Syr_prep.MacroByName('Sort').AsString:=' ORDER BY OST.Kod_prep';
 dm1.Ost_Syr_prep.Open;
 if FOstatki=nil then FOstatki:=TfOstatki.Create(Application);
 FOstatki.FrReport2.LoadFromFile(reportsPath + 'P_Ost_Syr_prep.frf');
 FOstatki.FrReport2.ShowReport;
 dm1.Ost_Syr_prep.Close;

end;

procedure TFGlMenu.N41Click(Sender: TObject);
begin
 if RXLabel1.Caption='' then
 begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
 end;
 if FViborPerioda=nil then FViborPerioda:=TfViborPerioda.Create(Application);
 FViborPerioda.ShowModal;
 dm1.Ost_Syr_prep.Close;
 dm1.Ost_Syr_prep.MacroByName('DAT1').AsString:=''''+S_DAT1+'''';
 dm1.Ost_Syr_prep.MacroByName('DAT2').AsString:=''''+S_DAT2+'''';
 dm1.Ost_Syr_prep.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
 dm1.Ost_Syr_prep.MacroByName('Sort').AsString:=' ORDER BY OST.KSM_ID';
 dm1.Ost_Syr_prep.Open;
 if FOstatki=nil then FOstatki:=TfOstatki.Create(Application);
 FOstatki.FrReport2.LoadFromFile(reportsPath + 'P_Ost_Syr_Syr.frf');
 FOstatki.FrReport2.ShowReport;
 dm1.Ost_Syr_prep.Close;

end;

procedure TFGlMenu.N42Click(Sender: TObject);
var IniOtchet: TIniFile;
begin
 if RXLabel1.Caption='' then
 begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
 end;
 if FOtchet=nil then FOtchet:=TfOtchet.Create(Application);
 if FPech_Vibor=nil then FPech_Vibor:=TfPech_Vibor.Create(Application);
 FPech_Vibor.ShowModal;
 if FPech_Vibor.ModalResult=mrOk then
 begin
  Splash := ShowSplashWindow(AniBmp1,
 'Загрузка данных. Подождите, пожалуйста...', True, nil);
  dm1.PechOtchet.EmptyTable;
  FPech_Vibor.PechVipusk.First;
  While not FPech_Vibor.PechVipusk.Eof do
  begin
   if FPech_Vibor.PechVipuskVib.AsBoolean then
   begin
    s_kodp:=FPech_Vibor.PechVipuskKsm_id.AsInteger;
    S_DATN:='01.01.'+INTTOSTR(GOD);
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
    DM1.IBQuery1.SQL.Add(' FROM KARTv');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
    + ' AND KARTv.KSM_ID='+INTTOSTR(s_kodp)
    + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
    DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
    v_Vipuskg:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat
    ELSE  v_Vipuskg:=0;
    v_vipusk:=FPech_Vibor.PechVipuskKol_prih.asfloat;
    fOtchet.SostOtchet;
    if not fOtchet.Otchet.Eof then
    begin
     dm1.PechOtchet.LoadFromDataSet(fOtchet.Otchet,0,lmAppend);
     dm1.PechOtchet.First;
     while not dm1.PechOtchet.Eof do
     begin
       if dm1.PechOtchetKodp.AsVariant=null then
       begin
        dm1.PechOtchet.Edit;
        dm1.PechOtchetKodp.asInteger:=s_kodp;
        dm1.PechOtchetVip.asFloat:=v_vipusk;
        dm1.PechOtchetVipg.asFloat:=v_vipuskg;
        dm1.PechOtchetKod_prod.asString:=FPech_Vibor.PechVipuskKod_prod.asstring;
        dm1.PechOtchetNamprod.AsString:=FPech_Vibor.PechVipuskNmat.asstring;
        dm1.PechOtchetNamorg.asString:=FPech_Vibor.PechVipuskNamorg.asstring;
        dm1.PechOtchetNamreg.asString:=FPech_Vibor.PechVipuskNamreg.asstring;
        dm1.PechOtchetGost.asString:=FPech_Vibor.PechVipuskGost.asstring;
        dm1.PechOtchetXarkt.asString:=FPech_Vibor.PechVipuskXarkt.asstring;
        dm1.PechOtchetNeisp.asString:=FPech_Vibor.PechVipuskNeis.asstring;
        dm1.PechOtchetstruk_id.AsInteger := VsTRUK_ID;
        dm1.PechOtchet.Post;
       end;
       dm1.PechOtchet.Next;
     end;
    end;
   end;
   FPech_Vibor.PechVipusk.Next;
  end;
  IniOtchet := TIniFile.Create(exePath + 'OTCHET.Ini');
  VidShap := IniOtchet.ReadInteger('Config', 'Shap_id', 5);
  s_Dolgn := IniOtchet.ReadString('Config', 'Dolgn', 'Зам.генерального директора');
  s_Fio := IniOtchet.ReadString('Config', 'FIO','Адамович С.И.');
  dm1.frxReport1.LoadFromFile(reportsPath + 'o_report-' + IntToStr(VidShap) + '.fr3');
//  dm1.frxReport1.LoadFromFile(programPath+'o_report-4.fr3');
  dm1.frxReport1.ShowReport(true);
  Splash.free;
 end;
end;

procedure TFGlMenu.N43Click(Sender: TObject);
var
  IniOtchet : TIniFile;
begin
  if (RXLabel1.Caption = '') then
  begin
    MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (FOtchet = nil) then
    FOtchet := TfOtchet.Create(Application);
  if (FPech_Vibor = nil) then
    FPech_Vibor := TfPech_Vibor.Create(Application);
  FPech_Vibor.ShowModal;
  if (FPech_Vibor.ModalResult = mrOk) then
  begin
    Splash := ShowSplashWindow(AniBmp1,'Загрузка данных. Подождите, пожалуйста...', True, nil);
    dm1.PechOtchet.EmptyTable;
    FPech_Vibor.PechVipusk.First;
    While (not FPech_Vibor.PechVipusk.Eof) do
    begin
      if (FPech_Vibor.PechVipuskVib.AsBoolean) then
      begin
        s_kodp := FPech_Vibor.PechVipuskKsm_id.AsInteger;
        S_DATN := '01.01.' + INTTOSTR(GOD);
        DM1.IBQuery1.Active := False;
        DM1.IBQuery1.SQL.Clear;
        DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
        DM1.IBQuery1.SQL.Add(' FROM KARTv');
        DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
        DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                             + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                             + ' AND KARTv.KSM_ID=' + INTTOSTR(s_kodp)
                             + ' AND Document.Date_op between ' + '''' + s_datn
                             + '''' + ' and ' + '''' + s_dat2 + '''');
        DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
        DM1.IBQuery1.Active := True;
        if (not dm1.IBQuery1.Eof) then
          v_Vipuskg := DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat
        else
          v_Vipuskg := 0;
        v_vipusk := FPech_Vibor.PechVipuskKol_prih.asfloat;
        fOtchet.SostOtchet;
        if (not fOtchet.Otchet.Eof) then
        begin
          dm1.PechOtchet.LoadFromDataSet(fOtchet.Otchet, 0, lmAppend);
          dm1.PechOtchet.First;
          while (not dm1.PechOtchet.Eof) do
          begin
            if (dm1.PechOtchetKodp.AsVariant = null) then
            begin
              dm1.PechOtchet.Edit;
              dm1.PechOtchetKodp.asInteger := s_kodp;
              dm1.PechOtchetVip.asFloat := v_vipusk;
              dm1.PechOtchetVipg.asFloat := v_vipuskg;
              dm1.PechOtchetKod_prod.asString := FPech_Vibor.PechVipuskKod_prod.asstring;
              dm1.PechOtchetNamprod.AsString := FPech_Vibor.PechVipuskNmat.asstring;
              dm1.PechOtchetNamorg.asString := FPech_Vibor.PechVipuskNamorg.asstring;
              dm1.PechOtchetNamreg.asString := FPech_Vibor.PechVipuskNamreg.asstring;
              dm1.PechOtchetGost.asString := FPech_Vibor.PechVipuskGost.asstring;
              dm1.PechOtchetXarkt.asString := FPech_Vibor.PechVipuskXarkt.asstring;
              dm1.PechOtchetNeisp.asString := FPech_Vibor.PechVipuskNeis.asstring;
              dm1.PechOtchetstruk_id.AsInteger := VsTRUK_ID;
              dm1.PechOtchet.Post;
            end;
            dm1.PechOtchet.Next;
          end;
        end;
      end;
      FPech_Vibor.PechVipusk.Next;
    end;
    IniOtchet := TIniFile.Create(exePath + 'OTCHET.Ini');
    VidShap := IniOtchet.ReadInteger('Config', 'Shap_id', 5);
    s_Dolgn := IniOtchet.ReadString('Config', 'Dolgn', 'Зам.генерального директора');
    s_Fio := IniOtchet.ReadString('Config', 'FIO', 'Адамович С.И.');
//  dm1.frxReport1.LoadFromFile(programPath+'o_report-'+IntToStr(VidShap)+'.fr3');
//  dm1.frxReport1.LoadFromFile(programPath+'o_report-4.fr3');
//  dm1.frxReport1.ShowReport(true);
//  dm1.FrReport2.LoadFromFile(programPath+'P_Otchet_cex.frf');
//  dm1.FrReport2.ShowReport;
    dm1.frxReport1.LoadFromFile(reportsPath + 'P_otchet_cex-' + IntToStr(VidShap) + '.fr3');
    dm1.frxReport1.ShowReport(true);
    Splash.free;
  end;
end;

procedure TFGlMenu.N44Click(Sender: TObject);
//var
//  modres: integer;
begin
  if FNastrPech = nil then
    FNastrPech := TfNastrPech.Create(Application);
  FNastrPech.ShowModal;
  case FNastrPech.ResultWindow of
    4: begin
      N43Click(nil);
    end;
    3: begin
      N42Click(nil);
    end;
  end;
//if modres=12 then
//FOtchet.APrintMatr.Execute;
end;

procedure TFGlMenu.N45Click(Sender: TObject);
begin
 if RXLabel1.Caption='' then
 begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
 end;
 if FOtchet=nil then FOtchet:=TfOtchet.Create(Application);
 if FPech_Vibor=nil then FPech_Vibor:=TfPech_Vibor.Create(Application);
 FPech_Vibor.ShowModal;
 if FPech_Vibor.ModalResult=mrOk then
 begin
  Splash := ShowSplashWindow(AniBmp1,'Загрузка данных. Подождите, пожалуйста...', True, nil);
  dm1.PechOtchet.EmptyTable;
  FPech_Vibor.PechVipusk.First;
  While not FPech_Vibor.PechVipusk.Eof do
  begin
   if FPech_Vibor.PechVipuskVib.AsBoolean then
   begin
    s_kodp:=FPech_Vibor.PechVipuskKsm_id.AsInteger;
    S_DATN:='01.01.'+INTTOSTR(GOD);
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
    DM1.IBQuery1.SQL.Add(' FROM KARTv');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
    + ' AND KARTv.KSM_ID='+INTTOSTR(s_kodp)
    + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
    DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
    v_Vipuskg:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat
    ELSE  v_Vipuskg:=0;
    v_vipusk:=FPech_Vibor.PechVipuskKol_prih.asfloat;
    fOtchet.SostOtchet;
    if not fOtchet.Otchet.Eof then
    begin
     dm1.PechOtchet.LoadFromDataSet(fOtchet.Otchet,0,lmAppend);
     dm1.PechOtchet.First;
     while not dm1.PechOtchet.Eof do
     begin
      if FSprFormul=nil then FSprFormul:=TfSprFormul.Create(Application);
      if FSprFormul.Ceh_Normz.Active=true then FSprFormul.CEH_NormZ.Close;
      FSprFormul.CEH_NormZ.MacroByName('SORT').AsString:='';
      FSprFormul.CEH_NormZ.MacroByName('USL').AsString:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP)+' and CEH_NORMZ.KSM_ID_MAt='+INTTOSTR(dm1.PechOtchetKsm_id.AsInteger);
      FSprFormul.CEH_NormZ.Open;
      if not FSprFormul.CEH_NORMZ.eof then
       if FSprFormul.CEH_NORMZDecznak.AsVariant<>null  then
        tochn:=-FSprFormul.CEH_NORMZDecznak.asinteger
       else tochn:=-3
      else tochn:=-3;

       if dm1.PechOtchetKodp.AsVariant=null then
       begin
        dm1.PechOtchet.Edit;
        dm1.PechOtchetKodp.asInteger:=s_kodp;
        dm1.PechOtchetVip.asFloat:=v_vipusk;
        dm1.PechOtchetVipg.asFloat:=v_vipuskg;
        dm1.PechOtchetFnorm.asFloat:=SimpleRoundTo(dm1.PechOtchetPlnorm.asFloat*v_vipusk,tochn);
        dm1.PechOtchetKod_prod.asString:=FPech_Vibor.PechVipuskKod_prod.asstring;
        dm1.PechOtchetNamprod.AsString:=FPech_Vibor.PechVipuskNmat.asstring;
        dm1.PechOtchetNamorg.asString:=FPech_Vibor.PechVipuskNamorg.asstring;
        dm1.PechOtchetNamreg.asString:=FPech_Vibor.PechVipuskNamreg.asstring;
        dm1.PechOtchetGost.asString:=FPech_Vibor.PechVipuskGost.asstring;
        dm1.PechOtchetXarkt.asString:=FPech_Vibor.PechVipuskXarkt.asstring;
        dm1.PechOtchetNeisp.asString:=FPech_Vibor.PechVipuskNeis.asstring;
        dm1.PechOtchet.Post;
       end;
       dm1.PechOtchet.Next;
     end;
    end;
   end;
   FPech_Vibor.PechVipusk.Next;
  end;
  IniOtchet := TIniFile.Create(exePath + 'OTCHET.Ini');
  VidShap := IniOtchet.ReadInteger('Config', 'Shap_id', 5);
  s_Dolgn := IniOtchet.ReadString('Config', 'Dolgn', 'Зам.генерального директора');
  s_Fio := IniOtchet.ReadString('Config', 'FIO','Адамович С.И.');
  dm1.frxReport1.LoadFromFile(reportsPath + 'P_nepot' + '.fr3');
  dm1.frxReport1.ShowReport(true);
  Splash.free;
 end;
end;

procedure TFGlMenu.N46Click(Sender: TObject);
begin
 if FOtx_Spirt=nil then FOtx_Spirt:=TFOtx_Spirt.Create(Application);
 FOtx_Spirt.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FOtx_Spirt;
 FOtx_Spirt.OnHide:=ChildFormHide;
 Label1.Caption:='Отходы спирта';
 FOtx_Spirt.Show;
end;

procedure TFGlMenu.N47Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
 if FInvOp=nil then FInvOp:=TFInvOp.Create(Application);
 if ActiveForm<>nil then
  ActiveForm.Close;
  ActiveForm:=FInvOp;
//  Label1.Caption:='Просмотр карточки';
//  FInvOp.ShowModal;
  FInvOp.OnHide:=ChildFormHide;
  FInvOp.Show;
  Label1.Caption:='';
end;

procedure TFGlMenu.N48Click(Sender: TObject);
begin
  if FindMatrop = nil then
    FindMatrop := TfindMatrop.Create(Application);
  FindMatrop.DataBaseName := dm1.BELMED;
  FindMatrop.ReadOnly := true;
  FindMatrop.ShowModal;
end;

procedure TFGlMenu.N49Click(Sender: TObject);
begin
  if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
  if FAktRashoda=nil then FAktRashoda:=TfAktRashoda.Create(Application);
  FAktRashoda.Parent := Main_Panel;
  if ActiveForm<>nil then
    ActiveForm.Close;
  ActiveForm:=FAktRashoda;
  FAktRashoda.OnHide:=ChildFormHide;
  Label1.Caption:='Акты  расхода м-лов на сод.и экспл.оборудования и на ммикроб.частоту';
  FAktRashoda.Show;
end;

procedure TFGlMenu.N4Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
  if Fprixcex=nil then Fprixcex:=Tfprixcex.Create(Application);
  Fprixcex.Parent := Main_Panel;
  if ActiveForm<>nil then
    ActiveForm.Close;
  ActiveForm:=Fprixcex;
  Fprixcex.OnHide:=ChildFormHide;
  Label1.Caption:='Приход сырья в цех';
  Fprixcex.Show;
end;

procedure TFGlMenu.N50Click(Sender: TObject);
begin
 if FAct_Aceton=nil then FAct_Aceton:=TFAct_Aceton.Create(Application);
 FAct_Aceton.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FAct_Aceton;
 FAct_Aceton.OnHide:=ChildFormHide;
 Label1.Caption:='Акт о расходовании ацетона';
 FAct_Aceton.Show;
end;

procedure TFGlMenu.N51Click(Sender: TObject);
begin
    if FindSpprod = nil then
    FindSpprod := TfindSpprod.Create(Application);
  FindSpprod.DataBaseName := dm1.BELMED;
  FindSpprod.Usl_Struk := 'spprod.struk_id = ' + inttostr(vStruk_id);
  FindSpprod.ReadOnly := true;
  FindSpprod.ShowModal;
end;

procedure TFGlMenu.N52Click(Sender: TObject);
begin
  if RXLabel1.Caption = '' then
  begin
    MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
    Abort;
  end;
  if FGotProd = nil then
    FGotProd := TfGotProd.Create(Application);
  FGotProd.Parent := Main_Panel;
  if ActiveForm <> nil then
    ActiveForm.Close;
  ActiveForm := FGotProd;
  FGotProd.OnHide := ChildFormHide;
  Label1.Caption := 'Готовая продукция';
  FGotProd.Show;
end;

procedure TFGlMenu.N5Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
 if Frascex=nil then Frascex:=Tfrascex.Create(Application);
 Frascex.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=Frascex;
 Label1.Caption:='Расход цеха';
 Frascex.Show;
end;

procedure TFGlMenu.N6Click(Sender: TObject);
begin
  if RXLabel1.Caption = '' then
  begin
    MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
    Abort;
  end;
  if FOstatki = nil then
    FOstatki := TfOstatki.Create(Application);
  FOstatki.Parent := Main_Panel;
  if ActiveForm <> nil then
    ActiveForm.Close;
  ActiveForm := FOstatki;
  FOstatki.OnHide := ChildFormHide;
  Label1.Caption := 'Остатки,оборотная ведомость';
  FOstatki.Show;
end;

procedure TFGlMenu.N7Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
 if FNormCex=nil then FNormCex:=TfNormCex.Create(Application);
 FNormcex.Parent := Main_Panel;
  if ActiveForm<>nil then
    ActiveForm.Close;
  ActiveForm:=FNormcex;
  FNormcex.OnHide:=ChildFormHide;
  Label1.Caption:='Плановые нормы';
 FNormcex.Show;
end;

procedure TFGlMenu.N8Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
  if FTexGur=nil then FTexGur:=TfTexGur.Create(Application);
  FTexGur.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FTexGur;
 FTexGur.OnHide:=ChildFormHide;
 Label1.Caption:='Технологический журнал';
 FTexGur.Show;
end;

procedure TFGlMenu.N9Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
 begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
 end;
 if FOtchet=nil then FOtchet:=TfOtchet.Create(Application);
  FOtchet.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FOtchet;
 FOtchet.OnHide:=ChildFormHide;
 Label1.Caption:='Просмотр,печать отчета';
 FOtchet.Show;
end;

procedure TFGlMenu.RxLabel1DblClick(Sender: TObject);
begin
  N15Click(Sender);
end;

procedure TFGlMenu.MainMenu1Change(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
end;

procedure TFGlMenu.Timer1Timer(Sender: TObject);
//var
//  oldSize, newSize : integer;
//  oldDate, newDate : TDateTime;
begin
//  oldSize := GetFileSize('C:\Work\Pro_Otchet.exe');
//  oldDate := GetFileDateTime('C:\Work\Pro_Otchet.exe');
//  newSize := GetFileSize('F:\Otchcex\Pro_Otchet1.exe');
//  newDate := GetFileDateTime('F:\Otchcex\Pro_Otchet1.exe');
//  if newSize <> oldSize then
//    if newDate <> oldDate then
//      MessageBox(0, 'Программа была изменена или доработана программистом! '
//                    + 'Пожалуйста, перезапустите программу.',
//                 'АРМ-ЦЕХ',
//                 + MB_OK);
end;

procedure TFGlMenu.ToolButton9Click(Sender: TObject);
begin
 if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;

  PopupMenu2.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);

end;

procedure TFGlMenu.N10Click(Sender: TObject);
begin
 pr_N:=FALSE;
if FSprStad=nil then FSprStad:=TfSprStad.Create(Application);
  if ActiveForm<>nil then
  ActiveForm.Close;
  ActiveForm:=FSprStad;
  Label1.Caption:='Технологические стадии';
 FSprStad.ShowModal;
 Label1.Caption:='';
end;

procedure TFGlMenu.N11Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
  pr_raspred:=0;
  if ActiveForm<>nil then
  ActiveForm.Close;
  Label1.Caption:='Распределение приходов';
  dm1.RaspredSyr;
  Label1.Caption:='';
end;

procedure TFGlMenu.N13Click(Sender: TObject);
begin
 if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
 if FSprFormul=nil then FSprFormul:=TfSprFormul.Create(Application);
 FSprFormul.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FSprFormul;
 FSprFormul.OnHide:=ChildFormHide;
 Label1.Caption:='Формулы расчета загрузки';
 FSprFormul.Show;

end;

procedure TFGlMenu.N17Click(Sender: TObject);
begin
  if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
  pr_raspred:=1;
  if FRaspred=nil then FRaspred:=TFRaspred.Create(Application);
  FRaspred.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FRaspred;
 FRaspred.OnHide:=ChildFormHide;
 Label1.Caption:='Просмотр распределенного сырья';
 FRaspred.Show;

end;

procedure TFGlMenu.FormShow(Sender: TObject);
begin
// if not BDEConfig1.Active then BDEConfig1.Active:=True;
  Label1.Caption := '';
  OldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  prov := true;
  try
    If (vSTRUK_ID = 0) then
    begin
      MessageDlg('Введите структурное  подразделение в режиме НАСТРОЙКА!', mtError, [mbOK], 0);
      if (FNastr = nil) then
        FNastr := FNastr.Create(Application);
      if (ActiveForm <> nil) then
        ActiveForm.Close;
      ActiveForm := FNastr;
      Label1.Caption := 'Настройка';
      FNastr.ShowModal;
      Label1.Caption := '';
    end;
    dm1.setCexOptions;
  finally
    Screen.Cursor := OldCursor;
  end;
  activateRole;
end;

procedure TFGlMenu.FormCreate(Sender: TObject);
begin
  inherited;
//  LookForPreviousInstance;
  RXLabel1.Caption := '';
  Label2.Caption := '';
  Label5.Caption := '';
end;

procedure TFGlMenu.FormDestroy(Sender: TObject);
//var
//  FoundAtom : TAtom;
//  ValueReturned : word;
begin
//  FoundAtom := GlobalFindAtom(AtomText);
//  if FoundAtom <> 0 then
//    ValueReturned := GlobalDeleteAtom(FoundAtom);
//  inherited Destroy;
end;

procedure TFGlMenu.N18Click(Sender: TObject);
begin
  if RXLabel1.Caption = '' then
  begin
    MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
    Abort;
  end;
  if FSTART = nil then
    FSTART := TfSTART.Create(Application);
  FSTART.Parent := Main_Panel;
  if ActiveForm <> nil then
    ActiveForm.Close;
  ActiveForm := FSTART;
  FSTART.OnHide := ChildFormHide;
  Label1.Caption := 'Стартовый режим';
  FSTART.Show;
end;


procedure TFGlMenu.N20Click(Sender: TObject);
var
  KartID: Integer;
begin
 if RXLabel1.Caption='' then
 begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
 end;
 if FOtchet=nil then FOtchet:=TfOtchet.Create(Application);
 if FPech_Vibor=nil then FPech_Vibor:=TfPech_Vibor.Create(Application);
 FPech_Vibor.ShowModal;
 if FPech_Vibor.ModalResult=mrOk then
 begin
  dm1.MDTexStad.EmptyTable;
  dm1.PechTexGur.EmptyTable;
  FPech_Vibor.PechVipusk.First;
  While not FPech_Vibor.PechVipusk.Eof do
  begin
   if FPech_Vibor.PechVipuskVib.AsBoolean then
   begin
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT ost.kart_id, seria.seria_id,seria.seria,seria.date_zag,seria.ob_zag,seria.kol_seria, document.ndok, NORM.KODP, NORM.KSM_ID, NORM.KRAZ, NORM.MES, NORM.GOD, NORM.NAZPRPF, NORM.PLNORM,NORM.KEI_ID KEIN,');
    DM1.IBQuery1.SQL.Add('MATROP.NMAT,MATROP.XARKT,MATROP.GOST, MATROP.KEI_ID,EDIZ.NEIS,razdel.razdel_id,razdel.kodraz,razdel.namraz,ceh_normz.formula,');
    DM1.IBQuery1.SQL.Add('document.tip_op_id,KART.kol_rash_ediz,document.date_op, CEH_NORMZ.KOEF1, CEH_NORMZ. KOEF2, CEH_NORMZ. KOEF3, CEH_NORMZ. PROC,CEH_NORMZ.NORMZ_ID,document.doc_id,ostatki.ot_s,ostatki.ot_nz');
    DM1.IBQuery1.SQL.Add(' FROM KART');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.doc_ID =DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' inner JOIN OSTATKI ON (KART.KART_ID =OSTATKI.KART_ID)');
    DM1.IBQuery1.SQL.Add(' inner JOIN MATROP ON (KART.KSM_ID = MATROP.KSM_ID)');
    DM1.IBQuery1.SQL.Add(' inner JOIN RAZDEL ON (KART.RAZDEL_ID =RAZDEL.RAZDEL_ID)');
    DM1.IBQuery1.SQL.Add(' left join norm_view (119,'+inttostr(god)+','+inttostr(mes)+','+inttostr(FPech_Vibor.PechVipuskKsm_id.AsInteger)+','+inttostr(vstruk_id)+',0) norm on ');
    DM1.IBQuery1.SQL.Add('(ostatki.ksm_idpr=norm.kodp and ostatki.ksm_id=norm.ksm_id and ostatki.razdel_id=norm.razdel_id)');
    DM1.IBQuery1.SQL.Add(' left JOIN ceh_normz ON ((NORM.kodp = ceh_normz.ksm_id_pr) AND (norm.ksm_id=ceh_normz.ksm_id_mat) AND (razdel.razdel_id=ceh_normz.razdel_id))');
    DM1.IBQuery1.SQL.Add(' LEFT JOIN EDIZ ON (norm.KEI_ID = EDIZ.KEI_ID)');
    DM1.IBQuery1.SQL.Add(' inner join seria on (substr(document.ndok,11,9)=seria.seria and seria.ksm_id=norm.kodp)');
    DM1.IBQuery1.SQL.Add(' left join ostatki ost on (seria.seria_id=ost.seria_id and norm.kodp=ost.ksm_id and OST.struk_id='+inttostr(vstruk_id)+')');
    DM1.IBQuery1.SQL.Add(' WHERE  DOcUMENT.STRUK_ID='+inttostr(vstruk_id));
    DM1.IBQuery1.SQL.Add(' and ostatki.ksm_idpr='+inttostr(FPech_Vibor.PechVipuskKsm_id.AsInteger));
    DM1.IBQuery1.SQL.Add(' and document.tip_op_id=33');
    DM1.IBQuery1.SQL.Add(' and document.date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
    DM1.IBQuery1.SQL.Add(' and kart.kol_rash_ediz<>0');
    DM1.IBQuery1.SQL.Add(' Order by seria.seria_id,razdel.razdel_id');
    DM1.IBQuery1.Open;
    if not DM1.IBQuery1.Eof then
    begin
      KartID:=0;
      DM1.IBQuery1.First;
      while not DM1.IBQuery1.Eof do begin
        if KartID<>DM1.IBQuery1.FieldByName('kart_id').AsInteger then begin
          if dm1.TexStad.Active then dm1.TexStad.Active:=false;
            dm1.TexStad.ParamByName('KartID').AsInteger:=DM1.IBQuery1.FieldByName('kart_id').AsInteger;
          dm1.TexStad.Open;
          dm1.MDTexStad.LoadFromDataSet(dm1.TexStad, 0, lmAppend);
          KartID:=DM1.IBQuery1.FieldByName('kart_id').AsInteger;
        end;
        DM1.IBQuery1.Next;
      end;
      dm1.PechTexGur.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
    end;
   end;
   FPech_Vibor.PechVipusk.Next;
  end;
  dm1.PechTexGur.First;
  if not dm1.PechTexGur.Eof then
  begin
    dm1.frxReport1.LoadFromFile(reportsPath + 'P_TexGur_o.fr3');
    dm1.frxReport1.ShowReport(true);
  end
  else
    showMessage('Нет данных для печати!');
 end;
end;

procedure TFGlMenu.N23Click(Sender: TObject);
begin
  if (RXLabel1.Caption = '') then
  begin
    MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (FViborPerioda = nil) then
    FViborPerioda := TfViborPerioda.Create(Application);
  FViborPerioda.ShowModal;
  Ost_Usl := ' where (OST.Ostatok_end_NZ<>0 OR OST.Ostatok_end_S<>0)';
  if (FOstatki = nil) then
    FOstatki := TfOstatki.Create(Application);
  FOstatki.PechOstSyr.Close;
  FOstatki.PechOstSyr.MacroByName('DAT1').AsString := '''' + s_dat1_period + '''';
  FOstatki.pechOstSyr.MacroByName('DAT2').AsString := '''' + s_dat2_period + '''';
  FOstatki.PechOstSyr.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  FOstatki.PechOstSyr.MacroByName('USL').AsString := Ost_Usl;
  FOstatki.PechOstSyr.MacroByName('USL1').AsString := '';
  FOstatki.PechOstSyr.MacroByName('SORT').AsString := ' order by ost.nmat ';
  FOstatki.PechOstSyr.Open;
  FOstatki.frReport2.LoadFromFile(reportsPath + 'P_Ostat.frf');
  FOstatki.FrReport2.ShowReport;
end;

procedure TFGlMenu.N25Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
  pr_raspred:=0;
  if ActiveForm<>nil then
  ActiveForm.Close;
  Label1.Caption:='Распределение расхода на выработку';
  dm1.RaspredRas;
  Label1.Caption:='';
end;

procedure TFGlMenu.N26Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
  pr_raspred:=0;
  if ActiveForm<>nil then
  ActiveForm.Close;
  Label1.Caption:='Распределение загрузки';
  dm1.RaspredZag;
  Label1.Caption:='';
end;

procedure TFGlMenu.N27Click(Sender: TObject);
begin
  if (RXLabel1.Caption = '') then
  begin
    MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (Fvipusk = nil) then
    Fvipusk := tFvipusk.Create(Application);
  if (ActiveForm <> nil) then
  ActiveForm.Close;
  ActiveForm := Fvipusk;
  Label1.Caption := 'Выпуск продукции';
  Fvipusk.ShowModal;
  Label1.Caption := '';
end;

procedure TFGlMenu.N28Click(Sender: TObject);
begin
  if RXLabel1.Caption='' then
  begin
    MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
    Abort;
  end;
  if Fvipusk_seria = nil then
    Fvipusk_seria := TFvipusk_seria.Create(Application);
//  FGOT_PROD.Parent := Main_Panel;
  if ActiveForm <> nil then
    ActiveForm.Close;
  ActiveForm := Fvipusk_seria;
  Fvipusk_seria.OnHide := ChildFormHide;
  Label1.Caption := 'Сдача готовой продукции';
  Fvipusk_seria.Show;
end;

procedure TFGlMenu.N29Click(Sender: TObject);
begin
if FKorOtchet=nil then FKorOtchet:=TfKorOtchet.Create(Application);
  FKorOtchet.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FKorOtchet;
 FKorOtchet.OnHide:=ChildFormHide;
 Label1.Caption:='Корректировка данных отчета';
 FKorOtchet.Show;

end;

procedure TFGlMenu.N30Click(Sender: TObject);
begin
// if MessageDlg('Передать отчеты в АСУ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
   if FPerOtchet=nil then FPerOtchet:=TfPerOtchet.Create(Application);
   if ActiveForm<>nil then
   ActiveForm.Close;
   ActiveForm:=FPerOtchet;
   Label1.Caption:='Передача отчетов в АСУ';
   FPerOtchet.ShowModal;
   Label1.Caption:='';
end;

procedure TFGlMenu.N31Click(Sender: TObject);
begin
if RXLabel1.Caption='' then
   begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
  end;
 if FOstSyr=nil then FOstSyr:=TFOstSyr.Create(Application);
 if ActiveForm<>nil then
  ActiveForm.Close;
  ActiveForm:=FKartOst;
  Label1.Caption:='Просмотр карточки';
  FOstSyr.ShowModal;
  Label1.Caption:='';
end;

procedure TFGlMenu.N32Click(Sender: TObject);
begin
{ if FPererasZag=nil then FPererasZag:=TFPererasZag.Create(Application);
 FPererasZag.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FPererasZag;
 FPererasZag.OnHide:=ChildFormHide;
 Label1.Caption:='Перераспределение загрузки';
 FPererasZag.Show;}

end;

procedure TFGlMenu.N33Click(Sender: TObject);
begin
 if FNesPrix=nil then FNesPrix:=TfNesPrix.Create(Application);
 FNesPrix.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FNesPrix;
 FNesPrix.OnHide:=ChildFormHide;
 Label1.Caption:='Таблицы несоответствий с бухгалтерией';
 FNesPrix.Show;
 
end;

procedure TFGlMenu.N34Click(Sender: TObject);
begin
if FPererasPlenka=nil then FPererasPlenka:=TFPererasPlenka.Create(Application);
 FPererasPlenka.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FPererasPlenka;
 FPererasPlenka.OnHide:=ChildFormHide;
 Label1.Caption:='Перераспределение загрузки';
 FPererasPlenka.Show;
end;

procedure TFGlMenu.N35Click(Sender: TObject);
begin
 if FAct_Spirt=nil then FAct_Spirt:=TFAct_Spirt.Create(Application);
 FAct_Spirt.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FAct_Spirt;
 FAct_Spirt.OnHide:=ChildFormHide;
 Label1.Caption:='Акт о расходовании спирта';
 FAct_Spirt.Show;
end;

procedure TFGlMenu.N36Click(Sender: TObject);
begin
if FPererasZag=nil then FPererasZag:=TFPererasZag.Create(Application);
 FPererasZag.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FPererasZag;
 FPererasZag.OnHide:=ChildFormHide;
 Label1.Caption:='Перераспределение загрузки';
 FPererasZag.Show;
end;

procedure TFGlMenu.N37Click(Sender: TObject);
begin
 if FPoteri=nil then FPoteri:=TFPoteri.Create(Application);
 FPoteri.Parent := Main_Panel;
 if ActiveForm<>nil then
  ActiveForm.Close;
 ActiveForm:=FPererasZag;
 FPoteri.OnHide:=ChildFormHide;
 Label1.Caption:='Перерасчет загрузки с учетом потерь';
 FPoteri.Show;
end;

procedure TFGlMenu.N38Click(Sender: TObject);

var
  HTMLFile  : Array[0..79] of Char;
begin
 StrPCopy(HTMLFile,'c:\OTCHCEX\HELP\Help_OTCHET.hLP');
 ShellExecute(Handle, 'open', HTMLFile, nil, nil, SW_SHOWNORMAL);
end;

procedure TFGlMenu.N39Click(Sender: TObject);
begin
  if RXLabel1.Caption='' then
 begin
  MessageDlg('Задайте подразделение !', mtWarning, [mbOK], 0);
  Abort;
 end;
 if FViborPerioda=nil then FViborPerioda:=TfViborPerioda.Create(Application);
 FViborPerioda.ShowModal;
 Ost_Usl:=' AND (OST.Ostatok_end_S<>0 OR OST.Ostatok_begin_S<>0 OR OST.PRIX_PERIOD<>0 OR OST.RASX_PERIOD<>0)';
 Ost_sort:=' ORDER BY OST.KSM_ID';
 if FOstatki=nil then FOstatki:=TfOstatki.Create(Application);
 if FOstatki.Ost.Active=true then FOstatki.Ost.Close;
 FOstatki.Ost.MacroByName('DAT1').AsString:=''''+s_dat1_period+'''';
 FOstatki.Ost.MacroByName('DAT2').AsString:=''''+s_dat2_period+'''';
 FOstatki.Ost.ParamByName('STRUK_ID').AsInteger:=vStruk_Id;
 FOstatki.Ost.MacroByName('USL').AsString:=Ost_Usl;
 FOstatki.Ost.MacroByName('SORT').AsString:=Ost_Sort;
 FOstatki.Ost.Open;
 FOstatki.frReport2.LoadFromFile(reportsPath + 'P_Obved.frf');
 FOstatki.FrReport2.ShowReport;
end;


function TFGlMenu.GetFileSize(FileName: string): Int64;
var
  V1: Longint;
  MyFile : File;
begin
  try
    AssignFile(MyFile, FileName);
    Reset(MyFile, 1 );
    V1 := FileSize(MyFile);
    result := V1;
  except
    result := -1;
  end;
end;

function TFGlMenu.GetFileDateTime(FileName: string): TDateTime;
var
  intFileAge: LongInt;
begin
  intFileAge := FileAge(FileName);
  if intFileAge = -1 then
    Result := 0
  else
    Result := FileDateToDateTime(intFileAge)
end;

end.
