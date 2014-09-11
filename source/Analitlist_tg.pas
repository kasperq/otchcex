unit Analitlist_tg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxExportXLS, frxChBox, frxDBSet, DB, IBCustomDataSet,
  IBUpdateSQL, IBUpdSQLW, IBQuery, Grids, DBGridEh, ToolEdit, RXDBCtrl,
  StdCtrls, DBCtrlsEh, Mask, ExtCtrls, ComCtrls, ToolWin, ImgList;

type
  TFAnalitList_tg = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    RxDBComboEdit1: TRxDBComboEdit;
    RxDBComboEdit2: TRxDBComboEdit;
    DBEditEh1: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBDateEdit1: TDBDateEdit;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    DBDateEdit4: TDBDateEdit;
    DBEditEh10: TDBEditEh;
    DBEditEh11: TDBEditEh;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    RxDBComboEdit3: TRxDBComboEdit;
    RxDBComboEdit4: TRxDBComboEdit;
    RxDBComboEdit5: TRxDBComboEdit;
    RxDBComboEdit6: TRxDBComboEdit;
    RxDBComboEdit7: TRxDBComboEdit;
    RxDBComboEdit8: TRxDBComboEdit;
    RxDBComboEdit9: TRxDBComboEdit;
    RxDBComboEdit10: TRxDBComboEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    DBCheckBoxEh2: TDBCheckBoxEh;
    DBDateEdit6: TDBDateEdit;
    DBEditEh3: TDBEditEh;
    OTK_RESULT: TIBQuery;
    OTK_RESULTRESULT_ID: TIntegerField;
    OTK_RESULTPOKAZ_ID: TIntegerField;
    OTK_RESULTTREB: TIBStringField;
    OTK_RESULTRESULT: TIBStringField;
    OTK_RESULTPOKAZ_ORDER: TSmallintField;
    OTK_RESULTANALIT_ID: TIntegerField;
    OTK_RESULTPOKAZ_NAME: TIBStringField;
    OTK_RESULTPOKAZNTD_ID: TIntegerField;
    DSotk_result: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxXLSExport1: TfrxXLSExport;
    ImageList1: TImageList;
    frxDBDataset2: TfrxDBDataset;
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnalitList_tg: TFAnalitList_tg;

implementation
uses dm;
{$R *.dfm}

procedure TFAnalitList_tg.ToolButton1Click(Sender: TObject);
begin
 DBGridEh1.SetFocus;
 frxReport1.LoadFromFile(reportsPath + 'Analit.fr3');
 frxReport1.ShowReport;
end;

end.
