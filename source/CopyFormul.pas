unit CopyFormul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, ImgList, ComCtrls,
  ToolWin;

type
  TFCopyFormul = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ImageList1: TImageList;
    Rab_Formul: TIBQuery;
    Rab_FormulNORMZ_ID: TIntegerField;
    Rab_FormulKSM_ID_PR: TIntegerField;
    Rab_FormulKSM_ID_MAT: TIntegerField;
    Rab_FormulRAZDEL_ID: TSmallintField;
    Rab_FormulFORMULA: TIBStringField;
    Rab_FormulKOEF1: TIBBCDField;
    Rab_FormulKOEF2: TIBBCDField;
    Rab_FormulKOEF3: TIBBCDField;
    Rab_FormulPROC: TIBBCDField;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCopyFormul: TFCopyFormul;

implementation
  uses dm,SprFormul;
{$R *.dfm}

procedure TFCopyFormul.Edit1Change(Sender: TObject);
 var
skod:string;
begin
if edit1.text<>''   then begin
 skod:=edit1.text+'%';
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
 DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,struk.stname');
 DM1.IBQuery1.SQL.Add(' FROM SPPROD');
 DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add('  INNER JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
 DM1.IBQuery1.SQL.Add('  INNER JOIN Struk ON (SPPROD.struk_id = Struk.struk_id)');
 DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+skod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
  Label2.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString
  else Label2.Caption:='';
 Label2.Refresh;
end;
end;

procedure TFCopyFormul.Edit1Click(Sender: TObject);
begin
edit1.text:='';
end;

procedure TFCopyFormul.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
  if (edit1.text<>'') and (not dm1.IBQuery1.Eof)  then
   begin
    EDIT1.OnChange:=nil;
    edit1.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
    EDIT1.OnChange:=Edit1Change;
    label2.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;;
   end;
 end;
end;

procedure TFCopyFormul.ToolButton1Click(Sender: TObject);
begin
    Rab_Formul.Close;
    Rab_Formul.ParamByName('kodp').AsString:=DM1.IBQuery1.FieldByName('KSM_ID').value;
    Rab_Formul.Open;
    Rab_Formul.First;
    while not Rab_Formul.Eof do
     begin
      FSprFormul.Ceh_Normz.Insert;
      FSprFormul.Ceh_NormzKsm_Id_Pr.AsInteger:=s_kodp;
      FSprFormul.Ceh_NormzKsm_Id_mat.AsInteger:=Rab_FormulKsm_Id_mat.AsInteger;
      FSprFormul.Ceh_NormzRazdel_Id.AsInteger:=Rab_FormulRazdel_Id.AsInteger;
      FSprFormul.Ceh_NormzFormula.AsString:=Rab_FormulFormula.AsString;
      FSprFormul.Ceh_NormzKoef1.AsFloat:=Rab_FormulKoef1.AsFloat;
      FSprFormul.Ceh_NormzKoef2.AsFloat:=Rab_FormulKoef2.AsFloat;
      FSprFormul.Ceh_NormzKoef3.AsFloat:=Rab_FormulKoef3.AsFloat;
      FSprFormul.Ceh_NormzProc.AsFloat:=Rab_FormulProc.AsFloat;
    end;
end;

procedure TFCopyFormul.ToolButton2Click(Sender: TObject);
begin
close;
end;

end.
