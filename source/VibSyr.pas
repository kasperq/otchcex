unit VibSyr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGridEh, Buttons, ExtCtrls,
  StdCtrls, ToolWin, ComCtrls, RxIBQuery, IBUpdateSQL, IBUpdSQLW;

type
  TFVibSyr = class(TForm)
    DBGridEh1: TDBGridEh;
    ostprep1: TIBQuery;
    DSostprep: TDataSource;
    ostprep1OSTATOK_END_S: TFMTBCDField;
    ostprep1KSM_ID: TIntegerField;
    ostprep1NMAT: TIBStringField;
    ostprep1OSTATOK_END_NZ: TFMTBCDField;
    ostprep1NEIS: TIBStringField;
    ostprep1KEI_ID: TSmallintField;
    ostprep1KRAZ: TSmallintField;
    ostprep1RAZDEL_ID: TSmallintField;
    ostprep1VIB: TIntegerField;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ostprep: TRxIBQuery;
    ostprepOSTATOK_END_S: TFMTBCDField;
    ostprepKSM_ID: TIntegerField;
    ostprepNMAT: TIBStringField;
    ostprepOSTATOK_END_NZ: TFMTBCDField;
    ostprepNEIS: TIBStringField;
    ostprepKEI_ID: TSmallintField;
    ostprepKRAZ: TSmallintField;
    ostprepRAZDEL_ID: TSmallintField;
    ostprepVIB: TIntegerField;
    OstprepUpdate: TIBUpdateSQLW;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVibSyr: TFVibSyr;

implementation
 uses dm,KorOtchet,Find_Spprod,Find_Struk,VybPrep;
{$R *.dfm}

procedure TFVibSyr.DBGridEh1DblClick(Sender: TObject);
begin
 if RadioGroup1.ItemIndex=0 then
 ModalResult:=mrOk;
end;

procedure TFVibSyr.FormShow(Sender: TObject);
begin

// if fKorOtchet.RadioGroup2.ItemIndex=2 then
// begin
  label1.Visible:=false;
  label2.Visible:=false;
  edit1.Visible:=false;
  SpeedButton3.Visible:=false;
{ end
 else
 begin
  label1.Caption:='   Куда передавать:';
  label2.Caption:='';
  edit1.Text:='';
  SpeedButton3.Visible:=true;
 end;}
 ostprep.Active := False;
 ostprep.ParamByName('dat1').AsDateTime:=strtodate(s_dat1);
 ostprep.ParamByName('dat2').AsDateTime:=strtodate(s_dat2);
 ostprep.ParamByName('struk').AsInteger:=vStruk_id;
 ostprep.ParamByName('kodp').AsInteger:=s_kodp;
 ostprep.Active := True;
 ostprep.First;
  While not ostprep.Eof do
  begin
   ostprep.Edit;
   ostprep.FieldByName('Vib').AsInteger := 0;
   ostprep.Post;
   ostprep.Next;
  end;
  RadioGroup1.ItemIndex:=0;
end;

procedure TFVibSyr.RadioGroup1Click(Sender: TObject);
begin
 if (RadioGroup1.ItemIndex=0)or(fKorOtchet.RadioGroup2.ItemIndex=2) then
 begin
  label1.Visible:=false;
  label2.Visible:=false;
  edit1.Visible:=false;
  SpeedButton3.Visible:=false;
 end
 else
 begin
  label1.Visible:=true;
  label2.Visible:=true;
  edit1.Visible:=true;
  label1.Caption:='   Куда передавать:';
  label2.Caption:='';
  edit1.Text:='';
  SpeedButton3.Visible:=true;
 end;
 ostprep.DisableControls;
 if RadioGroup1.ItemIndex=1 then
 begin
  ostprep.First;
  While not ostprep.Eof do
  begin
   ostprep.Edit;
   ostprep.FieldByName('Vib').AsInteger:=1;
   ostprep.Post;
   ostprep.Next;
  end;
 end
 else
 begin
  ostprep.First;
  While not ostprep.Eof do
  begin
   ostprep.Edit;
   ostprep.FieldByName('Vib').AsInteger := 0;
   ostprep.Post;
   ostprep.Next;
  end;
 end;
 ostprep.First;
 ostprep.EnableControls;
end;

procedure TFVibSyr.SpeedButton1Click(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

procedure TFVibSyr.SpeedButton2Click(Sender: TObject);
begin
 close;
end;

procedure TFVibSyr.SpeedButton3Click(Sender: TObject);
begin
 if fKorOtchet.RadioGroup2.ItemIndex=0 then
 begin
   if FVybPrep=nil then FVybprep:=TfVybPrep.Create(Application);
     FVybPrep.ShowModal;
     if FVybPrep.ModalResult=mrOk then
     begin
      s_klient1:=FVybPrep.vprepKsm_id.AsInteger;
      edit1.Text:= FVybPrep.VprepKod_Prod.Asstring;
      label2.Caption:=FVybPrep.VprepNMAT.AsString;
//        PeredanoSyrKlient_id.AsInteger:=FVybPrep.vprepKsm_id.AsInteger;
//        PeredanoSyrKod_prod.AsString:=FVybPrep.VprepKod_Prod.Asstring;
//        PeredanoSyrNmat.AsString:=FVybPrep.VprepNMAT.AsString;
     end;
 end;
 if (fKorOtchet.RadioGroup1.ItemIndex=0) and(fKorOtchet.RadioGroup2.ItemIndex=1) then
 begin
  if FindStruk=nil then FindStruk:=TfindStruk.Create(Application);
    FindStruk.DataBaseName:=dm1.BELMED;
    FindStruk.ReadOnly:=true;
    FindStruk.ShowModal;
    if FindStruk.ModalResult>50 then
    begin
     s_klient1:= FindStruk.ModalResult-50;
     edit1.Text:=FindStruk.kod;
     label2.Caption:=FindStruk.name;;
//     PeredanoSyrStname.AsString:=FindStruk.name;
//     PeredanoSyrKlient_id.AsInteger:=FindStruk.ModalResult-50;
    end;
 end;
 if (fKorOtchet.RadioGroup1.ItemIndex=1) and(fKorOtchet.RadioGroup2.ItemIndex=1) then
 begin
  if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
  FindSpprod.DataBaseName:=dm1.BELMED;
  FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
  FindSpprod.ReadOnly:=true;
  FindSpprod.ShowModal;
  if FindSpprod.ModalResult > 50 then
  begin
   if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
     FindSpprod.DataBaseName:=dm1.BELMED;
     FindSpprod.ReadOnly:=true;
     FindSpprod.ShowModal;
     if FindSpprod.ModalResult > 50 then
     begin
      DM1.IBQuery1.Active := False;
      DM1.IBQuery1.SQL.Clear;
      DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,struk.stname');
      DM1.IBQuery1.SQL.Add(' FROM SPPROD');
      DM1.IBQuery1.SQL.Add(' inner JOIN struk ON (SPPROD.struk_id = struk.struk_id)');
      DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KSM_ID='+INTTOSTR(FindSpprod.ModalResult-50));
      DM1.IBQuery1.Active := True;
      s_klient1:=DM1.IBQuery1.FieldByName('ksm_id').AsInteger;
      edit1.Text:= DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
      label2.Caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
      s_STRUK1:=DM1.IBQuery1.FieldByName('Struk_id').AsInteger;
      s_stname1:=DM1.IBQuery1.FieldByName('Stname').AsString;
//      PeredanoSyrKod_prod.AsString:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
//      PeredanoSyrNmat.AsString:=DM1.IBQuery1.FieldByName('NMAT').AsString;
//      PeredanoSyrKlient_id.AsInteger:=DM1.IBQuery1.FieldByName('ksm_id').AsInteger;
//      PeredanoSyrStname.AsString:=DM1.IBQuery1.FieldByName('Stname').AsString;
     end;
  end;
 end;


end;

end.
