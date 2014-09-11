unit Find_Matrop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ComCtrls, ToolWin, FindDlgEh, ImgList, DB,
  IBCustomDataSet, IBQuery, ExtCtrls, StdCtrls, Mask, DBCtrls,
  RxIBQuery, Buttons, SplshWnd, IBDataBase, UtilR, RxStrUtils, FR_Class,
  FR_DSet, FR_DBSet;

type
  TFindMatrop = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    FindDlgEh1: TFindDlgEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    NamSpSr: TDBEdit;
    NameGr: TDBEdit;
    NameOrg: TDBEdit;
    NamPgr: TDBEdit;
    NamePrmat: TDBEdit;
    IBMatrop: TRxIBQuery;
    ButPrmat: TSpeedButton;
    ButSpsr: TSpeedButton;
    ButGr: TSpeedButton;
    ButPgr: TSpeedButton;
    ButOrg: TSpeedButton;
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
    ToolButton15: TToolButton;
    Panel2: TPanel;
    Label6: TLabel;
    Edit1: TEdit;
    ToolButton4: TToolButton;
    frMatrop: TfrDBDataSet;
    frReport1: TfrReport;
    IBMatropKSM_ID: TIntegerField;
    IBMatropNMAT: TIBStringField;
    IBMatropGR: TIBStringField;
    IBMatropPGR: TIBStringField;
    IBMatropKEI_ID: TSmallintField;
    IBMatropSPSR: TSmallintField;
    IBMatropGOST: TIBStringField;
    IBMatropXARKT: TIBStringField;
    IBMatropKORG: TSmallintField;
    IBMatropNEIS: TIBStringField;
    IBMatropPRMAT: TIBStringField;
    IBMatropGR1: TIBStringField;
    IBMatropNAMPR: TIBStringField;
    IBMatropNAMGR: TIBStringField;
    IBMatropNAMPGR: TIBStringField;
    IBMatropNAM: TIBStringField;
    IBMatropNAMSPSR: TIBStringField;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure IBMatropActive;
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Public_Id :Integer;
    ReadOnly : Boolean;
    DataBaseName : TIBDataBase;
    Vibor: Boolean;
    Action_Id: Integer;//1-добавление записи, 2-корректировка, 3-добавление на основании продукции
    Prmat : String;
  end;

var
  FindMatrop: TFindMatrop;
  Usl_Ord : String;
  Usl_Prmat :String;
  Usl_Spsr : String;
  Usl_Gr : String;
  Usl_Org : String;
  Usl_Pgr : String;
  FirstVxod : Boolean;
  AniBmp1: TBitmap;

implementation

uses Vibor_Spr, Vibor_Spr_Tree, Find_Sprorg, Update_Matrop, Find_Account;

{$R *.dfm}

procedure TFindMatrop.ToolButton1Click(Sender: TObject);
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

procedure TFindMatrop.FormShow(Sender: TObject);
begin
  If ViborSpr = nil then
  begin
    Application.CreateForm(TViborSpr, ViborSpr);
  end;
  if ViborSpr.IBSprav.Database = nil then
    ViborSpr.IBSprav.Database := DataBaseName;
  If ViborSprTree = nil then
  begin
    Application.CreateForm(TViborSpr, ViborSpr);
  end;
  if ViborSprTree.IBSprav.Database = nil then
    ViborSprTree.IBSprav.Database := DataBaseName;
  If FirstVxod then
  begin
    Usl_Ord := 'Matrop.Nmat';
    If Prmat = '' then
       Usl_Prmat := '0=0'
    Else Usl_Prmat := 'Matrop.Prmat = '+''''+Prmat+'''';
    Usl_Spsr := '0=0';
    Usl_Gr := '0=0';
    Usl_Org := '0=0';
    Usl_Pgr := '0=0';
    IBMatrop.Database := DataBaseName;
    IBMatropActive;
    FirstVxod := False;
    IBMatrop.Filtered := False;
    If Public_Id <> 0 then IBMatrop.Locate('Ksm_Id',Public_Id,[]);
   If (ReadOnly) or (GetCurrentUserName='OTIZ1') or (GetCurrentUserName='OTIZ2') or (GetCurrentUserName='PLAN4') then
    begin
      ToolButton13.Visible := False;
      ToolButton14.Visible := False;
    end
    else
    begin
      ToolButton13.Visible := True;
      ToolButton14.Visible := True;
    end;
    If Vibor then
    begin
      ToolButton11.Visible := False;
      ToolButton12.Visible := False;
      ToolButton4.Visible := True;
    end
    else
    begin
      ToolButton11.Visible := True;
      ToolButton12.Visible := True;
      ToolButton4.Visible := False;
    end;
  end;
end;

procedure TFindMatrop.DBGridEh1SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
  Usl_Ord := '';
  for i := 0 to DBGridEh1.SortMarkedColumns.Count-1 do
  if DBGridEh1.SortMarkedColumns[i].Title.SortMarker = smUpEh then
  begin
     Usl_Ord := USL_ORD + '"'+ DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
  end
  else
  begin
     Usl_Ord := Usl_Ord + '"'+DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ', ';
  end;
  if Usl_Ord <> '' then  Usl_Ord := Copy(Usl_Ord,1,Length(Usl_Ord)-2);
  IBMatropActive;
end;

procedure TFindMatrop.IBMatropActive;
var
  Splash: TForm;
begin
Splash := ShowSplashWindow(AniBmp1,
         'Загрузка данных. Подождите, пожалуйста...', True, nil);
IBMatrop.Active := False;
IBMatrop.MacroByName('Usl_ORD').AsString   := Usl_Ord;
IBMatrop.MacroByName('Usl_Prmat').AsString := Usl_Prmat;
IBMatrop.MacroByName('Usl_Spsr').AsString  := Usl_Spsr;
IBMatrop.MacroByName('Usl_Gr').AsString    := Usl_Gr;
IBMatrop.MacroByName('Usl_Org').AsString   := Usl_Org;
IBMatrop.MacroByName('Usl_Pgr').AsString   := Usl_Pgr;
IBMatrop.Active := True;
Splash.Free;
end;

procedure TFindMatrop.ToolButton2Click(Sender: TObject);
begin
try
  ViborSpr.Usl_Table_Name := 'Matrop';
  ViborSpr.Usl_Field_Name := 'Prmat';
  ViborSpr.Usl_Field_Tip := 'String';
  ViborSpr.Caption := 'Выбор раздела';
  ViborSpr.ShowModal;
  If ViborSpr.Usl <> '' then
  begin
    If ViborSpr.Usl <> Usl_Prmat then
    begin
       Usl_Prmat := ViborSpr.Usl;
       IBMatropActive;
    end;
    ButPrmat.Visible := True;
  end
  Else
  begin
    If Usl_Prmat <> '0=0' then
    begin
       Usl_Prmat := '0=0';
       IBMatropActive;
    end;
    ButPrmat.Visible := False;
  End;
except
  MessageDlg('Ошибка выбора раздела. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;
end;

procedure TFindMatrop.ToolButton3Click(Sender: TObject);
begin
try
  ViborSpr.Usl_Table_Name := 'Matrop';
  ViborSpr.Usl_Field_Name := 'SpSr';
  ViborSpr.Usl_Field_Tip := 'Integer';
  ViborSpr.Caption := 'Вид сырья';
  ViborSpr.ShowModal;
  If ViborSpr.Usl <> '' then
  begin
    If ViborSpr.Usl <> Usl_Spsr then
    begin
       Usl_Spsr := ViborSpr.Usl;
       IBMatropActive;
    end;
    ButSpSr.Visible := True;
  end
  else
  begin
    If Usl_Spsr <> '0=0' then
    begin
       Usl_Spsr := '0=0';
       IBMatropActive;
    end;
    ButSpSr.Visible := False;
  End;
except
  MessageDlg('Ошибка выбора вида сырья. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;
end;

procedure TFindMatrop.ToolButton5Click(Sender: TObject);
begin
try
  ViborSprTree.Caption := 'Выбор группы, подгруппы';
  ViborSprTree.ShowModal;
  If ViborSprTree.Usl <> '' then
  begin
     If ViborSprTree.Usl<> Usl_Pgr then
     begin
        Usl_Pgr := ViborSprTree.Usl ;
        If ViborSprTree.Gr then ButGr.Visible := True;
        If ViborSprTree.PGr then ButPGr.Visible := True;
        IBMatropActive;
     end;
  end
  else
  begin
     IF Usl_Pgr <> '0=0' then
     begin
        Usl_Pgr := '0=0';
        ButPgr.Visible := False;
        ButGr.Visible := False;
        IBMatropActive;
     end;   
  end;
except
  MessageDlg('Ошибка открытия формы выбора подгруппы. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;
end;

procedure TFindMatrop.ToolButton6Click(Sender: TObject);
var
  Old_Usl : String;
begin
  try
    Old_Usl := Usl_Org;
  FindSprorg.ReadOnly := ReadOnly;
  FindSprorg.Public_Id := IBMatrop.FieldByName('Korg').AsInteger;
  FindSprorg.ShowModal;
  if FindSprorg.ModalResult > 50 then
  begin
     Usl_Org := 'Matrop.Korg = ' + IntToStr(FindSprorg.ModalResult-50);
     ButOrg.Visible := True;
  end
  else
  begin
     Usl_Org := '0=0';
     ButOrg.Visible := False;
  end;
  if Old_Usl <> Usl_Org then
     IBMatropActive;
except
  MessageDlg('Ошибка выбора организаций. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;
end;

procedure TFindMatrop.ToolButton7Click(Sender: TObject);
begin
  Usl_Prmat := '0=0';
  Usl_Spsr := '0=0';
  Usl_Gr := '0=0';
  Usl_Org := '0=0';
  Usl_Pgr := '0=0';
  ButPrmat.Visible := False;
  ButSpsr.Visible := False;
  ButGr.Visible := False;
  ButPgr.Visible := False;
  ButOrg.Visible := False;
  IBMatropActive;
  IBMatrop.Filtered := False;
end;

procedure TFindMatrop.ToolButton11Click(Sender: TObject);
begin
  ModalResult := IBMatrop.FieldByName('Ksm_Id').AsInteger+50;
end;

procedure TFindMatrop.ToolButton12Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFindMatrop.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_RETURN) then  ToolButton11.Click;
  if (Key=VK_ESCAPE) then  ToolButton12.Click;
end;

procedure TFindMatrop.FormCreate(Sender: TObject);
begin
  AniBmp1:=TBitmap.Create;
  AniBmp1.LoadFromResourceName(HInstance,'booka');
  FirstVxod := True;
end;


procedure TFindMatrop.ToolButton14Click(Sender: TObject);
begin
  if MessageDlg('Добавить на основании материала '+IBMatrop.FieldByName('KSM_ID').AsString+' '+IBMatrop.FieldByName('NMAT').AsString+'?',mtConfirmation, [mbYes, mbNo], 0)=mrNo then
   begin
    Action_Id:=1;
    UpdateMatrop.ShowModal;
   end
  else
   begin
    Action_Id:=3;
    UpdateMatrop.ShowModal;
   end
end;

procedure TFindMatrop.ToolButton13Click(Sender: TObject);
begin
  Action_Id:=2;
  UpdateMatrop.ShowModal;
end;

procedure TFindMatrop.FormDestroy(Sender: TObject);
begin
  AniBmp1.Destroy;
end;

procedure TFindMatrop.DBGridEh1DblClick(Sender: TObject);
begin
ModalResult := IBMatrop.FieldByName('Ksm_Id').AsInteger+50;
end;

procedure TFindMatrop.ToolButton4Click(Sender: TObject);
begin
  IBMatrop.DisableControls;
  if IBMatrop.Database = nil then
    IBMatrop.Database := DataBaseName;
  if IBMatrop.Active=False then IBMatrop.Active;
  frReport1.LoadFromFile('Matrop.frf');
  frReport1.PrepareReport;
  frReport1.ShowPreparedReport;
  IBMatrop.EnableControls;
  IBMatrop.First;
end;

end.
