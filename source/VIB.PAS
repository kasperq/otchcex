unit VibPrep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, Grids, DBGridEh, StdCtrls, DB,
  RxMemDS, ExtCtrls;

type
  TFVibPrep = class(TForm)
    FactVipusk: TRxMemoryData;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ImageList1: TImageList;
    DSFactVipusk: TDataSource;
    FactVipuskkol_prih: TFloatField;
    FactVipuskNMAT: TStringField;
    FactVipuskXARKT: TStringField;
    FactVipuskKOD_PROD: TStringField;
    FactVipuskvib: TBooleanField;
    RadioGroup1: TRadioGroup;
    ToolButton3: TToolButton;
    FactVipuskKSM_ID: TIntegerField;
    FactVipuskSTRUK_ID: TIntegerField;
    Label2: TLabel;
    DBGridEh2: TDBGridEh;
    Razdel1: TRxMemoryData;
    DSRazdel1: TDataSource;
    Razdel1razdel_id: TIntegerField;
    Razdel1Namraz: TStringField;
    Razdel1kodraz: TStringField;
    Razdel1Kraz: TIntegerField;
    Razdel1vib: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVibPrep: TFVibPrep;

implementation

uses dm;

{$R *.dfm}

procedure TFVibPrep.FormShow(Sender: TObject);
begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT kart.kol_prih,SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD,SPPROD.STRUK_ID,KART.KSM_ID');
  DM1.IBQuery1.SQL.Add(' FROM KART');
  DM1.IBQuery1.SQL.Add(' INNER JOIN SPPROD ON (KART.KSM_ID = SPPROD.KSM_ID)');
  DM1.IBQuery1.SQL.Add(' WHERE KART.DOC_ID='+INTTOSTR(Vdocument_id));
  DM1.IBQuery1.SQL.Add(' ORDER BY SPPROD.NMAT ');
  DM1.IBQuery1.Active:=true;
  FactVipusk.EmptyTable;
  FactVipusk.LoadFromDataSet(DM1.IBQuery1,0,lmAppend);
  FactVipusk.Active := True;
  FactVipusk.First;
  FactVipusk.DisableControls;
  While not FactVipusk.Eof do
  begin
   FactVipusk.Edit;
   FactVipusk.FieldByName('Vib').ASBoolean := False;
   FactVipusk.Post;
   FactVipusk.Next;
  end;
  FactVipusk.First;
  FactVipusk.EnableControls;

end;

procedure TFVibPrep.ToolButton2Click(Sender: TObject);
begin
 FactVipusk.First;
  FactVipusk.DisableControls;
  While not FactVipusk.Eof do
  begin
   FactVipusk.Edit;
   FactVipusk.FieldByName('Vib').ASBoolean := False;
   FactVipusk.Post;
   FactVipusk.Next;
  end;
  FactVipusk.EnableControls;
 close;
end;

procedure TFVibPrep.ToolButton1Click(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TFVibPrep.RadioGroup1Click(Sender: TObject);
begin
 if RadioGroup1.ItemIndex=1 then
 begin
  FactVipusk.First;
  FactVipusk.DisableControls;
  While not FactVipusk.Eof do
  begin
   FactVipusk.Edit;
   FactVipusk.FieldByName('Vib').ASBoolean := True;
   FactVipusk.Post;
   FactVipusk.Next;
  end;
  FactVipusk.First;
  FactVipusk.EnableControls;
 end
 else
 begin
  FactVipusk.First;
  FactVipusk.DisableControls;
  While not FactVipusk.Eof do
  begin
   FactVipusk.Edit;
   FactVipusk.FieldByName('Vib').ASBoolean := False;
   FactVipusk.Post;
   FactVipusk.Next;
  end;
  FactVipusk.First;
  FactVipusk.EnableControls;
 end;
end;


end.
