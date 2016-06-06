object dmUnd: TdmUnd
  OldCreateOrder = False
  Height = 456
  Width = 708
  object db: TIBDatabase
    Connected = True
    DatabaseName = '192.168.13.13:D:\IBDATA\BELMED.GDB'
    Params.Strings = (
      'user_name=IGOR'
      'password=igor'
      'sql_role_name=SKLAD_CEH'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = trans_read
    Left = 32
    Top = 24
  end
  object trans_read: TIBTransaction
    Active = True
    DefaultDatabase = db
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 80
  end
  object q_underSign: TRxIBQuery
    Database = db
    Transaction = trans_read
    CachedUpdates = True
    SQL.Strings = (
      'select doc_param.*'
      'from doc_param'
      'where %usl'
      'order by %sort')
    UpdateObject = upd_unserSign
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'sort'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 144
    Top = 24
    object q_underSignPARAM_ID: TIntegerField
      FieldName = 'PARAM_ID'
      Origin = '"DOC_PARAM"."PARAM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object q_underSignTIP_PARAM_ID: TSmallintField
      FieldName = 'TIP_PARAM_ID'
      Origin = '"DOC_PARAM"."TIP_PARAM_ID"'
      Required = True
    end
    object q_underSignDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOC_PARAM"."DOC_ID"'
      Required = True
    end
    object q_underSignPARAM_VALUE: TIBStringField
      FieldName = 'PARAM_VALUE'
      Origin = '"DOC_PARAM"."PARAM_VALUE"'
      Size = 500
    end
    object q_underSignKOD: TIntegerField
      FieldName = 'KOD'
      Origin = '"DOC_PARAM"."KOD"'
    end
    object q_underSignKOL_PARAM: TFloatField
      FieldName = 'KOL_PARAM'
      Origin = '"DOC_PARAM"."KOL_PARAM"'
    end
    object q_underSignCENA_PARAM: TIBBCDField
      FieldName = 'CENA_PARAM'
      Origin = '"DOC_PARAM"."CENA_PARAM"'
      Precision = 18
      Size = 2
    end
    object q_underSignSTAVKA_NDS: TFloatField
      FieldName = 'STAVKA_NDS'
      Origin = '"DOC_PARAM"."STAVKA_NDS"'
    end
    object q_underSignTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOC_PARAM"."TIP_OP_ID"'
    end
    object q_underSignTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOC_PARAM"."TIP_DOK_ID"'
    end
    object q_underSignKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"DOC_PARAM"."KEI_ID"'
    end
  end
  object upd_unserSign: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  PARAM_ID,'
      '  TIP_PARAM_ID,'
      '  DOC_ID,'
      '  PARAM_VALUE,'
      '  KOD,'
      '  KOL_PARAM,'
      '  CENA_PARAM,'
      '  STAVKA_NDS,'
      '  TIP_OP_ID,'
      '  TIP_DOK_ID,'
      '  KEI_ID'
      'from doc_param '
      'where'
      '  PARAM_ID = :PARAM_ID')
    ModifySQL.Strings = (
      'update doc_param'
      'set'
      '  DOC_ID = :DOC_ID,'
      '  PARAM_VALUE = :PARAM_VALUE,'
      '  TIP_PARAM_ID = :TIP_PARAM_ID'
      'where'
      '  PARAM_ID = :OLD_PARAM_ID')
    InsertSQL.Strings = (
      'insert into doc_param'
      '  (DOC_ID, PARAM_VALUE, TIP_PARAM_ID)'
      'values'
      '  (:DOC_ID, :PARAM_VALUE, :TIP_PARAM_ID)')
    DeleteSQL.Strings = (
      'delete from doc_param'
      'where'
      '  PARAM_ID = :OLD_PARAM_ID')
    AutoCommit = False
    UpdateTransaction = trans_read
    Left = 144
    Top = 80
  end
  object DSDocTipParam: TDataSource
    DataSet = DocTipParam
    Left = 472
    Top = 112
  end
  object DocTipParam: TRxIBQuery
    Database = db
    Transaction = trans_read
    CachedUpdates = True
    SQL.Strings = (
      'select *'
      'from doc_tip_param'
      'where doc_tip_param.struk_id = :struk_id '
      'and doc_tip_param.tip_dok_id = :tip_dok_id'
      'order by doc_tip_param.order_param, doc_tip_param.tip_param_id')
    Macros = <>
    Left = 472
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'struk_id'
        ParamType = ptInputOutput
      end
      item
        DataType = ftInteger
        Name = 'tip_dok_id'
        ParamType = ptInputOutput
      end>
    object DocTipParamTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOC_TIP_PARAM"."TIP_DOK_ID"'
      Required = True
    end
    object DocTipParamPARAM_NAME: TIBStringField
      FieldName = 'PARAM_NAME'
      Origin = '"DOC_TIP_PARAM"."PARAM_NAME"'
      Size = 50
    end
    object DocTipParamPARAM_TYPE: TIBStringField
      FieldName = 'PARAM_TYPE'
      Origin = '"DOC_TIP_PARAM"."PARAM_TYPE"'
      FixedChar = True
      Size = 1
    end
    object DocTipParamDEFAULT_VALUE: TIBStringField
      FieldName = 'DEFAULT_VALUE'
      Origin = '"DOC_TIP_PARAM"."DEFAULT_VALUE"'
      Size = 100
    end
    object DocTipParamLOOKUP: TIBStringField
      FieldName = 'LOOKUP'
      Origin = '"DOC_TIP_PARAM"."LOOKUP"'
      FixedChar = True
      Size = 10
    end
    object DocTipParamKEY_FIELD: TIBStringField
      FieldName = 'KEY_FIELD'
      Origin = '"DOC_TIP_PARAM"."KEY_FIELD"'
      FixedChar = True
      Size = 10
    end
    object DocTipParamRESULT_FIELD: TIBStringField
      FieldName = 'RESULT_FIELD'
      Origin = '"DOC_TIP_PARAM"."RESULT_FIELD"'
      FixedChar = True
      Size = 10
    end
    object DocTipParamKOL_PARAM: TFloatField
      FieldName = 'KOL_PARAM'
      Origin = '"DOC_TIP_PARAM"."KOL_PARAM"'
    end
    object DocTipParamCENA_PARAM: TIBBCDField
      FieldName = 'CENA_PARAM'
      Origin = '"DOC_TIP_PARAM"."CENA_PARAM"'
      Precision = 18
      Size = 2
    end
    object DocTipParamSTAVKA_NDS: TFloatField
      FieldName = 'STAVKA_NDS'
      Origin = '"DOC_TIP_PARAM"."STAVKA_NDS"'
    end
    object DocTipParamSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOC_TIP_PARAM"."STRUK_ID"'
    end
    object DocTipParamTIP_PARAM_ID: TSmallintField
      FieldName = 'TIP_PARAM_ID'
      Origin = '"DOC_TIP_PARAM"."TIP_PARAM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DocTipParamORDER_PARAM: TSmallintField
      FieldName = 'ORDER_PARAM'
      Origin = '"DOC_TIP_PARAM"."ORDER_PARAM"'
    end
  end
  object DocTipParamUpdate: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  TIP_PARAM_ID,'
      '  TIP_DOK_ID,'
      '  PARAM_NAME,'
      '  PARAM_TYPE,'
      '  DEFAULT_VALUE,'
      '  LOOKUP,'
      '  KEY_FIELD,'
      '  RESULT_FIELD,'
      '  KOL_PARAM,'
      '  CENA_PARAM,'
      '  STAVKA_NDS,'
      '  STRUK_ID,'
      '  ORDER_PARAM'
      'from doc_tip_param '
      'where'
      '  TIP_PARAM_ID = :TIP_PARAM_ID'
      'order by '
      '  TIP_PARAM_ID')
    ModifySQL.Strings = (
      'update doc_tip_param'
      'set'
      '  DEFAULT_VALUE = :DEFAULT_VALUE,'
      '  PARAM_NAME = :PARAM_NAME,'
      '  PARAM_TYPE = :PARAM_TYPE,'
      '  STRUK_ID = :STRUK_ID,'
      '  TIP_DOK_ID = :TIP_DOK_ID,'
      '  ORDER_PARAM = :ORDER_PARAM'
      'where'
      '  TIP_PARAM_ID = :OLD_TIP_PARAM_ID')
    InsertSQL.Strings = (
      'insert into doc_tip_param'
      
        '  (DEFAULT_VALUE, PARAM_NAME, PARAM_TYPE, STRUK_ID, TIP_DOK_ID, ' +
        'ORDER_PARAM)'
      'values'
      
        '  (:DEFAULT_VALUE, :PARAM_NAME, :PARAM_TYPE, :STRUK_ID, :TIP_DOK' +
        '_ID, :ORDER_PARAM)')
    DeleteSQL.Strings = (
      'delete from doc_tip_param'
      'where'
      '  TIP_PARAM_ID = :OLD_TIP_PARAM_ID')
    AutoCommit = False
    UpdateTransaction = trans_read
    Left = 472
    Top = 16
  end
  object mem_underSign: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    AllDataOptions = [mtfSaveData, mtfSaveNonVisible, mtfSaveBlobs, mtfSaveFiltered, mtfSaveIgnoreRange, mtfSaveIgnoreMasterDetail, mtfSaveDeltas]
    CommaTextOptions = [mtfSaveData]
    CSVQuote = '"'
    CSVFieldDelimiter = ','
    CSVRecordDelimiter = ','
    CSVTrueString = 'True'
    CSVFalseString = 'False'
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible, mtfSaveIgnoreRange, mtfSaveIgnoreMasterDetail]
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '2.53g'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 592
    Top = 64
    object mem_underSignTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOC_TIP_PARAM"."TIP_DOK_ID"'
      Required = True
    end
    object mem_underSignSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOC_TIP_PARAM"."STRUK_ID"'
    end
    object mem_underSignTIP_PARAM_ID: TSmallintField
      FieldName = 'TIP_PARAM_ID'
      Origin = '"DOC_TIP_PARAM"."TIP_PARAM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object mem_underSignORDER_PARAM: TSmallintField
      FieldName = 'ORDER_PARAM'
      Origin = '"DOC_TIP_PARAM"."ORDER_PARAM"'
    end
    object mem_underSignPARAM_NAME: TStringField
      FieldName = 'PARAM_NAME'
      Size = 50
    end
    object mem_underSignDEFAULT_VALUE: TStringField
      FieldName = 'DEFAULT_VALUE'
      Size = 100
    end
    object mem_underSignPARAM_ID: TIntegerField
      FieldName = 'PARAM_ID'
    end
    object mem_underSignDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
  end
  object q_doc: TRxIBQuery
    Database = db
    Transaction = trans_read
    SQL.Strings = (
      'select document.date_dok, document.date_op, document.doc_id,'
      'document.struk_id, document.klient_id, document.tip_op_id,'
      'document.tip_dok_id'
      'from document'
      'where document.struk_id = :struk_id'
      'and document.klient_id = :klient_id'
      'and document.tip_op_id = :tip_op_id'
      'and document.tip_dok_id = :tip_dok_id'
      'order by document.date_dok desc')
    Macros = <>
    Left = 144
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'klient_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tip_op_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tip_dok_id'
        ParamType = ptUnknown
      end>
    object q_docDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object q_docDATE_OP: TDateField
      FieldName = 'DATE_OP'
      Origin = '"DOCUMENT"."DATE_OP"'
    end
    object q_docDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_docSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object q_docKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object q_docTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object q_docTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
      Required = True
    end
  end
  object q_docTipParam: TRxIBQuery
    Database = db
    Transaction = trans_read
    CachedUpdates = True
    SQL.Strings = (
      'select *'
      'from doc_tip_param'
      'where coalesce(doc_tip_param.struk_id, 0) = 0'
      'and doc_tip_param.tip_dok_id = :tip_dok_id'
      'and doc_tip_param.order_param = 1'
      'order by doc_tip_param.order_param, doc_tip_param.tip_param_id')
    Macros = <>
    Left = 368
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tip_dok_id'
        ParamType = ptInputOutput
      end>
    object q_docTipParamTIP_PARAM_ID: TSmallintField
      FieldName = 'TIP_PARAM_ID'
      Origin = '"DOC_TIP_PARAM"."TIP_PARAM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_docTipParamTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOC_TIP_PARAM"."TIP_DOK_ID"'
      Required = True
    end
    object q_docTipParamPARAM_NAME: TIBStringField
      FieldName = 'PARAM_NAME'
      Origin = '"DOC_TIP_PARAM"."PARAM_NAME"'
      Size = 50
    end
    object q_docTipParamPARAM_TYPE: TIBStringField
      FieldName = 'PARAM_TYPE'
      Origin = '"DOC_TIP_PARAM"."PARAM_TYPE"'
      FixedChar = True
      Size = 1
    end
    object q_docTipParamDEFAULT_VALUE: TIBStringField
      FieldName = 'DEFAULT_VALUE'
      Origin = '"DOC_TIP_PARAM"."DEFAULT_VALUE"'
      Size = 100
    end
    object q_docTipParamLOOKUP: TIBStringField
      FieldName = 'LOOKUP'
      Origin = '"DOC_TIP_PARAM"."LOOKUP"'
      FixedChar = True
      Size = 10
    end
    object q_docTipParamKEY_FIELD: TIBStringField
      FieldName = 'KEY_FIELD'
      Origin = '"DOC_TIP_PARAM"."KEY_FIELD"'
      FixedChar = True
      Size = 10
    end
    object q_docTipParamRESULT_FIELD: TIBStringField
      FieldName = 'RESULT_FIELD'
      Origin = '"DOC_TIP_PARAM"."RESULT_FIELD"'
      FixedChar = True
      Size = 10
    end
    object q_docTipParamKOL_PARAM: TFloatField
      FieldName = 'KOL_PARAM'
      Origin = '"DOC_TIP_PARAM"."KOL_PARAM"'
    end
    object q_docTipParamCENA_PARAM: TIBBCDField
      FieldName = 'CENA_PARAM'
      Origin = '"DOC_TIP_PARAM"."CENA_PARAM"'
      Precision = 18
      Size = 2
    end
    object q_docTipParamSTAVKA_NDS: TFloatField
      FieldName = 'STAVKA_NDS'
      Origin = '"DOC_TIP_PARAM"."STAVKA_NDS"'
    end
    object q_docTipParamSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
      Origin = '"DOC_TIP_PARAM"."STRUK_ID"'
    end
    object q_docTipParamORDER_PARAM: TSmallintField
      FieldName = 'ORDER_PARAM'
      Origin = '"DOC_TIP_PARAM"."ORDER_PARAM"'
    end
    object q_docTipParamUNIQ_PARAM: TSmallintField
      FieldName = 'UNIQ_PARAM'
      Origin = '"DOC_TIP_PARAM"."UNIQ_PARAM"'
    end
  end
end
