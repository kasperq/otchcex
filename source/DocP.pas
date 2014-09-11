unit DocP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, DBCtrlsEh, DBLookupEh, Mask, ToolEdit, Buttons, StdCtrls;

type
  TFdocP = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure DBLookupComboboxEh1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FdocP: TFdocP;

implementation
 uses dm;
{$R *.dfm}

procedure TFdocP.DateEdit1Change(Sender: TObject);
begin
  VDATE_DOK := DateEdit1.Date;
  VDATE_Op := DateEdit1.Date;
end;

procedure TFdocP.DBLookupComboboxEh1Change(Sender: TObject);
begin
  if DBLookupComboboxEh1.KeyValue <> null then
    struk_id := DBLookupComboboxEh1.KeyValue;
end;

procedure TFdocP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  vndoc := edit1.text;
//    ModalResult := -1;
end;

procedure TFdocP.FormShow(Sender: TObject);
begin
  edit1.text := '';
  DateEdit1.Date := date();
  DBLookupComboboxEh1.KeyValue := null;
end;

procedure TFdocP.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := 666;
  vndoc := edit1.text;
end;

procedure TFdocP.SpeedButton2Click(Sender: TObject);
begin
  ModalResult := -1;
  Close;
end;

end.
