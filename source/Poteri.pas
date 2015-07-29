unit Poteri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Spin, ComCtrls, ToolWin, Buttons, ExtCtrls,
  UtilRIB,SplshWnd,IB,Math,Menus,DBGrids, DB, IBCustomDataSet, IBUpdateSQL,
  IBUpdSQLW, IBQuery, RxIBQuery, Grids, DBGridEh;

type
  TFPoteri = class(TForm)
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    Label3: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    ToolButton1: TToolButton;
    ImageList2: TImageList;
    Panel1: TPanel;
    Label8: TLabel;
    Label13: TLabel;
    SpeedButton2: TSpeedButton;
    Label14: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    PoterZag: TRxIBQuery;
    DSPoterZag: TDataSource;
    PoterZagKOD_PROD: TIBStringField;
    PoterZagKSM_ID: TIntegerField;
    PoterZagKART_ID: TIntegerField;
    PoterZagOSTATOK_END_S: TFMTBCDField;
    PoterZagOSTATOK_END_NZ: TFMTBCDField;
    PoterZagOSTATOK_BEGIN_NZ: TFMTBCDField;
    PoterZagOSTATOK_BEGIN_S: TFMTBCDField;
    PoterZagRAZDEL_ID: TSmallintField;
    PoterZagKEI_ID: TSmallintField;
    PoterZagKRAZ: TSmallintField;
    PoterZagKEI_IDN: TSmallintField;
    PoterZagNEISN: TIBStringField;
    PoterZagZAG_PERIOD: TFMTBCDField;
    PoterZagPERS: TFMTBCDField;
    PoterZagPERNZ: TFMTBCDField;
    PoterZagPOTERI: TFMTBCDField;
    PoterZagZAG_POTERI: TFMTBCDField;
    PoterZagKSM_IDPR: TIntegerField;
    PoterZagUpdateSQLW1: TIBUpdateSQLW;
    PoterZagNMAT: TIBStringField;
    Poteri: TIBQuery;
    ToolButton2: TToolButton;
    PoterZagPRIX_PERIOD: TFMTBCDField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure ProsmPoteri;
    procedure RaschPoteri;
    procedure FormShow(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPoteri: TFPoteri;

implementation
 uses dm,Find_Matrop,SprFormul;
{$R *.dfm}

procedure TFPoteri.ProsmPoteri;
var
vxod_poteri: integer;
proc_poteri:double;
begin
if edit2.Text<>'' then
begin
  vxod_poteri := 0;
 if dm1.Kart.active then dm1.Kart.active:=false;
 if dm1.Document.active then dm1.Document.active:=false;
 dm1.IBT_WRITE.Active:=FALSE;
 dm1.IBT_READ.Active:=FALSE;
 If not dm1.IBT_Read.Active then dm1.IBT_Read.StartTransaction;
 If not dm1.IBT_WRITE.Active then dm1.IBT_WRITE.StartTransaction;
 PoterZag.DisableControls;
 Splash := ShowSplashWindow(AniBmp1,'Загрузка данных. Подождите, пожалуйста...', True, nil);
 usl_sort:='order by spprod.nmat';
 vNdoc:='Пот-'+inttostr(mes)+'-'+inttostr(god);
 if PoterZag.active then PoterZag.active:=false;
 PoterZag.ParamByName('struk').AsInteger:=vStruk_id;
 PoterZag.ParamByName('ksm').AsInteger:=s_ksm;
 PoterZag.MacroByName('dat1').AsString:=''''+s_dat1+'''';
 PoterZag.MacroByName('dat2').AsString:=''''+s_dat2+'''';
 PoterZag.MacroByName('sort').AsString:=usl_sort;
 PoterZag.Active:=true;
 PoterZag.First;
 While not PoterZag.Eof do
 begin
  PoterZag.Edit;
  PoterZagZag_Period.asfloat:=PoterZagZag_Period.asfloat*dm1.Koef_per(PoterZag.FieldByName('kei_idn').AsInteger,PoterZag.FieldByName('kei_id').AsInteger,PoterZag.FieldByName('Ksm_id').AsInteger);
  PoterZagZag_Poteri.asfloat:=PoterZagZag_Period.asfloat*dm1.Koef_per(PoterZag.FieldByName('kei_idn').AsInteger,PoterZag.FieldByName('kei_id').AsInteger,PoterZag.FieldByName('Ksm_id').AsInteger);
  PoterZag.Post;
  PoterZag.Next;
 end;
 Poteri.Active := False;
 Poteri.SQL.Clear;
 Poteri.SQL.Add('SELECT kart.kart_id,kart.kol_rash_ediz,ostatki.ksm_idpr,ostatki.razdel_id FROM kart ');
 Poteri.SQL.Add(' inner join ostatki on (kart.kart_id=ostatki.kart_id)');
 Poteri.SQL.Add(' inner join document on (kart.doc_id=document.doc_id)');
 Poteri.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_KSM)
  +' and ostatki.struk_id='+inttostr(vStruk_id)+' and document.tip_op_id=33'
  +' and document.ndok starting with '+''''+vndoc+'''');
 Poteri.Active := True;
 if not Poteri.Eof then
 begin
  PoterZag.First;
  While not PoterZag.Eof do
  begin
   Poteri.First;
   if Poteri.Locate('kart_id',PoterZag.FieldByName('kart_id').AsInteger,[]) then
   begin
    PoterZag.Edit;
    PoterZagPoteri.asfloat:=Poteri.FieldByName('kol_rash_ediz').asfloat;
    PoterZagZag_Poteri.asfloat:=PoterZagZag_Period.asfloat-PoterZagPoteri.asfloat;
    PoterZag.Post;
    if vxod_poteri=0 then
    begin
     proc_poteri:=roundto(100*(PoterZagZag_Period.asfloat-PoterZagZag_Poteri.asfloat)/PoterZagZag_Poteri.asfloat,-2);
     edit1.Text:=floattostr(proc_poteri);
     vxod_poteri:=1;
    end;
   end;
   PoterZag.next;
  end;
  PoterZag.First;
 END;
 Splash.Free;
 PoterZag.EnableControls;
end;
end;

procedure TFPoteri.RaschPoteri;
var
 v_bezPoter: double;
 v_Poteri: double;
begin
 PoterZag.first;
 While not PoterZag.Eof do
 begin
  s_kodp:=PoterZagKsm_idpr.AsInteger;
  if FSprFormul.CEH_NormZ.Active=true then  FSprFormul.CEH_NormZ.Close;
  FSprFormul.CEH_NormZ.MacroByName('SORT').AsString:='';
  FSprFormul.CEH_NormZ.MacroByName('USL').AsString:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP)+' and CEH_NORMZ.KSM_ID_MAt='+INTTOSTR(S_Ksm);
  FSprFormul.CEH_NormZ.Open;
  if not FSprFormul.CEH_NORMZ.eof then
   if FSprFormul.CEH_NORMZDecznak.AsVariant<>null  then
    tochn:=0-FSprFormul.CEH_NORMZDecznak.asinteger
   else tochn:=-3
  else tochn:=-3;
  v_bezPoter:=PoterZagZag_Period.asfloat;
  v_Poteri:=roundto(v_bezPoter*strtofloat(edit1.Text)/100,tochn);
  PoterZag.Edit;
  PoterZagZag_Period.asfloat:=v_bezPoter+v_Poteri;
  PoterZagZag_Poteri.asfloat:=v_bezPoter;
  PoterZagPoteri.asfloat:=v_Poteri;
  PoterZag.Post;
  PoterZag.Next;
 end;
end;

procedure TFPoteri.Edit2Click(Sender: TObject);
begin
edit2.text:='';
PoterZag.close;
end;

procedure TFPoteri.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
  if edit2.text<>''  then
  begin
   dM1.Matrop.Active:=false;
   dM1.Matrop.ParamByName('ksm').AsInteger:=strtoint(edit2.text);
   dM1.Matrop.Active:=TRUE;
   if not dm1.Matrop.eof then
   begin
    s_ksm:=strtoint(edit2.text);
    Label13.Caption:=dm1.Matrop.FieldByName('Nmat').AsString;
    Label9.Caption:=dm1.MatropNeis.AsString;
    s_kei:=dm1.MatropKei_id.asinteger;
    ProsmPoteri;
   end;
  end;
 end;
end;

procedure TFPoteri.FormShow(Sender: TObject);

begin
if FSprFormul=nil then FSprFormul:=TfSprFormul.Create(Application);
edit1.Text:='';
edit2.Text:='';
//if PoterZag.Active then PoterZag.Active:=false;
SpinEdit3.Value:=mes;
SpinEdit4.Value:=god;
label9.Caption:='';
label13.Caption:='';
//PoterZag.Active:=true;
// PoterZag.First;
end;

procedure TFPoteri.SpeedButton2Click(Sender: TObject);
begin
edit2.Text:='';
if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
 FindMatrop.DataBaseName:=dm1.BELMED;
 FindMatrop.ReadOnly:=true;
 FindMatrop.ShowModal;
 if FindMatrop.ModalResult > 50 then
 begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=FindMatrop.ModalResult-50;
  dM1.Matrop.Active:=TRUE;
  Edit2.Text :=INTTOSTR(FindMatrop.ModalResult-50);
  s_ksm:=FindMatrop.ModalResult-50;
  Label13.Caption:=dm1.MatropNMAT.AsString;
  Label9.Caption:=dm1.MatropNeis.AsString;
  s_kei:=dm1.MatropKei_id.asinteger;
  ProsmPoteri;
 end;
end;

procedure TFPoteri.SpinEdit3Change(Sender: TObject);
begin
mes:=SpinEdit3.Value;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 edit2.text:='';
end;

procedure TFPoteri.SpinEdit4Change(Sender: TObject);

begin
god:=SpinEdit4.Value;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 edit2.text:='';
end;

procedure TFPoteri.ToolButton1Click(Sender: TObject);
var
v_ost_syr: double;
begin
 if not PoterZag.Active then abort;
 if not Poteri.Active then abort;
 if not Poteri.Eof then
 begin
  IF DM1.Kart.Active THEN DM1.Kart.Close;
  DM1.Kart.MacroByName('USL').AsString:=' WHERE KART.DOC_ID IN (SELECT DOCUMENT.DOC_ID FROM document WHERE (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))';
  DM1.Kart.Open;
  v_kein:=PoterZagKei_idn.AsInteger;
 // удаление старого расчета потерь
  VNDOC:='Пот-'+inttostr(mes)+'-'+inttostr(god);
  try
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add(' delete from  KART WHERE KART.DOC_ID IN');
   DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc+'''');
   DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
   DM1.IBQuery1.SQL.Add(' and kart.parent is null');
   DM1.IBQuery1.SQL.Add(' and kart.ksm_id='+inttostr(s_ksm));
   DM1.IBQuery1.ExecSQL;
 // старнирование приходов
   v_KartV:=SelectToVarIB('select Ostatki.kart_id   FROM Ostatki'
   + ' WHERE Ostatki.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND ostatki.ksm_id='+inttostr(s_ksm)
   + ' AND( Ostatki.Ksm_idpr=0 or Ostatki.Ksm_idpr is null)',dm1.belmed,dm1.ibt_read);
   st_kart:=dm1.OstatkiKart_id.AsInteger;
   vKart_id:=st_kart;
   while not Poteri.Eof do
   begin
    if Poteri.FieldByName('Kol_Rash_ediz').AsFloat<>0 then
    begin
     v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
     + ' AND DOCUMENT.TIP_OP_ID=30'
     + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
     + ' AND DOCUMENT.KLIENT_ID='+ INTTOSTR(Poteri.FieldByName('ksm_idpr').AsInteger),dm1.belmed,dm1.ibt_read);
     vDocument_id:=v_dok_Kart;
     vTip_op_id:=30;
     vTip_doc_id:=37;
     vKlient_id:=Poteri.FieldByName('ksm_idpr').AsInteger;
     s_kodp:=Poteri.FieldByName('ksm_idpr').AsInteger;
     DM1.Kart.Insert;
     DM1.KartKsm_id.AsInteger:=s_Ksm;
     DM1.KartRazdel_id.AsInteger:=Poteri.FieldByName('Razdel_Id').AsInteger;
     DM1.KartKol_Rash_Ediz.AsFloat:=-(Poteri.FieldByName('Kol_Rash_ediz').AsFloat);
     DM1.KartKei_id.AsInteger:=v_Kein;
     dm1.Kart.Post;
    end;
    Poteri.Next;
   end;
   dm1.ApplyUpdatesDoc;
  except
   on E:EIBInterbaseError do
   begin
    ShowMessage(E.Message);
   end;
  end;
 end;
// занесение данных в KART
 IF DM1.Kart.Active THEN DM1.Kart.Close;
 PoterZag.First;
 while not PoterZag.Eof do
 begin
// проверка наличия сырья на препарате
  s_kodp:=PoterZag.FieldByName('ksm_idpr').AsInteger;
  s_kei:=PoterZag.FieldByName('kei_id').AsInteger;
  v_razdel:=PoterZagRazdel_id.AsInteger;
  v_keiN:=PoterZag.FieldByName('kei_IDn').AsInteger;
  v_raspred:=PoterZagPoteri.AsFloat*dm1.Koef_per(s_kei,v_keiN,s_ksm);
  v_ost_syr:=PoterZagOstatok_end_s.AsFloat*dm1.Koef_per(v_kein,s_kei,s_ksm);
  v_prix_period:=PoterZagPrix_period.AsFloat;
  if PoterZagOstatok_end_s.AsVariant=null then dob_ras:=0 else dob_ras:=V_OST_SYR;
  if dob_ras<v_raspred  then
  begin
//  добавление в приход
   v_raspred_dob:=PoterZagPoteri.AsFloat-v_ost_syr;
   v_raspred:=v_raspred-PoterZagOstatok_end_s.AsFloat;
   vklient_id:=PoterZagKsm_idpr.AsInteger;
   DM1.DobPrixPrep(false);
   st_kart:=PoterZagKart_id.AsInteger;
   if v_raspred_dob=0 then
   begin
    PoterZag.Edit;
    PoterZagPoteri.AsFloat:=0;
    PoterZagZag_Period.AsFloat:=PoterZagZag_Poteri.AsFloat;
    PoterZag.Post;
   end;
   IF DM1.Kart.Active=TRUE THEN
    DM1.Kart.Active:=FALSE;
   if dm1.Ostatki.Active  then
    dm1.Ostatki.Active:=false;
  end;
  PoterZag.Next;
 end;
// запись загрузки
 IF DM1.Kart.Active THEN DM1.Kart.Close;
 VNDOC:='Пот-'+inttostr(mes)+'-'+inttostr(god);
 DM1.Kart.MacroByName('USL').AsString:=' WHERE KART.DOC_ID IN (SELECT DOCUMENT.DOC_ID FROM document WHERE DOCUMENT.NDOK containing '+''''+VNDOC+''''+')';
 DM1.Kart.Open;
 PoterZag.First;
 while not PoterZag.Eof do
 begin
  if PoterZag.FieldByName('Poteri').AsFloat<>0 then
  begin
   vTip_Op_Id:=33;
   vTip_Doc_Id:=37;
   vKlient_Id:=PoterZag.FieldByName('ksm_idpr').AsInteger;
   s_kodp:=PoterZag.FieldByName('ksm_idpr').AsInteger;
   st_kart:=PoterZagKart_id.AsInteger;
   VNDOC:='Пот-'+inttostr(mes)+'-'+inttostr(god)+'-'+inttostr(PoterZag.FieldByName('ksm_idpr').AsInteger);
   v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=33'
   + ' AND Document.Ndok='+''''+vndoc+'''',dm1.belmed,dm1.ibt_read);
   If v_dok_Kart<>Null then
    vDocument_id:=V_DOK_KART
   ELSE
   BEGIN
    vDate_op:=strtodate(s_dat1);
    vDate_dok:=strtodate(s_dat1);
    dm1.Document.open;
    dm1.Document.Insert;
    dm1.Document.Post;
   end;
   dm1.Kart.BeforePost:=nil;
   DM1.Kart.Insert;
   DM1.KartKsm_id.AsInteger:=s_Ksm;
   DM1.KartRazdel_id.AsInteger:=Poteri.FieldByName('Razdel_Id').AsInteger;
   DM1.KartKol_Rash_Ediz.AsFloat:=PoterZag.FieldByName('Poteri').AsFloat;
   DM1.KartKei_id.AsInteger:=v_Kein;
   dm1.Kart.Post;
  end;
  PoterZag.Next;
 end;
 dm1.ApplyUpdatesDoc;
 dm1.Kart.BeforePost:=dm1.KartBeforePost;
end;

procedure TFPoteri.ToolButton2Click(Sender: TObject);
begin
if not PoterZag.Active then abort;
 if not Poteri.Active then abort;
 if not Poteri.Eof then
 begin
  if MessageDlg('Вы действительно хотите удалить потери? ',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
   IF DM1.Kart.Active THEN DM1.Kart.Close;
   DM1.Kart.MacroByName('USL').AsString:=' WHERE KART.DOC_ID IN (SELECT DOCUMENT.DOC_ID FROM document WHERE  Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')';
   DM1.Kart.Open;
   v_kein:=PoterZagKei_idn.AsInteger;
 // удаление старого расчета потерь
   VNDOC:='Пот-'+inttostr(mes)+'-'+inttostr(god);
   try
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add(' delete from  KART WHERE KART.DOC_ID IN');
    DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc+'''');
    DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
    DM1.IBQuery1.SQL.Add(' and kart.parent is null');
    DM1.IBQuery1.SQL.Add(' and kart.ksm_id='+inttostr(s_ksm));
    DM1.IBQuery1.ExecSQL;
 // старнирование приходов
    v_KartV:=SelectToVarIB('select Ostatki.kart_id   FROM Ostatki'
    + ' WHERE Ostatki.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND ostatki.ksm_id='+inttostr(s_ksm)
    + ' AND( Ostatki.Ksm_idpr=0 or Ostatki.Ksm_idpr is null)',dm1.belmed,dm1.ibt_read);
    st_kart:=dm1.OstatkiKart_id.AsInteger;
    vKart_id:=st_kart;
    while not Poteri.Eof do
    begin
     if Poteri.FieldByName('Kol_Rash_ediz').AsFloat<>0 then
     begin
      v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
      + ' AND DOCUMENT.TIP_OP_ID=30'
      + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
      + ' AND DOCUMENT.KLIENT_ID='+ INTTOSTR(Poteri.FieldByName('ksm_idpr').AsInteger),dm1.belmed,dm1.ibt_read);
      vDocument_id:=v_dok_Kart;
      vTip_op_id:=30;
      vTip_doc_id:=37;
      vKlient_id:=Poteri.FieldByName('ksm_idpr').AsInteger;
      s_kodp:=Poteri.FieldByName('ksm_idpr').AsInteger;
      DM1.Kart.Insert;
      DM1.KartKsm_id.AsInteger:=s_Ksm;
      DM1.KartRazdel_id.AsInteger:=Poteri.FieldByName('Razdel_Id').AsInteger;
      DM1.KartKol_Rash_Ediz.AsFloat:=-(Poteri.FieldByName('Kol_Rash_ediz').AsFloat);
      DM1.KartKei_id.AsInteger:=v_Kein;
      dm1.Kart.Post;
     end;
     Poteri.Next;
    end;
    dm1.ApplyUpdatesDoc;
   except
    on E:EIBInterbaseError do
    begin
     ShowMessage(E.Message);
    end;
   end;
   dm1.Kart.Close;
   dm1.Document.Close;
   poteri.Close;
   poterZag.Close;
   ProsmPoteri
  end;
 end;
end;

procedure TFPoteri.ToolButton5Click(Sender: TObject);
begin
RaschPoteri;
end;

end.
