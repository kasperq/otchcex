unit Otx_Spirt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RxMemDS, frxDesgn, frxClass, frxDMPExport, frxDBSet,
  IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, IBQuery, RxIBQuery, ImgList, Grids,
  DBGridEh, StdCtrls, ExtCtrls, Buttons, Spin, ComCtrls, ToolWin,Math, DBTables,SplshWnd, FileUtil;

type
  TFOtx_Spirt = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Panel1: TPanel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    ImageList1: TImageList;
    Otx_Pech: TRxIBQuery;
    IBUpdatepech_otx: TIBUpdateSQLW;
    DSotx_pech: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    Otx_vip: TRxIBQuery;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    Edit2: TEdit;
    ToolButton2: TToolButton;
    Label2: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Otx_vipKOL_RASH: TFMTBCDField;
    Otx_PechKSM_ID: TIntegerField;
    Otx_PechNMATM: TIBStringField;
    Otx_PechKOL_RASH: TFMTBCDField;
    Otx_PechKOD_PROD: TIBStringField;
    Otx_PechNMAT: TIBStringField;
    Otx_PechNEIS: TIBStringField;
    Otx_PechNMAT_OTX: TIBStringField;
    Otx_PechNEIS_OTX: TIBStringField;
    Otx_PechKOL_OTX: TFMTBCDField;
    Otx_PechNAM: TIBStringField;
    Spirt_rash: TRxIBQuery;
    Otx_PechKSM_OTX: TIntegerField;
    Spirt_rashKOL_RASH: TFMTBCDField;
    Otch_otx: TTable;
    ToolButton3: TToolButton;
    Otch_otxMES1: TStringField;
    Otch_otxOTSTRK: TStringField;
    Otch_otxOTPROD: TStringField;
    Otch_otxOTKPN: TStringField;
    Otch_otxOTKVI: TStringField;
    Otch_otxOTMATR: TStringField;
    Otch_otxNMAT: TStringField;
    Otch_otxOTCENA: TFloatField;
    Otch_otxCENAZA: TFloatField;
    Otch_otxOSTSN: TFloatField;
    Otch_otxOSTNZN: TFloatField;
    Otch_otxPRIX: TFloatField;
    Otch_otxZAG: TFloatField;
    Otch_otxRASM: TFloatField;
    Otch_otxRASG: TFloatField;
    Otch_otxPERS: TFloatField;
    Otch_otxPERP: TFloatField;
    Otch_otxOSTSK: TFloatField;
    Otch_otxOSTZK: TFloatField;
    Otch_otxPRIXK: TFloatField;
    Otch_otxRASK: TFloatField;
    Otch_otxFACTK: TFloatField;
    Otch_otxFACTM: TFloatField;
    Otch_otxPEREM: TFloatField;
    Otch_otxPEREG: TFloatField;
    Otch_otxOTRAZ: TStringField;
    Otch_otxPKV: TStringField;
    Otch_otxPGD: TStringField;
    Otch_otxMES: TStringField;
    Otch_otxPR: TSmallintField;
    Otch_otxPRS: TSmallintField;
    Otch_otxKSM_ID: TFloatField;
    Otch_otxOTPROD_S: TStringField;
    Otx_PechKLIENT_ID: TIntegerField;
    Otx_PechOTKPN: TSmallintField;
    Otx_PechOTKVI: TSmallintField;
    norm_otxody: TIBQuery;
    norm_otxodyKODP_O: TIntegerField;
    norm_otxodyNMAT: TIBStringField;
    norm_otxodyKOD_PROD: TIBStringField;
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOtx_Spirt: TFOtx_Spirt;
  s_nam_sp: string;
  s_nam_osp: string;
  s_ksm_sp: integer;
  s_ksm_osp: integer;
  s_vip: double;
  sum_rasx: double;
  s_koef: double;
  s_neis_osp: string;
  kod_otx: string;
  nam_otx: string;
  implementation
  uses dm,Find_Matrop;
{$R *.dfm}

procedure TFOtx_Spirt.Edit1Change(Sender: TObject);
begin
 if edit1.text<>''  then
 begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=strtoint(edit1.text);
  dM1.Matrop.Active:=TRUE;
  if not dm1.Matrop.eof then
  begin
   s_ksm_sp:=strtoint(edit1.text);
   s_nam_sp:=dm1.Matrop.FieldByName('Nmat').AsString;
   Label5.Caption:=s_nam_sp;
  end;
 end;
end;

procedure TFOtx_Spirt.Edit1Click(Sender: TObject);
begin
 edit1.text:='';
end;

procedure TFOtx_Spirt.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
  if edit1.text<>''  then
  begin
   dM1.Matrop.Active:=false;
   dM1.Matrop.ParamByName('ksm').AsInteger:=strtoint(edit1.text);
   dM1.Matrop.Active:=TRUE;
   if not dm1.Matrop.eof then
   begin
    s_ksm_sp:=strtoint(edit1.text);
    s_nam_sp:=dm1.Matrop.FieldByName('Nmat').AsString;
    Label5.Caption:=s_nam_sp;
   end;
  end;
 end;
end;

procedure TFOtx_Spirt.Edit2Change(Sender: TObject);
begin
 if edit2.text<>''  then
 begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=strtoint(edit2.text);
  dM1.Matrop.Active:=TRUE;
  if not dm1.Matrop.eof then
  begin
   s_ksm_osp:=strtoint(edit2.text);
   s_nam_osp:=dm1.Matrop.FieldByName('Nmat').AsString;
   s_neis_osp:=dm1.Matrop.FieldByName('Neis').AsString;
   Label7.Caption:=s_nam_osp;
  end;
 end;
end;

procedure TFOtx_Spirt.Edit2Click(Sender: TObject);
begin
 edit2.text:='';
end;

procedure TFOtx_Spirt.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
  if edit2.text<>''  then
  begin
   dM1.Matrop.Active:=false;
   dM1.Matrop.ParamByName('ksm').AsInteger:=strtoint(edit2.text);
   dM1.Matrop.Active:=TRUE;
   if not dm1.Matrop.eof then
   begin
    s_ksm_osp:=strtoint(edit2.text);
    s_nam_osp:=dm1.Matrop.FieldByName('Nmat').AsString;
    s_neis_osp:=dm1.Matrop.FieldByName('Neis').AsString;
    Label7.Caption:=s_nam_sp;
   end;
  end;
 end;
end;

procedure TFOtx_Spirt.FormShow(Sender: TObject);
begin
 edit1.Text:='13017';
 edit2.Text:='17026';
 SpinEdit1.Text:=inttostr(mes);
 SpinEdit2.Text:=inttostr(god);
 label1.Visible:=false;
 label2.Visible:=false;
 label4.Caption:='';
 label9.Caption:='';
end;

procedure TFOtx_Spirt.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  nammes := dm1.getStrMes(SpinEdit1.Value);
  if (VarName = 'nammes') then
    Value := nammes;
  if (VarName = 'stname') then
    Value := s_stkod;
  if (VarName = 'god') then
    Value := SpinEdit2.Value;
  if (VarName = 'vyr') then
    Value := s_vip;
  if (VarName = 'koef') then
    Value := s_koef;
  if (VarName = 's_kod') then
    Value := kod_otx;
  if (VarName = 's_nam') then
    Value := nam_otx;
end;

procedure TFOtx_Spirt.SpeedButton2Click(Sender: TObject);
begin
 edit1.Text:='';
 if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
 FindMatrop.DataBaseName:=dm1.BELMED;
 FindMatrop.ReadOnly:=true;
 FindMatrop.ShowModal;
 if FindMatrop.ModalResult > 50 then
 begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=FindMatrop.ModalResult-50;
  dM1.Matrop.Active:=TRUE;
  Edit1.Text :=INTTOSTR(FindMatrop.ModalResult-50);
  s_ksm_sp:=FindMatrop.ModalResult-50;
  s_nam_sp:=dm1.Matrop.FieldByName('Nmat').AsString;
  Label5.Caption:=s_nam_sp;
 end;
end;

procedure TFOtx_Spirt.SpeedButton3Click(Sender: TObject);
begin
 edit2.Text:='';
 if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
 FindMatrop.DataBaseName:=dm1.BELMED;
 FindMatrop.ReadOnly:=true;
 FindMatrop.ShowModal;
 if FindMatrop.ModalResult > 50 then
 begin
  dM1.Matrop.Active:=false;
  dM1.Matrop.ParamByName('ksm').AsInteger:=FindMatrop.ModalResult-50;
  dM1.Matrop.Active:=TRUE;
  Edit2.Text :=INTTOSTR(FindMatrop.ModalResult-50);
  s_ksm_osp:=FindMatrop.ModalResult-50;
  s_nam_osp:=dm1.Matrop.FieldByName('Nmat').AsString;
  s_neis_osp:=dm1.Matrop.FieldByName('Neis').AsString;
  Label7.Caption:=s_nam_sp;
 end;
end;

procedure TFOtx_Spirt.SpinEdit1Change(Sender: TObject);
begin
 mes:=strtoint(SpinEdit1.Text);
IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
end;

procedure TFOtx_Spirt.SpinEdit2Change(Sender: TObject);
begin
 god:=strtoint(SpinEdit2.Text);
 IF MES<10 THEN S_MES:='0'+INTTOSTR(MES) ELSE S_MES:=INTTOSTR(MES);
 S_DAT1:='01.'+S_MES+'.'+copy(INTTOSTR(GOD),3,2);
 S_DAT2:=datetostr(IncMonth(strtodate(s_dat1),1)-1);
end;

procedure TFOtx_Spirt.ToolButton1Click(Sender: TObject);
begin
 norm_otxody.Close;
 norm_otxody.ParamByName('strk').AsInteger:=vStruk_id;
 norm_otxody.open;
 if not norm_otxody.Eof then
 begin
  kod_otx:=norm_otxodyKod_prod.asstring;
  nam_otx:=norm_otxodyNmat.asstring;
 end;
 otx_pech.DisableControls;
 frxReport1.LoadFromFile(reportsPath + 'P_otx_spirt.fr3');
 frxReport1.ShowReport(true);
 otx_pech.EnableControls;
end;

procedure TFOtx_Spirt.ToolButton2Click(Sender: TObject);
var
sum_rr:double;
begin
 sum_rr := 0;
 Otx_vip.Close;
 Otx_vip.ParamByName('DAT1').AsDateTime:=strtodate(S_DAT1);
 Otx_vip.ParamByName('DAT2').AsDateTime:=strtodate(S_DAT2);
 Otx_vip.ParamByName('STRUK').AsInteger:=vStruk_Id;
 Otx_vip.ParamByName('KSM').AsInteger:=S_Ksm_osp;
 Otx_vip.Open;
 if not Otx_vip.Eof then
 begin
  s_vip:=Otx_vipKol_rash.asfloat;
  label2.Visible:=true;
  label4.Caption:=floattostr(s_vip);
  Otx_Pech.Close;
  Otx_Pech.ParamByName('DAT1').AsDateTime:=strtodate(S_DAT1);
  Otx_Pech.ParamByName('DAT2').AsDateTime:=strtodate(S_DAT2);
  Otx_Pech.ParamByName('STRUK').AsInteger:=vStruk_Id;
  Otx_Pech.ParamByName('KSM').AsInteger:=S_Ksm_sp;
  Otx_Pech.Open;

  Spirt_Rash.Close;
  Spirt_Rash.ParamByName('DAT1').AsDateTime:=strtodate(S_DAT1);
  Spirt_Rash.ParamByName('DAT2').AsDateTime:=strtodate(S_DAT2);
  Spirt_Rash.ParamByName('STRUK').AsInteger:=vStruk_Id;
  Spirt_Rash.ParamByName('KSM').AsInteger:=S_Ksm_sp;
  Spirt_Rash.Open;
  if not Spirt_Rash.Eof then
  begin
   sum_rasx:=Spirt_RashKol_Rash.asfloat;
   if sum_rasx<>0 then
   begin
    s_koef:=roundto(s_vip/sum_rasx,-6);
    label1.Visible:=true;
    label9.Caption:=floattostr(s_koef);
    Otx_Pech.First;
    While not Otx_Pech.Eof do
    begin
     Otx_Pech.Edit;
     Otx_Pechkol_otx.asfloat:=roundto(Otx_PechKol_Rash.asfloat*s_koef,-2);
     Otx_PechNmat_otx.asstring:=s_nam_osp;
     Otx_PechKsm_otx.asinteger:=s_ksm_osp;
     Otx_Pechneis_otx.asstring:=s_neis_osp;
     Otx_Pech.POST;
     sum_rr:=sum_rr+roundto(Otx_PechKol_Rash.asfloat*s_koef,-2);
     Otx_Pech.Next;
    end;
// добавление разницы за счет округления    
    Otx_Pech.First;
    Otx_Pech.Edit;
    Otx_Pechkol_otx.asfloat:=Otx_Pechkol_otx.asfloat+s_vip-sum_rr;
    Otx_Pech.POST;
   end;
  end;
 end
 else
 begin
  s_vip:=0;
  label2.Visible:=true;
  label4.Caption:=floattostr(s_vip);
 end;
 
end;

procedure TFOtx_Spirt.ToolButton3Click(Sender: TObject);
begin
if Otx_Pech.Active then
begin
  Splash := ShowSplashWindow(AniBmp1,
 'Передача данных из цеха в АСУ. Подождите, пожалуйста...', True, nil);
 otch_otx.EmptyTable;
 Otch_otx.Open;
// while (not otch_otx.Eof) do otch_otx.Delete;
 Otx_Pech.First;
 While not Otx_Pech.Eof do
 begin
  Otch_otx.Insert;
  Otch_otxOtraz.asstring:='30';
  Otch_otxOtmatr.AsString:=inttostr(s_ksm_osp);
  if lenGTH(trim(inttostr(mes)))=1 then Otch_otxMes.AsString:=' '+inttostr(mes) else Otch_otxMes.AsString:=inttostr(mes);
  Otch_otxPrix.AsFloat:=Otx_PechKol_otx.AsFloat;
  Otch_otxRasm.AsFloat:=Otx_PechKol_otx.AsFloat;
  Otch_otxZag.AsFloat:=Otx_PechKol_otx.AsFloat;
  Otch_otxOtstrk.AsString:=s_stkod;
  if lenGTH(trim(inttostr(Otx_PechKlient_ID.AsInteger)))=1 then Otch_otxOtprod.AsString:='00000'+trim(inttostr(Otx_PechKlient_ID.AsInteger));
  if lenGTH(trim(inttostr(Otx_PechKlient_ID.AsInteger)))=2 then Otch_otxOtprod.AsString:='0000'+trim(inttostr(Otx_PechKlient_ID.AsInteger));
  if lenGTH(trim(inttostr(Otx_PechKlient_ID.AsInteger)))=3 then Otch_otxOtprod.AsString:='000'+trim(inttostr(Otx_PechKlient_ID.AsInteger));
  if lenGTH(trim(inttostr(Otx_PechKlient_ID.AsInteger)))=4 then Otch_otxOtprod.AsString:='00'+trim(inttostr(Otx_PechKlient_ID.AsInteger));
  if lenGTH(trim(inttostr(Otx_PechKlient_ID.AsInteger)))=5 then Otch_otxOtprod.AsString:='0'+trim(inttostr(Otx_PechKlient_ID.AsInteger));
  if lenGTH(trim(inttostr(Otx_PechKlient_ID.AsInteger)))=6 then Otch_otxOtprod.AsString:=trim(inttostr(Otx_PechKlient_ID.AsInteger));
  Otch_otx.Post;
  Otx_Pech.Next;
 end;
 Splash.Free;
 MessageDlg(' Данные переданы!', mtWarning, [mbOK], 0);
end;
end;

end.
