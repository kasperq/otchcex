unit Prihod;

interface

uses PrihodDm,
Controls, IBDatabase, Forms, SysUtils, Variants, UtilRIB, Math;

type
  TPrihod = class
  private
    dm : TPrihDM;
    v_raspred_dob, v_raspred : double;
    v_kein : integer;
    s_dat1, s_dat2 : string;
    vSTRUK_ID : integer;
    s_KSM : integer;
    vklient_id : integer;
    v_razdel : integer;
    vdocument_id : integer;
    st_Kart : integer;
    v_dok_Kart : integer;
    S_KODP : integer;
    vTip_Op_Id : integer;
    vTip_Doc_Id : integer;
    vNDoc : string;
    mes, god : integer;
    vDate_op, vDate_dok : TDate;
    vKart_id : integer;
    tochn : integer;


    function getNeededPrixInMatropEdiz() : double;
    function getNeededPrixInNormnEdiz() : double;
    procedure createKartIdInOstatki;
    procedure createPrixodDocumOnPrep;
    procedure removeKartByDocidKsmidRazdelid(docId, ksmId, razdelId: Integer);
    procedure findOstatkiSyrInCex(spec : boolean);
    procedure createKartInPrixodDocumOnPrep;

  public
    Constructor Create; overload;
    constructor Create(db : TIBDatabase); overload;
    Destructor Destroy; override;

    procedure DobPrixPrep(spec : boolean);
  
  end;

implementation

Constructor TPrihod.Create;
begin
  inherited Create;
  //
end;

constructor TPrihod.Create(db : TIBDatabase);
begin
  inherited Create;
  dm := TPrihDm.Create(Application);
  dm.setDB(db);
  dm.connectToDB;
end;

Destructor TPrihod.Destroy;
begin
  FreeAndNil(dm);
  inherited Destroy;
end;

procedure TPrihod.DobPrixPrep(spec : boolean);
var
  v_docSt : integer;
  v_tipSt : integer;
  v_kartSt : integer;
begin
  v_docSt := vDocument_id;
  v_tipSt := vTip_op_id;
  v_kartSt := vKart_id;
 // ������ ������������ ���-�� ������� �� �������� � ������ ��������
  if (not spec) then
    v_raspred := getNeededPrixInMatropEdiz();    // v_raspred- � ��.���.����������� (����.Matrop)
  v_raspred_dob := getNeededPrixInNormnEdiz();   // v_raspred_dob - � ��.���. ���� (����.Normn)
// ����� �������� ����� ����, ��� ���-�������
  if (spec) then
    v_dok_kart := SelectToVarIB('select Ostatki.kart_id '
                                + 'FROM Ostatki WHERE Ostatki.STRUK_ID = ' + INTTOSTR(VsTRUK_ID)
                                + ' AND ostatki.ksm_id = ' + inttostr(s_Ksm)
                                + ' AND (coalesce(Ostatki.Ksm_idpr, 0) = 0) '
                                + ' and ostatki.account = ''10/11'' '
                                + ' and ostatki.ot_s <> 0 ',
                                dm.db, dm.trans_read)
  else
    v_dok_kart := SelectToVarIB('select Ostatki.kart_id '
                                + 'FROM Ostatki WHERE Ostatki.STRUK_ID = ' + INTTOSTR(VsTRUK_ID)
                                + ' AND ostatki.ksm_id = ' + inttostr(s_Ksm)
                                + ' AND (coalesce(Ostatki.Ksm_idpr, 0) = 0)',
                                dm.db, dm.trans_read);

  If (v_dok_kart = Null) then
    createKartIdInOstatki   //  �������� ����, ������� ��
  else
    st_kart := v_dok_kart;  // �������� ����� ���� ����, �������� ����� ������� � �����
  createPrixodDocumOnPrep;  //                 ������� �������� ������� �����  �� ��������
  if (v_raspred_dob > 0) then
  begin
    if (not dm.Kart.Active) then
    begin
      DM.Kart.MacroByName('USL').AsString := 'WHERE document.klient_id = '
                                              + inttostr(s_kodp)
                                              + ' and document.date_op between '
                                              + '''' + s_dat1 + '''' + ' and '
                                              + '''' + s_dat2 + '''';
      DM.Kart.Open
    end;
    dm.Kart.BeforePost := nil;
// ���� �� ������ ����� (OSTATKI)- QUERY
    findOstatkiSyrInCex(spec);
    createKartInPrixodDocumOnPrep;    // ������ ������������ ������� �� �������� � Kart
  end;
  vdocument_id := v_docSt;
  vTip_Op_Id := v_tipSt;
  vKart_id := v_kartSt;
end;

function TPrihod.getNeededPrixInMatropEdiz() : double;   // ������ ������������ ���-�� ������� �� �������� � ������ ��������
begin
  dm.IBQuery1.Active := False;
  dm.IBQuery1.SQL.Clear;
  dm.IBQuery1.SQL.Add('SELECT ost.kei_id, ost.OSTATOK_begin_S, ost.zag_period, '
                       + 'ost.peredano_rash_s, ost.peredano_prih_s, ost.razdel_id ');
  dm.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM (' + '''' + s_dat1 + '''' + ','
                       + '''' + s_dat2 + '''' + ',' + inttostr(s_kodp) + ','
                       + inttostr(vSTRUK_ID) + ',' + inttostr(s_KSM)
                       + ') ost where ost.razdel_id = ' + inttostr(v_razdel));
  dm.IBQuery1.Active := True;
  if (dm.IBQuery1.RecordCount > 0) then
    result := dm.IBQuery1.FieldByName('zag_period').AsFloat
              + dm.IBQuery1.FieldByName('peredano_rash_s').AsFloat
              - dm.IBQuery1.FieldByName('OSTATOK_begin_S').AsFloat
              - dm.IBQuery1.FieldByName('peredano_prih_s').AsFloat
  else
    result := 0;
end;

function TPrihod.getNeededPrixInNormnEdiz() : double;   // ������ ������������ ���-�� ������� �� �������� � ������ ��������
begin
  dm.IBQuery1.Active := False;
  dm.IBQuery1.SQL.Clear;
  dm.IBQuery1.SQL.Add('SELECT ost.kei_id, ost.OSTATOK_begin_S, ost.zag_period, '
                       + 'ost.peredano_rash_s, ost.peredano_prih_s, ost.razdel_id ');
  dm.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM (' + '''' + s_dat1 + '''' + ','
                       + '''' + s_dat2 + '''' + ',' + inttostr(s_kodp) + ','
                       + inttostr(vSTRUK_ID) + ',' + inttostr(s_KSM)
                       + ') ost where ost.razdel_id = ' + inttostr(v_razdel));
  dm.IBQuery1.Active := True;
  if (dm.IBQuery1.RecordCount > 0) then
  begin
    if (v_kein <> dm.IBQuery1.FieldByName('kei_id').asinteger) then
      result := roundto(v_raspred * dm.Koef_per(v_Kein,
                                                dm.IBQuery1.FieldByName('Kei_id').AsInteger,
                                                s_Ksm),
                        tochn)
    else
      result := v_raspred;
  end
  else
    result := v_raspred;
end;

procedure TPrihod.createKartIdInOstatki;   // �������� �������� ����� � ��������
begin
  IF (not dm.Ostatki.Active) THEN
  begin
    dm.Ostatki.MacroByName('usl').AsString := '0=0';
    dm.Ostatki.ParamByName('struk_id').AsInteger := vStruk_Id;
    dm.Ostatki.Active := TRUE
  end
  else
    dm.Ostatki.First;
  dm.Ostatki.Insert;
  dm.Ostatki.FieldByName('razdel_id').AsVariant := null;
  dm.Ostatki.FieldByName('ksm_idpr').AsVariant := null;
  dm.Ostatki.FieldByName('kei_id').AsVariant := null;
  dm.Ostatki.Post;
  dm.Ostatki.ApplyUpdates;
  st_kart := vKart_id;
end;

procedure TPrihod.createPrixodDocumOnPrep;  // �������� ���������� ��������� �� ��������
var
  dat : TDate;
begin
  dat := strtodate(s_dat1);
  vDocument_id := -1;
  if (dm.Document.Active) then
    if (dm.Document.Locate('struk_id;tip_op_id;klient_id;date_op',
                            VarArrayOf([vStruk_id, 30, vKlient_id, dat]), [])) then
      vDocument_id := dm.DocumentDoc_id.AsInteger;
  if (vDocument_id = -1) then  
  begin
    v_dok_Kart := SelectToVarIB('select DOcUMENT.doc_id FROM document '
                                + ' WHERE DOcUMENT.STRUK_ID = ' + INTTOSTR(VsTRUK_ID)
                                + ' AND DOCUMENT.TIP_OP_ID = 30'
                                + ' AND Document.Date_op between ' + ''''
                                + s_dat1 + '''' + ' and ' + '''' + s_dat2 + ''''
                                + ' AND DOCUMENT.KLIENT_ID = ' + INTTOSTR(S_KODP),
                                dm.db, dm.trans_read);
    if (v_dok_Kart <> Null) then
    begin
      vDocument_id := V_DOK_KART;
//                         �������� ������ �� KART
      removeKartByDocidKsmidRazdelid(vDocument_id, s_ksm, v_razdel);
    end
    ELSE
    BEGIN
      vTip_Op_Id := 30;
      vTip_Doc_Id := 37;
      vNDoc := '��-' + inttostr(S_Kodp) + '-' + inttostr(mes) + '.' + inttostr(god);
      vKlient_Id := S_KODP;
      vDate_op := strtodate(s_dat1);
      vDate_dok := strtodate(s_dat1);
      dm.Document.open;
      dm.Document.Insert;
      dm.Document.Post;
      dm.Document.Edit;
      dm.Document.Post;
      dm.Document.ApplyUpdates;
    END;
  end;
end;

procedure TPrihod.removeKartByDocidKsmidRazdelid(docId, ksmId, razdelId: Integer);
begin
  dm.startWriteTrans;
  dm.IbDel.Active := false;
  dm.IbDel.SQL.Clear;
  dm.IbDel.SQL.Add('delete from kart where doc_id = ' + inttostr(vDocument_id)
                + ' and ksm_id = ' + inttostr(s_ksm) + ' and razdel_id = '
                + inttostr(v_razdel) + ' and parent is null ');
  dm.IbDel.Active := true;
  dm.commitWriteTrans(true);
end;

procedure TPrihod.findOstatkiSyrInCex(spec : boolean);   // ����� �������� ����� � ����
begin
  dm.IBQuery1.Active := False;
  dm.IBQuery1.SQL.Clear;
  dm.IBQuery1.SQL.Add('SELECT ostatki.kart_id, ostatki.OSTATOK_END_S, ostatki.struk_id, ');
  dm.IBQuery1.SQL.Add(' (select kol_new from ceh_ost_ediz(ostatki.KSM_ID, ostatki.KEI_ID,'
                        + inttostr(v_kein) + ', ostatki.OSTATOK_END_S)) Kot_S');
  if (spec) then
  begin
    dm.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM_ACC (' + '''' + s_dat1 + '''' + ','
                            + '''' + s_dat2 + '''' + ',1,' + inttostr(vSTRUK_ID)
                        + ',' + inttostr(s_KSM) + ', ''10/11'') ostatki ');
  end
  else
  begin
    dm.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM1 (' + '''' + s_dat1 + '''' + ','
                        + '''' + s_dat2 + '''' + ',1,' + inttostr(vSTRUK_ID)
                        + ',' + inttostr(s_KSM) + ', 0) ostatki ');
  end;
  dm.IBQuery1.SQL.Add(' order by ostatki.kart_id ');
  dm.IBQuery1.Active := True;
  dm.IBQuery1.First;
end;

procedure TPrihod.createKartInPrixodDocumOnPrep;   // ���������� ������������ ������� ����� �� �������� � Kart
var
  v_ost : double;
  v_ost_razn : double;
  pr_vxod : integer;
begin
 pr_vxod := 1;
  if (dm.IBQuery1.RecordCount > 0) then
  begin
    v_ost_razn := v_raspred_dob;
    while (not dm.IBQuery1.eof) and ((v_ost_razn > 0) or (pr_vxod = 1))  do
    begin
      pr_vxod := pr_vxod + 1;
      v_ost := dm.IBQuery1.FieldByName('Kot_S').AsFloat;
      dm.IBQuery1.Next;
      if (v_ost = 0) and (not dm.IBQuery1.eof) then
        dm.IBQuery1.Prior
      else
      begin
        if (dm.IBQuery1.eof) then
          v_raspred_dob := v_ost_razn
        else
        begin
          if (v_ost <> 0) and (not dm.IBQuery1.eof) then
          begin
            dm.IBQuery1.Prior;
            if (v_ost_razn - v_ost >= 0){ and (v_ost >= 0)} then
            begin
              v_raspred_dob := v_ost;
              v_ost_razn := v_ost_razn - v_ost;
            end
            else
            begin
              v_raspred_dob := v_ost_razn;
              v_ost_razn := v_ost_razn - v_ost;
            end;
          end;
        end;
        dm.Kart.Insert;
        dm.setValues2Kart(s_ksm, vklient_id, v_razdel, v_kein, vdocument_id,
                       dm.IBQuery1.FieldByName('Kart_id').AsInteger,
                       30, 37, v_raspred_dob, 0, 0, 0);
        dm.Kart.Post;
      end;
      dm.IBQuery1.Next;
    end;
  end
  else
  begin
    dm.Kart.Insert;
    dm.setValues2Kart(s_ksm, vklient_id, v_razdel, v_kein, vdocument_id, st_Kart,
                   30, 37, v_raspred_dob, 0, 0, 0);
    dm.Kart.Post
  end;
  dm.Kart.BeforePost := dm.KartBeforePost;
  DM.kart.ApplyUpdates;
end;

end.
