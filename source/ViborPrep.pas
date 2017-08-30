unit ViborPrep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, Buttons, ExtCtrls;

type
  TFViborPrep = class(TForm)
    ImageList1: TImageList;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FViborPrep: TFViborPrep;

implementation
  uses dm, Find_Spprod;
{$R *.dfm}

procedure TFViborPrep.Edit1Change(Sender: TObject);

begin
if edit1.text<>''   then begin
 skod:=edit1.text+'%';
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
 DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM');
 DM1.IBQuery1.SQL.Add(' FROM SPPROD');
 DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
 DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+skod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
  begin
   Label2.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
   Label3.Caption:=DM1.IBQuery1.FieldByName('Xarkt').AsString;
   Label4.Caption:=DM1.IBQuery1.FieldByName('Gost').Asstring;
   Label5.Caption:=DM1.IBQuery1.FieldByName('Nam').AsString;
  end
  else
  begin
   Label4.Caption:='';
   Label2.Caption:='';
   Label3.Caption:='';
   Label5.Caption:='';
  end;
 Label4.Refresh;
 Label2.Refresh;
 Label3.Refresh;
 Label5.Refresh;
 end;
end;

procedure TFViborPrep.Edit1Click(Sender: TObject);
begin
edit1.text:='';
end;

procedure TFViborPrep.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
//  StartWait;
  if (edit1.text<>'') and (not dm1.IBQuery1.Eof)  then
   begin
    EDIT1.OnChange:=nil;
    edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
    EDIT1.OnChange:=Edit1Change;
    s_kodp:=DM1.IBQuery1.FieldByName('KSM_ID').value;
    s_gost:=DM1.IBQuery1.FieldByName('GOST').AsString;
    s_xarkt:=DM1.IBQuery1.FieldByName('XARKT').AsString;
    s_nmat:=DM1.IBQuery1.FieldByName('NMAT').AsString;
    s_kei:=DM1.IBQuery1.FieldByName('KEI_ID').VALUE;
    s_korg:=DM1.IBQuery1.FieldByName('KORG').AsInteger;
    s_kodProd:=DM1.IBQuery1.FieldByName('KOD_PROD').AsString;
    s_namorg:=DM1.IBQuery1.FieldByName('NAM').AsString;
    s_neiz:=DM1.IBQuery1.FieldByName('NEIS').AsString;
    Label2.Caption:=DM1.IBQuery1.FieldByName('nmat').AsString;
   end;
 //  StopWait;
 end;
end;

procedure TFViborPrep.FormCreate(Sender: TObject);
begin
 Edit1.Text:='';
 Label4.Caption:='';
 Label2.Caption:='';
 Label3.Caption:='';
 Label5.Caption:='';
end;

procedure TFViborPrep.SpeedButton2Click(Sender: TObject);
begin
s_kodp:=0;
s_gost:='';
s_xarkt:='';
s_nmat:='';
s_kodProd:='';
s_namorg:='';
s_neiz:='';
close;
end;

procedure TFViborPrep.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure TFViborPrep.SpeedButton3Click(Sender: TObject);
begin
if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
FindSpprod.DataBaseName:=dm1.BELMED;
FindSpprod.ReadOnly:=true;
FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
FindSpprod.ShowModal;
if FindSpprod.ModalResult > 50 then
 begin
  EDIT1.OnChange:=nil;
  edit1.text:=FindSpprod.IBSpprodKod_Prod.Asstring;
  EDIT1.OnChange:=Edit1Change;
  s_kodp:=FindSpprod.ModalResult-50;
  s_gost:=FindSpprod.IBSpprodGOST.AsString;
  s_xarkt:=FindSpprod.IBSpprodXARKT.AsString;
  s_nmat:=FindSpprod.IBSpprodNMAT.AsString;
  s_kei:=FindSpprod.IBSpprodKEI_ID.VALUE;
  s_korg:=FindSpprod.IBSpprodKORG.AsInteger;
  s_kodProd:=FindSpprod.IBSpprodKOD_PROD.AsString;
  s_namorg:=FindSpprod.IBSpprodNAME_ORG.AsString;
  s_neiz:=FindSpprod.IBSpprodNEIS.AsString;
  label2.caption:=s_nmat;
  label5.caption:=s_namorg;
  label4.caption:=s_GOST;
  label3.caption:=s_Xarkt;
 end;
end;

end.
