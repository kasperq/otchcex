unit Vipusk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, RxIBQuery, DB, IBQuery,
  Buttons, Grids, DBGridEh, ImgList, StdCtrls, ComCtrls, ToolWin, Spin,
  RxMemDS, FR_DSet, FR_DBSet, FR_Class, ExtCtrls, kbmMemTable,
  OtdelDropDown;

type
  TFVipusk = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ImageList1: TImageList;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Label1: TLabel;
    Label2: TLabel;
    DSPlvipusk: TDataSource;
    Label4: TLabel;
    Label3: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    PlVipusk: TRxMemoryData;
    PlVipuskGOD: TIntegerField;
    PlVipuskMES: TIntegerField;
    PlVipuskKSM_ID: TIntegerField;
    PlVipuskNMAT: TStringField;
    PlVipuskXARKT: TStringField;
    PlVipuskKOD_PROD: TStringField;
    PlVipuskSTRUK_ID: TIntegerField;
    PlVipuskKEI_ID: TIntegerField;
    PlVipuskvib: TBooleanField;
    PlVipuskNam_Reg: TStringField;
    PlVipuskvipNg: TFloatField;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    PlVipuskkol: TFloatField;
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    mem_factVipusk: TkbmMemTable;
    ds_mem_factVipusk: TDataSource;
    mem_factVipuskDOC_ID: TIntegerField;
    mem_factVipuskSTROKA_ID: TIntegerField;
    mem_factVipuskKSM_ID: TIntegerField;
    mem_factVipuskKLIENT_ID: TIntegerField;
    mem_factVipuskSPPRN: TSmallintField;
    mem_factVipuskSPVIS: TSmallintField;
    mem_factVipuskKEI_ID: TSmallintField;
    mem_factVipuskKOL_PRIH: TFloatField;
    mem_factVipuskKOD_PROD: TStringField;
    mem_factVipuskNEIS: TStringField;
    mem_factVipuskNMAT: TStringField;
    mem_factVipuskXARKT: TStringField;
    mem_factVipuskNAM_REG: TStringField;
    mem_factVipuskVIPNG: TFloatField;
    mem_factVipuskVIPKV: TFloatField;
    mem_factVipuskGOST: TStringField;
    q_document: TRxIBQuery;
    upd_q_document: TIBUpdateSQLW;
    upd_q_kartv: TIBUpdateSQLW;
    q_kartv: TRxIBQuery;
    q_documentTIP_DOK_ID: TSmallintField;
    q_documentNDOK: TIBStringField;
    q_documentDOC_ID: TIntegerField;
    q_documentDATE_OP: TDateField;
    q_documentDATE_DOK: TDateField;
    q_documentKLIENT_ID: TIntegerField;
    q_documentTIP_OP_ID: TSmallintField;
    q_documentDATE_VVOD: TDateTimeField;
    q_documentSTRUK_ID: TSmallintField;
    q_documentZADACHA_ID: TIBStringField;
    q_kartvDOC_ID: TIntegerField;
    q_kartvSTROKA_ID: TIntegerField;
    q_kartvKSM_ID: TIntegerField;
    q_kartvKOL_PRIH: TFMTBCDField;
    q_documentKLIENT_STNAME: TIBStringField;
    mem_factVipuskOTDELID: TIntegerField;
    mem_factVipuskOTDEL: TStringField;
    mem_factVipuskOTDEL_DOC_ID: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SostVipusk;
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure DBGridEh2SortMarkingChanged(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGridEh2Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    otdelViborForm : TFOtdelDropDown;
    procedure openDocument(strukId, otdelId : integer; dat1, dat2 : TDate);
    procedure openKartv(docId, ksmId : integer);
    procedure insertDocument(tipOpId, strukId, tipDocId, klientId : integer;
                             nDoc : string; dateDok : TDate);
    procedure insertKartv;
    procedure deleteKartv(docId, ksmId : integer);
    procedure saveOtdel;
    procedure loadKartvRecord;
    procedure loadVipuskKartv;

  public
    { Public declarations }
  end;

var
  FVipusk: TFVipusk;
  vxod: boolean;
  mes_vib: integer;
  god_vib: integer;
  S_DATN:string;
implementation

uses dm, Find_Spprod, GlMenu;
{$R *.dfm}

procedure TFVipusk.SostVipusk;
begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  case (RadioGroup1.ItemIndex) of
    0 : begin
          DM1.IBQuery1.SQL.Add('SELECT UTPLAN.GOD, UTPLAN.MES, UTPLAN.kol, SPPROD.KSM_ID, SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD, SPPROD.STRUK_ID,SPPROD.KEI_ID,region.nam nam_reg');
          DM1.IBQuery1.SQL.Add(' FROM plan_pr UTPLAN');
          DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (UTPLAN.SPROD_ID = SPPROD.SPROD_ID)');
          DM1.IBQuery1.SQL.Add(' LEFT JOIN region ON (SPPROD.reg = region.reg)');
          DM1.IBQuery1.SQL.Add(' WHERE UTPLAN.GOD=' + INTTOSTR(GOD) + ' AND UTPLAN.MES=' + INTTOSTR(MES));
          DM1.IBQuery1.SQL.Add(' AND SPPROD.STRUK_ID=' + INTTOSTR(vStruk_Id));
          DM1.IBQuery1.SQL.Add(' AND UTPLAN.kol<>0 and utplan.type_pl=2');
          DM1.IBQuery1.SQL.Add(' order by spprod.nmat');
        end;
    1 : begin
          DM1.IBQuery1.SQL.Add(' SELECT sum(UTPLAN.kol_prih) kol, SPPROD.KSM_ID, SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD, SPPROD.STRUK_ID,SPPROD.KEI_ID,region.nam nam_reg');
          DM1.IBQuery1.SQL.Add(' FROM kart UTPLAN');
          DM1.IBQuery1.SQL.Add(' INNER JOIN document ON (UTPLAN.doc_ID = document.doc_ID)');
          DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (UTPLAN.ksm_ID = SPPROD.ksm_ID)');
          DM1.IBQuery1.SQL.Add(' LEFT JOIN region ON (SPPROD.reg = region.reg)');
          DM1.IBQuery1.SQL.Add(' WHERE SPPROD.STRUK_ID=' + INTTOSTR(vStruk_Id));
          DM1.IBQuery1.SQL.Add(' AND document.tip_op_id=2 ');
          DM1.IBQuery1.SQL.Add(' AND document.date_op between ' + '''' + s_dat1 + '''' + ' and ' + '''' + s_dat2 + '''');
          DM1.IBQuery1.SQL.Add(' group by SPPROD.KSM_ID, SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD, SPPROD.STRUK_ID,SPPROD.KEI_ID,region.nam ');
          DM1.IBQuery1.SQL.Add(' order by spprod.nmat');
        end;
    2 : begin
          DM1.IBQuery1.SQL.Add(' SELECT sum(UTPLAN.kol_seria) kol, SPPROD.KSM_ID, SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD, SPPROD.STRUK_ID,SPPROD.KEI_ID,region.nam nam_reg');
          DM1.IBQuery1.SQL.Add(' FROM seria UTPLAN');
          DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (UTPLAN.ksm_ID = SPPROD.ksm_ID)');
          DM1.IBQuery1.SQL.Add(' LEFT JOIN region ON (SPPROD.reg = region.reg)');
          DM1.IBQuery1.SQL.Add(' WHERE SPPROD.STRUK_ID=' + INTTOSTR(vStruk_Id));
          DM1.IBQuery1.SQL.Add(' AND UTPLAN.date_vipusk between ' + '''' + s_dat1 + '''' + ' and ' + '''' + s_dat2 + '''');
          DM1.IBQuery1.SQL.Add(' group by SPPROD.KSM_ID, SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD, SPPROD.STRUK_ID,SPPROD.KEI_ID,region.nam ');
          DM1.IBQuery1.SQL.Add(' order by spprod.nmat');
        end;
  end;
  DM1.IBQuery1.Active := true;
  PlVipusk.EmptyTable;
  PlVipusk.LoadFromDataSet(DM1.IBQuery1, 0, lmAppend);
  PlVipusk.Active := True;
  PlVipusk.First;
  PlVipusk.DisableControls;
  While (not PlVipusk.Eof) do
  begin
    PlVipusk.Edit;
    PlVipusk.FieldByName('Vib').ASBoolean := False;
    PlVipusk.FieldByName('MES').AsInteger := mes;
    PlVipusk.FieldByName('GOD').AsInteger := god;
    PlVipusk.Post;
    PlVipusk.Next;
  end;
  PlVipusk.First;
  PlVipusk.EnableControls;

  vNDoc := 'ÎÂûï_' + inttostr(SpinEdit3.Value) + '_' + inttostr(SpinEdit4.Value);
  DM1.DOCUMENT.Close;
  DM1.DOcUMENT.MacroByName('USL').AsString := 'WHERE DOcUMENT.STRUK_ID=' + INTTOSTR(dm1.strukIdRela)
                                              + ' and document.klient_id = ' + IntToStr(dm1.klientId)
                                              + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                                              + ' AND Document.Date_op between '
                                              + '''' + s_dat1 + '''' + ' and ' + '''' + s_dat2 + '''';
  DM1.DOCUMENT.OPEN;
  IF (NOT DM1.Document.Eof) THEN
    VDOCUMENT_ID := DM1.DocumentDOc_ID.ASINTEGER
  else
    VDOCUMENT_ID := 0;

  loadVipuskKartv;
end;

procedure TFVipusk.loadVipuskKartv;
begin
  dm1.startReadTrans;
  DM1.KARTV.Close;
  DM1.KartV.MacroByName('USL').AsString := 'WHERE KARTV.DOC_ID=' + INTTOSTR(VDOCUMENT_id);
  DM1.KartV.MacroByName('SORT').AsString := 'ORDER BY SPPROD.NMAT';
  DM1.KARTV.OPEN;
  mem_factVipusk.EmptyTable;
  mem_factVipusk.Open;
  dm1.KartV.DisableControls;
  DM1.KARTV.First;
  while (not DM1.KARTV.Eof) do
  begin
    S_DATN := '01.01.' + INTTOSTR(GOD);
    DM1.IBQuery1.Close;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng, KARTv.KSM_ID');
    DM1.IBQuery1.SQL.Add(' FROM KARTv');
    DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
    DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID=' + INTTOSTR(dm1.strukIdRela)
                         + ' and document.klient_id = ' + IntToStr(dm1.strukIdRela)
                         + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
                         + ' AND KARTv.KSM_ID=' + INTTOSTR(DM1.KARTVKsm_id.AsInteger)
                         + ' AND Document.Date_op between ' + '''' + s_datn + ''''
                         + ' and ' + '''' + s_dat2 +'''');
    DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
    DM1.IBQuery1.Open;
    DM1.KARTV.Edit;
    if (not dm1.IBQuery1.Eof) then
      DM1.KARTVVipNg.AsFloat := DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat
    ELSE
      DM1.KARTVVipNg.AsFloat := 0;
    DM1.KARTV.Post;
    if (vStruk_Id = 540) then
      loadKartvRecord;
    DM1.KARTV.Next;
  end;
  dm1.KartV.EnableControls;
end;

procedure TFVipusk.loadKartvRecord;
begin
  openDocument(vStruk_Id, 0, StrToDate(s_dat1), StrToDate(s_dat2));
  if (q_document.RecordCount > 0) then
  begin
    q_document.First;
    while (not q_document.Eof) do
    begin
      openKartv(q_documentDOC_ID.AsInteger, dm1.KartVKSM_ID.AsInteger);
      if (q_kartv.RecordCount > 0) then
      begin
        dm1.KartV.Edit;
        dm1.KartVOTDELID.AsInteger := q_documentKLIENT_ID.AsInteger;
        dm1.KartVOTDEL.AsString := q_documentKLIENT_STNAME.AsString;
        dm1.KartVOTDEL_DOC_ID.AsInteger := q_documentDOC_ID.AsInteger;
        dm1.KartV.Post;

        mem_factVipusk.Append;
        mem_factVipusk.Edit;
        mem_factVipuskOTDELID.AsInteger := q_documentKLIENT_ID.AsInteger;
        mem_factVipuskOTDEL_DOC_ID.AsInteger := q_documentDOC_ID.AsInteger;
        mem_factVipuskKSM_ID.AsInteger := dm1.KartVKSM_ID.AsInteger;
        mem_factVipusk.Post;
        break;
      end;
      q_document.Next;
    end;
  end;
end;

procedure TFVipusk.FormShow(Sender: TObject);
begin
  First_vxod := false;
  SpinEdit3.OnChange := nil;
  SpinEdit4.OnChange := nil;
  SpinEdit3.Value := mes;
  SpinEdit4.Value := god;
  SpinEdit3.OnChange := SpinEdit3Change;
  SpinEdit4.OnChange := SpinEdit4Change;
  mes_vib := mes;
  god_vib := god;
  IF (MES_vib < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1 := '01.' + S_MES + '.' + INTTOSTR(GOD);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1), 1) - 1);
  SostVipusk;
  DBGridEh2.Columns[6].Visible := false;
  if (vStruk_Id = 540) then
  begin
    DBGridEh2.Columns[6].Visible := true;
    DBGridEh2.Columns[7].Visible := false;
  end;
 end;

procedure TFVipusk.frReport1GetValue(const ParName: string;
  var ParValue: Variant);
begin
  nammes := dm1.getStrMes(mes);
  if (ParName = 'nammes') then
    ParValue := nammes;
  if (ParName = 'namceh') then
    ParValue := FGlMenu.RxLabel1.Caption;
  if (ParName = 'god') then
    ParValue := god;
end;

procedure TFVipusk.RadioGroup1Click(Sender: TObject);
begin
  SostVipusk;
end;

procedure TFVipusk.SpinEdit3Change(Sender: TObject);
begin
  mes := SpinEdit3.Value;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1 := '01.' + S_MES + '.' + INTTOSTR(GOD);
  S_DAT2 := datetostr( IncMonth( strtodate(s_dat1), 1 ) -1 );
  SostVipusk;
end;

procedure TFVipusk.SpinEdit4Change(Sender: TObject);
begin
  mes := SpinEdit3.Value;
  god := SpinEdit4.Value;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1 := '01.' + S_MES + '.' + INTTOSTR(GOD);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1), 1) - 1);
  SostVipusk;
end;

procedure TFVipusk.ToolButton4Click(Sender: TObject);
begin
  PlVipusk.DisableControls;
  PlVipusk.First;
  while not PlVipusk.Eof do
  begin
 if PlVipuskVib.AsBoolean then
 begin
  IF vDocument_id=0 THEN
  begin
   vTip_Op_Id:=36;
   vTip_Doc_Id:=74;
   vNDoc:='ÎÂûï_'+inttostr(SpinEdit3.Value)+'_'+inttostr(SpinEdit4.Value);
   vKlient_Id:=vStruk_id;
   vDate_dok:=strtodate(s_dat1);
   vDate_op:=strtodate(s_dat1);
   dm1.Document.open;
   dm1.Document.Insert;
   dm1.Document.Post;
  end;
  if not dm1.Kartv.Active then dm1.Kartv.Active:=true;
  if not dm1.Kartv.Locate('doc_id;ksm_id',VarArrayOf([vDocument_id,PlVipuskKsm_id.AsInteger]),[]) then
  begin
   dm1.Kartv.Insert;
   dm1.KartvKsm_id.AsInteger:=PlVipuskKsm_id.AsInteger;
   dm1.KartvKod_prod.AsString:=PlVipuskKod_Prod.AsString;
   dm1.KartvKol_pRIH.AsFloat:=PlVipuskKol.AsFloat;
   dm1.KartvDoc_id.AsInteger:=vDocument_id;
   dm1.KartvKlient_id.AsInteger:=PlVipuskKsm_id.AsInteger;
   dm1.KartVNmat.AsString:=PlVipuskNmat.AsString;
   dm1.KartVXarkt.AsString:=PlVipuskXarkt.AsString;
   dm1.KartVNam_reg.AsString:=PlVipuskNam_reg.AsString;
   dm1.Kartv.Post;
  end;
 end;
 PlVipusk.Next;
  end;
  PlVipusk.First;
  While not PlVipusk.Eof do
  begin
    PlVipusk.Edit;
    PlVipusk.FieldByName('Vib').ASBoolean := False;
    PlVipusk.Post;
    PlVipusk.Next;
  end;
  PlVipusk.First;
  PlVipusk.EnableControls;
end;

procedure TFVipusk.ToolButton5Click(Sender: TObject);
begin
  FrReport1.LoadFromFile(reportsPath + 'P_VIPUSK.frf');
  FrReport1.ShowReport;
end;

procedure TFVipusk.ToolButton7Click(Sender: TObject);
begin
 PlVipusk.First;
 PlVipusk.DisableControls;
 while not PlVipusk.Eof do
 begin
  IF vDocument_id=0 THEN
  begin
   vTip_Op_Id:=36;
   vTip_Doc_Id:=74;
   vNDoc:='ÎÂûï_'+inttostr(SpinEdit3.Value)+'_'+inttostr(SpinEdit4.Value);
   vKlient_Id:=vStruk_id;
   vDate_dok:=strtodate(s_dat1);
   vDate_op:=strtodate(s_dat1);
   vpriz_id:=2;
   dm1.Document.open;
   dm1.Document.Insert;
   dm1.Document.Post;
  end;
  if not dm1.KartV.Active then dm1.KartV.Active:=true;
  if not dm1.KartV.Locate('doc_id;ksm_id',VarArrayOf([vDocument_id,PlVipuskKsm_id.AsInteger]),[]) then
  begin
   dm1.KartV.Insert;
   dm1.KartVKsm_id.AsInteger:=PlVipuskKsm_id.AsInteger;
   dm1.KartVKod_prod.AsString:=PlVipuskKod_Prod.AsString;
   dm1.KartVKol_pRIH.AsFloat:=PlVipuskKol.AsFloat;
   dm1.KartVDoc_id.AsInteger:=vDocument_id;
   dm1.KartVKlient_id.AsInteger:=PlVipuskKsm_id.AsInteger;
   dm1.KartVNmat.AsString:=PlVipuskNmat.AsString;
   dm1.KartVXarkt.AsString:=PlVipuskXarkt.AsString;
   dm1.KartV.Post;
  end;
   PlVipusk.Next;
 end;
 PlVipusk.First;
 While not PlVipusk.Eof do
 begin
  PlVipusk.Edit;
  PlVipusk.FieldByName('Vib').ASBoolean := False;
  PlVipusk.Post;
  PlVipusk.Next;
 end;
 PlVipusk.First;
 PlVipusk.EnableControls;
end;

procedure TFVipusk.FormCreate(Sender: TObject);
begin
  First_vxod := true;  
end;

procedure TFVipusk.ToolButton3Click(Sender: TObject);
begin
  if (vStruk_Id = 540) then
    saveOtdel;
  dm1.ApplyUpdatesDoc;
  loadVipuskKartv;
end;

procedure TFVipusk.saveOtdel;
begin
  dm1.KartV.DisableControls;
  dm1.KartV.First;
  while (not dm1.KartV.Eof) do
  begin
    if (dm1.KartVOTDELID.AsInteger = 0) or (dm1.KartVOTDELID.AsInteger  = dm1.strukIdRela) then
    begin
      if (mem_factVipusk.Locate('ksm_id', dm1.KartVKSM_ID.AsString, [])) then
      begin
        deleteKartv(mem_factVipuskOTDEL_DOC_ID.AsInteger, mem_factVipuskKSM_ID.AsInteger);
        mem_factVipusk.Delete;
      end;
    end;
    if (dm1.KartVOTDELID.AsInteger <> 0) and (dm1.KartVOTDELID.AsInteger <> dm1.strukIdRela) then
    begin
      if (mem_factVipusk.Locate('ksm_id', dm1.KartVKSM_ID.AsString, [])) then
      begin
        deleteKartv(mem_factVipuskOTDEL_DOC_ID.AsInteger, mem_factVipuskKSM_ID.AsInteger);
        mem_factVipusk.Delete;
      end;
      openDocument(vStruk_id, dm1.KartVOTDELID.AsInteger, StrToDate(s_dat1), StrToDate(s_dat2));
      if (q_document.RecordCount = 0) then
        insertDocument(dm1.DocumentTIP_OP_ID.AsInteger, dm1.strukIdRela, dm1.DocumentTIP_DOK_ID.AsInteger,
                       dm1.KartVOTDELID.AsInteger, vNDoc, dm1.DocumentDATE_OP.AsDateTime);
      openKartv(q_documentDOC_ID.AsInteger, dm1.KartVKSM_ID.AsInteger);
      if (q_kartv.RecordCount = 0) then
        insertKartv;
    end;
    dm1.KartV.Next;
  end;
  dm1.KartV.EnableControls;
end;

procedure TFVipusk.deleteKartv(docId, ksmId : integer);
begin
  openKartv(docId, ksmId);
  if (q_kartv.RecordCount > 0) then
  begin
    q_kartv.Delete;
    q_kartv.ApplyUpdates;
    dm1.commitWriteTrans(true);
  end;
end;

procedure TFVipusk.openDocument(strukId, otdelId : integer; dat1, dat2 : TDate);
begin
  q_document.Close;
  q_document.ParamByName('struk_id').AsInteger := strukId;
  if (otdelId = 0) then
    q_document.MacroByName('usl').AsString := 'document.struk_id <> document.klient_id '
  else
    q_document.MacroByName('usl').AsString := 'document.klient_id = ' + IntToStr(otdelId);
  q_document.ParamByName('dat1').AsDate := dat1;
  q_document.ParamByName('dat2').AsDate := dat2;
  q_document.Open;
end;

procedure TFVipusk.openKartv(docId, ksmId : integer);
begin
  q_kartv.Close;
  q_kartv.ParamByName('doc_id').AsInteger := docId;
  q_kartv.ParamByName('ksm_id').AsInteger := ksmId;
  q_kartv.Open;
end;

procedure TFVipusk.insertDocument(tipOpId, strukId, tipDocId, klientId : integer;
                                  nDoc : string; dateDok : TDate);
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_DOCUMENT';
  DM1.Add_KartDok.ExecProc;
  q_document.Insert;
  q_document.Edit;
  q_document.FieldByName('Doc_Id').AsInteger := DM1.Add_KartDok.Params.Items[0].AsInteger;;
  q_document.FieldByName('Tip_Op_Id').AsInteger := tipOpId;
  q_document.FieldByName('Struk_Id').AsInteger := strukId;
  q_document.FieldByName('Zadacha_Id').AsString := 'otchcex';
  q_document.FieldByName('Tip_Dok_Id').AsInteger := tipDocId;
  q_document.FieldByName('NDok').AsString := nDoc;
  q_document.FieldByName('Klient_Id').AsInteger := klientId;
  q_document.FieldByName('Date_Dok').AsDateTime := dateDok;
  q_document.FieldByName('Date_Op').AsDateTime := dateDok;
  q_document.Post;
  q_document.ApplyUpdates;
  dm1.commitWriteTrans(true);
end;

procedure TFVipusk.insertKartv;
begin
  DM1.Add_KartDok.StoredProcName := 'ADD_KARTV';
  DM1.Add_KartDok.ExecProc;
  q_kartv.Insert;
  q_kartv.Edit;
  q_kartvDOC_ID.AsInteger := q_documentDOC_ID.AsInteger;
  q_kartvSTROKA_ID.AsInteger := DM1.Add_KartDok.Params.Items[0].AsInteger;
  q_kartvKSM_ID.AsInteger := dm1.KartVKSM_ID.AsInteger;
  q_kartvKOL_PRIH.AsFloat := dm1.KartVKOL_PRIH.AsFloat;
  q_kartv.Post;
  q_kartv.ApplyUpdates;
  dm1.commitWriteTrans(true);
end;

procedure TFVipusk.ToolButton1Click(Sender: TObject);
begin
  IF (vDocument_id = 0) THEN
  begin
    vTip_Op_Id := 36;
    vTip_Doc_Id := 74;
    vNDoc := 'ÎÂûï_' + inttostr(SpinEdit3.Value) + '_' + inttostr(SpinEdit4.Value);
    vKlient_Id := vStruk_id;
    vDate_dok := strtodate(s_dat1);
    vDate_op := strtodate(s_dat1);
    vpriz_id := 2;
    dm1.Document.open;
    dm1.Document.Insert;
    dm1.Document.Post;
  end;
  if (not dm1.KartV.Active) then
    dm1.KartV.Open;
  dm1.KartV.Insert;
end;

procedure TFVipusk.DBGridEh1SortMarkingChanged(Sender: TObject);
var
  i : integer;
begin
  Usl_Sort := '';
  for i := 0 to DBGridEh1.SortMarkedColumns.Count-1 do
  BEGIN
    if (DBGridEh1.SortMarkedColumns[i].Title.SortMarker = smUpEh) then
      Usl_Sort := USL_Sort + '"' + DBGridEh1.SortMarkedColumns[i].FieldName + '"' + ' DESC , '
    else
      Usl_Sort := Usl_Sort + '"' + DBGridEh1.SortMarkedColumns[i].FieldName + '"' + ', ';
  END;
  if (Usl_Sort <> '') then
  begin
    Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT UTPLAN.GOD, UTPLAN.MES, UTPLAN."PLAN", SPPROD.KSM_ID, SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD, SPPROD.STRUK_ID,SPPROD.KEI_ID,region.nam nam_reg');
    DM1.IBQuery1.SQL.Add(' FROM UTPLAN');
    DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (UTPLAN.SPROD_ID = SPPROD.SPROD_ID)');
    DM1.IBQuery1.SQL.Add(' LEFT JOIN region ON (SPPROD.reg = region.reg)');
    DM1.IBQuery1.SQL.Add(' WHERE UTPLAN.GOD='+INTTOSTR(GOD)+' AND UTPLAN.MES='+INTTOSTR(MES));
    DM1.IBQuery1.SQL.Add(' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
    DM1.IBQuery1.SQL.Add(' AND UTPLAN."PLAN"<>0');
    DM1.IBQuery1.SQL.Add(' order by '+Usl_Sort);
    DM1.IBQuery1.Active:=true;
    PlVipusk.EmptyTable;
    PlVipusk.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
    PlVipusk.Active := True;
    PlVipusk.First;
    PlVipusk.DisableControls;
    While not PlVipusk.Eof do
    begin
      PlVipusk.Edit;
      PlVipusk.FieldByName('Vib').ASBoolean := False;
      PlVipusk.Post;
      PlVipusk.Next;
    end;
    PlVipusk.First;
    PlVipusk.EnableControls;
  end;
end;

procedure TFVipusk.DBGridEh2Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if (FindSpprod = nil) then
    FindSpprod := TfindSpprod.Create(Application);
  FindSpprod.DataBaseName := dm1.BELMED;
  FindSpprod.ReadOnly := true;
  FindSpprod.Usl_Struk := 'spprod.struk_id=' + inttostr(vStruk_id);
  FindSpprod.ShowModal;
  if (FindSpprod.ModalResult > 50) then
  begin
    IF (vDocument_id = 0) THEN
    begin
      vTip_Op_Id := 36;
      vTip_Doc_Id := 74;
      vNDoc := 'ÎÂûï_' + inttostr(SpinEdit3.Value) + '_' + inttostr(SpinEdit4.Value);
      vKlient_Id := vStruk_id;
      vDate_dok := strtodate(s_dat1);
      vDate_op := strtodate(s_dat1);
      vpriz_id := 2;
      dm1.Document.open;
      dm1.Document.Insert;
      dm1.Document.Post;
    end;
    dm1.KartV.Edit;
    dm1.KartVNmat.AsString := FindSpprod.IBSpprodNmat.AsString;
    dm1.KartVKsm_id.AsInteger := FindSpprod.ModalResult - 50;
    dm1.KartVKod_prod.AsString := FindSpprod.IBSpprodKOD_PROD.AsString;
    dm1.KartVKlient_id.AsInteger := vStruk_id;
    dm1.KartVDoc_id.AsInteger := vDocument_id;
    dm1.KartV.Post;
  end;
end;

procedure TFVipusk.DBGridEh2Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if (otdelViborForm = nil) then
    otdelViborForm := TFOtdelDropDown.Create(self);
  otdelViborForm.strukId := vStruk_Id;
  otdelViborForm.Left := Mouse.CursorPos.X - otdelViborForm.Width;
  otdelViborForm.Top := Mouse.CursorPos.Y;
  otdelViborForm.ShowModal;
  if (otdelViborForm.ModalResult <> mrCancel) then
  begin
    if (otdelViborForm.otdelId = vStruk_Id) then
    begin
      dm1.KartV.Edit;
      dm1.KartVOTDEL.AsString := '';
      dm1.KartVOTDELID.AsInteger := 0;
      dm1.KartV.Post;
    end
    else
    begin
      dm1.KartV.Edit;
      dm1.KartVOTDEL.AsString := otdelViborForm.otdelName;
      dm1.KartVOTDELID.AsInteger := otdelViborForm.otdelId;
      dm1.KartV.Post;
    end;
  end;
end;

procedure TFVipusk.DBGridEh2SortMarkingChanged(Sender: TObject);
 var
  i :Integer;
begin
 Usl_Sort := '';
 for i := 0 to DBGridEh2.SortMarkedColumns.Count-1 do
 BEGIN
  if DBGridEh2.SortMarkedColumns[i].Title.SortMarker = smUpEh then
    Usl_Sort := Usl_Sort+ 'SPPROD."'+ DBGridEh2.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
   else
    Usl_Sort := USL_Sort+'SPPROD."'+ DBGridEh2.SortMarkedColumns[i].FieldName + '"'+ ', '
 END;
 if Usl_Sort <> '' then
 begin
  Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
  DM1.KARTV.Close;
  DM1.KartV.MacroByName('USL').AsString:='WHERE KARTv.DOC_ID='+INTTOSTR(VDOCUMENT_id);
  DM1.KartV.MacroByName('SORT').AsString:='order by '+usl_sort;
  DM1.KARTV.OPEN;
  DM1.KARTV.First;
  while not DM1.KARTV.Eof do
  begin
   S_DATN:='01.01.'+INTTOSTR(GOD);
   DM1.IBQuery1.Active := False;
   DM1.IBQuery1.SQL.Clear;
   DM1.IBQuery1.SQL.Add('SELECT  sum(KARTv.KOL_PRIH) vipusk_ng,KARTv.KSM_ID');
   DM1.IBQuery1.SQL.Add(' FROM KARTv');
   DM1.IBQuery1.SQL.Add(' INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_ID)');
   DM1.IBQuery1.SQL.Add(' WHERE DOCUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
   + ' AND KARTv.KSM_ID='+INTTOSTR(DM1.KARTVKsm_id.AsInteger)
   + ' AND Document.Date_op between '+''''+s_datn+'''' +' and '+''''+s_dat2+'''');
   DM1.IBQuery1.SQL.Add(' GROUP BY KARTv.KSM_ID');
   DM1.IBQuery1.Active := True;
   DM1.KARTV.Edit;
   if not dm1.IBQuery1.Eof then
    DM1.KARTVVipNg.AsFloat:=DM1.IBQuery1.FieldByName('VIPUSK_NG').AsFloat
   ELSE  DM1.KARTVVipNg.AsFloat:=0;
   DM1.KARTV.Post;
   DM1.KARTV.Next;
  end;
 end;
end;

procedure TFVipusk.ToolButton2Click(Sender: TObject);
begin
dm1.KartV.Delete;
end;

procedure TFVipusk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm1.VoprosWriteDoc;
  mes := mes_vib;
  god := god_vib;
end;

end.
