object PrihDM: TPrihDM
  OldCreateOrder = False
  Height = 815
  Width = 1017
  object IBQuery1: TRxIBQuery
    Database = TempDM.db
    Transaction = TempDM.trans_read
    Macros = <>
    Left = 168
    Top = 24
  end
  object Kart: TRxIBQuery
    Database = TempDM.db
    Transaction = TempDM.trans_read
    BeforeInsert = KartBeforeInsert
    BeforePost = KartBeforePost
    OnNewRecord = KartNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT KART.DOC_ID, KART.STROKA_ID, KART.KSM_ID,  KART.KOL_PRIH,' +
        ' KART.KOL_RASH,'
      
        'KART.KART_ID, KART.PARENT,  KART.RAZDEL_ID, kart.cena, kart.cena' +
        '_vp, kart.kol_prih_ediz, kol_rash_ediz,'
      
        'OSTATKI.SERIA_ID,  OSTATKI.ONM_NZ, OSTATKI.OT_S, OSTATKI.ONM_S, ' +
        'OSTATKI.OT_NZ, razdel.namraz,'
      'ED2.NEIS, ED1.NEIS NEISN,  SERIA.SERIA, SERIA.SROK_GODN,'
      
        'OSTATKI.GOD, OSTATKI.MES, ostatki.ksm_idpr, ostatki.struk_id ost' +
        '_struk_id,'
      
        'DOCUMENT.STRUK_ID, DOCUMENT.NDOK, DOCUMENT.TIP_OP_ID, DOCUMENT.D' +
        'ATE_OP, DOCUMENT.DATE_DOK,'
      'DOCUMENT.TIP_DOK_ID, DOCUMENT.KLIENT_ID,'
      'TIP_OPER.NAM_OP,'
      'RAZDEL.KRAZ, SPPROD.KOD_PROD,'
      
        'MATROP.NMAT, MATROP.GOST, MATROP.XARKT, MATROP.KEI_ID, ED1.KEI_I' +
        'D KEI_IDN,'
      'ostatki.cena_uch'
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
    Left = 304
    Top = 24
    object KartKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
    end
    object KartKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"MATROP"."KEI_ID"'
    end
    object KartKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
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
    object KartSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
      Origin = '"OSTATKI"."SERIA_ID"'
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
    object KartXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"MATROP"."XARKT"'
      Size = 30
    end
    object KartKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object KartKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
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
    object KartKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      Origin = '"KART"."KOL_PRIH_EDIZ"'
    end
    object KartKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      Origin = '"KART"."KOL_RASH_EDIZ"'
    end
    object KartONM_NZ: TFMTBCDField
      FieldName = 'ONM_NZ'
      Origin = '"OSTATKI"."ONM_NZ"'
      Precision = 18
      Size = 6
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
    object KartOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object KartNAMRAZ: TIBStringField
      FieldName = 'NAMRAZ'
      Origin = '"RAZDEL"."NAMRAZ"'
      Size = 60
    end
    object KartGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"MATROP"."GOST"'
      Size = 60
    end
    object KartKEI_IDN: TSmallintField
      FieldName = 'KEI_IDN'
      Origin = '"EDIZ"."KEI_ID"'
    end
    object KartOST_STRUK_ID: TIntegerField
      FieldName = 'OST_STRUK_ID'
      Origin = '"OSTATKI"."STRUK_ID"'
    end
    object KartCENA_UCH: TFloatField
      FieldName = 'CENA_UCH'
      Origin = '"OSTATKI"."CENA_UCH"'
    end
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
      '  KEI_ID = :KEI_ID,  '
      '  KOL_PRIH = :KOL_PRIH,'
      '  KOL_PRIH_EDIZ = :KOL_PRIH_EDIZ,'
      '  KOL_RASH = :KOL_RASH,'
      '  KOL_RASH_EDIZ = :KOL_RASH_EDIZ,'
      '  KSM_ID = :KSM_ID,'
      '  RAZDEL_ID = :RAZDEL_ID,'
      '  STROKA_ID = :STROKA_ID,'
      '  CENA = :CENA, '
      '  CENA_VP = :CENA_VP'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    InsertSQL.Strings = (
      'insert into KART'
      '  ( DOC_ID, KART_ID, KEI_ID, KOL_PRIH, KOL_PRIH_EDIZ, KOL_RASH, '
      '   KOL_RASH_EDIZ, KSM_ID, RAZDEL_ID, STROKA_ID, CENA, CENA_VP)'
      'values'
      '  ( :DOC_ID, :KART_ID, :KEI_ID, :KOL_PRIH, :KOL_PRIH_EDIZ, '
      '   :KOL_RASH, :KOL_RASH_EDIZ, :KSM_ID, :RAZDEL_ID, :STROKA_ID,'
      '   :CENA, :CENA_VP)')
    DeleteSQL.Strings = (
      'delete from KART'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = TempDM.trans_write
    Left = 304
    Top = 72
  end
  object ADD_KartDok: TIBStoredProc
    Database = TempDM.db
    Transaction = TempDM.trans_read
    StoredProcName = 'ADD_KART'
    Left = 32
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STROKA_ID'
        ParamType = ptOutput
      end>
  end
  object IBdel: TIBQuery
    Database = TempDM.db
    Transaction = TempDM.trans_read
    Left = 392
    Top = 24
  end
  object Document: TRxIBQuery
    Database = TempDM.db
    Transaction = TempDM.trans_read
    BeforeDelete = DocumentBeforeDelete
    BeforeInsert = DocumentBeforeInsert
    OnNewRecord = DocumentNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT DOCUMENT.TIP_DOK_ID, DOCUMENT.NDOK, DOCUMENT.DOC_ID, DOCU' +
        'MENT.DATE_OP,'
      
        'DOCUMENT.DATE_DOK, DOCUMENT.KLIENT_ID, SPRORG.NAM, document.dok_' +
        'osn_id,'
      
        'DOCUMENT.TIP_OP_ID, SPRORG.ADRES, DOCUMENT.DATE_VVOD,  DOCUMENT.' +
        'STRUK_ID, DOCUMENT.ZADACHA_ID'
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
    Left = 232
    Top = 24
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
    object DocumentDOK_OSN_ID: TIntegerField
      FieldName = 'DOK_OSN_ID'
      Origin = '"DOCUMENT"."DOK_OSN_ID"'
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
      '  ZADACHA_ID = :ZADACHA_ID,'
      '  DOK_OSN_ID = :DOK_OSN_ID'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    InsertSQL.Strings = (
      'insert into DOCUMENT'
      
        '  (DATE_DOK, DATE_OP, DOC_ID, KLIENT_ID, NDOK, STRUK_ID, TIP_DOK' +
        '_ID, TIP_OP_ID, '
      '   ZADACHA_ID, DOK_OSN_ID)'
      'values'
      
        '  (:DATE_DOK, :DATE_OP, :DOC_ID, :KLIENT_ID, :NDOK, :STRUK_ID, :' +
        'TIP_DOK_ID, '
      '   :TIP_OP_ID, :ZADACHA_ID, :DOK_OSN_ID)')
    DeleteSQL.Strings = (
      'delete from DOCUMENT'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    AutoCommit = False
    UpdateTransaction = TempDM.trans_write
    Left = 232
    Top = 72
  end
end
