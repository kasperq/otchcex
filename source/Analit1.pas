unit Analit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ExtCtrls, DBCtrls, ToolWin, Grids, DBGridEh, DB,
  IBCustomDataSet, IBQuery, RxIBQuery, FindDlgEh;

type
  TFAnalit1 = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    DBNavigator2: TDBNavigator;
    ToolButton6: TToolButton;
    ImageList1: TImageList;
    FindDlgEh1: TFindDlgEh;
    procedure ToolButton6Click(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnalit1: TFAnalit1;

implementation
 uses dm,Analitlist_tg;
{$R *.dfm}

procedure TFAnalit1.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
  begin
  FAnalitlist_tg.Show;
  end;
end;

procedure TFAnalit1.DBGridEh1SortMarkingChanged(Sender: TObject);
 var
 i :Integer;
 s :String;
begin
  s := '';
  for i := 0 to DBGridEh1.SortMarkedColumns.Count-1 do
  if DBGridEh1.sortMarkedColumns[i].Title.SortMarker = smUpEh then
   begin
     s := s + DBGridEh1.SortMarkedColumns[i].FieldName + ' DESC , ';
   end
   else
   begin
     s := s + DBGridEh1.SortMarkedColumns[i].FieldName + ', ';
   end;
  if s <> '' then
  begin
    s := Copy(s,1,Length(s)-2);
    if dm1.OTK_ANALIT.MacroByName('ORD').AsString<>S then
    begin
      dm1.OTK_ANALIT.MacroByName('ORD').AsString := S;
      dm1.OTK_ANALIT.Active := False;
      dm1.OTK_ANALIT.Active := True;
    end;
  end;
end;

procedure TFAnalit1.FormShow(Sender: TObject);
begin
dm1.OTK_ANALIT.Active := false;
dm1.OTK_ANALIT.MacroByName('ORD').AsString := 'otk_analit.analit_num';
dm1.OTK_ANALIT.Active := true;
end;

procedure TFAnalit1.ToolButton6Click(Sender: TObject);
begin
 FAnalitlist_tg.OTK_RESULT.Active:=false;
 FAnalitlist_tg.OTK_result.ParamByName('ANALIT_id').AsInteger:=DM1.OTK_ANALITANALIT_ID.AsInteger;
 FAnalitlist_tg.OTK_RESULT.Active:=true;
 FAnalitlist_tg.Show;
end;

end.
