object FChooseKart: TFChooseKart
  Left = 0
  Top = 0
  Caption = 'FChooseKart'
  ClientHeight = 345
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 510
    Height = 41
    Align = alTop
    TabOrder = 0
    Visible = False
    ExplicitLeft = 48
    ExplicitTop = 8
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 510
    Height = 263
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 48
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 508
      Height = 261
      Align = alClient
      AutoFitColWidths = True
      DataSource = ds_prepKart
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'KSM_ID'
          Footers = <>
          Title.Caption = #1050#1086#1076' '#1089#1099#1088#1100#1103
        end
        item
          EditButtons = <>
          FieldName = 'KART_ID'
          Footers = <>
          Title.Caption = #1053#1086#1084#1077#1088' '#1082#1072#1088#1090#1086#1095#1082#1080
        end
        item
          EditButtons = <>
          FieldName = 'ONM_NZ'
          Footers = <>
          Title.Caption = #1054#1089#1090'. '#1085#1072' '#1085#1072#1095'. '#1084#1077#1089'. '#1074' '#1085'/'#1079
        end
        item
          EditButtons = <>
          FieldName = 'OT_NZ'
          Footers = <>
          Title.Caption = #1058#1077#1082#1091#1097#1080#1081' '#1086#1089#1090'. '#1074' '#1085'/'#1079
        end
        item
          EditButtons = <>
          FieldName = 'OT_S'
          Footers = <>
          Title.Caption = #1058#1077#1082#1091#1097#1080#1081' '#1086#1089#1090'. '#1074' '#1089#1099#1088'.'
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 304
    Width = 510
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 40
    ExplicitTop = 232
    ExplicitWidth = 185
    DesignSize = (
      510
      41)
    object btn_ok: TBitBtn
      Left = 290
      Top = 6
      Width = 105
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 0
      OnClick = btn_okClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF1948011A4C011A4E001A4C01194801194801FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF266F011F5E00246E002876012A
        78032876012570002061001A4B011A4B01FF00FFFF00FFFF00FFFF00FFFF00FF
        236203266F01348C0844B70A54E40C57FF0353FC004BCD0A39970A2774001D56
        00174202FF00FFFF00FFFF00FF2871032A77033DA80861EC1BFFFFFF60E02055
        DA1359E612FFFFFFFFFFFF4BC70D2A7A021C5600194901FF00FFFF00FF287103
        3CA6075EFF0E5EEF163FA50C32810B4DC7112C780635850E53D115FFFFFF4CC8
        0E287501194901FF00FF246A0233870957F608FFFFFF3794082F7D0855DE10FF
        FFFF36870D27750029770253D115FFFFFF39960A2061001B4F012973043DAD05
        FFFFFF4BD00835910757E61072C24958E61148BD0E27780027770035810EFFFF
        FF4BCE0A2570001B4F012E790846CA05FFFFFF3CB00349CF065CFF0B3BA20834
        8D0859E612317E0B2879002877005AE01754FD002977021C520132810A4CD507
        FFFFFF3BB100339900369C032F84052D7F0447C50841B00A2A7B0128790056DA
        1358FF042C7A061C550033810B4BDB02FFFFFF41C500309000319400318F0230
        870431880645C1072E7E072E7C075EF01452EF042A77031D53012F7A0A49D106
        FFFFFF53FA00329700319500329700319101308704379906348F0740AD0AFFFF
        FF46BD0A2672011B4F01FF00FF33830C58FF05FFFFFF47D80032970030910030
        9200308C022E84033DA9075AFF0760ED1A369207226501FF00FFFF00FF33830C
        4EEC005BFF09FFFFFF53F90041C4003BB1013DB9004ADB02FFFFFFFFFFFF3EAB
        082A7504226501FF00FFFF00FFFF00FF3B9D0A50F1005CFF0BFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF57F5073EAC072D7A07246602FF00FFFF00FFFF00FFFF00FF
        FF00FF35870D48CA0751F30053FA0056F40751EA0446C7053795082B77052B77
        05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF34830C3A9C0A3B
        9E09368D0A2E7909297403FF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btn_cancel: TBitBtn
      Left = 394
      Top = 6
      Width = 105
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = btn_cancelClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF033B8A033D90013D95023B91033A89033A89FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0357D30147B20051D0035CE007
        63E3035CE0004ED30042B7023A8F023A8FFF00FFFF00FFFF00FFFF00FFFF00FF
        0650BA0357D32781F278B4F7CAE2FCE9F4FFDCEDFF9CC7FA3F8FF20155DD0140
        A404367DFF00FFFF00FFFF00FF075DD70762E155A0F7F3F8FEFFFFFFE9F3FCC6
        DEFAD9E9FCFFFFFFFFFFFF99C5F8055DE70040A302398BFF00FFFF00FF075DD7
        529EF7FEFEFFE2EFFC0F65EB0558E70959E50250E20454E16FA6F0DEEBFC9CC9
        F80355DE02398BFF00FF0455C9207DF0E1EFFEFFFFFF6FA7F076AFF7176CED06
        5AE9075AE60F5EE66AA1F06FA7F0FFFFFF3E8FF20043B7033E96085FDA56A1FA
        FFFFFF9ECBFB1573F779B4FACFE3FC1C72EF2274EECBE1FB6DA5F20556E3DEEB
        FC9FCBFA0050D4033E960F6BE68BC1FCFFFFFF2987FC1F7DFA1674F779B5FADE
        EDFEDDEDFC6EAAF4065AE90455E5A0C5F6DEEFFF0560E202409C1B76EDA4CFFC
        FFFFFF2988FF1C7EFE1C7BFB2D87FBEDF6FEEDF6FE2279F20B63ED085DEA88BA
        F4EBF6FF0C68E60141A1207AEBA5CFFEFFFFFF3F97FF1F81FF3B93FEE1EFFF6B
        ADFC69ABFBE0EEFE2C80F30C65EEC6DEFBCEE5FE0763E203419E146FE79ACAFC
        FFFFFFB2D8FF318EFFE7F3FF67AFFF1D7EFE1A7AFB60A7FCE5F2FE3F8FF6E2EF
        FE81BAF80258D8033E96FF00FF237BEBEDF6FFFAFCFF5DA9FF469AFF1F81FF1F
        81FF1E80FF1C7DFC4D9CFBF0F8FFF2F8FE3089F4024FC0FF00FFFF00FF237BEB
        BFDEFFF3F8FFFAFCFFB0D5FF3E96FF2B89FF308CFF6AB0FEFAFCFFFFFFFF5DA6
        F70860DE024FC0FF00FFFF00FFFF00FF4997F3C7E3FFF7FBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE0EFFE5CA5F80E6BE70552C2FF00FFFF00FFFF00FFFF00FF
        FF00FF2D82EB91C5FBCCE6FFD9EDFFDCEDFEC4E0FE86BFFC348BF40A65E10A65
        E1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF247BEB4696F34A
        98F42F87F0116CE6075FDCFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object q_prepKart: TRxIBQuery
    Database = db
    Transaction = trans_read
    SQL.Strings = (
      
        'select ostatki.struk_id, ostatki.ksm_id, ostatki.onm_nz, ostatki' +
        '.ot_s, ostatki.ot_nz,'
      
        'ostatki.kart_id, ostatki.ksm_idpr, ostatki.razdel_id, ostatki.ac' +
        'count'
      'from ostatki'
      'where ostatki.struk_id = :struk_id'
      'and ostatki.ksm_idpr = :ksm_idpr'
      'and ostatki.razdel_id = :razdel_id'
      'and ostatki.ksm_id = :ksm_id')
    Macros = <>
    Left = 160
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ksm_idpr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'razdel_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ksm_id'
        ParamType = ptUnknown
      end>
    object q_prepKartSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
      Origin = '"OSTATKI"."STRUK_ID"'
      Required = True
    end
    object q_prepKartKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"OSTATKI"."KSM_ID"'
      Required = True
    end
    object q_prepKartONM_NZ: TFMTBCDField
      FieldName = 'ONM_NZ'
      Origin = '"OSTATKI"."ONM_NZ"'
      Precision = 18
      Size = 6
    end
    object q_prepKartOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object q_prepKartOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object q_prepKartKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"OSTATKI"."KART_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_prepKartKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object q_prepKartRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object q_prepKartACCOUNT: TIBStringField
      FieldName = 'ACCOUNT'
      Origin = '"OSTATKI"."ACCOUNT"'
      FixedChar = True
      Size = 5
    end
  end
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
  object ds_prepKart: TDataSource
    DataSet = q_prepKart
    Left = 176
    Top = 136
  end
end
