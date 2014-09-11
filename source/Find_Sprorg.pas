unit Find_Sprorg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, ToolWin, ComCtrls, DB,
  IBCustomDataSet, IBQuery, ImgList, Buttons, StdCtrls, FindDlgEh, Mask,
  DBCtrls, RxIBQuery,SplshWnd, BDEConfig, IBDataBase, UtilR, RxStrUtils;

type
  TFindSprorg = class(TForm)
    ToolBar1: TToolBar;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    FindDlgEh1: TFindDlgEh;
    ToolButton4: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ButTip: TSpeedButton;
    ButReg: TSpeedButton;
    ButCity: TSpeedButton;
    NameReg: TDBEdit;
    NameCity: TDBEdit;
    NameTip: TDBEdit;
    IBSprorg: TRxIBQuery;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    Panel2: TPanel;
    Label4: TLabel;
    Edit1: TEdit;
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    Procedure IBSprorgActive;
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Public_Id :Integer;
    ReadOnly : Boolean;
    DataBaseName : TIBDatabase;
    Org_Name: String;
  end;

var
  FindSprorg: TFindSprorg;
  Usl_Ord : String;
  Usl_Reg : String;
  Usl_Tip : String;
  Usl_City : String;
  FirstVxod : Boolean;
  AniBmp1: TBitmap; 
implementation

uses Inf_Klient, Vibor_Spr;

{$R *.dfm}
procedure TFindSprorg.DBGridEh1SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
  Usl_Ord := '';
  for i := 0 to DBGridEh1.SortMarkedColumns.Count-1 do
  if DBGridEh1.SortMarkedColumns[i].Title.SortMarker = smUpEh then
  begin
     Usl_Ord := USL_ORD + 'Sprorg."'+ DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
  end
  else
  begin
     Usl_Ord := Usl_Ord + 'Sprorg."'+DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ', ';
  end;
  if Usl_Ord <> '' then  Usl_Ord := Copy(Usl_Ord,1,Length(Usl_Ord)-2);
  IBSprorgActive;
end;

procedure TFindSprorg.FormShow(Sender: TObject);
begin
 If ViborSpr = nil then
 begin
    Application.CreateForm(TViborSpr, ViborSpr);
 end;
 if ViborSpr.IBSprav.Database = nil then
    ViborSpr.IBSprav.Database := DataBaseName;
 If InfKlient = nil then
 begin
    Application.CreateForm(TInfKlient, InfKlient);
 end;
 if InfKlient.IBQuery1.Database = nil then
   InfKlient.IBQuery1.Database :=  DataBaseName;
 If FirstVxod then
 begin
    Usl_Ord := 'SPRORG.NAM';
    Usl_Reg := '0=0';
    Usl_Tip := '0=0';
    Usl_City := '0=0';
    IBSprorg.Database := DataBaseName;
    IBSprorgActive;
    FirstVxod := False;
 end   
 else
    IBSprorgActive;   
 IBSprorg.Filtered := False;
 If Public_Id <> 0 then IBSprorg.Locate('Kod',Public_Id,[]);
 If ReadOnly then
 begin
    ToolButton9.Visible := False;
    ToolButton10.Visible := False;
 end
 else
 begin
    ToolButton9.Visible := True;
    ToolButton10.Visible := True;
 end;
end;

procedure TFindSprorg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBSprorg.Active := False;
end;

procedure TFindSprorg.ToolButton1Click(Sender: TObject);
var s: String;
begin
if FindDlgEh1.Filtered = True then
     begin
       FindDlgEh1.Filtered := False;
       Edit1.Text:='';
     end;
  if FindDlgEh1.Execute=mrCancel then
       Edit1.Text:=''
     else
       S:=FindDlgEh1.VerbalUsl.Text;
       Edit1.Text:=ReplaceStr(S,chr(13)+chr(10),'');
end;

procedure TFindSprorg.ToolButton2Click(Sender: TObject);
begin
  InfKlient.Tag := IBSprorg.FieldByName('Kod').AsInteger;
  InfKlient.Show;
end;


procedure TFindSprorg.IBSprorgActive;
Var
Splash: TForm;
begin
Splash := ShowSplashWindow(AniBmp1,
         'Загрузка данных. Подождите, пожалуйста...', True, nil);
IBSprorg.Active := False;
IBSprorg.MacroByName('Usl_ORD').AsString  := Usl_Ord;
IBSprorg.MacroByName('Usl_Reg').AsString  := Usl_Reg;
IBSprorg.MacroByName('Usl_City').AsString := Usl_City;
IBSprorg.MacroByName('Usl_Tip').AsString  := Usl_Tip;
IBSprorg.Active := True;
IBSprorg.FetchAll;
Splash.Free;
end;


procedure TFindSprorg.ToolButton4Click(Sender: TObject);
begin
Try
  ViborSpr.Usl_Table_Name := 'Sprorg';
  ViborSpr.Usl_Field_Name := 'Reg';
  ViborSpr.Usl_Field_Tip := 'Integer';
  ViborSpr.Caption := 'Регионы';
  ViborSpr.ShowModal;
  If ViborSpr.Usl <> '' then
  begin
    If ViborSpr.Usl <> Usl_Reg then
    begin
       Usl_Reg := ViborSpr.Usl;
       IBSprorgActive;
    end;
    ButReg.Visible := True;
  end
  Else
  begin
    If Usl_Reg <> '0=0' then
    begin
       Usl_Reg := '0=0';
       IBSprorgActive;
    end;
    ButReg.Visible := False;
  End;
Except
  MessageDlg('Ошибка открытия формы выбора региона. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;
end;

procedure TFindSprorg.ToolButton14Click(Sender: TObject);
begin
Usl_Tip := '0=0';
Usl_City := '0=0';
Usl_Reg := '0=0';
ButTip.Visible := False;
ButCity.Visible := False;
ButReg.Visible := False;
IBSprorgActive;
IBSprorg.Filtered :=False;
end;

procedure TFindSprorg.ToolButton3Click(Sender: TObject);
begin
Try
  ViborSpr.Usl_Table_Name := 'Sprorg';
  ViborSpr.Usl_Field_Name := 'Tip_Id';
  ViborSpr.Usl_Field_Tip := 'Integer';
  ViborSpr.Caption := 'Выбор типа организации';
  ViborSpr.ShowModal;
  If ViborSpr.Usl <> '' then
  begin
    If ViborSpr.Usl <> Usl_Tip then
    begin
       Usl_Tip := ViborSpr.Usl;
       IBSprorgActive;
    end;
    ButTip.Visible := True;
  end
  Else
  begin
    If Usl_Tip <> '0=0' then
    begin
       Usl_Tip := '0=0';
       IBSprorgActive;
    end;
    ButTip.Visible := False;
  End;
Except
  MessageDlg('Ошибка выбора типа организаций. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;
end;

procedure TFindSprorg.ToolButton7Click(Sender: TObject);
begin
Try
  ViborSpr.Usl_Table_Name := 'Sprorg';
  ViborSpr.Usl_Field_Name := 'City_Id';
  ViborSpr.Usl_Field_Tip := 'Integer';
  ViborSpr.Caption := 'Выбор города';
  ViborSpr.ShowModal;
  If ViborSpr.Usl <> '' then
  begin
    If ViborSpr.Usl <> Usl_City then
    begin
       Usl_City := ViborSpr.Usl;
       IBSprorgActive;
    end;
    ButCity.Visible := True;
  end
  Else
  begin
    If Usl_City <> '0=0' then
    begin
       Usl_City := '0=0';
       IBSprorgActive;
    end;
    ButCity.Visible := False;
  End;
Except
  MessageDlg('Ошибка открытия формы выбора города. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;
end;

procedure TFindSprorg.ToolButton12Click(Sender: TObject);
begin
ModalResult := IBSprorg.FieldByName('Kod').AsInteger+50;
Org_Name:=IBSprorg.FieldByName('NAM').AsString;
end;

procedure TFindSprorg.ToolButton13Click(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure TFindSprorg.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_RETURN) then  ToolButton12.Click;
if (Key=VK_ESCAPE) then  ToolButton13.Click;
end;

procedure TFindSprorg.FormCreate(Sender: TObject);
begin
AniBmp1:=TBitmap.Create;
AniBmp1.LoadFromResourceName(HInstance,'booka');
FirstVxod := True;
end;

procedure TFindSprorg.FormDestroy(Sender: TObject);
begin
AniBmp1.Destroy;
end;

end.
