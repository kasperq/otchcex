unit SprSTAD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, FindDlgEh, ComCtrls, ToolWin, ImgList, Menus,
  ExtCtrls, DBCtrls, StdCtrls, Buttons,IBUpdSQLW,
  ToolEdit, IB,IBDatabase,
  Mask, DBGrids,db,
  SplshWnd, wwDialog, Wwfltdlg,
  IBStoredProc, IBQuery, IBCustomDataSet, IBTable,
  DBTables, BDEConfig,DBCtrlsEh, DBLookupEh,
  UtilR, UtilRIB, RxIBQuery,
  FR_DSet, FR_DBSet, FR_Class,VCLUtils,Printers;
type
  TFSprStad = class(TForm)
    DBGridEh2: TDBGridEh;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton8: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    FindDlgEh1: TFindDlgEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DBNavigator1: TDBNavigator;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSprStad: TFSprStad;

implementation
    USES DM, Find_LekGroup,Find_Spprod;
{$R *.dfm}

procedure TFSprStad.ToolButton4Click(Sender: TObject);
begin
If FindDlgEh1.Filtered Then FindDlgEh1.Filtered := False;
  FindDlgEh1.ShowFindResult := not (FindDlgEh1.Execute  = mrCancel);
end;

procedure TFSprStad.ToolButton8Click(Sender: TObject);
begin
  PopupMenu1.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFSprStad.N1Click(Sender: TObject);
begin
  USl_Sort:=' ORDER BY LEKGRUP.LEKNAMS';
  DM1.CEH_STAD.Active := False;
  DM1.CEH_STAD.MacroByName('SORT').AsString:= Usl_SORT;
  DM1.CEH_STAD.Active := True;
end;

procedure TFSprStad.N3Click(Sender: TObject);
begin
  USl_Sort:=' ORDER BY CEH_STAD.LEK_ID';
  DM1.CEH_STAD.Active := False;
  DM1.CEH_STAD.MacroByName('SORT').AsString:= Usl_SORT;
  DM1.CEH_STAD.Active := True;
end;

procedure TFSprStad.N2Click(Sender: TObject);
begin
  USl_Sort:=' ORDER BY CEH_STAD.NAME_STAD';
  DM1.CEH_STAD.Active := False;
  DM1.CEH_STAD.MacroByName('SORT').AsString:= Usl_SORT;
  DM1.CEH_STAD.Active := True;
end;

procedure TFSprStad.ToolButton3Click(Sender: TObject);
begin
 if (DM1.Ceh_Stad.Modified) or (DM1.Ceh_Stad.State =dsEdit)
    or (DM1.Ceh_Stad.State =dsInsert) then
  DM1.Ceh_Stad.Post;
 if not dm1.IBT_Write.Active then
  dm1.IBT_Write.StartTransaction;
 try
  if DM1.Ceh_Stad.UpdatesPending then
   DM1.Ceh_Stad.ApplyUpdates;
  DM1.IBT_Write.CommitRetaining;
 except
  on E: Exception do
  begin
   MessageDlg('Произошла ошибка при записи !'+E.Message, mtWarning, [mbOK], 0);
   raise;
   dm1.Ceh_Stad.CancelUpdates;
   DM1.IBT_Write.RollbackRetaining;
  end;
 end;
end;

procedure TFSprStad.FormActivate(Sender: TObject);
begin
 if not DM1.CEH_STAD.Active then
 begin
  USl_Sort:=' ORDER BY CEH_STAD.LEK_ID';
  DM1.CEH_STAD.Active := False;
  DM1.CEH_STAD.MacroByName('SORT').AsString:= Usl_SORT;
  DM1.CEH_STAD.Active := True;
 end;
end;

procedure TFSprStad.DBGridEh2EditButtonClick(Sender: TObject);
begin
 if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
 if FindLekGroup=nil then FindLekGroup:=TFindLekGroup.Create(Application);
 FindSpprod.DataBaseName:=dm1.BELMED;
 FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
 FindLekGroup.ShowModal;
 if FindLekGroup.ModalResult > 50 then
 begin
  DM1.Ceh_Stad.Edit;
  DM1.Ceh_StadLek_ID.AsInteger:=FindLekGroup.ND_ALL.FieldByName('lek_id').AsInteger;
  DM1.Ceh_StadLekNams.AsString:=FindLekGroup.ND_ALL.FieldByName('leknams').Asstring;;
 end;
end;

procedure TFSprStad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (DM1.Ceh_Stad.Modified) or (DM1.Ceh_Stad.State =dsEdit)
  or (DM1.Ceh_Stad.State =dsInsert) then
  DM1.Ceh_Stad.Post;
 if DM1.Ceh_Stad.UpdatesPending  then
 begin
     if MessageDlg('Записать изменения?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
     begin
      try
       DM1.Ceh_Stad.ApplyUpdates;
       DM1.IBT_Write.CommitRetaining;

      except
       MessageDlg('Произошла ошибка при записи !', mtWarning, [mbOK], 0);
       DM1.Ceh_Stad.CancelUpdates;
       DM1.IBT_Write.RollbackRetaining;
      end;
     end
     else
     begin
      DM1.Ceh_Stad.CancelUpdates;
      DM1.IBT_Write.RollbackRetaining;
     end;

  end;
//  DM1.Ceh_Stad.Close;
//  DM1.IBT_Read.Active:=false;
//  DM1.IBT_Read.Active:=true;
//  DM1.IBT_Write.Active:=false;
//  DM1.IBT_Write.Active:=true;
 end;

procedure TFSprStad.ToolButton2Click(Sender: TObject);
begin
DM1.Ceh_Stad.Insert;
end;

procedure TFSprStad.ToolButton1Click(Sender: TObject);
  var acc: variant;
begin
 acc:=SelectToVarIB('SELECT ceh_journst.stadia_id FROM ceh_journst WHERE '+
 ' ceh_journst.stadia_id='+inttostr(dm1.ceh_stadStadia_id.asinteger),dm1.belmed,dm1.ibt_read);
 If acc<>Null then
 begin
  MessageDlg('Запись нельзя удалять!', mtWarning, [mbOK], 0);
  abort;
 end
 else
  dm1.Ceh_Stad.Delete;
end;

procedure TFSprStad.SpeedButton1Click(Sender: TObject);
begin
ModalResult :=dm1.Ceh_Stad.FieldByName('Stadia_Id').AsInteger+50;
end;

procedure TFSprStad.SpeedButton2Click(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure TFSprStad.FormShow(Sender: TObject);
begin
IF PR_N THEN PANEL2.VISIBLE:=TRUE ELSE PANEL2.VISIBLE:=FALSE;
end;

end.
