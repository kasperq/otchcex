unit Dob_peredano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ExtCtrls, DBCtrls, ComCtrls, ToolWin, StdCtrls, Buttons,
  FindDlgEh, DB,
  UtilRIB;
type
  TFDob_Peredano = class(TForm)
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ImageList1: TImageList;
    Label22: TLabel;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox3: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Edit5: TEdit;
    Edit6: TEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Edit4: TEdit;
    SpeedButton4: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit7: TEdit;
    Label3: TLabel;
    SpeedButton6: TSpeedButton;
    procedure ToolButton3Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit7Click(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDob_Peredano: TFDob_Peredano;
  OT_raz_id: integer;
  kuda_raz_id: integer;
  s_kodp_otkuda: integer;
  s_kodp_kuda: integer;
  OT_KEI_ID: INTEGER;
  KUDA_KEI_ID: INTEGER;
  VKART: INTEGER;
  s_kl: string;
implementation
  uses dm, razdel, Find_Spprod, Find_Struk,RASPRED, ediz, Find_Matrop,VybPrep;
{$R *.dfm}

procedure TFDob_Peredano.ToolButton3Click(Sender: TObject);
var
v_rash: double;

begin
 if (edit4.text<>'') then
 begin
  if MessageDlg('Добавить запись?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
  begin
   If s_kodp_otkuda = 0 then
   begin
    MessageDlg('Введите код препарата откуда передается сырье!', mtWarning, [mbOK], 0);
    Abort;
   end;
   if ot_raz_id = 0 then
   begin
    MessageDlg('Введите раздел откуда передается сырье!', mtWarning, [mbOK], 0);
    Abort;
   end;
   if RadioGroup1.ItemIndex=0 then
   begin
    vNDoc:='Пер_с-'+inttostr(S_KSM)+'-'+inttostr(mes)+'.'+inttostr(god);
    vTip_Op_Id:=34;
   end
   else
   begin
    vTip_Op_Id:=37;
    vNDoc:='Пер_н/з-'+inttostr(S_KSM)+'-'+inttostr(mes)+'.'+inttostr(god);
   end;
   S_kl:=' DOCUMENT.Klient_ID='+inttostr(s_kodp_kuda);
   vTip_Doc_Id:=37;
   case RadioGroup2.ItemIndex of
    1: begin
        If s_kodp_kuda = 0 then
        begin
         MessageDlg('Введите подразделение куда передается сырье!', mtWarning, [mbOK], 0);
         Abort;
        end;
        vTip_Doc_Id:=9;
        vTip_Op_Id:=8;
       end;
    2: begin
        S_KODP_kuda:=0;
        vTip_Doc_Id:=38;
        vTip_Op_Id:=32;
        S_kl:=' DOCUMENT.Klient_ID='+'0';
       end;
   end;
   if DM1.DOCUMENT.Active then DM1.DOCUMENT.Close;
   DM1.DOcUMENT.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
   + ' AND'+s_kl
   + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
   DM1.DOCUMENT.OPEN;
   DM1.DOCUMENT.First;
   IF DM1.Document.Eof THEN
   begin
    vKlient_Id:=S_KODP_kuda;
    vDate_dok:=strtodate(s_dat1);
    vDate_op:=strtodate(s_dat1);
    dm1.Document.Insert;
    dm1.Document.Post;
   end
   else
    VDOCUMENT_ID:=DM1.DocumentDOc_ID.ASINTEGER;
   if dm1.Ostatki.Active then dm1.Ostatki.Active:=false;
   DM1.Ostatki.ParamByName('struk_ID').AsInteger:=vstruk_id;
   DM1.Ostatki.MacroByName('usl').AsString:='  ost.razdel_id='+inttostr(ot_Raz_id)
    +' and ost.ksm_idpr='+inttostr(s_kodp_otkuda)
    +' AND OST.KSM_ID='+INTTOSTR(S_KSM);
   dm1.Ostatki.Open;
   dm1.Ostatki.First;
   if not dm1.Ostatki.Eof then
   begin
    vkart:=dm1.OstatkiKART_ID.AsInteger;
    v_rash:=strtofloat(Edit4.Text);
    if not dm1.Kart.Active then dm1.Kart.Active:=true;
    dm1.Kart.Insert;
    dm1.KartKsm_id.AsInteger:=S_KSM;
    dm1.KartKol_RASH_ediz.AsFloat:=v_rash;
    dm1.KartDoc_id.AsInteger:=vDocument_id;
    dm1.KartRazdel_id.AsInteger:=kuda_raz_id;
    dm1.KartKol_prih_ediz.AsFloat:=0;
    dm1.KartKol_prih.AsFloat:=0;
    dm1.KartKol_rash.AsFloat:=0;
    dm1.KartKei_id.AsInteger:=ot_kei_id;
    dm1.KartKART_id.AsInteger:=vKART;
    dm1.Kart.Post;
    DM1.ApplyUpdatesDoc;
    LABEL3.Caption:='';
    Edit1.Text:='';
    Edit4.Text:='';
    Edit7.Text:='';
   end
   else
     showMessage('Нет сырья на препарате для передачи!');
  end
  else
   DM1.CancelUpdatesDoc;
 end;
end;

procedure TFDob_Peredano.Edit5Change(Sender: TObject);

begin
if edit5.text<>''   then
begin
 skod:=edit5.text+'%';
 if RadioGroup2.ItemIndex=0 then
 begin
  DM1.IBQuery1.Active := False;
  DM1.IBQuery1.SQL.Clear;
  DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
  DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,struk.stname');
  DM1.IBQuery1.SQL.Add(' FROM SPPROD');
  DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
  DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
  DM1.IBQuery1.SQL.Add('  INNER JOIN Struk ON (SPPROD.struk_id = Struk.struk_id)');
  DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+skod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
  DM1.IBQuery1.Active := True;
  if not dm1.IBQuery1.Eof then
  begin
   Label29.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
  end
  else
  begin
   Label29.Caption:='';
  end;
  Label29.Refresh;
 end;
end;
end;

procedure TFDob_Peredano.Edit4Click(Sender: TObject);
//VAR
//OTRAZ: INTEGER;
//NAZ_kei_syr: STRING;
//kei_syr: INTEGER;
begin
// if (edit3.text<>'') and (s_kodp_otkuda<>0) then
// begin
//  OTRAZ:=STRTOINT(edit3.text);
  Edit4.Text:='';
{  kei_syr:=SelectToVarIB('select NORM.KEI_id   FROM NORM WHERE NORM.KODP='+INTTOSTR(s_kodp_otkuda)
  + ' AND NORM.KSM_ID='+ INTTOSTR(S_KSM)
  + ' AND NORM.KRAZ='+ INTTOSTR(OTRAZ),dm1.belmed,dm1.ibt_read);
  If KEI_SYR<>Null then
  BEGIN
   NAZ_kei_syr:=SelectToVarIB('select EDIZ.NEIS   FROM EDIZ WHERE EDIZ.KEI_ID='
   +INTTOSTR(kEI_SYR),dm1.belmed,dm1.ibt_read);
   IF NAZ_KEI_SYR<>NULL THEN LABEL32.Caption:=NAZ_KEI_SYR;
  END;
 end;}
end;


procedure TFDob_Peredano.RadioGroup2Click(Sender: TObject);
begin
 edit5.Text:='';
 edit6.Text:='';
 if RadioGroup2.ItemIndex=0 then
 begin
  edit5.Enabled:=true;
  edit6.Enabled:=true;
  edit6.Visible:=true;
  label27.Visible:=true;
  label27.Visible:=true;
  label30.Visible:=true;
  label29.Visible:=true;
  SpeedButton2.Enabled:=true;
  SpeedButton3.Enabled:=true;
 end;
 if RadioGroup2.ItemIndex=1 then
 begin
  edit5.Enabled:=true;
  label27.Visible:=true;
  edit6.Enabled:=false;
  edit6.Visible:=false;
  label27.Visible:=false;
  label30.Visible:=false;
  SpeedButton2.Enabled:=true;
  SpeedButton3.Enabled:=false;
 end;
 if RadioGroup2.ItemIndex=2 then
 begin
  label26.Visible:=false;
  label27.Visible:=false;
  label30.Visible:=false;
  label29.Visible:=false;
  edit5.Enabled:=false;
  edit6.Enabled:=false;
  SpeedButton2.Enabled:=false;
  SpeedButton3.Enabled:=false;
 end;
end;

procedure TFDob_Peredano.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (edit6.text<>'') then
  begin
   kuda_raz_id:=0;
   if not dm1.Razdel.Active then dm1.Razdel.Active:=true;
   if dm1.Razdel.Locate('kraz',strtoint(edit6.text),[]) then
   begin
    kuda_raz_id:=dm1.RazdelRAZDEL_ID.AsInteger;
    label30.Caption:=dm1.RazdelNamraz.AsString;
   end;
  end;
end;

procedure TFDob_Peredano.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
  if (edit3.text<>'') then
  begin
   OT_raz_id:=0;
   if not dm1.Razdel.Active then  dm1.Razdel.Active:=true;
   if dm1.Razdel.Locate('kraz',strtoint(edit3.text),[]) then
   begin
    OT_raz_id:=dm1.RazdelRAZDEL_ID.AsInteger;
    label25.Caption:=dm1.RazdelNamraz.AsString;
{    IF S_KODP_OTKUDA<>0 THEN
    BEGIN
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('SELECT NORM.KEI_ID,EDIZ.NEIS');
     DM1.IBQuery1.SQL.Add(' FROM NORM');
     DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (NORM.KEI_ID = EDIZ.KEI_ID)');
     DM1.IBQuery1.SQL.Add(' WHERE NORM.KODP='+INTTOSTR(S_KODP_OTKUDA));
     DM1.IBQuery1.SQL.Add(' AND NORM.KSM_ID='+INTTOSTR(S_KSM));
     DM1.IBQuery1.SQL.Add(' AND NORM.KRAZ='+edit3.text);
     DM1.IBQuery1.Active := True;
     if not dm1.IBQuery1.Eof then
     begin
      Label32.Caption:=DM1.IBQuery1.FieldByName('NEIS').Asstring;
      OT_KEI_ID:=DM1.IBQuery1.FieldByName('KEI_ID').ASINTEGER;
     end
     else
     begin
      Label32.Caption:='';
      OT_KEI_ID:=0;
     end;
    END;}
   end;
  end;
 end;
end;

procedure TFDob_Peredano.Edit6Click(Sender: TObject);
begin
edit6.text:='';
end;

procedure TFDob_Peredano.Edit3Click(Sender: TObject);
begin
edit3.text:='';
end;

procedure TFDob_Peredano.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  VAR
  S_KL1:STRING;
  S_KL2:STRING;
  S_K1:STRING;
  S_K2:STRING;
begin
 if key=vk_return then
 begin
  if (edit5.text<>'') and (not dm1.IBQuery1.Eof)  then
  begin
   EDIT5.OnChange:=nil;
   if RadioGroup2.ItemIndex=0 then
   begin
    edit5.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
    s_kodp_kuda:=DM1.IBQuery1.FieldByName('KSM_ID').value;
    label29.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
   END;
   if RadioGroup2.ItemIndex=1 then
   begin
    S_KL:=COPY(edit5.text,1,6);
    IF (LENgth(TRIM(edit5.text))-6)>1 THEN
    begin
     S_K1:=COPY(edit5.text,8,2);
     if copy(s_k1,1,1)='0' then s_kl1:='s.buro='+copy(s_k1,2,1) else s_kl1:='s.buro='+s_k1;
    end
    else s_kl1:='s.buro is null';
    IF (LENgth(TRIM(edit5.text))-9)>1 THEN
    begin
     S_K2:=COPY(edit5.text,11,2);
     if copy(s_k2,1,1)='0' then s_kl2:='s.sector='+copy(s_k2,2,1) else s_kl2:='s.sector='+s_k2;
    end
    else s_kl2:='s.sector is null';;
    DM1.IBQuery1.Active := False;
    DM1.IBQuery1.SQL.Clear;
    DM1.IBQuery1.SQL.Add('SELECT S.STRUK_ID,S.KOD_STRUK,S.STNAME,S.BURO,S.SECTOR ');
    DM1.IBQuery1.SQL.Add('FROM STRUK S ');
    DM1.IBQuery1.SQL.Add('WHERE S.KOD_STRUK='+''''+S_KL+'''');
    DM1.IBQuery1.SQL.Add(' AND '+S_KL1);
    dm1.iBQuery1.SQL.Add(' AND '+S_KL2);
    DM1.IBQuery1.Active := True;
    If not dm1.IBQuery1.Eof then
    BEGIN
     s_kodp_kuda:=DM1.IBQuery1.FieldByName('STRUK_ID').value;
     label29.caption:=DM1.IBQuery1.FieldByName('STNAME').AsString;
    END
   END;
   EDIT5.OnChange:=Edit5Change;
  end;
 end;
end;

procedure TFDob_Peredano.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
  if (edit2.text<>'') and (not dm1.IBQuery1.Eof)  then
   begin
    EDIT2.OnChange:=nil;
    edit2.text:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring;
    EDIT2.OnChange:=Edit2Change;
    s_kodp_otkuda:=DM1.IBQuery1.FieldByName('KSM_ID').value;
    label24.caption:=DM1.IBQuery1.FieldByName('NMAT').AsString;
   end;
 end;
end;

procedure TFDob_Peredano.Edit5Click(Sender: TObject);
begin
edit5.text:='';
end;

procedure TFDob_Peredano.Edit2Click(Sender: TObject);
begin
edit2.text:='';
end;

procedure TFDob_Peredano.Edit2Change(Sender: TObject);
begin
if edit2.text<>''   then begin
skod:=edit2.text+'%';
 DM1.IBQuery1.Active := False;
 DM1.IBQuery1.SQL.Clear;
 DM1.IBQuery1.SQL.Add('SELECT SPPROD.STRUK_ID,SPPROD.NMAT, SPPROD.KOD_PROD, SPPROD.KEI_ID,SPPROD.KSM_ID,');
 DM1.IBQuery1.SQL.Add('SPPROD.GOST,EDIZ.NEIS,SPPROD.KORG,SPPROD.XARKT,SPPROD.ACTIVP,SPRORG.NAM,struk.stname');
 DM1.IBQuery1.SQL.Add(' FROM SPPROD');
 DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)');
 DM1.IBQuery1.SQL.Add('  left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)');
 DM1.IBQuery1.SQL.Add('  INNER JOIN Struk ON (SPPROD.struk_id = Struk.struk_id)');
 DM1.IBQuery1.SQL.Add(' WHERE SPPROD.KOD_PROD like '+''''+skod+''''+' AND SPPROD.STRUK_ID='+INTTOSTR(vStruk_Id));
 DM1.IBQuery1.Active := True;
 if not dm1.IBQuery1.Eof then
  begin
   Label24.Caption:=DM1.IBQuery1.FieldByName('kod_PROD').Asstring+DM1.IBQuery1.FieldByName('nmat').AsString;
  end
  else
  begin
   Label24.Caption:='';
  end;
  Label24.Refresh;
 end;
end;

procedure TFDob_Peredano.FormClose(Sender: TObject;
  var Action: TCloseAction);

begin
 if (edit4.text<>'') then
 begin
  if MessageDlg('Добавить запись?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
  begin
   if RadioGroup1.ItemIndex=0 then
   begin
    vNDoc:='Пер_с-'+inttostr(S_KSM)+'-'+inttostr(mes)+'.'+inttostr(god);
    vTip_Op_Id:=34;
   end
   else
   begin
    vTip_Op_Id:=37;
    vNDoc:='Пер_н/з-'+inttostr(S_KSM)+'-'+inttostr(mes)+'.'+inttostr(god);
   end;
   S_kl:=' DOCUMENT.Klient_ID='+inttostr(s_kodp_kuda);
   vTip_Doc_Id:=37;
   case RadioGroup2.ItemIndex of
    1: begin
        vTip_Doc_Id:=9;
        vTip_Op_Id:=8;
       end;
    2: begin
        S_KODP_kuda:=0;
        vTip_Doc_Id:=38;
        vTip_Op_Id:=32;
        S_kl:=' DOCUMENT.Klient_ID='+'0';
       end;
   end;
   if DM1.DOCUMENT.Active then DM1.DOCUMENT.Close;
   DM1.DOcUMENT.MacroByName('USL').AsString:='WHERE DOcUMENT.STRUK_ID='+INTTOSTR(VsTRUK_ID)
   + ' AND DOCUMENT.TIP_OP_ID='+inttostr(vTip_Op_Id)
   + ' AND'+s_kl
   + ' AND Document.Date_op between '+''''+s_dat1+'''' +' and '+''''+s_dat2+'''';
   DM1.DOCUMENT.OPEN;
   DM1.DOCUMENT.First;
   IF DM1.Document.Eof THEN
   begin
    vKlient_Id:=S_KODP_kuda;
    vDate_dok:=strtodate(s_dat1);
    vDate_op:=strtodate(s_dat1);
    vpriz_id:=1;
    dm1.Document.Insert;
    dm1.Document.Post;
   end
   else
    VDOCUMENT_ID:=DM1.DocumentDOc_ID.ASINTEGER;
   if dm1.Ostatki.Active then dm1.Ostatki.Active:=false;
   DM1.Ostatki.ParamByName('struk_ID').AsInteger:=vstruk_id;
   DM1.Ostatki.MacroByName('usl').AsString:='  ost.razdel_id='+inttostr(ot_Raz_id)
    +' and ost.ksm_idpr='+inttostr(s_kodp_otkuda)
    +' AND OST.KSM_ID='+INTTOSTR(S_KSM);
   dm1.Ostatki.Open;
   dm1.Ostatki.First;
   if not dm1.Ostatki.Eof then
   begin
    vkart:=dm1.OstatkiKART_ID.AsInteger;
    if not dm1.Kart.Active then dm1.Kart.Active:=true;
    dm1.Kart.Insert;
    dm1.KartKsm_id.AsInteger:=S_KSM;
    dm1.KartKol_RASH.AsFloat:=strtoint(Edit4.Text);
    dm1.KartDoc_id.AsInteger:=vDocument_id;
    dm1.KartRazdel_id.AsInteger:=kuda_raz_id;
    dm1.KartKol_prih.AsFloat:=0;
    dm1.KartKART_id.AsInteger:=vKART;
    dm1.Kart.Post;
    DM1.ApplyUpdatesDoc;
   end
   else
     showMessage('Нет сырья на препарате для передачи!');
  end
  else
   DM1.CancelUpdatesDoc;
 end;
 FDob_Peredano.Close;
 DM1.Kart.Close;
 DM1.document.Close;
end;

procedure TFDob_Peredano.SpeedButton3Click(Sender: TObject);
begin
if frazdel=nil then frazdel:=tfrazdel.Create(Application);
 frazdel.ShowModal;
 if s_razdel<>0 then
  begin
   Edit6.Text:=inttostr(s_razdel);
   Kuda_raz_id:=dm1.RazdelRAZDEL_ID.AsInteger;
   label30.Caption:=dm1.RazdelNamraz.AsString;
  end;
end;

procedure TFDob_Peredano.SpeedButton1Click(Sender: TObject);
begin
if frazdel=nil then frazdel:=tfrazdel.Create(Application);
 frazdel.ShowModal;
 if s_razdel<>0 then
  begin
   Edit3.Text:=inttostr(s_razdel);
   OT_raz_id:=dm1.RazdelRAZDEL_ID.AsInteger;
   label25.Caption:=dm1.RazdelNamraz.AsString;
{   IF S_KODP_OTKUDA<>0 THEN
    BEGIN
     DM1.IBQuery1.Active := False;
     DM1.IBQuery1.SQL.Clear;
     DM1.IBQuery1.SQL.Add('SELECT NORM.KEI_ID,EDIZ.NEIS');
     DM1.IBQuery1.SQL.Add(' FROM NORM');
     DM1.IBQuery1.SQL.Add('  INNER JOIN EDIZ ON (NORM.KEI_ID = EDIZ.KEI_ID)');
     DM1.IBQuery1.SQL.Add(' WHERE NORM.KODP='+INTTOSTR(S_KODP_OTKUDA));
     DM1.IBQuery1.SQL.Add(' AND NORM.KSM_ID='+INTTOSTR(S_KSM));
     DM1.IBQuery1.SQL.Add(' AND NORM.KRAZ='+INTTOSTR(OT_RAZ_ID));
     DM1.IBQuery1.Active := True;
     if not dm1.IBQuery1.Eof then
     begin
      Label32.Caption:=DM1.IBQuery1.FieldByName('NEIS').Asstring;
      OT_KEI_ID:=DM1.IBQuery1.FieldByName('KEI_ID').ASINTEGER;
     end
     else
     begin
      Label32.Caption:='';
      OT_KEI_ID:=0;
     end;
    END;}
  end;
end;

procedure TFDob_Peredano.SpeedButton2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex=0 then
begin
 if FVybPrep=nil then FVybprep:=TfVybPrep.Create(Application);
 FVybPrep.ShowModal;
 if FVybPrep.ModalResult=mrOk then
 begin
     s_kodp:=FVybPrep.vprepKsm_id.AsInteger;
     EDIT5.OnChange:=nil;
     edit5.text:=FVybPrep.vprep.FieldByName('KOD_PROD').AsString;
     EDIT5.OnChange:=Edit2Change;
     s_nmat:=FVybPrep.vprep.FieldByName('NMAT').AsString;
     s_kodProd:=FVybPrep.vprep.FieldByName('KOD_PROD').AsString;
     s_neiz:=FVybPrep.vprep.FieldByName('NEIS').AsString;
     s_kodp_kuda:=s_kodp;
     label29.caption:=s_NMAT;
  end;
{ if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
  FindSpprod.DataBaseName:=dm1.BELMED;
  FindSpprod.ReadOnly:=true;
  FindSpprod.ShowModal;
  if FindSpprod.ModalResult > 50 then
  begin
   EDIT5.OnChange:=nil;
   edit5.text:=FindSpprod.IBSpprodKod_Prod.Asstring;
   EDIT5.OnChange:=Edit2Change;
   s_kodp:=FindSpprod.ModalResult-50;
   s_nmat:=FindSpprod.IBSpprodNMAT.AsString;
   s_kodProd:=FindSpprod.IBSpprodKOD_PROD.AsString;
   s_neiz:=FindSpprod.IBSpprodNEIS.AsString;
   label29.caption:=s_NMAT;
   s_kodp_kuda:=s_kodp;
  end;}
 end
 else
 begin
  if FindStruk=nil then FindStruk:=TfindStruk.Create(Application);
  FindStruk.DataBaseName:=dm1.BELMED;
  FindStruk.ReadOnly:=true;
  FindStruk.ShowModal;
  if FindStruk.ModalResult>50 then
  begin
   label29.Caption:=FindStruk.name;
   Edit5.Text:=FindStruk.DBEdit5.Text;
   vKlient_id:=FindStruk.ModalResult-50;
   s_kodp_kuda:=FindStruk.ModalResult-50;
  end;
 end;
end;

procedure TFDob_Peredano.SpeedButton5Click(Sender: TObject);
begin
 if FVybPrep=nil then FVybprep:=TfVybPrep.Create(Application);
 FVybPrep.ShowModal;
 if FVybPrep.ModalResult=mrOk then
 begin
     s_kodp:=FVybPrep.vprepKsm_id.AsInteger;
     EDIT2.OnChange:=nil;
     edit2.text:=FVybPrep.vprep.FieldByName('KOD_PROD').AsString;
     EDIT2.OnChange:=Edit2Change;
     s_nmat:=FVybPrep.vprep.FieldByName('NMAT').AsString;
     s_kodProd:=FVybPrep.vprep.FieldByName('KOD_PROD').AsString;
     s_neiz:=FVybPrep.vprep.FieldByName('NEIS').AsString;
     s_kodp_otkuda:=s_kodp;
     label24.caption:=s_NMAT;
  end;
 { if FindSpprod=nil then FindSpprod:=TfindSpprod.Create(Application);
 FindSpprod.DataBaseName:=dm1.BELMED;
 FindSpprod.ReadOnly:=true;
 FindSpprod.Usl_Struk :='spprod.struk_id='+inttostr(vStruk_id);
 FindSpprod.ShowModal;
 if FindSpprod.ModalResult > 50 then
 begin
  EDIT2.OnChange:=nil;
  edit2.text:=FindSpprod.IBSpprodKod_Prod.Asstring;
  EDIT2.OnChange:=Edit2Change;
  s_kodp:=FindSpprod.ModalResult-50;
  s_nmat:=FindSpprod.IBSpprodNMAT.AsString;
  s_kodProd:=FindSpprod.IBSpprodKOD_PROD.AsString;
  s_neiz:=FindSpprod.IBSpprodNEIS.AsString;
  s_kodp_otkuda:=FindSpprod.IBSpprod.FieldByName('KSM_ID').value;
  label24.caption:=s_NMAT;
 end;}
end;

procedure TFDob_Peredano.FormShow(Sender: TObject);
begin
 LABEL25.Caption:='';
 LABEL24.Caption:='';
 LABEL29.Caption:='';
 LABEL30.Caption:='';
 LABEL3.Caption:='';
 Edit1.Text:='';
 Edit2.Text:='';
 Edit3.Text:='';
 Edit4.Text:='';
 Edit5.Text:='';
 Edit6.Text:='';
 Edit7.Text:='';
end;

procedure TFDob_Peredano.SpeedButton4Click(Sender: TObject);
begin
if FEdiz=nil then FEdiz:=TFEdiz.Create(Application);
    FEdiz.ShowModal;
    if FEdiz.ModalResult > 50 then
    begin
     edit1.Text:=FEdiz.EdizNeis.AsString;;
     ot_kei_id:=FEdiz.EdizKei_id.AsInteger;
    end;
end;

procedure TFDob_Peredano.Edit7Click(Sender: TObject);
begin
 edit7.text:='';
end;

procedure TFDob_Peredano.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
  if edit7.text<>''  then
  begin
   dM1.Matrop.Active:=false;
   dM1.Matrop.ParamByName('ksm').AsInteger:=strtoint(edit7.text);
   dM1.Matrop.Active:=TRUE;
   if not dm1.Matrop.eof then
   begin
    s_ksm:=strtoint(edit7.text);
    s_kei :=dm1.Matrop.FieldByName('Kei_id').AsInteger;
    Label3.Caption:=dm1.Matrop.FieldByName('Nmat').AsString;
   end;
  end;
 end; 
end;

procedure TFDob_Peredano.SpeedButton6Click(Sender: TObject);
begin
 if FindMatrop=nil then FindMatrop:=TfindMatrop.Create(Application);
 FindMatrop.DataBaseName:=dm1.BELMED;
 FindMatrop.ReadOnly:=true;
 FindMatrop.ShowModal;
 if FindMatrop.ModalResult > 50 then
 begin
  s_ksm:=FindMatrop.ModalResult-50;
  edit7.Text:=inttostr(FindMatrop.ModalResult-50);
  Label3.Caption :=FindMatrop.IBMatropNMAT.AsString;
 end;
end;

end.
