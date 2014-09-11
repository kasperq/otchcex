object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 623
  Width = 645
  object BELMED: TIBDatabase
    Connected = True
    DatabaseName = 'DBMEDIC:D:\IBDATA\BELMED.GDB'
    Params.Strings = (
      'lc_ctype=WIN1251'
      ''
      'user_name=SVEG'
      'password=sveg'
      'sql_role_name=SKLAD_CEH')
    LoginPrompt = False
    DefaultTransaction = IBT_Read
    Left = 24
    Top = 17
  end
  object IBT_Read: TIBTransaction
    Active = True
    DefaultDatabase = BELMED
    Params.Strings = (
      '')
    Left = 21
    Top = 72
  end
  object AddSeria: TIBStoredProc
    Database = BELMED
    Transaction = IBT_Read
    StoredProcName = 'ADD_SERIA'
    Left = 24
    Top = 224
  end
  object Prod_Rab: TIBQuery
    Database = BELMED
    Transaction = IBT_Read
    SQL.Strings = (
      
        'SELECT DISTINCT SPPROD.NMAT, SPPROD.LEK_ID, LEKGRUP.LEKNAMS, SPP' +
        'ROD.KEI_ID,SPPROD.KSM_ID,'
      
        'SPPROD.UMN, SPPROD.REG, STRUK.STNAME, SPPROD.GOST, EDIZ.NEIS, LE' +
        'KND.NDNAME REG_NAME,'
      'REGION.NAM,SPPROD.KOD_PROD'
      'FROM SPPROD'
      '   INNER JOIN LEKGRUP ON (SPPROD.LEK_ID = LEKGRUP.LEK_ID)'
      '   INNER JOIN STRUK ON (SPPROD.STRUK_ID = STRUK.STRUK_ID)'
      '   INNER JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)'
      '   LEFT  JOIN SERIA ON (SPPROD.KSM_ID = SERIA.KSM_ID)'
      '   LEFT JOIN REGION ON (SPPROD.REG = REGION.REG)'
      '   LEFT JOIN LEKND ON (SPPROD.REGISTR_ID = LEKND.REGISTR_ID)'
      'WHERE SPPROD.KSM_ID =:KSM_ID')
    Left = 152
    Top = 175
    ParamData = <
      item
        DataType = ftInteger
        Name = 'KSM_ID'
        ParamType = ptInput
      end>
  end
  object Ediz: TIBQuery
    Database = BELMED
    Transaction = IBT_Read
    SQL.Strings = (
      'SELECT EDIZ.KEI_ID, EDIZ.NEIS'
      'FROM EDIZ'
      '')
    Left = 96
    Top = 232
    object EdizKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"EDIZ"."KEI_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EdizNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = NormSyr
    Left = 216
    Top = 280
  end
  object IBQuery1: TIBQuery
    Database = BELMED
    Transaction = IBT_Write
    SQL.Strings = (
      'SELECT DOC_OPER.LOOKUP'
      'FROM DOC_OPER '
      'WHERE DOC_OPER.TIP_OP_ID=1 AND DOC_OPER.FIELD_DOK='#39'KLIENT_ID'#39
      ''
      ''
      '')
    Left = 96
    Top = 176
  end
  object PrixRasx: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Write
    AutoCalcFields = False
    AfterScroll = PrixRasxAfterScroll
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT DOCUMENT.NDOK, DOCUMENT.DATE_DOK, DOCUMENT. KLIENT_ID,DOC' +
        'UMENT.DOC_ID,'
      
        'DOCUMENT. TIP_DOK_ID, DOCUMENT. STRUK_ID, KART.KSM_ID, KART.KOL_' +
        'PRIH, MATROP.NMAT, MATROP.XARKT,SERIA.SERIA, EDIZ.NEIS, TIP_OPER' +
        '.NAM_OP, OSTATKI.ONM_S, OSTATKI.MES, OSTATKI.GOD, OSTATKI.ONM_NZ' +
        ', OSTATKI.OT_S, OSTATKI.OT_NZ, TIP_OPER. GR_OP_ID, DOCUMENT. TIP' +
        '_OP_ID, KART. KOL_RASH,KART.STROKA_ID,'
      'case doc_Oper.lookup'
      'when '#39'SPRORG'#39' then  sprorg.nam'
      'when '#39'SPPROD'#39' then spprod.nmat'
      'when '#39'STRUK'#39' then struk.stname'
      'end  as klient_name'
      'FROM KART'
      '   INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)'
      
        '   INNER JOIN TIP_OPER ON (DOCUMENT.TIP_OP_ID = TIP_OPER.TIP_OP_' +
        'ID)'
      '   INNER JOIN MATROP ON (KART.KSM_ID = MATROP.KSM_ID)'
      '   INNER JOIN EDIZ ON (MATROP.KEI_ID = EDIZ.KEI_ID)'
      '   INNER JOIN OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)'
      '   left JOIN SERIA ON (OSTATKI.SERIA_ID = SERIA.SERIA_ID)'
      '   left join doc_oper on document.tip_op_id = doc_oper.tip_op_id'
      '     and document.tip_dok_id = doc_oper.tip_dok_id'
      '     and doc_oper.field_dok = '#39'KLIENT_ID'#39
      '   left join sprorg on document.klient_id=sprorg.kod'
      '   left join spprod on document.klient_id=spprod.ksm_id'
      '   left join struk on document.klient_id = struk.struk_id'
      'WHERE %SDAT'
      '     AND   %STIP'
      '     AND   %CEX  '
      '     AND %GR_OP'
      'ORDER BY %SORT')
    UpdateObject = IBUpdateSQLPrixRasx
    Macros = <
      item
        DataType = ftString
        Name = 'SDAT'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'STIP'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CEX'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'GR_OP'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'SORT'
        ParamType = ptInput
        Value = 'MATROP.NMAT'
      end>
    Left = 96
    Top = 16
    object PrixRasxNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object PrixRasxDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object PrixRasxKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object PrixRasxTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
      Required = True
    end
    object PrixRasxSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object PrixRasxKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object PrixRasxKOL_PRIH: TFMTBCDField
      FieldName = 'KOL_PRIH'
      Origin = '"KART"."KOL_PRIH"'
      Precision = 18
      Size = 6
    end
    object PrixRasxNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
    object PrixRasxXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"MATROP"."XARKT"'
      Size = 30
    end
    object PrixRasxSERIA: TIBStringField
      FieldName = 'SERIA'
      Origin = '"SERIA"."SERIA"'
    end
    object PrixRasxNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object PrixRasxNAM_OP: TIBStringField
      FieldName = 'NAM_OP'
      Origin = '"TIP_OPER"."NAM_OP"'
      Size = 50
    end
    object PrixRasxONM_S: TFMTBCDField
      FieldName = 'ONM_S'
      Origin = '"OSTATKI"."ONM_S"'
      DisplayFormat = '########).0000000'
      Precision = 18
      Size = 6
    end
    object PrixRasxMES: TSmallintField
      FieldName = 'MES'
      Origin = '"OSTATKI"."MES"'
      Required = True
    end
    object PrixRasxGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"OSTATKI"."GOD"'
      Required = True
    end
    object PrixRasxONM_NZ: TFMTBCDField
      FieldName = 'ONM_NZ'
      Origin = '"OSTATKI"."ONM_NZ"'
      DisplayFormat = '########0.0000000'
      Precision = 18
      Size = 6
    end
    object PrixRasxOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      DisplayFormat = '########0.0000000'
      Precision = 18
      Size = 6
    end
    object PrixRasxOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      DisplayFormat = '########0.0000000'
      Precision = 18
      Size = 6
    end
    object PrixRasxGR_OP_ID: TSmallintField
      FieldName = 'GR_OP_ID'
      Origin = '"TIP_OPER"."GR_OP_ID"'
    end
    object PrixRasxTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object PrixRasxKOL_RASH: TFMTBCDField
      FieldName = 'KOL_RASH'
      Origin = '"KART"."KOL_RASH"'
      Precision = 18
      Size = 6
    end
    object PrixRasxDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PrixRasxSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PrixRasxKLIENT_NAME: TIBStringField
      FieldName = 'KLIENT_NAME'
      ProviderFlags = []
      Size = 60
    end
  end
  object DSPrixRasx: TDataSource
    DataSet = PrixRasx
    Left = 96
    Top = 120
  end
  object DSTipDok: TDataSource
    DataSet = TipDok
    Left = 253
    Top = 232
  end
  object PrixRasSyr: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Write
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT KART.KOL_PRIH,KART.KOL_RASH, DOCUMENT.KLIENT_ID, DOCUMENT' +
        '.DATE_DOK, DOCUMENT.NDOK, SERIA.SERIA, TIP_OPER.NAM_OP, DOCUMENT' +
        '. TIP_OP_ID, DOCUMENT. TIP_DOK_ID, KART. KSM_ID,DOCUMENT.DOC_ID,'
      'case doc_Oper.lookup'
      'when '#39'SPRORG'#39' then  sprorg.nam'
      'when '#39'SPPROD'#39' then spprod.nmat'
      'when '#39'STRUK'#39' then struk.stname'
      'end  as klient_name'
      'FROM DOCUMENT'
      '   INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
      '   INNER JOIN MATROP ON (KART.KSM_ID = MATROP.KSM_ID)'
      '   INNER JOIN OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)'
      '   left JOIN SERIA ON (OSTATKI.SERIA_ID = SERIA.SERIA_ID)'
      
        '   INNER JOIN TIP_OPER ON (DOCUMENT.TIP_OP_ID = TIP_OPER.TIP_OP_' +
        'ID)'
      '  inner join doc_oper on document.tip_op_id = doc_oper.tip_op_id'
      '     and document.tip_dok_id = doc_oper.tip_dok_id'
      '     and doc_oper.field_dok = '#39'KLIENT_ID'#39
      '   left join sprorg on document.klient_id=sprorg.kod'
      '   left join spprod on document.klient_id=spprod.ksm_id'
      '   left join struk on document.klient_id = struk.struk_id'
      'WHERE   %SKSM'
      '      AND %SDAT'
      '      AND %CEX'
      '     AND %GR_OP'
      'ORDER BY %SORT'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'SKSM'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'SDAT'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CEX'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'GR_OP'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'SORT'
        ParamType = ptInput
        Value = 'matrop.nmat'
      end>
    Left = 496
    Top = 176
    object PrixRasSyrKOL_PRIH: TFMTBCDField
      FieldName = 'KOL_PRIH'
      Origin = '"KART"."KOL_PRIH"'
      Precision = 18
      Size = 6
    end
    object PrixRasSyrKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object PrixRasSyrDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object PrixRasSyrNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object PrixRasSyrSERIA: TIBStringField
      FieldName = 'SERIA'
      Origin = '"SERIA"."SERIA"'
    end
    object PrixRasSyrNAM_OP: TIBStringField
      FieldName = 'NAM_OP'
      Origin = '"TIP_OPER"."NAM_OP"'
      Size = 50
    end
    object PrixRasSyrTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object PrixRasSyrTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
      Required = True
    end
    object PrixRasSyrKOL_RASH: TFMTBCDField
      FieldName = 'KOL_RASH'
      Origin = '"KART"."KOL_RASH"'
      Precision = 18
      Size = 6
    end
    object PrixRasSyrKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object PrixRasSyrDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PrixRasSyrKLIENT_NAME: TIBStringField
      FieldName = 'KLIENT_NAME'
      ProviderFlags = []
      Size = 60
    end
  end
  object DSPrixRasSyr: TDataSource
    DataSet = PrixRasSyr
    Left = 496
    Top = 232
  end
  object VIEW_DOCUMENT: TIBStoredProc
    Database = BELMED
    Transaction = IBT_Write
    StoredProcName = 'VIEW_DOCUMENT'
    Left = 24
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DOC_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'NDOK'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'DATE_DOK'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'DATE_OP'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'SUM_BRB'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'KLIENT_NAME'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'TIP_OP'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'TIP_DOK'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STRUK_ID'
        ParamType = ptInput
      end>
  end
  object IBUpdateSQLPrixRasx: TIBUpdateSQLW
    RefreshSQL.Strings = (
      
        'SELECT DOCUMENT.NDOK, DOCUMENT.DATE_DOK, DOCUMENT. KLIENT_ID,DOC' +
        'UMENT.DOC_ID,'
      
        'DOCUMENT. TIP_DOK_ID, DOCUMENT. STRUK_ID, KART.KSM_ID, KART.KOL_' +
        'PRIH, MATROP.NMAT, MATROP.XARKT,SERIA.SERIA, EDIZ.NEIS, TIP_OPER' +
        '.NAM_OP, OSTATKI.ONM_S, OSTATKI.MES, OSTATKI.GOD, OSTATKI.ONM_NZ' +
        ', OSTATKI.OT_S, OSTATKI.OT_NZ, TIP_OPER. GR_OP_ID, DOCUMENT. TIP' +
        '_OP_ID, KART. KOL_RASH,KART.STROKA_ID'
      'FROM KART'
      '   INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)'
      
        '   INNER JOIN TIP_OPER ON (DOCUMENT.TIP_OP_ID = TIP_OPER.TIP_OP_' +
        'ID)'
      '   INNER JOIN MATROP ON (KART.KSM_ID = MATROP.KSM_ID)'
      '   INNER JOIN EDIZ ON (MATROP.KEI_ID = EDIZ.KEI_ID)'
      '   INNER JOIN OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)'
      '   left JOIN SERIA ON (OSTATKI.SERIA_ID = SERIA.SERIA_ID)'
      'where'
      '  KART.STROKA_ID = :STROKA_ID')
    ModifySQL.Strings = (
      'update KART'
      'set'
      '  KOL_RASH = :KOL_RASH,'
      '  KSM_ID = :KSM_ID,'
      '  KOL_PRIH = :KOL_PRIH,'
      ' where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = IBT_Read
    Left = 96
    Top = 64
  end
  object IBT_Write: TIBTransaction
    DefaultDatabase = BELMED
    Left = 24
    Top = 120
  end
  object DSDocument: TDataSource
    DataSet = Document
    Left = 184
    Top = 120
  end
  object DSKart: TDataSource
    DataSet = Kart
    Left = 248
    Top = 120
  end
  object Document: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    BeforeClose = DocumentBeforeClose
    BeforeDelete = DocumentBeforeDelete
    BeforeInsert = DocumentBeforeInsert
    OnNewRecord = DocumentNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT DOCUMENT.TIP_DOK_ID, DOCUMENT.NDOK, DOCUMENT.DOC_ID, DOCU' +
        'MENT. DATE_OP,'
      'DOCUMENT.DATE_DOK, DOCUMENT.KLIENT_ID, SPRORG.NAM,'
      
        'DOCUMENT.TIP_OP_ID, SPRORG.ADRES, DOCUMENT. DATE_VVOD,  DOCUMENT' +
        '.STRUK_ID,DOCUMENT.ZADACHA_ID'
      'FROM DOCUMENT'
      
        '   INNER JOIN TIP_OPER ON (DOCUMENT.TIP_OP_ID = TIP_OPER.TIP_OP_' +
        'ID)'
      '  left JOIN SPRORG ON (DOCUMENT.KLIENT_ID = SPRORG.KOD)'
      '   %USL'
      ' ORDER BY DOCUMENT.DATE_DOK')
    UpdateObject = IBUpdateDoc
    Macros = <
      item
        DataType = ftString
        Name = 'USL'
        ParamType = ptInput
      end>
    Left = 192
    Top = 16
    object DocumentTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
      Required = True
    end
    object DocumentNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object DocumentDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DocumentDATE_OP: TDateField
      FieldName = 'DATE_OP'
      Origin = '"DOCUMENT"."DATE_OP"'
    end
    object DocumentDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object DocumentKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
    end
    object DocumentNAM: TIBStringField
      FieldName = 'NAM'
      Origin = '"SPRORG"."NAM"'
      Size = 50
    end
    object DocumentTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object DocumentADRES: TIBStringField
      FieldName = 'ADRES'
      Origin = '"SPRORG"."ADRES"'
      Size = 60
    end
    object DocumentDATE_VVOD: TDateTimeField
      FieldName = 'DATE_VVOD'
      Origin = '"DOCUMENT"."DATE_VVOD"'
    end
    object DocumentSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object DocumentZADACHA_ID: TIBStringField
      FieldName = 'ZADACHA_ID'
      Origin = '"DOCUMENT"."ZADACHA_ID"'
      FixedChar = True
      Size = 10
    end
  end
  object IBUpdateDoc: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  NDOK,'
      '  DOC_ID,'
      '  TIP_OP_ID,'
      '  TIP_DOK_ID,'
      '  DATE_DOK,'
      '  DOK_OSN_ID,'
      '  STRUK_ID,'
      '  VP_ID,'
      '  KPV,'
      '  KLIENT_ID,'
      '  SUM_BRB,'
      '  SUM_ISP1,'
      '  SUM_ISP2,'
      '  SUM_VP,'
      '  SUM_ISP1_VP,'
      '  SUM_ISP2_VP,'
      '  NDS,'
      '  SUM_NDS,'
      '  SUM_NDS_VP,'
      '  DATE_OP,'
      '  DATE_VVOD,'
      '  ZADACHA_ID,'
      '  USER_NAME,'
      '  DOV,'
      '  DATE_TIME_UPDATE,'
      '  JORN_ID'
      'from DOCUMENT '
      'where'
      '  DOC_ID = :DOC_ID')
    ModifySQL.Strings = (
      'update DOCUMENT'
      'set'
      '  DATE_DOK = :DATE_DOK,'
      '  DATE_OP = :DATE_OP,'
      '  DOC_ID = :DOC_ID,'
      '  KLIENT_ID = :KLIENT_ID,'
      '  NDOK = :NDOK,'
      '  STRUK_ID = :STRUK_ID,'
      '  TIP_DOK_ID = :TIP_DOK_ID,'
      '  TIP_OP_ID = :TIP_OP_ID,'
      '  ZADACHA_ID = :ZADACHA_ID'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    InsertSQL.Strings = (
      'insert into DOCUMENT'
      
        '  (DATE_DOK, DATE_OP, DOC_ID, KLIENT_ID, NDOK, STRUK_ID, TIP_DOK' +
        '_ID, TIP_OP_ID, '
      '   ZADACHA_ID)'
      'values'
      
        '  (:DATE_DOK, :DATE_OP, :DOC_ID, :KLIENT_ID, :NDOK, :STRUK_ID, :' +
        'TIP_DOK_ID, '
      '   :TIP_OP_ID, :ZADACHA_ID)')
    DeleteSQL.Strings = (
      'delete from DOCUMENT'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    AutoCommit = False
    UpdateTransaction = IBT_Write
    Left = 184
    Top = 64
  end
  object IBUpdateKart: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  DOC_ID,'
      '  STROKA_ID,'
      '  KSM_ID,'
      '  CENA,'
      '  KOL_PRIH,'
      '  CENA_VP,'
      '  NDS,'
      '  SUM_NDS,'
      '  SUM_NDS_VP,'
      '  KOL_RASH,'
      '  KART_ID,'
      '  ORG_ID_BRAK,'
      '  OSNOV_BRAK_ID,'
      '  USER_NAME,'
      '  DATE_TIME_UPDATE,'
      '  PARENT,'
      '  RAZDEL_ID,'
      '  SKIDKA,'
      '  KEI_ID,'
      '  SUMMA,'
      '  SUMMA_VP,'
      '  SUM_SKID,'
      '  SUM_SKID_VP,'
      '  SUMMA_S_NDS,'
      '  SUMMA_S_NDS_VP,'
      '  TAG,'
      '  KOL_PRIH_EDIZ,'
      '  KOL_RASH_EDIZ'
      'from KART '
      'where'
      '  STROKA_ID = :STROKA_ID')
    ModifySQL.Strings = (
      'update KART'
      'set'
      '   DOC_ID = :DOC_ID,'
      '  KART_ID = :KART_ID,'
      '  KEI_ID = :KEI_ID,'
      '  KOL_PRIH = :KOL_PRIH,'
      '  KOL_PRIH_EDIZ = :KOL_PRIH_EDIZ,'
      '  KOL_RASH = :KOL_RASH,'
      '  KOL_RASH_EDIZ = :KOL_RASH_EDIZ,'
      '  KSM_ID = :KSM_ID,'
      '  RAZDEL_ID = :RAZDEL_ID,'
      '  STROKA_ID = :STROKA_ID'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    InsertSQL.Strings = (
      'insert into KART'
      '  ( DOC_ID, KART_ID, KEI_ID, KOL_PRIH, KOL_PRIH_EDIZ, KOL_RASH, '
      '   KOL_RASH_EDIZ, KSM_ID, RAZDEL_ID, STROKA_ID)'
      'values'
      '  ( :DOC_ID, :KART_ID, :KEI_ID, :KOL_PRIH, :KOL_PRIH_EDIZ, '
      '   :KOL_RASH, :KOL_RASH_EDIZ, :KSM_ID, :RAZDEL_ID, :STROKA_ID)')
    DeleteSQL.Strings = (
      'delete from KART'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = IBT_Write
    Left = 248
    Top = 64
  end
  object Kart: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    BeforeClose = KartBeforeClose
    BeforeInsert = KartBeforeInsert
    BeforePost = KartBeforePost
    OnNewRecord = KartNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT KART.DOC_ID, KART.STROKA_ID, KART.KSM_ID,  KART. KOL_PRIH' +
        ',KART. KOL_RASH,'
      
        'KART.KART_ID, KART.PARENT,  KART.RAZDEL_ID, kart.cena,kart.cena_' +
        'vp,kart.kol_prih_ediz,kol_rash_ediz,'
      
        'OSTATKI.SERIA_ID,  OSTATKI. ONM_NZ, OSTATKI. OT_S, OSTATKI. ONM_' +
        'S, OSTATKI. OT_NZ,'
      'ED2.NEIS, ED1.NEIS NEISN,  SERIA.SERIA,SERIA.SROK_GODN,'
      'OSTATKI.GOD,OSTATKI.MES,ostatki.ksm_idpr,'
      
        'DOCUMENT.STRUK_ID, DOCUMENT.NDOK, DOCUMENT.TIP_OP_ID,DOCUMENT.DA' +
        'TE_OP, DOCUMENT.DATE_DOK,DOCUMENT.TIP_DOK_ID, DOCUMENT.KLIENT_ID' +
        ','
      'TIP_OPER.NAM_OP,'
      'RAZDEL.KRAZ,SPPROD.KOD_PROD,'
      'MATROP.NMAT,MATROP.GOST,MATROP.XARKT,MATROP.KEI_ID '
      ' FROM KART'
      '   INNER JOIN DOCUMENT ON (KART.doc_ID =DOCUMENT.DOC_ID)'
      
        '   INNER JOIN TIP_OPER ON (DOCUMENT.TIP_OP_ID=TIP_OPER.TIP_OP_ID' +
        ')'
      '   LEFT JOIN EDIZ  ED1 ON (KART.KEI_ID = ED1.KEI_ID)'
      '   LEFT JOIN OSTATKI ON (KART.KART_ID =OSTATKI. KART_ID)'
      '   LEFT JOIN MATROP ON (KART.KSM_ID = MATROP.KSM_ID)'
      '   LEFT JOIN SPPROD ON (OSTATKI.KSM_ID = SPPROD.KSM_ID)'
      '   LEFT JOIN SERIA ON (OSTATKI.SERIA_ID =SERIA.SERIA_ID)'
      '   LEFT JOIN EDIZ  ED2 ON (MATROP.KEI_ID = ED2.KEI_ID)'
      '   LEFT JOIN RAZDEL ON (KART.RAZDEL_ID =RAZDEL.RAZDEL_ID)'
      '  %USL'
      '  %SORT')
    UpdateObject = IBUpdateKart
    Macros = <
      item
        DataType = ftString
        Name = 'USL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SORT'
        ParamType = ptInput
      end>
    Left = 240
    Top = 16
    object KartKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
      OnValidate = KartKSM_IDValidate
    end
    object KartKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"MATROP"."KEI_ID"'
    end
    object KartKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
      OnValidate = KartKRAZValidate
    end
    object KartDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"KART"."DOC_ID"'
      Required = True
    end
    object KartSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object KartKOL_PRIH: TFMTBCDField
      FieldName = 'KOL_PRIH'
      Origin = '"KART"."KOL_PRIH"'
      Precision = 18
      Size = 6
    end
    object KartKOL_RASH: TFMTBCDField
      FieldName = 'KOL_RASH'
      Origin = '"KART"."KOL_RASH"'
      Precision = 18
      Size = 6
    end
    object KartKART_ID: TSmallintField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
    object KartPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = '"KART"."PARENT"'
    end
    object KartRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"KART"."RAZDEL_ID"'
    end
    object KartCENA: TIBBCDField
      FieldName = 'CENA'
      Origin = '"KART"."CENA"'
      Precision = 18
      Size = 4
    end
    object KartCENA_VP: TIBBCDField
      FieldName = 'CENA_VP'
      Origin = '"KART"."CENA_VP"'
      Precision = 18
      Size = 4
    end
    object KartKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      Origin = '"KART"."KOL_PRIH_EDIZ"'
    end
    object KartKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      Origin = '"KART"."KOL_RASH_EDIZ"'
    end
    object KartSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
      Origin = '"OSTATKI"."SERIA_ID"'
    end
    object KartOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object KartONM_S: TFMTBCDField
      FieldName = 'ONM_S'
      Origin = '"OSTATKI"."ONM_S"'
      Precision = 18
      Size = 6
    end
    object KartNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object KartNEISN: TIBStringField
      FieldName = 'NEISN'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object KartSERIA: TIBStringField
      FieldName = 'SERIA'
      Origin = '"SERIA"."SERIA"'
    end
    object KartSROK_GODN: TDateField
      FieldName = 'SROK_GODN'
      Origin = '"SERIA"."SROK_GODN"'
    end
    object KartGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"OSTATKI"."GOD"'
    end
    object KartMES: TSmallintField
      FieldName = 'MES'
      Origin = '"OSTATKI"."MES"'
    end
    object KartSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object KartNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object KartTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object KartDATE_OP: TDateField
      FieldName = 'DATE_OP'
      Origin = '"DOCUMENT"."DATE_OP"'
    end
    object KartDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object KartTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
      Required = True
    end
    object KartKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object KartNAM_OP: TIBStringField
      FieldName = 'NAM_OP'
      Origin = '"TIP_OPER"."NAM_OP"'
      Size = 50
    end
    object KartKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object KartNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
    object KartGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"MATROP"."GOST"'
      Size = 30
    end
    object KartXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"MATROP"."XARKT"'
      Size = 30
    end
    object KartOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object KartONM_NZ: TFloatField
      FieldName = 'ONM_NZ'
      Origin = '"OSTATKI"."ONM_NZ"'
    end
    object KartKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
  end
  object Tip: TIBQuery
    SQL.Strings = (
      
        'SELECT DISTINCT TIPDOK.TIP_DOK_ID, TIPDOK.NAME, TIPDOK.SHORT_NAM' +
        'E'
      'FROM TIPDOK'
      
        '   INNER JOIN DOC_OPER ON (TIPDOK.TIP_DOK_ID = DOC_OPER.TIP_DOK_' +
        'ID)'
      
        '   INNER JOIN TIP_OPER ON (DOC_OPER.TIP_OP_ID = TIP_OPER.TIP_OP_' +
        'ID)'
      'WHERE TIP_OPER.gr_op_id = :Gr_Op_Id')
    Left = 200
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Gr_Op_Id'
        ParamType = ptUnknown
      end>
  end
  object DSTip: TDataSource
    DataSet = Tip
    Left = 200
    Top = 232
  end
  object DS_Seria: TDataSource
    DataSet = Seria
    Left = 312
    Top = 123
  end
  object Seria: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    BeforeInsert = SeriaBeforeInsert
    OnNewRecord = SeriaNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT Seria.COMMENT,Seria. DATE_PASPORT, Seria.DATE_SERTIF,Seri' +
        'a. DATE_TIME_UPDATE,Seria. DATE_VIPUSK, Seria.DATE_ZAG, Seria.FI' +
        'O_MASTER,Seria. FIO_RASH, Seria.FORMA_VIPUSK,Seria. KEI_ID, Seri' +
        'a.KOD_TM, Seria.KODTN, Seria.KOL_SERIA,Seria. KOL_TM, Seria.KSM_' +
        'ID, Seria.OB_ZAG, Seria.PASPORT, Seria.SERIA, Seria.SERIA_ID, Se' +
        'ria.SERTIF, Seria.SHEMA,Seria. SROK_GODN, Seria.USER_NAME,Seria.' +
        ' VLAG_TM, matrop.nmat nmat_dob'
      ' FROM Seria'
      'left join matrop on (seria.kod_tm=matrop.ksm_id)'
      'WHERE seria.KSM_ID = :KSM_ID'
      ' AND  %usl')
    UpdateObject = SeriaUpdate
    GeneratorField.Field = 'SERIA_ID'
    GeneratorField.Generator = 'G_SERIA'
    GeneratorField.ApplyEvent = gamOnServer
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 282
    Top = 17
    ParamData = <
      item
        DataType = ftInteger
        Name = 'KSM_ID'
        ParamType = ptInput
      end>
    object SeriaSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
      Origin = '"SERIA"."SERIA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SeriaKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SERIA"."KSM_ID"'
      Required = True
    end
    object SeriaSERIA: TIBStringField
      FieldName = 'SERIA'
      Origin = '"SERIA"."SERIA"'
    end
    object SeriaSROK_GODN: TDateField
      FieldName = 'SROK_GODN'
      Origin = '"SERIA"."SROK_GODN"'
    end
    object SeriaSERTIF: TIBStringField
      FieldName = 'SERTIF'
      Origin = '"SERIA"."SERTIF"'
      Size = 25
    end
    object SeriaDATE_SERTIF: TDateField
      FieldName = 'DATE_SERTIF'
      Origin = '"SERIA"."DATE_SERTIF"'
    end
    object SeriaPASPORT: TIBStringField
      FieldName = 'PASPORT'
      Origin = '"SERIA"."PASPORT"'
      FixedChar = True
      Size = 10
    end
    object SeriaDATE_PASPORT: TDateField
      FieldName = 'DATE_PASPORT'
      Origin = '"SERIA"."DATE_PASPORT"'
    end
    object SeriaKOL_SERIA: TFMTBCDField
      FieldName = 'KOL_SERIA'
      Origin = '"SERIA"."KOL_SERIA"'
      Precision = 18
      Size = 6
    end
    object SeriaDATE_VIPUSK: TDateField
      FieldName = 'DATE_VIPUSK'
      Origin = '"SERIA"."DATE_VIPUSK"'
    end
    object SeriaFORMA_VIPUSK: TIBStringField
      FieldName = 'FORMA_VIPUSK'
      Origin = '"SERIA"."FORMA_VIPUSK"'
      Size = 100
    end
    object SeriaKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"SERIA"."KEI_ID"'
    end
    object SeriaDATE_TIME_UPDATE: TDateTimeField
      FieldName = 'DATE_TIME_UPDATE'
      Origin = '"SERIA"."DATE_TIME_UPDATE"'
    end
    object SeriaUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"SERIA"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object SeriaSHEMA: TIBStringField
      FieldName = 'SHEMA'
      Origin = '"SERIA"."SHEMA"'
      FixedChar = True
      Size = 3
    end
    object SeriaKODTN: TIBStringField
      FieldName = 'KODTN'
      Origin = '"SERIA"."KODTN"'
      FixedChar = True
      Size = 10
    end
    object SeriaDATE_ZAG: TDateField
      FieldName = 'DATE_ZAG'
      Origin = '"SERIA"."DATE_ZAG"'
    end
    object SeriaFIO_RASH: TIBStringField
      FieldName = 'FIO_RASH'
      Origin = '"SERIA"."FIO_RASH"'
      Size = 30
    end
    object SeriaFIO_MASTER: TIBStringField
      FieldName = 'FIO_MASTER'
      Origin = '"SERIA"."FIO_MASTER"'
      Size = 30
    end
    object SeriaCOMMENT: TIBStringField
      FieldName = 'COMMENT'
      Origin = '"SERIA"."COMMENT"'
      Size = 120
    end
    object SeriaOB_ZAG: TFloatField
      FieldName = 'OB_ZAG'
      Origin = '"SERIA"."OB_ZAG"'
    end
    object SeriaVLAG_TM: TFloatField
      FieldName = 'VLAG_TM'
      Origin = '"SERIA"."VLAG_TM"'
    end
    object SeriaKOD_TM: TIntegerField
      FieldName = 'KOD_TM'
      Origin = '"SERIA"."KOD_TM"'
      OnValidate = SeriaKOD_TMValidate
    end
    object SeriaKOL_TM: TFloatField
      FieldName = 'KOL_TM'
      Origin = '"SERIA"."KOL_TM"'
      DisplayFormat = '########0.0#####'
    end
  end
  object SeriaUpdate: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      'from Seria '
      'where'
      '  SERIA_ID = :SERIA_ID')
    ModifySQL.Strings = (
      'update Seria'
      'set'
      '  DATE_ZAG = :DATE_ZAG,'
      '  FIO_MASTER = :FIO_MASTER,'
      '  FIO_RASH = :FIO_RASH,'
      '  FORMA_VIPUSK = :FORMA_VIPUSK,'
      '  KOD_TM = :KOD_TM,'
      '  KOL_SERIA = :KOL_SERIA,'
      '  KOL_TM = :KOL_TM,'
      '  KSM_ID = :KSM_ID,'
      '  OB_ZAG = :OB_ZAG,'
      '  SERIA = :SERIA,'
      '  SERIA_ID = :SERIA_ID,'
      '  SROK_GODN = :SROK_GODN,'
      '  VLAG_TM = :VLAG_TM'
      'where'
      '  SERIA_ID = :OLD_SERIA_ID')
    InsertSQL.Strings = (
      'insert into Seria'
      
        '  (DATE_ZAG, FIO_MASTER, FIO_RASH, FORMA_VIPUSK, KOD_TM, KOL_SER' +
        'IA, KOL_TM, '
      '   KSM_ID, OB_ZAG, SERIA, SERIA_ID, SROK_GODN, VLAG_TM)'
      'values'
      
        '  (:DATE_ZAG, :FIO_MASTER, :FIO_RASH, :FORMA_VIPUSK, :KOD_TM, :K' +
        'OL_SERIA, '
      
        '   :KOL_TM, :KSM_ID, :OB_ZAG, :SERIA, :SERIA_ID, :SROK_GODN, :VL' +
        'AG_TM)')
    DeleteSQL.Strings = (
      'delete from Seria'
      'where'
      '  SERIA_ID = :OLD_SERIA_ID')
    AutoCommit = False
    UpdateTransaction = IBT_Write
    Left = 304
    Top = 67
  end
  object ADD_KartDok: TIBStoredProc
    Database = BELMED
    Transaction = IBT_Read
    StoredProcName = 'ADD_KART'
    Left = 16
    Top = 320
  end
  object Add_Ostatki: TIBStoredProc
    Database = BELMED
    Transaction = IBT_Read
    StoredProcName = 'ADD_OSTATKI'
    Left = 24
    Top = 272
  end
  object Ostatki: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    BeforeInsert = OstatkiBeforeInsert
    OnNewRecord = OstatkiNewRecord
    CachedUpdates = True
    SQL.Strings = (
      'SELECT Ost.KART_ID,matrop.KEI_ID,Ost.RAZDEL_ID,'
      'Ost.KSM_ID,Ost.KSM_IDPR,ost.mes,ost.god,'
      'Ost.ONM_FD,'
      'Ost.ONM_NZ,Ost.ONM_S,Ost.OT_FD,Ost.OT_NZ,'
      'Ost.OT_S,Ost.SERIA_ID,Ost.STRUK_ID,'
      'Ost.USER_NAME,'
      'Ost.OT_DOKUM, Ost.ONM_DOKUM,'
      
        'ost.nomu_id_trans,ost.kol_trans,ost.nomu_id_grp,ost.kol_grp,ost.' +
        'ves_trans,ost.vol_trans,'
      'Matrop.NMAT, Ediz.NEIS'
      'FROM OSTATKI Ost'
      'INNER JOIN Matrop ON Ost.KSM_ID = Matrop.KSM_ID'
      'INNER JOIN Ediz ON Matrop.KEI_ID = Ediz.KEI_ID'
      'LEFT JOIN Seria ON Ost.SERIA_ID = Seria.SERIA_ID'
      'WHERE Ost.STRUK_ID = :STRUK_ID'
      '     %usl')
    UpdateObject = OstatkiUpdate
    GeneratorField.Field = 'KART_ID'
    GeneratorField.Generator = 'G_OSTATKI'
    GeneratorField.ApplyEvent = gamOnServer
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
      end>
    Left = 475
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STRUK_ID'
        ParamType = ptInput
      end>
    object OstatkiKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"OSTATKI"."KART_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object OstatkiKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"MATROP"."KEI_ID"'
    end
    object OstatkiRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object OstatkiKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"OSTATKI"."KSM_ID"'
      Required = True
    end
    object OstatkiKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object OstatkiMES: TSmallintField
      FieldName = 'MES'
      Origin = '"OSTATKI"."MES"'
      Required = True
    end
    object OstatkiGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"OSTATKI"."GOD"'
      Required = True
    end
    object OstatkiONM_FD: TFMTBCDField
      FieldName = 'ONM_FD'
      Origin = '"OSTATKI"."ONM_FD"'
      Precision = 18
      Size = 6
    end
    object OstatkiONM_NZ: TFMTBCDField
      FieldName = 'ONM_NZ'
      Origin = '"OSTATKI"."ONM_NZ"'
      Precision = 18
      Size = 6
    end
    object OstatkiONM_S: TFMTBCDField
      FieldName = 'ONM_S'
      Origin = '"OSTATKI"."ONM_S"'
      Precision = 18
      Size = 6
    end
    object OstatkiOT_FD: TFMTBCDField
      FieldName = 'OT_FD'
      Origin = '"OSTATKI"."OT_FD"'
      Precision = 18
      Size = 6
    end
    object OstatkiOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object OstatkiOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object OstatkiSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
      Origin = '"OSTATKI"."SERIA_ID"'
    end
    object OstatkiSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
      Origin = '"OSTATKI"."STRUK_ID"'
      Required = True
    end
    object OstatkiUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"OSTATKI"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object OstatkiOT_DOKUM: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'OT_DOKUM'
      Origin = '"OSTATKI"."OT_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object OstatkiONM_DOKUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ONM_DOKUM'
      Origin = '"OSTATKI"."ONM_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
    end
    object OstatkiNOMU_ID_TRANS: TSmallintField
      FieldName = 'NOMU_ID_TRANS'
      Origin = '"OSTATKI"."NOMU_ID_TRANS"'
    end
    object OstatkiKOL_TRANS: TFloatField
      FieldName = 'KOL_TRANS'
      Origin = '"OSTATKI"."KOL_TRANS"'
    end
    object OstatkiNOMU_ID_GRP: TSmallintField
      FieldName = 'NOMU_ID_GRP'
      Origin = '"OSTATKI"."NOMU_ID_GRP"'
    end
    object OstatkiKOL_GRP: TFloatField
      FieldName = 'KOL_GRP'
      Origin = '"OSTATKI"."KOL_GRP"'
    end
    object OstatkiVES_TRANS: TIBBCDField
      FieldName = 'VES_TRANS'
      Origin = '"OSTATKI"."VES_TRANS"'
      Precision = 9
      Size = 2
    end
    object OstatkiVOL_TRANS: TIBBCDField
      FieldName = 'VOL_TRANS'
      Origin = '"OSTATKI"."VOL_TRANS"'
      Precision = 9
      Size = 3
    end
    object OstatkiNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
    object OstatkiNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
  end
  object OstatkiUpdate: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      'from Ostatki '
      'where'
      '  KART_ID = :KART_ID')
    ModifySQL.Strings = (
      'update Ostatki'
      'set'
      '  '
      '  KART_ID = :KART_ID,'
      '   KOL_GRP = :KOL_GRP,'
      '  KOL_TRANS = :KOL_TRANS,'
      '  KSM_ID = :KSM_ID,'
      '  KSM_IDPR = :KSM_IDPR,'
      ' '
      '  NOMU_ID_GRP = :NOMU_ID_GRP,'
      '  NOMU_ID_TRANS = :NOMU_ID_TRANS,'
      '  ONM_FD = :ONM_FD,'
      '  ONM_NZ = :ONM_NZ,'
      '  ONM_S = :ONM_S,'
      '  OT_FD = :OT_FD,'
      '  OT_NZ = :OT_NZ,'
      '  OT_S = :OT_S,'
      '  RAZDEL_ID = :RAZDEL_ID,'
      '  SERIA_ID = :SERIA_ID,'
      '  STRUK_ID = :STRUK_ID,'
      '  VES_TRANS = :VES_TRANS,'
      '  VOL_TRANS = :VOL_TRANS,'
      '  mes=:mes,'
      ' god=:god,'
      'kei_id=:kei_id'
      ' '
      'where'
      '  KART_ID = :OLD_KART_ID')
    InsertSQL.Strings = (
      'insert into Ostatki'
      
        '  ( KART_ID, KOL_GRP, KOL_TRANS, KSM_ID, KSM_IDPR,  NOMU_ID_GRP,' +
        ' '
      
        '   NOMU_ID_TRANS, ONM_FD, ONM_NZ, ONM_S, OT_FD, OT_NZ, OT_S, RAZ' +
        'DEL_ID, '
      '   SERIA_ID, STRUK_ID, VES_TRANS, VOL_TRANS,mes,god,kei_id)'
      'values'
      '  ( :KART_ID, :KOL_GRP, :KOL_TRANS, :KSM_ID, :KSM_IDPR,  '
      
        '   :NOMU_ID_GRP, :NOMU_ID_TRANS, :ONM_FD, :ONM_NZ, :ONM_S, :OT_F' +
        'D, :OT_NZ, '
      
        '   :OT_S, :RAZDEL_ID, :SERIA_ID, :STRUK_ID, :VES_TRANS, :VOL_TRA' +
        'NS,:mes,:god,:kei_id)')
    DeleteSQL.Strings = (
      'delete from Ostatki'
      'where'
      '  KART_ID = :OLD_KART_ID')
    AutoCommit = False
    UpdateTransaction = IBT_Write
    Left = 477
    Top = 68
  end
  object RasSumTipOp: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT DOCUMENT.TIP_OP_ID, KART.KSM_ID, SUM( KART.KOL_RASH ) SUM' +
        '_OF_KOL_RASH, TIP_OPER.NAM_OP'
      'FROM TIP_OPER'
      
        '   INNER JOIN DOCUMENT ON (TIP_OPER.TIP_OP_ID = DOCUMENT.TIP_OP_' +
        'ID)'
      '   INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
      ''
      ''
      'WHERE %SKSM'
      '      AND %SDAT'
      '      AND %CEX'
      '      AND %STIP'
      '     and kart.kol_rash<>0'
      'GROUP BY DOCUMENT.TIP_OP_ID, KART.KSM_ID, TIP_OPER.NAM_OP'
      ''
      ''
      ''
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'SKSM'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'SDAT'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CEX'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'STIP'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 368
    Top = 176
    object RasSumTipOpNAM_OP: TIBStringField
      FieldName = 'NAM_OP'
      ProviderFlags = []
      Size = 50
    end
    object RasSumTipOpSUM_OF_KOL_RASH: TFMTBCDField
      FieldName = 'SUM_OF_KOL_RASH'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object RasSumTipOpTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      ProviderFlags = []
    end
    object RasSumTipOpKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      ProviderFlags = []
    end
  end
  object DSRasSumTipOp: TDataSource
    DataSet = RasSumTipOp
    Left = 368
    Top = 232
  end
  object DS_ConfigUMC: TDataSource
    DataSet = ConfigUMC
    Left = 360
    Top = 120
  end
  object ConfigUMC: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    SQL.Strings = (
      'SELECT * FROM ConfigUMC'
      'WHERE %USL')
    UpdateObject = ConfigUMCUpdate
    Macros = <
      item
        DataType = ftString
        Name = 'USL'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 360
    Top = 16
    object ConfigUMCMES: TSmallintField
      DisplayLabel = #1052#1077#1089#1103#1094' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
      FieldName = 'MES'
      Origin = '"CONFIGUMC"."MES"'
      Required = True
    end
    object ConfigUMCGOD: TSmallintField
      DisplayLabel = #1043#1086#1076' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
      FieldName = 'GOD'
      Origin = '"CONFIGUMC"."GOD"'
      Required = True
    end
    object ConfigUMCSTNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'STNAME'
      Origin = '"CONFIGUMC"."STNAME"'
      FixedChar = True
    end
    object ConfigUMCSTRUK_ID: TSmallintField
      DisplayLabel = #1050#1086#1076
      FieldName = 'STRUK_ID'
      Origin = '"CONFIGUMC"."STRUK_ID"'
    end
    object ConfigUMCTIP_SKLAD_ID: TSmallintField
      FieldName = 'TIP_SKLAD_ID'
      Origin = '"CONFIGUMC"."TIP_SKLAD_ID"'
    end
    object ConfigUMCOTP_RAZR: TIBStringField
      FieldName = 'OTP_RAZR'
      Origin = '"CONFIGUMC"."OTP_RAZR"'
    end
    object ConfigUMCOTTISK: TIBStringField
      FieldName = 'OTTISK'
      Origin = '"CONFIGUMC"."OTTISK"'
      Size = 15
    end
    object ConfigUMCOTP_PROIZV: TIBStringField
      FieldName = 'OTP_PROIZV'
      Origin = '"CONFIGUMC"."OTP_PROIZV"'
    end
    object ConfigUMCPUNKT_POGR: TIBStringField
      FieldName = 'PUNKT_POGR'
      Origin = '"CONFIGUMC"."PUNKT_POGR"'
      Size = 40
    end
  end
  object ConfigUMCUpdate: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select *'
      'from ConfigUMC'
      'where'
      '  STRUK_ID = :STRUK_ID')
    ModifySQL.Strings = (
      'update ConfigUMC'
      'set'
      '  GOD = :GOD,'
      '  MES = :MES,'
      '  OTP_PROIZV = :OTP_PROIZV,'
      '  OTP_RAZR = :OTP_RAZR,'
      '  OTTISK = :OTTISK,'
      '  PUNKT_POGR = :PUNKT_POGR,'
      '  STNAME = :STNAME,'
      '  STRUK_ID = :STRUK_ID,'
      '  TIP_SKLAD_ID = :TIP_SKLAD_ID'
      'where'
      '  STRUK_ID = :OLD_STRUK_ID')
    InsertSQL.Strings = (
      'insert into ConfigUMC'
      
        '  (GOD, MES, OTP_PROIZV, OTP_RAZR, OTTISK, PUNKT_POGR, STNAME, S' +
        'TRUK_ID,'
      '   TIP_SKLAD_ID)'
      'values'
      
        '  (:GOD, :MES, :OTP_PROIZV, :OTP_RAZR, :OTTISK, :PUNKT_POGR, :ST' +
        'NAME, :STRUK_ID,'
      '   :TIP_SKLAD_ID)')
    DeleteSQL.Strings = (
      'delete from ConfigUMC'
      'where'
      '  STRUK_ID = :OLD_STRUK_ID')
    AutoCommit = False
    UpdateTransaction = IBT_Write
    Left = 360
    Top = 72
  end
  object Norm: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT NORM.NORM_ID, NORM.KODP, NORM.KSM_ID, NORM.STRUK_ID, NORM' +
        '.KEI_ID, NORM.PLNORM, NORM.DATAV, NORM.KRAZ, NORM.MES, NORM.GOD,' +
        ' NORM.PRPF, NORM.NAZPRPF, NORM.PRKOR, NORM.TIMEV, SPPROD.NMAT NM' +
        'ATP, MATROP.NMAT, STRUK.STNAME, SPVIS.NAMEVIS, SPPRN.NAMEPRN, SP' +
        'PROD.KORG,PRSYR.NAMSPSR, SPRORG.NAM, EDIZ.NEIS,MATROP.GOST,MATRO' +
        'P.XARKT,RAZDEL.KODRAZ,RAZDEL.NAMRAZ'
      'FROM NORM'
      '   INNER JOIN SPPROD ON (NORM.KODP = SPPROD.KSM_ID)'
      '   INNER JOIN SPPRN ON (SPPROD.SPPRN = SPPRN.SPPRN)'
      '   INNER JOIN SPVIS ON (SPPROD.SPVIS = SPVIS.SPVIS)'
      '   INNER JOIN PRSYR ON (SPPROD.SPSR = PRSYR.SPSR)'
      '   INNER JOIN MATROP ON (NORM.KSM_ID = MATROP.KSM_ID)'
      '   INNER JOIN RAZDEL ON (NORM.KRAZ =RAZDEL.KRAZ)'
      '   INNER JOIN STRUK ON (spprod.STRUK_ID = STRUK.STRUK_ID)'
      '   left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)'
      '   INNER JOIN EDIZ ON (NORM.KEI_ID = EDIZ.KEI_ID)'
      'WHERE NORM.KODP=:KODP'
      '%USL'
      '%SORT')
    Macros = <
      item
        DataType = ftString
        Name = 'USL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SORT'
        ParamType = ptInput
      end>
    Left = 416
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'KODP'
        ParamType = ptInput
      end>
    object NormKODP: TIntegerField
      FieldName = 'KODP'
      Origin = '"NORM"."KODP"'
      Required = True
    end
    object NormKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"NORM"."KSM_ID"'
      Required = True
    end
    object NormSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"NORM"."STRUK_ID"'
    end
    object NormKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"NORM"."KEI_ID"'
    end
    object NormPLNORM: TFMTBCDField
      FieldName = 'PLNORM'
      Origin = '"NORM"."PLNORM"'
      Precision = 18
      Size = 6
    end
    object NormDATAV: TDateField
      FieldName = 'DATAV'
      Origin = '"NORM"."DATAV"'
    end
    object NormKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"NORM"."KRAZ"'
      Required = True
    end
    object NormMES: TSmallintField
      FieldName = 'MES'
      Origin = '"NORM"."MES"'
      Required = True
    end
    object NormGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"NORM"."GOD"'
      Required = True
    end
    object NormPRPF: TSmallintField
      FieldName = 'PRPF'
      Origin = '"NORM"."PRPF"'
    end
    object NormNAZPRPF: TIBStringField
      FieldName = 'NAZPRPF'
      Origin = '"NORM"."NAZPRPF"'
      FixedChar = True
      Size = 3
    end
    object NormPRKOR: TIBStringField
      FieldName = 'PRKOR'
      Origin = '"NORM"."PRKOR"'
      FixedChar = True
      Size = 1
    end
    object NormTIMEV: TIBStringField
      FieldName = 'TIMEV'
      Origin = '"NORM"."TIMEV"'
      FixedChar = True
      Size = 8
    end
    object NormNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object NormSTNAME: TIBStringField
      FieldName = 'STNAME'
      Origin = '"STRUK"."STNAME"'
      FixedChar = True
    end
    object NormNAMEVIS: TIBStringField
      FieldName = 'NAMEVIS'
      Origin = '"SPVIS"."NAMEVIS"'
      FixedChar = True
    end
    object NormNAMEPRN: TIBStringField
      FieldName = 'NAMEPRN'
      Origin = '"SPPRN"."NAMEPRN"'
      FixedChar = True
      Size = 30
    end
    object NormNAMSPSR: TIBStringField
      FieldName = 'NAMSPSR'
      Origin = '"PRSYR"."NAMSPSR"'
      FixedChar = True
      Size = 30
    end
    object NormNAM: TIBStringField
      FieldName = 'NAM'
      Origin = '"SPRORG"."NAM"'
      Size = 50
    end
    object NormNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object NormGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"MATROP"."GOST"'
      Size = 30
    end
    object NormXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"MATROP"."XARKT"'
      Size = 30
    end
    object NormNORM_ID: TIntegerField
      FieldName = 'NORM_ID'
      Origin = '"NORM"."NORM_ID"'
      Required = True
    end
    object NormNMATP: TIBStringField
      FieldName = 'NMATP'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object NormKODRAZ: TIBStringField
      FieldName = 'KODRAZ'
      Origin = '"RAZDEL"."KODRAZ"'
      FixedChar = True
      Size = 2
    end
    object NormNAMRAZ: TIBStringField
      FieldName = 'NAMRAZ'
      Origin = '"RAZDEL"."NAMRAZ"'
      Size = 60
    end
    object NormKORG: TIntegerField
      FieldName = 'KORG'
      Origin = '"SPPROD"."KORG"'
    end
  end
  object DSNorm: TDataSource
    DataSet = Norm
    Left = 416
    Top = 88
  end
  object DSNormSyr: TDataSource
    DataSet = NormSyr
    Left = 312
    Top = 232
  end
  object DSProd_Rab: TDataSource
    DataSet = Prod_Rab
    Left = 152
    Top = 232
  end
  object frReport2: TfrReport
    Dataset = frDBDataSet2
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    OnGetValue = frReport2GetValue
    Left = 168
    Top = 281
    ReportForm = {19000000}
  end
  object frDBDataSet2: TfrDBDataSet
    DataSet = Norm
    Left = 280
    Top = 280
  end
  object DSOstatki: TDataSource
    DataSet = Ostatki
    Left = 488
    Top = 112
  end
  object New_Mes: TIBStoredProc
    Database = BELMED
    Transaction = IBT_Write
    StoredProcName = 'NEW_MONTH'
    Left = 96
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STRUK_ID'
        ParamType = ptInput
      end>
  end
  object Ceh_Stad: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    BeforeInsert = Ceh_StadBeforeInsert
    OnNewRecord = Ceh_StadNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT CEH_STAD.LEK_ID, CEH_STAD.STADIA_ID, CEH_STAD.NAME_STAD, ' +
        'LEKGRUP. LEKNAMS'
      '  FROM CEH_STAD'
      ' left  JOIN LEKGRUP ON (CEH_STAD.LEK_ID = LEKGRUP.LEK_ID)'
      '  %SORT'
      ''
      '')
    UpdateObject = IBUpdateCeh_stad
    GeneratorField.ApplyEvent = gamOnServer
    Macros = <
      item
        DataType = ftString
        Name = 'SORT'
        ParamType = ptInput
      end>
    Left = 531
    Top = 16
    object Ceh_StadLEK_ID: TSmallintField
      FieldName = 'LEK_ID'
      Origin = '"CEH_STAD"."LEK_ID"'
      Required = True
      OnValidate = Ceh_StadLEK_IDValidate
    end
    object Ceh_StadSTADIA_ID: TIntegerField
      FieldName = 'STADIA_ID'
      Origin = '"CEH_STAD"."STADIA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Ceh_StadNAME_STAD: TIBStringField
      FieldName = 'NAME_STAD'
      Origin = '"CEH_STAD"."NAME_STAD"'
      Size = 50
    end
    object Ceh_StadLEKNAMS: TIBStringField
      FieldName = 'LEKNAMS'
      Origin = '"LEKGRUP"."LEKNAMS"'
      Size = 50
    end
  end
  object IBUpdateCeh_stad: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select *'
      'from CEH_STAD'
      'where'
      '  STADIA_ID = :STADIA_ID'
      '')
    ModifySQL.Strings = (
      'update CEH_STAD'
      'set'
      '  STADIA_ID = :STADIA_ID,'
      '  LEK_ID = :LEK_ID,'
      '  NAME_STAD = :NAME_STAD'
      '  where'
      '  STADIA_ID = :OLD_STADIA_ID'
      '')
    InsertSQL.Strings = (
      'insert into CEH_STAD'
      '  ( LEK_ID, NAME_STAD)'
      'values'
      '  ( :LEK_ID, :NAME_STAD)'
      '   '
      '')
    DeleteSQL.Strings = (
      'delete from CeH_Stad'
      'where'
      '  STADIA_ID = :OLD_STADIA_ID'
      '')
    AutoCommit = False
    UpdateTransaction = IBT_Write
    Left = 541
    Top = 68
  end
  object DSCeh_Stad: TDataSource
    DataSet = Ceh_Stad
    Left = 552
    Top = 112
  end
  object Razdel: TIBQuery
    Database = BELMED
    Transaction = IBT_Read
    SQL.Strings = (
      'select *'
      'from Razdel'
      'order by Razdel.kraz')
    Left = 440
    Top = 288
    object RazdelRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"RAZDEL"."RAZDEL_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RazdelKODRAZ: TIBStringField
      FieldName = 'KODRAZ'
      Origin = '"RAZDEL"."KODRAZ"'
      FixedChar = True
      Size = 2
    end
    object RazdelNAMRAZ: TIBStringField
      FieldName = 'NAMRAZ'
      Origin = '"RAZDEL"."NAMRAZ"'
      Size = 60
    end
    object RazdelKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
  end
  object DSRazdel: TDataSource
    DataSet = Razdel
    Left = 448
    Top = 336
  end
  object Matrop: TIBQuery
    Database = BELMED
    Transaction = IBT_Read
    SQL.Strings = (
      
        'select MATROP.NMAT,matrop.prmat, MATROP.GOST,MATROP.XARKT,MATROP' +
        '.KEI_ID,MATROP.KSM_ID,EDIZ.NEIs'
      'from Matrop'
      'inner join ediz on (matrop.kei_id=ediz.kei_id)'
      'where matrop.ksm_id=:ksm')
    Left = 496
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ksm'
        ParamType = ptInput
        Value = '0'
      end>
    object MatropNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
    object MatropGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"MATROP"."GOST"'
      Size = 30
    end
    object MatropXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"MATROP"."XARKT"'
      Size = 30
    end
    object MatropKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"MATROP"."KEI_ID"'
    end
    object MatropKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"MATROP"."KSM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MatropNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object MatropPRMAT: TIBStringField
      FieldName = 'PRMAT'
      Origin = '"MATROP"."PRMAT"'
      FixedChar = True
      Size = 2
    end
  end
  object IBQueryNorm: TIBQuery
    Database = BELMED
    Transaction = IBT_Read
    SQL.Strings = (
      #39
      ''
      ''
      '')
    Left = 360
    Top = 288
  end
  object LEKGRUP: TIBQuery
    Database = BELMED
    Transaction = IBT_Read
    SQL.Strings = (
      'SELECT *'
      'FROM LEKGRUP')
    Left = 544
    Top = 288
    object LEKGRUPLEK_ID: TSmallintField
      FieldName = 'LEK_ID'
      Origin = '"LEKGRUP"."LEK_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LEKGRUPLEKNAME: TIBStringField
      FieldName = 'LEKNAME'
      Origin = '"LEKGRUP"."LEKNAME"'
      Size = 100
    end
    object LEKGRUPLEKFARM: TIBStringField
      FieldName = 'LEKFARM'
      Origin = '"LEKGRUP"."LEKFARM"'
      Size = 30
    end
    object LEKGRUPLEKNAMS: TIBStringField
      FieldName = 'LEKNAMS'
      Origin = '"LEKGRUP"."LEKNAMS"'
      Size = 50
    end
    object LEKGRUPSPFV: TSmallintField
      FieldName = 'SPFV'
      Origin = '"LEKGRUP"."SPFV"'
    end
    object LEKGRUPGR: TIBStringField
      FieldName = 'GR'
      Origin = '"LEKGRUP"."GR"'
      FixedChar = True
      Size = 2
    end
    object LEKGRUPPGR: TIBStringField
      FieldName = 'PGR'
      Origin = '"LEKGRUP"."PGR"'
      FixedChar = True
      Size = 2
    end
    object LEKGRUPSPTIP: TSmallintField
      FieldName = 'SPTIP'
      Origin = '"LEKGRUP"."SPTIP"'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 165
    Top = 336
  end
  object TipDok: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Write
    CachedUpdates = True
    SQL.Strings = (
      'SELECT  TIP_OPER. GR_OP_ID,TIP_OPER. TIP_OP_ID, TIP_OPER.NAM_OP'
      'FROM tip_oper_user  TIP_OPER'
      '  '
      ' WHERE  %STIP'
      ' '
      ''
      ''
      '    '
      ''
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'STIP'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 256
    Top = 176
    object TipDokGR_OP_ID: TSmallintField
      FieldName = 'GR_OP_ID'
      Origin = '"TIP_OPER"."GR_OP_ID"'
    end
    object TipDokTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"TIP_OPER"."TIP_OP_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TipDokNAM_OP: TIBStringField
      FieldName = 'NAM_OP'
      Origin = '"TIP_OPER"."NAM_OP"'
      Size = 50
    end
  end
  object Ceh_Otchet: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      'SELECT *'
      ' FROM Ceh_Otchet'
      ' WHERE MES=:MES AND GOD=:GOD ')
    UpdateObject = CehOtchetUpdate
    GeneratorField.Field = 'STR_ID'
    GeneratorField.Generator = 'GEN_CEH_OTCHET'
    GeneratorField.ApplyEvent = gamOnServer
    Macros = <>
    Left = 225
    Top = 324
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GOD'
        ParamType = ptInput
      end>
    object Ceh_OtchetSTR_ID: TIntegerField
      FieldName = 'STR_ID'
      Origin = '"CEH_OTCHET"."STR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Ceh_OtchetKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"CEH_OTCHET"."KART_ID"'
    end
    object Ceh_OtchetMES: TIntegerField
      FieldName = 'MES'
      Origin = '"CEH_OTCHET"."MES"'
    end
    object Ceh_OtchetGOD: TIntegerField
      FieldName = 'GOD'
      Origin = '"CEH_OTCHET"."GOD"'
    end
    object Ceh_OtchetKOL: TFloatField
      FieldName = 'KOL'
      Origin = '"CEH_OTCHET"."KOL"'
      DisplayFormat = '######0.000000'
    end
    object Ceh_OtchetKOL_RASX: TFloatField
      FieldName = 'KOL_RASX'
      Origin = '"CEH_OTCHET"."KOL_RASX"'
      DisplayFormat = '#######0.000000'
    end
  end
  object CehOtchetUpdate: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select *'
      'from Ceh_otchet'
      'where'
      '  Str_ID = :Str_ID')
    ModifySQL.Strings = (
      'update CEH_OTCHET'
      'set'
      '  KART_ID = :KART_ID,'
      '  KOL = :KOL,'
      '  MES = :MES,'
      '  GOD = :GOD,'
      '  KOL_rasx= :KOL_RASX'
      '  where'
      '  STR_ID = :OLD_STR_ID')
    InsertSQL.Strings = (
      'insert into Ceh_Otchet'
      '  ( KART_ID, KOL, MES,GOD,KOL_RASX)'
      'values'
      '  ( :KART_ID, :KOL, :MES, :GOD, :KOL_RASX)')
    DeleteSQL.Strings = (
      'delete from Ceh_Otchet'
      'where'
      '  STR_ID = :OLD_STR_ID')
    AutoCommit = False
    UpdateTransaction = IBT_Write
    Left = 296
    Top = 339
  end
  object DS_Ceh_Otchet: TDataSource
    DataSet = Ceh_Otchet
    Left = 376
    Top = 339
  end
  object DSediz: TDataSource
    DataSet = Ediz
    Left = 96
    Top = 280
  end
  object IBMatr_pr: TIBQuery
    Database = BELMED
    Transaction = IBT_Read
    SQL.Strings = (
      'select * from MATR_PR')
    Left = 172
    Top = 392
    object IBMatr_prPRMAT: TIBStringField
      FieldName = 'PRMAT'
      Origin = '"MATR_PR"."PRMAT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object IBMatr_prNAMPR: TIBStringField
      FieldName = 'NAMPR'
      Origin = '"MATR_PR"."NAMPR"'
      FixedChar = True
      Size = 50
    end
  end
  object DS_Matr_pr: TDataSource
    DataSet = IBMatr_pr
    Left = 235
    Top = 396
  end
  object DSPechOtchet: TDataSource
    DataSet = PechOtchet
    Left = 352
    Top = 400
  end
  object PechOtchet: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'kraz'
        DataType = ftInteger
      end
      item
        Name = 'NMAT'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'kol_rash'
        DataType = ftFloat
      end
      item
        Name = 'neis'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Ot_s'
        DataType = ftFloat
      end
      item
        Name = 'Ot_nz'
        DataType = ftFloat
      end
      item
        Name = 'Onm_s'
        DataType = ftFloat
      end
      item
        Name = 'Onm_nz'
        DataType = ftFloat
      end
      item
        Name = 'plnorm'
        DataType = ftFloat
      end
      item
        Name = 'fnorm'
        DataType = ftFloat
      end
      item
        Name = 'fnormg'
        DataType = ftFloat
      end
      item
        Name = 'kol_prih'
        DataType = ftFloat
      end
      item
        Name = 'zag'
        DataType = ftFloat
      end
      item
        Name = 'per_s'
        DataType = ftFloat
      end
      item
        Name = 'per_nz'
        DataType = ftFloat
      end
      item
        Name = 'pereras'
        DataType = ftFloat
      end
      item
        Name = 'pererasg'
        DataType = ftFloat
      end
      item
        Name = 'ksm_id'
        DataType = ftInteger
      end
      item
        Name = 'prpf'
        DataType = ftBoolean
      end
      item
        Name = 'RAZDEL_ID'
        DataType = ftInteger
      end
      item
        Name = 'KART_ID'
        DataType = ftInteger
      end
      item
        Name = 'RASXG'
        DataType = ftFloat
      end
      item
        Name = 'kei_id'
        DataType = ftInteger
      end
      item
        Name = 'kei_idn'
        DataType = ftInteger
      end
      item
        Name = 'NAMRAZ'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'kodp'
        DataType = ftInteger
      end
      item
        Name = 'kod_prod'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'namprod'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'neisp'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'gost'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'namorg'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'namreg'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'vipg'
        DataType = ftFloat
      end
      item
        Name = 'vip'
        DataType = ftFloat
      end
      item
        Name = 'Xarkt'
        DataType = ftString
        Size = 20
      end>
    Left = 296
    Top = 400
    object PechOtchetkraz: TIntegerField
      FieldName = 'kraz'
    end
    object PechOtchetNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object PechOtchetkol_rash: TFloatField
      FieldName = 'kol_rash'
    end
    object PechOtchetneis: TStringField
      FieldName = 'neis'
    end
    object PechOtchetOt_s: TFloatField
      FieldName = 'Ot_s'
    end
    object PechOtchetOt_nz: TFloatField
      FieldName = 'Ot_nz'
    end
    object PechOtchetOnm_s: TFloatField
      FieldName = 'Onm_s'
    end
    object PechOtchetOnm_nz: TFloatField
      FieldName = 'Onm_nz'
    end
    object PechOtchetplnorm: TFloatField
      FieldName = 'plnorm'
    end
    object PechOtchetfnorm: TFloatField
      FieldName = 'fnorm'
    end
    object PechOtchetfnormg: TFloatField
      FieldName = 'fnormg'
    end
    object PechOtchetkol_prih: TFloatField
      FieldName = 'kol_prih'
    end
    object PechOtchetzag: TFloatField
      FieldName = 'zag'
    end
    object PechOtchetper_s: TFloatField
      FieldName = 'per_s'
    end
    object PechOtchetper_nz: TFloatField
      FieldName = 'per_nz'
    end
    object PechOtchetpereras: TFloatField
      FieldName = 'pereras'
    end
    object PechOtchetpererasg: TFloatField
      FieldName = 'pererasg'
    end
    object PechOtchetksm_id: TIntegerField
      FieldName = 'ksm_id'
    end
    object PechOtchetprpf: TBooleanField
      FieldName = 'prpf'
    end
    object PechOtchetRAZDEL_ID: TIntegerField
      FieldName = 'RAZDEL_ID'
    end
    object PechOtchetKART_ID: TIntegerField
      FieldName = 'KART_ID'
    end
    object PechOtchetRASXG: TFloatField
      FieldName = 'RASXG'
    end
    object PechOtchetkei_id: TIntegerField
      FieldName = 'kei_id'
    end
    object PechOtchetkei_idn: TIntegerField
      FieldName = 'kei_idn'
    end
    object PechOtchetNAMRAZ: TStringField
      FieldName = 'NAMRAZ'
      Size = 60
    end
    object PechOtchetkodp: TIntegerField
      FieldName = 'kodp'
    end
    object PechOtchetkod_prod: TStringField
      FieldName = 'kod_prod'
    end
    object PechOtchetnamprod: TStringField
      FieldName = 'namprod'
    end
    object PechOtchetneisp: TStringField
      FieldName = 'neisp'
      Size = 10
    end
    object PechOtchetgost: TStringField
      FieldName = 'gost'
      Size = 30
    end
    object PechOtchetnamorg: TStringField
      FieldName = 'namorg'
      Size = 50
    end
    object PechOtchetnamreg: TStringField
      FieldName = 'namreg'
    end
    object PechOtchetvipg: TFloatField
      FieldName = 'vipg'
    end
    object PechOtchetvip: TFloatField
      FieldName = 'vip'
    end
    object PechOtchetXarkt: TStringField
      FieldName = 'Xarkt'
    end
  end
  object PechTexGur: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'kraz'
        DataType = ftInteger
      end
      item
        Name = 'NMAT'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'kol_rash_ediz'
        DataType = ftFloat
      end
      item
        Name = 'neis'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Ot_s'
        DataType = ftFloat
      end
      item
        Name = 'Ot_nz'
        DataType = ftFloat
      end
      item
        Name = 'ksm_id'
        DataType = ftInteger
      end
      item
        Name = 'RAZDEL_ID'
        DataType = ftInteger
      end
      item
        Name = 'KART_ID'
        DataType = ftInteger
      end
      item
        Name = 'kei_id'
        DataType = ftInteger
      end
      item
        Name = 'kein'
        DataType = ftInteger
      end
      item
        Name = 'NAMRAZ'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'kodp'
        DataType = ftInteger
      end
      item
        Name = 'doc_id'
        DataType = ftInteger
      end
      item
        Name = 'seria_id'
        DataType = ftInteger
      end
      item
        Name = 'seria'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'date_zag'
        DataType = ftDateTime
      end
      item
        Name = 'ob_zag'
        DataType = ftFloat
      end
      item
        Name = 'ndok'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'mes'
        DataType = ftInteger
      end
      item
        Name = 'god'
        DataType = ftInteger
      end
      item
        Name = 'nazprpf'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'xarkt'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'gost'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'kodraz'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'formula'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tip_op_id'
        DataType = ftInteger
      end
      item
        Name = 'date_op'
        DataType = ftDateTime
      end
      item
        Name = 'koef1'
        DataType = ftFloat
      end
      item
        Name = 'koef2'
        DataType = ftFloat
      end
      item
        Name = 'koef3'
        DataType = ftFloat
      end
      item
        Name = 'proc'
        DataType = ftFloat
      end
      item
        Name = 'normz_id'
        DataType = ftInteger
      end>
    Left = 416
    Top = 400
    object PechTexGurkraz: TIntegerField
      FieldName = 'kraz'
    end
    object PechTexGurNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object PechTexGurkol_rash_ediz: TFloatField
      FieldName = 'kol_rash_ediz'
    end
    object PechTexGurneis: TStringField
      FieldName = 'neis'
    end
    object PechTexGurOt_s: TFloatField
      FieldName = 'Ot_s'
    end
    object PechTexGurOt_nz: TFloatField
      FieldName = 'Ot_nz'
    end
    object PechTexGurksm_id: TIntegerField
      FieldName = 'ksm_id'
    end
    object PechTexGurRAZDEL_ID: TIntegerField
      FieldName = 'RAZDEL_ID'
    end
    object PechTexGurKART_ID: TIntegerField
      FieldName = 'KART_ID'
    end
    object PechTexGurkei_id: TIntegerField
      FieldName = 'kei_id'
    end
    object PechTexGurkein: TIntegerField
      FieldName = 'kein'
    end
    object PechTexGurNAMRAZ: TStringField
      FieldName = 'NAMRAZ'
      Size = 60
    end
    object PechTexGurkodp: TIntegerField
      FieldName = 'kodp'
    end
    object PechTexGurdoc_id: TIntegerField
      FieldName = 'doc_id'
    end
    object PechTexGurseria_id: TIntegerField
      FieldName = 'seria_id'
    end
    object PechTexGurseria: TStringField
      FieldName = 'seria'
    end
    object PechTexGurdate_zag: TDateTimeField
      FieldName = 'date_zag'
    end
    object PechTexGurob_zag: TFloatField
      FieldName = 'ob_zag'
    end
    object PechTexGurndok: TStringField
      FieldName = 'ndok'
    end
    object PechTexGurmes: TIntegerField
      FieldName = 'mes'
    end
    object PechTexGurgod: TIntegerField
      FieldName = 'god'
    end
    object PechTexGurnazprpf: TStringField
      FieldName = 'nazprpf'
      Size = 3
    end
    object PechTexGurxarkt: TStringField
      FieldName = 'xarkt'
      Size = 30
    end
    object PechTexGurgost: TStringField
      FieldName = 'gost'
      Size = 30
    end
    object PechTexGurkodraz: TStringField
      FieldName = 'kodraz'
      Size = 2
    end
    object PechTexGurformula: TStringField
      FieldName = 'formula'
    end
    object PechTexGurtip_op_id: TIntegerField
      FieldName = 'tip_op_id'
    end
    object PechTexGurdate_op: TDateTimeField
      FieldName = 'date_op'
    end
    object PechTexGurkoef1: TFloatField
      FieldName = 'koef1'
    end
    object PechTexGurkoef2: TFloatField
      FieldName = 'koef2'
    end
    object PechTexGurkoef3: TFloatField
      FieldName = 'koef3'
    end
    object PechTexGurproc: TFloatField
      FieldName = 'proc'
    end
    object PechTexGurnormz_id: TIntegerField
      FieldName = 'normz_id'
    end
  end
  object DSPechTexGur: TDataSource
    DataSet = PechTexGur
    Left = 488
    Top = 400
  end
  object frDBDataSet3: TfrDBDataSet
    DataSet = PechTexGur
    Left = 512
    Top = 344
  end
  object frDBDataSet4: TfrDBDataSet
    DataSet = PechOtchet
    Left = 536
    Top = 392
  end
  object frDBDataSet5: TfrDBDataSet
    DataSet = TexStad
    Left = 560
    Top = 344
  end
  object DSKartV: TDataSource
    DataSet = KartV
    Left = 600
    Top = 112
  end
  object IBUpdateKartV: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  DOC_ID,'
      '  STROKA_ID,'
      '  KSM_ID,'
      '  CENA,'
      '  KOL_PRIH,'
      '  CENA_VP,'
      '  NDS,'
      '  SUM_NDS,'
      '  SUM_NDS_VP,'
      '  KOL_RASH,'
      '  USER_NAME,'
      '  DATE_TIME_UPDATE,'
      '  SERIA_ID,'
      '  SKIDKA,'
      '  SUMMA,'
      '  SUMMA_VP,'
      '  SUM_SKID,'
      '  SUM_SKID_VP,'
      '  SUMMA_S_NDS,'
      '  SUMMA_S_NDS_VP'
      'from KARTV '
      'where'
      '  STROKA_ID = :STROKA_ID')
    ModifySQL.Strings = (
      'update KARTV'
      'set'
      '  DOC_ID = :DOC_ID,'
      '  KOL_PRIH = :KOL_PRIH,'
      '  KSM_ID = :KSM_ID,'
      '  STROKA_ID = :STROKA_ID'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    InsertSQL.Strings = (
      'insert into KARTV'
      '  (DOC_ID, KOL_PRIH, KSM_ID, STROKA_ID)'
      'values'
      '  (:DOC_ID, :KOL_PRIH, :KSM_ID, :STROKA_ID)')
    DeleteSQL.Strings = (
      'delete from KARTV'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = IBT_Write
    Left = 592
    Top = 56
  end
  object KartV: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    BeforeEdit = KartVBeforeEdit
    BeforeInsert = KartVBeforeInsert
    OnNewRecord = KartVNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT KARTV.DOC_ID, KARTV.STROKA_ID, KARTV.KSM_ID,  KARTV. KOL_' +
        'PRIH, SPPROD.KOD_PROD, EDIZ. NEIS, DOCUMENT.KLIENT_ID,SPPROD.NMA' +
        'T,SPPROD.XARKT,SPPROD.GOST,spprod.SPPRN,spprod.SPVIS,spprod.kei_' +
        'id,'
      'region.nam nam_reg,'
      'cast(0 as numeric(15,6)) as vipNg '
      ' FROM KARTV'
      '   INNER JOIN DOCUMENT ON (KARTV.doc_ID =DOCUMENT.DOC_ID)'
      '   LEFT JOIN SPPROD ON (KARTV.KSM_ID = SPPROD.KSM_ID)'
      '   LEFT JOIN EDIZ ON (SPPROD.KEI_ID = EDIZ.KEI_ID)'
      '   LEFT JOIN region ON (SPPROD.reg = region.reg)'
      '   %USL'
      '  %SORT')
    UpdateObject = IBUpdateKartV
    Macros = <
      item
        DataType = ftString
        Name = 'USL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SORT'
        ParamType = ptInput
      end>
    Left = 584
    Top = 8
    object KartVDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"KARTV"."DOC_ID"'
      Required = True
    end
    object KartVSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KARTV"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object KartVKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KARTV"."KSM_ID"'
      Required = True
    end
    object KartVKOL_PRIH: TFMTBCDField
      FieldName = 'KOL_PRIH'
      Origin = '"KARTV"."KOL_PRIH"'
      Precision = 18
      Size = 6
    end
    object KartVKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object KartVNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object KartVKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object KartVNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object KartVXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"SPPROD"."XARKT"'
      Size = 30
    end
    object KartVGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"SPPROD"."GOST"'
      FixedChar = True
      Size = 30
    end
    object KartVSPPRN: TSmallintField
      FieldName = 'SPPRN'
      Origin = '"SPPROD"."SPPRN"'
    end
    object KartVSPVIS: TSmallintField
      FieldName = 'SPVIS'
      Origin = '"SPPROD"."SPVIS"'
    end
    object KartVNAM_REG: TIBStringField
      FieldName = 'NAM_REG'
      Origin = '"REGION"."NAM"'
      FixedChar = True
    end
    object KartVVIPNG: TFMTBCDField
      FieldName = 'VIPNG'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object KartVKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"SPPROD"."KEI_ID"'
    end
  end
  object frDBDataSet6: TfrDBDataSet
    DataSet = FGot_Prod.Kart_Vipusk
    Left = 584
    Top = 392
  end
  object Upak: TIBQuery
    Database = BELMED
    Transaction = IBT_Read
    SQL.Strings = (
      'select * '
      ' from UPAK')
    Left = 584
    Top = 176
    object UpakNAME_UPAK: TIBStringField
      FieldName = 'NAME_UPAK'
      Origin = '"UPAK"."NAME_UPAK"'
    end
    object UpakNOMU_ID: TIntegerField
      FieldName = 'NOMU_ID'
      Origin = '"UPAK"."NOMU_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSUpak: TDataSource
    DataSet = Upak
    Left = 584
    Top = 232
  end
  object SpFormv: TIBQuery
    Database = BELMED
    Transaction = IBT_Read
    SQL.Strings = (
      'select *'
      'from SpFormv'
      'order by Namefv')
    Left = 592
    Top = 288
    object SpFormvSPFV: TSmallintField
      FieldName = 'SPFV'
      Origin = '"SPFORMV"."SPFV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SpFormvNAMEFV: TIBStringField
      FieldName = 'NAMEFV'
      Origin = '"SPFORMV"."NAMEFV"'
      FixedChar = True
      Size = 50
    end
  end
  object DSSpFormv: TDataSource
    DataSet = SpFormv
    Left = 600
    Top = 336
  end
  object DeleteDocument: TIBStoredProc
    Database = BELMED
    Transaction = IBT_Write
    StoredProcName = 'DELETE_DOCUMENT'
    Left = 16
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NDOC_ID'
        ParamType = ptInput
      end>
  end
  object ceh_ost_ediz: TIBStoredProc
    Database = BELMED
    Transaction = IBT_Read
    StoredProcName = 'CEH_OST_EDIZ'
    Left = 96
    Top = 400
    ParamData = <
      item
        DataType = ftFloat
        Name = 'KOL_NEW'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'KSM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'KEI_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'KEI_ID_PREP'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'KOL_OLD'
        ParamType = ptInput
      end>
  end
  object OstSyr: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    SQL.Strings = (
      'SELECT ost.kod_prep,Ost.nmat_prep,Ost.ostatok_begin_s,'
      'Ost.Ostatok_begin_NZ,'
      '(Ost.Prix_Period+ost.peredano_prih_s) as  Prix_Period,'
      'ost.peredano_prih_nz,'
      
        '(Ost.Rasx_Period-Ost.Zag_period-ost.peredano_rash_s) as Rasx_per' +
        'iod,'
      'Ost.Ostatok_end_s,Ost.Ostatok_end_nz,Ost.Zag_period,Razdel.kraz,'
      'ost.Rash_Virab_Period,ost.neis,ost.peredano_rash_nz,'
      'ost.peredano_rash_s'
      ''
      'FROM SELECT_OST_KSM (%DAT1,%DAT2,:kodp,:STRUK_ID,:KSM) ost'
      ' LEFT JOIN Razdel ON (OST.razdel_id = razdel.razdel_ID)'
      ' where (Ost.ostatok_begin_s<>0'
      ' or Ost.Ostatok_begin_NZ<>0'
      ' or ost.Prix_Period<>0'
      ' or ost.Rasx_Period<>0'
      ' or Ost.Ostatok_end_s<>0'
      ' or Ost.Ostatok_end_nz<>0'
      ' or Ost.Zag_period<>0'
      ' or ost.Rash_Virab_Period<>0)'
      'order by ost.kod_prep'
      ''
      ' '
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'DAT1'
        ParamType = ptInput
        Value = #39'01.11.2005'#39
      end
      item
        DataType = ftString
        Name = 'DAT2'
        ParamType = ptInput
        Value = #39'30.11.2005'#39
      end>
    Left = 424
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'kodp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STRUK_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'KSM'
        ParamType = ptInput
      end>
    object OstSyrKOD_PREP: TIBStringField
      FieldName = 'KOD_PREP'
      Origin = '"SELECT_OST_KSM"."KOD_PREP"'
      FixedChar = True
      Size = 18
    end
    object OstSyrNMAT_PREP: TIBStringField
      FieldName = 'NMAT_PREP'
      Origin = '"SELECT_OST_KSM"."NMAT_PREP"'
      Size = 60
    end
    object OstSyrOSTATOK_BEGIN_S: TFMTBCDField
      FieldName = 'OSTATOK_BEGIN_S'
      Origin = '"SELECT_OST_KSM"."OSTATOK_BEGIN_S"'
      Precision = 18
      Size = 6
    end
    object OstSyrOSTATOK_BEGIN_NZ: TFMTBCDField
      FieldName = 'OSTATOK_BEGIN_NZ'
      Origin = '"SELECT_OST_KSM"."OSTATOK_BEGIN_NZ"'
      Precision = 18
      Size = 6
    end
    object OstSyrPRIX_PERIOD: TFMTBCDField
      FieldName = 'PRIX_PERIOD'
      Origin = '"SELECT_OST_KSM"."PRIX_PERIOD"'
      Precision = 18
      Size = 6
    end
    object OstSyrRASX_PERIOD: TFMTBCDField
      FieldName = 'RASX_PERIOD'
      Origin = '"SELECT_OST_KSM"."RASX_PERIOD"'
      Precision = 18
      Size = 6
    end
    object OstSyrOSTATOK_END_S: TFMTBCDField
      FieldName = 'OSTATOK_END_S'
      Origin = '"SELECT_OST_KSM"."OSTATOK_END_S"'
      Precision = 18
      Size = 6
    end
    object OstSyrOSTATOK_END_NZ: TFMTBCDField
      FieldName = 'OSTATOK_END_NZ'
      Origin = '"SELECT_OST_KSM"."OSTATOK_END_NZ"'
      Precision = 18
      Size = 6
    end
    object OstSyrZAG_PERIOD: TFMTBCDField
      FieldName = 'ZAG_PERIOD'
      Origin = '"SELECT_OST_KSM"."ZAG_PERIOD"'
      Precision = 18
      Size = 6
    end
    object OstSyrKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
    object OstSyrRASH_VIRAB_PERIOD: TFMTBCDField
      FieldName = 'RASH_VIRAB_PERIOD'
      Origin = '"SELECT_OST_KSM"."RASH_VIRAB_PERIOD"'
      Precision = 18
      Size = 6
    end
    object OstSyrNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"SELECT_OST_KSM"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object OstSyrPEREDANO_RASH_NZ: TFMTBCDField
      FieldName = 'PEREDANO_RASH_NZ'
      Origin = '"SELECT_OST_KSM"."PEREDANO_RASH_NZ"'
      Precision = 18
      Size = 6
    end
    object OstSyrPEREDANO_RASH_S: TFMTBCDField
      FieldName = 'PEREDANO_RASH_S'
      Origin = '"SELECT_OST_KSM"."PEREDANO_RASH_S"'
      Precision = 18
      Size = 6
    end
    object OstSyrPEREDANO_PRIH_NZ: TFMTBCDField
      FieldName = 'PEREDANO_PRIH_NZ'
      Origin = '"SELECT_OST_KSM"."PEREDANO_PRIH_NZ"'
      Precision = 18
      Size = 6
    end
  end
  object DSOstSyr: TDataSource
    DataSet = OstSyr
    Left = 424
    Top = 224
  end
  object NormSyr: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT NORM.KODP,  NORM.STRUK_ID, NORM.KEI_ID, NORM.PLNORM,  NOR' +
        'M.KRAZ, NORM.MES, NORM.GOD, SPPROD.NMAT, SPVIS.NAMEVIS, SPPRN.NA' +
        'MEPRN,SPPROD. KOD_PROD, SPPROD.KORG,PRSYR.NAMSPSR, SPRORG.NAM, E' +
        'DIZ.NEIS'
      'FROM NORM'
      '   INNER JOIN SPPROD ON (NORM.KODP = SPPROD.KSM_ID)'
      '   left JOIN SPPRN ON (SPPROD.SPPRN = SPPRN.SPPRN)'
      '   left JOIN SPVIS ON (SPPROD.SPVIS = SPVIS.SPVIS)'
      '   left JOIN PRSYR ON (SPPROD.SPSR = PRSYR.SPSR)'
      '   left JOIN SPRORG ON (SPPROD.KORG = SPRORG.KOD)'
      '   INNER JOIN EDIZ ON (NORM.KEI_ID = EDIZ.KEI_ID)'
      'WHERE   (NORM.KSM_ID = :KSM_ID)'
      '      AND   (NORM.MES=:MES)'
      '      AND   (NORM.GOD=:GOD)'
      '     AND    (NORM.STRUK_ID=:STRUK_ID)'
      '%SORT')
    Macros = <
      item
        DataType = ftString
        Name = 'SORT'
        ParamType = ptInput
      end>
    Left = 304
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'KSM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GOD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STRUK_ID'
        ParamType = ptInput
      end>
    object NormSyrKODP: TIntegerField
      FieldName = 'KODP'
      Origin = '"NORM"."KODP"'
      Required = True
    end
    object NormSyrSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"NORM"."STRUK_ID"'
    end
    object NormSyrKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"NORM"."KEI_ID"'
    end
    object NormSyrPLNORM: TFMTBCDField
      FieldName = 'PLNORM'
      Origin = '"NORM"."PLNORM"'
      Precision = 18
      Size = 6
    end
    object NormSyrKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"NORM"."KRAZ"'
      Required = True
    end
    object NormSyrMES: TSmallintField
      FieldName = 'MES'
      Origin = '"NORM"."MES"'
      Required = True
    end
    object NormSyrGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"NORM"."GOD"'
      Required = True
    end
    object NormSyrNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object NormSyrNAMEVIS: TIBStringField
      FieldName = 'NAMEVIS'
      Origin = '"SPVIS"."NAMEVIS"'
      FixedChar = True
    end
    object NormSyrNAMEPRN: TIBStringField
      FieldName = 'NAMEPRN'
      Origin = '"SPPRN"."NAMEPRN"'
      FixedChar = True
      Size = 30
    end
    object NormSyrKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object NormSyrKORG: TIntegerField
      FieldName = 'KORG'
      Origin = '"SPPROD"."KORG"'
    end
    object NormSyrNAMSPSR: TIBStringField
      FieldName = 'NAMSPSR'
      Origin = '"PRSYR"."NAMSPSR"'
      FixedChar = True
      Size = 30
    end
    object NormSyrNAM: TIBStringField
      FieldName = 'NAM'
      Origin = '"SPRORG"."NAM"'
      Size = 50
    end
    object NormSyrNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
  end
  object TexStad: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    OnNewRecord = TexStadNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT CEH_JOURNST.JOURNST_ID, CEH_JOURNST.STADIA_ID, CEH_JOURNS' +
        'T.KART_ID, CEH_JOURNST.DATE_STAD, CEH_JOURNST.TIME_STAD, CEH_JOU' +
        'RNST.TEMPERATURE, CEH_JOURNST.COMMENT, CEH_JOURNST.DATE_TIME_UPD' +
        'ATE, CEH_JOURNST.USER_NAME, CEH_STAD.NAME_STAD'
      'FROM CEH_JOURNST'
      
        '   INNER JOIN CEH_STAD ON (CEH_JOURNST.STADIA_ID = CEH_STAD.STAD' +
        'IA_ID)'
      '       '
      'WHERE CEH_JOURNST.Kart_id = :kartId'
      '   '
      '')
    UpdateObject = TexStadUpdate
    GeneratorField.Field = 'JOURNST_ID'
    GeneratorField.Generator = 'G_CEH_JOURNST'
    GeneratorField.ApplyEvent = gamOnServer
    Macros = <>
    Left = 202
    Top = 465
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kartId'
        ParamType = ptUnknown
      end>
    object TexStadJOURNST_ID: TIntegerField
      FieldName = 'JOURNST_ID'
      Origin = '"CEH_JOURNST"."JOURNST_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TexStadSTADIA_ID: TIntegerField
      FieldName = 'STADIA_ID'
      Origin = '"CEH_JOURNST"."STADIA_ID"'
      Required = True
    end
    object TexStadKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"CEH_JOURNST"."KART_ID"'
      Required = True
    end
    object TexStadDATE_STAD: TDateField
      FieldName = 'DATE_STAD'
      Origin = '"CEH_JOURNST"."DATE_STAD"'
    end
    object TexStadTIME_STAD: TTimeField
      FieldName = 'TIME_STAD'
      Origin = '"CEH_JOURNST"."TIME_STAD"'
    end
    object TexStadTEMPERATURE: TIBBCDField
      FieldName = 'TEMPERATURE'
      Origin = '"CEH_JOURNST"."TEMPERATURE"'
      Precision = 9
      Size = 2
    end
    object TexStadCOMMENT: TIBStringField
      FieldName = 'COMMENT'
      Origin = '"CEH_JOURNST"."COMMENT"'
      Size = 100
    end
    object TexStadDATE_TIME_UPDATE: TDateTimeField
      FieldName = 'DATE_TIME_UPDATE'
      Origin = '"CEH_JOURNST"."DATE_TIME_UPDATE"'
    end
    object TexStadUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"CEH_JOURNST"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object TexStadNAME_STAD: TIBStringField
      FieldName = 'NAME_STAD'
      Origin = '"CEH_STAD"."NAME_STAD"'
      Size = 50
    end
  end
  object TexStadUpdate: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select *'
      'from CEH_JOURNST'
      'WHERE'
      '  JOURNST_ID = :OLD_JOURNST_ID')
    ModifySQL.Strings = (
      '  update CEH_JOURNST'
      ' set'
      '  STADIA_ID =:STADIA_ID,'
      '  KART_ID =:KART_ID,'
      '  DATE_STAD =:DATE_STAD,'
      '  TIME_STAD =:TIME_STAD,'
      '  TEMPERATURE =:TEMPERATURE,'
      '  COMMENT =:COMMENT,'
      '  DATE_TIME_UPDATE =:DATE_TIME_UPDATE,'
      '  USER_NAME =:USER_NAME'
      ' WHERE'
      '  JOURNST_ID = :OLD_JOURNST_ID')
    InsertSQL.Strings = (
      'insert into CEH_JOURNST'
      
        ' (JOURNST_ID, STADIA_ID, KART_ID, DATE_STAD, TIME_STAD, TEMPERAT' +
        'URE, COMMENT, DATE_TIME_UPDATE, USER_NAME )'
      ' values'
      
        ' (:JOURNST_ID, :STADIA_ID, :KART_ID, :DATE_STAD, :TIME_STAD, :TE' +
        'MPERATURE, :COMMENT, :DATE_TIME_UPDATE, :USER_NAME )'
      '')
    DeleteSQL.Strings = (
      'delete from CEH_JOURNST'
      'WHERE'
      '  JOURNST_ID = :OLD_JOURNST_ID'
      ''
      '')
    AutoCommit = False
    UpdateTransaction = IBT_Write
    Left = 288
    Top = 459
  end
  object DS_TexStad: TDataSource
    DataSet = TexStad
    Left = 368
    Top = 467
  end
  object frxReport1: TfrxReport
    Version = '4.2.22'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39581.661380023100000000
    ReportOptions.LastChange = 39605.686423784700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 432
    Top = 464
    Datasets = <
      item
        DataSet = frxReport1.IBXQuery1
        DataSetName = 'IBXQuery1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object IBXQuery1: TfrxIBXQuery
        UserName = 'IBXQuery1'
        CloseDataSource = False
        Params = <>
        SQL.Strings = (
          
            'SELECT  NORM.KODP, NORM.KSM_ID, NORM.PLNORM, SPPROD.NMAT NMATP, ' +
            'MATROP.NMAT,STRUK.STNAME,RAZDEL.NAMRAZ,'
          'SPPROD.NMATS,EDIZ.NEIS NEIS_NORM,EDIZM.NEIS NEIS_MAT,'
          'SPFORMV.NAMEFV,SPPROD.KOD_PROD,MATROP.CENA'
          'FROM NORM'
          '   INNER JOIN SPPROD ON (NORM.KODP = SPPROD.KSM_ID)'
          '   INNER JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)'
          '   INNER JOIN MATROP ON (NORM.KSM_ID = MATROP.KSM_ID)'
          '   INNER JOIN RAZDEL ON (NORM.KRAZ =RAZDEL.KRAZ)'
          '   INNER JOIN STRUK ON (spprod.STRUK_ID = STRUK.STRUK_ID)'
          '   INNER JOIN EDIZ EDIZM ON (MATROP.KEI_ID = EDIZM.KEI_ID)'
          '  INNER JOIN EDIZ ON (NORM.KEI_ID = EDIZ.KEI_ID)'
          'WHERE NORM.MES=1'
          '      AND  NORM.GOD=2008'
          
            'order by struk.stname,norm.kodp                                 ' +
            '             ')
        pLeft = 112
        pTop = 128
        Parameters = <>
      end
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 19.677180000000000000
        ParentFont = False
        Top = 120.000000000000000000
        Width = 1046.929810000000000000
        DataSet = frxReport1.IBXQuery1
        DataSetName = 'IBXQuery1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 83.590600000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'NAMEFV'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IBXQuery1."NAMEFV"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 265.110390000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          DataField = 'NMATP'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IBXQuery1."NMATP"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IBXQuery1."STNAME"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 466.220780000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          DataField = 'KSM_ID'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[IBXQuery1."KSM_ID"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 525.149970000000000000
          Width = 86.929190000000000000
          Height = 15.118110240000000000
          DataField = 'NAMRAZ'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IBXQuery1."NAMRAZ"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 618.858690000000000000
          Width = 136.063080000000000000
          Height = 15.118110240000000000
          DataField = 'NMAT'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IBXQuery1."NMAT"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 160.283550000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'KOD_PROD'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[IBXQuery1."KOD_PROD"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 761.685530000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          DataField = 'NEIS_NORM'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IBXQuery1."NEIS_NORM"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 824.158010000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          DataField = 'PLNORM'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[IBXQuery1."PLNORM"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 901.087200000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          AllowExpressions = False
          DataField = 'CENA'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[IBXQuery1."CENA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 976.898270000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          AllowExpressions = False
          DataField = 'NEIS_MAT'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[IBXQuery1."NEIS_MAT"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 83.149660000000000000
        Top = 16.000000000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Left = 260.803340000000000000
          Top = 29.559060000000000000
          Width = 200.315090000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1111#1057#1026#1056#1109#1056#1169#1057#1107#1056#1108#1057#8224#1056#1105#1056#1105)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 893.221090000000000000
          Top = 29.559060000000000000
          Width = 71.811070000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1026#1056#181#1056#1169#1056#1029#1056#181#1056#1030#1056#183#1056#1030#1056#181#1057#8364#1056#181#1056#1029#1056#1029#1056#176#1057#1039' '#1057#8224#1056#181#1056#1029#1056#176' '#1056#183#1056#1105' '#1056#1112#1056#176#1056#8470)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 87.078850000000000000
          Top = 29.559060000000000000
          Width = 68.031540000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1056#1105#1056#1169' '#1056#1111#1057#1026#1056#1109#1056#1169#1057#1107#1056#1108#1057#8224#1056#1105#1056#1105)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 756.276130000000000000
          Top = 29.559060000000000000
          Width = 60.472480000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'.'#1056#1105'. '#1056#1169#1056#187#1057#1039' '#1056#1029#1056#1109#1057#1026#1056#1112)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 817.850960000000000000
          Top = 29.559060000000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#187#1056#176#1056#1029#1056#1109#1056#1030#1056#176#1057#1039' '#1056#1029#1056#1109#1057#1026#1056#1112#1056#176)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 29.559060000000000000
          Width = 83.149660000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'.'#1056#1111#1056#1109#1056#1169#1057#1026'.')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 925.984850000000000000
          Top = 2.220469999999999000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8250#1056#1105#1057#1027#1057#8218' [Page#]')
        end
        object Memo1: TfrxMemoView
          Left = 155.196970000000000000
          Top = 29.559060000000000000
          Width = 105.826840000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1111#1057#1026#1056#1109#1056#1169#1057#1107#1056#1108#1057#8224#1056#1105#1056#1105)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 461.134200000000000000
          Top = 29.559060000000000000
          Width = 60.472480000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1112#1056#176#1057#8218#1056#181#1057#1026#1056#1105#1056#176#1056#187#1056#176)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 520.945270000000000000
          Top = 29.559060000000000000
          Width = 86.929190000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#160#1056#176#1056#183#1056#1169#1056#181#1056#187)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 608.433520000000000000
          Top = 29.559060000000000000
          Width = 147.401670000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1112#1056#176#1057#8218#1056#181#1057#1026#1056#1105#1056#176#1056#187#1056#176)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 965.898270000000000000
          Top = 29.559060000000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'.'#1056#1105#1056#183#1056#1112'. '#1056#1169#1056#187#1057#1039' '#1057#8224#1056#181#1056#1029#1057#8249)
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kraz=kraz'
      'NMAT=NMAT'
      'kol_rash=kol_rash'
      'neis=neis'
      'Ot_s=Ot_s'
      'Ot_nz=Ot_nz'
      'Onm_s=Onm_s'
      'Onm_nz=Onm_nz'
      'plnorm=plnorm'
      'fnorm=fnorm'
      'fnormg=fnormg'
      'kol_prih=kol_prih'
      'zag=zag'
      'per_s=per_s'
      'per_nz=per_nz'
      'pereras=pereras'
      'pererasg=pererasg'
      'ksm_id=ksm_id'
      'prpf=prpf'
      'RAZDEL_ID=RAZDEL_ID'
      'KART_ID=KART_ID'
      'RASXG=RASXG'
      'kei_id=kei_id'
      'kei_idn=kei_idn'
      'NAMRAZ=NAMRAZ'
      'kodp=kodp'
      'kod_prod=kod_prod'
      'namprod=namprod'
      'neisp=neisp'
      'gost=gost'
      'namorg=namorg'
      'namreg=namreg'
      'vipg=vipg'
      'vip=vip'
      'Xarkt=Xarkt')
    DataSet = PechOtchet
    Left = 504
    Top = 448
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    EscModel = 1
    GraphicFrames = False
    OEMConvert = False
    SaveToFile = False
    UseIniSettings = True
    Left = 576
    Top = 464
  end
  object OTK_ANALIT: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      
        'select otk_analit.analit_id, otk_analit.analit_num, otk_analit.d' +
        'ate_vvod, otk_analit.ntd_id, otk_ntd.ntd, ediz.neis, '
      
        ' matrop.nmat, otk_ntd.ksm_id, otk_ntd.xaract, otk_analit.proizvo' +
        'd, otk_analit.part_num,'
      
        'otk_analit.part_vol, otk_analit.part_vol_aktiv, otk_analit.part_' +
        'kol, otk_analit.doc_id, otk_analit.klient_id, '
      
        'otk_analit.ndok, otk_analit.date_dok, sprorg.nam, otk_analit.vid' +
        '_kontrol, otk_analit.date_prob,'
      
        'otk_analit.date_begin, otk_analit.date_end, otk_analit.date_pasp' +
        'ort, otk_analit.srok_godn_ntd,'
      
        'otk_analit.srok_godn_sert, otk_analit.result, otk_analit.chem_do' +
        'ljnost, otk_analit.chem_fio,'
      
        'otk_analit.mbiol_doljnost, otk_analit.mbiol_fio, otk_analit.biol' +
        '_doljnost, otk_analit.biol_fio,'
      'otk_analit.result_otk, otk_analit.grmen_fio, otk_analit.nach_otk'
      'from otk_analit'
      'inner join otk_ntd on otk_ntd.ntd_id=otk_analit.ntd_id'
      'inner join matrop on otk_analit.ksm_id=matrop.ksm_id'
      'left join ediz on matrop.kei_id = ediz.kei_id'
      'left join sprorg on otk_analit.klient_id=sprorg.kod'
      'where extract(year from otk_analit.date_vvod)=2008'
      'order by %ord'
      ''
      '')
    GeneratorField.Field = 'ANALIT_ID'
    GeneratorField.Generator = 'G_OTK_ANALIT'
    Macros = <
      item
        DataType = ftString
        Name = 'ord'
        ParamType = ptInput
        Value = #39'otk_analit.analit_num'#39
      end>
    Left = 24
    Top = 464
    object OTK_ANALITANALIT_ID: TIntegerField
      FieldName = 'ANALIT_ID'
      Origin = '"OTK_ANALIT"."ANALIT_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object OTK_ANALITANALIT_NUM: TIntegerField
      FieldName = 'ANALIT_NUM'
      Origin = '"OTK_ANALIT"."ANALIT_NUM"'
    end
    object OTK_ANALITDATE_VVOD: TDateField
      FieldName = 'DATE_VVOD'
      Origin = '"OTK_ANALIT"."DATE_VVOD"'
    end
    object OTK_ANALITNTD_ID: TIntegerField
      FieldName = 'NTD_ID'
      Origin = '"OTK_ANALIT"."NTD_ID"'
    end
    object OTK_ANALITNTD: TIBStringField
      FieldName = 'NTD'
      Origin = '"OTK_NTD"."NTD"'
      Size = 40
    end
    object OTK_ANALITNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
    object OTK_ANALITKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"OTK_NTD"."KSM_ID"'
    end
    object OTK_ANALITXARACT: TIBStringField
      FieldName = 'XARACT'
      Origin = '"OTK_NTD"."XARACT"'
      Size = 30
    end
    object OTK_ANALITPROIZVOD: TIBStringField
      FieldName = 'PROIZVOD'
      Origin = '"OTK_ANALIT"."PROIZVOD"'
      Size = 70
    end
    object OTK_ANALITPART_NUM: TIBStringField
      FieldName = 'PART_NUM'
      Origin = '"OTK_ANALIT"."PART_NUM"'
      Size = 30
    end
    object OTK_ANALITPART_VOL: TFMTBCDField
      FieldName = 'PART_VOL'
      Origin = '"OTK_ANALIT"."PART_VOL"'
      Precision = 18
      Size = 7
    end
    object OTK_ANALITPART_VOL_AKTIV: TFMTBCDField
      FieldName = 'PART_VOL_AKTIV'
      Origin = '"OTK_ANALIT"."PART_VOL_AKTIV"'
      Precision = 18
      Size = 7
    end
    object OTK_ANALITDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"OTK_ANALIT"."DOC_ID"'
    end
    object OTK_ANALITNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"OTK_ANALIT"."NDOK"'
      Size = 70
    end
    object OTK_ANALITDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"OTK_ANALIT"."DATE_DOK"'
    end
    object OTK_ANALITNAM: TIBStringField
      FieldName = 'NAM'
      Origin = '"SPRORG"."NAM"'
      Size = 50
    end
    object OTK_ANALITVID_KONTROL: TSmallintField
      FieldName = 'VID_KONTROL'
      Origin = '"OTK_ANALIT"."VID_KONTROL"'
    end
    object OTK_ANALITDATE_PROB: TDateField
      FieldName = 'DATE_PROB'
      Origin = '"OTK_ANALIT"."DATE_PROB"'
    end
    object OTK_ANALITDATE_BEGIN: TDateField
      FieldName = 'DATE_BEGIN'
      Origin = '"OTK_ANALIT"."DATE_BEGIN"'
    end
    object OTK_ANALITDATE_END: TDateField
      FieldName = 'DATE_END'
      Origin = '"OTK_ANALIT"."DATE_END"'
    end
    object OTK_ANALITDATE_PASPORT: TDateField
      FieldName = 'DATE_PASPORT'
      Origin = '"OTK_ANALIT"."DATE_PASPORT"'
    end
    object OTK_ANALITSROK_GODN_NTD: TDateField
      FieldName = 'SROK_GODN_NTD'
      Origin = '"OTK_ANALIT"."SROK_GODN_NTD"'
    end
    object OTK_ANALITSROK_GODN_SERT: TDateField
      FieldName = 'SROK_GODN_SERT'
      Origin = '"OTK_ANALIT"."SROK_GODN_SERT"'
    end
    object OTK_ANALITRESULT: TSmallintField
      FieldName = 'RESULT'
      Origin = '"OTK_ANALIT"."RESULT"'
    end
    object OTK_ANALITRESULT_OTK: TSmallintField
      FieldName = 'RESULT_OTK'
      Origin = '"OTK_ANALIT"."RESULT_OTK"'
    end
    object OTK_ANALITGRMEN_FIO: TIBStringField
      FieldName = 'GRMEN_FIO'
      Origin = '"OTK_ANALIT"."GRMEN_FIO"'
    end
    object OTK_ANALITNACH_OTK: TIBStringField
      FieldName = 'NACH_OTK'
      Origin = '"OTK_ANALIT"."NACH_OTK"'
    end
    object OTK_ANALITKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"OTK_ANALIT"."KLIENT_ID"'
    end
    object OTK_ANALITCHEM_FIO: TIBStringField
      FieldName = 'CHEM_FIO'
      Origin = '"OTK_ANALIT"."CHEM_FIO"'
      FixedChar = True
      Size = 100
    end
    object OTK_ANALITCHEM_DOLJNOST: TIBStringField
      FieldName = 'CHEM_DOLJNOST'
      Origin = '"OTK_ANALIT"."CHEM_DOLJNOST"'
      FixedChar = True
      Size = 30
    end
    object OTK_ANALITMBIOL_DOLJNOST: TIBStringField
      FieldName = 'MBIOL_DOLJNOST'
      Origin = '"OTK_ANALIT"."MBIOL_DOLJNOST"'
      FixedChar = True
      Size = 30
    end
    object OTK_ANALITMBIOL_FIO: TIBStringField
      FieldName = 'MBIOL_FIO'
      Origin = '"OTK_ANALIT"."MBIOL_FIO"'
      FixedChar = True
      Size = 30
    end
    object OTK_ANALITBIOL_FIO: TIBStringField
      FieldName = 'BIOL_FIO'
      Origin = '"OTK_ANALIT"."BIOL_FIO"'
      FixedChar = True
      Size = 30
    end
    object OTK_ANALITBIOL_DOLJNOST: TIBStringField
      FieldName = 'BIOL_DOLJNOST'
      Origin = '"OTK_ANALIT"."BIOL_DOLJNOST"'
      FixedChar = True
      Size = 30
    end
    object OTK_ANALITNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object OTK_ANALITPART_KOL: TFMTBCDField
      FieldName = 'PART_KOL'
      Origin = '"OTK_ANALIT"."PART_KOL"'
      Precision = 18
      Size = 6
    end
  end
  object DSotk_analit: TDataSource
    DataSet = OTK_ANALIT
    Left = 112
    Top = 464
  end
  object RxIBQuery1: TRxIBQuery
    Database = BELMED
    Transaction = IBT_Read
    Active = True
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT  NORM.KODP, NORM.KSM_ID, NORM.PLNORM, SPPROD.NMAT NMATP, ' +
        'MATROP.NMAT,STRUK.STNAME,RAZDEL.NAMRAZ,'
      'SPPROD.NMATS,EDIZ.NEIS NEIS_NORM,EDIZM.NEIS NEIS_MAT,'
      'SPFORMV.NAMEFV,SPPROD.KOD_PROD,MATROP.CENA'
      'FROM NORM'
      '   INNER JOIN SPPROD ON (NORM.KODP = SPPROD.KSM_ID)'
      '   INNER JOIN SPFORMV ON (SPPROD.SPFV = SPFORMV.SPFV)'
      '   INNER JOIN MATROP ON (NORM.KSM_ID = MATROP.KSM_ID)'
      '   INNER JOIN RAZDEL ON (NORM.KRAZ =RAZDEL.KRAZ)'
      '   INNER JOIN STRUK ON (spprod.STRUK_ID = STRUK.STRUK_ID)'
      '   INNER JOIN EDIZ EDIZM ON (MATROP.KEI_ID = EDIZM.KEI_ID)'
      '  INNER JOIN EDIZ ON (NORM.KEI_ID = EDIZ.KEI_ID)'
      'WHERE NORM.MES=1'
      '      AND  NORM.GOD=2008'
      '')
    Macros = <>
    Left = 208
    Top = 520
  end
  object DataSource2: TDataSource
    DataSet = RxIBQuery1
    Left = 280
    Top = 518
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'KODP=KODP'
      'KSM_ID=KSM_ID'
      'PLNORM=PLNORM'
      'NMATP=NMATP'
      'NMAT=NMAT'
      'STNAME=STNAME'
      'NAMRAZ=NAMRAZ'
      'NMATS=NMATS'
      'NEIS_NORM=NEIS_NORM'
      'NEIS_MAT=NEIS_MAT'
      'NAMEFV=NAMEFV'
      'KOD_PROD=KOD_PROD'
      'CENA=CENA')
    Left = 360
    Top = 520
  end
  object frxIBXComponents1: TfrxIBXComponents
    DefaultDatabase = BELMED
    Left = 472
    Top = 520
  end
end
