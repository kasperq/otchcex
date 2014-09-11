unit Vipusk_Seria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, IBQuery, RxIBQuery,
  Grids, DBGridEh, Placemnt, ImgList, DBCtrls, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, ToolWin, RxStrUtils, Spin, VCLUtils, UtilRIB, SplshWnd;

type
  TFVipusk_Seria = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton6: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    ImageList1: TImageList;
    DBGridEh1: TDBGridEh;
    Kart_Vipusk_SERIA: TRxIBQuery;
    IBUpdateKart_Vipusk_SERIA: TIBUpdateSQLW;
    DSKart_Vipusk_SERIA: TDataSource;
    Kart_Vipusk_SERIADOC_ID: TIntegerField;
    Kart_Vipusk_SERIAKSM_ID: TIntegerField;
    Kart_Vipusk_SERIASTROKA_ID: TIntegerField;
    Kart_Vipusk_SERIAKOL_PRIH: TFMTBCDField;
    Kart_Vipusk_SERIAKART_ID: TIntegerField;
    Kart_Vipusk_SERIASERIA: TIBStringField;
    Kart_Vipusk_SERIASERIA_ID: TIntegerField;
    Kart_Vipusk_SERIADATE_VIPUSK: TDateField;
    Label1: TLabel;
    Kart_Vipusk_SERIAVIB: TIntegerField;
    Kart_Vipusk_SERIANDOK: TIBStringField;
    Kart_Vipusk_SERIAUPAK_TRANS: TIBStringField;
    Kart_Vipusk_SERIANOMU_ID_TRANS: TSmallintField;
    Kart_Vipusk_SERIAVOL_TRANS: TFMTBCDField;
    Kart_Vipusk_SERIAVES_UPAK: TIBBCDField;
    Kart_Vipusk_SERIAVES_TRANS: TIBBCDField;
    Kart_Vipusk_SERIAKOL_TRANS: TFloatField;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    SpeedButton1: TSpeedButton;
    Kart_Vipusk_SERIADDOC_ID: TIntegerField;
    Button1: TButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure Prosmotr_seria;
    procedure PostSeria;
    procedure PostOstatki;


    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Kart_Vipusk_SERIABeforePost(DataSet: TDataSet);
    procedure Kart_Vipusk_SERIABeforeInsert(DataSet: TDataSet);
    procedure Kart_Vipusk_SERIANewRecord(DataSet: TDataSet);
    procedure ToolButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Kart_Vipusk_SERIASERIAValidate(Sender: TField);
    procedure Kart_Vipusk_SERIABeforeDelete(DataSet: TDataSet);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVipusk_Seria: TFVipusk_Seria;
  ActiveForm: TForm;

implementation
 uses dm, Find_Spprod, Got_prod, Ser, UPAK, DocP, DM1Ost;
{$R *.dfm}

procedure TFVipusk_Seria.Prosmotr_seria;
begin
  if Edit1.Text = '' then
    abort;
  StartWait;
  vNDoc := 'Вып_' + inttostr(mes) + '_' + inttostr(god);
  vTip_Op_Id := 36;
  vKlient_id := s_kodp;
  vDate_dok := strtodate(s_dat1);
  vDate_op := strtodate(s_dat1);
  dm1.Document.active := false;
  dm1.Document.MacroByName('usl').AsString := ' where document.struk_id = '
                                              + inttostr(vstruk_id)
                                              + ' and document.tip_op_id = 36'
                                              + ' and document.klient_id = '
                                              + inttostr(vKlient_id)
                                              + ' and document.ndok = ' + ''''
                                              + vNdoc + ''''
                                              + ' and document.date_op between '
                                              + '''' + s_dat1 + '''' + ' and '
                                              + '''' + s_dat2 + '''';
  dm1.Document.active := true;
  if (dm1.DocumentDOC_ID.AsInteger = Null)
      or (dm1.DocumentDOC_ID.AsInteger = 0) then
  begin
    dm1.Document.Insert;
    dm1.Document.Post;
    dm1.Document.ApplyUpdates;
    if not dm1.IBT_Write.Active then
      dm1.IBT_Write.StartTransaction;
    dm1.IBT_Write.CommitRetaining;
  end;
  Kart_Vipusk_seria.Active := false;
  Kart_Vipusk_seria.ParamByName('doc').AsInteger := dm1.DocumentDOC_ID.AsInteger;
  Kart_Vipusk_seria.ParamByName('strk').AsInteger := vstruk_id;
  Kart_Vipusk_seria.ParamByName('dat1').AsDate := strtodate(s_dat1);
  Kart_Vipusk_seria.ParamByName('dat2').AsDate := strtodate(s_dat2);
  Kart_Vipusk_seria.Active := true;
  Kart_Vipusk_seria.First;

  dm1.Seria.Active := false;
  dm1.Seria.ParamByName('Ksm_id').AsInteger := s_kodp;
  dm1.Seria.Active := true;

  dm1.Ostatki.Active := false;
  dm1.Ostatki.ParamByName('struk_ID').AsInteger := vstruk_id;
  dm1.Ostatki.MacroByName('usl').AsString := '  AND OST.KSM_ID=' + INTTOSTR(s_kodp);
  dm1.Ostatki.Active := true;
  StopWait;
end;

procedure TFVipusk_Seria.PostSeria;
begin
  if Kart_Vipusk_SERIASERIA.AsString <> '' then
  begin
    dm1.Seria.Active := false;
    dm1.Seria.ParamByName('KSM_ID').AsInteger := s_kodp;
    dm1.Seria.Active := true;
    dm1.Seria.First;
    if dm1.Seria.Locate('seria', KART_VIPUSK_seriaSERIA.AsString, []) then
    begin
      dm1.Seria.Edit;
      dm1.SeriaDate_vipusk.AsDateTime := Kart_Vipusk_seriaDate_vipusk.AsDateTime;
      vseria_id := dm1.SeriaSeria_id.AsInteger;
      dm1.Seria.Post;
    end
    else
    begin
      s_ksm := KART_VIPUSK_seriaKSM_ID.AsInteger;
      s_seria := KART_VIPUSK_seriaSERIA.AsString;
      dm1.Seria.Insert;
      dm1.SeriaDate_vipusk.AsDateTime := Kart_Vipusk_seriaDate_vipusk.AsDateTime;
      dm1.Seria.Post;
    end;
  end;
  dm1.Seria.ApplyUpdates;
end;

procedure TFVipusk_Seria.PostOstatki;
var
  pr_ost : short;
begin
  pr_ost := 0;
  dm1.Ostatki.First;
  if Kart_Vipusk_seriaKart_id.AsInteger = 0 then
  begin
    if (DM1.Ostatki.Locate('ksm_ID;seria_id;nomu_id_trans', VarArrayOf([Kart_Vipusk_seriaKsm_id.AsInteger,
                                                                        vSeria_id,
                                                                        KART_VIPUSK_seriaNomu_id_trans.AsInteger]),
                            [])) then
      pr_ost := 1
  end
  else
  begin
    if DM1.Ostatki.Locate('kart_ID', Kart_Vipusk_seriaKart_id.AsInteger, []) then
      pr_ost := 1;
  end;
  if pr_ost <> 1 then
  begin
    s_ksm := s_kodp;
    v_razdel := 0;
    s_kodp := 0;
    dm1.Ostatki.Insert;
    dm1.OstatkiNomu_id_trans.AsInteger := Kart_Vipusk_seriaNOMU_id_Trans.AsInteger;
    dm1.OstatkiVol_Trans.AsString := Kart_Vipusk_seriaVol_Trans.AsString;
    s_kodp := s_ksm;
    Kart_Vipusk_seriaKart_id.AsInteger := vKart_id;
  end
  else
  begin
    Kart_Vipusk_seriaKart_id.AsInteger := dm1.OstatkiKart_id.AsInteger;
    dm1.Ostatki.Edit;
    dm1.OstatkiNomu_id_trans.AsInteger := Kart_Vipusk_seriaNOMU_id_Trans.AsInteger;
    dm1.OstatkiVol_Trans.AsString := Kart_Vipusk_seriaVol_Trans.AsString;
    dm1.OstatkiSERIA_ID.AsInteger := Kart_Vipusk_SERIASERIA_ID.AsInteger;
  end;
  DM1.Ostatki.Post;  
  DM1.Ostatki.ApplyUpdates;
  dm1.IBT_Write.CommitRetaining;
  dm1.Ostatki.Active := false;
  dm1.Ostatki.Active := true;
end;

procedure TFVipusk_Seria.SpeedButton1Click(Sender: TObject);
begin
  Prosmotr_seria;
end;

procedure TFVipusk_Seria.SpeedButton2Click(Sender: TObject);
begin
  if FindSpprod = nil then
    FindSpprod := TfindSpprod.Create(Application);
  FindSpprod.DataBaseName := dm1.BELMED;
  FindSpprod.ReadOnly := true;
  FindSpprod.Usl_Struk := 'spprod.struk_id = ' + inttostr(vStruk_id);
  FindSpprod.ShowModal;
  if FindSpprod.ModalResult > 50 then
  begin
    EDIT1.OnChange := nil;
    edit1.text := FindSpprod.IBSpprodKod_Prod.Asstring;
    EDIT1.OnChange := Edit1Change;
    s_kodp := FindSpprod.ModalResult - 50;
    s_gost := FindSpprod.IBSpprodGOST.AsString;
    s_xarkt := FindSpprod.IBSpprodXARKT.AsString;
    s_nmat := FindSpprod.IBSpprodNMAT.AsString;
    s_kei := FindSpprod.IBSpprodKEI_ID.VALUE;
    s_korg := FindSpprod.IBSpprodKORG.VALUE;
    s_kodProd := FindSpprod.IBSpprodKOD_PROD.AsString;
    s_namorg := FindSpprod.IBSpprodNAME_ORG.AsString;
    s_neiz := FindSpprod.IBSpprodNEIS.AsString;
    s_Sprod_id := FindSpprod.IBSpprodSprod_Id.AsInteger;
    label10.caption := s_NMAT;
    label16.caption := Inttostr(s_KORG);
    Label6.Caption := FindSpprod.IBSpprodNAME_REG.AsString;
    if label16.caption = '0' then
      label16.caption := '';
    label12.caption := s_namorg;
    label13.caption := s_Neiz;
    label14.caption := s_GOST;
    label11.caption := s_Xarkt;
    Prosmotr_seria;
  end;
end;

procedure TFVipusk_Seria.Button1Click(Sender: TObject);
begin
  DMOst.Show;
end;

procedure TFVipusk_Seria.ComboBox1Change(Sender: TObject);
begin
  god := ComboBox2.ItemIndex + 2000;
  mes := ComboBox1.ItemIndex + 1;
  IF MES < 10 THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1 := '01.' + S_MES + '.' + INTTOSTR(GOD);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1),1)-1);
end;

procedure TFVipusk_Seria.ComboBox2Change(Sender: TObject);
begin
 god:=ComboBox2.ItemIndex+2000;
 mes:=ComboBox1.ItemIndex+1;
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
end;

procedure TFVipusk_Seria.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if dbgrideh1.SelectedField.FieldName = 'SERIA' then
  BEGIN
    if  not dm1.Seria.Eof then
    begin
//   if Kart_Vipusk_seriaKart_id.AsInteger=0 then
//   begin
      if FSer = nil then
        FSer := TFSer.Create(Application);
      pr_ser := 0;
      FSer.Position := poDesigned;
      FSer.Top := Mouse.CursorPos.Y;
      FSer.Left := Mouse.CursorPos.X - 100;
      FSer.ShowModal;
      if FSer.ModalResult > 50 then
      begin
//        Kart_Vipusk_SERIASERIA.OnValidate := nil;
        Kart_Vipusk_seria.Edit;
        Kart_Vipusk_seriaSeria_id.AsInteger := FSer.ModalResult - 50;
        Kart_Vipusk_SeriaSeria.AsString := DM1.SeriaSeria.AsString;
//    Kart_Vipusk_SeriaKol_prih.AsFloat:=dm1.SeriaKol_seria.AsFloat;
//     Kart_Vipusk_SeriaDATE_VIPUSK.AsDateTime:=dm1.SeriaDATE_VIPUSK.AsDateTime;
//    Kart_Vipusk_seriaKart_id.AsInteger:=0;
        Kart_Vipusk_SERIASERIA.OnValidate := Kart_Vipusk_SERIASERIAValidate;
      end;
//   end;
    end
    else
    begin
      MessageDlg('Нет серии заданного препарата!', mtWarning, [mbOK], 0);
//   vseria_id:=0;
    end;
  END;
  if dbgrideh1.SelectedField.FieldName = 'UPAK_TRANS' then
  BEGIN
    if FUPAK = nil then
      FUPAK := TFUPAK.Create(Application);
    FUPAK.Position := poDesigned;
    FUPAK.Top := Mouse.CursorPos.Y;
    FUPAK.Left := Mouse.CursorPos.X - 200;
    FUPAK.ShowModal;
    if FUPAK.ModalResult > 50 then
    begin
      Kart_Vipusk_seria.Edit;
      Kart_Vipusk_seriaNOMU_id_Trans.AsInteger := FUPAK.ModalResult - 50;
      Kart_Vipusk_seriaUPAK_Trans.AsString := DM1.UpakName_upak.AsString;
      Kart_Vipusk_seria.FieldByName('VOL_TRANS').AsString := FUPAK.DBGridEH1.DataSource.DataSet.FieldByName('VOL_UP').AsString;
      Kart_Vipusk_seria.FieldByName('Ves_upak').AsFloat := FUPAK.DBGridEH1.DataSource.DataSet.FieldByName('Ves_UPak').AsFloat;
    end;
  end;
end;

procedure TFVipusk_Seria.Edit1Change(Sender: TObject);
begin
  if (edit1.text <> '') then
  begin
    skod := replacestr(edit1.text, ',', '.') + '%';
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID, SPPROD.NMAT, SPPROD.KOD_PROD, '
                         + 'SPPROD.KEI_ID, SPPROD.KSM_ID, SPPROD.SPROD_ID,');
    DM1.IBQuery1.SQL.Add('SPPROD.GOST, EDIZ.NEIS, SPPROD.KORG, SPPROD.XARKT,'
                         + 'SPPROD.ACTIVP, SPRORG.NAM, SPPROD.LEK_ID, region.nam namreg');
    DM1.IBQuery1.SQL.Add(' FROM SPPROD');
    DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
    DM1.IBQuery1.SQL.Add('  LEFT JOIN region ON (SPPROD.ReG = region.reg)');
    DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like ' + '''' + skod + ''''
                         + ' AND SPPROD.STRUK_ID = ' + INTTOSTR(vStruk_Id));
    DM1.IBQuery1.Active := True;
    if (not dm1.IBQuery1.Eof) then
    begin
      Label10.Caption := DM1.IBQuery1.FieldByName('kod_PROD').Asstring
                         + DM1.IBQuery1.FieldByName('nmat').AsString;
      Label11.Caption := DM1.IBQuery1.FieldByName('Xarkt').AsString;
      Label6.Caption := DM1.IBQuery1.FieldByName('namreg').AsString;
      Label13.Caption := DM1.IBQuery1.FieldByName('neis').AsString;
      s_kei := DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
    end
    else
    begin
      Label10.Caption := '';
      Label11.Caption := '';
      Label6.Caption := '';
      Label13.Caption := '';
    end;
  end;
end;

procedure TFVipusk_Seria.Edit1Click(Sender: TObject);
begin
 Edit1.Text:='';
end;

procedure TFVipusk_Seria.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if (edit1.text <> '') and (not dm1.IBQuery1.Eof)  then
    begin
      EDIT1.OnChange := nil;
      edit1.text := DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
      EDIT1.OnChange := Edit1Change;
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
      s_Sprod_id := DM1.IBQuery1.FieldByName('Sprod_Id').VALUE;
      label10.caption := s_NMAT;
      label16.caption := Inttostr(s_KORG);
      s_namreg := DM1.IBQuery1.FieldByName('NAMreg').AsString;
      if label16.caption = '0' then
        label16.caption := '';
      label12.caption := s_namorg;
      label13.caption := s_Neiz;
      label14.caption := s_GOST;
      label11.caption := s_Xarkt;
      label6.caption := DM1.IBQuery1.FieldByName('NAMreg').AsString;
      Prosmotr_seria;
    end;
  end;
end;

procedure TFVipusk_Seria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not dm1.IBT_Read.Active then
    dm1.IBT_Read.Active := true;
  if not dm1.IBT_Write.Active then
    dm1.IBT_Write.Active := true;
  if Kart_Vipusk_SERIA.Active then
    kart_vipusk_seria.Active := false;
  if dm1.Document.Active then  
    dm1.Document.Active := false;
  if dm1.Seria.Active then  
    dm1.Seria.Active := false;
  dm1.IBT_Read.RollbackRetaining;
  dm1.IBT_Write.RollbackRetaining;
end;

procedure TFVipusk_Seria.FormCreate(Sender: TObject);
begin
  s_kodProd := '';
end;

procedure TFVipusk_Seria.FormShow(Sender: TObject);
begin
  Edit1.Text := '';
  ComboBox2.OnChange := nil;
  ComboBox1.OnChange := nil;
  ComboBox1.ItemIndex := mes - 1;
  ComboBox2.ItemIndex := god - 2000;
  ComboBox2.OnChange := ComboBox2Change;
  ComboBox1.OnChange := ComboBox1Change;
  IF MES < 10 THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1 := '01.' + S_MES + '.' + INTTOSTR(GOD);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1),1) - 1);
  label10.Caption := '';
  label11.Caption := '';
  label13.Caption := '';
  label14.Caption := '';
  label16.Caption := '';
  label12.Caption := '';
  Label6.Caption := '';
  vTip_Op_Id := 36;
  vTip_Doc_Id := 90;
  kart_vipusk_seria.Active := false;
  if not dm1.sklad.Active then  
    dm1.Sklad.Active := true;
end;

procedure TFVipusk_Seria.Kart_Vipusk_SERIABeforeDelete(DataSet: TDataSet);
begin
  if kart_vipusk_seriaNdok.AsString <> '' then
  begin
    MessageDlg('Невозможно удалить серию, т.к.на основе ее имеются '
               + 'накладные на сдачу продукции на склад. Сначала удалите '
               + 'из накладных!!', mtWarning, [mbOK], 0);
    abort;
  end;
end;

procedure TFVipusk_Seria.Kart_Vipusk_SERIABeforeInsert(DataSet: TDataSet);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_KART';
  DM1.Add_KartDok.ExecProc;
  vStroka_Id := DM1.Add_KartDok.Params.Items[0].AsInteger;
end;

procedure TFVipusk_Seria.Kart_Vipusk_SERIABeforePost(DataSet: TDataSet);
begin
  If KART_VIPUSK_seriaNomu_id_trans.AsInteger = 0 then
  begin
    MessageDlg('Введите вид тары!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If datetostr(Kart_Vipusk_seriaDate_vipusk.AsDateTime) = '' then
  begin
    MessageDlg('Введите дату выпуска!', mtWarning, [mbOK], 0);
    Abort;
  end;
  If Kart_Vipusk_seriaKol_Prih.asfloat = 0 then
  begin
    MessageDlg('Введите количество выпуска!', mtWarning, [mbOK], 0);
    Abort;
  end;

  Kart_Vipusk_seriaKsm_id.AsInteger := s_kodp;
  Kart_Vipusk_seriaDoc_id.AsInteger := dm1.DocumentDOC_ID.AsInteger;
  PostSeria;
  Kart_Vipusk_seriaSeria_id.AsInteger := vSeria_id;
  PostOstatki;
end;

procedure TFVipusk_Seria.Kart_Vipusk_SERIANewRecord(DataSet: TDataSet);
begin
  Kart_Vipusk_seriaStroka_id.AsInteger := vStroka_id;
  Kart_Vipusk_seriaVib.AsInteger := 0;
end;

procedure TFVipusk_Seria.Kart_Vipusk_SERIASERIAValidate(Sender: TField);
begin
  dm1.Seria.First;
  if dm1.Seria.Locate('seria', KART_VIPUSK_seriaSERIA.AsInteger, []) then
  begin
    Kart_Vipusk_SeriaSeria_id.AsInteger := DM1.SeriaSeria_id.AsInteger;
    if not (dm1.SeriaDATE_VIPUSK.AsVariant = null) then
      Kart_Vipusk_SeriaDATE_VIPUSK.AsDateTime := dm1.SeriaDATE_VIPUSK.AsDateTime;
  end;
end;

procedure TFVipusk_Seria.ToolButton1Click(Sender: TObject);
begin
  If (Kart_Vipusk_seria.Modified)
      or (Kart_Vipusk_seria.State = dsEdit)
      or (Kart_Vipusk_seria.State = dsInsert) then
  begin
    if MessageDlg('Сохранить изменения?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Kart_Vipusk_seria.Post;
//   Kart_Vipusk_seria.ApplyUpdates;
      if not dm1.IBT_Read.Active then
        dm1.IBT_Read.StartTransaction;
      if not dm1.IBT_WRITE.Active then
        dm1.IBT_WRITE.StartTransaction;
      try
        if Kart_Vipusk_seria.UpdatesPending then
          Kart_Vipusk_seria.ApplyUpdates;
        if DM1.Seria.UpdatesPending then
          DM1.Seria.ApplyUpdates;
        if DM1.Document.UpdatesPending then
          DM1.Document.ApplyUpdates;
        if DM1.Ostatki.UpdatesPending then
          DM1.Ostatki.ApplyUpdates;
        DM1.IBT_WRITE.CommitRetaining;
        DM1.IBT_READ.CommitRetaining;
      except
        On E: Exception do
        begin
          MessageDlg('Произошла ошибка при записи данных!' + E.Message,
                      mtWarning, [mbOK], 0);
          DM1.IBT_WRITE.RollbackRetaining;
        end;
      end;

//   Kart_Vipusk_seria.Post;
//   Kart_Vipusk_seria.ApplyUpdates;
//   DM1.ApplyUpdatesDoc;
    end;
  end;
  label10.Caption := '';
  label13.Caption := '';
  label11.Caption := '';
  label14.Caption := '';
  label12.Caption := '';
  label16.Caption := '';
  label6.Caption := '';
  Edit1.Text := '';
  s_kodp := 0;
  kart_vipusk_seria.Active := false;
  dm1.Document.Active := false;
  dm1.Seria.Active := false;
end;

procedure TFVipusk_Seria.ToolButton3Click(Sender: TObject);
begin
  Splash := ShowSplashWindow(AniBmp1,
                'Сохранение данных. Подождите, пожалуйста...', True, nil);
  try
    if (Kart_Vipusk_seria.Modified)
        or (Kart_Vipusk_seria.State = dsEdit)
        or (Kart_Vipusk_seria.State = dsInsert) then
      Kart_Vipusk_seria.Post;
    if not dm1.IBT_Read.Active then
      dm1.IBT_Read.StartTransaction;
    if not dm1.IBT_WRITE.Active then
      dm1.IBT_WRITE.StartTransaction;
    Kart_Vipusk_seria.ApplyUpdates;
    dm1.Seria.ApplyUpdates;
    if DM1.Document.UpdatesPending then
       DM1.Document.ApplyUpdates;
    DM1.IBT_WRITE.CommitRetaining;
    DM1.IBT_READ.CommitRetaining;
  except
    On E: Exception do
    begin
      MessageDlg('Произошла ошибка при записи данных!' + E.Message, mtWarning, [mbOK], 0);
      DM1.IBT_WRITE.RollbackRetaining;
      Splash.Free;
    end;
  end;
  Splash.Free;
  MessageDlg('Данные записаны.', mtInformation,[mbOk], 0);
  Kart_Vipusk_SERIA.Active := false;
  Kart_Vipusk_SERIA.Active := true;
end;

procedure TFVipusk_Seria.ToolButton4Click(Sender: TObject);
begin
//  dm1.Document.Close;
//  dm1.Seria.Close;
//  dm1.Ostatki.Close;
  if kart_vipusk_seria.Active then
  begin
    kart_vipusk_seria.BeforePost := nil;
    kart_vipusk_seria.First;
    if (Edit1.Text <> '')
        and (kart_vipusk_seria.Locate('vib', 1, []))  then
    begin
      if Kart_Vipusk_SERIADDOC_ID.AsInteger = 0 then
      begin
        if MessageDlg('Формировать накладную на выпуск готовой продукции? ',
                      mtConfirmation,
                      [mbYes,mbNo],
                      0) = mrYes then
        begin
          dm1.Document.Active := false;;
          dm1.Seria.Active := false;;
          dm1.Ostatki.Active := false;
          if FDocP = nil then
            FDocP := TFDocP.Create(Application);
          FDocP.ShowModal;
          if FDocP.ModalResult = 666 then
          begin
            if FGot_prod = nil then
              FGot_prod := TFGot_prod.Create(Application);
            FGot_prod.ShowModal;
          end;
        end;
  //      else
  //      begin
  //        if FGot_prod = nil then
  //          FGot_prod := TFGot_prod.Create(Application);
  //        FGot_prod.ShowModal;
  //      end;
      end
      else
        ShowMessage('По данной серии уже есть накладная на сдачу готовой продукции. '
                    + 'Для формирования новой накладной или изменения старой '
                    + 'зайдите в накладную через список накладных, удалите накладную'
                    + ' и сформируйте ее заново или обратитесь к программисту.');

    end
    else
    begin
      vNdoc := '';
//      s_kodProd := '';
      if FGot_prod = nil then
        FGot_prod := TFGot_prod.Create(Application);
      FGot_prod.ShowModal;
      Edit1.Text := s_kodProd;
    end;
    kart_vipusk_seria.BeforePost:=kart_vipusk_seriaBeforePost;
  end
  else
  begin
    s_kodProd := '';
    if FGot_prod = nil then
      FGot_prod := TFGot_prod.Create(Application);
    FGot_prod.ShowModal;
    Edit1.Text := s_kodProd;
  end;
  Prosmotr_seria;
  kart_vipusk_seria.BeforePost := kart_vipusk_seriaBeforePost;
end;

procedure TFVipusk_Seria.ToolButton6Click(Sender: TObject);
begin
  if MessageDlg('Удалять документ? ', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    if not kart_vipusk_seria.Eof then
    begin
      while not kart_vipusk_seria.Eof do
      begin
        if kart_vipusk_seriaNdok.AsString <> '' then
        begin
          MessageDlg('Невозможно удалить документ,т.к.на основе него имеются '
                     + 'накладные на сдачу продукции на склад.Сначала удалите '
                     + 'накладные!!', mtWarning, [mbOK], 0);
          abort;
        end;
        kart_vipusk_seria.Next;
      end;
      try
        kart_Vipusk_seria.First;
        while not kart_Vipusk_seria.Eof do
          kart_Vipusk_seria.Delete;
        Kart_Vipusk_seria.ApplyUpdates;
        dm1.Document.First;
        if  dm1.Document.Locate('doc_id', vdocument_id, []) then
        begin
          DM1.Document.BeforeDelete := nil;
          dm1.Document.Delete;
          dm1.Document.BeforeDelete := dm1.DocumentBeforeDelete;
        end;
        DM1.ApplyUpdatesDoc;
        label10.Caption := '';
        label13.Caption := '';
        label11.Caption := '';
        label14.Caption := '';
        label12.Caption := '';
        label16.Caption := '';
        label6.Caption := '';
        Prosmotr_seria;
      except
        On E: Exception do
        begin
          MessageDlg('Произошла ошибка при удалении записи!'+E.Message, mtWarning, [mbOK], 0);
          Abort;
        end;
      end;
    end;
  end;
end;

end.
