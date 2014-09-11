unit Anall_list;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Mask, Grids, DBGrids, Buttons,
  ImgList, ComCtrls, ToolWin, DB, IBCustomDataSet, IBQuery;

type
  TFAnalit = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label21: TLabel;
    Label26: TLabel;
    Label39: TLabel;
    Label31: TLabel;
    DBGrid1: TDBGrid;
    DBGrid5: TDBGrid;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit25: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit30: TDBEdit;
    ToolBar1: TToolBar;
    DBNavigator2: TDBNavigator;
    ToolButton6: TToolButton;
    ToolButton5: TToolButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    Label22: TLabel;
    DBEdit6: TDBEdit;
    DBEdit24: TDBEdit;
    Label1: TLabel;
    Label18: TLabel;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit26: TDBEdit;
    analit: TIBQuery;
    treb: TIBQuery;
    results: TIBQuery;
    DataAnalit: TDataSource;
    Datatreb: TDataSource;
    DataResults: TDataSource;
    analitKSM_ID: TIntegerField;
    analitGOST: TIBStringField;
    analitXARKT: TIBStringField;
    analitAN_NUM: TIntegerField;
    analitID: TIntegerField;
    analitKOD: TIntegerField;
    analitSOPRDOC: TIBStringField;
    analitNUMPART: TIBStringField;
    analitDATEG_BEG: TDateField;
    analitDATEG_ENDS: TDateField;
    analitDATEG_ENDN: TDateField;
    analitVOLPART: TFMTBCDField;
    analitRESULVNO: TIBStringField;
    analitDATEGETPR: TDateField;
    analitDATEBEGIN: TDateField;
    analitDATEEND: TDateField;
    analitNAME: TIBStringField;
    analitNAME_DOLG: TIBStringField;
    analitRESULT_OTK: TIBStringField;
    analitKEI_ID: TSmallintField;
    analitDATEPAS: TDateField;
    analitTYPE_TEST: TIBStringField;
    analitMAKEIT: TIBStringField;
    analitVOL: TIBStringField;
    analitNMODIFIED: TSmallintField;
    trebKSM_ID: TIntegerField;
    trebGOST: TIBStringField;
    trebXARKT: TIBStringField;
    trebKEY: TIntegerField;
    trebANALIT: TIBStringField;
    trebTREB: TIBStringField;
    trebNMODIFIED: TSmallintField;
    trebTREB_ID: TIntegerField;
    resultsKEY: TIntegerField;
    resultsID: TIntegerField;
    resultsRESULT: TIBStringField;
    resultsNMODIFIED: TSmallintField;
    resultsRESULTS_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnalit: TFAnalit;

implementation
  uses dm;
{$R *.dfm}

end.
