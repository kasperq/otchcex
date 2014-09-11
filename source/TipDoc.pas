unit TipDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,dm, DB, Grids, DBGridEh, ImgList, ComCtrls, ToolWin,
  IBCustomDataSet, IBTable, Buttons, ExtCtrls, IBQuery;

type
  TFTipDoc = class(TForm)
    ImageList1: TImageList;
    DBGridEh4: TDBGridEh;
    DataSource1: TDataSource;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    IBTipDok: TIBQuery;
    IBTipDokTIP_DOK_ID: TSmallintField;
    IBTipDokNAME: TIBStringField;
    IBTipDokSHORT_NAME: TIBStringField;
    IBTipDokPRIZ_UPDATE_NAL: TSmallintField;
    IBTipDokFIND_MAX_NDOK: TSmallintField;
    IBTipDokPRINTDOK: TSmallintField;
    IBTipDokPUTH_FRF: TIBStringField;
    IBTipDokTIP_DOK_OSN_ID: TSmallintField;
    IBTipDokTTN: TSmallintField;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh4DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTipDoc: TFTipDoc;

implementation

{$R *.dfm}

procedure TFTipDoc.FormShow(Sender: TObject);
begin
 if IBTipDok.Active then IBTipDok.Close;
 IBTipDok.ParamByName('tipop').AsInteger:=vtip_op_id;
 IBTipDok.Active:=true;
 s_nam_Tip_Doc:='';
 vTip_Doc_Id:=0;
end;

procedure TFTipDoc.DBGridEh4DblClick(Sender: TObject);
begin
 ModalResult :=IBTipDokTip_Dok_Id.AsInteger+50;
s_nam_Tip_Doc:=IBTipDokName.AsString;
vTip_Doc_Id:=IBTipDokTip_Dok_Id.AsInteger;
end;

procedure TFTipDoc.FormHide(Sender: TObject);
begin
IBTipDok.Active:=false;
end;

procedure TFTipDoc.SpeedButton1Click(Sender: TObject);
begin
ModalResult :=IBTipDokTip_Dok_Id.AsInteger+50;
s_nam_Tip_Doc:=IBTipDokName.AsString;
vTip_Doc_Id:=IBTipDokTip_Dok_Id.AsInteger;
end;

procedure TFTipDoc.SpeedButton2Click(Sender: TObject);
begin
ModalResult := mrCancel;
close;
end;

end.
