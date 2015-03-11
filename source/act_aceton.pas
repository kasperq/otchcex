unit act_aceton;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RxMemDS, IBCustomDataSet, IBQuery, RxIBQuery, frxDesgn, frxClass,
  frxDMPExport, frxDBSet, IBUpdateSQL, IBUpdSQLW, ImgList, Grids, DBGridEh,
  StdCtrls, ExtCtrls, Buttons, Spin, ComCtrls, ToolWin,
  UtilRIB,SplshWnd, FileUtil, pr_Common,
  pr_TxClasses;
type
  TFAct_Aceton = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Label3: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Label4: TLabel;
    Label13: TLabel;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    ImageList1: TImageList;
    IBUpdateSpirt_Otchet: TIBUpdateSQLW;
    DSSpirt_Otchet: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxDesigner1: TfrxDesigner;
    Spirt_Otchet: TRxIBQuery;
    Spirt_OtchetKSM_ID: TIntegerField;
    Spirt_OtchetNEIS_PROD: TIBStringField;
    Spirt_OtchetPLNORM: TFMTBCDField;
    Spirt_OtchetKEIN: TLargeintField;
    Spirt_OtchetKRAZ: TLargeintField;
    Spirt_OtchetNMAT_PROD: TIBStringField;
    Spirt_OtchetKOD_PROD: TIBStringField;
    Spirt_OtchetNAM: TIBStringField;
    Spirt_OtchetRAZDEL_ID: TSmallintField;
    Spirt_OtchetNEIS_SYR: TIBStringField;
    Spirt_OtchetKODP: TIntegerField;
    Spirt_OtchetOST_NN: TFMTBCDField;
    Spirt_OtchetOST_NK: TFMTBCDField;
    Spirt_OtchetOSTATOK_BEGIN_NZ: TFMTBCDField;
    Spirt_OtchetOSTATOK_BEGIN_S: TFMTBCDField;
    Spirt_OtchetOSTATOK_END_NZ: TFMTBCDField;
    Spirt_OtchetOSTATOK_END_S: TFMTBCDField;
    Spirt_OtchetZAG_PERIOD: TFMTBCDField;
    Spirt_OtchetRASH_VIRAB_PERIOD: TFMTBCDField;
    Spirt_OtchetPRIX_PERIOD: TFMTBCDField;
    Spirt_OtchetRASX_PERIOD: TFMTBCDField;
    Spirt_OtchetPEREDANO_RASH_S: TFMTBCDField;
    Spirt_OtchetPEREDANO_RASH_NZ: TFMTBCDField;
    Spirt_OtchetFACTNORM: TFMTBCDField;
    Spirt_OtchetVIP: TFMTBCDField;
    Spirt_OtchetSTRUK_ID: TIntegerField;
    Dob_prix: TIBQuery;
    Dob_prixKSM_ID: TIntegerField;
    Dob_prixNEIS_PROD: TIBStringField;
    Dob_prixPLNORM: TFMTBCDField;
    Dob_prixKEIN: TLargeintField;
    Dob_prixKRAZ: TLargeintField;
    Dob_prixNMAT_PROD: TIBStringField;
    Dob_prixKOD_PROD: TIBStringField;
    Dob_prixNAM: TIBStringField;
    Dob_prixRAZDEL_ID: TSmallintField;
    Dob_prixNEIS_SYR: TIBStringField;
    Dob_prixKODP: TIntegerField;
    Dob_prixOST_NN: TFMTBCDField;
    Dob_prixOST_NK: TFMTBCDField;
    Dob_prixOSTATOK_BEGIN_NZ: TFMTBCDField;
    Dob_prixOSTATOK_BEGIN_S: TFMTBCDField;
    Dob_prixOSTATOK_END_NZ: TFMTBCDField;
    Dob_prixOSTATOK_END_S: TFMTBCDField;
    Dob_prixZAG_PERIOD: TFMTBCDField;
    Dob_prixRASH_VIRAB_PERIOD: TFMTBCDField;
    Dob_prixPRIX_PERIOD: TFMTBCDField;
    Dob_prixRASX_PERIOD: TFMTBCDField;
    Dob_prixPEREDANO_RASH_S: TFMTBCDField;
    Dob_prixPEREDANO_RASH_NZ: TFMTBCDField;
    Dob_prixFACTNORM: TFMTBCDField;
    Dob_prixVIP: TFMTBCDField;
    Dob_prixSTRUK_ID: TIntegerField;
    Spirt: TRxMemoryData;
    SpirtKSM_ID: TIntegerField;
    SpirtNEIS_PROD: TStringField;
    SpirtPLNORM: TFloatField;
    SpirtKEIN: TIntegerField;
    SpirtKRAZ: TIntegerField;
    SpirtNMAT_PROD: TStringField;
    SpirtKOD_PROD: TStringField;
    SpirtNAM: TStringField;
    SpirtRAZDEL_ID: TIntegerField;
    SpirtNEIS_SYR: TStringField;
    SpirtKODP: TIntegerField;
    SpirtOST_NN: TFloatField;
    SpirtOST_NK: TFloatField;
    SpirtOSTATOK_BEGIN_NZ: TFloatField;
    SpirtOSTATOK_BEGIN_S: TFloatField;
    SpirtOSTATOK_END_NZ: TFloatField;
    SpirtOSTATOK_END_S: TFloatField;
    SpirtZAG_PERIOD: TFloatField;
    SpirtRASH_VIRAB_PERIOD: TFloatField;
    SpirtPRIX_PERIOD: TFloatField;
    SpirtRASX_PERIOD: TFloatField;
    SpirtPEREDANO_RASH_S: TFloatField;
    SpirtPEREDANO_RASH_NZ: TFloatField;
    SpirtFACTNORM: TFloatField;
    SpirtVIP: TFloatField;
    SpirtSTRUK_ID: TIntegerField;
    dob_ost: TIBQuery;
    dob_ostKOD_PREP: TIBStringField;
    dob_ostNMAT_PREP: TIBStringField;
    dob_ostOSTATOK_BEGIN_S: TFMTBCDField;
    dob_ostOSTATOK_BEGIN_NZ: TFMTBCDField;
    dob_ostPRIX_PERIOD: TFMTBCDField;
    dob_ostPEREDANO_PRIH_NZ: TFMTBCDField;
    dob_ostRASX_PERIOD: TFMTBCDField;
    dob_ostOSTATOK_END_S: TFMTBCDField;
    dob_ostOSTATOK_END_NZ: TFMTBCDField;
    dob_ostZAG_PERIOD: TFMTBCDField;
    dob_ostKRAZ: TSmallintField;
    dob_ostRASH_VIRAB_PERIOD: TFMTBCDField;
    dob_ostNEIS: TIBStringField;
    dob_ostPEREDANO_RASH_NZ: TFMTBCDField;
    dob_ostPEREDANO_RASH_S: TFMTBCDField;
    dob_norm: TIBQuery;
    dob_normNEIS_PROD: TIBStringField;
    dob_normPLNORM: TFMTBCDField;
    dob_normKEIN: TSmallintField;
    dob_normNAM: TIBStringField;
    dob_normRAZDEL_ID: TSmallintField;
    Spirt_OtchetNMAT: TIBStringField;
    SpirtNMAT: TStringField;
    Dob_prixNMAT: TIBStringField;
    procedure ProsmSpirt;
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAct_Aceton : TFAct_Aceton;
  ost_cex_n : double;
  ost_cex_k : double;
  prix_cex : double;
  sum_ost_s_n : double;
  sum_ost_s_k : double;
  Sum_prix_cex : double;
  sum_rasx_cex : double;
  sum_ost_nz_n : double;
  sum_ost_nz_k : double;
  spisano : double;

implementation
 uses dm,Find_Spprod,Find_Matrop,Ediz,razdel,GlMenu;
{$R *.dfm}

 procedure TFAct_Aceton.Edit1Click(Sender: TObject);
begin
 edit1.text:='';
 Spirt_otchet.close;
end;

procedure TFAct_Aceton.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    if (edit1.text <> '') then
    begin
      dM1.Matrop.Active := false;
      dM1.Matrop.ParamByName('ksm').AsInteger := strtoint(edit1.text);
      dM1.Matrop.Active := TRUE;
      if (not dm1.Matrop.eof) then
      begin
        s_ksm := strtoint(edit1.text);
        Label13.Caption := dm1.Matrop.FieldByName('Nmat').AsString;
        Label1.Caption := dm1.MatropNeis.AsString;
        s_kei := dm1.MatropKei_id.asinteger;
        ProsmSpirt;
      end;
    end;
  end;
end;

procedure TFAct_Aceton.FormShow(Sender: TObject);
begin
 edit1.Text:='  ';
 Spirt_Otchet.active:=false;
 SpinEdit3.Text:=inttostr(mes);
 SpinEdit4.Text:= inttostr(god);
 label13.Caption:=' ';
 label1.Caption:=' ';
end;

procedure TFAct_Aceton.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  nammes := dm1.getStrMes(SpinEdit3.Value);

  if (VarName = 'nammes') then
    Value := nammes;
  if (VarName = 'stname') then
    Value := FGlMenu.RxLabel1.Caption;
  if (VarName = 'god') then Value := SpinEdit4.Value;
  if (VarName = 'prix') then Value := prix_cex;
  if (VarName = 'spis') then Value := spisano;
  if (VarName = 's_dolgn') then Value := s_dolgn;
  if (VarName = 's_fio') then Value := s_fio;
end;

procedure TFAct_Aceton.SpeedButton1Click(Sender: TObject);
begin
  mes := strtoint(SpinEdit3.Text);
  god := strtoint(SpinEdit4.Text);
  if (edit1.Text <> '  ') then
  begin
    dM1.Matrop.Active := false;
    dM1.Matrop.ParamByName('ksm').AsInteger := strtoint(edit1.text);
    dM1.Matrop.Active := TRUE;
    if (not dm1.Matrop.eof) then
    begin
      s_ksm := strtoint(edit1.text);
      Label13.Caption := dm1.Matrop.FieldByName('Nmat').AsString;
      Label1.Caption := dm1.MatropNeis.AsString;
      s_kei := dm1.MatropKei_id.asinteger;
    end;
    IF (MES < 10) THEN
      S_MES := '0' + INTTOSTR(MES)
    ELSE
      S_MES := INTTOSTR(MES);
    S_DAT1 := '01.' + S_MES + '.' + copy(INTTOSTR(GOD), 3, 2);
    S_DAT2 := datetostr(IncMonth(strtodate(s_dat1), 1) - 1);
    ProsmSpirt;
  end
  else
  begin
    if (Spirt_Otchet.active) then
      Spirt_Otchet.Close;
  end;
end;

procedure TFAct_Aceton.SpeedButton2Click(Sender: TObject);
begin
 edit1.Text:='';
if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
 FindMatrop.DataBaseName:=dm1.BELMED;
 FindMatrop.ReadOnly:=true;
 FindMatrop.ShowModal;
 if FindMatrop.ModalResult > 50 then
 begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=FindMatrop.ModalResult-50;
  dM1.Matrop.Active:=TRUE;
  Edit1.Text :=INTTOSTR(FindMatrop.ModalResult-50);
  s_ksm:=FindMatrop.ModalResult-50;
  Label13.Caption:=dm1.MatropNMAT.AsString;
  Label1.Caption:=dm1.MatropNeis.AsString;
  s_kei:=dm1.MatropKei_id.asinteger;
  ProsmSpirt;
 end;
end;

procedure TFAct_Aceton.SpinEdit3Change(Sender: TObject);
begin
 mes:=strtoint(SpinEdit3.Text);
edit1.Text:='  ';
IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
if Spirt_Otchet.active then  Spirt_Otchet.active:=false;
end;

procedure TFAct_Aceton.SpinEdit4Change(Sender: TObject);
begin
 god:=strtoint(SpinEdit4.Text);
 edit1.Text:='  ';
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 if Spirt_Otchet.active then   Spirt_Otchet.active:=false;
end;

procedure TFAct_Aceton.ToolButton1Click(Sender: TObject);
begin
  Spirt_Otchet.DisableControls;
  frxReport1.LoadFromFile(reportsPath + 'P_act_aceton.fr3');
  frxReport1.ShowReport(true);
  Spirt_Otchet.EnableControls;
end;

procedure TFAct_Aceton.ProsmSpirt;
var
  sum_prix_prep: double;
  v_sp: variant;
  s_vip: integer;
  v_peredano: double;
begin
 if edit1.Text<>'' then
 begin
  dob_ost.Close;
  dob_ost.ParamByName('strk').AsInteger:=vStruk_id;
  dob_ost.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
  dob_ost.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
  dob_ost.ParamByName('ksm').AsInteger:=s_ksm;
  dob_ost.Open;
  spirt.EmptyTable;
  Spirt_Otchet.DisableControls;
  Splash := ShowSplashWindow(AniBmp1,'Загрузка данных. Подождите, пожалуйста...', True, nil);
  if Spirt_Otchet.active then Spirt_Otchet.active:=false;
  Spirt_Otchet.ParamByName('strk').AsInteger:=vStruk_id;
  Spirt_Otchet.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
  Spirt_Otchet.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
  Spirt_Otchet.ParamByName('ksm').AsInteger:=s_ksm;
  Spirt_Otchet.Open;
  Spirt_Otchet.Edit;
  sum_prix_prep:=0;
  sum_ost_s_n:=0;
  sum_ost_s_k:=0;
  prix_cex:=0;
  While not Spirt_Otchet.Eof do
  begin
   if Spirt_OtchetKodp.AsVariant=null then s_vip:=0 else s_vip:=Spirt_OtchetKodp.AsVariant;
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('select kartv.kol_prih vip from kartv inner join document on (kartv.doc_id=document.doc_id)');
   DM1.IBQuery1.SQL.Add(' where Document.Date_dok between '+''''+s_dat1+''''+' and '+''''+s_dat2+'''');
   DM1.IBQuery1.SQL.Add(' and document.tip_op_id=36 and document.tip_dok_id=74 and DOCUMENT.STRUK_ID='+inttostr(vStruk_id));
   DM1.IBQuery1.SQL.Add(' and kartv.ksm_id='+inttostr(S_vip));
   DM1.IBQuery1.Active :=true;
   Spirt_Otchet.Edit;
   if DM1.IBQuery1.Eof then Spirt_OtchetVip.AsFloat:=0 else Spirt_OtchetVip.AsFloat:=DM1.IBQuery1.FieldByName('vip').AsFloat;
   Spirt_Otchet.Post;
   if (Spirt_OtchetKodp.AsVariant=null) and (not Spirt_Otchet.Eof) then
   begin
    Spirt_Otchet.Edit;
    if  Spirt_OtchetNmat_Prod.AsString='  Приход со склада' then
    begin
     Spirt_Otchet.FieldByName('Ostatok_begin_S').AsFloat:=dob_ost.FieldByName('Ostatok_begin_S').AsVariant;
     Spirt_Otchet.FieldByName('Ostatok_begin_nz').AsFloat:=dob_ost.FieldByName('Ostatok_begin_nz').AsVariant;
     Spirt_Otchet.FieldByName('Ostatok_end_S').AsFloat:=dob_ost.FieldByName('Ostatok_end_s').AsVariant;
     Spirt_Otchet.FieldByName('Ostatok_end_nz').AsFloat:=dob_ost.FieldByName('Ostatok_end_nz').AsVariant;
     Spirt_Otchet.FieldByName('zag_period').AsFloat:=dob_ost.FieldByName('zag_period').AsVariant;
     Spirt_Otchet.FieldByName('Rash_virab_period').AsFloat:=dob_ost.FieldByName('Rash_virab_period').AsVariant;
     Spirt_Otchet.FieldByName('Peredano_Rash_Nz').AsFloat:=dob_ost.FieldByName('Peredano_Rash_Nz').AsVariant;
     Spirt_Otchet.FieldByName('Ost_nn').AsFloat:=dob_ost.FieldByName('Ostatok_begin_S').AsVariant;
     Spirt_Otchet.FieldByName('Ost_nk').AsFloat:=dob_ost.FieldByName('Ostatok_end_S').AsVariant;
    end;
    sum_ost_s_n:=dob_ost.FieldByName('Ostatok_begin_s').AsVariant;
    sum_ost_s_k:=dob_ost.FieldByName('Ostatok_end_s').AsVariant;
    prix_cex:=prix_cex+Spirt_Otchet.FieldByName('Prix_Period').AsVariant;
   end
   else
   begin
// добавление из норм
    dob_norm.Close;
    dob_norm.ParamByName('struk').AsInteger:=vStruk_id;
    dob_norm.ParamByName('mes').AsInteger:=mes;
    dob_norm.ParamByName('god').AsInteger:=god;
    dob_norm.ParamByName('kodp').AsInteger:=s_vip;
    dob_norm.ParamByName('ksm').AsInteger:=s_ksm;
    dob_norm.ParamByName('razdel').AsInteger:=Spirt_OtchetRazdel_id.AsInteger;
    dob_norm.Open;
    if not dob_norm.Eof then
    begin
     Spirt_Otchet.Edit;
     Spirt_OtchetNeis_prod.AsString:=dob_normNeis_prod.AsString;
     Spirt_OtchetNam.AsString:=dob_normNam.AsString;
     Spirt_Otchetkein.AsInteger:=dob_normkein.AsInteger;
     Spirt_OtchetPlnorm.AsFloat:=dob_normPlnorm.AsFloat;
     Spirt_Otchet.Post;
    end;
    Spirt_Otchet.Edit;
    if Spirt_OtchetVip.AsFloat<>0 then
     Spirt_OtchetFactnorm.AsVariant:=Spirt_OtchetRasH_Virab_Period.AsVariant/Spirt_OtchetVip.AsFloat
    else Spirt_OtchetFactnorm.AsFloat:=0;
    sum_prix_prep:=sum_prix_prep+Spirt_Otchet.FieldByName('Prix_Period').AsVariant-Spirt_Otchet.FieldByName('PEREDANO_RASH_NZ').AsVariant;
   end;
   Spirt_Otchet.Post;
   Spirt_Otchet.Next;
  end;
// списано
  v_sp := SelectToVarIB(' SELECT sum(cast(iif(KART.KOL_RASH_EDIZ is null, kart.kol_rash, '
                        + 'kart.kol_rash_ediz) as numeric(15,6))) as kol_rash '
                        + 'FROM kart  inner JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)'
                        + ' WHERE (DOCUMENT.TIP_OP_ID = 32 or DOCUMENT.TIP_OP_ID = 8 '
                        + 'or DOCUMENT.TIP_OP_ID = 85) and DOCUMENT.STRUK_ID = '
                        + inttostr(vstruk_id) + ' AND Document.Date_op between '
                        + '''' + s_dat1 + '''' + ' and ' + '''' + s_dat2 + ''''
                        + ' AND KART.Ksm_id = ' + INTTOSTR(S_Ksm),
                        dm1.belmed, dm1.ibt_read);
  If (v_sp <> Null) then
    spisano := v_sp
  else
    spisano := 0;
  v_peredano := 0;
  Spirt_Otchet.First;
  if Spirt_Otchet.Locate('nmat_prod',' Приход из др.подразделений',[]) then
  begin
   Spirt_Otchet.Edit;
   Spirt_OtchetPeredano_Rash_s.AsVariant:=Spirt_OtchetPrix_period.AsVariant;
   Spirt_Otchet.FieldByName('Ostatok_begin_S').AsFloat:=0;
   Spirt_Otchet.FieldByName('Ostatok_begin_nz').AsFloat:=0;
   Spirt_Otchet.FieldByName('Ostatok_end_S').AsFloat:=0;
   Spirt_Otchet.FieldByName('Ostatok_end_nz').AsFloat:=0;
   Spirt_Otchet.FieldByName('zag_period').AsFloat:=0;
   Spirt_Otchet.FieldByName('Rash_virab_period').AsFloat:=0;
   Spirt_Otchet.FieldByName('Peredano_Rash_Nz').AsFloat:=0;
   Spirt_Otchet.FieldByName('Ost_nn').AsFloat:=0;
   Spirt_Otchet.FieldByName('Ost_nk').AsFloat:=0;
   Spirt_Otchet.Post;
   if Spirt_OtchetPrix_period.AsVariant=null then
    v_peredano:=0
   else
     v_peredano:=Spirt_OtchetPrix_period.AsVariant;
  end;
  Spirt_Otchet.First;
  if Spirt_Otchet.Locate('nmat_prod','  Приход со склада',[]) then
  begin
   Spirt_Otchet.Edit;
   Spirt_OtchetPeredano_Rash_s.AsVariant:=sum_prix_prep+spisano-v_peredano;
   Spirt_Otchet.Post;
  end
  else
  begin
   if Dob_Prix.active then Dob_Prix.active:=false;
   Dob_Prix.ParamByName('strk').AsInteger:=vStruk_id;
   Dob_Prix.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
   Dob_Prix.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
   Dob_Prix.ParamByName('ksm').AsInteger:=s_ksm;
   Dob_Prix.Open;
   if not Dob_Prix.Eof then
      Spirt.LoadFromDataSet(Dob_Prix,0,lmAppend);
  end;
  if not Spirt_Otchet.Eof then
      Spirt.LoadFromDataSet(Spirt_Otchet,0,lmAppend);
  Splash.Free;
  Spirt_Otchet.EnableControls;
 END;


end;

end.
