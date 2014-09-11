unit Vibor_Spr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, Grids, DBGridEh, ImgList, DB,
  IBCustomDataSet, IBQuery, FindDlgEh, RxMemDS;

type
  TViborSpr = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ImageList1: TImageList;
    IBSprav: TIBQuery;
    DataSource2: TDataSource;
    ToolButton3: TToolButton;
    FindDlgEh1: TFindDlgEh;
    Prmat: TRxMemoryData;
    PrSyr: TRxMemoryData;
    Spvis: TRxMemoryData;
    City: TRxMemoryData;
    Region: TRxMemoryData;
    Tip: TRxMemoryData;
    Struk: TRxMemoryData;
    ToolButton1: TToolButton;
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClearVibor(Table_Name : TDataSet);
    Procedure BuildUsl;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Usl_Table_Name : String;
    Usl_Field_Name : String;
    Usl_Field_Tip : String;
    Usl : String;
  end;

var
  ViborSpr: TViborSpr;
  FirstVxod : Boolean;

implementation

{$R *.dfm}

procedure TViborSpr.ToolButton2Click(Sender: TObject);
begin
  ClearVibor(DBGridEh1.DataSource.DataSet);
end;

procedure TViborSpr.ToolButton3Click(Sender: TObject);
begin
FindDlgEh1.Execute;
end;

procedure TViborSpr.FormCreate(Sender: TObject);
begin
  FirstVxod := True;
end;

procedure TViborSpr.FormShow(Sender: TObject);
begin
If FirstVxod then
begin
  FirstVxod := False;
 // Разделы
  ViborSpr.IBSprav.Active := False;
  ViborSpr.IBSprav.SQL.Clear;
  ViborSpr.IBSprav.SQL.Add('SELECT MATR_PR.PRMAT KOD, MATR_PR.NAMPR NAME FROM MATR_PR');
  ViborSpr.IBSprav.Active := True;
  PrMat.EmptyTable;
  Prmat.LoadFromDataSet(IbSprav,0,lmAppend);
  Prmat.Active := True;
  Prmat.First;
  ClearVibor(PrMat);
// Признаки сырья
  ViborSpr.IBSprav.Active := False;
  ViborSpr.IBSprav.SQL.Clear;
  ViborSpr.IBSprav.SQL.Add('SELECT PRSYR.SPSR KOD, PRSYR.NAMSPSR NAME FROM PRSYR ORDER BY PRSYR.SPSR');
  ViborSpr.IBSprav.Active := True;
  PrSyr.EmptyTable;
  PrSyr.LoadFromDataSet(IbSprav,0,lmAppend);
  PrSyr.Active := True;
  PrSyr.First;
  ClearVibor(PrSyr);
// Вид исполнения
  ViborSpr.IBSprav.Active := False;
  ViborSpr.IBSprav.SQL.Clear;
  ViborSpr.IBSprav.SQL.Add('SELECT SPVIS.SPVIS KOD, SPVIS.NAMEVIS NAME FROM SPVIS ORDER BY SPVIS.NAMEVIS');
  ViborSpr.IBSprav.Active := True;
  Spvis.EmptyTable;
  SpVis.LoadFromDataSet(IbSprav,0,lmAppend);
  Spvis.Active := True;
  Spvis.First;
  ClearVibor(Spvis);
// Город
  ViborSpr.IBSprav.Active := False;
  ViborSpr.IBSprav.SQL.Clear;
  ViborSpr.IBSprav.SQL.Add('SELECT CITY.CITY_ID KOD, CITY.NNP NAME FROM CITY ORDER BY NNP');
  ViborSpr.IBSprav.Active := True;
  City.EmptyTable;
  City.LoadFromDataSet(IbSprav,0,lmAppend);
  City.Active := True;
  City.First;
  ClearVibor(City);
// Регион
  ViborSpr.IBSprav.Active := False;
  ViborSpr.IBSprav.SQL.Clear;
  ViborSpr.IBSprav.SQL.Add('SELECT REGION.REG KOD, REGION.NAM NAME FROM REGION WHERE (priz < 4) ORDER BY NAM');
  ViborSpr.IBSprav.Active := True;
  Region.EmptyTable;
  Region.LoadFromDataSet(IbSprav,0,lmAppend);
  Region.Active := True;
  Region.First;
  ClearVibor(Region);
// Тип организации
  ViborSpr.IBSprav.Active := False;
  ViborSpr.IBSprav.SQL.Clear;
  ViborSpr.IBSprav.SQL.Add('SELECT TIP.TIP_ID KOD, TIP.NAME FROM TIP ORDER BY TIP_ID');
  ViborSpr.IBSprav.Active := True;
  Tip.EmptyTable;
  Tip.LoadFromDataSet(IbSprav,0,lmAppend);
  Tip.Active := True;
  Tip.First;
  ClearVibor(Tip);
// Структурные подразделения
  ViborSpr.IBSprav.Active := False;
  ViborSpr.IBSprav.SQL.Clear;
  ViborSpr.IBSprav.SQL.Add('SELECT distinct STRUK.STRUK_ID KOD, STRUK.stname NAME, STRUK.STKOD ');
  ViborSpr.IBSprav.SQL.Add('FROM spprod INNER join struk  ON SPPROD.struk_id = struk.struk_id ');
  ViborSpr.IBSprav.SQL.Add('ORDER BY STRUK.Stkod');
  ViborSpr.IBSprav.Active := True;
  Struk.EmptyTable;
  Struk.LoadFromDataSet(IbSprav,0,lmAppend);
  Struk.Active := True;
  Struk.First;
  ClearVibor(Struk);
end;   
IF AnsiUpperCase(Usl_Field_Name) = 'PRMAT'    then DataSource2.DataSet := PrMat;    //Разделы
IF AnsiUpperCase(Usl_Field_Name) = 'SPSR'     then DataSource2.DataSet := PrSyr;    //Признаки сырья
IF AnsiUpperCase(Usl_Field_Name) = 'SPVIS'    then DataSource2.DataSet := Spvis;    //Вид исподнения
IF AnsiUpperCase(Usl_Field_Name) = 'CITY_ID'  then DataSource2.DataSet := City;     //Город
IF AnsiUpperCase(Usl_Field_Name) = 'REG'      then DataSource2.DataSet := Region;   //Регион
IF AnsiUpperCase(Usl_Field_Name) = 'TIP_ID'   then DataSource2.DataSet := Tip;      //Тип организеции
IF AnsiUpperCase(Usl_Field_Name) = 'STRUK_ID' then DataSource2.DataSet := Struk;    //Структурные подразделения

With DBGridEh1.DataSource.DataSet do
   IF not Locate('Vibor',True,[]) then First;
end;

procedure TViborSpr.ClearVibor(Table_Name: TDataSet);
begin
   Table_Name.DisableControls;
   Table_Name.First;
   While not Table_Name.Eof do
   begin
      Table_Name.Edit;
      Table_Name.FieldByName('Vibor').ASBoolean := False;
      Table_Name.Post;
      Table_Name.Next;
   end;
   Table_Name.First;
   Table_Name.EnableControls;
end;

procedure TViborSpr.BuildUsl;
var
  Table_Name : TDataSet;
  RStr : String;
begin
  Usl := '';
  Table_Name := DBGridEh1.DataSource.DataSet;
  Table_Name.DisableControls;
  Table_Name.First;
  While not Table_Name.Eof do
  begin
    If Table_Name.FieldByName('Vibor').AsBoolean then
    begin
      If Usl_Field_Tip = 'String' then RStr :=''''+Table_Name.FieldByName('Kod').AsString+''''
      Else RStr := IntToStr(Table_Name.FieldByName('Kod').AsInteger);
      Usl :=Usl+' OR ('+Usl_Table_Name+'.'+Usl_Field_Name+'='+ RStr+')'+#13+#10;
    end;
    Table_Name.Next;
  end;
  if Usl <> '' then  Usl := '('+Copy(Usl,5,Length(Usl)-4)+')';
  Table_Name.EnableControls;
end;

procedure TViborSpr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//BuildUsl;
end;

procedure TViborSpr.ToolButton1Click(Sender: TObject);
begin
BuildUsl;
Close;
end;

end.
