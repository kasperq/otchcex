unit TexGur;

interface

uses DrugLoad,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, StdCtrls, ImgList, ComCtrls, ToolWin, Grids,
  DBGridEh, FindDlgEh, Buttons, DB, IBCustomDataSet, IBQuery, DBCtrls,
  IBUpdateSQL, IBUpdSQLW, RxIBQuery,DateUtils,Math,
  Menus, ExtCtrls, DBGrids,VCLUtils,DBTables,IB,StrUtils,
  SplshWnd, wwDialog, Wwfltdlg,Fr_pars, FR_DSet, FR_DBSet, FR_Class,
  RXCtrls, RxMemDS, dbcgrids, DBCtrlsEh, Spin, ActnList,UtilRIB,RxStrUtils,
  Placemnt,FileUtil;
type
  TFTexGur = class(TForm)
    ImageList2: TImageList;
    DSTexGur: TDataSource;
    TexGur: TRxIBQuery;
    TexGurUpdateSQLW1: TIBUpdateSQLW;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton9: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    DSZagSyr: TDataSource;
    ZagSyr: TRxIBQuery;
    Seria_s: TRxIBQuery;
    SerUpdate: TIBUpdateSQLW;
    Seria_sSERIA_ID: TIntegerField;
    Seria_sKSM_ID: TIntegerField;
    Seria_sSERIA: TIBStringField;
    Seria_sSROK_GODN: TDateField;
    Seria_sSERTIF: TIBStringField;
    Seria_sDATE_SERTIF: TDateField;
    Seria_sPASPORT: TIBStringField;
    Seria_sDATE_PASPORT: TDateField;
    Seria_sKOL_SERIA: TFMTBCDField;
    Seria_sDATE_VIPUSK: TDateField;
    Seria_sFORMA_VIPUSK: TIBStringField;
    Seria_sKEI_ID: TSmallintField;
    Seria_sDATE_TIME_UPDATE: TDateTimeField;
    Seria_sUSER_NAME: TIBStringField;
    Seria_sSHEMA: TIBStringField;
    Seria_sKODTN: TIBStringField;
    Seria_sDATE_ZAG: TDateField;
    Seria_sFIO_RASH: TIBStringField;
    Seria_sFIO_MASTER: TIBStringField;
    Seria_sCOMMENT: TIBStringField;
    Seria_sOB_ZAG: TFloatField;
    FindDlgEh1: TFindDlgEh;
    FindDlgEh2: TFindDlgEh;
    Label5: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    ToolButton4: TToolButton;
    Seria_sVLAG_TM: TFloatField;
    Seria_sKOD_TM: TIntegerField;
    Seria_sKOL_TM: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh3: TDBGridEh;
    TabSheet2: TTabSheet;
    DBGridEh4: TDBGridEh;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText1: TDBText;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label41: TLabel;
    Label46: TLabel;
    SpeedButton1: TSpeedButton;
    Label56: TLabel;
    Label57: TLabel;
    Label61: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label22: TLabel;
    Label59: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DateEdit1: TDateEdit;
    GroupBox3: TGroupBox;
    Label68: TLabel;
    Label26: TLabel;
    Label70: TLabel;
    Label34: TLabel;
    Label75: TLabel;
    Label21: TLabel;
    ToolButton6: TToolButton;
    SpeedButton2: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Label7: TLabel;
    Label45: TLabel;
    Label38: TLabel;
    Edit9: TEdit;
    ToolButton8: TToolButton;
    FormStorage1: TFormStorage;
    Splitter1: TSplitter;
    Splitter5: TSplitter;
    TexGurKODP: TIntegerField;
    TexGurOT_S: TFMTBCDField;
    TexGurOT_NZ: TFMTBCDField;
    TexGurKART_ID: TIntegerField;
    TexGurNAZPRPF: TIBStringField;
    TexGurPLNORM: TFloatField;
    TexGurKRAZ: TSmallintField;
    TexGurRAZDEL_ID: TSmallintField;
    TexGurNMAT: TIBStringField;
    TexGurXARKT: TIBStringField;
    TexGurKEI_ID: TSmallintField;
    TexGurNEIS: TIBStringField;
    TexGurSTROKA_ID: TIntegerField;
    TexGurKSM_ID: TIntegerField;
    TexGurKEIN: TSmallintField;
    TexGurKOL_RASH: TFloatField;
    TexGurKOL_RASH_EDIZ: TFloatField;
    TexGurKOL_PRIH: TFloatField;
    TexGurKOL_PRIH_EDIZ: TFloatField;
    TexGurDOC_ID: TIntegerField;
    TexGurTIP_OP_ID: TIntegerField;
    TexGurKOEF1: TIBBCDField;
    TexGurKOEF2: TIBBCDField;
    TexGurKOEF3: TIBBCDField;
    TexGurPROC: TIBBCDField;
    TexGurNORMZ_ID: TIntegerField;
    TexGurFORMULA: TIBStringField;
    TexGurDECZNAK: TSmallintField;
    TexGurRASCH_ZAG: TFMTBCDField;
    TexGurPROC_ZAG: TFMTBCDField;
    TexGurKOT_S: TFMTBCDField;
    TexGurKOT_NZ: TFMTBCDField;
    ZagSyrKART_ID: TIntegerField;
    ZagSyrKEI_ID: TSmallintField;
    ZagSyrKRAZ: TSmallintField;
    ZagSyrNMAT: TIBStringField;
    ZagSyrNAMEVIS: TIBStringField;
    ZagSyrNAMEPRN: TIBStringField;
    ZagSyrKORG: TIntegerField;
    ZagSyrNAMSPSR: TIBStringField;
    ZagSyrNAM: TIBStringField;
    ZagSyrNEIS: TIBStringField;
    ZagSyrKOL_RASH_EDIZ: TFloatField;
    ZagSyrNDOK: TIBStringField;
    TexGurDATE_OP: TDateField;
    ZagSyrKOD_PREP: TIBStringField;
    TexGurNOT_S: TFMTBCDField;
    TexGurOTN_S: TFMTBCDField;
    ZagSyrKSM_ID: TIntegerField;
    ZagSyrNMAT_SYR: TIBStringField;
    btn_vipuskList: TToolButton;
    SpeedButton3: TSpeedButton;
    TexGurGOST: TIBStringField;
    ZagSyrDATE_TIME_UPDATE: TDateField;
    TexGurZAG_PERIOD: TFMTBCDField;
    procedure MyGetValue(const s: String; var v: Variant);
    procedure MyGetValue1(const s: String; var v: Variant);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh3SortMarkingChanged(Sender: TObject);
    procedure DBGridEh4SortMarkingChanged(Sender: TObject);
    procedure TexGurSost;
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure TexGurKSM_IDValidate(Sender: TField);
    procedure frReport2GetValue(const ParName: String;
      var ParValue: Variant);
    procedure ToolButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TexGurKRAZValidate(Sender: TField);
    procedure TexGurBeforePost(DataSet: TDataSet);
    procedure Seria_sBeforeInsert(DataSet: TDataSet);
    procedure Seria_sNewRecord(DataSet: TDataSet);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure TexGurNewRecord(DataSet: TDataSet);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit9Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure Edit13KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TexGurAfterDelete(DataSet: TDataSet);
    procedure TexGurBeforeDelete(DataSet: TDataSet);
    procedure btn_vipuskListClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    drLoad : TDrugLoad;
  public
    { Public declarations }
  end;

var
  FTexGur: TFTexGur;
  s_stad: integer;
  s_kol_zag: string;
  s_seria_p: string;
  vSeria_Ids: integer;
  s_serias: string;
  S_KSMs: integer;
  v_11: double;
  k1: double;
  k2: double;
  k3: double;
  k4: double;
  PL: double;
  s_vip: double;
  mes_s: integer;
  god_s: integer;
  sSeria_id: integer;
  vFormula:TfrParser;
implementation
 uses dm, ViborPerioda, Ser, SprFormul, Find_Spprod, ediz,
  Find_Matrop, razdel, glmenu, SprSTAD, FSpFormv, Analit_aList, analit,
  Unit21, OstSyr, Analit1, Komp_Tm, VybPrep;
{$R *.dfm}

procedure TFTexGur.TexGurSost;
begin
  try
    dm1.Seria.Close;
    dm1.Kart.Close;
    Seria_s.Close;
    dm1.IBT_WRITE.Active := FALSE;
    dm1.IBT_READ.Active := FALSE;
    StartWait;
    TexGur.BeforePost := nil;
    s_seria := edit2.Text;
    if (s_seria <> '') then
    begin
      USL_SORT := '7,9';
      vNDoc := 'Заг_' + copy(label19.Caption, 1, 5) + '_' + s_seria;
      vDate_op := strtodate(s_dat1_period);
      vTip_Op_Id := 33;
      vTip_Doc_Id := 34;
      vKlient_Id := s_kodp;
      vDate_dok := strtodate(s_dat1_period);
      vpriz_id := 2;
      if (dm1.Document.Active) then
        dm1.Document.Close;
      DM1.DOcUMENT.MacroByName('USL').AsString := 'WHERE DOcUMENT.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                                                  + ' AND DOCUMENT.TIP_OP_ID=33 AND DOCUMENT.NDOK='
                                                  + '''' + VnDOC + ''''
                                                  + ' AND Document.Date_dok between '
                                                  + '''' + s_dat1_period + ''''
                                                  + ' and ' + '''' + s_dat2_period + ''''
                                                  + ' AND Document.Klient_id=' + inttostr(vKlient_id);
      dm1.Document.OPEN;
      IF (DM1.Document.Eof) THEN
      begin
        IF (MODE < 2) THEN
        BEGIN
          dm1.Document.Insert;
          dm1.startWriteTrans;
          try
            if (dm1.Document.State = dsEdit) or (dm1.Document.State = dsInsert) then
              dm1.Document.Post;
            if (dm1.Document.UpdatesPending) then
              dm1.Document.ApplyUpdates;
            dm1.commitWriteTrans(true);
            dm1.commitReadTrans(true);
            dm1.Document.Close;
          except
            MessageDlg('Произошла ошибка при записи документа!', mtError, [mbOK], 0);
            DM1.IBT_Read.RollbackRetaining;
          end;
        end
        ELSE
          vDocument_id := 0;
      END
      ELSE
        vDocument_id := dm1.DocumentDOC_ID.AsInteger;
      if (not dm1.Seria.Active) then
      begin
        s_seria := edit2.Text;
        Dm1.Seria.ParamByName('Ksm_id').AsInteger := S_KODP;
        DM1.Seria.MacroByName('usl').AsString := 'SERIA.SERIA=' + '''' + S_SERIA + '''';
        dm1.Seria.Active := true;
        vSeria_id := dm1.SeriaSeria_id.AsInteger;
      end;
      if (edit9.Text <> '') and (edit9.Text <> '0') then
        s_vip := strtofloat(edit9.Text)
      else
        s_vip := 0;
      TexGur.BeforePost := nil;

      TexGur.Close;
      TexGur.ParamByName('Struk').AsInteger := vStruk_id;
      TexGur.ParamByName('mes').AsInteger := mes;
      TexGur.ParamByName('god').AsInteger := god;
      TexGur.ParamByName('KODP').AsInteger := S_KODP;
      TexGur.MacroByName('SORT').AsString := USL_SORT;
      TexGur.MacroByName('pl').AsString := replacestr(floattostrf(s_vip, ffGeneral, 6, 15), ',', '.');
      TexGur.ParamByName('doc').AsInteger := vDocument_id;
      TexGur.MacroByName('dat1').AsString := '''' + S_DAT1_Period + '''';
      TexGur.MacroByName('dat2').AsString := '''' + s_dat2_Period + '''';
      TexGur.Open;
      TexGur.DisableControls;

      v_dok_kart := SelectToVarIB('select Ostatki.kart_id   FROM Ostatki '
                                  + 'WHERE Ostatki.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                                  + ' AND ostatki.ksm_id=' + inttostr(s_Kodp)
                                  + ' AND Ostatki.seria_id=' + inttostr(vseria_id),
                                  dm1.belmed, dm1.ibt_read);
      If (v_dok_kart <> Null) then
      begin
        s_kart_id := 0;
      end;
      TexGur.First;
      while (not TexGur.Eof) do
      begin
        if (TexGurDoc_id.AsInteger <> vDocument_id) then
        begin
          TexGur.Edit;
          TexGurDoc_id.AsInteger := vDocument_id;
          TexGur.Post;
        end;
        TexGur.Next;
      end;
      TexGur.First;
    end;

    TexGur.EnableControls;
    if (PageControl1.ActivePage = tabsheet1) then    
      DBGridEh3.SetFocus;
    TexGur.BeforePost := TexGurBeforePost;
    StopWait;
  except
    on E : EIBInterbaseError do
    begin
      ShowMessage(E.Message);
      StopWait;
    end;
  end;
end;

procedure TFTexGur.Edit1Change(Sender: TObject);
begin
if edit1.text<>''   then begin
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
   Label19.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label11.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
   Label3.Caption:=DM1.IBQuery1.FieldByName('Nam_reg').AsString;
  end
  else
  begin
   Label19.Caption:='';
   Label11.Caption:='';
   Label3.Caption:='';
  end;
 Label19.Refresh;
 Label11.Refresh;
 end;
end;

procedure TFTexGur.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    StartWait;
    if (edit1.text<>'') and (not dm1.IBQuery1.Eof)  then
    begin
    edit9.text:='';
    EDIT1.OnChange:=nil;
    edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
    EDIT1.OnChange:=Edit1Change;
//    edit17.text:=floattostr(DM1.IBQuery1.FieldByName('vol_ov').Asfloat);
    s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
    s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
    s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
    s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
    s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
    s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
    s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
    s_Lek_id:=DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
    s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
    s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
    s_Formv:=DM1.IBQuery1.FieldByName('NAMEFV').AsString;
    s_Sprod_id:=DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
    S_NAMREG:=DM1.IBQuery1.FieldByName('NAM_REG').AsString;
    IF fSprFormul.CEH_NormZ.Active THEN fSprFormul.CEH_NormZ.Active:=false;
    SORTf:=' ORDER BY CEH_NORMZ.RAZDEL_ID,CEH_NORMZ.KSM_ID_MAT ';
    USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(s_kodp);
    fSprFormul.CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
    fSprFormul.CEH_NormZ.MacroByName('USL').AsString:=USLf;
    fSprFormul.CEH_NormZ.Open;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT *');
    DM1.IBQuery1.SQL.Add(' FROM UTPLAN');
    DM1.IBQuery1.SQL.Add(' WHERE UTPLAN.MES='+inttostr(mes)+' AND UTPLAN.GOD='+inttostr(god)+' AND UTPLAN.SPROD_ID='+inttostr(s_sprod_id));
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
     Label26.Caption:=floattostr(DM1.IBQuery1.FieldByName('PLAN').AsFloat);
     s_plan:=DM1.IBQuery1.FieldByName('PLAN').AsFloat;
     end
    else
    begin
     Label26.Caption:='0';
     s_plan:=0;
    end;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT kartv.kol_prih');
    DM1.IBQuery1.SQL.Add(' FROM KARTV ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTV.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
    + ' AND KARTV.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
     Label34.Caption:=floattostr(DM1.IBQuery1.FieldByName('kol_prih').AsFloat);
     s_OPLan:=DM1.IBQuery1.FieldByName('kol_prih').AsFloat;
     end
    else
    begin
     Label34.Caption:='0';
     s_Oplan:=0;
    end;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SUM(kart.kol_prih) SDANO');
    DM1.IBQuery1.SQL.Add(' FROM KART ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.KLIENT_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=2'+ ' AND KART.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
//     Label36.Caption:=floattostr(DM1.IBQuery1.FieldByName('SDANO').AsFloat);
     s_SDANO:=DM1.IBQuery1.FieldByName('SDANO').AsFloat;
     end
    else
    begin
//     Label36.Caption:='0';
     s_SDANO:=0;
    end;
    label19.caption:=s_NMAT;
    label28.caption:=Inttostr(s_KORG);
    label29.caption:=s_namorg;
    label21.caption:=s_Neiz;
    label22.caption:=s_GOST;
    label11.caption:=s_Xarkt;
    label45.caption:=s_Formv;
  end;
  StopWait;
 end;
end;

procedure TFTexGur.FormCreate(Sender: TObject);
begin
  s_dat1_period := s_dat1;
  s_dat2_period := S_dat2;
end;

procedure TFTexGur.FormDestroy(Sender: TObject);
begin
  FreeAndNil(drLoad);
end;

procedure TFTexGur.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
  if (edit2.text<>'') then
  begin
   if (edit9.Text<>'') and (edit9.Text<>'0') then s_vip:=strtofloat(edit9.Text) else s_vip:=0;
   s_seria:=edit2.Text;
   s_ksm:=s_kodp;
   if dm1.Seria.Active then dm1.Seria.Active:=false;
   Dm1.Seria.ParamByName('Ksm_id').AsInteger:=S_KODP;
   dm1.Seria.Active:=true;
   if dm1.Seria.Locate('seria;ksm_id',VarArrayOf([s_seria,s_kodp]),[]) then
   begin
    vseria_id:=dm1.SeriaSeria_id.AsInteger;
    s_kol_seria:=DM1.SeriaKol_Seria.AsFloat;
    edit9.Text:=floattostr(s_kol_seria);
    if dm1.SeriaDATE_ZAG.AsVariant<>null then
    begin
     DateEdit1.Date:=dm1.SeriaDATE_ZAG.AsDateTime;
     DateEdit1.ReadOnly:=false;
     IF MODE<2 THEN
      TexGurSost
     ELSE
     BEGIN
      TexGur.Close;
      TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
      TexGur.ParamByName('mes').AsInteger:=mes;
      TexGur.ParamByName('god').AsInteger:=god;
      TexGur.ParamByName('KODP').AsInteger:=S_KODP;
      TexGur.MacroByName('SORT').AsString:=USL_SORT;
      TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
      TexGur.ParamByName('doc').AsInteger:=vDocument_id;
      TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
      TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
      TexGur.Open;
     END;
     TexGur.First;
     IF fSprFormul.CEH_NormZ.Active THEN
     begin
      fSprFormul.CEH_NormZ.Close;
      SORTf:=' ORDER BY CEH_NORMZ.RAZDEL_ID,CEH_NORMZ.KSM_ID_MAT ';
      USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(S_KODP);
      fSprFormul.CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
      fSprFormul.CEH_NormZ.MacroByName('USL').AsString:=USLf;
      fSprFormul.CEH_NormZ.Open
     end;
    end
    else
    begin
     DateEdit1.ReadOnly:=false;
     DateEdit1.SetFocus;
    end;
   end
   else
   begin
    dm1.Seria.Insert;
    dm1.Seria.Post;
    DateEdit1.ReadOnly:=false;
    DateEdit1.SetFocus;
   end;
   dm1.Seria.Edit;
   dm1.SeriaFORMA_VIPUSK.AsString:=s_Formv;
//   DM1.SeriaKSM_ID.AsInteger:=S_Kodp;
   DM1.Seria.Post;
  end;
 end;
end;

procedure TFTexGur.Edit9Click(Sender: TObject);
begin
edit9.Text:=''
end;

procedure TFTexGur.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    if (edit9.Text <> '') then
    begin
      s_vip := strtofloat(edit9.Text);
    end;
  end;
end;

procedure TFTexGur.Edit1Click(Sender: TObject);
begin
 edit1.text:='';
 edit2.text:='';
 vSeria_id:=0;
 IF  fSprFormul.CEH_NormZ.Active THEN
  fSprFormul.CEH_NormZ.Active:=FALSE;
end;

procedure TFTexGur.ToolButton3Click(Sender: TObject);
var
  usl_ser : string;
begin
//Сохранение внесенных измененний по т/ж
  if (TexGur.Modified) then
    TexGur.Post;
  s_seria := edit2.Text;
  if (s_seria <> '') then
  begin
    Splash := ShowSplashWindow(AniBmp1,
                               'Сохранение данных. Подождите, пожалуйста...', True, nil);
    if (dm1.Kart.Active = false) then
    begin
      DM1.Kart.MacroByName('USL').AsString := 'WHERE document.klient_id=' + inttostr(s_kodp)
                                              + ' and document.date_op between '
                                              + '''' + s_dat1 + '''' + ' and '
                                              + '''' + s_dat2 + '''';
      DM1.Kart.Open;
    end;
    dm1.Kart.BeforePost := nil;
    TexGur.First;
    while (not TexGur.Eof) do
    begin
      if (TexGurKart_id.AsInteger <> 0) then
      begin
        if (TexGurStroka_id.AsInteger = 0) then
        begin
          st_kart := TexGurKart_id.AsInteger;
          dm1.Kart.Insert;
          DM1.Kart.FieldByName('Ksm_Id').AsInteger := TexGurKsm_id.AsInteger;
          dm1.KartKol_rash_ediz.AsFloat := TexGurKol_Rash_Ediz.AsFloat;
          dm1.KartKol_prih_ediz.AsFloat := 0;
          dm1.KartKol_rash.AsFloat := 0;
          dm1.KartKol_prih.AsFloat := 0;
          DM1.Kart.FieldByName('razdel_Id').AsInteger := TexGurRazdel_id.AsInteger;
          DM1.Kart.FieldByName('kei_Id').AsInteger := TexGurKein.AsInteger;
          DM1.Kart.FieldByName('Doc_Id').AsInteger := VDOCUMENT_ID;
          DM1.Kart.FieldByName('KART_Id').AsInteger := TexGurKart_id.AsInteger;
          DM1.Kart.FieldByName('TIP_OP_Id').AsInteger := 33;
          DM1.Kart.FieldByName('TIP_DOK_Id').AsInteger := 37;
          DM1.Kart.FieldByName('klient_Id').AsInteger := s_kodp;
          dm1.Kart.Post;
        end
        else
        begin
          dm1.Kart.First;
          if (dm1.Kart.Locate('kart_id;doc_id', VarArrayOf([texGurKart_id.AsInteger, vDocument_id]), [])) then
          begin
            dm1.Kart.Edit;
            DM1.Kart.FieldByName('KART_Id').AsInteger := TexGurKart_id.AsInteger;
            dm1.KartKol_rash_ediz.AsFloat := TexGurKol_Rash_Ediz.AsFloat;
            dm1.KartKol_prih_ediz.AsFloat := 0;
            dm1.KartKol_rash.AsFloat := 0;
            dm1.KartKol_prih.AsFloat := 0;
            dm1.Kart.Post;
          end
//     else
//     st_kart:=st_kart;
        end;
      end;
      TexGur.Next;
    end;
    s_seria := edit2.Text;
    dm1.Kart.BeforePost:=dm1.KartBeforePost;
    if (not dm1.seria.Active) then
    begin
      Dm1.Seria.ParamByName('Ksm_id').AsInteger := S_KODP;
      DM1.Seria.MacroByName('usl').AsString := 'SERIA.SERIA=' + '''' + S_SERIA + '''';
      dm1.Seria.Active := true;
      vSeria_id := dm1.SeriaSeria_id.AsInteger;
    end;
    s_seria_p := s_seria;
    S_KSM := S_KODP;
    DM1.Seria.Edit;
    DM1.SeriaDate_ZAG.AsDateTime := DateEdit1.Date;
    if (edit9.Text <> '') then
      DM1.SeriaKol_seria.AsFloat := strtofloat(Edit9.Text)
    else
      DM1.SeriaKol_seria.AsFloat := 0;
    DM1.Seria.Post;
    DM1.Seria.ApplyUpdates;
    if (dm1.Ostatki.Active) then
    begin
      if (DM1.Ostatki.UpdatesPending) then
        DM1.Ostatki.ApplyUpdates;
      dm1.Ostatki.Active := false;
    end;
    usl_ser := ' and OST.KSM_ID=' + INTTOSTR(s_kodp) + ' and ost.seria_id=' + inttostr(vSeria_id);
    DM1.Ostatki.ParamByName('struk_ID').AsInteger := vstruk_id;
    DM1.Ostatki.MacroByName('usl').AsString := usl_ser;
    DM1.Ostatki.Open;
    if (not dm1.Ostatki.Eof) then
      s_kart_id := DM1.OstatkiKart_id.AsInteger
    else
    begin
      v_razdel := 0;
      DM1.Ostatki.Insert;
      DM1.Ostatki.Post;
      dm1.Ostatki.ApplyUpdates;
      s_kart_id := vKart_id;
    end;

    if (fsPRfORMUL.Ceh_Normz.Modified) or (fsPRfORMUL.Ceh_Normz.State = dsEdit)
       or (fsPRfORMUL.Ceh_Normz.State = dsInsert) then
      fsPRfORMUL.Ceh_Normz.Post;

    if (DM1.Seria.Modified) or (DM1.Seria.State = dsEdit)
       or (DM1.Seria.State = dsInsert) then
      DM1.Seria.Post;

    if (Seria_s.Modified) or (Seria_s.State = dsEdit)
       or (Seria_s.State = dsInsert) then
      Seria_s.Post;

    if (DM1.Ostatki.Modified) or (DM1.Ostatki.State = dsEdit)
       or (DM1.Ostatki.State = dsInsert) then
      DM1.Ostatki.Post;

    try
      IF (FSprFormul.Ceh_Normz.UpdatesPending) THEN
        fsPRfORMUL.Ceh_Normz.ApplyUpdates;
      if (DM1.Seria.UpdatesPending) then
        DM1.Seria.ApplyUpdates;
      if (Seria_s.UpdatesPending) then
        Seria_s.ApplyUpdates;
      if (DM1.Ostatki.UpdatesPending) then
        DM1.Ostatki.ApplyUpdates;
      if (DM1.Kart.UpdatesPending) then
        DM1.Kart.ApplyUpdates;

      dm1.commitWriteTrans(true);
      dm1.commitReadTrans(true);
    except
      MessageDlg('Произошла ошибка при записи!', mtWarning, [mbOK], 0);
      DM1.IBT_Read.RollbackRetaining;
    end;
// добавление в приход
    TexGur.First;
    while not TexGur.Eof do
    begin
      s_ksm := TexGurKsm_id.AsInteger;
      v_kein := TexGurKein.AsInteger;
      vklient_id := s_kodp;
      v_razdel := TexGurRazdel_id.AsInteger;
      if (FSprFormul.Ceh_Normz.Active = true) then
        FSprFormul.CEH_NormZ.Close;
      FSprFormul.CEH_NormZ.MacroByName('SORT').AsString := '';
      FSprFormul.CEH_NormZ.MacroByName('USL').AsString := ' Where CEH_NORMZ.KSM_ID_PR='
                                                          + INTTOSTR(S_KODP)
                                                          + ' and CEH_NORMZ.KSM_ID_MAt='
                                                          + INTTOSTR(S_Ksm);
      FSprFormul.CEH_NormZ.Open;
      if (not FSprFormul.CEH_NORMZ.eof) then
        if (FSprFormul.CEH_NORMZDecznak.AsVariant <> null) then
          tochn := -FSprFormul.CEH_NORMZDecznak.asinteger
        else
          tochn := -3
      else
        tochn := -3;
      pr_kor := 0;
      try
        DM1.DobPrixPrep;
      except
        on e : exception do
        begin
          MessageDlg('Произошла ошибка при записи прихода на код: ' + TexGurKsm_id.AsString
                     + '! ' + e.Message,
                     mtWarning, [mbOK], 0);
          DM1.IBT_Read.RollbackRetaining;
        end;
      end;
      TexGur.Next;
    end;
    FSprFormul.CEH_NormZ.Close;
    dm1.commitWriteTrans(true);
    dm1.commitReadTrans(true);
    TexGurSost;
    Splash.Free;
  end;
end;

procedure TFTexGur.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FreeAndNil(drLoad);
 IF DM1.Seria.Active THEN DM1.Seria.Close;
 IF DM1.Ostatki.Active THEN DM1.Ostatki.Close;
 IF DM1.Document.Active THEN DM1.Document.Close;
 IF TexGur.Active THEN TexGur.Close;
 vseria_id:=0;
end;

procedure TFTexGur.MyGetValue(const s: String; var v: Variant);
begin
 if UpperCase(S)='V2' then if FTexGur.Edit9.Text<>'' then v:=strtofloat(FTexGur.Edit9.Text) else v:=0;
 if UpperCase(S)='PN' then v:=TexGurPlnorm.AsFloat;
end;

procedure TFTexGur.MyGetValue1(const s: String; var v: Variant);
begin

 if UpperCase(S)='K1' then v:=TexGurKoef1.AsFloat;
 if UpperCase(S)='K2' then v:=TexGurKoef2.AsFloat;
 if UpperCase(S)='K3' then v:=TexGurKoef3.AsFloat;
 if UpperCase(S)='K4' then v:=TexGurProc.AsFloat;
 if UpperCase(S)='V2' then if FTexGur.Edit9.Text<>'' then v:=strtofloat(FTexGur.Edit9.Text) else v:=0;
 if UpperCase(S)='PN' then v:=TexGurPlnorm.AsFloat;

end;


procedure TFTexGur.N1Click(Sender: TObject);
begin
 dm1.frxReport1.LoadFromFile(reportsPath + 'P_TexGur_o.fr3');
 dm1.FrxReport1.ShowReport;
end;

procedure TFTexGur.N3Click(Sender: TObject);
begin
 dm1.FrReport2.LoadFromFile(reportsPath + 'P_RaschTM.frf');
 dm1.FrReport2.ShowReport;
end;

procedure TFTexGur.N4Click(Sender: TObject);
begin
 dm1.FrReport2.LoadFromFile(reportsPath + 'P_ListKomplSer.frf');
 dm1.FrReport2.ShowReport;
end;

procedure TFTexGur.ToolButton9Click(Sender: TObject);
begin
 if MessageDlg('Пересчитать загрузку?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
 begin
  pr_button9:=false;
//  TexGur.First;
  While not TexGur.Eof do
  begin
   if (TexGurFormula.Asstring<>'  ')and (TexGurFormula.Asstring<>'0') then
   begin
    vFormula:=TfrParser.Create;
    try
     TexGur.Edit;
     IF TexGurDECZNAK.AsVariant=null THEN  TexGurDECZNAK.AsInteger:=3;
     Tochn:=0-TexGurDecznak.AsInteger;
     vFormula.OnGetValue:=MyGetValue1;
     s_kol_zag:=vFormula.Calc(TexGurFormula.Asstring);
     TexGurKol_Rash_EDIZ.asFloat:=SimpleRoundTo(strtofloat(s_kol_zag),Tochn);
//     TexGur.Post;
    finally
     vFormula.Free;
    end;
   end;
   TexGur.Next;
  end;
 end;
 pr_button9:=true;
end;

procedure TFTexGur.TexGurAfterDelete(DataSet: TDataSet);
begin
if s_del<>0 then
begin
 if not dm1.IBT_WRITE.Active then dm1.IBT_WRITE.StartTransaction;
 if not dm1.Kart.Active then
 begin
   dm1.Kart.MacroByName('usl').AsString:=' WHERE document.klient_id='+inttostr(s_kodp)
     +' and (document.date_op between '+''''+ s_dat1+''''+' and '+''''+s_dat2+''''
     + ') ';
    dm1.Kart.Open;
 end;
 if dm1.Kart.Locate('stroka_id',s_del,[]) then
 begin
   dm1.Kart.Delete;
   dm1.Kart.ApplyUpdates;
 end;
end;
end;

procedure TFTexGur.btn_vipuskListClick(Sender: TObject);
begin
  if (FVybPrep = nil) then
    FVybprep := TfVybPrep.Create(Application);
  FVybPrep.ShowModal;
  if (FVybPrep.ModalResult = mrOk) then
  begin
    StartWait;
    s_kodp := FVybPrep.vprepKsm_id.AsInteger;
    fSprFormul.CEH_NormZ.Active:=FALSE;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,SPPROD.SPROD_ID,spprod.volumf,spprod.vol_ov,SPPROD.VOLumf,');
    DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,SPPROD.LEK_ID,SPFORMV.NAMEFv,region.nam nam_reg');
    DM1.IBQuery1.SQL.Add(' FROM SPPROD');
    DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
    DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KSM_ID='+INTTOSTR(s_kodp));
    DM1.IBQuery1.Active := True;
  EDIT1.OnChange:=nil;
  edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT1.OnChange:=Edit1Change;
  edit9.text:='';
  s_namreg := dm1.IBQuery1.FieldByName('Nam_reg').AsString;
  label3.Caption:=dm1.IBQuery1.FieldByName('Nam_reg').AsString;
//  edit17.text:=floattostr(DM1.IBQuery1.FieldByName('vol_ov').Asfloat);
  s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
  s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
  s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
  s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
  s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
  s_Lek_id:=DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
  s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
  s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
  s_Formv:=DM1.IBQuery1.FieldByName('NAMEFV').AsString;
  s_Sprod_id:=DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
  IF fSprFormul.CEH_NormZ.Active THEN fSprFormul.CEH_NormZ.Active:=false;
  SORTf:=' ORDER BY CEH_NORMZ.RAZDEL_ID,CEH_NORMZ.KSM_ID_MAT ';
  USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(s_kodp);
  fSprFormul.CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
  fSprFormul.CEH_NormZ.MacroByName('USL').AsString:=USLf;
  fSprFormul.CEH_NormZ.Open;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT *');
  DM1.IBQuery1.SQL.Add(' FROM UTPLAN');
  DM1.IBQuery1.SQL.Add(' WHERE UTPLAN.MES='+inttostr(mes)+' AND UTPLAN.GOD='+inttostr(god)+' AND UTPLAN.SPROD_ID='+inttostr(s_sprod_id));
  DM1.IBQuery1.Active := True;
  if not dm1.IBQuery1.Eof then
  begin
   Label26.Caption:=floattostr(DM1.IBQuery1.FieldByName('PLAN').AsFloat);
   s_plan:=DM1.IBQuery1.FieldByName('PLAN').AsFloat;
  end
  else
  begin
   Label26.Caption:='0';
   s_plan:=0;
  end;
  DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT kartv.kol_prih');
    DM1.IBQuery1.SQL.Add(' FROM KARTV ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTV.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
    + ' AND KARTV.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
     Label34.Caption:=floattostr(DM1.IBQuery1.FieldByName('kol_prih').AsFloat);
     s_OPLan:=DM1.IBQuery1.FieldByName('kol_prih').AsFloat;
     end
    else
    begin
     Label34.Caption:='0';
     s_Oplan:=0;
    end;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SUM(kart.kol_prih) SDANO');
    DM1.IBQuery1.SQL.Add(' FROM KART ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.KLIENT_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=2' + ' AND KART.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
//     Label36.Caption:=floattostr(DM1.IBQuery1.FieldByName('SDANO').AsFloat);
     s_SDANO:=DM1.IBQuery1.FieldByName('SDANO').AsFloat;
     end
    else
    begin
//     Label36.Caption:='0';
     s_SDANO:=0;
    end;
  label19.caption:=s_NMAT;
  Label28.caption:=Inttostr(s_KORG);
  label29.caption:=s_namorg;
  label21.caption:=s_Neiz;
  label22.caption:=s_GOST;
  label11.caption:=s_Xarkt;
  label45.caption:=s_Formv;
 end;
 StopWait;
end;

procedure TFTexGur.Button1Click(Sender: TObject);
 var s_kol: double;
begin
 IF not fSprFormul.CEH_NormZ.Active THEN
 begin
  SORTf:=' ORDER BY CEH_NORMZ.RAZDEL_ID,CEH_NORMZ.KSM_ID_MAT ';
  USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(s_Kodp);
  fSprFormul.CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
  fSprFormul.CEH_NormZ.MacroByName('USL').AsString:=USLf;
  fSprFormul.CEH_NormZ.Open
 end;
 FSprFormul.CEH_NORMZ.First;
 if FSprFormul.CEH_NORMZ.Locate('ksm_id_mat;razdel_id',VarArrayOf([texGurKsm_id.AsInteger,texGurRazdel_id.AsInteger]),[]) then
  FSprFormul.CEH_NORMZ.Edit
 ELSE
 BEGIN
  FSprFormul.CEH_NORMZ.Insert;
  FSprFormul.CEH_NORMZKsm_id_PR.AsInteger:=S_KODP;
  FSprFormul.CEH_NORMZKsm_id_mat.AsInteger:=texGurKsm_id.AsInteger;
  FSprFormul.CEH_NORMZRazdel_id.AsInteger:=texGurRazdel_id.AsInteger;
 END;

 FSprFormul.CEH_NORMZ.Post;
 FSprFormul.CEH_NORMZ.ApplyUpdates;
 TEXGUR.Edit;

 vFormula:=TfrParser.Create;
 try
   vFormula.OnGetValue:=MyGetValue;
   s_kol:=strtofloat(vFormula.Calc(TexGurFormula.Asstring));
  TexGurKol_Rash_ediz.asFloat:=SimpleRoundTo(s_kol,Tochn);
 finally
  vFormula.Free;
 end;
end;

procedure TFTexGur.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePage = tabsheet1) then
  BEGIN
    ToolButton1.Visible := true;
    ToolButton2.Visible := true;
    ToolButton6.Visible := true;
    ToolButton3.Visible := true;
    btn_vipuskList.Visible := true;
  //  ToolButton9.Visible:=true;
    USL_SORT := '7,9';
  end
  else
  begin
    ToolButton1.Visible := false;
    ToolButton2.Visible := false;
    ToolButton3.Visible := false;
    ToolButton6.Visible := true;
    btn_vipuskList.Visible := false;
    ZagSyr.Close;
    ZagSyr.ParamByName('struk').AsInteger := vStruk_id;
  //  ZagSyr.ParamByName('ksm_id').AsInteger:=TexGurKsm_id.AsInteger;
    ZagSyr.MacroByName('SORT').AsString := 'razdel.KRAZ';
    ZagSyr.MacroByName('DAT1').AsString := '''' + s_dat1_period + '''';
    ZagSyr.MacroByName('DAT2').AsString := '''' + s_dat2_period + '''';
    ZagSyr.Open;
  end;
end;

procedure TFTexGur.FormShow(Sender: TObject);
var
  i : integer;
begin
  if (FSprFormul = nil) then
    FSprFormul := TfSprFormul.Create(Application);
  if (TexGur.Active) then
    TexGur.Active := false;
  SpinEdit3.Value := mes;
  SpinEdit4.Value := god;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1_period := '01.' + S_MES + '.' + INTTOSTR(GOD);
  S_DAT2_period := datetostr(IncMonth(strtodate(s_dat1_period), 1) -1);
  PageControl1.ActivePage := tabsheet1;
  USL_SORT := '7,9';
  usl_dat := ' SERIA.Date_ZAG between ' + '''' + s_dat1_period + '''' + ' and '
             + '''' + s_dat2_period + '''';
  IF (DM1.ConfigUMC.Active) THEN
    DM1.ConfigUMC.close;
  DM1.ConfigUMC.MacroByName('USL').AsString := 'configumc.STRUK_ID = ' + IntToStr(vSTRUK_ID);
  DM1.ConfigUMC.Open;
  if (MES = DM1.ConfigUMCMES.AsInteger) and (GOD = DM1.ConfigUMCGOD.AsInteger) then
  begin
//      Label5.Caption:='(Текущий месяц)';
    MODE := 0;
    ToolButton1.Enabled := True;
    ToolButton2.Enabled := True;
    ToolButton3.Enabled := True;
    ToolButton9.Enabled := True;
  end
  else
    if ((MES = DM1.ConfigUMCMES.AsInteger - 1) and (GOD = DM1.ConfigUMCGOD.AsInteger))
       or ((GOD = DM1.ConfigUMCGOD.AsInteger - 1) and (MES = 12) and (DM1.ConfigUMCMES.AsInteger = 1))then
    begin
  //     Label5.Caption:='(Прошлый месяц)';
      MODE := 1;
      ToolButton1.Enabled := True;
      ToolButton2.Enabled := True;
      ToolButton3.Enabled := True;
      ToolButton9.Enabled := True;
    end
    else
    begin
  //      Label5.Caption:='(Только просмотр)';
      MODE := 2;
      ToolButton1.Enabled := False;
      ToolButton2.Enabled := false;
      ToolButton3.Enabled := false;
      ToolButton9.Enabled := false;
    end;
  DM1.ConfigUMC.close;
  if (s_kodp <> 0) then
  begin
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID, SPPROD.NMAT, SPPROD.KOD_PROD, '
                         + 'SPPROD.KEI_ID, SPPROD.KSM_ID, SPPROD.SPROD_ID, '
                         + 'SPPROD.VOL_ov, SPPROD.VOLumf,');
    DM1.IBQuery1.SQL.Add('SPPROD.GOST, EDIZ.NEIS, SPPROD.KORG, SPPROD.XARKT, '
                         + 'SPPROD.ACTIVP, SPRORG.NAM, SPPROD.LEK_ID, SPFORMV.NAMEFv, region.nam nam_reg');
    DM1.IBQuery1.SQL.Add(' FROM SPPROD');
    DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
    DM1.IBQuery1.SQL.Add(' WHERE SPPROD.Ksm_id=' + inttostr(s_kodp)
                         + ' AND SPPROD.STRUK_ID=' + INTTOSTR(vStruk_Id));
    DM1.IBQuery1.Active := True;
    if (not dm1.IBQuery1.Eof) then
    begin
      EDIT1.OnChange := nil;
      edit1.text := DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
      EDIT1.OnChange := Edit1Change;
//  edit17.text:=floattostr(DM1.IBQuery1.FieldByName('vol_ov').Asfloat);
      s_kodp := DM1.IBQuery1.FieldByName('KSM_ID').value;
      s_gost := DM1.IBQuery1.FieldByName('GOST').AsString;
      s_xarkt := DM1.IBQuery1.FieldByName('XARKT').AsString;
      s_nmat := DM1.IBQuery1.FieldByName('NMAT').AsString;
      s_kei := DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
      s_korg := DM1.IBQuery1.FieldByName('KORG').VALUE;
      s_kodProd := DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
      s_Lek_id := DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
      s_namorg := DM1.IBQuery1.FieldByName('NAM').AsString;
      s_neiz := DM1.IBQuery1.FieldByName('NEIS').AsString;
      s_Formv := DM1.IBQuery1.FieldByName('NAMEFV').AsString;
      s_Sprod_id := DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
      s_namREG := DM1.IBQuery1.FieldByName('NAM_ReG').AsString;
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT *');
      DM1.IBQuery1.SQL.Add(' FROM UTPLAN');
      DM1.IBQuery1.SQL.Add(' WHERE UTPLAN.MES=' + inttostr(mes)
                           + ' AND UTPLAN.GOD=' + inttostr(god)
                           + ' AND UTPLAN.SPROD_ID=' + inttostr(s_sprod_id));
      DM1.IBQuery1.Active := True;
      if (not dm1.IBQuery1.Eof) then
      begin
        Label26.Caption := floattostr(DM1.IBQuery1.FieldByName('PLAN').AsFloat);
        s_plan := DM1.IBQuery1.FieldByName('PLAN').AsFloat;
      end
      else
      begin
        Label26.Caption := '0';
        s_plan := 0;
      end;
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT kartv.kol_prih');
      DM1.IBQuery1.SQL.Add(' FROM KARTV ');
      DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTV.DOC_ID = DOCUMENT.DOC_ID)');
      DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                           + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                           + ' AND KARTV.KSM_ID=' + INTTOSTR(s_KODP)
                           + ' AND Document.Date_op between ' + '''' + s_dat1_period
                           + '''' + ' and ' + '''' + s_dat2_period + '''');
      DM1.IBQuery1.Active := True;
      if (not dm1.IBQuery1.Eof) then
      begin
        Label34.Caption := floattostr(DM1.IBQuery1.FieldByName('kol_prih').AsFloat);
        s_OPLan := DM1.IBQuery1.FieldByName('kol_prih').AsFloat;
      end
      else
      begin
        Label34.Caption := '0';
        s_Oplan := 0;
      end;
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT SUM(kart.kol_prih) SDANO');
      DM1.IBQuery1.SQL.Add(' FROM KART ');
      DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)');
      DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.KLIENT_ID=' + INTTOSTR(VsTRUK_ID)
                           + ' AND DOCUMENT.TIP_OP_ID=2' + ' AND KART.KSM_ID='
                           + INTTOSTR(s_KODP) + ' AND Document.Date_op between '
                           + '''' + s_dat1_period + '''' + ' and ' + '''' + s_dat2_period + '''');
      DM1.IBQuery1.Active := True;
      if (not dm1.IBQuery1.Eof) then
      begin
    //     Label36.Caption:=floattostr(DM1.IBQuery1.FieldByName('SDANO').AsFloat);
        s_SDANO := DM1.IBQuery1.FieldByName('SDANO').AsFloat;
      end
      else
      begin
    //     Label36.Caption:='0';
        s_SDANO := 0;
      end;
      label19.caption := s_NMAT;
      label28.caption := Inttostr(s_KORG);
      label29.caption := s_namorg;
      label21.caption := s_Neiz;
      label22.caption := s_GOST;
      label11.caption := s_Xarkt;
      label45.caption := s_Formv;
      label3.caption := s_namREG;
    end
    else
    begin
      Label3.Caption := '';
      label19.Caption := '';
      label3.Caption := '';
      label11.Caption := '';
      label29.Caption := '';
      label21.Caption := '';
      label22.Caption := '';
      label26.Caption := '';
      label34.Caption := '';
  //   label36.Caption:='';
      label28.Caption := '';
      label45.Caption := '';
      DateEdit1.Date := date;
      Edit1.Text := '';
  //   Edit17.Text:='';
    end;
  end
  else
  begin
    Label3.Caption := '';
    label19.Caption := '';
    label3.Caption := '';
    label11.Caption := '';
    label29.Caption := '';
    label21.Caption := '';
    label22.Caption := '';
    label26.Caption := '';
    label34.Caption := '';
    //  label36.Caption:='';
    label28.Caption := '';
    label45.Caption := '';
    DateEdit1.Date := date;
    Edit1.Text := '';
//  Edit17.Text:='';
  end;
  Edit2.Text := '';
  Edit9.Text := '';
  pr_button9 := true;
  prov := false;
  Edit1.SetFocus;

  drLoad := TDrugLoad.Create(DM1.BELMED);
//  drLoad := TDrugLoad.Create(dm1.BELMED.DatabaseName,
//                             dm1.BELMED.Params.Values['user_name'],
//                             dm1.BELMED.Params.Values['password'],
//                             dm1.BELMED.Params.Values['sql_role_name']);
end;

procedure TFTexGur.DBGridEh3SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
 Usl_Sort := '';
 for i := 0 to DBGridEh3.SortMarkedColumns.Count-1 do
 BEGIN
  if DBGridEh3.SortMarkedColumns[i].Title.SortMarker = smUpEh then
   Usl_Sort := inttostr(i+1) + '"'+ ' DESC , '
{  begin
    if (DBGridEh3.SortMarkedColumns[i].FieldName='KSM_ID') then
    Usl_Sort := USL_Sort+ 'NORM."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
   else
    if DBGridEh3.SortMarkedColumns[i].FieldName='KRAZ' then
     Usl_Sort := USL_Sort+ 'RAZDEL."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
    ELSE
     Usl_Sort := USL_Sort + 'MATROP."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
  end }
  else
   Usl_Sort := inttostr(i+1) + '"'+ ', '
{  begin
   if (DBGridEh3.SortMarkedColumns[i].FieldName='KSM_ID') then
    Usl_Sort := USL_Sort+ 'NORM."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', '
   else
    if (DBGridEh3.SortMarkedColumns[i].FieldName='KRAZ') then
     Usl_Sort := USL_Sort+ 'RAZDEL."'+ DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', '
    else
     Usl_Sort := Usl_Sort + 'MATROP."'+DBGridEh3.SortMarkedColumns[i].FieldName + '"'+ ', ';
  end; }
 END;
 if Usl_Sort <> '' then
 begin
  Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
  IF MODE<2 THEN
   TexGurSost
  ELSE
  BEGIN
   if (edit9.Text<>'') and (edit9.Text<>'0') then s_vip:=strtofloat(edit9.Text) else s_vip:=0;
   TexGur.Close;
   TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
   TexGur.ParamByName('KODP').AsInteger:=S_KODP;
   TexGur.ParamByName('mes').AsInteger:=mes;
   TexGur.ParamByName('god').AsInteger:=god;
   TexGur.MacroByName('SORT').AsString:=USL_SORT;
   TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
   TexGur.ParamByName('doc').AsInteger:=vDocument_id;
   TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
   TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
   TexGur.Open;
  END;
 end;
end;

procedure TFTexGur.DBGridEh4SortMarkingChanged(Sender: TObject);
var
  i : Integer;
begin
  Usl_Sort := '';
  for i := 0 to DBGridEh4.SortMarkedColumns.Count - 1 do
  BEGIN
    if (DBGridEh4.SortMarkedColumns[i].Title.SortMarker = smUpEh) then
    begin
      if (DBGridEh4.SortMarkedColumns[i].FieldName = 'KRAZ') then
        Usl_Sort := USL_Sort + 'razdel."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ' DESC , '
      else
        if (DBGridEh4.SortMarkedColumns[i].FieldName = 'KSM_ID') then
          Usl_Sort := USL_Sort + 'kart."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ' DESC , '
        ELSE
          if (DBGridEh4.SortMarkedColumns[i].FieldName = 'NDOK') then
            Usl_Sort := USL_Sort + 'document."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ' DESC , '
          ELSE
            if (DBGridEh4.SortMarkedColumns[i].FieldName = 'DATE_TIME_UPDATE') then
              Usl_Sort := USL_Sort + 'kart."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ' DESC , '
            ELSE
              Usl_Sort := USL_Sort + '"' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ' DESC , ';
    end
    else
    begin
      if (DBGridEh4.SortMarkedColumns[i].FieldName = 'KRAZ') then
        Usl_Sort := USL_Sort + 'razdel."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ', '
      else
        if (DBGridEh4.SortMarkedColumns[i].FieldName = 'KSM_ID') then
          Usl_Sort := USL_Sort + 'kart."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"   '// + ' DESC , '
        ELSE
          if (DBGridEh4.SortMarkedColumns[i].FieldName = 'NDOK') then
            Usl_Sort := USL_Sort + 'document."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"   '// + ' DESC , '
          else
            if (DBGridEh4.SortMarkedColumns[i].FieldName = 'DATE_TIME_UPDATE') then
              Usl_Sort := USL_Sort + 'kart."' + DBGridEh4.SortMarkedColumns[i].FieldName + '"   '// + ' DESC , '
            else
              Usl_Sort := Usl_Sort + '"' + DBGridEh4.SortMarkedColumns[i].FieldName + '"' + ', ';
    end;
  END;
  if (Usl_Sort <> '') then
  begin
    Usl_Sort := Copy(Usl_Sort, 1, Length(Usl_Sort) - 2);
    ZagSyr.Close;
//    ZagSyr.ParamByName('Ksm_Id').AsInteger := TexGurKsm_id.AsInteger;
    ZagSyr.ParamByName('Struk').AsInteger := vStruk_id;
    ZagSyr.MacroByName('SORT').AsString := Usl_Sort;
    ZagSyr.MacroByName('DAT1').AsString := '''' + s_dat1_period + '''';
    ZagSyr.MacroByName('DAT2').AsString := '''' + s_dat2_period + '''';
    ZagSyr.Open;
  end;
end;

procedure TFTexGur.DateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
    if (DateEdit1.text <> '' )and (DateEdit1.text <= s_dat2_period)  then
    begin
      IF (MODE < 2) THEN
        TexGurSost
      ElSE
      BEGIN
        if (edit9.Text <> '') and (edit9.Text <> '0') then
          s_vip := strtofloat(edit9.Text)
        else
          s_vip := 0;
        TexGur.Close;
        TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
        TexGur.ParamByName('mes').AsInteger:=mes;
        TexGur.ParamByName('god').AsInteger:=god;
        TexGur.ParamByName('KODP').AsInteger:=S_KODP;
        TexGur.MacroByName('SORT').AsString:=USL_SORT;
        TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
        TexGur.ParamByName('doc').AsInteger:=vDocument_id;
        TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
        TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
        TexGur.Open;
      END;
    end
end;

procedure TFTexGur.Edit2Click(Sender: TObject);
begin
 edit2.text:='';
 edit9.text:='';
 TexGur.Close;
end;

procedure TFTexGur.ToolButton2Click(Sender: TObject);
begin
if MessageDlg('Удалять запись? ',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
begin
 try
 begin
  TexGur.Delete;
 end;
 except
  On E: Exception do
  begin
   MessageDlg('Произошла ошибка при удалении записи!'+E.Message, mtWarning, [mbOK], 0);
   Abort;
  end;
 end;
end;

end;

procedure TFTexGur.ToolButton1Click(Sender: TObject);

begin
 s_seria_p:=s_seria;
 TexGur.APPEND;
 TexGurStroka_id.AsInteger:=vStroka_id;
 TexGurKodp.AsInteger:=s_kodp;
 TexGurDate_op.AsDateTime:=strtodate(dateEdit1.Text);
 TexGurDoc_id.AsInteger:=vDocument_id;
// TexGurMes.AsInteger:=mes;
// TexGurGod.AsInteger:=God;
 TexGurTip_op_id.AsInteger:=33;
 DBGridEh3.SetFocus;
 s_seria:=s_seria_p;
end;

procedure TFTexGur.DBGridEh3EditButtonClick(Sender: TObject);
var
  nm : integer;
begin
  nm := 0;
  if dbgrideh3.SelectedField.FieldName='NEIS' then nm:=1;
  if dbgrideh3.SelectedField.FieldName='KSM_ID' then nm:=2;
  if dbgrideh3.SelectedField.FieldName='KRAZ' then nm:=3;
  //DM1.Kart.Edit;
  TexGur.Edit;
  case nm of
  1: begin
      if FEdiz=nil then FEdiz:=TFEdiz.Create(Application);
      FEdiz.ShowModal;
      if FEdiz.ModalResult > 50 then
      begin
       s_kei:=FEdiz.ModalResult-50;
       TexGurKein.AsInteger:=DM1.EdizKei_id.AsInteger;
       TexGurNeis.AsString:=DM1.EdizNeis.AsString;
      end;
     end;
  2: begin
      if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
      FindMatrop.DataBaseName:=dm1.BELMED;
      FindMatrop.ReadOnly:=true;
      FindMatrop.ShowModal;
      if FindMatrop.ModalResult > 50 then
      begin
       TexGur.FieldByName('Ksm_Id').AsInteger :=FindMatrop.ModalResult-50;
       TexGur.FieldByName('Gost').AsString :=FindMatrop.IBMatropGOST.AsString;
       TexGur.FieldByName('Nmat').AsString :=FindMatrop.IBMatropNMAT.AsString;
       TexGur.FieldByName('Kei_Id').AsInteger :=FindMatrop.IBMatropKei_id.AsInteger;
       TexGur.FieldByName('Xarkt').AsString :=FindMatrop.IBMatropXARKT.AsString;
      end;
     end;
  3: begin
      if FRazdel=nil then FRazdel:=TFRazdel.Create(Application);
      FRazdel.ShowModal;
      if FRazdel.ModalResult>50 then
      begin
       TexGurRazdel_id.AsInteger:=FRazdel.ModalResult-50;
       TexGurKraz.AsInteger:=s_Razdel;
      end;
     end;
  end;
end;

procedure TFTexGur.TexGurKSM_IDValidate(Sender: TField);
begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=TexGur.FieldByName('Ksm_Id').AsInteger;
  dM1.Matrop.Active:=TRUE;
  if not dm1.Matrop.eof then
  begin
   TexGur.FieldByName('Gost').AsString :=dm1.MatropGOST.AsString;
   TexGur.FieldByName('Nmat').AsString :=dm1.Matrop.FieldByName('Nmat').AsString;;
   TexGur.FieldByName('Kei_Id').AsInteger :=dm1.Matrop.FieldByName('Kei_id').AsInteger;;
   TexGur.FieldByName('Xarkt').AsString :=dm1.Matrop.FieldByName('Xarkt').AsString;
  end
  else
   showMessage('Нет такого кода! Воспользуйтесь справочником!');

end;

procedure TFTexGur.frReport2GetValue(const ParName: String;
  var ParValue: Variant);
begin
 if ParName='Kod_prod' then ParValue:=FTexGur.Edit1.Text;
 if ParName='gost' then ParValue:=FTexGur.Label22.Caption;
 if ParName='xarkt' then ParValue:=FTexGur.Label11.Caption;
 if ParName='namorg' then ParValue:=FTexGur.Label29.Caption;
 if ParName='namcex' then ParValue:=FGlMenu.RxLabel1.Caption;
 if ParName='nmat' then ParValue:=FTexGur.Label19.Caption;
 if ParName='neis' then ParValue:=FTexGur.Label21.Caption;
 if ParName='seria' then ParValue:=FTexGur.Edit2.Text;
 if ParName='dat_ser' then ParValue:=FTexGur.DateEdit1.Text;


end;

procedure TFTexGur.ToolButton5Click(Sender: TObject);
begin
 dm1.PechTexGur.EmptyTable;
 s_kodprod:=edit1.Text;
 s_gost:=label22.Caption;
 s_nmat:=label19.Caption;
 s_neiz:=label21.Caption;
 s_xarkt:=label11.Caption;
 s_namorg:=label29.Caption;
 s_namreg:=label3.Caption;
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT ost.kart_id, seria.seria_id,seria.seria,seria.date_zag,seria.ob_zag, document.ndok, NORM.KODP, NORM.KSM_ID, NORM.KRAZ, NORM.MES, NORM.GOD, NORM.NAZPRPF, NORM.PLNORM,NORM.KEI_ID KEIN,');
 DM1.IBQuery1.SQL.Add('MATROP.NMAT,MATROP.XARKT,MATROP.GOST, MATROP.KEI_ID,EDIZ.NEIS,razdel.razdel_id,razdel.kodraz,razdel.namraz,ceh_normz.formula,');
 DM1.IBQuery1.SQL.Add('document.tip_op_id,KART.kol_rash_ediz,document.date_op, CEH_NORMZ.KOEF1, CEH_NORMZ. KOEF2, CEH_NORMZ. KOEF3, CEH_NORMZ. PROC,CEH_NORMZ.NORMZ_ID,document.doc_id,ostatki.ot_s,ostatki.ot_nz');
 DM1.IBQuery1.SQL.Add(' FROM KART');
 DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.doc_ID =DOCUMENT.DOC_ID)');
 DM1.IBQuery1.SQL.Add(' inner JOIN OSTATKI ON (KART.KART_ID =OSTATKI. KART_ID)');
 DM1.IBQuery1.SQL.Add(' inner JOIN MATROP ON (KART.KSM_ID = MATROP.KSM_ID)');
 DM1.IBQuery1.SQL.Add(' inner JOIN RAZDEL ON (KART.RAZDEL_ID =RAZDEL.RAZDEL_ID)');
 DM1.IBQuery1.SQL.Add(' left join norm_view (119,'+inttostr(god)+','+inttostr(mes)+','+inttostr(s_KODP)+','+inttostr(vstruk_id));
 DM1.IBQuery1.SQL.Add(',0) norm on (ostatki.ksm_idpr=norm.kodp and ostatki.ksm_id=norm.ksm_id and ostatki.razdel_id=norm.razdel_id)');
 DM1.IBQuery1.SQL.Add(' left JOIN ceh_normz ON ((NORM.kodp = ceh_normz.ksm_id_pr) AND (norm.ksm_id=ceh_normz.ksm_id_mat) AND (razdel.razdel_id=ceh_normz.razdel_id))');
 DM1.IBQuery1.SQL.Add(' LEFT JOIN EDIZ ON (norm.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add(' INNER join seria on (substr(document.ndok,11,9)=seria.seria and seria.ksm_id=norm.kodp)');
 DM1.IBQuery1.SQL.Add(' left join ostatki ost on (seria.seria_id=ost.seria_id and norm.kodp=ost.ksm_id)');
 DM1.IBQuery1.SQL.Add(' WHERE  ost.STRUK_ID='+inttostr(vStruk_id));
 DM1.IBQuery1.SQL.Add(' and ostatki.ksm_idpr='+inttostr(s_kodp));
 DM1.IBQuery1.SQL.Add(' and document.doc_id ='+inttostr(vDocument_id));
 DM1.IBQuery1.SQL.Add(' and kart.kol_rash_ediz<>0');
 DM1.IBQuery1.SQL.Add(' Order by document.doc_id,razdel.razdel_id');
 DM1.IBQuery1.Open;
 if not DM1.IBQuery1.Eof then
 begin
  dm1.PechTexGur.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
  dm1.PechTexGur.Active:=true;
  If not dm1.PechTexGur.Eof then
  PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
 end;
end;

procedure TFTexGur.ToolButton6Click(Sender: TObject);
begin
//FOstSyr.DBText1.DataSource:=FTexGur.DSTexGur;
//FOstSyr.DBText2.DataSource:=FTexGur.DSTexGur;
//FOstSyr.DBText3.DataSource:=FTexGur.DSTexGur;
 S_ksm:=TexGurKsm_id.AsInteger;
 FOstSyr.Edit1.text:=inttostr(TexGurKsm_id.AsInteger);
 FOstSyr.Label7.Caption:=TexGurNmat.AsString;
 FOstSyr.label8.Caption:=TexGurNeis.AsString;
 FOstSyr.DateEdit3.Date:=strtodate(s_dat1);
 FOstSyr.DateEdit4.Date:=strtodate(s_dat2);
if FOstSyr=nil then FOstSyr:=TFOstSyr.Create(Application);
  FOstSyr.ShowModal;
end;

procedure TFTexGur.ToolButton8Click(Sender: TObject);
begin
 if  not dm1.Seria.Eof then
 begin

 end
 else
 begin
  DM1.Seria.Active :=False;
  DM1.Seria.ParamByName('ksm_id').AsInteger:=s_kodp;
  DM1.Seria.MacroByName('usl').AsString:=' 0=0';
  dm1.Seria.Active:=true;
  if  not dm1.Seria.Eof then
  begin
   if FSer=nil then FSer:=TFSer.Create(Application);
   FSer.ShowModal;
   if FSer.ModalResult > 50 then
   begin
    vSeria_id:=FSer.ModalResult-50;
   end;
  end;
end;
end;

procedure TFTexGur.SpeedButton1Click(Sender: TObject);
var
  usl_dat_s : string;
begin
  usl_dat_s := usl_dat;
  usl_dat := ' (seria.date_vipusk between ''' + s_dat1 + ''' and ''' + s_dat2 + ''' '
             + ' or seria.date_pasport between ''' + s_dat1 + ''' and ''' + s_dat2 + ''' '
             + ' or seria.date_zag between ''' + s_dat1 + ''' and ''' + s_dat2 + ''') ';
  DM1.Seria.Active := False;
  DM1.Seria.ParamByName('ksm_id').AsInteger := s_kodp;
  DM1.Seria.MacroByName('usl').AsString := usl_dat;
  dm1.Seria.Active:=true;
  if (not dm1.Seria.Eof) then
  begin
    dm1.Seria.Last;
    if (FSer = nil) then
      FSer := TFSer.Create(Application);
    DM1.FormToObject(FSER, Edit2, 0, 0);
    FSer.ShowModal;
    if (FSer.ModalResult > 50) then
    begin
      edit9.text := '';
      TexGur.Close;
      vSeria_id := FSer.ModalResult - 50;
      s_seria := DM1.SeriaSeria.AsString;
      s_kol_seria := DM1.SeriaKol_Seria.AsFloat;
//   EDIT9.OnChange:=nil;
      edit9.Text := floattostr(s_kol_seria);
//   EDIT9.OnChange:=Edit9Change;
      Edit2.Text := s_Seria;
      if (dm1.SeriaDATE_ZAG.AsVariant <> null) then
      begin
        DateEdit1.Date := dm1.SeriaDATE_ZAG.AsDateTime;
//     DateEdit1.ReadOnly:=true;
        TexGur.Close;
        TexGurSost;
        TexGur.First;
      end
      else
      begin
        DateEdit1.ReadOnly := false;
        DateEdit1.SetFocus;
      end;
    end;
  end
  else
  begin
    DM1.Seria.Active := False;
    DM1.Seria.ParamByName('ksm_id').AsInteger := s_kodp;
    DM1.Seria.MacroByName('usl').AsString := ' 0=0';
    dm1.Seria.Active := true;
    dm1.Seria.Last;
    if (not dm1.Seria.Eof) then
    begin
      if (FSer = nil) then
        FSer := TFSer.Create(Application);
      FSer.ShowModal;
      if (FSer.ModalResult > 50) then
      begin
        vSeria_id := FSer.ModalResult - 50;
        s_seria := DM1.SeriaSeria.AsString;
        s_kol_seria := DM1.SeriaKol_Seria.AsFloat;
//    EDIT9.OnChange:=nil;
        edit9.Text := floattostr(s_kol_seria);
//    EDIT9.OnChange:=Edit9Change;
        Edit2.Text := s_Seria;
        if (dm1.SeriaDATE_ZAG.AsVariant <> null) then
        begin
          DateEdit1.Date := dm1.SeriaDATE_ZAG.AsDateTime;
//     DateEdit1.ReadOnly:=true;
          TexGur.Close;
          TexGurSost;
          TexGur.First;
        end
        else
        begin
          DateEdit1.ReadOnly := false;
          DateEdit1.SetFocus;
        end;
      end;
    end
    else
    begin
      MessageDlg('Нет серии заданного препарата!', mtWarning, [mbOK], 0);
      vseria_id := 0;
    end;
  end;
  usl_dat := usl_dat_s;
end;

procedure TFTexGur.SpeedButton2Click(Sender: TObject);
begin
if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
 FindSpprod.DataBaseName:=dm1.BELMED;
 FindSpprod.ReadOnly:=true;
 FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
 FindSpprod.ShowModal;
 if FindSpprod.ModalResult > 50 then
 begin
  StartWait;
  fSprFormul.CEH_NormZ.Active:=FALSE;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,SPPROD.SPROD_ID,spprod.volumf,spprod.vol_ov,SPPROD.VOLumf,');
  DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,SPPROD.LEK_ID,SPFORMV.NAMEFv,region.nam nam_reg');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)');
  DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.reg = region.reg)');
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KSM_ID='+INTTOSTR(FindSpprod.ModalResult-50));
  DM1.IBQuery1.Active := True;
  EDIT1.OnChange:=nil;
  edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
  EDIT1.OnChange:=Edit1Change;
  edit9.text:='';
  s_namreg := dm1.IBQuery1.FieldByName('Nam_reg').AsString;
  label3.Caption:=dm1.IBQuery1.FieldByName('Nam_reg').AsString;
//  edit17.text:=floattostr(DM1.IBQuery1.FieldByName('vol_ov').Asfloat);
  s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
  s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
  s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
  s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
  s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
  s_korg:=DM1.IBQuery1.FieldByName('KORG').VALUE;
  s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
  s_Lek_id:=DM1.IBQuery1.FieldByName('Lek_Id').VALUE;
  s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
  s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
  s_Formv:=DM1.IBQuery1.FieldByName('NAMEFV').AsString;
  s_Sprod_id:=DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
  IF fSprFormul.CEH_NormZ.Active THEN fSprFormul.CEH_NormZ.Active:=false;
  SORTf:=' ORDER BY CEH_NORMZ.RAZDEL_ID,CEH_NORMZ.KSM_ID_MAT ';
  USLf:=' Where CEH_NORMZ.KSM_ID_PR='+INTTOSTR(s_kodp);
  fSprFormul.CEH_NormZ.MacroByName('SORT').AsString:=SORTf;
  fSprFormul.CEH_NormZ.MacroByName('USL').AsString:=USLf;
  fSprFormul.CEH_NormZ.Open;
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT *');
  DM1.IBQuery1.SQL.Add(' FROM UTPLAN');
  DM1.IBQuery1.SQL.Add(' WHERE UTPLAN.MES='+inttostr(mes)+' AND UTPLAN.GOD='+inttostr(god)+' AND UTPLAN.SPROD_ID='+inttostr(s_sprod_id));
  DM1.IBQuery1.Active := True;
  if not dm1.IBQuery1.Eof then
  begin
   Label26.Caption:=floattostr(DM1.IBQuery1.FieldByName('PLAN').AsFloat);
   s_plan:=DM1.IBQuery1.FieldByName('PLAN').AsFloat;
  end
  else
  begin
   Label26.Caption:='0';
   s_plan:=0;
  end;
  DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT kartv.kol_prih');
    DM1.IBQuery1.SQL.Add(' FROM KARTV ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTV.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
    + ' AND KARTV.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
     Label34.Caption:=floattostr(DM1.IBQuery1.FieldByName('kol_prih').AsFloat);
     s_OPLan:=DM1.IBQuery1.FieldByName('kol_prih').AsFloat;
     end
    else
    begin
     Label34.Caption:='0';
     s_Oplan:=0;
    end;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SUM(kart.kol_prih) SDANO');
    DM1.IBQuery1.SQL.Add(' FROM KART ');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.KLIENT_ID='+INTTOSTR(VsTRUK_ID)
    + ' AND DOCUMENT.TIP_OP_ID=2' + ' AND KART.KSM_ID='+INTTOSTR(s_KODP)
    + ' AND Document.Date_op between '+''''+s_dat1_period+'''' +' and '+''''+s_dat2_period+'''');
    DM1.IBQuery1.Active := True;
    if not dm1.IBQuery1.Eof then
     begin
//     Label36.Caption:=floattostr(DM1.IBQuery1.FieldByName('SDANO').AsFloat);
     s_SDANO:=DM1.IBQuery1.FieldByName('SDANO').AsFloat;
     end
    else
    begin
//     Label36.Caption:='0';
     s_SDANO:=0;
    end;
  label19.caption:=s_NMAT;
  Label28.caption:=Inttostr(s_KORG);
  label29.caption:=s_namorg;
  label21.caption:=s_Neiz;
  label22.caption:=s_GOST;
  label11.caption:=s_Xarkt;
  label45.caption:=s_Formv;
 end;
 StopWait;
end;

procedure TFTexGur.SpeedButton3Click(Sender: TObject);
begin
  if (DateEdit1.text <> '' )and (DateEdit1.text <= s_dat2_period)  then
    begin
      IF (MODE < 2) THEN
        TexGurSost
      ElSE
      BEGIN
        if (edit9.Text <> '') and (edit9.Text <> '0') then
          s_vip := strtofloat(edit9.Text)
        else
          s_vip := 0;
        TexGur.Close;
        TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
        TexGur.ParamByName('mes').AsInteger:=mes;
        TexGur.ParamByName('god').AsInteger:=god;
        TexGur.ParamByName('KODP').AsInteger:=S_KODP;
        TexGur.MacroByName('SORT').AsString:=USL_SORT;
        TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
        TexGur.ParamByName('doc').AsInteger:=vDocument_id;
        TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
        TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
        TexGur.Open;
      END;
    end
end;

procedure TFTexGur.Edit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin

 end;
end;

procedure TFTexGur.Edit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{ if key=vk_return then
 BEGIN
  if CEH_MARSH.Active=false then
  begin
   CEH_MARSH.ParamByName('Kodp').AsInteger:=S_KODP;
   CEH_MARSH.ParamByName('seria').AsInteger:=vseria_id;
   CEH_MARSH.Active:=TRUE;
  end;
  ceh_marsh.First;
  if (edit17.Text<>'') and (edit17.Text<>'0')then
  begin
   v_11:=0;
   While not ceh_marsh.Eof  do
   begin
    if (DBedit7.Text='') then DBedit7.Text:='1';
    if (DBedit8.Text='') then DBedit8.Text:='1';
    if (DBedit11.Text='') then DBedit11.Text:='1';
    if (edit13.Text='') then edit13.Text:='1';
    if (edit16.Text='') then edit16.Text:='1';
    if (edit17.Text='') then edit17.Text:='1';
    v_11:=v_11+SimpleRoundTo(SimpleRoundTo((strtofloat(DBedit7.Text)*strtofloat(DBedit8.Text)/100)*(100-strtofloat(DBedit11.Text))/100,-3)
    *strtofloat(edit13.Text)/strtofloat(edit17.Text),-2);
    ceh_marsh.Next;
   end;
   ceh_marsh.First;
   edit11.Text:=floattostr(v_11);
   edit10.Text:=floattostr(SimpleRoundTo(v_11*(100-strtofloat(edit16.Text))/100,-2));
  end;
 END; }
END;

procedure TFTexGur.TexGurKRAZValidate(Sender: TField);
begin
 dM1.Razdel.Active:=true;
 if dM1.Razdel.Locate('kraz',texGurKraz.AsInteger,[]) then
  TexGurRazdel_id.AsInteger:=dM1.RazdelRazdel_id.AsInteger
 else
   showMessage('Нет такого кода! Воспользуйтесь справочником!');

end;

procedure TFTexGur.TexGurBeforeDelete(DataSet: TDataSet);
begin
  if (texGurStroka_id.AsVariant = null) then
    s_del := 0
  else
    s_del := texGurStroka_id.AsInteger;
end;

procedure TFTexGur.TexGurBeforePost(DataSet: TDataSet);
var
  seria_ids : integer;
begin
  If (TexGurRazdel_id.AsInteger = 0) then
  begin
    MessageDlg('Введите раздел!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If (TexGur.FieldByName('ksm_id').AsInteger = 0) then
  begin
    MessageDlg('Введите код сырья!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If (TexGur.FieldByName('kein').AsInteger = 0) then
  begin
    MessageDlg('Введите единицу измерения!', mtWarning, [mbOK], 0);
    Abort;
  end;
  v_razdel := TexGurRazdel_id.AsInteger;
  s_kei := TexGur.FieldByName('kei_id').AsInteger;
  v_keiN := TexGur.FieldByName('kein').AsInteger;
  s_ksm := TexGur.FieldByName('ksm_id').AsInteger;
  v_raspred := TexGurKol_Rash_ediz.AsFloat*dm1.Koef_per(s_kei,v_keiN,s_ksm);
  v_prix_period := TexGurKol_Prih.AsFloat;
  seria_ids := vSeria_id;
  vseria_id := 0;
  if (TexGurKart_id.AsVariant = null) or (TexGurKart_id.AsVariant = 0) then
  begin
    v_dok_kart := SelectToVarIB('select Ostatki.kart_id   FROM Ostatki '
                                + 'WHERE Ostatki.STRUK_ID=' + INTTOSTR(VsTRUK_ID)
                                + ' AND ostatki.ksm_id=' + inttostr(s_Ksm)
                                + ' AND Ostatki.razdel_id=' + inttostr(v_razdel)
                                + ' AND Ostatki.Ksm_idpr=' + INTTOSTR(S_KODP),
                                dm1.belmed, dm1.ibt_read);
    If (v_dok_kart = Null) then
    begin
      IF (DM1.Ostatki.Active = FALSE) THEN
        DM1.Ostatki.Active := TRUE;
      DM1.Ostatki.Insert;
      DM1.Ostatki.Post;
      dm1.Ostatki.ApplyUpdates;
      TexGurKart_id.AsInteger := vKART_ID;
    end
    else
      TexGurKart_id.AsInteger := v_dok_kart;
  end;
  vseria_id := Seria_ids;
end;

procedure TFTexGur.Seria_sBeforeInsert(DataSet: TDataSet);
begin
  DM1.AddSeria.ExecProc;
  vSERIA_IDs := DM1.AddSeria.Params.Items[0].AsInteger;
end;

procedure TFTexGur.Seria_sNewRecord(DataSet: TDataSet);
begin
  Seria_sSERIA_ID.AsInteger := vSeria_Ids;
  Seria_sKSM_ID.AsInteger := S_KSMs;
  Seria_sSERIA.AsString := s_SERIAs;
end;

procedure TFTexGur.SpinEdit3Change(Sender: TObject);
begin
  mes := SpinEdit3.Value;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1_period := '01.' + S_MES + '.' + copy(INTTOSTR(GOD), 3, 2);
  S_DAT2_period := datetostr(IncMonth(strtodate(s_dat1_period), 1) - 1);
  S_DAT1 := '01.' + S_MES + '.' + copy(INTTOSTR(GOD), 3, 2);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1_period), 1) -1);
  IF (DM1.ConfigUMC.Active) THEN
    DM1.ConfigUMC.close;
  DM1.ConfigUMC.MacroByName('USL').AsString := 'configumc.STRUK_ID = ' + IntToStr(vSTRUK_ID);
  DM1.ConfigUMC.Open;
  if (MES = DM1.ConfigUMCMES.AsInteger) and (GOD = DM1.ConfigUMCGOD.AsInteger) then
  begin
//      Label5.Caption:='(Текущий месяц)';
    MODE := 0;
    ToolButton1.Enabled := True;
    ToolButton2.Enabled := True;
    ToolButton3.Enabled := True;
    ToolButton9.Enabled := True;
  end
  else
    if ((MES = DM1.ConfigUMCMES.AsInteger - 1)
        and (GOD = DM1.ConfigUMCGOD.AsInteger))
       or ((GOD = DM1.ConfigUMCGOD.AsInteger - 1) and (MES = 12)
           and (DM1.ConfigUMCMES.AsInteger = 1))then
    begin
  //     Label5.Caption:='(Прошлый месяц)';
      MODE := 1;
      ToolButton1.Enabled := True;
      ToolButton2.Enabled := True;
      ToolButton3.Enabled := True;
      ToolButton9.Enabled := True;
    end
    else
    begin
  //      Label5.Caption:='(Только просмотр)';
      MODE := 2;
      ToolButton1.Enabled := False;
      ToolButton2.Enabled := false;
      ToolButton3.Enabled := false;
      ToolButton9.Enabled := false;
    end;
    if (Edit1.Text <> '') then
    BEGIN
      IF (MODE < 2) THEN
        TexGurSost
    ELSE
    BEGIN
      if (edit9.Text <> '') and (edit9.Text <> '0') then
        s_vip := strtofloat(edit9.Text)
      else
        s_vip := 0;
      TexGur.Close;
      TexGur.ParamByName('Struk').AsInteger := vStruk_id;
      TexGur.ParamByName('mes').AsInteger := mes;
      TexGur.ParamByName('god').AsInteger := god;
      TexGur.ParamByName('KODP').AsInteger := S_KODP;
      TexGur.MacroByName('SORT').AsString := USL_SORT;
      TexGur.MacroByName('pl').AsString := replacestr(floattostrf(s_vip, ffGeneral, 6, 15), ',', '.');
      TexGur.ParamByName('doc').AsInteger := vDocument_id;
      TexGur.MacroByName('dat1').AsString := '''' + S_DAT1_Period + '''';
      TexGur.MacroByName('dat2').AsString := '''' + s_dat2_Period + '''';
      TexGur.Open;
     END;
  END;
  PageControl1Change(sender);
end;

procedure TFTexGur.SpinEdit4Change(Sender: TObject);
begin
god:=SpinEdit4.Value;
IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1_period:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2_period:=datetostr(IncMonth(strtodate(s_dat1_period),1)-1);
  S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1_period),1)-1);
  IF DM1.ConfigUMC.Active THEN DM1.ConfigUMC.close;
 DM1.ConfigUMC.MacroByName('USL').AsString:='configumc.STRUK_ID = '+IntToStr(vSTRUK_ID);
 DM1.ConfigUMC.Open;
 if (MES=DM1.ConfigUMCMES.AsInteger) and (GOD=DM1.ConfigUMCGOD.AsInteger) then
 begin
//      Label5.Caption:='(Текущий месяц)';
   MODE:=0;
   ToolButton1.Enabled:=True;
   ToolButton2.Enabled:=True;
   ToolButton3.Enabled:=True;
   ToolButton9.Enabled:=True;
 end
 else
  if ((MES=DM1.ConfigUMCMES.AsInteger-1) and (GOD=DM1.ConfigUMCGOD.AsInteger)) or ((GOD=DM1.ConfigUMCGOD.AsInteger-1) and (MES=12) and (DM1.ConfigUMCMES.AsInteger=1))then
  begin
//     Label5.Caption:='(Прошлый месяц)';
    MODE:=1;
    ToolButton1.Enabled:=True;
    ToolButton2.Enabled:=True;
    ToolButton3.Enabled:=True;
    ToolButton9.Enabled:=True;
  end
  else
  begin
//      Label5.Caption:='(Только просмотр)';
    MODE:=2;
    ToolButton1.Enabled:=False;
    ToolButton2.Enabled:=false;
    ToolButton3.Enabled:=false;
    ToolButton9.Enabled:=false;
  end;
 if Edit1.Text<>'' then
  BEGIN
    IF MODE<2 THEN
      TexGurSost
     ELSE
     BEGIN
      if (edit9.Text<>'') and (edit9.Text<>'0') then s_vip:=strtofloat(edit9.Text) else s_vip:=0;
      TexGur.Close;
      TexGur.ParamByName('Struk').AsInteger:=vStruk_id;
      TexGur.ParamByName('mes').AsInteger:=mes;
      TexGur.ParamByName('god').AsInteger:=god;
      TexGur.ParamByName('KODP').AsInteger:=S_KODP;
      TexGur.MacroByName('SORT').AsString:=USL_SORT;
      TexGur.MacroByName('pl').AsString:=replacestr(floattostrf(s_vip,ffGeneral,6,15),',','.');
      TexGur.ParamByName('doc').AsInteger:=vDocument_id;
      TexGur.MacroByName('dat1').AsString:=''''+S_DAT1_Period+'''';
      TexGur.MacroByName('dat2').AsString:=''''+s_dat2_Period+'''';
      TexGur.Open;
     END;
  END;
end;

procedure TFTexGur.TexGurNewRecord(DataSet: TDataSet);
begin
  IF (TexGurkOL_PRIH.AsVariant = NULL) THEN
    TexGurkOL_PRIH.AsFloat := 0;
  IF (TexGurkOL_PRIH_EDIZ.AsVariant = NULL) THEN
    TexGurkOL_PRIH_EDIZ.AsFloat := 0;
end;

procedure TFTexGur.ToolButton4Click(Sender: TObject);
begin
  ksm_ov := 0;
  if (FAnalit1 = nil) then
    FAnalit1 := TFAnalit1.Create(Application);
  FAnalit1.ShowModal;
end;

ENd.
