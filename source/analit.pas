unit analit;

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
    treb_results: TIBQuery;
    DataAnalit: TDataSource;
    Datatreb_results: TDataSource;
    analitAN_NUM: TIntegerField;
    analitDATEBEGIN: TDateField;
    analitDATEEND: TDateField;
    analitDATEG_BEG: TDateField;
    analitDATEG_ENDN: TDateField;
    analitDATEG_ENDS: TDateField;
    analitDATEGETPR: TDateField;
    analitDATEPAS: TDateField;
    analitGOST: TIBStringField;
    analitID: TIntegerField;
    analitKEI_ID: TSmallintField;
    analitKOD: TIntegerField;
    analitKSM_ID: TIntegerField;
    analitMAKEIT: TIBStringField;
    analitNAME: TIBStringField;
    analitNAME_DOLG: TIBStringField;
    analitNMODIFIED: TSmallintField;
    analitNUMPART: TIBStringField;
    analitRESULT_OTK: TIBStringField;
    analitRESULVNO: TIBStringField;
    analitSOPRDOC: TIBStringField;
    analitTYPE_TEST: TIBStringField;
    analitVOL: TIBStringField;
    analitVOLPART: TFMTBCDField;
    analitXARKT: TIBStringField;
    analitNAM: TIBStringField;
    analitEDIZ_NAME: TIBStringField;
    analitKSM_NAME: TIBStringField;
    procedure ToolButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnalit: TFAnalit;

implementation
  uses dm, otk_find;
{$R *.dfm}

procedure TFAnalit.ToolButton6Click(Sender: TObject);
begin
 if Find_an=nil then Find_an:=TFind_an.Create(Application);
  Find_an.ShowModal;
 if Find_an.ModalResult > 50 then
 begin
  if analit.Active then analit.Active:=false;
  analit.ParamByName('ksm').AsInteger:=Find_an.FindKsm_id.AsInteger;
  analit.Open;
  analit.Locate('id',Find_an.FindId.AsInteger,[]);
  if treb_results.Active then treb_results.Close;
  treb_results.ParamByName('ksm').AsInteger:=Find_an.FindKsm_id.AsInteger;
  treb_results.ParamByName('id').AsInteger:=Find_an.FindId.AsInteger;
  treb_results.Open;
 end;
end;

procedure TFAnalit.FormShow(Sender: TObject);
begin
 if not analit.Active then
 begin
  if ksm_ov<>0 then
  begin
   analit.ParamByName('ksm').AsInteger:=ksm_ov;
   analit.Open;
   analit.Last;
   if treb_results.Active then treb_results.Close;
   treb_results.ParamByName('ksm').AsInteger:=ksm_ov;
   treb_results.ParamByName('id').AsInteger:=analitId.AsInteger;
   treb_results.Open;
  end;
 end;
end;

end.
