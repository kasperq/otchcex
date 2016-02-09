unit TechJournPrep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGridEh, ToolWin, ComCtrls, Buttons, Spin, StdCtrls,
  DB, kbmMemTable, IBCustomDataSet, IBQuery, RxIBQuery;

type
  TFTechJournPrep = class(TForm)
    Panel1: TPanel;
    grid_seria: TDBGridEh;
    Splitter1: TSplitter;
    Panel2: TPanel;
    grid_zagruz: TDBGridEh;
    btn_vipusk: TSpeedButton;
    pnl_top: TPanel;
    pnl_seriaTop: TPanel;
    Label41: TLabel;
    edt_kodPrep: TEdit;
    btn_prepList: TSpeedButton;
    lbl_prepNmat: TLabel;
    lbl_prepRegion: TLabel;
    btn_save: TSpeedButton;
    pnl_topZagruz: TPanel;
    btn_dvigSir: TSpeedButton;
    btn_add: TSpeedButton;
    btn_del: TSpeedButton;
    Label5: TLabel;
    edt_year: TSpinEdit;
    edt_month: TSpinEdit;
    q_seriaDoc: TRxIBQuery;
    mem_seriaDoc: TkbmMemTable;
    ds_seriaDoc: TDataSource;
    mem_seriaDocSERIA: TStringField;
    mem_seriaDocSAVED: TIntegerField;
    q_seriaDocNDOK: TIBStringField;
    q_seriaDocSERIA: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure btn_prepListClick(Sender: TObject);
    procedure btn_vipuskClick(Sender: TObject);
  private
    { Private declarations }
    curKsmId : integer;

    procedure loadSeriaDocument;

  public
    { Public declarations }
    procedure loadTechJournPrep;
  end;

var
  FTechJournPrep: TFTechJournPrep;

implementation

{$R *.dfm}
uses TechJourn, dm, PlanVipusk;

procedure TFTechJournPrep.btn_prepListClick(Sender: TObject);
begin
  if (FPlanVipusk = nil) then
    FPlanVipusk := TFPlanVipusk.Create(Application);
  FPlanVipusk.curMonth := FTechJourn.curMonth;
  FPlanVipusk.curYear := FTechJourn.curYear;
  FPlanVipusk.strukId := FTechJourn.curStrukId;
  FPlanVipusk.ShowModal;
  if (FPlanVipusk.ModalResult > 50) then
  begin
    s_kodp := FPlanVipusk.ModalResult - 50;
    s_gost := PlanVipusk.s_gost;
    s_xarkt := PlanVipusk.s_xarkt;
    s_nmat := PlanVipusk.s_nmat;
    s_kei := PlanVipusk.s_kei;
    s_korg := PlanVipusk.s_korg;
    s_kodProd := PlanVipusk.s_kodProd;
    s_namorg := PlanVipusk.s_namorg;
    s_neiz := PlanVipusk.s_neiz;
    s_Sprod_id := PlanVipusk.s_Sprod_id;
    s_namreg := PlanVipusk.s_namreg;

    edt_kodPrep.Text := s_kodProd;
    lbl_prepNmat.Caption := s_nmat;
    lbl_prepRegion.Caption := s_namreg;

    loadTechJournPrep;
  end;
end;

procedure TFTechJournPrep.btn_vipuskClick(Sender: TObject);
begin
  btn_prepListClick(sender);
end;

procedure TFTechJournPrep.FormShow(Sender: TObject);
begin
  loadTechJournPrep;
end;

procedure TFTechJournPrep.loadTechJournPrep;
begin
  edt_kodPrep.Text := s_kodProd;
  lbl_prepNmat.Caption := s_nmat;
  lbl_prepRegion.Caption := s_namreg;
  curKsmId := s_kodp;
  edt_month.Text := IntToStr(FTechJourn.curMonth);
  edt_year.Text := IntToStr(FTechJourn.curYear);

  loadSeriaDocument;
end;

procedure TFTechJournPrep.loadSeriaDocument;
begin
  q_seriaDoc.Close;
  q_seriaDoc.ParamByName('ksm_idpr').AsInteger := s_kodp;
  q_seriaDoc.ParamByName('dat1').AsDate := StrToDate(s_dat1);
  q_seriaDoc.ParamByName('dat2').AsDate := StrToDate(s_dat2);
  q_seriaDoc.ParamByName('struk_id').AsInteger := vStruk_Id;
  q_seriaDoc.Open;

  mem_seriaDoc.EmptyTable;
  mem_seriaDoc.LoadFromDataSet(q_seriaDoc, [mtcpoAppend]);
  mem_seriaDoc.Open;
end;

end.
