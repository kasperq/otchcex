object FVibSyr: TFVibSyr
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1089#1099#1088#1100#1103
  ClientHeight = 580
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 737
    Height = 492
    Align = alClient
    AutoFitColWidths = True
    DataSource = DSostprep
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clNavy
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = [fsBold]
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghRowHighlight]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleHeight = 25
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'VIB'
        Footers = <>
        KeyList.Strings = (
          '1'
          '0')
        PickList.Strings = (
          '')
        Title.Caption = #1042#1099#1073#1086#1088
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'KRAZ'
        Footers = <>
        Title.Caption = #1056#1072#1079#1076
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'KSM_ID'
        Footers = <>
        Title.Caption = #1050#1086#1076' '#1089#1099#1088#1100#1103' '
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'NMAT'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 205
      end
      item
        EditButtons = <>
        FieldName = 'NEIS'
        Footers = <>
        Title.Caption = #1045#1076'. '#1080#1079#1084'.'
        Width = 41
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'OSTATOK_END_S'
        Footers = <>
        Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'|'#1074' '#1089#1099#1088#1100#1077
        Width = 85
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'OSTATOK_END_NZ'
        Footers = <>
        Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'|'#1074' '#1085'/'#1079
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 549
    Width = 737
    Height = 31
    Align = alBottom
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    DesignSize = (
      737
      31)
    object SpeedButton1: TSpeedButton
      Left = 575
      Top = 0
      Width = 79
      Height = 30
      Hint = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100' '#1074#1099#1073#1086#1088' '#1087#1088#1086#1076#1091#1082#1094#1080#1080' '#1080' '#1074#1099#1081#1090#1080
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Flat = True
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
      OnClick = SpeedButton1Click
      ExplicitLeft = 546
    end
    object SpeedButton2: TSpeedButton
      Left = 660
      Top = 0
      Width = 78
      Height = 30
      Hint = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103' '#1086#1090' '#1074#1099#1073#1086#1088#1072' '#1080' '#1074#1099#1081#1090#1080
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Flat = True
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
      OnClick = SpeedButton2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 264
      Top = 22
      Width = 88
      Height = 13
      Margins.Bottom = 0
      Caption = '  '#1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1090#1100':'
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 509
      Top = 22
      Width = 31
      Height = 13
      Margins.Bottom = 0
      Caption = 'Label2'
      Layout = tlCenter
    end
    object SpeedButton3: TSpeedButton
      Left = 480
      Top = 18
      Width = 23
      Height = 22
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        96000000424D960000000000000076000000280000000A000000040000000100
        0400000000002000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFF00
        000000FF00FF0000000000FF00FF00000000FFFFFFFFFF000000}
      Layout = blGlyphBottom
      ParentFont = False
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object RadioGroup1: TRadioGroup
      Left = 13
      Top = 2
      Width = 245
      Height = 49
      Caption = #1050#1072#1082' '#1074#1099#1073#1080#1088#1072#1090#1100
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #1086#1076#1085#1086
        #1074#1089#1077
        #1087#1086#1084#1077#1095#1077#1085#1085#1086#1077)
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object Edit1: TEdit
      Left = 358
      Top = 18
      Width = 123
      Height = 22
      Color = clWhite
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object ostprep1: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      
        'SELECT  ost.OSTATOK_END_S,ost.ksm_id,ost.nmat,ost.OSTATOK_END_nz' +
        ',ost.neis,'
      'ost.kei_id,razdel.kraz, ost.razdel_id,'
      'cast(0 as integer) as vib'
      '  FROM  SELECT_OST_KSM (:dat1,:dat2,:kodp,:STRUK,0) ost'
      '  inner join razdel on (ost.razdel_id=razdel.razdel_id)'
      ''
      '  order by razdel.kraz,nmat')
    Left = 199
    Top = 134
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STRUK'
        ParamType = ptUnknown
      end>
    object ostprep1OSTATOK_END_S: TFMTBCDField
      FieldName = 'OSTATOK_END_S'
      Origin = '"SELECT_OST_KSM"."OSTATOK_END_S"'
      Precision = 18
      Size = 6
    end
    object ostprep1KSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SELECT_OST_KSM"."KSM_ID"'
    end
    object ostprep1NMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SELECT_OST_KSM"."NMAT"'
      Size = 60
    end
    object ostprep1OSTATOK_END_NZ: TFMTBCDField
      FieldName = 'OSTATOK_END_NZ'
      Origin = '"SELECT_OST_KSM"."OSTATOK_END_NZ"'
      Precision = 18
      Size = 6
    end
    object ostprep1NEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"SELECT_OST_KSM"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object ostprep1KEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"SELECT_OST_KSM"."KEI_ID"'
    end
    object ostprep1KRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
    object ostprep1RAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"SELECT_OST_KSM"."RAZDEL_ID"'
    end
    object ostprep1VIB: TIntegerField
      FieldName = 'VIB'
      ProviderFlags = []
    end
  end
  object DSostprep: TDataSource
    DataSet = ostprep
    Left = 264
    Top = 138
  end
  object ostprep: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    AutoCalcFields = False
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT  ost.OSTATOK_END_S,ost.ksm_id,ost.nmat,ost.OSTATOK_END_nz' +
        ',ost.neis,'
      'ost.kei_id,razdel.kraz, ost.razdel_id,'
      'cast(0 as integer) as vib'
      '  FROM  SELECT_OST_KSM (:dat1,:dat2,:kodp,:STRUK,0) ost'
      '  inner join razdel on (ost.razdel_id=razdel.razdel_id)'
      ''
      '  order by razdel.kraz,nmat')
    UpdateObject = OstprepUpdate
    Macros = <>
    Left = 256
    Top = 287
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DAT1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DAT2'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'kodp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STRUK'
        ParamType = ptUnknown
      end>
    object ostprepOSTATOK_END_S: TFMTBCDField
      FieldName = 'OSTATOK_END_S'
      Origin = '"SELECT_OST_KSM"."OSTATOK_END_S"'
      Precision = 18
      Size = 6
    end
    object ostprepKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SELECT_OST_KSM"."KSM_ID"'
    end
    object ostprepNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SELECT_OST_KSM"."NMAT"'
      Size = 60
    end
    object ostprepOSTATOK_END_NZ: TFMTBCDField
      FieldName = 'OSTATOK_END_NZ'
      Origin = '"SELECT_OST_KSM"."OSTATOK_END_NZ"'
      Precision = 18
      Size = 6
    end
    object ostprepNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"SELECT_OST_KSM"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object ostprepKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"SELECT_OST_KSM"."KEI_ID"'
    end
    object ostprepKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
    object ostprepRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"SELECT_OST_KSM"."RAZDEL_ID"'
    end
    object ostprepVIB: TIntegerField
      FieldName = 'VIB'
      ProviderFlags = []
    end
  end
  object OstprepUpdate: TIBUpdateSQLW
    RefreshSQL.Strings = (
      
        'SELECT  ost.OSTATOK_END_S,ost.ksm_id,ost.nmat,ost.OSTATOK_END_nz' +
        ',ost.neis,'
      'ost.kei_id,razdel.kraz, ost.razdel_id,'
      'cast(0 as integer) as vib'
      '  FROM  SELECT_OST_KSM (:dat1,:dat2,:kodp,:STRUK,0) ost'
      '  inner join razdel on (ost.razdel_id=razdel.razdel_id)')
    ModifySQL.Strings = (
      'select *'
      ' from KART'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    InsertSQL.Strings = (
      'select *'
      ' from KART'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    DeleteSQL.Strings = (
      'select *'
      ' from KART'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = DM1.IBT_Write
    Left = 351
    Top = 295
  end
end
