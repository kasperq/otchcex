unit Prihod;

interface

uses PrihodDm, SeriaOstatki, DBDM,
Controls, IBDatabase, Forms, SysUtils, Variants, UtilRIB, Math;

type
  TPrihod = class
  private
    dm : TPrihDM;
    serOst : TSeriaOstatki;
    db : TdDM;

    ksmId, keiId, ksmIdPrep, strukId, razdelId, month, year : integer;
    dateBegin, dateEnd : TDate;
    kolRashNorm, kolRashMatrop : double;
    prihDocId : integer;

    function getNeededPrixInMatropEdiz() : double;
    function getNeededPrixInNormnEdiz() : double;
    procedure createPrixodDocumOnPrep;
    procedure removeKartByDocidKsmidRazdelid(docId, ksmId, razdelId: Integer);
    function findOstatkiSyrInCex(spec : boolean) : boolean;
    procedure createKartInPrixodDocumOnPrep(spec : boolean);

  public
    Constructor Create; overload;
    Constructor Create(var db : TdDM); overload;
    Destructor Destroy; override;

    procedure DobPrixPrep(spec : boolean; ksmId, keiId, ksmIdPrep, strukId,
                          razdelId, month, year, docId : integer; kolRash : double); overload;
    procedure DobPrixPrep(spec : boolean; ksmId, keiId, ksmIdPrep, strukId,
                          razdelId, month, year : integer; kolRash : double); overload;
  
  end;

implementation

Constructor TPrihod.Create;
begin
  inherited Create;
  //
end;

Constructor TPrihod.Create(var db : TdDM);
begin
  inherited Create;
  dm := TPrihDm.Create(Application);
  self.db := db;
  dm.trans_read.DefaultDatabase := db.db;
  dm.trans_write.DefaultDatabase := db.db;
end;

Destructor TPrihod.Destroy;
begin
  FreeAndNil(dm);
  inherited Destroy;
end;

procedure TPrihod.DobPrixPrep(spec : boolean; ksmId, keiId, ksmIdPrep, strukId,
                              razdelId, month, year, docId : integer; kolRash : double);
var
  s_month : string;
begin
  if (serOst = nil) then
    serOst := TSeriaOstatki.Create(db);
  self.ksmId := ksmId;
  self.keiId := keiId;
  self.ksmIdPrep := ksmIdPrep;
  self.strukId := strukId;
  self.razdelId := razdelId;
  self.kolRashMatrop := kolRash;
  self.month := month;
  self.year := year;
  self.prihDocId := docId;
  kolRashNorm := kolRash;

  if (kolRashNorm > 0) then
  begin
    dm.Kart.Close;
    dm.Kart.MacroByName('USL').AsString := 'WHERE document.klient_id = '
                                           + IntToStr(ksmIdPrep)
                                           + ' and document.date_op between '
                                           + '''' + DateToStr(dateBegin) + '''' + ' and '
                                           + '''' + DateToStr(dateEnd) + '''';
    dm.Kart.Open;
    dm.Kart.BeforePost := nil;
// цикл по сериям сырья (OSTATKI)- QUERY
    createKartInPrixodDocumOnPrep(spec);    // запись необходимого прихода на препарат в Kart
  end;
  dm.commitWriteTrans(false);
end;

procedure TPrihod.DobPrixPrep(spec : boolean; ksmId, keiId, ksmIdPrep, strukId,
                              razdelId, month, year : integer; kolRash : double);
var
  s_month : string;
begin
  if (serOst = nil) then
    serOst := TSeriaOstatki.Create(db);
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
//  kolRashNorm := kolRashNorm - kolRash;

  createPrixodDocumOnPrep;  //                 создаем документ прихода сырья  на препарат
  if (kolRashNorm > 0) then
  begin
    dm.Kart.Close;
    DM.Kart.MacroByName('USL').AsString := 'WHERE document.klient_id = '
                                           + IntToStr(ksmIdPrep)
                                           + ' and document.date_op between '
                                           + '''' + DateToStr(dateBegin) + '''' + ' and '
                                           + '''' + DateToStr(dateEnd) + '''';
    DM.Kart.Open;
    dm.Kart.BeforePost := nil;
// цикл по сериям сырья (OSTATKI)- QUERY
    createKartInPrixodDocumOnPrep(spec);    // запись необходимого прихода на препарат в Kart
  end;
  dm.commitWriteTrans(false);
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
                       + ') ost where ost.razdel_id = ' + IntToStr(razdelId));
  dm.IBQuery1.Open;
  if (dm.IBQuery1.RecordCount > 0) then
  begin
    if (keiId <> dm.IBQuery1.FieldByName('kei_id').asinteger) then
      result := RoundTo(kolRashMatrop * dm.Koef_per(keiId,
                                                    dm.IBQuery1.FieldByName('Kei_id').AsInteger,
                                                    ksmId, db),
                        -6)
    else
      result := kolRashMatrop;
  end
  else
    result := kolRashMatrop;
end;

procedure TPrihod.createPrixodDocumOnPrep;  // создание приходного документа на препарат
var
  prihDocId_Var : Variant;
begin
  prihDocId := -1;
  if (dm.Document.Active) then
    if (dm.Document.Locate('struk_id;tip_op_id;klient_id;date_op',
                            VarArrayOf([strukId, 30, ksmIdPrep, dateBegin]), [])) then
      prihDocId := dm.DocumentDoc_id.AsInteger;
  if (prihDocId = -1) then
  begin
    prihDocId_Var := SelectToVarIB('select DOcUMENT.doc_id FROM document '
                                + ' WHERE DOcUMENT.STRUK_ID = ' + IntToStr(strukId)
                                + ' AND DOCUMENT.TIP_OP_ID = 30'
                                + ' AND Document.Date_op between ' + ''''
                                + DateToStr(dateBegin) + '''' + ' and ' + ''''
                                + DateToStr(dateEnd) + ''''
                                + ' AND DOCUMENT.KLIENT_ID = ' + IntToStr(ksmIdPrep),
                                db.db, db.trans_read);
    if (prihDocId_Var <> Null) then
    begin
//                         Удаление данных из KART
      prihDocId := prihDocId_Var;
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
      dm.strukId := strukId;
      dm.Document.MacroByName('usl').AsString := 'where document.struk_id='
                                                 + IntToStr(dm.strukId)
                                                 + ' and document.tip_op_id = '
                                                 + IntToStr(dm.tipOpId);
      dm.Document.open;
      dm.Document.Insert;
      dm.Document.Post;
      dm.Document.ApplyUpdates;
      prihDocId := dm.DocumentDOC_ID.AsInteger;
    END;
  end;
end;

procedure TPrihod.removeKartByDocidKsmidRazdelid(docId, ksmId, razdelId: Integer);
begin
  db.startWriteTrans;
  dm.IbDel.Close;
  dm.IbDel.SQL.Clear;
  dm.IbDel.SQL.Add('delete from kart where doc_id = ' + inttostr(prihDocId)
                + ' and ksm_id = ' + IntTostr(ksmId) + ' and razdel_id = '
                + IntToStr(razdelId) + ' and parent is null ');
  dm.IbDel.Open;
//  db.trans_read.CommitRetaining;
//  db.commitWriteTrans(true);
  dm.IbDel.Close;
end;

function TPrihod.findOstatkiSyrInCex(spec : boolean) : boolean;   // поиск остатков сырья в цехе
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

procedure TPrihod.createKartInPrixodDocumOnPrep(spec : boolean);   // добавление необходимого прихода сырья на препарат в Kart
var
  curKolRash : double;
  curKolOst :  double;
  ostCexKartId : integer;
begin
  curKolRash := 0;
  dm.Kart.BeforePost := nil;
  if (findOstatkiSyrInCex(spec)) then
  begin
    curKolOst := kolRashNorm;
    dm.ibquery1.first;
    while (curKolOst <> 0) do
    begin
      ostCexKartId := 0;
      if (curKolOst < 0) or   // если расход отрицательный, то вешаем его весь на текущую карточку, или
         ((curKolOst > 0) and (dm.IBQuery1.FieldByName('kot_s').AsFloat >= curKolOst)) then   // если расход >0 и на карточке хватает количества
      begin
        curKolRash := curKolOst;
        curKolOst := 0;
        ostCexKartId := dm.IBQuery1.FieldByName('kart_id').AsInteger;
      end
      else
      begin
        if (curKolOst > 0) and (dm.IBQuery1.FieldByName('kot_s').AsFloat > 0) then
        begin
          curKolRash := dm.IBQuery1.FieldByName('kot_s').AsFloat;
          curKolOst := curKolOst - curKolRash;
          ostCexKartId := dm.IBQuery1.FieldByName('kart_id').AsInteger;
          dm.IBQuery1.Next;
        end;
        if (curKolOst > 0) and (dm.IBQuery1.Eof) then
        begin
          dm.IBQuery1.Prior;
          curKolRash := curKolOst;
          curKolOst := 0;
          ostCexKartId := dm.IBQuery1.FieldByName('kart_id').AsInteger;
        end;
        if (curKolOst > 0) and (dm.IBQuery1.FieldByName('kot_s').AsFloat <= 0) then
          dm.IBQuery1.Next;
      end;
      if (ostCexKartId <> 0) then
      begin
        dm.Kart.Insert;
        dm.setValues2Kart(ksmId, ksmIdPrep, razdelId, keiId, prihDocId,
                          ostCexKartId, 30, 37, curKolRash, 0, 0, 0);
        dm.Kart.Post;
      end;
    end;
  end
  else
  begin
    if (serOst.openOstatki(ksmId, -1, strukId, 0)) then
      ostCexKartId := serOst.kartId
    else
    begin
      ostCexKartId := serOst.insertOstatki(ksmId, 0, 0, 0, keiId, strukId, month, year);
      serOst.saveOstatki;
    end;
    if (ostCexKartId <> 0) then
    begin
      dm.Kart.Insert;
      dm.setValues2Kart(ksmId, ksmIdPrep, razdelId, keiId, prihDocId, ostCexKartId,
                     30, 37, kolRashNorm, 0, 0, 0);
      dm.Kart.Post
    end;
  end;
  dm.Kart.BeforePost := dm.KartBeforePost;
  dm.kart.ApplyUpdates;
//  db.commitWriteTrans(true);
//  db.trans_read.CommitRetaining;
//  db.trans_write.Active := false;
end;

end.
