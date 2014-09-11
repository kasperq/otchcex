unit FVipusk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, RxIBQuery, DB, IBQuery,
  Buttons, Grids, DBGridEh, ImgList, StdCtrls, ComCtrls, ToolWin;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton8: TToolButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    Label8: TLabel;
    ImageList1: TImageList;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    RxIBQuery1: TRxIBQuery;
    IBUpdateSQLW1: TIBUpdateSQLW;
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
