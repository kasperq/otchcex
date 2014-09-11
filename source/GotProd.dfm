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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
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
      'or struk_id = 696 )'
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
end
