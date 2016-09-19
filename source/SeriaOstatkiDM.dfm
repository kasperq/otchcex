object SerOstDM: TSerOstDM
  OldCreateOrder = False
  Height = 886
  Width = 1054
  object AddSeria: TIBStoredProc
    Database = dDM.db
    Transaction = dDM.trans_read
    StoredProcName = 'ADD_SERIA'
    Left = 40
    Top = 200
  end
  object Add_Ostatki: TIBStoredProc
    Database = dDM.db
    Transaction = dDM.trans_read
    StoredProcName = 'ADD_OSTATKI'
    Left = 40
    Top = 256
  end
  object q_seria: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BeforeInsert = q_seriaBeforeInsert
    OnNewRecord = q_seriaNewRecord
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
    UpdateObject = upd_seria
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 194
    Top = 321
    ParamData = <
      item
        DataType = ftInteger
        Name = 'KSM_ID'
        ParamType = ptInput
      end>
    object q_seriaSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
      Origin = '"SERIA"."SERIA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_seriaKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SERIA"."KSM_ID"'
      Required = True
    end
    object q_seriaSERIA: TIBStringField
      FieldName = 'SERIA'
      Origin = '"SERIA"."SERIA"'
    end
    object q_seriaSROK_GODN: TDateField
      FieldName = 'SROK_GODN'
      Origin = '"SERIA"."SROK_GODN"'
    end
    object q_seriaSERTIF: TIBStringField
      FieldName = 'SERTIF'
      Origin = '"SERIA"."SERTIF"'
      Size = 25
    end
    object q_seriaDATE_SERTIF: TDateField
      FieldName = 'DATE_SERTIF'
      Origin = '"SERIA"."DATE_SERTIF"'
    end
    object q_seriaPASPORT: TIBStringField
      FieldName = 'PASPORT'
      Origin = '"SERIA"."PASPORT"'
      FixedChar = True
      Size = 10
    end
    object q_seriaDATE_PASPORT: TDateField
      FieldName = 'DATE_PASPORT'
      Origin = '"SERIA"."DATE_PASPORT"'
    end
    object q_seriaKOL_SERIA: TFMTBCDField
      FieldName = 'KOL_SERIA'
      Origin = '"SERIA"."KOL_SERIA"'
      Precision = 18
      Size = 6
    end
    object q_seriaDATE_VIPUSK: TDateField
      FieldName = 'DATE_VIPUSK'
      Origin = '"SERIA"."DATE_VIPUSK"'
    end
    object q_seriaFORMA_VIPUSK: TIBStringField
      FieldName = 'FORMA_VIPUSK'
      Origin = '"SERIA"."FORMA_VIPUSK"'
      Size = 100
    end
    object q_seriaKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"SERIA"."KEI_ID"'
    end
    object q_seriaDATE_TIME_UPDATE: TDateTimeField
      FieldName = 'DATE_TIME_UPDATE'
      Origin = '"SERIA"."DATE_TIME_UPDATE"'
    end
    object q_seriaUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"SERIA"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object q_seriaSHEMA: TIBStringField
      FieldName = 'SHEMA'
      Origin = '"SERIA"."SHEMA"'
      FixedChar = True
      Size = 3
    end
    object q_seriaKODTN: TIBStringField
      FieldName = 'KODTN'
      Origin = '"SERIA"."KODTN"'
      FixedChar = True
      Size = 10
    end
    object q_seriaDATE_ZAG: TDateField
      FieldName = 'DATE_ZAG'
      Origin = '"SERIA"."DATE_ZAG"'
    end
    object q_seriaFIO_RASH: TIBStringField
      FieldName = 'FIO_RASH'
      Origin = '"SERIA"."FIO_RASH"'
      Size = 30
    end
    object q_seriaFIO_MASTER: TIBStringField
      FieldName = 'FIO_MASTER'
      Origin = '"SERIA"."FIO_MASTER"'
      Size = 30
    end
    object q_seriaCOMMENT: TIBStringField
      FieldName = 'COMMENT'
      Origin = '"SERIA"."COMMENT"'
      Size = 120
    end
    object q_seriaOB_ZAG: TFloatField
      FieldName = 'OB_ZAG'
      Origin = '"SERIA"."OB_ZAG"'
    end
    object q_seriaVLAG_TM: TFloatField
      FieldName = 'VLAG_TM'
      Origin = '"SERIA"."VLAG_TM"'
    end
    object q_seriaKOD_TM: TIntegerField
      FieldName = 'KOD_TM'
      Origin = '"SERIA"."KOD_TM"'
    end
    object q_seriaKOL_TM: TFloatField
      FieldName = 'KOL_TM'
      Origin = '"SERIA"."KOL_TM"'
      DisplayFormat = '########0.0#####'
    end
  end
  object upd_seria: TIBUpdateSQLW
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
    UpdateTransaction = dDM.trans_write
    Left = 192
    Top = 371
  end
  object q_ostatki: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BeforeInsert = q_ostatkiBeforeInsert
    OnNewRecord = q_ostatkiNewRecord
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
      'and %usl')
    UpdateObject = upd_ostatki
    GeneratorField.Field = 'KART_ID'
    GeneratorField.Generator = 'G_OSTATKI'
    GeneratorField.ApplyEvent = gamOnServer
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
      end>
    Left = 371
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STRUK_ID'
        ParamType = ptInput
      end>
    object q_ostatkiKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"MATROP"."KEI_ID"'
    end
    object q_ostatkiRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object q_ostatkiKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"OSTATKI"."KSM_ID"'
      Required = True
    end
    object q_ostatkiKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object q_ostatkiMES: TSmallintField
      FieldName = 'MES'
      Origin = '"OSTATKI"."MES"'
      Required = True
    end
    object q_ostatkiGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"OSTATKI"."GOD"'
      Required = True
    end
    object q_ostatkiONM_FD: TFMTBCDField
      FieldName = 'ONM_FD'
      Origin = '"OSTATKI"."ONM_FD"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiONM_NZ: TFMTBCDField
      FieldName = 'ONM_NZ'
      Origin = '"OSTATKI"."ONM_NZ"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiONM_S: TFMTBCDField
      FieldName = 'ONM_S'
      Origin = '"OSTATKI"."ONM_S"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiOT_FD: TFMTBCDField
      FieldName = 'OT_FD'
      Origin = '"OSTATKI"."OT_FD"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
      Origin = '"OSTATKI"."SERIA_ID"'
    end
    object q_ostatkiSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
      Origin = '"OSTATKI"."STRUK_ID"'
      Required = True
    end
    object q_ostatkiUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"OSTATKI"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object q_ostatkiKOL_TRANS: TFloatField
      FieldName = 'KOL_TRANS'
      Origin = '"OSTATKI"."KOL_TRANS"'
    end
    object q_ostatkiKOL_GRP: TFloatField
      FieldName = 'KOL_GRP'
      Origin = '"OSTATKI"."KOL_GRP"'
    end
    object q_ostatkiVES_TRANS: TIBBCDField
      FieldName = 'VES_TRANS'
      Origin = '"OSTATKI"."VES_TRANS"'
      Precision = 9
      Size = 2
    end
    object q_ostatkiNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
    object q_ostatkiNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object q_ostatkiKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"OSTATKI"."KART_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_ostatkiOT_DOKUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OT_DOKUM'
      Origin = '"OSTATKI"."OT_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
    end
    object q_ostatkiONM_DOKUM: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ONM_DOKUM'
      Origin = '"OSTATKI"."ONM_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object q_ostatkiNOMU_ID_TRANS: TSmallintField
      FieldName = 'NOMU_ID_TRANS'
      Origin = '"OSTATKI"."NOMU_ID_TRANS"'
    end
    object q_ostatkiNOMU_ID_GRP: TSmallintField
      FieldName = 'NOMU_ID_GRP'
      Origin = '"OSTATKI"."NOMU_ID_GRP"'
    end
    object q_ostatkiVOL_TRANS: TFMTBCDField
      FieldName = 'VOL_TRANS'
      Origin = '"OSTATKI"."VOL_TRANS"'
      Precision = 18
      Size = 6
    end
  end
  object upd_ostatki: TIBUpdateSQLW
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
    UpdateTransaction = dDM.trans_write
    Left = 365
    Top = 372
  end
end
