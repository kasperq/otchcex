object FGotProd: TFGotProd
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1043#1086#1090#1086#1074#1072#1103' '#1087#1088#1086#1076#1091#1082#1094#1080#1103
  ClientHeight = 692
  ClientWidth = 1110
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GotProdTab: TPageControl
    Left = 0
    Top = 0
    Width = 1110
    Height = 692
    ActivePage = NaklPage
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsFlatButtons
    TabHeight = 50
    TabOrder = 0
    TabWidth = 140
    OnChange = GotProdTabChange
    object NaklPage: TTabSheet
      Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object VipuskPage: TTabSheet
      Caption = #1042#1099#1087#1091#1089#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object StrukQuery: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT * '
      'FROM ConfigUMC'
      'WHERE tip_sklad_id=5 and active_sklad = 1'
      
        'and (struk_id = 1 or struk_id = 645 or struk_id = 29 or struk_id' +
        ' = 37 '
      
        'or struk_id = 38 or struk_id = 39 or struk_id = 648 or struk_id ' +
        '= 43 '
      
        'or struk_id = 540 or struk_id = 541 or struk_id = 649 or struk_i' +
        'd = 106'
      'or struk_id = 696  or struk_id = 760)'
      'Order by STNAME')
    Left = 776
    Top = 32
    object StrukQueryMES: TSmallintField
      FieldName = 'MES'
      Origin = '"CONFIGUMC"."MES"'
      Required = True
    end
    object StrukQueryGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"CONFIGUMC"."GOD"'
      Required = True
    end
    object StrukQuerySTNAME: TIBStringField
      FieldName = 'STNAME'
      Origin = '"CONFIGUMC"."STNAME"'
      FixedChar = True
    end
    object StrukQuerySTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"CONFIGUMC"."STRUK_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StrukQueryTIP_SKLAD_ID: TSmallintField
      FieldName = 'TIP_SKLAD_ID'
      Origin = '"CONFIGUMC"."TIP_SKLAD_ID"'
    end
    object StrukQueryOTP_RAZR: TIBStringField
      FieldName = 'OTP_RAZR'
      Origin = '"CONFIGUMC"."OTP_RAZR"'
      Size = 40
    end
    object StrukQueryOTTISK: TIBStringField
      FieldName = 'OTTISK'
      Origin = '"CONFIGUMC"."OTTISK"'
      Size = 15
    end
    object StrukQueryOTP_PROIZV: TIBStringField
      FieldName = 'OTP_PROIZV'
      Origin = '"CONFIGUMC"."OTP_PROIZV"'
      Size = 40
    end
    object StrukQueryPUNKT_POGR: TIBStringField
      FieldName = 'PUNKT_POGR'
      Origin = '"CONFIGUMC"."PUNKT_POGR"'
      Size = 40
    end
    object StrukQueryACTIVE_SKLAD: TSmallintField
      FieldName = 'ACTIVE_SKLAD'
      Origin = '"CONFIGUMC"."ACTIVE_SKLAD"'
    end
    object StrukQuerySTKOD: TIBStringField
      FieldName = 'STKOD'
      Origin = '"CONFIGUMC"."STKOD"'
      FixedChar = True
      Size = 4
    end
    object StrukQueryPRECISION: TSmallintField
      FieldName = 'PRECISION'
      Origin = '"CONFIGUMC"."PRECISION"'
    end
  end
  object DSStrukQuery: TDataSource
    DataSet = StrukQuery
    Left = 816
    Top = 32
  end
  object q_seria: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
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
    UpdateObject = IBUpdateSeria
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 386
    Top = 17
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
    Left = 384
    Top = 67
  end
  object DS_Seria: TDataSource
    DataSet = q_seria
    Left = 384
    Top = 123
  end
end
