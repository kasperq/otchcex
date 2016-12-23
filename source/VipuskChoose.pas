unit VipuskChoose;

interface

uses DBDM, Find_Spprod,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, RxIBQuery, ExtCtrls,
  FindDlgEh, Grids, DBGridEh, StdCtrls, Spin, Buttons;

type
  TFVipuskChoose = class(TForm)
    ToolPanel: TPanel;
    OpenSprBtn: TSpeedButton;
    ChooseBtn: TSpeedButton;
    ExitBtn: TSpeedButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    curMonthCombo: TComboBox;
    YearEdit: TSpinEdit;
    grid_plan: TDBGridEh;
    FindDlgEh1: TFindDlgEh;
    Panel2: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    grid_fact: TDBGridEh;
    Label4: TLabel;
    FindDlgEh2: TFindDlgEh;
    ds_planVipusk: TDataSource;
    ds_factVipusk: TDataSource;
    q_factVipusk: TRxIBQuery;
    q_factVipuskDOC_ID: TIntegerField;
    q_factVipuskSTROKA_ID: TIntegerField;
    q_factVipuskKSM_ID: TIntegerField;
    q_factVipuskKOD_PROD: TIBStringField;
    q_factVipuskNEIS: TIBStringField;
    q_factVipuskNMAT: TIBStringField;
    q_factVipuskXARKT: TIBStringField;
    q_factVipuskGOST: TIBStringField;
    q_factVipuskKEI_ID: TSmallintField;
    q_factVipuskNAM_REG: TIBStringField;
    q_factVipuskKORG: TIntegerField;
    q_factVipuskNAME_ORG: TIBStringField;
    q_factVipuskSPROD_ID: TIntegerField;
    q_planVipusk: TRxIBQuery;
    q_planVipuskGOD: TSmallintField;
    q_planVipuskMES: TSmallintField;
    q_planVipuskKOL: TFMTBCDField;
    q_planVipuskKSM_ID: TIntegerField;
    q_planVipuskNMAT: TIBStringField;
    q_planVipuskXARKT: TIBStringField;
    q_planVipuskKOD_PROD: TIBStringField;
    q_planVipuskSTRUK_ID: TSmallintField;
    q_planVipuskKEI_ID: TSmallintField;
    q_planVipuskNAM_REG: TIBStringField;
    q_planVipuskNEIS: TIBStringField;
    q_planVipuskGOST: TIBStringField;
    q_planVipuskKORG: TIntegerField;
    q_planVipuskSPROD_ID: TIntegerField;
    q_planVipuskNAME_ORG: TIBStringField;
    trans_read: TIBTransaction;
    q_factVipuskKOL_PRIH: TFMTBCDField;
    procedure FormShow(Sender: TObject);
    procedure curMonthComboChange(Sender: TObject);
    procedure YearEditChange(Sender: TObject);
    procedure ChooseBtnClick(Sender: TObject);
    procedure OpenSprBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure grid_planDblClick(Sender: TObject);
    procedure grid_factDblClick(Sender: TObject);
    procedure grid_planCellClick(Column: TColumnEh);
    procedure grid_factCellClick(Column: TColumnEh);
  private
    m_strukId, m_month, m_year, m_ksmIdDrug, m_keiIdDrug, m_keiOrg, m_sprodId : integer;
    m_gost, m_xarkt, m_nmat, m_kodProd, m_namOrg, m_neiz, m_namReg : string;

    procedure showSpprod;
    procedure loadVipusk;

  public
    db : TdDM;


    procedure setParams(var db : TdDM; month, year, strukId : integer);

    property strukId : integer read m_strukId write m_strukId;
    property month : integer read m_month write m_month;
    property year : integer read m_year write m_year;
    property ksmIdDrug : integer read m_ksmIdDrug write m_ksmIdDrug;
    property keiIdDrug : integer read m_keiIdDrug write m_keiIdDrug;
    property keiOrg : integer read m_keiOrg write m_keiOrg;
    property sprodId : integer read m_sprodId write m_sprodId;
    property gost : string read m_gost write m_gost;
    property xarkt : string read m_xarkt write m_xarkt;
    property nmatDrug : string read m_nmat write m_nmat;
    property kodProd : string read m_kodProd write m_kodProd;
    property namOrg : string read m_namOrg write m_namOrg;
    property neiz : string read m_neiz write m_neiz;
    property namReg : string read m_namReg write m_namReg;
  end;

implementation

{$R *.dfm}

procedure TFVipuskChoose.ChooseBtnClick(Sender: TObject);
begin
  ModalResult := ksmIdDrug + 50;
end;

procedure TFVipuskChoose.curMonthComboChange(Sender: TObject);
begin
  month := curMonthCombo.ItemIndex + 1;
  loadVipusk;
end;

procedure TFVipuskChoose.ExitBtnClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFVipuskChoose.FormShow(Sender: TObject);
begin
  yearEdit.Text := IntToStr(year);
  curMonthCombo.ItemIndex := month - 1;
end;

procedure TFVipuskChoose.grid_factCellClick(Column: TColumnEh);
begin
  ksmIdDrug := q_factVipuskKSM_ID.AsInteger;
  gost := q_factVipuskGOST.AsString;
  xarkt := q_factVipuskXARKT.AsString;
  nmatDrug := q_factVipuskNMAT.AsString;
  keiIdDrug := q_factVipuskKEI_ID.VALUE;
  keiOrg := q_factVipuskKORG.VALUE;
  kodProd := q_factVipuskKOD_PROD.AsString;
  namOrg := q_factVipuskNAME_ORG.AsString;
  neiz := q_factVipuskNEIS.AsString;
  sprodId := q_factVipuskSprod_Id.AsInteger;
  namReg := q_factVipuskNAM_REG.AsString;
end;

procedure TFVipuskChoose.grid_factDblClick(Sender: TObject);
begin
  ChooseBtnClick(sender);
end;

procedure TFVipuskChoose.grid_planCellClick(Column: TColumnEh);
begin
  ksmIdDrug := q_planVipuskKSM_ID.AsInteger;
  gost := q_planVipuskGOST.AsString;
  xarkt := q_planVipuskXARKT.AsString;
  nmatDrug := q_planVipuskNMAT.AsString;
  keiIdDrug := q_planVipuskKEI_ID.VALUE;
  keiOrg := q_planVipuskKORG.VALUE;
  kodProd := q_planVipuskKOD_PROD.AsString;
  namOrg := q_planVipuskNAME_ORG.AsString;
  neiz := q_planVipuskNEIS.AsString;
  sprodId := q_planVipuskSprod_Id.AsInteger;
  namReg := q_planVipuskNAM_REG.AsString;
end;

procedure TFVipuskChoose.grid_planDblClick(Sender: TObject);
begin
  ChooseBtnClick(sender);
end;

procedure TFVipuskChoose.loadVipusk;
var
  date1, date2 : TDate;
begin
  q_planVipusk.Close;
  q_planVipusk.ParamByName('god').AsInteger := year;
  q_planVipusk.ParamByName('mes').AsInteger := month;
  q_planVipusk.ParamByName('struk_id').AsInteger := strukId;
  q_planVipusk.Open;
  q_planVipusk.FetchAll;

  date1 := encodeDate(year, month, 1);
  if (month = 12) then
    date2 := encodeDate(year + 1, 1, 1) - 1
  else
    date2 := encodeDate(year, month + 1, 1) - 1;

  q_factVipusk.Close;
  q_factVipusk.ParamByName('struk_id').AsInteger := strukId;
  q_factVipusk.ParamByName('dat1').AsDate := date1;
  q_factVipusk.ParamByName('dat2').AsDate := date2;
  q_factVipusk.Open;
  q_factVipusk.FetchAll;
end;

procedure TFVipuskChoose.OpenSprBtnClick(Sender: TObject);
begin
  showSpprod;
end;

procedure TFVipuskChoose.setParams(var db: TdDM; month, year, strukId : integer);
begin
  self.db := db;
  trans_read.DefaultDatabase := db.db;
  q_factVipusk.Database := db.db;
  q_planVipusk.Database := db.db;
  self.month := month;
  self.year := year;
  self.strukId := strukId;
end;

procedure TFVipuskChoose.showSpprod;
begin
  if (FindSpprod = nil) then
    FindSpprod := TfindSpprod.Create(Application);
  FindSpprod.DataBaseName := db.db;
  FindSpprod.ReadOnly := true;
  FindSpprod.Usl_Struk := 'spprod.struk_id = ' + inttostr(strukId);
  FindSpprod.ShowModal;
  if (FindSpprod.ModalResult > 50) then
  begin
    ksmIdDrug := FindSpprod.ModalResult - 50;
    gost := FindSpprod.IBSpprodGOST.AsString;
    xarkt := FindSpprod.IBSpprodXARKT.AsString;
    nmatDrug := FindSpprod.IBSpprodNMAT.AsString;
    keiIdDrug := FindSpprod.IBSpprodKEI_ID.VALUE;
    keiOrg := FindSpprod.IBSpprodKORG.VALUE;
    kodProd := FindSpprod.IBSpprodKOD_PROD.AsString;
    namOrg := FindSpprod.IBSpprodNAME_ORG.AsString;
    neiz := FindSpprod.IBSpprodNEIS.AsString;
    sprodId := FindSpprod.IBSpprodSprod_Id.AsInteger;
    ModalResult := ksmIdDrug + 50;
  end;
end;

procedure TFVipuskChoose.YearEditChange(Sender: TObject);
begin
  year := StrToInt(yearEdit.Text);
  loadVipusk;
end;

end.
