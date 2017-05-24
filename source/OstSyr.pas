  unit OstSyr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, DBCtrls, StdCtrls, ExtCtrls, FR_Class, FR_DSet, FR_DBSet,
  Buttons, ImgList, ComCtrls, ToolWin, Mask, ToolEdit, Spin, Menus, FR_Desgn;

type
  TFOstSyr = class(TForm)
    DBGridEh1: TDBGridEh;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    SpeedButton3: TSpeedButton;
    ImageList1: TImageList;
    Label4: TLabel;
    DateEdit3: TDateEdit;
    Label5: TLabel;
    DateEdit4: TDateEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    curMonthCombo: TComboBox;
    monthSpnBtn: TSpinButton;
    YearEdit: TSpinEdit;
    ToolBar2: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Label1: TLabel;
    popMenu_print: TPopupMenu;
    menu_print: TMenuItem;
    menu_printBalans: TMenuItem;
    N21: TMenuItem;
    frDesigner1: TfrDesigner;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure ToolButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure YearEditChange(Sender: TObject);
    procedure curMonthComboChange(Sender: TObject);
    procedure monthSpnBtnDownClick(Sender: TObject);
    procedure monthSpnBtnUpClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure menu_printClick(Sender: TObject);
    procedure menu_printBalansClick(Sender: TObject);
    procedure N21Click(Sender: TObject);

  private
    curDateBeginStr, curDateEndStr : string; 
    procedure setDateEdits;

  public
    { Public declarations }
  end;

var
  FOstSyr: TFOstSyr;

implementation
  uses dm,ostatki,GlMenu,Find_Matrop;
{$R *.dfm}

procedure TFOstSyr.curMonthComboChange(Sender: TObject);
begin
  setDateEdits;
  SpeedButton1Click(Sender);
end;

procedure TFOstSyr.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_ESCAPE) then
    self.Close;
end;

procedure TFOstSyr.Edit1Click(Sender: TObject);
begin
  edit1.text := '';
end;

procedure TFOstSyr.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    if (edit1.text <> '') then
    begin
      dM1.Matrop.Active := false;
      dM1.Matrop.ParamByName('ksm').AsInteger := strtoint(edit1.text);
      dM1.Matrop.Active := TRUE;
      if (not dm1.Matrop.eof) then
      begin
        s_ksm := strtoint(edit1.text);
        Label7.Caption := dm1.Matrop.FieldByName('Nmat').AsString;
        Label8.Caption := dm1.Matrop.FieldByName('Neis').AsString;
        SpeedButton1Click(Sender);
      end;
    end;
  end;
end;

procedure TFOstSyr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dm1.OstSyr.Close;
end;

procedure TFOstSyr.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_ESCAPE) then
    self.Close;
end;

procedure TFOstSyr.FormShow(Sender: TObject);
var
  year, month, day : word;
begin
  if (s_ksm <> 0) then
  begin
    curDateBeginStr := datetostr(DateEdit3.Date);
    curDateEndStr := datetostr(DateEdit4.Date);
    dm1.OstSyr.Close;
    dm1.OstSyr.MacroByName('DAT1').AsString := '''' + curDateBeginStr + '''';
    dm1.OstSyr.MacroByName('DAT2').AsString := '''' + curDateEndStr + '''';
    dm1.OstSyr.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
    dm1.OstSyr.ParamByName('KSM').AsInteger := S_Ksm;
    dm1.OstSyr.Open;
    label7.Caption := dm1.OstSyrNmat.AsString;
    label8.Caption := dm1.OstSyrNeis.AsString;
    edit1.text := inttostr(s_ksm);
       
    DecodeDate(StrToDate(curDateBeginStr), year, month, day);
    curMonthCombo.ItemIndex := month - 1;
    YearEdit.OnChange := nil;
    yearEdit.Value := year;
    YearEdit.OnChange := YearEditChange;
  end
  else
  begin
    label7.Caption := '';
    label8.Caption := '';
    edit1.text := '';
    DecodeDate(Now, year, month, day);
    curMonthCombo.ItemIndex := month - 1;
    curMonthComboChange(sender);
    yearEdit.Value := year;
//    setDateEdits;
//    SpeedButton1Click(Sender);
  end;
end;

procedure TFOstSyr.frReport1GetValue(const ParName: string; var ParValue: Variant);
var
  s_nm : integer;
  s_gd : integer;
begin
  s_gd := god;
  if (mes = 12) then
  begin
    s_nm := 1;
    s_gd := god + 1
  end
  else
    s_nm := mes + 1;
  nammes := dm1.MesNameInRodPodezhSmall(s_nm);
  if (ParName = 'nammes') then ParValue:=nammes;
  if (ParName = 'god') then
  ParValue:=s_gd;
  if (ParName = 'namceh') then
    ParValue := FGlmenu.RxLabel1.Caption;
  if (ParName = 'ksm') then
    ParValue := Edit1.Text;
  if (ParName = 'nmat') then
    ParValue := Label7.Caption;
  if (ParName = 'dat1') then
    ParValue := curDateBeginStr;
  if (ParName = 'dat2') then
    ParValue := curDateEndStr;
end;

procedure TFOstSyr.SpeedButton1Click(Sender: TObject);
begin
  if (s_ksm <> 0) then
  begin
    curDateBeginStr := datetostr(DateEdit3.Date);
    curDateEndStr := datetostr(DateEdit4.Date);
    dm1.OstSyr.Close;
    dm1.OstSyr.MacroByName('DAT1').AsString := '''' + curDateBeginStr + '''';
    dm1.OstSyr.MacroByName('DAT2').AsString := '''' + curDateEndStr + '''';
    dm1.OstSyr.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
    dm1.OstSyr.ParamByName('KSM').AsInteger := S_Ksm;
    dm1.OstSyr.Open;
  end;
end;

procedure TFOstSyr.SpeedButton3Click(Sender: TObject);
begin
 edit1.Text:='';
 if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
 FindMatrop.DataBaseName:=dm1.BELMED;
 FindMatrop.ReadOnly:=true;
 FindMatrop.ShowModal;
 if FindMatrop.ModalResult > 50 then
 begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=FindMatrop.ModalResult-50;
  dM1.Matrop.Active:=TRUE;
  Edit1.Text :=INTTOSTR(FindMatrop.ModalResult-50);
  s_ksm:=FindMatrop.ModalResult-50;
//  Label9.Caption :=dm1.MatropGOST.AsString;
  Label7.Caption:=dm1.MatropNMAT.AsString;
  Label8.Caption :=dm1.MatropNeis.AsString;
 end;
end;

procedure TFOstSyr.menu_printBalansClick(Sender: TObject);
begin
  dm1.OstSyr.DisableControls;
  FrReport1.LoadFromFile(reportsPath + 'P_balans_1.frf');
  FrReport1.ShowReport;
  dm1.OstSyr.EnableControls;
end;

procedure TFOstSyr.menu_printClick(Sender: TObject);
begin
  dm1.OstSyr.DisableControls;
  FrReport1.LoadFromFile(reportsPath + 'P_balans.frf');
  FrReport1.ShowReport;
  dm1.OstSyr.EnableControls;
end;

procedure TFOstSyr.monthSpnBtnDownClick(Sender: TObject);
begin
  if (curMonthCombo.ItemIndex > 0) then
  begin
    curMonthCombo.ItemIndex := curMonthCombo.ItemIndex - 1;
    curMonthComboChange(sender);
  end
  else
  begin
    curMonthCombo.ItemIndex := 11;
    curMonthComboChange(sender);
  end;
end;

procedure TFOstSyr.monthSpnBtnUpClick(Sender: TObject);
begin
  if (curMonthCombo.ItemIndex < 11) then
  begin
    curMonthCombo.ItemIndex := curMonthCombo.ItemIndex + 1;
    curMonthComboChange(sender);
  end
  else
  begin
    curMonthCombo.ItemIndex := 0;
    curMonthComboChange(sender);
  end;
end;

procedure TFOstSyr.N21Click(Sender: TObject);
begin
  dm1.OstSyr.DisableControls;
  FrReport1.LoadFromFile(reportsPath + 'P_balans_2.frf');
  FrReport1.ShowReport;
  dm1.OstSyr.EnableControls;
end;

procedure TFOstSyr.ToolButton1Click(Sender: TObject);
begin
  dm1.OstSyr.DisableControls;
  FrReport1.LoadFromFile(reportsPath + 'P_balans.frf');
  FrReport1.ShowReport;
  dm1.OstSyr.EnableControls;
end;

procedure TFOstSyr.ToolButton2Click(Sender: TObject);
begin
  if s_ksm <> 0 then
  begin
    curDateBeginStr := datetostr(DateEdit3.Date);
    curDateEndStr := datetostr(DateEdit4.Date);
    dm1.OstSyr.Close;
    dm1.OstSyr.MacroByName('DAT1').AsString := '''' + curDateBeginStr + '''';
    dm1.OstSyr.MacroByName('DAT2').AsString := '''' + curDateEndStr + '''';
    dm1.OstSyr.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
    dm1.OstSyr.ParamByName('KSM').AsInteger := S_Ksm;
    dm1.OstSyr.Open;
  end;
end;

procedure TFOstSyr.YearEditChange(Sender: TObject);
begin
  if (YearEdit.Text <> '') and (length(YearEdit.Text) = 4) then
  begin
    setDateEdits;
    SpeedButton1Click(Sender);
  end;
end;

procedure TFOstSyr.setDateEdits;
begin
  dateEdit3.Date := StrToDate('01.' + IntToStr(curMonthCombo.ItemIndex + 1)
                              + '.' + YearEdit.Text);
  dateEdit4.Date := dm1.LastDayOfMonth(curMonthCombo.ItemIndex + 1, YearEdit.Value);
end;

end.
