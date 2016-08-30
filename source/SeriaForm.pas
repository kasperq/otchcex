unit SeriaForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FindDlgEh, StdCtrls, Buttons, Grids, DBGridEh, ExtCtrls, DB,
  kbmMemTable;

type
  TFSeriaForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grid_seria: TDBGridEh;
    btn_ok: TBitBtn;
    btn_cancel: TBitBtn;
    FindDlgEh1: TFindDlgEh;
    mem_seria: TkbmMemTable;
    ds_seria: TDataSource;
    mem_seriaSERIA: TStringField;
    mem_seriaSERIA_ID: TIntegerField;
    mem_seriaDATE_ZAG: TDateField;
    mem_seriaKOL_SERIA: TFloatField;
    procedure grid_seriaDblClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
  private
    function getCurSeriaId() : integer;
  public
    procedure loadSeriaDS(source : TDataSet);

  end;

implementation

{$R *.dfm}

function TFSeriaForm.getCurSeriaId() : integer;
begin
  result := mem_seriaSERIA_ID.AsInteger;
end;

procedure TFSeriaForm.btn_cancelClick(Sender: TObject);
begin
  close;
end;

procedure TFSeriaForm.btn_okClick(Sender: TObject);
begin
  ModalResult := getCurSeriaId + 50;
end;

procedure TFSeriaForm.grid_seriaDblClick(Sender: TObject);
begin
  ModalResult := getCurSeriaId + 50;
end;

procedure TFSeriaForm.loadSeriaDS(source : TDataSet);
begin
  mem_seria.EmptyTable;
  mem_seria.LoadFromDataSet(source, [mtcpoAppend]);
  mem_seria.Open;
  mem_seria.Last;
end;

end.
