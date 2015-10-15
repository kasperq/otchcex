unit f_nastr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,inifiles, Mask, DBCtrlsEh, DBLookupEh, DBCtrls,
  DB, IBCustomDataSet, IBQuery, DBGridEh;

type
  TFNastr = class(TForm)
    Label1: TLabel;
    E_YesSeria: TCheckBox;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    SpeedButton3: TSpeedButton;

    procedure clearAllVariables;

    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNastr: TFNastr;
  IniUMC: TIniFile;

implementation

uses dm,Find_Struk,f_options;

{$R *.dfm}

procedure TFNastr.clearAllVariables;
begin
  ss_kodp := 0;
  MODE := 0;
  str_ser := '';
  skod := '';
  v_raspred := 0;
  v_raspred_ediz := 0;
  v_osts_pr := 0;
  v_ostnz_pr := 0;
  v_raspred_dob := 0;
  v_kart := 0;
  dob_ras := 0;
  v_osts := 0;
  st_kart := 0;
  naz_sum := '';
  vNeis_vip := '';
  PR_N := false;
  v_dok_Kart := 0;
  v_kartV := 0;
  prov := false;
  i := 0;
  v_razdel := 0;
  s_dat1_period := '';
  s_dat2_period := '';
  uslF := '';
  sortF := '';
  vKol := '';
  vPriz_id := 0;
  vGr_Op_Id := '';
  vTip_Op_Id := 0;
  vTip_Doc_Id := 0;
//  vDate_Dok : tdate;
//  vDate_op : tdate;
  vZadacha_Id := '';
  vStruk_Id := 0;
  vDocument_Id := 0;
  vSTADIA_Id := 0;
  vStroka_Id := 0;
  vSeria_id := 0;
  vNdoc := '';
  VKlient_Id := 0;
  vKart_id := 0;
//  s_srok_godn : tdate;
  s_prix := 0;
  s_rasx := 0;
  s_plan := 0;
  s_Sprod_id := 0;
  s_razdel := 0;
  Usl_DAT := '';;
  Usl_Struk := '';
  Usl_TIP := '';
  Usl_SORT := '';
  Usl_GROP := '';
  Usl_ksm := '';
  s_namcex := '';
  s_nam_Tip_Op := '';
  s_nam_Tip_Doc := '';
  s_kodp := 0;
  s_KORG := 0;
  s_nameprn := '';
  s_namevis := '';
  s_namorg := '';
  s_namspsr := '';
  s_Neiz := '';
  s_kodProd := '';
  s_zag := '';
  s_ksm := 0;
  s_nmat := '';
  s_xarkt := '';
  s_gost := '';
  s_kei := 0;
  mes := 0;
  god := 0;
  s_seria := '';
  s_Lek_id := 0;
  vPostPol := '';
  nammes := '';
  First_vxod := false;
  vLek_id := 0;
  vNameStad := '';
  s_mes := '';
  pr_raspred := 0;
  v_dok := 0;
  v_KeiN := 0;
  MatrPr := '';
  YesSeria := false;
  s_Formv := '';
  s_OPLan := 0;
  s_sdano := 0;
  pr_ser := 0;
  ksm_ov := 0;
  an_id := 0;
  s_kol_seria := 0;
  v_zag := 0;
  VidShap := 0;
  s_fio := '';
  s_dolgn := '';
  S_STKOD := '';
  pr_button9 := false;
  s_kart_id := 0;
  s_namreg := '';
  star_kod := 0;
  V_VIPUSK := 0;
  v_vipuskg := 0;
  v_prix_period := 0;
  pr_zanes := false;
  pr_kor := 0;
  nachn := '';
  struk_id := 0;
  s_Usl_Sort := '';
  s_del := 0;
  p_yes := false;
  s_klient1 := 0;
  s_STRUK1 := 0;
  s_stname1 := '';
  upak_id2 := 0;
end;

procedure TFNastr.FormShow(Sender: TObject);
begin
//  IniUMC := TIniFile.Create('UMC.Ini');
  IniUMC := TIniFile.Create(exePath + 'UMC.Ini');
  vStruk_ID := IniUMC.ReadInteger('Config', 'Struk_Id', 0);
  MatrPr := IniUMC.ReadString('Config', 'MatrPr', '02');
  YesSeria := IniUMC.ReadBool('Config', 'YesSeria', True);
  E_YesSeria.Checked := YesSeria;
  DBLookupComboboxEh1.KeyValue := IntToStr(vStruk_Id);
  DBLookupComboboxEh2.KeyValue := MatrPr;
  DM1.ConfigUMC.Close;
  DM1.ConfigUMC.MacroByName('usl').AsString := //' configumc.tip_sklad_id = 5 '
                                               //+ 'and configumc.active_sklad = 1 and '
                                               //+
                                               '(configumc.struk_id = 1 or '
                                               + 'configumc.struk_id = 645 or '
                                               + 'configumc.struk_id = 29 or '
                                               + 'configumc.struk_id = 37 or '
                                               + 'configumc.struk_id = 38 or '
                                               + 'configumc.struk_id = 39 or '
                                               + 'configumc.struk_id = 648 or '
                                               + 'configumc.struk_id = 43 or '
                                               + 'configumc.struk_id = 540 or '
                                               + 'configumc.struk_id = 541 or '
                                               + 'configumc.struk_id = 649 or '
                                               + 'configumc.struk_id = 106 or '
                                               + 'configumc.struk_id = 696 or '
                                               + 'configumc.struk_id = 542 or '
                                               + 'configumc.struk_id = 543 or '
                                               + 'configumc.struk_id = 544 or '
                                               + 'configumc.struk_id = 545 or '
                                               + 'configumc.struk_id = 546 or '
                                               + 'configumc.struk_id = 708 '
                                               + 'configumc.struk_id = 760) ';
  DM1.ConfigUMC.Open;
  dm1.IBMatr_pr.Open;
end;

procedure TFNastr.SpeedButton1Click(Sender: TObject);
begin
  clearAllVariables;
  vStruk_ID := DBLookupComboboxEh1.KeyValue;
  MatrPr := DBLookupComboboxEh2.KeyValue;
  YesSeria := E_YesSeria.Checked;
  IniUMC.WriteInteger('Config', 'Struk_Id', vStruk_Id);
  IniUMC.WriteString('Config', 'MatrPr', MatrPr);
  IniUMC.WriteBool('Config', 'YesSeria', YesSeria);
  dm1.setCexOptions;
  Close;
end;

procedure TFNastr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm1.IBMatr_pr.close;
  DM1.ConfigUMC.Close;
end;

procedure TFNastr.SpeedButton2Click(Sender: TObject);
var
  Kod : integer;
begin
  DM1.ConfigUMC.append;
  FindStruk.DataBaseName := DM1.BELMED;
  FindStruk.ReadOnly := True;
  Kod := FindStruk.ShowModal;
  if (Kod < 50) then
    Exit;
  DM1.ConfigUMCSTRUK_ID.AsInteger := Kod - 50;
  DM1.IBQuery1.Close;
  DM1.IBQuery1.SQL.Text := 'SELECT STNAME FROM Struk WHERE STRUK_ID = ' + IntToStr(Kod - 50);
  DM1.IBQuery1.Open;
  DM1.ConfigUMCSTNAME.AsString := DM1.IBQuery1.fieldByName('STNAME').AsString;
  DM1.ConfigUMCMES.AsInteger := MES;
  DM1.ConfigUMCGOD.AsInteger := GOD;
  DM1.ConfigUMC.Post;
  DM1.IBQuery1.Close;
end;

procedure TFNastr.SpeedButton3Click(Sender: TObject);
begin
  DM1.ConfigUMC.Open;
  DM1.ConfigUMC.Locate('STRUK_ID', vSTRUK_ID, []);
  FOptions.ShowModal;
  DBLookupComboboxEh1.KeyValue := vSTRUK_ID;
  DBLookupComboboxEh2.KeyValue := MatrPr;
end;

end.
