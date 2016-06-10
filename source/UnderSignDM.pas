unit UnderSignDM;

interface

uses
  SysUtils, Classes, IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, DB, IBQuery,
  RxIBQuery, IBDatabase, kbmMemTable;

type
  TdmUnd = class(TDataModule)
    db: TIBDatabase;
    trans_read: TIBTransaction;
    q_underSign: TRxIBQuery;
    upd_unserSign: TIBUpdateSQLW;
    DSDocTipParam: TDataSource;
    DocTipParam: TRxIBQuery;
    DocTipParamTIP_DOK_ID: TSmallintField;
    DocTipParamPARAM_NAME: TIBStringField;
    DocTipParamPARAM_TYPE: TIBStringField;
    DocTipParamDEFAULT_VALUE: TIBStringField;
    DocTipParamLOOKUP: TIBStringField;
    DocTipParamKEY_FIELD: TIBStringField;
    DocTipParamRESULT_FIELD: TIBStringField;
    DocTipParamKOL_PARAM: TFloatField;
    DocTipParamCENA_PARAM: TIBBCDField;
    DocTipParamSTAVKA_NDS: TFloatField;
    DocTipParamSTRUK_ID: TSmallintField;
    DocTipParamTIP_PARAM_ID: TSmallintField;
    DocTipParamORDER_PARAM: TSmallintField;
    DocTipParamUpdate: TIBUpdateSQLW;
    mem_underSign: TkbmMemTable;
    mem_underSignTIP_DOK_ID: TSmallintField;
    mem_underSignSTRUK_ID: TSmallintField;
    mem_underSignTIP_PARAM_ID: TSmallintField;
    mem_underSignORDER_PARAM: TSmallintField;
    mem_underSignPARAM_NAME: TStringField;
    mem_underSignDEFAULT_VALUE: TStringField;
    q_underSignPARAM_ID: TIntegerField;
    q_underSignTIP_PARAM_ID: TSmallintField;
    q_underSignDOC_ID: TIntegerField;
    q_underSignPARAM_VALUE: TIBStringField;
    q_underSignKOD: TIntegerField;
    q_underSignKOL_PARAM: TFloatField;
    q_underSignCENA_PARAM: TIBBCDField;
    q_underSignSTAVKA_NDS: TFloatField;
    q_underSignTIP_OP_ID: TSmallintField;
    q_underSignTIP_DOK_ID: TSmallintField;
    q_underSignKEI_ID: TSmallintField;
    q_doc: TRxIBQuery;
    q_docDATE_DOK: TDateField;
    q_docDATE_OP: TDateField;
    q_docDOC_ID: TIntegerField;
    q_docSTRUK_ID: TSmallintField;
    q_docKLIENT_ID: TIntegerField;
    q_docTIP_OP_ID: TSmallintField;
    q_docTIP_DOK_ID: TSmallintField;
    mem_underSignPARAM_ID: TIntegerField;
    mem_underSignDOC_ID: TIntegerField;
    q_docTipParam: TRxIBQuery;
    q_docTipParamTIP_PARAM_ID: TSmallintField;
    q_docTipParamTIP_DOK_ID: TSmallintField;
    q_docTipParamPARAM_NAME: TIBStringField;
    q_docTipParamPARAM_TYPE: TIBStringField;
    q_docTipParamDEFAULT_VALUE: TIBStringField;
    q_docTipParamLOOKUP: TIBStringField;
    q_docTipParamKEY_FIELD: TIBStringField;
    q_docTipParamRESULT_FIELD: TIBStringField;
    q_docTipParamKOL_PARAM: TFloatField;
    q_docTipParamCENA_PARAM: TIBBCDField;
    q_docTipParamSTAVKA_NDS: TFloatField;
    q_docTipParamSTRUK_ID: TIntegerField;
    q_docTipParamORDER_PARAM: TSmallintField;
    q_docTipParamUNIQ_PARAM: TSmallintField;

  private
    function getAllDocId(strukId, klientId, tipOpId, tipDokId : integer) : boolean;
    procedure unparseQueryAndAddToMem(query : TRxIBQuery);
    function getParamName(value : string) : string;
    function getParamValue(value : string) : string;

  public
    procedure setDB(var db : TIBDatabase);
    procedure loadDefaultUnderSign(strukId, tipDokId, docId : integer);
    function loadUnderSign(docId : integer) : boolean;
    procedure appendQueryToMem({query : TRxIBQuery});

    function getLastUnderSign(strukId, klientId, tipOpId, tipDokId : integer) : boolean;
    procedure deleteUnderSign;
    procedure appendUnderSignToQuery(docId, tipDokId : integer);
    procedure saveUnderSign;
    procedure insertUnderSign(toTheEnd : boolean);
    procedure deleteUnderSignRecord;
    procedure deleteAllUnderSign;
    procedure swapRecord(withUpperRec : boolean);

  end;

implementation

{$R *.dfm}

procedure TdmUnd.setDB(var db: TIBDatabase);
begin
  self.db := db;
end;

procedure TdmUnd.swapRecord(withUpperRec : boolean);
var
  tipDokId, strukId, tipParamId, paramId, docId, curRecNo, recCount : integer;
  paramName, defaultValue : string;
begin
  curRecNo := mem_underSign.RecNo;
  recCount := mem_underSign.RecordCount;
  if (withUpperRec) then
  begin
    if (curRecNo > 1) then
    begin
      tipDokId := mem_underSignTIP_DOK_ID.AsInteger;
      strukId := mem_underSignSTRUK_ID.AsInteger;
      tipParamId := mem_underSignTIP_PARAM_ID.AsInteger;
      paramId := mem_underSignPARAM_ID.AsInteger;
      docId := mem_underSignDOC_ID.AsInteger;
      paramName := mem_underSignPARAM_NAME.AsString;
      defaultValue := mem_underSignDEFAULT_VALUE.AsString;
      mem_underSign.Delete;
      if (curRecNo < recCount) then
        mem_underSign.Prior;
      mem_underSign.Insert;
      mem_underSignTIP_DOK_ID.AsInteger := tipDokId;
      mem_underSignSTRUK_ID.AsInteger := strukId;
      mem_underSignTIP_PARAM_ID.AsInteger := tipParamId;
      mem_underSignPARAM_NAME.AsString := paramName;
      mem_underSignDEFAULT_VALUE.AsString := defaultValue;
      mem_underSignPARAM_ID.AsInteger := paramId;
      mem_underSignDOC_ID.AsInteger := docId;
      mem_underSign.Post;
      mem_underSign.MoveBy(curRecNo - 2);
    end;
  end
  else
  begin
    if (curRecNo < recCount) then
    begin
      tipDokId := mem_underSignTIP_DOK_ID.AsInteger;
      strukId := mem_underSignSTRUK_ID.AsInteger;
      tipParamId := mem_underSignTIP_PARAM_ID.AsInteger;
      paramId := mem_underSignPARAM_ID.AsInteger;
      docId := mem_underSignDOC_ID.AsInteger;
      paramName := mem_underSignPARAM_NAME.AsString;
      defaultValue := mem_underSignDEFAULT_VALUE.AsString;
      mem_underSign.Delete;
      if (mem_underSign.RecNo = mem_underSign.RecordCount) then
      begin
        mem_underSign.Append;
      end
      else
      begin
        mem_underSign.Next;
        mem_underSign.Insert;
      end;
      mem_underSignTIP_DOK_ID.AsInteger := tipDokId;
      mem_underSignSTRUK_ID.AsInteger := strukId;
      mem_underSignTIP_PARAM_ID.AsInteger := tipParamId;
      mem_underSignPARAM_NAME.AsString := paramName;
      mem_underSignDEFAULT_VALUE.AsString := defaultValue;
      mem_underSignPARAM_ID.AsInteger := paramId;
      mem_underSignDOC_ID.AsInteger := docId;
      mem_underSign.Post;
      mem_underSign.MoveBy(curRecNo);
    end;
  end;
end;

procedure TdmUnd.deleteUnderSignRecord;
begin
  mem_underSign.Delete;
end;

procedure TdmUnd.deleteAllUnderSign;
begin
  mem_underSign.First;
  while (not mem_underSign.Eof) do
    mem_underSign.Delete;
end;

procedure TdmUnd.deleteUnderSign;
begin
  q_underSign.First;
  while (not q_underSign.Eof) do
    q_underSign.Delete;
end;

procedure TdmUnd.appendUnderSignToQuery(docId, tipDokId : integer);
begin
  if (mem_underSign.RecordCount = 0) then
  begin
    insertUnderSign(true);
  end;
  mem_underSign.First;
  while (not mem_underSign.Eof) do
  begin
    q_underSign.Append;
    if (mem_underSignTIP_PARAM_ID.AsInteger = 0) then
    begin
      q_docTipParam.Close;
      q_docTipParam.ParamByName('tip_dok_id').AsInteger := tipDokId;
      q_docTipParam.Open;
      q_docTipParam.FetchAll;
      q_docTipParam.First;
      if (q_docTipParam.RecordCount > 0) then
        q_underSignTIP_PARAM_ID.AsInteger := q_docTipParamTIP_PARAM_ID.AsInteger;
    end
    else
      q_underSignTIP_PARAM_ID.AsInteger := mem_underSignTIP_PARAM_ID.AsInteger;
    q_underSignDOC_ID.AsInteger := docId;
    q_underSignPARAM_VALUE.AsString := mem_underSignPARAM_NAME.AsString + '     '
                                       + mem_underSignDEFAULT_VALUE.AsString;
    q_underSign.Post;
    mem_underSign.Next;
  end;
end;

procedure TdmUnd.saveUnderSign;
begin
  if (q_underSign.UpdatesPending) then
  begin
    q_underSign.ApplyUpdates;
    trans_read.CommitRetaining;
  end;
end;

procedure TdmUnd.loadDefaultUnderSign(strukId, tipDokId, docId : integer);
begin
  DocTipParam.Close;
  DocTipParam.ParamByName('struk_id').AsInteger := strukId;
  DocTipParam.ParamByName('tip_dok_id').AsInteger := tipDokId;
  DocTipParam.Open;
//  DocTipParam.FetchAll;
//  appendQueryToMem(DocTipParam);
  mem_underSign.EmptyTable;
  mem_underSign.Open;
  DocTipParam.First;
  mem_underSign.Append;
  mem_underSignTIP_DOK_ID.AsInteger := tipDokId;
  mem_underSignTIP_PARAM_ID.AsInteger := DocTipParam.FieldByName('tip_param_id').AsInteger;
  mem_underSignPARAM_NAME.AsString := 'Зам. главного технолога';
  mem_underSignDEFAULT_VALUE.AsString := '';
  mem_underSignDOC_ID.AsInteger := docId;
  mem_underSignPARAM_ID.AsInteger := 0;
  mem_underSign.Post;
  mem_underSign.Append;
  mem_underSignTIP_DOK_ID.AsInteger := tipDokId;
  mem_underSignTIP_PARAM_ID.AsInteger := DocTipParam.FieldByName('tip_param_id').AsInteger;
  mem_underSignPARAM_NAME.AsString := 'Инженер-технолог ОГТ (по нормированию)';
  mem_underSignDEFAULT_VALUE.AsString := '';
  mem_underSignDOC_ID.AsInteger := docId;
  mem_underSignPARAM_ID.AsInteger := 0;
  mem_underSign.Post;
  mem_underSign.Append;
  mem_underSignTIP_DOK_ID.AsInteger := tipDokId;
  mem_underSignTIP_PARAM_ID.AsInteger := DocTipParam.FieldByName('tip_param_id').AsInteger;
  mem_underSignPARAM_NAME.AsString := 'Инженер-технолог ОГТ';
  mem_underSignDEFAULT_VALUE.AsString := '';
  mem_underSignDOC_ID.AsInteger := docId;
  mem_underSignPARAM_ID.AsInteger := 0;
  mem_underSign.Post;
  mem_underSign.Append;
  mem_underSignTIP_DOK_ID.AsInteger := tipDokId;
  mem_underSignTIP_PARAM_ID.AsInteger := DocTipParam.FieldByName('tip_param_id').AsInteger;
  mem_underSignPARAM_NAME.AsString := 'Зам. главного технолога';
  mem_underSignDEFAULT_VALUE.AsString := '';
  mem_underSignDOC_ID.AsInteger := docId;
  mem_underSignPARAM_ID.AsInteger := 0;
  mem_underSign.Post;
  mem_underSign.Append;
  mem_underSignTIP_DOK_ID.AsInteger := tipDokId;
  mem_underSignTIP_PARAM_ID.AsInteger := DocTipParam.FieldByName('tip_param_id').AsInteger;
  mem_underSignPARAM_NAME.AsString := 'Зам. главного технолога';
  mem_underSignDEFAULT_VALUE.AsString := '';
  mem_underSignDOC_ID.AsInteger := docId;
  mem_underSignPARAM_ID.AsInteger := 0;
  mem_underSign.Post;
end;

procedure TdmUnd.insertUnderSign(toTheEnd : boolean);
var
  curTipParamId : integer;
begin
  curTipParamId := mem_underSignTIP_PARAM_ID.AsInteger;
  if (toTheEnd) then
    mem_underSign.Append
  else
    mem_underSign.Insert;
  mem_underSignDOC_ID.AsInteger := 0;
  mem_underSignPARAM_ID.AsInteger := 0;
  mem_underSignTIP_PARAM_ID.AsInteger := curTipParamId;
end;

function TdmUnd.loadUnderSign(docId : integer) : boolean;
begin
  result := false;
  q_underSign.Close;
  if (docId <> 0) then
  begin
    q_underSign.MacroByName('usl').AsString := ' doc_param.doc_id = ' + IntToStr(docId);
    q_underSign.MacroByName('sort').AsString := ' doc_param.param_id ';

    q_underSign.Open;
    q_underSign.FetchAll;
    if (q_underSign.RecordCount > 0) then
    begin
  //    appendQueryToMem(q_underSign);
      result := true;
    end;
  end;
end;

function TdmUnd.getAllDocId(strukId, klientId, tipOpId, tipDokId : integer) : boolean;
begin
  result := false;
  q_doc.Close;
  q_doc.ParamByName('struk_id').AsInteger := strukId;
  q_doc.ParamByName('klient_id').AsInteger := klientId;
  q_doc.ParamByName('tip_op_id').AsInteger := tipOpId;
  q_doc.ParamByName('tip_dok_id').AsInteger := tipDokId;
  q_doc.Open;
  if (q_doc.RecordCount > 0) then
    result := true;
end;

function TdmUnd.getLastUnderSign(strukId, klientId, tipOpId, tipDokId : integer) : boolean;
begin
  result := false;
  if (getAllDocId(strukId, klientId, tipOpId, tipDokId)) then
  begin
    q_doc.First;
    while (not q_doc.eof) do
    begin
      if (loadUnderSign(q_docDOC_ID.AsInteger)) then
      begin
//        appendQueryToMem(q_underSign);
        result := true;
        break;
      end;
      q_doc.Next;
    end;
  end;
end;

procedure TdmUnd.appendQueryToMem({query : TRxIBQuery});
begin
  mem_underSign.EmptyTable;
  mem_underSign.Open;
//  if (query = DocTipParam) then
//    mem_underSign.LoadFromDataSet(query, [mtcpoAppend])
//  else
//    unparseQueryAndAddToMem(query);
  unparseQueryAndAddToMem(q_underSign);
end;

procedure TdmUnd.unparseQueryAndAddToMem(query : TRxIBQuery);
begin
  query.First;
  while (not query.eof) do
  begin
    mem_underSign.Append;
    mem_underSignTIP_DOK_ID.AsInteger := query.FieldByName('tip_dok_id').AsInteger;
    mem_underSignTIP_PARAM_ID.AsInteger := query.FieldByName('tip_param_id').AsInteger;
    mem_underSignPARAM_NAME.AsString := getParamName(query.FieldByName('param_value').AsString);
    mem_underSignDEFAULT_VALUE.AsString := getParamValue(query.FieldByName('param_value').AsString);
    mem_underSignDOC_ID.AsInteger := query.FieldByName('doc_id').AsInteger;
    mem_underSignPARAM_ID.AsInteger := query.FieldByName('param_id').AsInteger;
    mem_underSign.Post;
    query.Next;
  end;
end;

function TdmUnd.getParamName(value : string) : string;
var
  i, len : integer;
  tempStr : string;
begin
  result := '';
  len := length(value);
  for i := 1 to len do
  begin
    tempStr := copy(value, i, 2);
    if (tempStr = '  ') then
    begin
      result := copy(value, 0, i - 1);
      break;
    end;
  end;
  if (i = len + 1) then
    result := value;  
end;

function TdmUnd.getParamValue(value : string) : string;
var
  i, num : integer;
  tempStr, devideStr : string;
begin
  result := '';
  devideStr := '';
  num := 0;
  for i := 1 to length(value) do
  begin
    if (devideStr = '') then
      tempStr := copy(value, i, 2)
    else
      tempStr := copy(value, i, 1);
    if (tempStr = '  ') and (devideStr = '') then
      devideStr := tempStr
    else
      if (devideStr = '  ') and (tempStr <> ' ') then
      begin
        num := i;
        break;
      end;
  end;
  if (num <> 0) then
    result := copy(value, num, length(value));

end;

end.
