unit otk_find;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, Grids, DBGrids, StdCtrls, Db, DBTables, Buttons,
  ExtCtrls, IBCustomDataSet, IBQuery, RxIBQuery, DBGridEh, FindDlgEh;

type
  Tfind_an = class(TForm)
    Find: TRxIBQuery;
    DSFind: TDataSource;
    FindDATEGETPR: TDateField;
    FindAN_NUM: TIntegerField;
    FindNMAT: TIBStringField;
    FindGOST: TIBStringField;
    FindXARKT: TIBStringField;
    FindID: TIntegerField;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBGridEh1: TDBGridEh;
    FindKSM_ID: TIntegerField;
    FindDlgEh1: TFindDlgEh;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  find_an: Tfind_an;

    
implementation

uses analit,dm;

{$R *.DFM}


procedure TFind_an.FormShow(Sender: TObject);
begin
FAnalit.Analit.DisableControls;
if find.Active then Find.Active:=False;
if ksm_ov<>0 then Find.MacroByName('Usl').AsString:=' Where Analit.ksm_id='+inttostr(ksm_ov);
Find.Open;
FAnalit.Analit.EnableControls;
Find.First;

end;

procedure Tfind_an.SpeedButton1Click(Sender: TObject);
begin
 ModalResult := Find.FieldByName('Id').AsInteger+50;

end;

procedure Tfind_an.SpeedButton2Click(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure Tfind_an.DBGridEh1SortMarkingChanged(Sender: TObject);
var
  i :Integer;
begin
 Usl_Sort := '';
 for i := 0 to DBGridEh1.SortMarkedColumns.Count-1 do
 BEGIN
  if DBGridEh1.SortMarkedColumns[i].Title.SortMarker = smUpEh then
  begin
   if DBGridEh1.SortMarkedColumns[i].FieldName='NMAT' then
    Usl_Sort := USL_Sort+ 'Matrop."'+ DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ' DESC , '
   else
   Usl_Sort := USL_Sort + 'Analit."'+ DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ' DESC , ';
  end
  else
  begin
   if DBGridEh1.SortMarkedColumns[i].FieldName='NMAT' then
    Usl_Sort := USL_Sort+ 'Matrop."'+ DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ', '
   else
    Usl_Sort := Usl_Sort + 'Analit."'+DBGridEh1.SortMarkedColumns[i].FieldName + '"'+ ', ';
  end;
 END;
 if Usl_Sort <> '' then
 begin
  Usl_Sort := Copy(Usl_Sort,1,Length(Usl_Sort)-2);
  Find.Active := False;
  Find.MacroByName('SORT').AsString:= Usl_SORT;
  Find.Active := True;
 end;
end;

end.
