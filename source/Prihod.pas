unit Prihod;

interface

uses PrihodDm, SeriaOstatki,
Controls, IBDatabase, Forms, SysUtils, Variants, UtilRIB, Math;

type
  TPrihod = class
  private
    dm : TPrihDM;
    serOst : TSeriaOstatki;

    ksmId, keiId, ksmIdPrep, strukId, razdelId, month, year : integer;
    dateBegin, dateEnd : TDate;
    kolRashNorm, kolRashMatrop : double;
    prihDocId : integer;

    v_kein : integer;
    s_dat1, s_dat2 : string;
    vSTRUK_ID : integer;
    s_KSM : integer;
    vklient_id : integer;
    v_razdel : integer;

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
//    procedure createKartIdInOstatki;
    procedure createPrixodDocumOnPrep;
    procedure removeKartByDocidKsmidRazdelid(docId, ksmId, razdelId: Integer);
    function findOstatkiSyrInCex(spec : boolean) : boolean;
    procedure createKartInPrixodDocumOnPrep(spec : boolean);

  public
    Constructor Create; overload;
    constructor Create(var db : TIBDatabase); overload;
    Destructor Destroy; override;

    procedure DobPrixPrep(spec : boolean; ksmId, keiId, ksmIdPrep, strukId,
                          razdelId, month, year : integer; kolRash : double);
  
  end;

implementation

Constructor TPrihod.Create;
begin
  inherited Create;
  //
end;

constructor TPrihod.Create(var db : TIBDatabase);
begin
  inherited Create;
  dm := TPrihDm.Create(Application);
  dm.setDB(db);
  dm.IBQuery1.Database := db;
  dm.Document.Database := db;
  dm.Kart.Database := db;
  dm.IBdel.Database := db;
  dm.ADD_KartDok.Database := db;
end;

Destructor TPrihod.Destroy;
begin
  FreeAndNil(dm);
  inherited Destroy;
end;

procedure TPrihod.DobPrixPrep(spec : boolean; ksmId, keiId, ksmIdPrep, strukId,
                              razdelId, month, year : integer; kolRash : double);
var
  s_month : string;
//  v_docSt : integer;
//  v_tipSt : integer;
//  v_kartSt : integer;
begin
//  v_docSt := vDocument_id;
//  v_tipSt := vTip_op_id;
//  v_kartSt := vKart_id;
  if (serOst = nil) then
    serOst := TSeriaOstatki.Create(dm.db);
  self.ksmId := ksmId;
  self.keiId := keiId;
  self.ksmIdPrep := ksmIdPrep;
  self.strukId := strukId;
  self.razdelId := razdelId;
  self.kolRashMatrop := kolRash;
  self.month := month;
  self.year := year;

  IF (month < 10) THEN
    s_month := '0' + IntToStr(month)
  ELSE
    s_month := IntToStr(month);
  dateBegin := StrToDate('01.' + s_month + '.' + IntToStr(year));
  dateEnd := IncMonth(dateBegin, 1) - 1;

 // ������ ������������ ���-�� ������� �� �������� � ������ ��������
  if (not spec) then
    kolRashMatrop := getNeededPrixInMatropEdiz();    // v_raspred- � ��.���.����������� (����.Matrop)
  kolRashNorm := getNeededPrixInNormnEdiz();   // v_raspred_dob - � ��.���. ���� (����.Normn)
// ����� �������� ����� ����, ��� ���-�������
//  if (spec) then
//    ostCexKartId := SelectToVarIB('select Ostatki.kart_id '
//                                + 'FROM Ostatki WHERE Ostatki.STRUK_ID = ' + IntToStr(strukId)
//                                + ' AND ostatki.ksm_id = ' + IntToStr(ksmId)
//                                + ' AND (coalesce(Ostatki.Ksm_idpr, 0) = 0) '
//                                + ' and ostatki.account = ''10/11'' '
//                                + ' and ostatki.ot_s <> 0 ',
//                                dm.db, dm.trans_read)
//  else
//    ostCexKartId := SelectToVarIB('select Ostatki.kart_id '
//                                + 'FROM Ostatki WHERE Ostatki.STRUK_ID = ' + IntToStr(strukId)
//                                + ' AND ostatki.ksm_id = ' + IntToStr(ksmId)
//                                + ' AND (coalesce(Ostatki.Ksm_idpr, 0) = 0)',
//                                dm.db, dm.trans_read);
//  If (ostCexKartId = Null) then
//    createKartIdInOstatki;   //  �������� ����, ������� ��
//  else
//    st_kart := v_dok_kart;  // �������� ����� ���� ����, �������� ����� ������� � �����
  createPrixodDocumOnPrep;  //                 ������� �������� ������� �����  �� ��������
  if (kolRashNorm > 0) then
  begin
    if (not dm.Kart.Active) then
    begin
      DM.Kart.MacroByName('USL').AsString := 'WHERE document.klient_id = '
                                              + IntToStr(ksmIdPrep)
                                              + ' and document.date_op between '
                                              + '''' + DateToStr(dateBegin) + '''' + ' and '
                                              + '''' + DateToStr(dateEnd) + '''';
      DM.Kart.Open
    end;
    dm.Kart.BeforePost := nil;
// ���� �� ������ ����� (OSTATKI)- QUERY
//    findOstatkiSyrInCex(spec);
    createKartInPrixodDocumOnPrep(spec);    // ������ ������������ ������� �� �������� � Kart
  end;
  dm.commitWriteTrans(true);
//  prihDocId := v_docSt;
//  vTip_Op_Id := v_tipSt;
//  vKart_id := v_kartSt;
end;

function TPrihod.getNeededPrixInMatropEdiz() : double;   // ������ ������������ ���-�� ������� �� �������� � ������ ��������
begin
  result := 0;
  dm.IBQuery1.Close;
  dm.IBQuery1.SQL.Clear;
  dm.IBQuery1.SQL.Add('SELECT ost.kei_id, ost.OSTATOK_begin_S, ost.zag_period, '
                       + 'ost.peredano_rash_s, ost.peredano_prih_s, ost.razdel_id ');
  dm.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM (' + '''' + DateToStr(dateBegin) + '''' + ','
                       + '''' + DateToStr(dateEnd) + '''' + ',' + IntToStr(ksmIdPrep) + ','
                       + IntToStr(strukId) + ',' + IntToStr(ksmId)
                       + ') ost where ost.razdel_id = ' + IntToStr(razdelId));
  dm.IBQuery1.Open;
  if (dm.IBQuery1.RecordCount > 0) then
    result := dm.IBQuery1.FieldByName('zag_period').AsFloat
              + dm.IBQuery1.FieldByName('peredano_rash_s').AsFloat
              - dm.IBQuery1.FieldByName('OSTATOK_begin_S').AsFloat
              - dm.IBQuery1.FieldByName('peredano_prih_s').AsFloat;
end;

function TPrihod.getNeededPrixInNormnEdiz() : double;   // ������ ������������ ���-�� ������� �� �������� � ������ ��������
begin
  dm.IBQuery1.Close;
  dm.IBQuery1.SQL.Clear;
  dm.IBQuery1.SQL.Add('SELECT ost.kei_id, ost.OSTATOK_begin_S, ost.zag_period, '
                       + 'ost.peredano_rash_s, ost.peredano_prih_s, ost.razdel_id ');
  dm.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM (' + '''' + DateToStr(dateBegin) + '''' + ','
                       + '''' + DateToStr(dateEnd) + '''' + ',' + IntToStr(ksmIdPrep) + ','
                       + IntToStr(strukId) + ',' + IntToStr(ksmId)
                       + ') ost where ost.razdel_id = ' + IntToStr(razdelId));
  dm.IBQuery1.Open;
  if (dm.IBQuery1.RecordCount > 0) then
  begin
    if (keiId <> dm.IBQuery1.FieldByName('kei_id').asinteger) then
      result := RoundTo(kolRashMatrop * dm.Koef_per(keiId,
                                                    dm.IBQuery1.FieldByName('Kei_id').AsInteger,
                                                    ksmId),
                        -6)
    else
      result := kolRashMatrop;
  end
  else
    result := kolRashMatrop;
end;

//procedure TPrihod.createKartIdInOstatki;   // �������� �������� ����� � ��������
//begin
//  IF (not dm.Ostatki.Active) THEN
//  begin
//    dm.Ostatki.MacroByName('usl').AsString := '0=0';
//    dm.Ostatki.ParamByName('struk_id').AsInteger := vStruk_Id;
//    dm.Ostatki.Open
//  end
//  else
//    dm.Ostatki.First;
//  dm.Ostatki.Insert;
//  dm.Ostatki.FieldByName('razdel_id').AsVariant := null;
//  dm.Ostatki.FieldByName('ksm_idpr').AsVariant := null;
//  dm.Ostatki.FieldByName('kei_id').AsVariant := null;
//  dm.Ostatki.Post;
//  dm.Ostatki.ApplyUpdates;
//  st_kart := vKart_id;
//end;

procedure TPrihod.createPrixodDocumOnPrep;  // �������� ���������� ��������� �� ��������
begin
  prihDocId := -1;
  if (dm.Document.Active) then
    if (dm.Document.Locate('struk_id;tip_op_id;klient_id;date_op',
                            VarArrayOf([strukId, 30, ksmIdPrep, dateBegin]), [])) then
      prihDocId := dm.DocumentDoc_id.AsInteger;
  if (prihDocId = -1) then
  begin
    prihDocId := SelectToVarIB('select DOcUMENT.doc_id FROM document '
                                + ' WHERE DOcUMENT.STRUK_ID = ' + IntToStr(strukId)
                                + ' AND DOCUMENT.TIP_OP_ID = 30'
                                + ' AND Document.Date_op between ' + ''''
                                + DateToStr(dateBegin) + '''' + ' and ' + ''''
                                + DateToStr(dateEnd) + ''''
                                + ' AND DOCUMENT.KLIENT_ID = ' + IntToStr(ksmIdPrep),
                                dm.db, dm.trans_read);
    if (prihDocId <> Null) then
    begin
//                         �������� ������ �� KART
      removeKartByDocidKsmidRazdelid(prihDocId, ksmId, razdelId);
    end
    ELSE
    BEGIN
      dm.tipOpId := 30;
      dm.tipDokId := 37;
      dm.vNDoc := '��-' + IntToStr(ksmIdPrep) + '-' + IntToStr(month) + '.' + IntToStr(year);
      dm.ksmIdPrep := ksmIdPrep;
      dm.dateOp := dateBegin;
      dm.dateDok := dateBegin;
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
  dm.IbDel.Close;
  dm.IbDel.SQL.Clear;
  dm.IbDel.SQL.Add('delete from kart where doc_id = ' + inttostr(prihDocId)
                + ' and ksm_id = ' + IntTostr(ksmId) + ' and razdel_id = '
                + IntToStr(razdelId) + ' and parent is null ');
  dm.IbDel.Open;
  dm.commitWriteTrans(true);
end;

function TPrihod.findOstatkiSyrInCex(spec : boolean) : boolean;   // ����� �������� ����� � ����
begin
  result := false;
  dm.IBQuery1.Close;
  dm.IBQuery1.SQL.Clear;
  dm.IBQuery1.SQL.Add('SELECT ostatki.kart_id, ostatki.OSTATOK_END_S, ostatki.struk_id, ');
  dm.IBQuery1.SQL.Add(' (select kol_new from ceh_ost_ediz(ostatki.KSM_ID, ostatki.KEI_ID,'
                        + inttostr(keiId) + ', ostatki.OSTATOK_END_S)) Kot_S');
  if (spec) then
  begin
    dm.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM_ACC (' + '''' + DateToStr(dateBegin)
                        + '''' + ',' + '''' + DateToStr(dateEnd) + '''' + ',1,'
                        + IntToStr(strukId) + ',' + IntToStr(ksmId) + ', ''10/11'') ostatki ');
  end
  else
  begin
    dm.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM1 (' + '''' + DateToStr(dateBegin) + '''' + ','
                        + '''' + DateToStr(dateEnd) + '''' + ',1,' + IntToStr(strukId)
                        + ',' + IntToStr(ksmId) + ', 0) ostatki ');
  end;
  dm.IBQuery1.SQL.Add(' order by ostatki.kart_id ');
  dm.IBQuery1.Open;
  dm.IBQuery1.First;
  if (dm.IBQuery1.RecordCount > 0) then
    result := true;
end;

procedure TPrihod.createKartInPrixodDocumOnPrep(spec : boolean);   // ���������� ������������ ������� ����� �� �������� � Kart
var
  curKartOst : double;
  curKolRash : double;
  curKolOst :  double;
  ostCexKartId : integer;
begin
  dm.Kart.BeforePost := nil;
  if (findOstatkiSyrInCex(spec)) then
  begin
    curKolOst := kolRashNorm;
    dm.ibquery1.first;
    while (curKolOst <> 0) do
    begin
      ostCexKartId := dm.IBQuery1.FieldByName('kart_id').AsInteger;
      if (curKolOst < 0) or   // ���� ������ �������������, �� ������ ��� ���� �� ������� ��������, ���
         ((curKolOst > 0) and (dm.IBQuery1.FieldByName('kot_s').AsFloat >= curKolOst)) then   // ���� ������ >0 � �� �������� ������� ����������
      begin
        curKolRash := curKolOst;
        curKolOst := 0;
      end
      else
      begin
        if (curKolOst > 0) and (dm.IBQuery1.FieldByName('kot_s').AsFloat > 0) then
        begin
          curKolRash := dm.IBQuery1.FieldByName('kot_s').AsFloat;
          curKolOst := curKolOst - curKolRash;
          dm.IBQuery1.Next;
        end;
        if (curKolOst > 0) and (dm.IBQuery1.Eof) then
        begin
          dm.IBQuery1.Prior;
          curKolRash := curKolOst;
          curKolOst := 0;
          ostCexKartId := dm.IBQuery1.FieldByName('kart_id').AsInteger;
        end;
      end;
      dm.Kart.Insert;
      dm.setValues2Kart(ksmId, ksmIdPrep, razdelId, keiId, prihDocId,
                        ostCexKartId, 30, 37, curKolRash, 0, 0, 0);
      dm.Kart.Post;
    end;
  end
  else
  begin
    if (serOst.openOstatki(ksmId, -1, strukId, 0)) then
      ostCexKartId := serOst.kartId
    else
    begin
      ostCexKartId := serOst.insertOstatki(ksmId, null, null, null, null, strukId, month, year);
      serOst.saveOstatki;
    end;
    dm.Kart.Insert;
    dm.setValues2Kart(ksmId, ksmIdPrep, razdelId, keiId, prihDocId, ostCexKartId,
                   30, 37, kolRashNorm, 0, 0, 0);
    dm.Kart.Post
  end;
  dm.Kart.BeforePost := dm.KartBeforePost;
  DM.kart.ApplyUpdates;
end;

end.
