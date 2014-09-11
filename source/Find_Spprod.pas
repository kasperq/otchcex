unit Find_Spprod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ComCtrls, ToolWin, FindDlgEh, ImgList, DB,
  IBCustomDataSet, IBQuery, ExtCtrls, StdCtrls, Mask, DBCtrls,
  RxIBQuery, Buttons,SplshWnd,IBDataBase, UtilR, RxStrUtils, Menus,
  FR_Class, FR_DSet, FR_DBSet;

type
  TFindSpprod = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
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
    Name_Reg: TDBEdit;
    Name_Org: TDBEdit;
    Stname: TDBEdit;
    NameVis: TDBEdit;
    IBSpprod: TRxIBQuery;
    ButSpvis: TSpeedButton;
    ButSpsr: TSpeedButton;
    ButReg: TSpeedButton;
    ButStruk: TSpeedButton;
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
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    frSpprod: TfrDBDataSet;
    frReport1: TfrReport;
    IBSpprodNEIS: TIBStringField;
    IBSpprodNMAT: TIBStringField;
    IBSpprodKSM_ID: TIntegerField;
    IBSpprodKEI_ID: TSmallintField;
    IBSpprodGOST: TIBStringField;
    IBSpprodSPVIS: TSmallintField;
    IBSpprodSPPRN: TSmallintField;
    IBSpprodSPSR: TSmallintField;
    IBSpprodSTRUK_ID: TSmallintField;
    IBSpprodKOD_PROD: TIBStringField;
    IBSpprodREG: TSmallintField;
    IBSpprodKORG: TSmallintField;
    IBSpprodNAMEVIS: TIBStringField;
    IBSpprodNAMSPSR: TIBStringField;
    IBSpprodSTNAME: TIBStringField;
    IBSpprodNAME_REG: TIBStringField;
    IBSpprodLEK_ID: TSmallintField;
    IBSpprodSPROD_ID: TIntegerField;
    IBSpprodXARKT: TIBStringField;
    IBSpprodREGISTR_ID: TIntegerField;
    IBSpprodNAME_ORG: TIBStringField;
    IBSpprodND1: TDateField;
    IBSpprodND2: TDateField;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure IBSpprodActive;
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Public_Id :Integer;
    ReadOnly : Boolean;
    DataBaseName : TIBDataBase;
    Vibor: Boolean;
    Action_Id: Integer;  //1-добавление записи, 2-корректировка, 3-добавление на основании препарата
    l_id: Integer;
  end;

var
  FindSpprod: TFindSpprod;
  Usl_Ord : String;
  Usl_Spvis :String;
  Usl_Spsr : String;
  Usl_Reg : String;
  Usl_Org : String;
  Usl_Struk : String;
  FirstVxod : Boolean;
  AniBmp1: TBitmap;

implementation

uses Vibor_Spr, Find_Sprorg, Update_Spprod, Find_LekGroup, Find_Account, Reg_F;

{$R *.dfm}

procedure TFindSpprod.ToolButton1Click(Sender: TObject);
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

procedure TFindSpprod.FormShow(Sender: TObject);
begin
  If ViborSpr = nil then
  begin
    Application.CreateForm(TViborSpr, ViborSpr);
  end;
  if ViborSpr.IBSprav.Database = nil then
    ViborSpr.IBSprav.Database := DataBaseName;
  if FirstVxod then
  begin
    Usl_Ord := 'Spprod.Nmat';
    Usl_Spvis := '0=0';
    Usl_Spsr := '0=0';
    Usl_Reg := '0=0';
    Usl_Org := '0=0';
    Usl_Struk := '0=0';
    IBSpprod.Database := DataBaseName;
    IBSpprodActive;
    FirstVxod := False;
    IBSpprod.Filtered := False;
    If Public_Id <> 0 then IBSpprod.Locate('Ksm_Id',Public_Id,[]);
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
      ToolButton17.Visible := True;
     end
    else
     begin
      ToolButton11.Visible := True;
      ToolButton12.Visible := True;
      ToolButton17.Visible := False;
     end;
end;
end;

procedure TFindSpprod.DBGridEh1SortMarkingChanged(Sender: TObject);
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
  IBSpprodActive;
end;

procedure TFindSpprod.IBSpprodActive;
Var
  Splash: TForm;
begin
  Splash := ShowSplashWindow(AniBmp1,
         'Загрузка данных. Подождите, пожалуйста...', True, nil);
  IBSpprod.Active := False;
  IBSpprod.MacroByName('Usl_ORD').AsString   := Usl_Ord;
  IBSpprod.MacroByName('Usl_Spvis').AsString := Usl_Spvis;
  IBSpprod.MacroByName('Usl_Spsr').AsString  := Usl_Spsr;
  IBSpprod.MacroByName('Usl_Reg').AsString   := Usl_Reg;
  IBSpprod.MacroByName('Usl_Org').AsString   := Usl_Org;
  IBSpprod.MacroByName('Usl_Struk').AsString := Usl_Struk;
  IBSpprod.Active := True;
  Splash.Free;
end;

procedure TFindSpprod.ToolButton2Click(Sender: TObject);
begin
try
  ViborSpr.Usl_Table_Name := 'Spprod';
  ViborSpr.Usl_Field_Name := 'SpVis';
  ViborSpr.Usl_Field_Tip := 'Integer';
  ViborSpr.Caption := 'Вид исполнения';
  ViborSpr.ShowModal;
  if ViborSpr.Usl <> '' then
  begin
    If ViborSpr.Usl <> Usl_Spvis then
    begin
       Usl_Spvis := ViborSpr.Usl;
       IBSpprodActive;
    end;
    ButSpVis.Visible := True;
  end
  else
  begin
    If Usl_Spvis <> '0=0' then
    begin
       Usl_Spvis := '0=0';
       IBSpprodActive;
    end;
    ButSpVis.Visible := False;
  end;
except
  MessageDlg('Ошибка выбора вида исполнения. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;
end;

procedure TFindSpprod.ToolButton3Click(Sender: TObject);
begin
Try
  ViborSpr.Usl_Table_Name := 'Spprod';
  ViborSpr.Usl_Field_Name := 'SpSr';
  ViborSpr.Usl_Field_Tip := 'Integer';
  ViborSpr.Caption := 'Признаки сырья';
  ViborSpr.ShowModal;
  If ViborSpr.Usl <> '' then
  begin
    If ViborSpr.Usl <> Usl_Spsr then
    begin
       Usl_Spsr := ViborSpr.Usl;
       IBSpprodActive;
    end;
    ButSpSr.Visible := True;
  end
  Else
  begin
    If Usl_Spsr <> '0=0' then
    begin
       Usl_Spsr := '0=0';
       IBSpprodActive;
    end;
    ButSpSr.Visible := False;
  End;
Except
  MessageDlg('Ошибка выбора вида сырья. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;
end;

procedure TFindSpprod.ToolButton4Click(Sender: TObject);
begin
Try
  ViborSpr.Usl_Table_Name := 'Spprod';
  ViborSpr.Usl_Field_Name := 'Reg';
  ViborSpr.Usl_Field_Tip := 'Integer';
  ViborSpr.Caption := 'Регионы';
  ViborSpr.ShowModal;
  If ViborSpr.Usl <> '' then
  begin
    If ViborSpr.Usl <> Usl_Reg then
    begin
       Usl_Reg := ViborSpr.Usl;
       IBSpprodActive;
    end;
    ButReg.Visible := True;
  end
  Else
  begin
    If Usl_Reg <> '0=0' then
    begin
       Usl_Reg := '0=0';
       IBSpprodActive;
    end;
    ButReg.Visible := False;
  End;
Except
  MessageDlg('Ошибка выбора региона. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;

end;

procedure TFindSpprod.ToolButton5Click(Sender: TObject);
begin
Try
  ViborSpr.Usl_Table_Name := 'Spprod';
  ViborSpr.Usl_Field_Name := 'Struk_Id';
  ViborSpr.Usl_Field_Tip := 'Integer';
  ViborSpr.Caption := 'Выбор подразделения';
  ViborSpr.ShowModal;
  If ViborSpr.Usl <> '' then
  begin
    If ViborSpr.Usl <> Usl_Struk then
    begin
       Usl_Struk := ViborSpr.Usl;
       IBSpprodActive;
    end;
    ButStruk.Visible := True;
  end
  Else
  begin
    If Usl_Struk <> '0=0' then
    begin
       Usl_Struk := '0=0';
       IBSpprodActive;
    end;
    ButStruk.Visible := False;
  End;
Except
  MessageDlg('Ошибка выбора подразделений. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;

end;

procedure TFindSpprod.ToolButton6Click(Sender: TObject);
var
  old_Usl : String;
begin
Try
  Old_Usl := Usl_Org;
  FindSprorg.ReadOnly := ReadOnly;
  FindSprorg.DataBaseName := DataBaseName;
  FindSprorg.Public_Id := IBSpprod.FieldByName('Korg').AsInteger;
  FindSprorg.ShowModal;
  If FindSprorg.ModalResult > 50 then
  begin
     Usl_Org := 'SPPROD.Korg = ' + IntToStr(FindSprorg.ModalResult-50);
     ButOrg.Visible := True;
  end
  Else
  begin
     Usl_Org := '0=0';
     ButOrg.Visible := False;
  end;
  If Old_Usl<>Usl_Org Then
     IBSpprodActive;
Except
  MessageDlg('Ошибка открытия формы выбора организаций. '+#13+#10+'Обратитесь к разаработчику.', mtError, [mbOK], 0);
end;
end;

procedure TFindSpprod.ToolButton7Click(Sender: TObject);
begin
Usl_Spvis := '0=0';
Usl_Spsr := '0=0';
Usl_Reg := '0=0';
Usl_Org := '0=0';
Usl_Struk := '0=0';
ButSpvis.Visible := False;
ButSpsr.Visible := False;
ButReg.Visible := False;
ButStruk.Visible := False;
ButOrg.Visible := False;
IBSpprodActive;
IBSpprod.Filtered := False;
Edit1.Text:='';
end;

procedure TFindSpprod.ToolButton11Click(Sender: TObject);
begin
ModalResult := IBSpprod.FieldByName('Ksm_Id').AsInteger+50;
end;

procedure TFindSpprod.ToolButton12Click(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure TFindSpprod.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_RETURN) then  ToolButton11.Click;
if (Key=VK_ESCAPE) then  ToolButton12.Click;
end;

procedure TFindSpprod.FormCreate(Sender: TObject);
begin
AniBmp1:=TBitmap.Create;
AniBmp1.LoadFromResourceName(HInstance,'booka');
FirstVxod := True;
end;

procedure TFindSpprod.ToolButton14Click(Sender: TObject);
begin
  if MessageDlg('Добавить на основании препарата '+IBSpprod.FieldByName('KOD_PROD').AsString+' '+IBSpprod.FieldByName('NMAT').AsString+'?',mtConfirmation, [mbYes, mbNo], 0)=mrNo then
   begin
    Action_Id:=1;
    UpdateSpprod.ShowModal;
   end
  else
   begin
    Action_Id:=3;
    UpdateSpprod.ShowModal;
   end
end;

procedure TFindSpprod.FormDestroy(Sender: TObject);
begin
  AniBmp1.Destroy;
end;

procedure TFindSpprod.ToolButton13Click(Sender: TObject);
begin
  Action_Id:=2;
  UpdateSpprod.ShowModal;
end;

procedure TFindSpprod.DBGridEh1DblClick(Sender: TObject);
begin
ModalResult := IBSpprod.FieldByName('Ksm_Id').AsInteger+50;
end;

procedure TFindSpprod.ToolButton16Click(Sender: TObject);
begin
  l_id:=IBSpprod.FieldByName('ksm_id').AsInteger;
  RegF.ShowModal;
end;

procedure TFindSpprod.ToolButton17Click(Sender: TObject);
begin
  IBSpprod.DisableControls;
  if IBSpprod.Database = nil then
    IBSpprod.Database := DataBaseName;
  if IBSpprod.Active=False then IBSpprod.Active;
  frReport1.LoadFromFile('Spprod.frf');
  frReport1.PrepareReport;
  frReport1.ShowPreparedReport;
  IBSpprod.EnableControls;
  IBSpprod.First;
end;

end.
