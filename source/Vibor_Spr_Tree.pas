unit Vibor_Spr_Tree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, Grids, DBGridEh,  ImgList, DB,
  IBCustomDataSet, IBQuery, FindDlgEh, dcntree, dctred;

type
  TViborSprTree = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ImageList1: TImageList;
    IBSprav: TIBQuery;
    DataSource2: TDataSource;
    DCTree1: TDCTree;
    procedure FormCreate(Sender: TObject);
    Procedure BuildUsl;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Usl : String;
    Gr  : Boolean;
    Pgr : Boolean;
  end;

var
  ViborSprTree: TViborSprTree;
  FirstVxod : Boolean;
implementation

{$R *.dfm}

procedure TViborSprTree.BuildUsl;
var
  i:Integer;
  vNode:TDCTreeNode;
begin
  Gr := False;
  Pgr := False;
  for i:=0 to DCTree1.Items.Count-1 do
  begin
    vNode:=DCTree1.Items[i];
    if vNode.Checked then
    begin
      if vNode.Parent=nil then
      begin
        Gr := True;
        Usl :=Usl+' OR (MATROP.GR='''+string(vNode.Data^)+''')'+#13+#10;
      end
      else
      begin
        if not vNode.Parent.Checked then
        begin
          Usl:=Usl+' OR (MATROP.GR='''+string(vNode.Parent.Data^)+''' AND MATROP.PGR='''+string(vNode.Data^)+''')'+#13+#10;
        end;
      end;
    end;
  end;
if Usl <> '' then  Usl := Copy(Usl,5,Length(Usl)-4);
If not Gr then Pgr := True;

end;

procedure TViborSprTree.FormCreate(Sender: TObject);
begin
  FirstVxod := True;
end;

procedure TViborSprTree.ToolButton1Click(Sender: TObject);
begin
  BuildUsl;
  Close;
end;

procedure TViborSprTree.ToolButton2Click(Sender: TObject);
var
  Node : TDCTreeNode;
begin
  with DCTree1 do
  begin
    Node := Items.GetFirstNode;
    while Node <> nil do
    begin
      Node.Checked := False;
      Node.Selected := False;
      Node := Node.GetNext;
    end;
  end;
  DCTree1.SetFocus;
end;


procedure TViborSprTree.FormShow(Sender: TObject);
var
  vGr:string;
  P:^string;
  vNode:TDCTreeNode;
begin
IF FirstVxod then
begin
  FirstVxod := False;
  IBSprav.Active:=True;
  try
    while not IBSprav.Eof do
    begin
      if vGr<>IBSprav.FieldByName('NamGR').AsString then
      begin
         vGr:=IBSprav.FieldByName('NamGR').AsString;
         New(P);
         P^:=IBSprav.FieldByName('GR').AsString;
         vNode:=DCTree1.Items.AddObject(nil,Vgr,P);
      end;
      if not IBSprav.FieldByName('PGR').IsNull then
      begin
         New(P);
         P^:=IBSprav.FieldByName('PGR').AsString;
         DCTree1.Items.AddChildObject(vNode,IBSprav.FieldByName('NamPGR').AsString,P);
      end;
      IBSprav.Next;
    end
  finally
    IBSprav.Active:=False;
  end;
end;
end;

end.
