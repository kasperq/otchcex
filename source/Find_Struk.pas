unit Find_Struk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, ImgList, DB, IBCustomDataSet,
  IBQuery, RxIBQuery, Grids, DBGridEh, Buttons, StdCtrls, FindDlgEh, Mask,
  DBCtrls,SplshWnd, BDEConfig, IBDataBase, RxStrUtils, Menus, FR_DSet,
  FR_DBSet, FR_Class;

type
  TFindStruk = class(TForm)
    Panel1: TPanel;
    TreeView1: TTreeView;
    DSIBstruk: TDataSource;
    IBstruk: TIBQuery;
    GRUPPA: TIBQuery;
    DSGruppa: TDataSource;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    Edit1: TEdit;
    Edit2: TEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    DSELevel: TDataSource;
    ELevel: TIBQuery;
    IBstrukSTRUK_ID: TSmallintField;
    IBstrukFUL_NAME: TIBStringField;
    IBstrukSTNAME: TIBStringField;
    IBstrukMEDEND: TIBStringField;
    IBstrukSTRUK: TIBStringField;
    IBstrukOTDEL: TIBStringField;
    IBstrukBURO: TIBStringField;
    IBstrukSECTOR: TIBStringField;
    IBstrukGRUPPA: TIBStringField;
    IBstrukVIDPR: TIBStringField;
    IBstrukRELA: TSmallintField;
    IBstrukLEVEL: TIBStringField;
    IBstrukCHISL: TSmallintField;
    IBstrukKOD_STRUK: TIBStringField;
    IBstrukDUD: TDateField;
    GRUPPASTRUK_ID: TSmallintField;
    GRUPPAFUL_NAME: TIBStringField;
    GRUPPASTNAME: TIBStringField;
    GRUPPAMEDEND: TIBStringField;
    GRUPPASTRUK: TIBStringField;
    GRUPPAOTDEL: TIBStringField;
    GRUPPABURO: TIBStringField;
    GRUPPASECTOR: TIBStringField;
    GRUPPAGRUPPA: TIBStringField;
    GRUPPAVIDPR: TIBStringField;
    GRUPPARELA: TSmallintField;
    GRUPPALEVEL: TIBStringField;
    GRUPPACHISL: TSmallintField;
    GRUPPAKOD_STRUK: TIBStringField;
    GRUPPADUD: TDateField;
    ELevelSTRUK_ID: TSmallintField;
    ELevelFUL_NAME: TIBStringField;
    ELevelSTNAME: TIBStringField;
    ELevelMEDEND: TIBStringField;
    ELevelSTRUK: TIBStringField;
    ELevelOTDEL: TIBStringField;
    ELevelBURO: TIBStringField;
    ELevelSECTOR: TIBStringField;
    ELevelGRUPPA: TIBStringField;
    ELevelVIDPR: TIBStringField;
    ELevelRELA: TSmallintField;
    ELevelLEVEL: TIBStringField;
    ELevelCHISL: TSmallintField;
    ELevelKOD_STRUK: TIBStringField;
    ELevelDUD: TDateField;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    IBRod: TIBQuery;
    DataSource1: TDataSource;
    IBRodSTRUK_ID: TSmallintField;
    IBRodFUL_NAME: TIBStringField;
    IBRodGRUPPA_NAME: TIBStringField;
    IBRodSTRUKT_NAME: TIBStringField;
    IBRodOTDEL_NAME: TIBStringField;
    IBRodBURO_NAME: TIBStringField;
    IBRodSECTOR_NAME: TIBStringField;
    IBRodGRUPPA: TIBStringField;
    IBRodSTRUK: TIBStringField;
    IBRodOTDEL: TIBStringField;
    IBRodBURO: TIBStringField;
    IBRodSECTOR: TIBStringField;
    IBRodMEDEND: TIBStringField;
    IBRodMEDEND_NAME: TIBStringField;
    IBRodVIDPR: TIBStringField;
    IBRodVIDPR_NAME: TIBStringField;
    IBRodCHISL: TSmallintField;
    IBRodDUD: TDateField;
    IBRodLEVEL: TIBStringField;
    ImageList1: TImageList;
    Edit8: TEdit;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    DS_REPORT: TDataSource;
    REPORT: TRxIBQuery;
    REPORTSTRUK_ID: TSmallintField;
    REPORTFUL_NAME: TIBStringField;
    REPORTGRUPPA: TIBStringField;
    REPORTSTRUK: TIBStringField;
    REPORTOTDEL: TIBStringField;
    REPORTBURO: TIBStringField;
    REPORTSECTOR: TIBStringField;
    REPORTMEDEND: TIBStringField;
    REPORTKOD_STRUK: TIBStringField;
    REPORTVIDPR: TIBStringField;
    REPORTVIDPR_NAME: TIBStringField;
    REPORTCHISL: TSmallintField;
    REPORTDUD: TDateField;
    REPORTLEVEL: TIBStringField;
    frReport1: TfrReport;
    frREPORT: TfrDBDataSet;
    REPORTNAME: TIBStringField;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure AddTreeSTRUK;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TreeView1Deletion(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Public_Id :Integer;
    ReadOnly : Boolean;
    Vibor: Boolean;
    DataBaseName : TIBDatabase;
    name: String;
    kod: String;
  end;
  type
   PRec = ^TRecData;
   TRecData = record
    ID: Integer;
    Key: Integer;
   end;

var
  FindStruk: TFindStruk;
  AniBmp1: TBitmap;
  FirstVxod : Boolean;

implementation

{$R *.dfm}


procedure TFindStruk.AddTreeSTRUK;
var
  Node1:TTreeNode;
  Pdata:PRec;
begin
 if not IBstruk.Active then IBstruk.Active:=True;
  with TreeView1, IBstruk do
  begin
   Items.Clear;
   Items.BeginUpdate;
   DisableControls;
    Try
     First;
     while not eof do
      begin
       {Элемент корневой}
       New(Pdata);
       if (IBstruk.FieldByName('Level').AsString='1') and
          (IBstruk.FieldByName('DUD').AsVariant=Null) then
       begin
        Pdata^.ID:=IBstruk.FieldByName('Struk_id').AsInteger;
        Pdata^.Key:=IBstruk.FieldByName('Struk_id').AsInteger;
        Node1:=Items.AddObject(Nil, IBstruk.FieldByName('Stname').AsString, Pdata);
        Items.AddChild(Node1,'Нет информации для отображения');
       end;
       Next;
      end;
      Items.EndUpdate;
      Items.GetFirstNode.Selected:=True;
     finally
    EnableControls;
   end;
  end;
end;

procedure TFindStruk.FormShow(Sender: TObject);
Var
Splash: TForm;
begin
Splash := ShowSplashWindow(AniBmp1,
         'Загрузка данных. Подождите, пожалуйста...', True, nil);
try
  If FirstVxod then
  begin
    if IBstruk.Database = nil then
      IBstruk.Database := DataBaseName;
    if GRUPPA.Database = nil then
     GRUPPA.Database :=DataBaseName;
    if ELevel.Database = nil then
     ELevel.Database:=DataBaseName;
    if IBRod.Database = nil then
     IBRod.Database:=DataBaseName;
    if REPORT.Database=nil then
     REPORT.Database:=DataBaseName;
   AddTreeSTRUK;
   FirstVxod := False;
 end
 else
    AddTreeSTRUK;
finally
     If Vibor then
    begin
      ToolButton1.Visible := False;
      ToolButton2.Visible := False;
      ToolButton3.Visible := True;
    end
    else
    begin
      ToolButton1.Visible := True;
      ToolButton2.Visible := True;
      ToolButton3.Visible := False;
    end;
  Splash.Free;
end;
end;

procedure TFindStruk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ToolButton1.Visible := True;
  ToolButton2.Visible := True;
  ToolButton3.Visible := True;
  IBstruk.Active:=False;
  GRUPPA.Active:=False;
  ELevel.Active:=False;
  IBRod.Active:=False;
  REPORT.Active:=False;
end;

procedure TFindStruk.FormCreate(Sender: TObject);
begin
  AniBmp1:=TBitmap.Create;
  AniBmp1.LoadFromResourceName(HInstance,'booka');
  FirstVxod := True;
end;

procedure TFindStruk.TreeView1Expanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
var
  Node1:TTreeNode;
  Pdata:PRec;
  SName:String;
begin
  if not IBstruk.Active then IBstruk.Active:=True;
   if not GRUPPA.Active then GRUPPA.Active:=True;
   if Node.Data<>Nil then
    begin
      GRUPPA.Active:=False;
      GRUPPA.ParamByName('VRELA').AsInteger:=Prec(Node.Data)^.ID;
      GRUPPA.Active:=True;
    end;
   with TreeView1, GRUPPA do
    begin
       Items.BeginUpdate;
       DisableControls;
      Try
      First;
      Node.DeleteChildren;
       while not eof do
        begin
        {Элемент корневой}
        New(PData);
        if (GRUPPA.FieldByName('DUD').AsVariant=Null) then
         begin
           Pdata^.ID:=FieldByName('Struk_id').AsInteger;
           Pdata^.Key:=FieldByName('Struk_id').AsInteger;
           SName:=FieldByName('STNAME').AsString;
           Node1:=Items.AddChildObject(Node,SName,Pdata);
           ELevel.Active:=False;
           ELevel.ParamByName('VRELA').AsInteger:=FieldByName('Struk_id').AsInteger;
           ELevel.Active:=True;
           if not ELevel.IsEmpty then
             Items.AddChild(Node1,'');
         end;
        Next;
        end;
      Items.EndUpdate;
    finally
     EnableControls;
    end;
   end;
end;

procedure TFindStruk.TreeView1Deletion(Sender: TObject; Node: TTreeNode);
var
  Pdata:PRec;
begin
  if Node.Data<> nil then
  begin
    Pdata:=PRec(Node.Data);
    Node.Data:=Nil;
    Dispose(PData);
  end;
end;


procedure TFindStruk.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  if not IBstruk.Active then IBstruk.Active:=True;
   if Node.Data<> Nil then
 begin
  With Sender as TTreeView do
  begin
  if Selected<>nil then
   begin
    Node:=Selected;
    Ibstruk.Locate('Struk_id',Prec(Node.Data)^.Key,[]);
    IBRod.Active:=False;
    IBRod.ParamByName('VSTRUK_ID').AsInteger:=Prec(Node.Data)^.Key;
    IBRod.Active:=True;
    Memo2.Text:=IBRodGRUPPA_NAME.AsString;
    Memo3.Text:=IBRodSTRUKT_NAME.AsString;
    Memo4.Text:=IBRodOTDEL_NAME.AsString;
    Memo5.Text:=IBRodBURO_NAME.AsString;
    Memo6.Text:=IBRodSECTOR_NAME.AsString;
    Edit3.Text:=IBRodGRUPPA.AsString;
    Edit4.Text:=IBRodSTRUK.AsString;
    Edit5.Text:=IBRodOTDEL.AsString;
    Edit6.Text:=IBRodBURO.AsString;
    Edit7.Text:=IBRodSECTOR.AsString;
    Edit2.Text:=IBRodMEDEND_NAME.AsString;
    Edit1.Text:=IBRodVIDPR_NAME.AsString;
    if IBRodCHISL.AsInteger=1 then
       Edit8.Text:='Включено в штатное расписание'
      else
       Edit8.Text:='';
  end;
end;
end;
end;

procedure TFindStruk.ToolButton1Click(Sender: TObject);
begin
ModalResult := IBstruk.FieldByName('Struk_id').AsInteger+50;
name:=IBstruk.FieldByName('STNAME').AsString;
kod:=IBstruk.FieldByName('KOD_STRUK').AsString;
end;

procedure TFindStruk.ToolButton2Click(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure TFindStruk.FormDestroy(Sender: TObject);
begin
 AniBmp1.Destroy;
end;


procedure TFindStruk.N2Click(Sender: TObject);
begin
  REPORT.MacroByName('usl').AsString:='';
  REPORT.CLOSE;
  REPORT.OPEN;
  frReport1.LoadFromFile('Struk.frf');
  frReport1.PrepareReport;
  frReport1.ShowPreparedReport;
  REPORT.CLOSE;
end;

procedure TFindStruk.N1Click(Sender: TObject);
begin
  if Edit4.Text='' then
   MessageDlg('Подразделение не выбрано.', mtInformation, [mbOK], 0)
   else
    begin
     REPORT.MacroByName('usl').AsString:=' AND STRUK.GRUPPA='+Edit3.Text+' AND STRUK.STRUK='+Edit4.Text;
     REPORT.CLOSE;
     REPORT.OPEN;
     frReport1.LoadFromFile('Struk.frf');
     frReport1.PrepareReport;
     frReport1.ShowPreparedReport;
     REPORT.CLOSE;
    end;
end;

procedure TFindStruk.N3Click(Sender: TObject);
begin
     REPORT.MacroByName('usl').AsString:=' AND STRUK.GRUPPA='+Edit3.Text;
     REPORT.CLOSE;
     REPORT.OPEN;
     frReport1.LoadFromFile('Struk.frf');
     frReport1.PrepareReport;
     frReport1.ShowPreparedReport;
     REPORT.CLOSE;
end;

procedure TFindStruk.N4Click(Sender: TObject);
begin
  if Edit5.Text='' then
   MessageDlg('Отдел не выбран.', mtInformation, [mbOK], 0)
   else
    begin
     REPORT.MacroByName('usl').AsString:=' AND STRUK.GRUPPA='+Edit3.Text+' AND STRUK.STRUK='+Edit4.Text+' AND STRUK.OTDEL='+Edit5.Text;
     REPORT.CLOSE;
     REPORT.OPEN;
     frReport1.LoadFromFile('Struk.frf');
     frReport1.PrepareReport;
     frReport1.ShowPreparedReport;
     REPORT.CLOSE;
    end; 
end;

procedure TFindStruk.N5Click(Sender: TObject);
begin
 REPORT.MacroByName('usl').AsString:=' AND (S1.CHISL=1)';
 REPORT.CLOSE;
 REPORT.OPEN;
  frReport1.LoadFromFile('Struk.frf');
  frReport1.PrepareReport;
  frReport1.ShowPreparedReport;
    REPORT.CLOSE;
end;

end.
