unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, DB, IBQuery, RxIBQuery,
  ImgList, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls, Spin, ComCtrls, ToolWin;

type
  TForm3 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    Label3: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label13: TLabel;
    SpeedButton2: TSpeedButton;
    Label14: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    ImageList2: TImageList;
    PoterZag: TRxIBQuery;
    PoterZagKOD_PROD: TIBStringField;
    PoterZagKSM_ID: TIntegerField;
    PoterZagKART_ID: TIntegerField;
    PoterZagOSTATOK_END_S: TFMTBCDField;
    PoterZagOSTATOK_END_NZ: TFMTBCDField;
    PoterZagOSTATOK_BEGIN_NZ: TFMTBCDField;
    PoterZagOSTATOK_BEGIN_S: TFMTBCDField;
    PoterZagRAZDEL_ID: TSmallintField;
    PoterZagKEI_ID: TSmallintField;
    PoterZagKRAZ: TSmallintField;
    PoterZagKEI_IDN: TSmallintField;
    PoterZagNEISN: TIBStringField;
    PoterZagZAG_PERIOD: TFMTBCDField;
    PoterZagPERS: TFMTBCDField;
    PoterZagPERNZ: TFMTBCDField;
    PoterZagPOTERI: TFMTBCDField;
    PoterZagZAG_POTERI: TFMTBCDField;
    PoterZagKSM_IDPR: TIntegerField;
    PoterZagNMAT: TIBStringField;
    DSPoterZag: TDataSource;
    PoterZagUpdateSQLW1: TIBUpdateSQLW;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
 uses dm;
{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
PoterZag.Active:=true;
 PoterZag.First;
end;

end.
