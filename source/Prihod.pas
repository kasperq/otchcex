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
    procedure createKartIdInOstatki;
    procedure createPrixodDocumOnPrep;
    procedure removeKartByDocidKsmidRazdelid(docId, ksmId, razdelId: Integer);
    procedure findOstatkiSyrInCex(spec : boolean);
    procedure createKartInPrixodDocumOnPrep;

  public
    Constructor Create; overload;
    constructor Create(var db : TIBDatabase); overload;
    Destructor Destroy; override;

    procedure DobPrixPrep(spec : boolean; ksmId, keiId, ksmIdPrep, strukId : integer;
                          kolRash : double);
  
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
  ostCexKartId : integer;
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

 // расчет необходимого кол-ва прихода на препарат с учетом остатков
  if (not spec) then
    kolRashMatrop := getNeededPrixInMatropEdiz();    // v_raspred- в ед.изм.справочника (табл.Matrop)
  kolRashNorm := getNeededPrixInNormnEdiz();   // v_raspred_dob - в ед.изм. норм (табл.Normn)
// поиск карточки сырья цеха, ели нет-создать
  if (serOst.openOstatki(ksmId, -1, strukId, 0)) then
    ostCexKartId := serOst.kartId
  else
    serOst.insertOstatki();
  
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
    createKartIdInOstatki;   //  карточки нету, создаем ее
//  else
//    st_kart := v_dok_kart;  // карточка сырья цеха есть, получаем сумму остатка в сырье
  createPrixodDocumOnPrep;  //                 создаем документ прихода сырья  на препарат
  if (kolRashNorm > 0) then
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
// цикл по сериям сырья (OSTATKI)- QUERY
    findOstatkiSyrInCex(spec);
    createKartInPrixodDocumOnPrep;    // запись необходимого прихода на препарат в Kart
  end;
//  prihDocId := v_docSt;
//  vTip_Op_Id := v_tipSt;
//  vKart_id := v_kartSt;
end;

function TPrihod.getNeededPrixInMatropEdiz() : double;   // расчет необходимого кол-ва прихода на препарат с учетом остатков
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

function TPrihod.getNeededPrixInNormnEdiz() : double;   // расчет необходимого кол-ва прихода на препарат с учетом остатков
begin
  dm.IBQuery1.Close;
  dm.IBQuery1.SQL.Clear;
  dm.IBQuery1.SQL.Add('SELECT ost.kei_id, ost.OSTATOK_begin_S, ost.zag_period, '
                       + 'ost.peredano_rash_s, ost.peredano_prih_s, ost.razdel_id ');
  dm.IBQuery1.SQL.Add(' FROM  SELECT_OST_KSM (' + '''' + DateToStr(dateBegin) + '''' + ','
                       + '''' + DateToStr(dateEnd) + '''' + ',' + IntToStr(ksmIdPrep) + ','
                       + IntToStr(strukId) + ',' + IntToStr(ksmId)
                       + ') ost where ost.razdel_id = ' + IntToStr(razdelId);
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

procedure TPrihod.createKartIdInOstatki;   // создание карточки сырья в остатках
begin
  IF (not dm.Ostatki.Active) THEN
  begin
    dm.Ostatki.MacroByName('usl').AsString := '0=0';
    dm.Ostatki.ParamByName('struk_id').AsInteger := vStruk_Id;
    dm.Ostatki.Open
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

procedure TPrihod.createPrixodDocumOnPrep;  // создание приходного документа на препарат
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
//                         Удаление данных из KART
      removeKartByDocidKsmidRazdelid(prihDocId, ksmId, razdelId);
    end
    ELSE
    BEGIN
      dm.tipOpId := 30;
      dm.tipDokId := 37;
      dm.vNDoc := 'Рп-' + IntToStr(ksmIdPrep) + '-' + IntToStr(month) + '.' + IntToStr(year);
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

procedure TPrihod.findOstatkiSyrInCex(spec : boolean);   // поиск остатков сырья в цехе
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

procedure TPrihod.createKartInPrixodDocumOnPrep;   // добавление необходимого прихода сырья на препарат в Kart
var
  v_ost : double;
  v_ost_razn : double;
  pr_vxod : integer;
begin
 pr_vxod := 1;
  if (dm.IBQuery1.RecordCount > 0) then
  begin
    v_ost_razn := kolRashNorm;
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
          kolRashNorm := v_ost_razn
        else
        begin
          if (v_ost <> 0) and (not dm.IBQuery1.eof) then
          begin
            dm.IBQuery1.Prior;
            if (v_ost_razn - v_ost >= 0){ and (v_ost >= 0)} then
            begin
              kolRashNorm := v_ost;
              v_ost_razn := v_ost_razn - v_ost;
            end
            else
            begin
              kolRashNorm := v_ost_razn;
              v_ost_razn := v_ost_razn - v_ost;
            end;
          end;
        end;
        dm.Kart.Insert;
        dm.setValues2Kart(s_ksm, vklient_id, v_razdel, v_kein, prihDocId,
                       dm.IBQuery1.FieldByName('Kart_id').AsInteger,
                       30, 37, kolRashNorm, 0, 0, 0);
        dm.Kart.Post;
      end;
      dm.IBQuery1.Next;
    end;
  end
  else
  begin
    dm.Kart.Insert;
    dm.setValues2Kart(s_ksm, vklient_id, v_razdel, v_kein, prihDocId, st_Kart,
                   30, 37, kolRashNorm, 0, 0, 0);
    dm.Kart.Post
  end;
  dm.Kart.BeforePost := dm.KartBeforePost;
  DM.kart.ApplyUpdates;
end;

end.
