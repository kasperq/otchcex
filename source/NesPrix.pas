unit NesPrix;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, Mask, ToolEdit, ComCtrls, ToolWin,
  ExtCtrls, Spin, ImgList, DB, DBTables, IBCustomDataSet, IBQuery, RxIBQuery,
  RxMemDS, DBGrids, FR_DSet, FR_DBSet, FR_Class,Menus,UtilRIB, Placemnt,
  FindDlgEh;

type
  TFNesPrix = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ImageList1: TImageList;
    Label4: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    DSPrixBux: TDataSource;
    DSPrixCexBux: TDataSource;
    Bmomts: TTable;
    PrixCexBux: TRxMemoryData;
    DataSource1: TDataSource;
    PrixKart: TIBQuery;
    PrixKartKSM_ID: TIntegerField;
    PrixKartKOL_PRIX: TFMTBCDField;
    PrixCexBuxNMAT: TStringField;
    PrixCexBuxeip: TStringField;
    PrixCexBuxkol_prix: TFloatField;
    PrixCexBuxksm_id: TIntegerField;
    PrixCexBuxPrixodm: TFloatField;
    PrixKartNMAT: TIBStringField;
    PrixKartNEIS: TIBStringField;
    BmomtsSKLAD: TStringField;
    BmomtsPUT: TStringField;
    BmomtsBUX: TStringField;
    BmomtsBMG: TStringField;
    PrixBux: TQuery;
    PrixBuxDATETR: TDateField;
    PrixBuxNUMDOK: TStringField;
    PrixBuxSTNAME: TStringField;
    PrixBuxKOL: TFloatField;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGridEh4: TDBGridEh;
    Panel5: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    OstCexBux: TRxMemoryData;
    OstCexBuxNMAT: TStringField;
    OstCexBuxeip: TStringField;
    OstCexBuxost_s: TFloatField;
    OstCexBuxksm_id: TIntegerField;
    OstCexBuxkol: TFloatField;
    DSOstCexBux: TDataSource;
    OstSyr: TRxIBQuery;
    OstSyrKSM_ID: TIntegerField;
    OstSyrNMAT: TIBStringField;
    OstSyrEIP: TIBStringField;
    OstSyrOST_S: TFMTBCDField;
    frDBDataSet2: TfrDBDataSet;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    DBGridEh5: TDBGridEh;
    PrixKartKEI_ID: TSmallintField;
    OstSyrKEI_ID: TSmallintField;
    OstCexBuxprmat: TIntegerField;
    PrixCexBuxprmat: TIntegerField;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Splitter1: TSplitter;
    FormStorage1: TFormStorage;
    Splitter2: TSplitter;
    Panel7: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Splitter3: TSplitter;
    Panel6: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    FormStorage2: TFormStorage;
    Label1: TLabel;
    FindDlgEh1: TFindDlgEh;
    FindDlgEh2: TFindDlgEh;
    sravnOstBtn: TToolButton;
    OstCexBuxKEI_ID: TIntegerField;
    OstCexBuxKART_ID: TIntegerField;
    OstCexBuxRAZDEL_ID: TSmallintField;
    q_PrixNomen: TRxIBQuery;
    q_PrixNomenBALS: TIBStringField;
    q_PrixNomenNUMKCU: TIBStringField;
    q_PrixNomenSKLAD: TIBStringField;
    q_PrixNomenNAMEPR: TIBStringField;
    q_PrixNomenNAMEPRS: TIBStringField;
    q_PrixNomenXARKT: TIBStringField;
    q_PrixNomenGOST: TIBStringField;
    q_PrixNomenMONEY: TIBBCDField;
    q_PrixNomenKOL: TFMTBCDField;
    q_PrixNomenSUM: TIBBCDField;
    q_PrixNomenPRIXODM: TFMTBCDField;
    q_PrixNomenSRASXM: TIBBCDField;
    q_PrixNomenSPRIXM: TIBBCDField;
    q_PrixNomenDATETR: TDateField;
    q_PrixNomenEDNOR: TSmallintField;
    q_PrixNomenSSUM: TIBBCDField;
    q_PrixNomenNSUM: TIBBCDField;
    q_PrixNomenSKOL: TFMTBCDField;
    q_PrixNomenRASXODM: TFMTBCDField;
    q_PrixNomenEIP: TIBStringField;
    q_PrixNomenKEI: TIBStringField;
    q_PrixNomenDATEIN: TDateField;
    q_PrixNomenNZ: TIntegerField;
    q_PrixNomenTRP: TIBStringField;
    q_PrixNomenPR: TIBStringField;
    q_PrixNomenGOD: TIntegerField;
    q_PrixNomenMES: TIntegerField;
    q_PrixNomenKSM_ID: TIntegerField;

    procedure ToolButton1Click(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrixCexBuxAfterScroll(DataSet: TDataSet);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure sravnOstBtnClick(Sender: TObject);

  private
    { Private declarations }
    procedure SostTabl;
    procedure setCexOst2BuxOst;
    procedure createNesootvDocument;
    function getKartIdBasedOnKsmAndCex(ksmId, strukId, keiId, razdelId : integer;
                                       kol : double) : integer;
    procedure formPrixAndOstNesootvTbl;
    procedure formOstNesootvTbl;
    procedure addPrixKartToNesootvTbl;
    procedure addOstKartToNesootvTbl;
    procedure getCexAndBuxPrixPostavschik;

    var
      kol : double;

  public
    { Public declarations }
  end;

var
  FNesPrix: TFNesPrix;
  s_Numkcu: string;
implementation

uses dm, glmenu;
{$R *.dfm}

procedure TFNesPrix.SpinEdit3Change(Sender: TObject);
begin
  mes := SpinEdit3.Value;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1 := '01.' + S_MES + '.' + copy(INTTOSTR(GOD), 3, 2);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1), 1) - 1);
end;

procedure TFNesPrix.SpinEdit4Change(Sender: TObject);
begin
  god:=SpinEdit4.Value;
  IF (MES < 10) THEN
    S_MES := '0' + INTTOSTR(MES)
  ELSE
    S_MES := INTTOSTR(MES);
  S_DAT1 := '01.' + S_MES + '.' + copy(INTTOSTR(GOD), 3, 2);
  S_DAT2 := datetostr(IncMonth(strtodate(s_dat1), 1) - 1);
end;

procedure TFNesPrix.sravnOstBtnClick(Sender: TObject);
begin
  if (ostCexBux.RecordCount <> 0) then
  begin
    if (MessageDlg('Остатки в цехе будут приведены в соответствие с данными из '
                   + 'бухгалтерии, путем создания документа с типом операции '
                   + '«Ввод остатков», который будет виден в приходах. Продолжить?',
                   mtWarning, [mbOK, mbCancel], 0) = mrOK) then
      setCexOst2BuxOst;
  end;
end;

procedure TFNesPrix.setCexOst2BuxOst;
//var
//  kol : double;
begin
  createNesootvDocument;

  if (dm1.Kart.Active) then
    dm1.Kart.Close;
  dm1.KartKSM_ID.OnValidate := nil;
  dm1.Kart.MacroByName('USL').AsString := 'WHERE KART.DOC_ID = ' + intToStr(vDocument_id);
  dm1.Kart.Open;
  OstCexBux.First;
  while (not OstCexBux.Eof) do
  begin
    if (OstCexBuxksm_id.AsInteger = 448) then    
      kol := (OstCexBuxost_s.AsFloat - OstCexBuxkol.AsFloat) * -1
    else
      kol := (OstCexBuxost_s.AsFloat - OstCexBuxkol.AsFloat) * -1;
    if (OstCexBuxKART_ID.AsInteger <> 0) then    
      st_kart := OstCexBuxKART_ID.AsInteger
    else
      st_kart := getKartIdBasedOnKsmAndCex(OstCexBuxksm_id.AsInteger,
                                           vStruk_Id,
                                           OstCexBuxKEI_ID.AsInteger,
                                           OstCexBuxRAZDEL_ID.AsInteger,
                                           kol);

    dm1.Kart.Insert;
    dm1.KartKsm_id.AsInteger := OstCexBuxksm_id.AsInteger;
    dm1.KartKei_id.AsInteger := OstCexBuxKei_id.AsInteger;
    dm1.KartKol_Prih_Ediz.AsFloat := kol;
    dm1.KartKOL_PRIH_EDIZ.AsFloat := kol;
    dm1.KartKOL_RASH.AsFloat := 0.0;
    dm1.KartKOL_RASH_EDIZ.AsFloat := 0.0;
    dm1.KartDoc_id.AsInteger := vDocument_id;
    dm1.Kart.Post;
    OstCexBux.Next;
  end;
  dm1.ApplyUpdatesDoc;
end;

procedure TFNesPrix.createNesootvDocument;
begin
  vNdoc := 'Нес.о_' + inttostr(vStruk_id) + '.' + spinEdit3.Text
           + '.' + spinEdit4.Text;
  vKlient_Id := vStruk_id;
  vTip_Doc_Id := 16;
  vTip_Op_Id := 21;
  vDate_dok := strtodate(s_dat1);
  vDate_op := strtodate(s_dat1);
  dm1.Document.Close;
  dm1.Document.MacroByName('USL').AsString := 'WHERE DOcUMENT.STRUK_ID = '
                                              + intToStr(vStruk_id)
                                              + ' AND DOCUMENT.TIP_OP_ID = '
                                              + intToStr(vTip_Op_Id)
                                              + ' AND DOCUMENT.TIP_dok_ID = '
                                              + intToStr(vTip_doc_Id)
                                              + ' AND DOCUMENT.Ndok = ' + ''''
                                              + vNdoc + ''''
                                              + ' and document.date_op between '
                                              + '''' + s_dat1 + '''' + ' and '
                                              + '''' + s_dat2 + ''''
                                              + ' AND DOCUMENT.Klient_id = '
                                              + intToStr(vStruk_id) + ' ';
  dm1.Document.Open;
  if (dm1.Document.RecordCount <> 0) then
    vDocument_id := dm1.DocumentDOC_ID.AsInteger
  else
  begin
    dm1.Document.Insert;
    dm1.Document.Post;
  end;
  dm1.ApplyUpdatesDoc;
end;

function TFNesPrix.getKartIdBasedOnKsmAndCex(ksmId, strukId, keiId, razdelId : integer;
                                             kol : double) : integer;
var
  kolStr : string;
  i : integer;
begin
  kolStr := FloatToStr(kol);
  for i := 1 to length(kolStr) do
    if (kolStr[i] = ',') then
      kolStr[i] := '.';

  dm1.Ostatki.Close;
  dm1.Ostatki.MacroByName('USL').AsString := 'and ost.ksm_id = ' + IntToStr(ksmId)
                                             + ' and (ost.ksm_idpr is null'
                                             + ' or ost.ksm_idpr = 0) '
                                             + ' and ost.ot_s >= ' + kolStr + ' ';
  dm1.Ostatki.ParamByName('STRUK_ID').AsInteger := strukId;
  dm1.Ostatki.Open;
  if (dm1.Ostatki.RecordCount <> 0) then
  begin
    result := dm1.OstatkiKART_ID.AsInteger;
  end
  else
  begin
    dm1.Ostatki.Close;
    dm1.Ostatki.MacroByName('USL').AsString := 'and ost.ksm_id = ' + IntToStr(ksmId)
                                               + ' and (ost.ksm_idpr is null'
                                               + ' or ost.ksm_idpr = 0) ';
    dm1.Ostatki.ParamByName('STRUK_ID').AsInteger := strukId;
    dm1.Ostatki.Open;
    if (dm1.Ostatki.RecordCount <> 0) then
      result := dm1.OstatkiKART_ID.AsInteger
    else
    begin
      s_KSM := ksmId;;
      v_razdel := razdelId;
      s_kodp := 0;;
      vseria_id := 0;
      s_KEI := keiId;
      vstruk_id := strukId;
      dm1.Ostatki.Insert;
      dm1.ApplyUpdatesDoc;
      result := vKart_id;
    end;
  end;
end;

procedure TFNesPrix.ToolButton1Click(Sender: TObject);
begin
  SostTabl;
end;

procedure TFNesPrix.ToolButton2Click(Sender: TObject);
begin
  PopupMenu2.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFNesPrix.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.PrixRasx.AfterScroll := DM1.PrixRasxAfterScroll;
end;

procedure TFNesPrix.FormShow(Sender: TObject);
begin
  PrixCexBux.EmptyTable;
  OstCexBux.EmptyTable;
  SpinEdit3.OnChange:=nil;
  SpinEdit4.OnChange:=nil;
  SpinEdit3.Value:=mes;
  SpinEdit4.Value:=god;
  IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
  SpinEdit3.OnChange:=SpinEdit3Change;
  SpinEdit4.OnChange:=SpinEdit4Change;
end;

procedure TFNesPrix.frReport1GetValue(const ParName: string;
  var ParValue: Variant);
begin
  nammes := dm1.getStrMes(SpinEdit3.Value);
  if ParName='nammes' then ParValue:=nammes;
  if ParName='namceh' then ParValue:=FGlMenu.RxLabel1.Caption;
  if ParName='god' then ParValue:=SpinEdit4.Value;
  if ParName='vid' then
  if (RadioGroup1.ItemIndex=1) then
    ParValue:=' сырье только на основное производство'
  else
    ParValue:=' все сырье';
end;

procedure TFNesPrix.N4Click(Sender: TObject);
begin
  if OstCexBux.Active=true then
  begin
    OstCexBux.DisableControls;
    FrReport1.LoadFromFile(reportsPath + 'P_Ost_cex_bux.frf');
    FrReport1.ShowReport;
    OstCexBux.EnableControls;
  end;
end;

procedure TFNesPrix.N5Click(Sender: TObject);
begin
  if PrixCexBux.Active=true then
  begin
    dm1.PrixRasx.DisableControls;
    PrixCexBux.DisableControls;
    FrReport1.LoadFromFile(reportsPath + 'P_Prix_cex_bux.frf');
    FrReport1.ShowReport;
    PrixCexBux.EnableControls;
    dm1.PrixRasx.EnableControls;
  end;
end;

procedure TFNesPrix.PrixCexBuxAfterScroll(DataSet: TDataSet);
begin
  S_KSM:=PrixCexBuxKsm_id.AsInteger;
  Usl_Tip:='kart.kol_prih<>0 and kart.ksm_id='+inttostr(s_ksm);
  DM1.PrixRasx.Active := False;
  DM1.PrixRasx.MacroByName('SDAT').AsString:= Usl_DAT;
  DM1.PrixRasx.MacroByName('STIP').AsString:= Usl_TIP;
  DM1.PrixRasx.MacroByName('GR_OP').AsString:= Usl_GROP;
  DM1.PrixRasx.MacroByName('CEX').AsString:= Usl_Struk;
  DM1.PrixRasx.MacroByName('SORT').AsString:= Usl_SORT;
  dm1.PrixRasx.ParamByName('dat2').AsDate := StrToDate(s_dat2_period) + 1;
  dm1.PrixRasx.ParamByName('struk_id').AsInteger := vStruk_Id;
  DM1.PrixRasx.Active := True;
  PrixBux.Active:=false;
  s_Numkcu:='00'+inttostr(PrixCexBuxKsm_id.AsInteger);
  PrixBux.DatabaseName:=BmomtsBmg.AsString;
  PrixBux.ParamByName('cex').AsString:=s_stkod;
  PrixBux.ParamByName('ksm').AsString:=s_Numkcu;
  PrixBux.Active:=true;
end;

procedure TFNesPrix.RadioGroup1Click(Sender: TObject);
begin
  SostTabl;
end;

procedure TFNesPrix.formPrixAndOstNesootvTbl;
begin
  q_PrixNomen.First;
  while (not q_PrixNomen.Eof) do
  begin
    s_ksm := strtoint(q_PrixNomenNumkcu.AsString);
    dm1.Matrop.Active := false;
    dm1.Matrop.ParamByName('ksm').AsInteger := s_Ksm;
    dm1.Matrop.Active := true;
    if ((RadioGroup1.ItemIndex = 1)
        and ((dm1.matropPrmat.AsString = '01')
             or (dm1.matropPrmat.AsString = '05')))
        or (RadioGroup1.ItemIndex = 0) then
    begin
      PrixKart.First;
      if (PrixKart.Locate('ksm_id', s_ksm, [])) then
      begin
        if (PrixKartKol_prix.AsFloat <> q_PrixNomenPrixodm.AsFloat) then
        BEGIN
          PrixCexBux.Append;
          PrixCexBuxKsm_id.AsInteger := s_ksm;
          PrixCexBuxNmat.AsString := q_PrixNomenNamepr.AsString;
          PrixCexBuxEip.AsString := q_PrixNomenEip.AsString;
          PrixCexBuxKol_Prix.AsFloat := PrixKartKol_Prix.AsFloat;
          PrixCexBuxPrixodm.AsFloat := q_PrixNomenPrixodm.AsFloat;
          PrixCexBuxPrmat.AsInteger := strtoint(dm1.matropPrmat.asstring);
          PrixCexBux.Post;
        END;
      end
      else
      begin
        if (q_PrixNomenPrixodm.AsFloat <> 0) then
        begin
          PrixCexBux.Append;
          PrixCexBuxKsm_id.AsInteger := s_ksm;
          PrixCexBuxNmat.AsString := q_PrixNomenNamepr.AsString;
          PrixCexBuxEip.AsString := q_PrixNomenEip.AsString;
          PrixCexBuxKol_Prix.AsFloat := 0;
          PrixCexBuxPrixodm.AsFloat := q_PrixNomenPrixodm.AsFloat;
          PrixCexBuxPrmat.AsInteger := strtoint(dm1.matropPrmat.asstring);
          PrixCexBux.Post;
        end;
      end;
// форирование таблицы несоответствия остатков
      formOstNesootvTbl;
    end;
    q_PrixNomen.Next;
  end;
end;

procedure TFNesPrix.formOstNesootvTbl;
begin
  OstSyr.First;
  if (OstSyr.Locate('ksm_id', s_ksm, [])) then
  begin
    if (OstSyrOst_s.AsFloat <> q_PrixNomenKol.AsFloat) then
    BEGIN
      OstCexBux.Append;
      OstCexBuxKsm_id.AsInteger := s_ksm;
      OstCexBuxNmat.AsString := q_PrixNomenNamepr.AsString;
      OstCexBuxEip.AsString := OstSyrEip.AsString;
      OstCexBuxOst_s.AsFloat := OstSyrOst_s.AsFloat;
      OstCexBuxKol.AsFloat := q_PrixNomenKol.AsFloat;
      ostCexBuxPrmat.AsInteger := strtoint(dm1.matropPrmat.asstring);
      OstCexBuxKEI_ID.AsInteger := OstSyrKEI_ID.AsInteger;
      OstCexBuxKART_ID.AsInteger := 0{OstSyrKART_ID.AsInteger};
      OstCexBuxRAZDEL_ID.AsInteger := 0{OstSyrRAZDEL_ID.AsInteger};
      OstCexBux.Post;
    END;
  end
  else
  begin
    if (q_PrixNomenKol.AsFloat <> 0) then
    begin
      OstCexBux.Append;
      OstCexBuxKsm_id.AsInteger := s_ksm;
      OstCexBuxNmat.AsString := q_PrixNomenNamepr.AsString;
      OstCexBuxEip.AsString := q_PrixNomenEip.AsString;
      OstCexBuxOst_s.AsFloat := 0;
      OstCexBuxKol.AsFloat := q_PrixNomenKol.AsFloat;
      ostCexBuxPrmat.AsInteger := strtoint(dm1.matropPrmat.asstring);
      OstCexBuxKEI_ID.AsInteger := q_PrixNomenKEI.AsInteger;
      OstCexBuxKART_ID.AsInteger := 0;
      OstCexBuxRAZDEL_ID.AsInteger := 0;
      OstCexBux.Post;
    end;
  end;
end;

procedure TFNesPrix.addPrixKartToNesootvTbl;
begin
  PrixKart.First;
  while (not PrixKart.Eof) do
  begin
    dm1.Matrop.Active := false;
    dm1.Matrop.ParamByName('ksm').AsInteger := PrixKartKsm_id.AsInteger;
    dm1.Matrop.Active := true;
    if ((RadioGroup1.ItemIndex = 1)
        and ((dm1.matropPrmat.AsString = '01')
             or (dm1.matropPrmat.AsString = '05')))
        or (RadioGroup1.ItemIndex = 0) then
    begin
//    s_Numkcu:='00'+inttostr(PrixKartKsm_id.AsInteger);
      if (Length(trim(inttostr(PrixKartKsm_id.AsInteger))) = 1) then
        s_Numkcu := '000000' + inttostr(PrixKartKsm_id.AsInteger);
      if (Length(trim(inttostr(PrixKartKsm_id.AsInteger))) = 2) then
        s_Numkcu := '00000' + inttostr(PrixKartKsm_id.AsInteger);
      if (Length(trim(inttostr(PrixKartKsm_id.AsInteger))) = 3) then
        s_Numkcu := '0000' + inttostr(PrixKartKsm_id.AsInteger);
      if (Length(trim(inttostr(PrixKartKsm_id.AsInteger))) = 4) then
        s_Numkcu := '000' + inttostr(PrixKartKsm_id.AsInteger);
      if (Length(trim(inttostr(PrixKartKsm_id.AsInteger))) = 5) then
        s_Numkcu := '00' + inttostr(PrixKartKsm_id.AsInteger);
      if (Length(trim(inttostr(PrixKartKsm_id.AsInteger))) = 6) then
        s_Numkcu := '0' + inttostr(PrixKartKsm_id.AsInteger);
      if (Length(trim(inttostr(PrixKartKsm_id.AsInteger))) = 7) then
        s_Numkcu := inttostr(PrixKartKsm_id.AsInteger);
      q_PrixNomen.First;
      if (not q_PrixNomen.Locate('NUMKCU', s_Numkcu, []))
          and (PrixKartKol_Prix.AsFloat <> 0) then
      begin
        PrixCexBux.Append;
        PrixCexBuxKsm_id.AsInteger := PrixKartKsm_id.AsInteger;
        PrixCexBuxNmat.AsString := PrixKartNmat.AsString;
        PrixCexBuxEip.AsString := PrixKartNeis.AsString;
        PrixCexBuxKol_Prix.AsFloat := PrixKartKol_Prix.AsFloat;
        PrixCexBuxPrixodm.AsFloat := 0;
        PrixCexBuxPrmat.AsInteger := strtoint(dm1.matropPrmat.asstring);
        PrixCexBux.Post;
      end;
    end;
    PrixKart.Next;
  end;
end;

procedure TFNesPrix.addOstKartToNesootvTbl;
begin
  OstSyr.First;
  while (not OstSyr.Eof) do
  begin
    dm1.Matrop.Active := false;
    dm1.Matrop.ParamByName('ksm').AsInteger := OstSyrKsm_id.AsInteger;
    dm1.Matrop.Active := true;
    if ((RadioGroup1.ItemIndex = 1)
        and ((dm1.matropPrmat.AsString = '01')
              or(dm1.matropPrmat.AsString = '05')))
        or (RadioGroup1.ItemIndex = 0) then
    begin
      if (Length(trim(inttostr(OstSyrKsm_id.AsInteger))) = 1) then
        s_Numkcu := '000000' + inttostr(OstSyrKsm_id.AsInteger);
      if (Length(trim(inttostr(OstSyrKsm_id.AsInteger))) = 2) then
        s_Numkcu := '00000' + inttostr(OstSyrKsm_id.AsInteger);
      if (Length(trim(inttostr(OstSyrKsm_id.AsInteger))) = 3) then
        s_Numkcu := '0000' + inttostr(OstSyrKsm_id.AsInteger);
      if (Length(trim(inttostr(OstSyrKsm_id.AsInteger))) = 4) then
        s_Numkcu := '000' + inttostr(OstSyrKsm_id.AsInteger);
      if (Length(trim(inttostr(OstSyrKsm_id.AsInteger))) = 5) then
        s_Numkcu := '00' + inttostr(OstSyrKsm_id.AsInteger);
      if (Length(trim(inttostr(OstSyrKsm_id.AsInteger))) = 6) then
        s_Numkcu := '0' + inttostr(OstSyrKsm_id.AsInteger);
      if (Length(trim(inttostr(OstSyrKsm_id.AsInteger))) = 7) then
        s_Numkcu := inttostr(OstSyrKsm_id.AsInteger);
      q_PrixNomen.First;
      if (not q_PrixNomen.Locate('NUMKCU', s_Numkcu, []))
          and (OstSyrOst_s.AsFloat <> 0) then
      begin
        OstCexBux.Append;
        OstCexBuxKsm_id.AsInteger := OstSyrKsm_id.AsInteger;
        OstCexBuxNmat.AsString := OstSyrNmat.AsString;
        OstCexBuxEip.AsString := OstSyrEip.AsString;
        OstCexBuxOst_s.AsFloat := OstSyrOst_s.AsFloat;
        OstCexBuxKol.AsFloat := 0;
        OstCexBuxPrmat.AsInteger := strtoint(dm1.matropPrmat.asstring);
        OstCexBuxKEI_ID.AsInteger := OstSyrKEI_ID.AsInteger;
        OstCexBuxKART_ID.AsInteger := 0{OstSyrKART_ID.AsInteger};
        OstCexBuxRAZDEL_ID.AsInteger := 0{OstSyrRAZDEL_ID.AsInteger};
        OstCexBux.Post;
      end;
    end;
    OstSyr.Next;
  end;
end;

procedure TFNesPrix.getCexAndBuxPrixPostavschik;
begin
  PrixCexBux.First;
  if (not PrixCexBux.Eof) then
  begin
    DM1.PrixRasx.AfterScroll := NIL;
    s_ksm := PrixCexBuxKsm_id.AsInteger;
    s_Numkcu := '00' + inttostr(PrixCexBuxKsm_id.AsInteger);
    s_dat1_period := s_dat1;
    s_dat2_period := s_dat2;
    Usl_Dat := ' Document.Date_op between ' + '''' + s_dat1_period + ''''
               + ' and ' + '''' + s_dat2_period + '''';
    Usl_Struk := ' Document.Struk_id = ' + inttostr(vStruk_id);
    Usl_Sort := ' Document.ndok';
    Usl_GROP := ' TIP_OPER.GR_OP_ID in (1,6,12)';
    Usl_Tip := 'kart.kol_prih <> 0 and kart.ksm_id = ' + inttostr(s_ksm);
    DM1.PrixRasx.Active := False;
    DM1.PrixRasx.MacroByName('SDAT').AsString := Usl_DAT;
    DM1.PrixRasx.MacroByName('STIP').AsString := Usl_TIP;
    DM1.PrixRasx.MacroByName('GR_OP').AsString := Usl_GROP;
    DM1.PrixRasx.MacroByName('CEX').AsString := Usl_Struk;
    DM1.PrixRasx.MacroByName('SORT').AsString := Usl_SORT;
    dm1.PrixRasx.ParamByName('dat2').AsDate := StrToDate(s_dat2_period) + 1;
    dm1.PrixRasx.ParamByName('struk_id').AsInteger := vStruk_Id;
    DM1.PrixRasx.Active := True;

    PrixBux.DatabaseName := BmomtsBmg.AsString;
    PrixBux.ParamByName('cex').AsString := s_stkod;
    PrixBux.ParamByName('ksm').AsString := s_Numkcu;
    PrixBux.Active := true;
  end;
  PrixCexBux.Filtered := false;
  OstCexBux.Filtered := false;
  if (RadioGroup1.ItemIndex = 1) then
  begin
    PrixCexBux.Filter := 'prmat=1';
    OstCexBux.Filter := 'prmat=1';
    PrixCexBux.Filtered := true;
    OstCexBux.Filtered := true;
  end;
end;

procedure TFNesPrix.SostTabl;
begin
  PrixCexBux.AfterScroll := NIL;
  PrixCexBux.EmptyTable;
  OstCexBux.EmptyTable;
  PrixCexBux.Open;
  OstCexBux.Open;
  q_PrixNomen.Active := false;
  Bmomts.Active := true;
  if (Bmomts.Locate('SKLAD', s_stkod, [])) then
  begin
    q_PrixNomen.ParamByName('sklad').AsString := s_stkod;
    q_PrixNomen.ParamByName('mes').AsInteger := SpinEdit3.Value;
    q_PrixNomen.ParamByName('god').AsInteger := SpinEdit4.Value;
    q_PrixNomen.Active := true;

    PrixKart.Active := False;
    PrixKart.ParamByName('dat1').AsDateTime := strtodate(s_dat1);
    PrixKart.ParamByName('dat2').AsDateTime := strtodate(s_dat2);
    PrixKart.ParamByName('struk').AsInteger := vstruk_id;
    PrixKart.Active := true;

    OstSyr.Active := False;
    OstSyr.MacroByName('dat1').AsString := '''' + s_dat1 + '''';
    OstSyr.MacroByName('dat2').AsString := '''' + s_dat2 + '''';
    OstSyr.ParamByName('struk').AsInteger := vstruk_id;
    OstSyr.Active := true;
 // форирование таблиц несоответствия приходов и остатков
    formPrixAndOstNesootvTbl;
// добавление в таблицу несоответствия приходов (если нет в бухгалтерии)
    addPrixKartToNesootvTbl;
  // добавление в таблицу несоответствия остатков (если нет в бухгалтерии)
    addOstKartToNesootvTbl;
// откуда приходы в цеху и бухгалтерии
    getCexAndBuxPrixPostavschik;
  end;
// OstCexBux.SortOnFields('nmat');
  PrixCexBux.AfterScroll := PrixCexBuxAfterScroll;
end;

// добавление признака материала
{  PrixCexBux.First;
  while not PrixCexBux.Eof do
  begin
   dm1.Matrop.Active:=false;
   dm1.Matrop.ParamByName('ksm').AsInteger:=PrixCexBuxKsm_id.AsInteger;
   dm1.Matrop.Active:=true;
   if not dm1.Matrop.Eof then
   begin
    PrixCexBux.Edit;
    PrixCexBuxPrmat.AsInteger:=strtoint(dm1.matropPrmat.asstring);
    PrixCexBux.Post;
   end;
   PrixCexBux.Next;
  end;
  OstCexBux.First;
  while not OstCexBux.Eof do
  begin
   dm1.Matrop.Active:=false;
   dm1.Matrop.ParamByName('ksm').AsInteger:=OstCexBuxKsm_id.AsInteger;
   dm1.Matrop.Active:=true;
   if not dm1.Matrop.Eof then
   begin
    OstCexBux.Edit;
    OstCexBuxPrmat.AsInteger:=strtoint(dm1.matropPrmat.asstring);
    OstCexBux.Post;
   end;
   OstCexBux.Next;
  end; }
//  DM1.ApplyUpdatesDoc;

end.
