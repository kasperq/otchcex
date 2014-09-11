unit GotProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBGridEh, DBCtrlsEh, DBLookupEh, Mask, Grids,
  ExtCtrls, DB, IBCustomDataSet, IBQuery, GotProdNaklTbl, GotProdVipusk;

type
  TFGotProd = class(TForm)
    GotProdTab: TPageControl;
    NaklPage: TTabSheet;
    VipuskPage: TTabSheet;
    StrukQuery: TIBQuery;
    StrukQueryMES: TSmallintField;
    StrukQueryGOD: TSmallintField;
    StrukQuerySTNAME: TIBStringField;
    StrukQuerySTRUK_ID: TSmallintField;
    StrukQueryTIP_SKLAD_ID: TSmallintField;
    StrukQueryOTP_RAZR: TIBStringField;
    StrukQueryOTTISK: TIBStringField;
    StrukQueryOTP_PROIZV: TIBStringField;
    StrukQueryPUNKT_POGR: TIBStringField;
    StrukQueryACTIVE_SKLAD: TSmallintField;
    StrukQuerySTKOD: TIBStringField;
    StrukQueryPRECISION: TSmallintField;
    DSStrukQuery: TDataSource;

    procedure setStruk(strukId : integer);
    procedure setBeginEndDate(sender : integer);
    procedure PostSeria(seria : string; ksmId : integer; dateVipusk : TDate;
                        kolSeria : double; comment : string);
    procedure PostOstatki(ksmId : integer; seriaId : integer; nomuIdTrans : integer;
                          kartId : integer; keiId : integer; strukId : integer;
                          dokDate : TDate; volTrans : string; kolTrans : double;
                          kolGrp : double; vesTrans : double; nomuIdGrp : integer);

    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GotProdTabChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    var
    curStrukId : integer;
    curMes, curGod : integer;
    beginDate, endDate : TDate;
    newKartId : integer;

    GotPrNaklTbl : TFGotProdNaklTbl;
    GotPrVipusk : TFGotProdVipusk;
  end;

var
  FGotProd: TFGotProd;

  curStrukId : integer;
  curMes, curGod : integer;
//  beginDate, endDate : TDate;


implementation

{$R *.dfm}

uses dm;

procedure TFGotProd.PostOstatki(ksmId : integer; seriaId : integer;
                                nomuIdTrans : integer; kartId : integer;
                                keiId : integer; strukId : integer; dokDate : TDate;
                                volTrans : string; kolTrans : double; kolGrp : double;
                                vesTrans : double; nomuIdGrp : integer);
var
  pr_ost : short;
  curYear, curMonth, curDay : word;
begin
  pr_ost := 0;
  dm1.Ostatki.Active := false;
  dm1.Ostatki.ParamByName('struk_ID').AsInteger := strukId;
  dm1.Ostatki.MacroByName('usl').AsString := '  AND OST.KSM_ID=' + IntToStr(ksmId)
                                             + ' and ost.seria_id = ' + IntToStr(seriaId);
  dm1.Ostatki.Active := true;
  dm1.Ostatki.First;
  if (kartId = 0) then
  begin
    if (DM1.Ostatki.Locate('ksm_ID;seria_id;nomu_id_trans', VarArrayOf([ksmId,
                                                                        seriaId,
                                                                        nomuIdTrans]),
                            [])) then
      pr_ost := 1
  end
  else
  begin
    if (DM1.Ostatki.Locate('kart_ID', kartId, [])) then
      pr_ost := 1;
  end;
  if (pr_ost <> 1) then
  begin
    s_kodp := ksmId;
    vseria_id := seriaId;
    s_KEI := keiId;
    vstruk_id := strukId;
    DecodeDate(dokDate, curYear, curMonth, curDay);
    Mes_conf := curMonth;
    God_conf := curYear;
    s_ksm := ksmId;
    v_razdel := 0;
    s_kodp := 0;
    dm1.Ostatki.Insert;
    dm1.OstatkiNomu_id_trans.AsInteger := nomuIdTrans;
    dm1.OstatkiVol_Trans.AsString := volTrans;
    dm1.OstatkiKSM_ID.AsInteger := ksmId;
    dm1.OstatkiSTRUK_ID.AsInteger := strukId;
    dm1.OstatkiKol_Trans.AsFloat := kolTrans;
    dm1.OstatkiVes_Trans.AsFloat := vesTrans;
    dm1.OstatkiKEI_ID.AsInteger := keiId;
    s_kodp := s_ksm;
    newKartId := vKart_id;
  end
  else
  begin
    s_kodp := ksmId;
    vseria_id := seriaId;
    s_KEI := keiId;
    vstruk_id := strukId;
    DecodeDate(dokDate, curYear, curMonth, curDay);
    Mes_conf := curMonth;
    God_conf := curYear;
    s_ksm := ksmId;
    v_razdel := 0;
    s_kodp := 0;
    newKartId := dm1.OstatkiKart_id.AsInteger;
    dm1.Ostatki.Edit;
    dm1.OstatkiNomu_id_trans.AsInteger := nomuIdTrans;
    dm1.OstatkiVol_Trans.AsString := volTrans;
    dm1.OstatkiSERIA_ID.AsInteger := seriaId;
    dm1.OstatkiKSM_ID.AsInteger := ksmId;
    dm1.OstatkiSTRUK_ID.AsInteger := strukId;
    dm1.OstatkiKol_Trans.AsFloat := kolTrans;
    dm1.OstatkiVes_Trans.AsFloat := vesTrans;
    dm1.OstatkiKEI_ID.AsInteger := keiId;

    if (kolGrp <> -666.666) and (nomuIdGrp <> -666) then
    begin
      dm1.OstatkiNomu_id_grp.Asinteger := nomuIdGrp;
      dm1.OstatkiKol_Trans.AsFloat := kolTrans;
      dm1.OstatkiKol_grp.AsFloat := kolGrp;
      dm1.OstatkiVes_Trans.AsFloat := vesTrans;
    end;
  end;
  DM1.Ostatki.Post;
  DM1.Ostatki.ApplyUpdates;
  dm1.commitWriteTrans(true);
  dm1.Ostatki.Active := false;
  dm1.Ostatki.Active := true;
end;

procedure TFGotProd.PostSeria(seria : string; ksmId : integer; dateVipusk : TDate;
                              kolSeria : double; comment : string);
begin
  dm1.Seria.Active := false;
  dm1.Seria.ParamByName('KSM_ID').AsInteger := ksmId;
  dm1.Seria.Active := true;
  dm1.Seria.First;
  if ((dm1.Seria.Locate('seria', seria, [])) and (seria <> ''))
     or (dm1.Seria.locate('comment', comment, []) and (seria = '') and (comment <> '')) then
  begin
    dm1.Seria.Edit;
    dm1.SeriaDate_vipusk.AsDateTime := dateVipusk;
    vseria_id := dm1.SeriaSeria_id.AsInteger;
    dm1.Seria.Post;
  end
  else
  begin
    s_ksm := ksmId;
    s_seria := seria;
    dm1.Seria.Insert;
    dm1.SeriaDate_vipusk.AsDateTime := dateVipusk;
    dm1.SeriaCOMMENT.AsString := UserName + '/' + seria + '/' + DateTimeToStr(Now) + '/'
                                 + FloatToStr(kolSeria) + '/' + DM1.SeriaSERIA_ID.AsString;
    dm1.Seria.Post;
  end;
  dm1.Seria.ApplyUpdates;
end;

procedure TFGotProd.setStruk(strukId: Integer);
begin
  if (StrukQuery.Active) then
  begin
    StrukQuery.Locate('struk_id', strukId, []);
    GotPrNaklTbl.StrukCombo.KeyValue := StrukQuerySTRUK_ID.AsString;
    GotPrVipusk.StrukCombo.KeyValue := StrukQuerySTRUK_ID.AsString;
  end;
end;

procedure TFGotProd.setBeginEndDate(sender : integer);
begin
  beginDate := EncodeDate(curGod, curMes, 1);
  endDate := dm1.LastDayOfMonth(curMes, curGod);
  if (sender = 1) then
  begin
    GotPrVipusk.curMonthCombo.ItemIndex := GotPrNaklTbl.curMonthCombo.ItemIndex;
    GotPrVipusk.YearEdit.Text := GotPrNaklTbl.YearEdit.Text;
  end;
  if (sender = 2) then
  begin
    GotPrNaklTbl.curMonthCombo.ItemIndex := GotPrNaklTbl.curMonthCombo.ItemIndex;
    GotPrNaklTbl.YearEdit.Text := GotPrNaklTbl.YearEdit.Text;
  end;
end;

procedure TFGotProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  GotPrVipusk.cancelUpd;
  GotPrNaklTbl.cancelUpd;
  GotPrVipusk.StrukCombo.OnChange := nil;
  GotPrNaklTbl.StrukCombo.OnChange := nil;
  if StrukQuery.Active then
    StrukQuery.Active := false;
  GotPrVipusk.StrukCombo.OnChange := GotPrVipusk.StrukComboChange;
  GotPrNaklTbl.StrukCombo.OnChange := GotPrNaklTbl.StrukComboChange;
end;

procedure TFGotProd.FormCreate(Sender: TObject);
begin
  curStrukId := vStruk_Id;
end;

procedure TFGotProd.FormShow(Sender: TObject);
begin
  curMes := MES_conf;
  curGod := GOD_conf;
  if GotPrNaklTbl = nil then
  begin
    GotPrNaklTbl := TFGotProdNaklTbl.Create(Application);
    GotPrNaklTbl.Parent := NaklPage;
    GotPrNaklTbl.Align := alClient;
    GotPrNaklTbl.Visible := true;
  end;

  if GotPrVipusk = nil then
  begin
    GotPrVipusk := TFGotProdVipusk.Create(Application);
    GotPrVipusk.Parent := VipuskPage;
    GotPrVipusk.Align := alClient;
    GotPrVipusk.Visible := true;
  end;

  GotPrVipusk.StrukCombo.OnChange := nil;
  GotPrNaklTbl.StrukCombo.OnChange := nil;
  if StrukQuery.Active then
    StrukQuery.Active := false;
  StrukQuery.Active := true;
  GotPrVipusk.StrukCombo.OnChange := GotPrVipusk.StrukComboChange;
  GotPrNaklTbl.StrukCombo.OnChange := GotPrNaklTbl.StrukComboChange;   
  setStruk(vStruk_Id);
  GotPrNaklTbl.YearEdit.Text := IntToStr(GOD_conf);
  GotPrNaklTbl.curMonthCombo.ItemIndex := MES_conf - 1;
  setBeginEndDate(1);
  GotPrNaklTbl.loadGotNaklTbl;

  GotPrVipusk.YearEdit.Text := IntToStr(GOD_conf);
  GotPrVipusk.curMonthCombo.ItemIndex := MES_conf - 1;
  GotPrVipusk.loadVipuskTbls;

end;

procedure TFGotProd.GotProdTabChange(Sender: TObject);
begin
  if (GotProdTab.ActivePageIndex = 0) then
    GotPrNaklTbl.loadGotNaklTbl;
  if (GotProdTab.ActivePageIndex = 1) then
    GotPrVipusk.loadVipuskTbls;
end;

end.
