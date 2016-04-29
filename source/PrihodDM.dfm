object PrihDM: TPrihDM
  OldCreateOrder = False
  Height = 815
  Width = 1017
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
    DefaultDatabase = db
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 80
  end
  object IBQuery1: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 168
    Top = 24
  end
  object Kart: TRxIBQuery
    Database = db
    Transaction = trans_read
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
    UpdateTransaction = trans_write
    Left = 304
    Top = 72
  end
  object trans_write: TIBTransaction
    DefaultDatabase = db
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 128
  end
  object ADD_KartDok: TIBStoredProc
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
  object Seria: TRxIBQuery
    Database = db
    Transaction = trans_read
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
      ' AND  %usl'
      '')
    UpdateObject = IBUpdateSeria
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 386
    Top = 25
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
    end
    object SeriaKOL_TM: TFloatField
      FieldName = 'KOL_TM'
      Origin = '"SERIA"."KOL_TM"'
      DisplayFormat = '########0.0#####'
    end
  end
  object IBUpdateSeria: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'SELECT Seria.COMMENT,Seria. DATE_PASPORT, Seria.DATE_SERTIF,'
      'Seria. DATE_TIME_UPDATE,Seria. DATE_VIPUSK, Seria.DATE_ZAG,'
      
        ' Seria.FIO_MASTER,Seria. FIO_RASH, Seria.FORMA_VIPUSK,Seria. KEI' +
        '_ID,'
      
        ' Seria.KOD_TM, Seria.KODTN, Seria.KOL_SERIA,Seria. KOL_TM, Seria' +
        '.KSM_ID,'
      
        ' Seria.OB_ZAG, Seria.PASPORT, Seria.SERIA, Seria.SERIA_ID, Seria' +
        '.SERTIF,'
      
        ' Seria.SHEMA,Seria. SROK_GODN, Seria.USER_NAME,Seria. VLAG_TM,DA' +
        'TE_VIPUSK,'
      'Seria.COMMENT'
      ' FROM Seria'
      'where seria_id=:seria_id'
      '')
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
      '  VLAG_TM = :VLAG_TM,'
      '  DATE_VIPUSK=:DATE_VIPUSK,'
      '  COMMENT = :COMMENT'
      'where'
      '  SERIA_ID = :OLD_SERIA_ID')
    InsertSQL.Strings = (
      'insert into Seria'
      
        '  (DATE_ZAG, FIO_MASTER, FIO_RASH, FORMA_VIPUSK, KOD_TM, KOL_SER' +
        'IA, KOL_TM, '
      
        '   KSM_ID, OB_ZAG, SERIA, SERIA_ID, SROK_GODN, VLAG_TM,DATE_VIPU' +
        'SK, COMMENT)'
      'values'
      
        '  (:DATE_ZAG, :FIO_MASTER, :FIO_RASH, :FORMA_VIPUSK, :KOD_TM, :K' +
        'OL_SERIA, '
      
        '   :KOL_TM, :KSM_ID, :OB_ZAG, :SERIA, :SERIA_ID, :SROK_GODN, :VL' +
        'AG_TM,:DATE_VIPUSK, :COMMENT)')
    DeleteSQL.Strings = (
      'delete from Seria'
      'where'
      '  SERIA_ID = :OLD_SERIA_ID')
    AutoCommit = False
    UpdateTransaction = trans_write
    Left = 384
    Top = 75
  end
  object Ostatki: TRxIBQuery
    Database = db
    Transaction = trans_read
    BeforeInsert = OstatkiBeforeInsert
    OnNewRecord = OstatkiNewRecord
    CachedUpdates = True
    SQL.Strings = (
      'SELECT Ost.KART_ID, matrop.KEI_ID, Ost.RAZDEL_ID,'
      'Ost.KSM_ID, Ost.KSM_IDPR, ost.mes, ost.god,'
      'Ost.ONM_FD, Ost.ONM_NZ, Ost.ONM_S, Ost.OT_FD, Ost.OT_NZ,'
      'Ost.OT_S, Ost.SERIA_ID, Ost.STRUK_ID,'
      'Ost.USER_NAME, Ost.OT_DOKUM, Ost.ONM_DOKUM,'
      'ost.nomu_id_trans, ost.kol_trans, ost.nomu_id_grp, ost.kol_grp, '
      'ost.ves_trans, ost.vol_trans,'
      'Matrop.NMAT, Ediz.NEIS'
      'FROM OSTATKI Ost'
      'INNER JOIN Matrop ON Ost.KSM_ID = Matrop.KSM_ID'
      'INNER JOIN Ediz ON Matrop.KEI_ID = Ediz.KEI_ID'
      'LEFT JOIN Seria ON Ost.SERIA_ID = Seria.SERIA_ID'
      'WHERE Ost.STRUK_ID = :STRUK_ID'
      ' %usl')
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
    Left = 563
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STRUK_ID'
        ParamType = ptInput
      end>
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
    object OstatkiKOL_TRANS: TFloatField
      FieldName = 'KOL_TRANS'
      Origin = '"OSTATKI"."KOL_TRANS"'
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
    object OstatkiKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"OSTATKI"."KART_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object OstatkiOT_DOKUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OT_DOKUM'
      Origin = '"OSTATKI"."OT_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
    end
    object OstatkiONM_DOKUM: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ONM_DOKUM'
      Origin = '"OSTATKI"."ONM_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object OstatkiNOMU_ID_TRANS: TSmallintField
      FieldName = 'NOMU_ID_TRANS'
      Origin = '"OSTATKI"."NOMU_ID_TRANS"'
    end
    object OstatkiNOMU_ID_GRP: TSmallintField
      FieldName = 'NOMU_ID_GRP'
      Origin = '"OSTATKI"."NOMU_ID_GRP"'
    end
    object OstatkiVOL_TRANS: TFMTBCDField
      FieldName = 'VOL_TRANS'
      Origin = '"OSTATKI"."VOL_TRANS"'
      Precision = 18
      Size = 6
    end
  end
  object OstatkiUpdate: TIBUpdateSQLW
    RefreshSQL.Strings = (
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
      'WHERE Ost.struk_id = :STRUK_ID ')
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
      ' '
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
      '   NOMU_ID_TRANS, RAZDEL_ID, '
      '   SERIA_ID, STRUK_ID, VES_TRANS, VOL_TRANS,mes,god)'
      'values'
      '  ( :KART_ID, :KOL_GRP, :KOL_TRANS, :KSM_ID, :KSM_IDPR,  '
      '   :NOMU_ID_GRP, :NOMU_ID_TRANS,  '
      
        '   :RAZDEL_ID, :SERIA_ID, :STRUK_ID, :VES_TRANS, :VOL_TRANS,:mes' +
        ',:god)')
    DeleteSQL.Strings = (
      'delete from Ostatki'
      'where'
      '  KART_ID = :OLD_KART_ID')
    AutoCommit = False
    UpdateTransaction = trans_write
    Left = 557
    Top = 76
  end
  object AddSeria: TIBStoredProc
    StoredProcName = 'ADD_SERIA'
    Left = 32
    Top = 248
  end
  object Add_Ostatki: TIBStoredProc
    StoredProcName = 'ADD_OSTATKI'
    Left = 32
    Top = 304
  end
  object IBdel: TIBQuery
    Database = db
    Transaction = trans_read
    Left = 392
    Top = 136
  end
  object Document: TRxIBQuery
    Database = db
    Transaction = trans_read
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
    UpdateTransaction = trans_write
    Left = 232
    Top = 72
  end
end
