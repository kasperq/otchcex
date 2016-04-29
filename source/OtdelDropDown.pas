unit OtdelDropDown;

interface

uses 
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, RxIBQuery, Grids, DBGridEh, StdCtrls,
  Buttons, ExtCtrls;

type
  TFOtdelDropDown = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grd_otdel: TDBGridEh;
    q_otdel: TRxIBQuery;
    DS_q_otdel: TDataSource;
    q_otdelSTNAME: TIBStringField;
    q_otdelSTRUK_ID: TSmallintField;
    procedure FormShow(Sender: TObject);
    procedure q_otdelAfterOpen(DataSet: TDataSet);
    procedure q_otdelAfterClose(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure grd_otdelDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
//
  public
    strukId : integer;
    opened : boolean;
    otdelId : integer;
    otdelName : string;

  end;

implementation

{$R *.dfm}

uses dm;

procedure TFOtdelDropDown.BitBtn1Click(Sender: TObject);
begin
  otdelId := q_otdelSTRUK_ID.AsInteger;
  otdelName := q_otdelSTNAME.AsString;
  ModalResult := mrOk;
end;

procedure TFOtdelDropDown.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFOtdelDropDown.FormDestroy(Sender: TObject);
begin
  q_otdel.Close;
end;

procedure TFOtdelDropDown.FormShow(Sender: TObject);
begin
  otdelId := 0;
  otdelName := '';
  if (not opened) or (q_otdel.ParamByName('struk_id').AsInteger <> strukId) then
  begin
    q_otdel.Close;
    q_otdel.ParamByName('struk_id').AsInteger := strukId;
    q_otdel.Open;
  end;
  grd_otdel.SetFocus;
end;

procedure TFOtdelDropDown.grd_otdelDblClick(Sender: TObject);
begin
  BitBtn1Click(Sender);
end;

procedure TFOtdelDropDown.q_otdelAfterClose(DataSet: TDataSet);
begin
  opened := false;
end;

procedure TFOtdelDropDown.q_otdelAfterOpen(DataSet: TDataSet);
begin
  q_otdel.FetchAll;
  opened := true;
end;

end.
