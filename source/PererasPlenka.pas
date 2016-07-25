unit PererasPlenka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, ImgList, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  Spin, ComCtrls, ToolWin, DB, IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, IBQuery,
  RxIBQuery,RxStrUtils,UtilRIB,SplshWnd,IB,Math,Menus, DBGrids;

type
  TFPererasPlenka = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Label5: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label13: TLabel;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    Label14: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    DBGridEh3: TDBGridEh;
    ImageList2: TImageList;
    Label4: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Label7: TLabel;
    Panel4: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SyrieZagPl: TRxIBQuery;
    IBUpdateSyrieZagPl: TIBUpdateSQLW;
    DSSyrieZagPl: TDataSource;
    Label15: TLabel;
    IBZagruzka: TIBQuery;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    SyrieZagPlKART_ID: TSmallintField;
    SyrieZagPlKSM_ID: TIntegerField;
    SyrieZagPlNMAT: TIBStringField;
    SyrieZagPlXARKT: TIBStringField;
    SyrieZagPlKEI_ID: TSmallintField;
    SyrieZagPlKOL_RASH_EDIZ: TFloatField;
    SyrieZagPlNMAT_PROD: TIBStringField;
    SyrieZagPlNEIS: TIBStringField;
    SyrieZagPlKODP: TIntegerField;
    SyrieZagPlKOEF_ZAG: TFloatField;
    SyrieZagPlKOD_PROD: TIBStringField;
    SyrieZagPlKRAZ: TSmallintField;
    SyrieZagPlNAM: TIBStringField;
    SyrieZagPlVIP: TFMTBCDField;
    SyrieZagPlRAZDEL_ID: TSmallintField;
    SyrieZagPlPLNORM: TFMTBCDField;
    SyrieZagPlRASX_PL: TFloatField;
    SyrieZagPlPR_RASPRED: TIntegerField;
    SyrieZagPlPRIX: TFMTBCDField;
    SyrieZagPlRASXV: TFMTBCDField;
    SyrieZagPlOSTATOK_BEGIN_NZ: TFMTBCDField;
    SyrieZagPlOSTATOK_BEGIN_S: TFMTBCDField;
    SyrieZagPlOSTATOK_END_NZ: TFMTBCDField;
    SyrieZagPlOSTATOK_END_S: TFMTBCDField;
    SyrieZagPlZAG_PERIOD: TFMTBCDField;
    SyrieZagPlRASH_VIRAB_PERIOD: TFMTBCDField;
    SyrieZagPlPRIX_PERIOD: TFMTBCDField;
    SyrieZagPlRASX_PERIOD: TFMTBCDField;
    DBNavigator1: TDBNavigator;
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure ProsmPlenka;
    procedure RaschetPl;
    procedure RaschetFolga;
    procedure VvodPlenka;
    procedure FormShow(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure SyrieZagPlBeforePost(DataSet: TDataSet);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPererasPlenka: TFPererasPlenka;
  s_kodps: integer;
  vNdoc1: string;
  vNdocY: string;
  sum_vipusk: double;
  sum_zag: double;
  sum_ost_s:double;
  sum_ost_nz:double;
  sum_prix:double;
  sum_rasx:double;
  sum_ost_nzn:double;
  sum_ost_sn:double;
  sum_rasxPl:double;
  v_koef:double;
  vNdoc_p: string;
  vNdoc_z: string;
  vNdoc_r: string;
  v_Ostatok_end_s:double;
  v_Ostatok_end_nz:double;
  v_Ostatok_begin_s:double;
  v_Ostatok_begin_nz:double;
  V_ZAG:double;
  V_PRIX:double;
  V_RASX:double;
  v_vip_nz:double;
  sum_ost_s_cex: double;
  sum_ost_sn_cex: double;
  sum_ost_nz_cex: double;
  sum_ost_nzn_cex: double;
  sum_zag_Fact:double;
  v: integer;
  sum_rasx_fact:double;
//  sum_prix_fact:double;
  sum_ost_s_fact:double;
  sum_ost_nz_fact:double;
  razn: double;
  sum_razn: double;
  sum_rasx_r:double;
  sum_prix_cex:double;
implementation
 uses dm,vibPrep, Find_Spprod, Find_Matrop,SprFormul,Ediz,razdel;
{$R *.dfm}



procedure TFPererasPlenka.ProsmPlenka;
var
 st_kart1: integer;

begin
if edit2.Text<>'' then
begin
 SyrieZagPl.DisableControls;
 Splash := ShowSplashWindow(AniBmp1,'Загрузка данных. Подождите, пожалуйста...', True, nil);
 usl_sort:=' nmat_prod';
// s_kodp:=s_kodps;
 vNdoc:='Пз-'+inttostr(s_ksm);
 v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
 + ' AND DOCUMENT.ndok starting with'+''''+vNdoc+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')',dm1.belmed,dm1.ibt_read);
 If v_dok_Kart<>Null then
 begin
  vNdoc1:='Пз-'+inttostr(s_ksm)+'-з-';
  vNdocY:='-у-';
  if SyrieZagPl.active then SyrieZagPl.active:=false;
  SyrieZagPl.ParamByName('strk').AsInteger:=vStruk_id;
  SyrieZagPl.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
  SyrieZagPl.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
  SyrieZagPl.ParamByName('mes').AsInteger:=mes;
  SyrieZagPl.ParamByName('god').AsInteger:=god;
  SyrieZagPl.ParamByName('kodp').AsInteger:=0;
  SyrieZagPl.MacroByName('Doc').AsString:=''''+vndoc+'''';
  SyrieZagPl.MacroByName('DocY').AsString:=''''+vndocY+'''';
  SyrieZagPl.MacroByName('sort').AsString:=usl_sort;
  SyrieZagPl.Open;
  dm1.IBQueryNorm.Active := False;
  dm1.IBQueryNorm.SQL.Clear;
  dm1.IBQueryNorm.SQL.Add('SELECT OSTATKI.OSTATOK_end_s,OSTATKI.OSTATOK_begin_s,OSTATKI.OSTATOK_begin_NZ,Ostatki.Prix_Period ');
  dm1.IBQueryNorm.SQL.Add(' FROM SELECT_OB_VED ('+''''+s_dat1+''''+','+''''+s_dat2+''''+',0) OSTATKI ');
  dm1.IBQueryNorm.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_KSM)
  +' and (OSTATKI.KSM_IDPR IS NULL or OSTATKI.KSM_IDPR=0) and ostatki.struk_id='+inttostr(vStruk_id));
  dm1.IBQueryNorm.Active := True;
  if not dm1.IBQueryNorm.Eof then
  begin
   sum_ost_sn_cex:=dm1.IBQueryNorm.FieldByName('Ostatok_begin_S').AsFloat;
   sum_ost_s_cex:=dm1.IBQueryNorm.FieldByName('Ostatok_end_S').AsFloat;
   sum_prix_cex:=dm1.IBQueryNorm.FieldByName('Prix_Period').AsFloat;
  end
  else
  begin
   sum_ost_sn_cex:=0;
   sum_ost_s_cex:=0;
   sum_prix_cex:=0;
  end;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT KART.Ksm_Id,matrop.NMAT,matrop.kei_id kei_id, matrop.XARKT,KART.KART_ID,KART.KEI_ID kein,KART.KOL_RASH_ediz,spprod.nmat nmat_prod,DOCUMENT.tip_op_id,OSTATKI.razdel_id,');
  DM1.IBQuery1.SQL.Add(' EDIZ.NEIS,OSTATKI.KSM_IDPR KODP, (z(norm.plnorm)*Z(KARTV.KOL_PRIH))rasx_pl,kart.Kol_Prih_Ediz,SPPROD.KOD_PROD,razdel.kraz,region.nam, ');
  DM1.IBQuery1.SQL.Add(' ostatki.Ostatok_begin_Nz,OSTATKI.Ostatok_end_NZ,ostatki.Ostatok_begin_s,');
  DM1.IBQuery1.SQL.Add('OSTATKI.Ostatok_end_s,ostatki.rash_virab_period,norm.plnorm,kartv.kol_prih vip ');
  DM1.IBQuery1.SQL.Add(' FROM KART');
  DM1.IBQuery1.SQL.Add(' INNER JOIN MATROP ON (KART.KSM_ID = MATROP.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN EDIZ ON (KART.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN RAZDEL ON (KART.razdel_ID = RAZDEL.razdel_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SELECT_OB_VED ('+''''+s_dat1+''''+','+''''+s_dat2+''''+',0) OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)');
  DM1.IBQuery1.SQL.Add(' left JOIN KARTV ON (document.Klient_ID = KARTV.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (DOCUMENT.KLIENT_ID = SPPROD.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' left JOIN region ON (spprod.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' left join norm on (ostatki.ksm_id=norm.ksm_id and ostatki.ksm_idpr=norm.kodp and razdel.kraz=norm.kraz and mes='+inttostr(mes)+' and god='+inttostr(god)+')');
  DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(vStruk_Id));
  DM1.IBQuery1.SQL.Add(' AND (DOCUMENT.TIP_OP_ID=35  or DOCUMENT.TIP_OP_ID=30 ) and (kart.kol_rash_ediz<>0 or kart.kol_prih_ediz<>0) and (not ostatki.ksm_idpr is null)');
  DM1.IBQuery1.SQL.Add(' AND DOCUMENT.NDOK containing '+''''+VNDOC+''''+' and DOCUMENT.NDOK not containing '+''''+VNDOCY+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')');
  DM1.IBQuery1.SQL.Add(' and kartv.doc_id in (select document.doc_id from document where Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
  DM1.IBQuery1.SQL.Add(' and document.tip_op_id=36 and DOCUMENT.STRUK_ID='+INTTOSTR(vStruk_Id)+')');
  DM1.IBQuery1.SQL.Add(' and kart.ksm_id='+inttostr(s_ksm));
  DM1.IBQuery1.SQL.Add(' order by kart.kart_id ');
  DM1.IBQuery1.Active:=true;
  sum_ost_s:=0;
  sum_ost_nz:=0;
  sum_rasx:=0;
  sum_ost_nzn:=0;
  sum_ost_sn:=0;
  sum_rasxPl:=0;
  While not DM1.IBQuery1.Eof do
  begin
   st_kart1:=DM1.IBQuery1.FieldByName('kart_id').AsInteger;
   SyrieZagPl.First;
   if not SyrieZagPl.Locate('kart_id',DM1.IBQuery1.FieldByName('kart_id').AsInteger,[]) then
   begin
    SyrieZagPl.Insert;
    SyrieZagPlKart_id.AsInteger:=DM1.IBQuery1.FieldByName('kart_id').AsInteger;
    SyrieZagPlKodp.AsInteger:=DM1.IBQuery1.FieldByName('kodp').AsInteger;
    SyrieZagPlKsm_id.AsInteger:=DM1.IBQuery1.FieldByName('ksm_id').AsInteger;
    SyrieZagPlKraz.AsInteger:=DM1.IBQuery1.FieldByName('kraz').AsInteger;
    SyrieZagPlKei_id.AsInteger:=DM1.IBQuery1.FieldByName('kei_id').AsInteger;
    SyrieZagPlRazdel_id.AsInteger:=DM1.IBQuery1.FieldByName('Razdel_id').AsInteger;
    SyrieZagPlNmat.AsString:=DM1.IBQuery1.FieldByName('Nmat').AsString;
    SyrieZagPlXarkt.AsString:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
    SyrieZagPlNeis.AsString:=DM1.IBQuery1.FieldByName('Neis').AsString;
    SyrieZagPlNam.AsString:=DM1.IBQuery1.FieldByName('Nam').AsString;
    SyrieZagPlNmat_Prod.AsString:=DM1.IBQuery1.FieldByName('Nmat_Prod').AsString;
    SyrieZagPlKod_Prod.AsString:=DM1.IBQuery1.FieldByName('Kod_Prod').AsString;
    SyrieZagPlRasx_pl.AsFloat:=DM1.IBQuery1.FieldByName('Rasx_pl').AsFloat;
    SyrieZagPlPlnorm.AsFloat:=DM1.IBQuery1.FieldByName('Plnorm').AsFloat;
    SyrieZagPlVip.AsFloat:=DM1.IBQuery1.FieldByName('Vip').AsFloat;
    SyrieZagPl.FieldByName('PR_Raspred').AsInteger:=1;
    SyrieZagPl.Post;
   end;
   While (DM1.IBQuery1.FieldByName('kart_id').AsInteger=st_kart1) and (not DM1.IBQuery1.Eof) do
   begin
    case DM1.IBQuery1.FieldByName('Tip_Op_Id').AsInteger of
     35:
     begin
      SyrieZagPl.Edit;
      SyrieZagPlRasxV.asFloat:=DM1.IBQuery1.FieldByName('Kol_Rash_Ediz').AsFloat;
      SyrieZagPl.Post;
      sum_rasx:=sum_rasx+DM1.IBQuery1.FieldByName('Kol_Rash_Ediz').AsFloat;
     end;
     30:
     begin
      SyrieZagPl.Edit;
      SyrieZagPlPrix.AsFloat:=DM1.IBQuery1.FieldByName('Kol_Prih_Ediz').AsFloat;
      SyrieZagPl.Post;
     end;
    end;
    DM1.IBQuery1.Next;
   end; 
   sum_ost_nzn:=sum_ost_nzn+SyrieZagPl.FieldByName('Ostatok_begin_nz').AsFloat*dm1.Koef_per(DM1.IBQuery1.FieldByName('kein').AsInteger,DM1.IBQuery1.FieldByName('kei_id').AsInteger,DM1.IBQuery1.FieldByName('Ksm_id').AsInteger);
   sum_ost_sn:=sum_ost_sn+SyrieZagPl.FieldByName('Ostatok_begin_S').AsFloat*dm1.Koef_per(DM1.IBQuery1.FieldByName('kein').AsInteger,DM1.IBQuery1.FieldByName('kei_id').AsInteger,DM1.IBQuery1.FieldByName('Ksm_id').AsInteger);
   sum_ost_nz:=sum_ost_nz+SyrieZagPl.FieldByName('Ostatok_end_nz').AsFloat*dm1.Koef_per(DM1.IBQuery1.FieldByName('kein').AsInteger,DM1.IBQuery1.FieldByName('kei_id').AsInteger,DM1.IBQuery1.FieldByName('Ksm_id').AsInteger);
   sum_ost_s:=sum_ost_s+SyrieZagPl.FieldByName('Ostatok_end_s').AsFloat*dm1.Koef_per(DM1.IBQuery1.FieldByName('kein').AsInteger,DM1.IBQuery1.FieldByName('kei_id').AsInteger,DM1.IBQuery1.FieldByName('Ksm_id').AsInteger);
//   sum_rasx:=sum_rasx+SyrieZagPlRasxv.AsFloat;
   sum_rasxPl:=sum_rasxPl+SyrieZagPlRasx_Pl.AsFloat;
  end;
  if sum_rasxpl<>0 then v_koef:=roundto((sum_rasx/Sum_rasxPl),-3) else v_koef:=0;
  edit9.Text:=floattostr(sum_ost_nz);
  edit8.Text:=floattostr(sum_ost_s);
  edit3.Text:=floattostr(sum_ost_sn);
  edit4.Text:=floattostr(sum_ost_nzn);
  edit10.Text:=floattostr(sum_ost_sn_cex);
  edit11.Text:=floattostr(sum_ost_s_cex);
  edit5.Text:=floattostr(sum_prix_cex);
  edit6.Text:=floattostr(v_koef);
  edit7.Text:=floattostr(roundto((v_koef*100-100),-2));
 END
 ELSE  MessageDlg('Нет данных!', mtWarning, [mbOK], 0);
 Splash.Free;
 SyrieZagPl.EnableControls;
end;
end;

procedure TFPererasPlenka.VvodPlenka;
var
  v_rasxpl: double;
begin
 if edit2.Text<>'' then
 begin
  vNdoc1:='Пз-'+inttostr(s_ksm);
  vNdocY:='-у-';
  usl_sort:=' spprod.kod_prod';
  if SyrieZagPl.active then SyrieZagPl.active:=false;
  SyrieZagPl.ParamByName('strk').AsInteger:=vStruk_id;
  SyrieZagPl.ParamByName('kodp').AsInteger:=1;
  SyrieZagPl.ParamByName('mes').AsInteger:=mes;
  SyrieZagPl.ParamByName('god').AsInteger:=god;
  SyrieZagPl.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
  SyrieZagPl.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
  SyrieZagPl.MacroByName('Doc').AsString:=''''+vndoc1+'''';
  SyrieZagPl.MacroByName('DocY').AsString:=''''+vndocY+'''';
  SyrieZagPl.MacroByName('sort').AsString:=usl_sort;
  Splash := ShowSplashWindow(AniBmp1,'Загрузка данных. Подождите, пожалуйста...', True, nil);
  SyrieZagPl.Open;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT kart.kol_prih,SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD,SPPROD.STRUK_ID,KART.KSM_ID,region.nam nam_reg');
  DM1.IBQuery1.SQL.Add(' FROM KARTV kart');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (KART.KSM_ID = SPPROD.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' inner join document on (kart.doc_id=document.doc_id)');
  DM1.IBQuery1.SQL.Add(' LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE KART.ksm_id in (select norm.kodp from norm where norm.ksm_id='+INTTOSTR(s_ksm));
  DM1.IBQuery1.SQL.Add(' and norm.mes='+inttostr(mes)+' and norm.god='+inttostr(god)+')');
  DM1.IBQuery1.SQL.Add(' and Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
  DM1.IBQuery1.SQL.Add(' and Document.Struk_id='+inttostr(vStruk_id));
  DM1.IBQuery1.Open;
// подсчет суммарного фактического выпуска всех выбранных препаратов (Vф)
  sum_vipusk:=0;
  sum_ost_s:=0;
  sum_ost_nz:=0;
  sum_rasx:=0;
  sum_rasxpl:=0;
  sum_ost_nzn:=0;
  sum_ost_sn:=0;
  dm1.IBQueryNorm.Active := False;
  dm1.IBQueryNorm.SQL.Clear;
  dm1.IBQueryNorm.SQL.Add('SELECT OSTATKI.OSTATOK_end_s,OSTATKI.OSTATOK_begin_s,OSTATKI.OSTATOK_begin_NZ,Ostatki.Prix_Period ');
  dm1.IBQueryNorm.SQL.Add(' FROM SELECT_OB_VED ('+''''+s_dat1+''''+','+''''+s_dat2+''''+',0) OSTATKI ');
  dm1.IBQueryNorm.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_KSM)
  +' and (OSTATKI.KSM_IDPR IS NULL or OSTATKI.KSM_IDPR=0) and ostatki.struk_id='+inttostr(vStruk_id));
  dm1.IBQueryNorm.Active := True;
  if not dm1.IBQueryNorm.Eof then
  begin
   sum_ost_sn_cex:=dm1.IBQueryNorm.FieldByName('Ostatok_begin_S').AsFloat;
   sum_ost_s_cex:=dm1.IBQueryNorm.FieldByName('Ostatok_end_S').AsFloat;
   sum_prix_cex:=dm1.IBQueryNorm.FieldByName('Prix_Period').AsFloat;
  end;
  SyrieZagPl.DisableControls;
  while not DM1.IBQuery1.Eof do
  begin
   IBZagruzka.Active := False;
   IBZagruzka.SQL.Clear;
   IBZagruzka.SQL.Add('SELECT distinct ostatki.Zag_period,');
   IBZagruzka.SQL.Add('ostatki.Ostatok_begin_nz,ostatki.Ostatok_begin_S,');
   IBZagruzka.SQL.Add('ostatki.Ostatok_end_nz,ostatki.Ostatok_end_S,ediz.neis,');
   IBZagruzka.SQL.Add('(ostatki.zag_period+ostatki.peredano_prih_nz) as zag_period,(ostatki.prix_period+ostatki.peredano_prih_nz) as prix_period,ostatki.Rash_Virab_period,');
   IBZagruzka.SQL.Add('ostatki.kart_id,matrop.kei_id,ostatki.ksm_id,norm.kei_id kein,norm.plnorm,norm.mes,norm.god,razdel.razdel_id,norm.kraz');
   IBZagruzka.SQL.Add(' FROM select_ob_ved('+''''+S_dat1+''''+','+''''+s_dat2+''''+','+inttostr(DM1.IBQuery1.FieldByName('ksm_id').AsInteger)+') ostatki');
   IBZagruzka.SQL.Add(' inner join matrop on (ostatki.ksm_id=matrop.ksm_id)');
   IBZagruzka.SQL.Add(' inner join razdel on (ostatki.razdel_id=razdel.razdel_id)');
   IBZagruzka.SQL.Add(' left join norm on (ostatki.ksm_id=norm.ksm_id and ostatki.ksm_idpr=norm.kodp and razdel.kraz=norm.kraz and norm.mes='+inttostr(mes)+' and norm.god='+inttostr(god)+')');
   iBZagruzka.SQL.Add(' inner join ediz on (norm.kei_id=ediz.kei_id)');
   iBZagruzka.SQL.Add(' WHERE ostatki.ksm_id='+INTTOSTR(s_ksm));
   iBZagruzka.SQL.Add(' union');
   iBZagruzka.SQL.Add(' SELECT distinct cast(0 as numeric(15,6)) AS Zag_period,ostatki.Onm_nz,ostatki.Onm_S,ostatki.Ot_nz,ostatki.Ot_S,ediz.neis,');
   iBZagruzka.SQL.Add(' cast(0 as numeric(15,6)) AS zag_period,cast(0 as numeric(15,6)) AS prix_period,cast(0 as numeric(15,6)) AS Rash_Virab_period,');
   iBZagruzka.SQL.Add(' ostatki.kart_id,matrop.kei_id,norm.ksm_id,norm.kei_id kein,norm.plnorm,norm.mes,norm.god,razdel.razdel_id,norm.kraz');
   iBZagruzka.SQL.Add(' from norm');
   iBZagruzka.SQL.Add(' inner join matrop on (norm.ksm_id=matrop.ksm_id)');
   iBZagruzka.SQL.Add(' inner join razdel on (norm.kraz=razdel.kraz)');
   iBZagruzka.SQL.Add(' inner join ediz on (norm.kei_id=ediz.kei_id)');
   iBZagruzka.SQL.Add(' left join ostatki on (norm.kodp=ostatki.ksm_idpr and norm.ksm_id=ostatki.ksm_id');
   iBZagruzka.SQL.Add(' and razdel.razdel_id=ostatki.razdel_id and norm.mes=10 and norm.god=ostatki.god)');
   iBZagruzka.SQL.Add(' where norm.kodp='+inttostr(DM1.IBQuery1.FieldByName('ksm_id').AsInteger)+' and norm.mes='+inttostr(mes)+' and norm.god='+inttostr(god));
   iBZagruzka.SQL.Add('  and norm.ksm_id='+INTTOSTR(s_ksm));
   IBZagruzka.Active:=true;
   if not IBZagruzka.Eof then
   begin
    SyrieZagPl.Insert;
    SyrieZagPlKodp.AsInteger:=DM1.IBQuery1.FieldByName('ksm_id').AsInteger;
    SyrieZagPlVip.AsFloat:=DM1.IBQuery1.FieldByName('Kol_prih').AsFloat;
    SyrieZagPlXarkt.AsString:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
    SyrieZagPlNam.AsString:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
    SyrieZagPlNmat_Prod.AsString:=DM1.IBQuery1.FieldByName('Nmat').AsString;
    SyrieZagPlKod_Prod.AsString:=DM1.IBQuery1.FieldByName('Kod_Prod').AsString;
    SyrieZagPl.FieldByName('PR_Raspred').AsInteger:=1;
    if IBZagruzka.FieldByName('Kei_ID').AsInteger<>IBZagruzka.FieldByName('Kein').AsInteger then
    begin
     v_Ostatok_begin_nz:=IBZagruzka.FieldByName('Ostatok_begin_nz').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_Ksm);
     v_Ostatok_begin_s:=IBZagruzka.FieldByName('Ostatok_begin_S').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_Ksm);
     v_Ostatok_end_nz:=IBZagruzka.FieldByName('Ostatok_end_nz').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_Ksm);
     v_Ostatok_end_s:=IBZagruzka.FieldByName('Ostatok_end_S').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_ksm);
     v_prix:=IBZagruzka.FieldByName('Prix_Period').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_ksm);
     v_rasx:=IBZagruzka.FieldByName('Rash_virab_period').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_Ksm);
     v_zag:=IBZagruzka.FieldByName('Zag_Period').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_Ksm);
    end
    else
    begin
     v_Ostatok_begin_nz:=IBZagruzka.FieldByName('Ostatok_begin_nz').AsFloat;
     v_Ostatok_begin_s:=IBZagruzka.FieldByName('Ostatok_begin_S').AsFloat;
     v_Ostatok_end_nz:=IBZagruzka.FieldByName('Ostatok_end_nz').AsFloat;
     v_Ostatok_end_s:=IBZagruzka.FieldByName('Ostatok_end_S').AsFloat;
     v_prix:=IBZagruzka.FieldByName('Prix_Period').AsFloat;
     v_rasx:=IBZagruzka.FieldByName('Rash_virab_period').AsFloat;
     v_zag:=IBZagruzka.FieldByName('Zag_Period').AsFloat;
    end;
    SyrieZagPLOstatok_end_s.ASFLOAT:=v_Ostatok_end_s;
    SyrieZagPlOstatok_end_nz.ASFLOAT:=v_Ostatok_end_nz;
    SyrieZagPlOstatok_begin_s.ASFLOAT:=v_Ostatok_begin_s;
    SyrieZagPlOstatok_begin_nz.ASFLOAT:=v_Ostatok_begin_nz;
    SyrieZagPlKol_rash_Ediz.ASFLOAT:=V_ZAG;
    SyrieZagPlPrix.ASFLOAT:=V_PRIX;
    SyrieZagPlRasxV.ASFLOAT:=V_RASX;
    SyrieZagPlKart_id.AsInteger:=IBZagruzka.FieldByName('kart_id').AsInteger;
    SyrieZagPlKsm_id.AsInteger:=IBZagruzka.FieldByName('ksm_id').AsInteger;
    SyrieZagPlKei_id.AsInteger:=IBZagruzka.FieldByName('kein').AsInteger;
    SyrieZagPlNeis.AsString:=IBZagruzka.FieldByName('Neis').AsString;
    SyrieZagPlPlnorm.AsFloat:=IBZagruzka.FieldByName('plnorm').AsFloat;
    SyrieZagPlRazdel_id.AsInteger:=iBZagruzka.FieldByName('Razdel_id').AsInteger;
    SyrieZagPlkRaz.AsInteger:=iBZagruzka.FieldByName('kRaz').AsInteger;
    v_rasxpl:=roundto(IBZagruzka.FieldByName('plnorm').AsFloat*DM1.IBQuery1.FieldByName('Kol_prih').AsFloat,-3);
    SyrieZagPlRasx_pl.AsFloat:=v_rasxpl;
    SyrieZagPl.Post;
    sum_ost_nzn:=sum_ost_nzn+v_Ostatok_begin_nz;
    sum_ost_sn:=sum_ost_sn+v_Ostatok_begin_S;
    sum_ost_nz:=sum_ost_nz+v_Ostatok_end_nz;
    sum_ost_s:=sum_ost_s+v_Ostatok_end_S;
    sum_rasx:=sum_rasx+v_Rasx;
    sum_rasxpl:=sum_rasxpl+v_rasxpl;
    sum_vipusk:=sum_vipusk+DM1.IBQuery1.FieldByName('kol_Prih').AsFloat;
   end;
   DM1.IBQuery1.Next;
  end;
  edit9.Text:=floattostr(sum_ost_nz);
  edit8.Text:=floattostr(sum_ost_s);
  edit3.Text:=floattostr(sum_ost_sn);
  edit4.Text:=floattostr(sum_ost_nzn);
  edit5.Text:=floattostr(sum_prix_cex);
  edit10.Text:=floattostr(sum_ost_sn_cex);
  edit11.Text:=floattostr(sum_ost_s_cex);
  SyrieZagPl.EnableControls;
  Splash.Free;
 end
 else  MessageDlg('Задайте код сырья!', mtWarning, [mbOK], 0);

end;

procedure TFPererasPlenka.RaschetPl;
begin
  if edit1.Text<>'' then
  begin
   if (SyrieZagPl.Active=false) then
   begin
    showMessage('Нет препаратов для распределения!');
    Abort;
   end
   else
   begin
    SyrieZagPl.First;
    if SyrieZagPl.Eof then
    begin
     showMessage('Нет препаратов для распределения!');
     Abort;
    end
    else
    begin
     vNdoc1:='Пз-'+inttostr(s_ksm);
     vNdocY:='-у-';
     iF DM1.Document.Active=true THEN  DM1.Document.Active:=False;
     DM1.Document.MacroByName('USL').AsString:=' WHERE document.NDOk containing '+ ''''+vNdoc1+''''+'and DOCUMENT.NDOK not containing '+''''+VNDOCY+''''+' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')';
     DM1.Document.open;
     SyrieZagPl.DisableControls;
     DM1.Document.First;
     If not DM1.Document.Eof then
     begin
      MessageDlg('Сначала удалите старое распределение!', mtWarning, [mbOK], 0);
      Abort;
     end;
     Splash := ShowSplashWindow(AniBmp1,'Идет расчет. Подождите, пожалуйста...', True, nil);
     sum_prix_cex:= strtofloat(replacestr(edit5.text,'.',','));
     sum_ost_s_fact:=strtofloat(replacestr(edit8.text,'.',','))+strtofloat(replacestr(edit11.text,'.',','));
     sum_ost_nz_fact:=strtofloat(replacestr(edit9.text,'.',','));
     sum_rasx_fact:=sum_ost_sn+sum_ost_nzn+sum_ost_sn_cex+sum_prix_cex-sum_ost_s_fact-sum_ost_nz_fact-sum_ost_nz_cex;
     if sum_rasxpl<>0 then v_koef:=roundto(sum_rasx_fact/sum_rasxpl,-3) else v_koef:=0;
     sum_rasx_r:=0;
     SyrieZagPl.First;
     while not SyrieZagPl.Eof do
     begin
      if FSprFormul.CEH_NormZ.Active=true then  FSprFormul.CEH_NormZ.Close;
      FSprFormul.CEH_NormZ.MacroByName('SORT').AsString:='';
      FSprFormul.CEH_NormZ.MacroByName('USL').AsString:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(SyrieZagPlKODP.AsInteger)+' and CEH_NORMZ.KSM_ID_MAt='+INTTOSTR(S_Ksm);
      FSprFormul.CEH_NormZ.Open;
      if not FSprFormul.CEH_NORMZ.eof then
       if FSprFormul.CEH_NORMZDecznak.AsVariant<>null  then
        tochn:=0-FSprFormul.CEH_NORMZDecznak.asinteger
       else tochn:=-3
      else tochn:=-3;
      SyrieZagPl.Edit;
      v_rasx:=roundto(SyrieZagPlRasx_Pl.asfloat*v_koef,tochn);
      SyrieZagPLRasxV.ASFLOAT:=v_rasx;
      if SyrieZagPlKODP.ASINTEGER=s_kodp then
       v_zag:=roundto(SyrieZagPlRasx_Pl.asfloat*v_koef,tochn)-SyrieZagPlOstatok_begin_nz.ASFLOAT+sum_ost_nz_fact
      else
       v_zag:=roundto(SyrieZagPlRasx_Pl.asfloat*v_koef,tochn)-SyrieZagPlOstatok_begin_nz.ASFLOAT;
      if (v_zag-SyrieZagPlOstatok_begin_s.ASFLOAT)>0 then v_prix:=v_zag-SyrieZagPlOstatok_begin_s.ASFLOAT
      else  v_prix:=0;
      SyrieZagPlKol_rash_Ediz.ASFLOAT:=v_zag;
      SyrieZagPlPrix.ASFLOAT:=v_Prix;
      SyrieZagPlOstatok_end_s.ASFLOAT:=SyrieZagPlOstatok_begin_s.ASFLOAT+v_prix-v_zag;
      SyrieZagPlOstatok_end_nz.ASFLOAT:=SyrieZagPlOstatok_begin_nz.ASFLOAT+v_zag-v_rasx;
      SyrieZagPl.Post;
      sum_rasx_r:=sum_rasx_r+v_rasx;
      SyrieZagPl.Next;
     end;
     if sum_rasx_r-sum_rasx_fact<>0 then
     begin
      razn:=sum_rasx_fact-sum_rasx_r;
      SyrieZagPl.first;
      if SyrieZagPl.Locate('ksm_id;kodp',VarArrayOf([s_ksm,s_kodp]),[]) then
      begin
       SyrieZagPl.edit;
       SyrieZagPlKol_rash_Ediz.ASFLOAT:=SyrieZagPlKol_rash_Ediz.ASFLOAT+razn;
       SyrieZagPlPrix.ASFLOAT:=SyrieZagPlPrix.ASFLOAT+razn;
       SyrieZagPlRasxV.ASFLOAT:=SyrieZagPlRasxV.ASFLOAT+razn;
       SyrieZagPlOstatok_end_nz.ASFLOAT:=SyrieZagPlOstatok_begin_nz.ASFLOAT+sum_ost_nz_fact;
       SyrieZagPl.post;
      end;
     end;
     edit6.Text:=floattostr(roundto(v_koef,-3));
     edit7.Text:=floattostr(roundto(v_koef*100-100,-2));
     Splash.Free;
     SyrieZagPl.EnableControls;
    end;
   end;
  end
  ELSE MessageDlg('Введите препарат!', mtWarning, [mbOK], 0);
  SyrieZagPl.First;
end;

procedure TFPererasPlenka.RaschetFolga;
var
  v_norm : double;
begin
  if edit1.Text<>'' then
  begin
    v_norm := 0.0;
   if (SyrieZagPl.Active=false) then
   begin
    showMessage('Нет препаратов для распределения!');
    Abort;
   end
   else
   begin
    SyrieZagPl.First;
    if SyrieZagPl.Eof then
    begin
     showMessage('Нет препаратов для распределения!');
     Abort;
    end
    else
    begin
     vNdoc1:='Пз-'+inttostr(s_ksm);
     vNdocY:='-у-';
     iF DM1.Document.Active=true THEN  DM1.Document.Active:=False;
     DM1.Document.MacroByName('USL').AsString:=' WHERE document.NDOk containing '+ ''''+vNdoc1+''''+'and DOCUMENT.NDOK not containing '+''''+VNDOCY+''''+' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')';
     DM1.Document.open;
     SyrieZagPl.DisableControls;
     DM1.Document.First;
     If not DM1.Document.Eof then
     begin
      MessageDlg('Сначала удалите старое распределение!', mtWarning, [mbOK], 0);
      Abort;
     end;
     if FSprFormul=nil then FSprFormul:=TfSprFormul.Create(Application);
     Splash := ShowSplashWindow(AniBmp1,'Идет расчет. Подождите, пожалуйста...', True, nil);
     sum_prix_cex:= strtofloat(replacestr(edit5.text,'.',','));
     sum_ost_s_fact:=strtofloat(replacestr(edit8.text,'.',','))+strtofloat(replacestr(edit11.text,'.',','));
     sum_ost_s:=strtofloat(replacestr(edit8.text,'.',','));
     sum_ost_nz_fact:=strtofloat(replacestr(edit9.text,'.',','));
     sum_rasx_fact:=sum_ost_sn+sum_ost_nzn+sum_ost_sn_cex+sum_prix_cex-sum_ost_s_fact-sum_ost_nz_fact-sum_ost_nz_cex;
  // расчет выпуска на незавершенку
     sum_vipusk:=0;
     SyrieZagPl.First;
     if SyrieZagPl.Locate('ksm_id;kodp',VarArrayOf([s_ksm,s_kodp]),[]) then
     begin
      v_norm:=SyrieZagPlplnorm.asfloat;
      if v_norm<>0 then
       sum_vipusk:=roundto(sum_ost_nz_fact/SyrieZagPlplnorm.asfloat,-3)
      else
      begin
       Splash.Free;
       MessageDlg('Введите норму на основной препарат!', mtWarning, [mbOK], 0);
       Abort;
      end;
     end
     else
     begin
      Splash.Free;
      MessageDlg('В списке препаратов нет основного препарата!', mtWarning, [mbOK], 0);
      Abort;
     end;
  // подсчет суммарного выпуска, приведенного к единой нормк по S_kodp
     SyrieZagPl.First;
     while not SyrieZagPl.Eof do
     begin
      sum_vipusk:=sum_vipusk+roundto(SyrieZagPlVip.AsFloat*SyrieZagPlPlnorm.AsFloat/v_norm,-3);
      SyrieZagPl.Next;
     end;
     if sum_vipusk<>0 then v_koef:=roundto(sum_rasx_fact/sum_vipusk,-3) else v_koef:=0;
     sum_rasx_r:=0;
     SyrieZagPl.First;
     while not SyrieZagPl.Eof do
     begin
      if FSprFormul.CEH_NormZ.Active=true then  FSprFormul.CEH_NormZ.Close;
      FSprFormul.CEH_NormZ.MacroByName('SORT').AsString:='';
      FSprFormul.CEH_NormZ.MacroByName('USL').AsString:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(SyrieZagPlKODP.AsInteger)+' and CEH_NORMZ.KSM_ID_MAt='+INTTOSTR(S_Ksm);
      FSprFormul.CEH_NormZ.Open;
      if not FSprFormul.CEH_NORMZ.eof then
       if FSprFormul.CEH_NORMZDecznak.AsVariant<>null  then
        tochn:=0-FSprFormul.CEH_NORMZDecznak.asinteger
       else tochn:=-3
      else tochn:=-3;
      v_rasx:=roundto(SyrieZagPlRasx_Pl.asfloat*v_koef,Tochn);
      SyrieZagPl.Edit;
      SyrieZagPLRasxV.ASFLOAT:=v_rasx;
      if SyrieZagPlKODP.ASINTEGER=s_kodp then
      begin
       v_zag:=roundto(SyrieZagPlVip.asfloat*v_koef,Tochn)-SyrieZagPlOstatok_begin_nz.ASFLOAT+sum_ost_nz_fact;
       v_prix:=v_zag-SyrieZagPlOstatok_begin_s.ASFLOAT+sum_ost_s;
      end
      else
      begin
       v_zag:=roundto(SyrieZagPlVip.asfloat*v_koef,Tochn)-SyrieZagPlOstatok_begin_nz.ASFLOAT;
       v_prix:=v_zag-SyrieZagPlOstatok_begin_s.ASFLOAT;
      end;
      if v_prix<0 then v_prix:=0;
      SyrieZagPlKol_rash_Ediz.ASFLOAT:=v_zag;
      SyrieZagPlPrix.ASFLOAT:=v_Prix;
      SyrieZagPlOstatok_end_s.ASFLOAT:=SyrieZagPlOstatok_begin_s.ASFLOAT+v_prix-v_zag;
      SyrieZagPlOstatok_end_nz.ASFLOAT:=SyrieZagPlOstatok_begin_nz.ASFLOAT+v_zag-v_rasx;
      SyrieZagPl.Post;
      sum_rasx_r:=sum_rasx_r+v_rasx;
      SyrieZagPl.Next;
     end;
     if sum_rasx_r-sum_rasx_fact<>0 then
     begin
      razn:=sum_rasx_fact-sum_rasx_r;
      SyrieZagPl.first;
      if SyrieZagPl.Locate('ksm_id;kodp',VarArrayOf([s_ksm,s_kodp]),[]) then
      begin
       SyrieZagPl.edit;
       SyrieZagPlKol_rash_Ediz.ASFLOAT:=SyrieZagPlKol_rash_Ediz.ASFLOAT+razn;
       SyrieZagPlPrix.ASFLOAT:=SyrieZagPlPrix.ASFLOAT+razn;
       SyrieZagPlRasxV.ASFLOAT:=SyrieZagPlRasxV.ASFLOAT+razn;
       SyrieZagPlOstatok_end_nz.ASFLOAT:=SyrieZagPlOstatok_begin_nz.ASFLOAT+sum_ost_nz_fact;
       SyrieZagPl.post;
      end;
     end;
     edit6.Text:=floattostr(roundto(v_koef,-3));
     if v_koef<>0 then edit7.Text:=floattostr(roundto(100-(v_norm/v_koef)*100,-2));
     Splash.Free;
     SyrieZagPl.EnableControls;
    end;
   end;
  end
  ELSE MessageDlg('Введите препарат!', mtWarning, [mbOK], 0);
  SyrieZagPl.First;
end;


procedure TFPererasPlenka.DBGridEh1EditButtonClick(Sender: TObject);
var
  nm : integer;
begin
  nm := 0;
  if dbgrideh1.SelectedField.FieldName='NEIS' then nm:=1;
  if dbgrideh1.SelectedField.FieldName='KRAZ' then nm:=2;
  SyrieZagPl.Edit;
  case nm of
  1: begin
   if FEdiz=nil then FEdiz:=TFEdiz.Create(Application);
      FEdiz.ShowModal;
      if FEdiz.ModalResult > 50 then
      begin
       s_kei:=FEdiz.ModalResult-50;
       SyrieZagPl.FieldByName('Kei_Id').AsInteger :=FEdiz.EdizKei_id.AsInteger;
       SyrieZagPl.FieldByName('neis').AsString :=FEdiz.EdizNeis.AsString;
      end;
     end;
  2: begin
      if frazdel=nil then frazdel:=tfrazdel.Create(Application);
      frazdel.ShowModal;
      if s_razdel<>0 then
      begin
       SyrieZagPl.FieldByName('KRAZ').value:=s_razdel;
       SyrieZagPl.FieldByName('RAZDEL_ID').value:=dm1.RazdelRAZDEL_ID.AsInteger;
      end;
     end;
  end;
end;

procedure TFPererasPlenka.Edit1Change(Sender: TObject);
begin
if edit1.text<>''   then
begin
{ dm1.IBT_Read.Active:=false;
 dm1.IBT_WRITE.Active:=false;
 dm1.IBT_Read.StartTransaction;
 dm1.IBT_WRITE.StartTransaction;}
// if SyrieZagPl.active then SyrieZagPl.active:=false;
 skod:=replacestr(edit1.text,',','.')+'%';
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,SPPROD.SPROD_ID,SPPROD.VOL_ov,SPPROD.VOLumf,');
 DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,SPPROD.LEK_ID,SPFORMV.NAMEFv,region.nam nam_reg');
 DM1.IBQuery1.SQL.Add(' FROM SPPROD');
 DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
 DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
 DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
 DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+skod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
 begin
   Label6.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label12.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
 end
 else
 begin
   Label6.Caption:='';
   Label12.Caption:=''
 end;
 Label6.Refresh;
 Label12.Refresh;
end;
end;


procedure TFPererasPlenka.Edit1Click(Sender: TObject);
begin
edit1.text:='';

end;

procedure TFPererasPlenka.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
begin
 if (edit1.text<>'') and (not dm1.IBQuery1.Eof)  then
 begin
  EDIT1.OnChange:=nil;
  edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT1.OnChange:=Edit1Change;
  s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  label6.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  Label10.Caption:=DM1.IBQuery1.FieldByName('Neis').AsString;
  Label12.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
 end;
end;
end;

procedure TFPererasPlenka.Edit2Click(Sender: TObject);
begin
edit2.text:='';
SyrieZagPl.close;
sum_vipusk:=0;
sum_ost_s:=0;
sum_ost_nz:=0;
sum_rasx:=0;
sum_rasxpl:=0;
sum_ost_nzn:=0;
sum_ost_sn:=0;
sum_ost_sn_cex:=0;
sum_ost_s_cex:=0;
end;

procedure TFPererasPlenka.Edit2KeyDown(Sender: TObject; var Key: Word;
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
    VNDOCY:='-у-';
    vNdoc:='Пз-'+inttostr(s_ksm);
    v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.ndok starting with '+''''+vNdoc+''''+'and DOCUMENT.NDOK not containing '+''''+VNDOCY+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')',dm1.belmed,dm1.ibt_read);
    If v_dok_Kart<>Null then  ProsmPlenka else VvodPlenka;
   end;
  end;
 end;
end;

procedure TFPererasPlenka.FormShow(Sender: TObject);
begin
SpinEdit3.Value:=mes;
SpinEdit4.Value:=god;
label13.Caption:='';
label9.Caption:='';
label10.Caption:='';
label12.Caption:='';
label6.Caption:='';
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit7.Text:='';
edit8.Text:='';
edit9.Text:='';
edit10.Text:='';
edit11.Text:='';
S_KODP:=0;
S_Ksm:=0;
sum_vipusk:=0;
sum_ost_s:=0;
sum_ost_nz:=0;
sum_rasx:=0;
sum_rasxpl:=0;
sum_ost_nzn:=0;
sum_ost_sn:=0;
if SyrieZagpl.Active then SyrieZagpl.Close;
if FSprFormul=nil then FSprFormul:=TfSprFormul.Create(Application);
end;

procedure TFPererasPlenka.MenuItem1Click(Sender: TObject);
begin
if not SyrieZagpl.IsEmpty then raschetPl;
end;

procedure TFPererasPlenka.MenuItem3Click(Sender: TObject);
begin
if not SyrieZagpl.IsEmpty then raschetFolga;
end;

procedure TFPererasPlenka.SpeedButton1Click(Sender: TObject);
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
  s_kodProd:=FindSpprod.IBSpprodKOD_PROD.AsString;
  Label12.Caption:=FindSpprod.IBSpprodName_REG.AsString;
  label6.caption:=FindSpprod.IBSpprodNMAT.AsString;;
  label10.caption:=FindSpprod.IBSpprodNEIS.AsString;
//  VNDOCY:='-у-';
//  vNdoc:='Пз-'+inttostr(s_ksm);
//  v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
//  + ' AND DOCUMENT.ndok starting with '+''''+vNdoc+''''+'and DOCUMENT.NDOK not containing '+''''+VNDOCY+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')',dm1.belmed,dm1.ibt_read);
//  If v_dok_Kart<>Null then ProsmPlenka;
 end;
end;

procedure TFPererasPlenka.SpeedButton2Click(Sender: TObject);
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
  Label3.Caption:=dm1.MatropNMAT.AsString;
  Label9.Caption:=dm1.MatropNeis.AsString;
  s_kei:=dm1.MatropKei_id.asinteger;
  VNDOCY:='-у-';
  vNdoc:='Пз-'+inttostr(s_ksm);
  v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
  + ' AND DOCUMENT.ndok starting with '+''''+vNdoc+''''+'and DOCUMENT.NDOK not containing '+''''+VNDOCY+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')',dm1.belmed,dm1.ibt_read);
  If v_dok_Kart<>Null then  ProsmPlenka else VvodPlenka;
 end;
end;

procedure TFPererasPlenka.SpinEdit3Change(Sender: TObject);
begin
 mes:=SpinEdit3.Value;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 edit2.text:='';
// vNdoc1:='Пз-'+inttostr(s_kodp);
//  v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
//  + ' AND DOCUMENT.ndok='+''''+vNdoc1+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')',dm1.belmed,dm1.ibt_read);
//  If v_dok_Kart<>Null then  ProsmPlenka;
end;

procedure TFPererasPlenka.SpinEdit4Change(Sender: TObject);
begin
god:=SpinEdit4.Value;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 edit2.text:='';
// vNdoc1:='Пз-'+inttostr(s_kodp);
//  v_dok_Kart:=SelectToVarIB('select DOcUMENT.doc_id   FROM document WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
//  + ' AND DOCUMENT.ndok='+''''+vNdoc1+''''+' AND (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')',dm1.belmed,dm1.ibt_read);
//  If v_dok_Kart<>Null then ProsmPlenka;
end;

procedure TFPererasPlenka.SyrieZagPlBeforePost(DataSet: TDataSet);
begin
 sum_rasxpl:=sum_rasxpl-SyrieZagPLRasx_pl.AsFloat;
 SyrieZagPLRasx_pl.AsFloat:=roundto(SyrieZagPlPlnorm.AsFloat*SyrieZagPlVip.AsFloat,tochn);
 sum_rasxpl:=sum_rasxpl+SyrieZagPLRasx_pl.AsFloat;
end;

procedure TFPererasPlenka.ToolButton1Click(Sender: TObject);
var
s_h: integer;
v_rasxpl: double;
begin
 if edit2.Text<>'' then
 begin
  if FvibPrep=nil then FVibPrep:=tFVibPrep.Create(Application);
  s_h:=FVibPrep.Panel4.Height;
  FVibPrep.RadioGroup4.Visible:=false;
  FVibPrep.Label4.Visible:=false;
  FVibPrep.SpinEdit3.Visible:=false;
  FVibPrep.SpinEdit4.Visible:=false;
  FVibPrep.Panel4.Align:=alClient;
  FVibPrep.Panel1.Visible:=false;
  FVibPrep.Panel3.Visible:=false;
  FVibPrep.ShowModal;
  FVibPrep.RadioGroup4.Visible:=true;
  FVibPrep.Label4.Visible:=true;
  FVibPrep.SpinEdit3.Visible:=true;
  FVibPrep.SpinEdit4.Visible:=true;
  FVibPrep.Panel4.Align:=alTop;
  FVibPrep.Panel4.Height:=s_h;
  FVibPrep.Panel1.Visible:=true;
  FVibPrep.Panel3.Visible:=true;
  if FVibPrep.ModalResult=mrOk then
  begin
   Splash := ShowSplashWindow(AniBmp1,'Загрузка данных. Подождите, пожалуйста...', True, nil);
   if SyrieZagPl.active=false then
   begin
    SyrieZagPl.ParamByName('strk').AsInteger:=vStruk_id;
    SyrieZagPl.ParamByName('kodp').AsInteger:=0;
    SyrieZagPl.ParamByName('mes').AsInteger:=mes;
    SyrieZagPl.ParamByName('god').AsInteger:=god;
    SyrieZagPl.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
    SyrieZagPl.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
    SyrieZagPl.MacroByName('Doc').AsString:=''''+vndoc1+'''';
    SyrieZagPl.MacroByName('DocY').AsString:=''''+vndocY+'''';
    SyrieZagPl.MacroByName('sort').AsString:=usl_sort;
    SyrieZagPl.Open;
   end;
   FVibPrep.FactVipusk.First;
   while not FVibPrep.FactVipusk.Eof do
   begin
    if FVibPrep.FactVipuskVib.AsBoolean then
    begin
     if not SyrieZagPl.Locate('kodp',FVibPrep.FactVipuskKsm_id.Asinteger,[]) then
     begin
      IBZagruzka.Active := False;
      IBZagruzka.SQL.Clear;
      IBZagruzka.SQL.Add(' SELECT distinct ostatki.Zag_period,ostatki.Razdel_id,');
      IBZagruzka.SQL.Add('ostatki.Ostatok_begin_nz,ostatki.Ostatok_begin_S,');
      IBZagruzka.SQL.Add('ostatki.Ostatok_end_nz,ostatki.Ostatok_end_S,');
      IBZagruzka.SQL.Add('(ostatki.zag_period+ostatki.peredano_prih_nz) as zag_period,(ostatki.prix_period+ostatki.peredano_prih_nz) as prix_period,ostatki.Rash_Virab_period,');
      IBZagruzka.SQL.Add('ostatki.kart_id,matrop.kei_id,ostatki.ksm_id,norm.kei_id kein,norm.plnorm');
      IBZagruzka.SQL.Add(' FROM select_ob_ved('+''''+S_dat1+''''+','+''''+s_dat2+''''+','+inttostr(FVibPrep.FactVipuskKsm_id.Asinteger)+') ostatki');
      IBZagruzka.SQL.Add(' inner join matrop on (ostatki.ksm_id=matrop.ksm_id)');
      IBZagruzka.SQL.Add(' inner join razdel on (ostatki.razdel_id=razdel.razdel_id)');
      IBZagruzka.SQL.Add(' left join norm on (ostatki.ksm_id=norm.ksm_id and ostatki.ksm_idpr=norm.kodp and razdel.kraz=norm.kraz and norm.mes='+inttostr(mes)+' and norm.god='+inttostr(god)+')');
      iBZagruzka.SQL.Add(' WHERE ostatki.ksm_id='+INTTOSTR(s_ksm));
      IBZagruzka.Active:=true;
      SyrieZagPl.Insert;
      SyrieZagPlRazdel_id.AsInteger:=IBZagruzka.FieldByName('Razdel_id').Asinteger;
      SyrieZagPlKodp.AsInteger:=FVibPrep.FactVipuskKsm_id.Asinteger;
      SyrieZagPlVip.AsFloat:=FVibPrep.FactVipusk.FieldByName('Kol_prih').AsFloat;
      SyrieZagPlXarkt.AsString:=FVibPrep.FactVipusk.FieldByName('Xarkt').AsString;
      SyrieZagPlNam.AsString:=FVibPrep.FactVipusk.FieldByName('Nam_reg').AsString;
      SyrieZagPlNmat_Prod.AsString:=FVibPrep.FactVipusk.FieldByName('Nmat').AsString;
      SyrieZagPlKod_Prod.AsString:=FVibPrep.FactVipuskKod_prod.AsString;
      SyrieZagPlKart_id.AsInteger:=IBZagruzka.FieldByName('kart_id').AsInteger;
      SyrieZagPlKsm_id.AsInteger:=s_ksm;
      SyrieZagPlKei_id.AsInteger:=IBZagruzka.FieldByName('kein').AsInteger;
      SyrieZagPlPlnorm.AsFloat:=IBZagruzka.FieldByName('plnorm').AsFloat;
      v_rasxpl:=roundto(IBZagruzka.FieldByName('plnorm').AsFloat*FVibPrep.FactVipusk.FieldByName('Kol_prih').AsFloat,-3);
      SyrieZagPlRasx_pl.AsFloat:=v_rasxpl;
      if IBZagruzka.FieldByName('Kei_ID').AsInteger<>IBZagruzka.FieldByName('Kein').AsInteger then
      begin
       v_Ostatok_end_nz:=IBZagruzka.FieldByName('Ostatok_end_nz').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_Ksm);
       v_Ostatok_end_s:=IBZagruzka.FieldByName('Ostatok_end_S').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_ksm);
       v_prix:=IBZagruzka.FieldByName('Prix_Period').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_ksm);
       v_rasx:=IBZagruzka.FieldByName('Rash_virab_period').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_Ksm);
       v_zag:=IBZagruzka.FieldByName('Zag_Period').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_Ksm);
       v_Ostatok_begin_nz:=IBZagruzka.FieldByName('Ostatok_begin_nz').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_Ksm);
       v_Ostatok_begin_s:=IBZagruzka.FieldByName('Ostatok_begin_S').AsFloat*dm1.Koef_per(IBZagruzka.FieldByName('Kein').AsInteger,IBZagruzka.FieldByName('Kei_ID').AsInteger,s_Ksm);
      end
      else
      begin
       v_Ostatok_begin_nz:=IBZagruzka.FieldByName('Ostatok_begin_nz').AsFloat;
       v_Ostatok_begin_s:=IBZagruzka.FieldByName('Ostatok_begin_S').AsFloat;
       v_Ostatok_end_nz:=IBZagruzka.FieldByName('Ostatok_end_nz').AsFloat;
       v_Ostatok_end_s:=IBZagruzka.FieldByName('Ostatok_end_S').AsFloat;
       v_prix:=IBZagruzka.FieldByName('Prix_Period').AsFloat;
       v_rasx:=IBZagruzka.FieldByName('Rash_virab_period').AsFloat;
       v_zag:=IBZagruzka.FieldByName('Zag_Period').AsFloat;
      end;
      SyrieZagPLOstatok_end_s.ASFLOAT:=v_Ostatok_end_s;
      SyrieZagPlOstatok_end_nz.ASFLOAT:=v_Ostatok_end_nz;
      SyrieZagPlOstatok_begin_s.ASFLOAT:=v_Ostatok_begin_s;
      SyrieZagPlOstatok_begin_nz.ASFLOAT:=v_Ostatok_begin_nz;
      SyrieZagPlKol_rash_Ediz.ASFLOAT:=V_ZAG;
      SyrieZagPlPrix.ASFLOAT:=V_PRIX;
      SyrieZagPlRasxV.ASFLOAT:=V_RASX;
      SyrieZagPl.FieldByName('PR_Raspred').AsInteger:=1;
      SyrieZagPl.Post;
      sum_ost_nzn:=sum_ost_nzn+v_Ostatok_begin_nz;
      sum_ost_sn:=sum_ost_sn+v_Ostatok_begin_S;
      sum_vipusk:=sum_vipusk+FVibPrep.FactVipusk.FieldByName('Kol_prih').AsFloat;
      sum_rasxpl:=sum_rasxpl+v_rasxpl;
     end;
    end;
    FVibPrep.FactVipusk.Next;
   end;
   Splash.Free;
  end;
  edit4.Text:=floattostr(sum_ost_nzn);
  edit3.Text:=floattostr(sum_ost_sn);
 end
 else  MessageDlg('Задайте код сырья!', mtWarning, [mbOK], 0);
end;

procedure TFPererasPlenka.ToolButton2Click(Sender: TObject);
begin
PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);

end;

procedure TFPererasPlenka.ToolButton3Click(Sender: TObject);
var
dob_pered:double;
v_sum: variant;
ot_pered:double;
vDocument_id_syr: integer;
st_kodp: integer;
begin
 IF DM1.Kart.Active THEN DM1.Kart.Close;
 vNdoc1:='Пз-'+inttostr(s_ksm);
 DM1.Kart.MacroByName('USL').AsString:=' WHERE KART.DOC_ID IN (SELECT DOCUMENT.DOC_ID FROM document WHERE DOCUMENT.NDOK containing '+''''+VNDOC1+''''+' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))';
 DM1.Kart.Open;
 iF DM1.Document.Active=true THEN  DM1.Document.Active:=False;
 DM1.Document.MacroByName('USL').AsString:=' WHERE document.NDOk containing '+ ''''+vNdoc1+''''+' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')';
 DM1.Document.open;
 SyrieZagPl.First;
 while not SyrieZagPl.Eof do
 begin
  vNdoc_z:='Пз-'+inttostr(s_ksm)+'-з-у-'+inttostr(SyrieZagPlKODP.Asinteger);
  vNdoc_p:='Пз-'+inttostr(s_ksm)+'-п-у-'+inttostr(SyrieZagPlKODP.Asinteger);
  vNdoc_r:='Пз-'+inttostr(s_ksm)+'-р-у-'+inttostr(SyrieZagPlKODP.Asinteger);
//загрузка и расход на выработку  из маршруток на препарате
  IBZagruzka.Active := False;
  IBZagruzka.SQL.Clear;
  IBZagruzka.SQL.Add('SELECT sum(kart.kol_rash_Ediz) Kol_Rash_ediz,sum(kart.kol_Prih_Ediz) Kol_Prih_ediz,ostatki.ksm_idpr,kart.razdel_id,');
  IBZagruzka.SQL.Add('kart.ksm_id,kart.kei_id,kart.kart_id,document.tip_op_id');
  IBZagruzka.SQL.Add(' FROM kart');
  IBZagruzka.SQL.Add(' INNER JOIN document ON (kart.doc_ID = document.doc_ID)');
  IBZagruzka.SQL.Add(' INNER JOIN ostatki ON (kart.kart_ID = ostatki.kart_ID)');
  IBZagruzka.SQL.Add(' WHERE document.STRUK_ID='+INTTOSTR(vStruk_Id));
  IBZagruzka.SQL.Add(' AND ostatki.Ksm_idpr='+inttostr(S_ksm));
  IBZagruzka.SQL.Add(' AND (kart.kol_rash_ediz<>0 or (kart.kol_rash_ediz=0 and kart.Tip_op_id=30))');
  IBZagruzka.SQL.Add(' AND (document.Tip_op_id=33 or document.Tip_op_id=35 or document.Tip_op_id=30)');
  IBZagruzka.SQL.Add(' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''');
  IBZagruzka.SQL.Add(' GROUP BY ostatki.ksm_idpr,kart.razdel_id,kart.ksm_id,KART.KEI_ID,kart.kart_id,document.tip_op_id');
  IBZagruzka.Active:=true;
// корректировка расхода на выработку препаратa
  IBZagruzka.First;
  if (IBZagruzka.locate('ksm_idpr;Tip_Op_Id',VarArrayOf([SyrieZagPlKODP.Asinteger,35]),[])) and (IBZagruzka.FieldByName('Kol_Rash_ediz').AsFloat<>0) then
  begin
   st_kart:=IBZagruzka.FieldByName('Kart_Id').AsInteger;
   DM1.Document.first;
   If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagPlKODP.Asinteger,vNdoc_r]),[]) then
   begin
    vNdoc:=vNdoc_r;
    vTip_Op_Id:=35;
    vTip_Doc_Id:=37;
    vKlient_Id:=SyrieZagPlKODP.Asinteger;
    vDate_op:=strtodate(s_dat1);
    vDate_dok:=strtodate(s_dat1);
    dm1.Document.Insert;
    dm1.Document.Post;
    vDocument_id_syr:=vDocument_id;
   end
   ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
   vDocument_id:=vDocument_id_syr;
   DM1.Kart.Insert;
   DM1.KartKsm_id.AsInteger:=s_ksm;
   DM1.KartRazdel_id.AsInteger:=IBZagruzka.FieldByName('Razdel_Id').AsInteger;
   DM1.KartKol_Rash_Ediz.AsFloat:=-(IBZagruzka.FieldByName('Kol_Rash_ediz').AsFloat);
   DM1.KartKei_id.AsInteger:=IBZagruzka.FieldByName('Kei_Id').AsInteger;
   dm1.Kart.Post;
  end;
//  корректировка загрузки на препарате
  IBZagruzka.First;
  if (IBZagruzka.locate('ksm_idpr;Tip_Op_Id',VarArrayOf([SyrieZagPlKODP.Asinteger,33]),[])) and (IBZagruzka.FieldByName('Kol_Rash_ediz').AsFloat<>0) then
  begin
   st_kart:=IBZagruzka.FieldByName('Kart_Id').AsInteger;
   DM1.Document.first;
   If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagPlKODP.Asinteger,vNdoc_z]),[]) then
   begin
    vNdoc:=vNdoc_z;
    vTip_Op_Id:=33;
    vTip_Doc_Id:=37;
    vKlient_Id:=SyrieZagPlKODP.Asinteger;
    vDate_op:=strtodate(s_dat1);
    vDate_dok:=strtodate(s_dat1);
    dm1.Document.Insert;
    dm1.Document.Post;
    vDocument_id_syr:=vDocument_id;
   end
   ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
   vDocument_id:=vDocument_id_syr;
   DM1.Kart.Insert;
   DM1.KartKsm_id.AsInteger:=s_ksm;
   DM1.KartRazdel_id.AsInteger:=IBZagruzka.FieldByName('Razdel_Id').AsInteger;
   DM1.KartKol_Rash_Ediz.AsFloat:=-(IBZagruzka.FieldByName('Kol_Rash_ediz').AsFloat);
   DM1.KartKei_id.AsInteger:=IBZagruzka.FieldByName('Kei_Id').AsInteger;
   dm1.Kart.Post;
  end;
//  корректировка приходa на препарате
  IBZagruzka.First;
  if IBZagruzka.locate('ksm_idpr;Tip_Op_Id',VarArrayOf([SyrieZagPlKODP.Asinteger,30]),[]) then
  begin
   v_sum:=SelectToVarIB('select sum(kart.kol_prih_Ediz) FROM kart INNER JOIN document ON (kart.doc_ID = document.doc_ID) WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND kart.kart_id='+inttostr(IBZagruzka.FieldByName('Kart_Id').AsInteger)
   + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
   + ' AND (document.Tip_op_id=34)',dm1.belmed,dm1.ibt_read);
   If v_sum <> Null then
    dob_pered:=v_sum
   else dob_pered:=0;
   v_sum:=SelectToVarIB('select sum(kart.kol_rash_Ediz) FROM kart INNER JOIN document ON (kart.doc_ID = document.doc_ID) WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND kart.kart_id='+inttostr(IBZagruzka.FieldByName('Kart_Id').AsInteger)
   + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''
   + ' AND (document.Tip_op_id=34 or document.Tip_op_id=32 )',dm1.belmed,dm1.ibt_read);
   If v_sum <> Null then
    ot_pered:=v_sum
   else ot_pered:=0;
   if (IBZagruzka.FieldByName('Kol_Prih_ediz').AsFloat+dob_pered-ot_pered)<>0 then
   begin
    if dm1.Ostatki.Active then dm1.Ostatki.Active:=false;
    DM1.Ostatki.ParamByName('struk_ID').AsInteger:=vstruk_id;
    DM1.Ostatki.MacroByName('usl').AsString:='  (ost.ksm_idpr is null or OST.KSM_IDPR=0) AND OST.KSM_ID='+INTTOSTR(IBZagruzka.FieldByName('Ksm_Id').AsInteger);
    dm1.Ostatki.Open;
    st_kart:=dm1.OstatkiKart_id.AsInteger;
    DM1.Document.first;
    If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagPlKODP.Asinteger,vNdoc_p]),[]) then
    begin
     vNdoc:=vNdoc_p;
     vTip_Op_Id:=30;
     vTip_Doc_Id:=37;
     vKlient_Id:=SyrieZagPlKODP.Asinteger;
     vDate_op:=strtodate(s_dat1);
     vDate_dok:=strtodate(s_dat1);
     dm1.Document.Insert;
     dm1.Document.Post;
     vDocument_id_syr:=vDocument_id;
    end
    ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
    vDocument_id:=vDocument_id_syr;
    DM1.Kart.Insert;
    DM1.KartKsm_id.AsInteger:=s_ksm;
    DM1.KartRazdel_id.AsInteger:=IBZagruzka.FieldByName('Razdel_Id').AsInteger;
    DM1.KartKol_Rash_Ediz.AsFloat:=-(IBZagruzka.FieldByName('Kol_Prih_ediz').AsFloat+dob_pered-ot_pered);
    DM1.KartKei_id.AsInteger:=IBZagruzka.FieldByName('Kei_Id').AsInteger;
    dm1.Kart.Post;
   end;
  end;
  SyrieZagPl.Next;
 end;
// dm1.ApplyUpdatesDoc;
// занесение распределенных данных
 vNdoc1:='Пз-'+inttostr(s_ksm);
 st_kodp:=s_kodp;
 SyrieZagPl.DisableControls;
 SyrieZagPl.First;
 While not SyrieZagPl.Eof do
 begin
  vNdoc_z:='Пз-'+inttostr(s_ksm)+'-з-'+inttostr(SyrieZagPlKODP.Asinteger);
  vNdoc_p:='Пз-'+inttostr(s_ksm)+'-п-'+inttostr(SyrieZagPlKODP.Asinteger);
  vNdoc_r:='Пз-'+inttostr(s_ksm)+'-р-'+inttostr(SyrieZagPlKODP.Asinteger);
  st_kart:=0;
  v_razdel:=SyrieZagPlRazdel_id.AsInteger;
  s_kodp:=SyrieZagPlKodp.AsInteger;
//  DM1.IBQuery1.Active := False;
//  DM1.IBQuery1.SQL.Clear;
//  DM1.IBQuery1.SQL.Add('SELECT OSTATKI.KART_ID ');
//  DM1.IBQuery1.SQL.Add(' FROM OSTATKI ');
//  DM1.IBQuery1.SQL.Add(' WHERE OSTATKI.KSM_ID='+INTTOSTR(S_ksm));
//  DM1.IBQuery1.SQL.Add(' and OSTATKI.KSM_IDPR='+inttostr(SyrieZagPlKODP.Asinteger)+' and ostatki.razdel_id='+inttostr(SyrieZagPl.FieldByName('Razdel_ID').ASINTEGER));
//  DM1.IBQuery1.Active := True;
  IF SyrieZagPlPRIX.AsFloat<>0 THEN
  BEGIN
   if dm1.Ostatki.Active then dm1.Ostatki.Active:=false;
   DM1.Ostatki.ParamByName('struk_ID').AsInteger:=vstruk_id;
   DM1.Ostatki.MacroByName('usl').AsString:='  (ost.ksm_idpr is null or OST.KSM_IDPR=0) AND OST.KSM_ID='+INTTOSTR(S_ksm);
   dm1.Ostatki.Open;
   if not dm1.Ostatki.eof then
   begin
    st_kart:=dm1.OstatkiKart_id.AsInteger;
    DM1.Document.first;
    If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagPlKodp.asInteger,vNdoc_p]),[]) then
    begin
     vTip_Op_Id:=30;
     vTip_Doc_Id:=37;
     vKlient_Id:=SyrieZagPlKodp.Asinteger;
     vDate_op:=strtodate(s_dat1);
     vDate_dok:=strtodate(s_dat1);
     dm1.Document.Insert;
     dm1.DocumentNdok.AsString:=vNdoc_p;
     dm1.Document.Post;
     vDocument_id_syr:=vDocument_id;
    end  ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
    vDocument_id:=vDocument_id_syr;
    DM1.Kart.Insert;
    DM1.KartKsm_id.AsInteger:=SyrieZagPl.FieldByName('KSM_ID').ASINTEGER;
    DM1.KartRazdel_id.AsInteger:=SyrieZagPl.FieldByName('Razdel_ID').ASINTEGER;
    DM1.KartKol_Rash_Ediz.AsFloat:=SyrieZagPlPRIX.AsFloat;
    DM1.KartKei_id.AsInteger:=SyrieZagPl.FieldByName('Kei_Id').AsInteger;
    dm1.Kart.Post;
   end;
  end;
  IF SyrieZagPlKol_Rash_Ediz.AsFloat<>0 THEN
  BEGIN
   if SyrieZagPl.FieldByName('Kart_Id').AsVariant=null or (SyrieZagPl.FieldByName('Kart_Id').AsInteger=0) then
    st_kart:=0
   else
   st_kart:=SyrieZagPl.FieldByName('Kart_Id').AsInteger;
   DM1.Document.first;
   If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagPlKodp.Asinteger,vNdoc_z]),[]) then
   begin
    vNdoc:=vNdoc_z;
    vTip_Op_Id:=33;
    vTip_Doc_Id:=37;
    vKlient_Id:=SyrieZagPlKodp.Asinteger;
    vDate_op:=strtodate(s_dat1);
    vDate_dok:=strtodate(s_dat1);
    dm1.Document.Insert;
    dm1.Document.Post;
    vDocument_id_syr:=vDocument_id;
   end ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
   vDocument_id:=vDocument_id_syr;
   DM1.Kart.Insert;
   DM1.KartKsm_id.AsInteger:=s_KSM;
   DM1.KartRazdel_id.AsInteger:=SyrieZagPl.FieldByName('Razdel_ID').ASINTEGER;
   DM1.KartKol_Rash_Ediz.AsFloat:=SyrieZagPlKol_Rash_Ediz.AsFloat;
   DM1.KartKei_id.AsInteger:=SyrieZagPl.FieldByName('Kei_Id').AsInteger;
   dm1.Kart.Post;
   st_kart:=vkart_id;
   SyrieZagPl.Edit;
   SyrieZagPl.FieldByName('Kart_Id').AsVariant:=st_kart;
   SyrieZagPl.Post;
  END;
  IF SyrieZagPlRasxV.AsFloat<>0 THEN
  BEGIN
   if (SyrieZagPl.FieldByName('Kart_Id').AsVariant=null) or (SyrieZagPl.FieldByName('Kart_Id').AsInteger=0)  then
   st_kart:=0
   else
   st_kart:=SyrieZagPl.FieldByName('Kart_Id').AsInteger;
   DM1.Document.first;
   If not DM1.Document.locate('klient_id;ndok',VarArrayOf([SyrieZagPlKodp.Asinteger,vNdoc_r]),[]) then
   begin
    vNdoc:=vNdoc_r;
    vTip_Op_Id:=35;
    vTip_Doc_Id:=37;
    vKlient_Id:=SyrieZagPlKodp.Asinteger;
    vDate_op:=strtodate(s_dat1);
    vDate_dok:=strtodate(s_dat1);
    dm1.Document.Insert;
    dm1.Document.Post;
    vDocument_id_syr:=vDocument_id;
   end
   ELSE VDOCUMENT_ID_syr:=DM1.DocumentDoc_id.AsInteger;
   vDocument_id:=vDocument_id_syr;
   DM1.Kart.Insert;
   DM1.KartKsm_id.AsInteger:=S_KSM;
   DM1.KartRazdel_id.AsInteger:=SyrieZagPl.FieldByName('Razdel_ID').ASINTEGER;
   DM1.KartKol_Rash_Ediz.AsFloat:=SyrieZagPlRasxV.AsFloat;
   DM1.KartKei_id.AsInteger:=SyrieZagPl.FieldByName('Kei_Id').AsInteger;
   dm1.Kart.Post;
  END;
  SyrieZagPl.NEXT;
 END;
 dm1.ApplyUpdatesDoc;
 SyrieZagPl.EnableControls;
 s_kodp:=st_kodp;
 SyrieZagPl.First;
end;

procedure TFPererasPlenka.ToolButton4Click(Sender: TObject);
begin
 vNdoc1:='Пз-'+inttostr(s_ksm);
 iF DM1.Document.Active=true THEN  DM1.Document.Close;
 DM1.Document.MacroByName('USL').AsString:=' WHERE document.NDOk containing '+ ''''+vNdoc1+''''+' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')';
 DM1.Document.open;
 DM1.Document.First;
 If not DM1.Document.Eof then
 begin
  if MessageDlg('Вы действительно хотите удалить старое перераспределение? ',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
// удаление старого перераспределения
   VNDOCY:='-у-';
   vNdoc_z:='Пз-'+inttostr(s_ksm)+'-з-у-';
   vNdoc_p:='Пз-'+inttostr(s_ksm)+'-п-у-';
   vNdoc_r:='Пз-'+inttostr(s_ksm)+'-р-у-';
   try
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc1+'''');
     DM1.IBQuery1.SQL.Add(' and DOCUMENT.NDOK not containing '+''''+VNDOCY+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=35');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc1+'''');
     DM1.IBQuery1.SQL.Add(' and DOCUMENT.NDOK not containing '+''''+VNDOCY+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=33');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc1+'''');
     DM1.IBQuery1.SQL.Add(' and DOCUMENT.NDOK not containing '+''''+VNDOCY+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=30');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc_p+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=30');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc_z+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=33');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('delete from  KART WHERE KART.DOC_ID IN');
     DM1.IBQuery1.SQL.Add(' (SELECT DOCUMENT.DOC_ID FROM document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc_r+'''');
     DM1.IBQuery1.SQL.Add(' and document.tip_op_id=35');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+'))');
     DM1.IBQuery1.SQL.Add(' and kart.parent is null');
     DM1.IBQuery1.ExecSQL;
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add(' delete from document');
     DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.NDOK containing '+''''+vNdoc1+'''');
     DM1.IBQuery1.SQL.Add(' and (Document.Date_dok between '+''''+s_dat1+'''' +' and '+''''+s_dat2+''''+')');
     DM1.IBQuery1.ExecSQL;
     DM1.IBT_WRITE.Commit;
     DM1.IBT_READ.CommitRetaining;
     dm1.IBT_Read.Active:=false;
     dm1.IBT_Read.StartTransaction;
     dm1.IBT_WRITE.Active:=false;
     dm1.IBT_WRITE.StartTransaction;
   except
     on E:EIBInterbaseError do
     begin
      ShowMessage(E.Message);
     end;
   end;
  end;
 end;
 if SyrieZagPl.active then SyrieZagPl.active:=false;
 VvodPlenka;
end;

end.
