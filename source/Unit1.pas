unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGridEh, Mask, DBCtrls, StdCtrls, ImgList,
  ExtCtrls, ToolWin,
  SplshWnd,
  IBUpdateSQL, IBUpdSQLW, RxIBQuery,
  Menus, VCLUtils,UtilRIB,
  wwDialog, Wwfltdlg,Fr_pars,
  IBCustomDataSet,  RxMemDS, IBTable,
  FR_DSet, FR_DBSet, FR_Class, IBSQL, DB, IBQuery, IBStoredProc,
  IBDatabase, IB,
  DBCtrlsEh,
  DBLookupEh, BDEUtils, UtilR;
type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    DBGridEh2: TDBGridEh;
    Label4: TLabel;
    Label5: TLabel;
    Label22: TLabel;
    Label19: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label21: TLabel;
    Label15: TLabel;
    Label41: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBGridEh3: TDBGridEh;
    Edit1: TEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    ToolBar1: TToolBar;
    DBNavigator1: TDBNavigator;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
