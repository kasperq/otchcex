unit ChooseKart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, RxIBQuery, Grids, DBGridEh,
  ExtCtrls, StdCtrls, Buttons;

type
  TFChooseKart = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    q_prepKart: TRxIBQuery;
    db: TIBDatabase;
    trans_read: TIBTransaction;
    q_prepKartSTRUK_ID: TIntegerField;
    q_prepKartKSM_ID: TIntegerField;
    q_prepKartONM_NZ: TFMTBCDField;
    q_prepKartOT_S: TFMTBCDField;
    q_prepKartOT_NZ: TFMTBCDField;
    q_prepKartKART_ID: TIntegerField;
    q_prepKartKSM_IDPR: TIntegerField;
    q_prepKartRAZDEL_ID: TSmallintField;
    q_prepKartACCOUNT: TIBStringField;
    ds_prepKart: TDataSource;
    btn_ok: TBitBtn;
    btn_cancel: TBitBtn;
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    kartId : integer;

    procedure setDB(var db : TIBDatabase);
    procedure loadPrepKart(strukId, ksmIdPrep, ksmId, razdelId, curKartId : integer);

  end;


implementation

{$R *.dfm}

procedure TFChooseKart.setDB(var db: TIBDatabase);
begin
  self.db := db;
end;

procedure TFChooseKart.btn_okClick(Sender: TObject);
begin
  kartId := q_prepKart.FieldByName('KART_ID').AsInteger;
  ModalResult := 50 + q_prepKart.FieldByName('KART_ID').AsInteger;
end;

procedure TFChooseKart.DBGridEh1DblClick(Sender: TObject);
begin
  btn_okClick(sender);
end;

procedure TFChooseKart.btn_cancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFChooseKart.loadPrepKart(strukId, ksmIdPrep, ksmId, razdelId, curKartId : integer);
begin
  q_prepKart.Close;
  q_prepKart.ParamByName('struk_id').AsInteger := strukId;
  q_prepKart.ParamByName('ksm_idpr').AsInteger := ksmIdPrep;
  q_prepKart.ParamByName('ksm_id').AsInteger := ksmId;
  q_prepKart.ParamByName('razdel_id').AsInteger := razdelId;
  q_prepKart.Open;
  q_prepKart.Locate('kart_id', VarArrayOf([curKartId]), []);
end;

end.
