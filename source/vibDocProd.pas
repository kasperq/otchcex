unit vibDocProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, StdCtrls, Mask, ToolEdit, DBCtrls, ToolWin,
  ComCtrls, FindDlgEh, IBQuery, Buttons, ExtCtrls, Grids, DBGridEh, ImgList;

type
  TFVibDocProd = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    docGotProd: TIBQuery;
    DataSource1: TDataSource;
    FindDlgEh1: TFindDlgEh;
    ToolBar2: TToolBar;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    docGotProdNDOK: TIBStringField;
    docGotProdDATE_DOK: TDateField;
    docGotProdSTNAME: TIBStringField;
    docGotProdDOC_ID: TIntegerField;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    docGotProdKOD_PROD: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVibDocProd: TFVibDocProd;

implementation
 uses dm;
{$R *.dfm}

procedure TFVibDocProd.FormShow(Sender: TObject);
begin
{ if s_dat1=' ' then
 begin
  IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
  S_DAT1:='01.'+S_MES+'.'+INTTOSTR(GOD);
  S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
 end;}
  dateEdit1.Date := strtodate(s_dat1);
  dateEdit2.Date := strtodate(s_dat2);
  DocGotProd.Active := False;
  DocGotProd.ParamByName('struk').AsInteger := vstruk_id;
  DocGotProd.ParamByName('DAT1').AsDateTime := strtodate(S_DAT1);
  DocGotProd.ParamByName('DAT2').AsDateTime := strtodate(S_DAT2);
  DocGotProd.Active := TRUE;
end;

procedure TFVibDocProd.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := DocGotProdDoc_id.AsInteger+50;
end;

procedure TFVibDocProd.SpeedButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFVibDocProd.ToolButton1Click(Sender: TObject);
begin
  s_dat1 := datetostr(dateEdit1.Date);
  s_dat2 := datetostr(dateEdit2.Date);
  DocGotProd.Active := False;
  DocGotProd.ParamByName('struk').AsInteger := vstruk_id;
  DocGotProd.ParamByName('DAT1').AsDateTime := dateEdit1.Date;
  DocGotProd.ParamByName('DAT2').AsDateTime := dateEdit2.Date;
  DocGotProd.Active := TRUE;
end;

end.
