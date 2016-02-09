unit PlanVipusk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, Spin, Grids, DBGridEh, FindDlgEh, RxMemDS;

type
  TFPlanVipusk = class(TForm)
    ToolPanel: TPanel;
    OpenSprBtn: TSpeedButton;
    ChooseBtn: TSpeedButton;
    ExitBtn: TSpeedButton;
    Panel1: TPanel;
    Label3: TLabel;
    curMonthCombo: TComboBox;
    YearEdit: TSpinEdit;
    Label1: TLabel;
    PlanVipuskGrid: TDBGridEh;
    FindDlgEh1: TFindDlgEh;

    procedure showSpprod;

    procedure loadVipusk;
    procedure FormShow(Sender: TObject);
    procedure YearEditChange(Sender: TObject);
    procedure curMonthComboChange(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure ChooseBtnClick(Sender: TObject);
    procedure OpenSprBtnClick(Sender: TObject);
    procedure PlanVipuskGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strukId, curMonth, curYear : integer;
  end;

var
  FPlanVipusk: TFPlanVipusk;

  s_kodp, s_kei, s_korg, s_Sprod_id : integer;
  s_gost, s_xarkt, s_nmat, s_kodProd, s_namorg, s_neiz, s_namreg : string; 

implementation

{$R *.dfm}

uses dm, Find_Spprod;

procedure TFPlanVipusk.ChooseBtnClick(Sender: TObject);
begin
  s_kodp := dm1.VipuskMemKSM_ID.AsInteger;
  s_gost := dm1.VipuskMemGOST.AsString;
  s_xarkt := dm1.VipuskMemXARKT.AsString;
  s_nmat := dm1.VipuskMemNMAT.AsString;
  s_kei := dm1.VipuskMemKEI_ID.VALUE;
  s_korg := dm1.VipuskMemKORG.VALUE;
  s_kodProd := dm1.VipuskMemKOD_PROD.AsString;
  s_namorg := dm1.VipuskMemNAME_ORG.AsString;
  s_neiz := dm1.VipuskMemNEIS.AsString;
  s_Sprod_id := dm1.VipuskMemSprod_Id.AsInteger;
  s_namreg := dm1.VipuskMemNAM_REG.AsString;
  ModalResult := dm1.VipuskMemKSM_ID.AsInteger + 50;
end;

procedure TFPlanVipusk.curMonthComboChange(Sender: TObject);
begin
  curMonth := curMonthCombo.ItemIndex + 1;
  loadVipusk;
end;

procedure TFPlanVipusk.PlanVipuskGridDblClick(Sender: TObject);
begin
  ChooseBtnClick(sender);
end;

procedure TFPlanVipusk.ExitBtnClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFPlanVipusk.FormShow(Sender: TObject);
begin
  yearEdit.Text := IntToStr(curYear);
  curMonthCombo.ItemIndex := curMonth - 1;
end;

procedure TFPlanVipusk.loadVipusk;
begin
  dm1.VipuskMem.Close;
  dm1.VipuskMem.EmptyTable;
  dm1.VipuskMem.Open;
  dm1.PlanVipuskQuery.Active := false;
  dm1.PlanVipuskQuery.ParamByName('god').AsInteger := curYear;
  dm1.PlanVipuskQuery.ParamByName('mes').AsInteger := curMonth;
  dm1.PlanVipuskQuery.ParamByName('struk_id').AsInteger := strukId;
  dm1.PlanVipuskQuery.Active := true;
  dm1.PlanVipuskQuery.FetchAll;
  dm1.VipuskMem.LoadFromDataSet(dm1.PlanVipuskQuery, 0, lmAppend);

  dm1.FactVipuskQuery.Close;
  dm1.FactVipuskQuery.ParamByName('struk_id').AsInteger := strukId;


  s_dat1 := DateToStr(encodeDate(curYear, curMonth, 1));
  if (curMonth = 12) then
    s_dat2 := DateToStr(encodeDate(curYear + 1, 1, 1) - 1)
  else
    s_dat2 := DateToStr(encodeDate(curYear, curMonth + 1, 1) - 1);

  dm1.FactVipuskQuery.ParamByName('dat1').AsString := s_dat1;
  dm1.FactVipuskQuery.ParamByName('dat2').AsString := s_dat2;
  dm1.FactVipuskQuery.Open;
  dm1.FactVipuskQuery.FetchAll;
  if (dm1.FactVipuskQuery.RecordCount > 0) then
  begin
    dm1.FactVipuskQuery.First;
    while (not dm1.FactVipuskQuery.Eof) do
    begin
      if (dm1.PlanVipuskQuery.RecordCount > 0)
         and (not dm1.PlanVipuskQuery.Locate('kod_prod', dm1.FactVipuskQueryKOD_PROD.AsString, [])) then
      begin
        dm1.VipuskMem.Append;
        dm1.VipuskMemGOD.AsInteger := curYear;
        dm1.VipuskMemMES.AsInteger := curMonth;
        dm1.VipuskMemKSM_ID.AsInteger := dm1.FactVipuskQueryKSM_ID.AsInteger;
        dm1.VipuskMemSTRUK_ID.AsInteger := vStruk_Id;
        dm1.VipuskMemKEI_ID.AsInteger := dm1.FactVipuskQueryKEI_ID.AsInteger;
        dm1.VipuskMemKORG.AsInteger := dm1.FactVipuskQueryKORG.AsInteger;
        dm1.VipuskMemSPROD_ID.AsInteger := dm1.FactVipuskQuerySPROD_ID.AsInteger;
        dm1.VipuskMemNMAT.AsString := dm1.FactVipuskQueryNMAT.AsString;
        dm1.VipuskMemXARKT.AsString := dm1.FactVipuskQueryXARKT.AsString;
        dm1.VipuskMemKOD_PROD.AsString := dm1.FactVipuskQueryKOD_PROD.AsString;
        dm1.VipuskMemNAM_REG.AsString := dm1.FactVipuskQueryNAM_REG.AsString;
        dm1.VipuskMemNEIS.AsString := dm1.FactVipuskQueryNEIS.AsString;
        dm1.VipuskMemGOST.AsString := dm1.FactVipuskQueryGOST.AsString;
        dm1.VipuskMemNAME_ORG.AsString := dm1.FactVipuskQueryNAME_ORG.AsString;
      end;
      dm1.FactVipuskQuery.Next;
    end;
  end;
end;

procedure TFPlanVipusk.OpenSprBtnClick(Sender: TObject);
begin
  showSpprod;
end;

procedure TFPlanVipusk.showSpprod;
begin
  if FindSpprod = nil then
    FindSpprod := TfindSpprod.Create(Application);
  FindSpprod.DataBaseName := dm1.BELMED;
  FindSpprod.ReadOnly := true;
  FindSpprod.Usl_Struk := 'spprod.struk_id = ' + inttostr(vStruk_id);
  FindSpprod.ShowModal;
  if FindSpprod.ModalResult > 50 then
  begin
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
    ModalResult := s_kodp + 50;
  end;
end;

procedure TFPlanVipusk.YearEditChange(Sender: TObject);
begin
  curYear := StrToInt(yearEdit.Text);
  loadVipusk;
end;

end.
