object FPech_Vibor: TFPech_Vibor
  Left = 105
  Top = 131
  Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1077#1087#1072#1088#1072#1090#1099' '
  ClientHeight = 668
  ClientWidth = 1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 30
    Width = 1074
    Height = 607
    Align = alClient
    AutoFitColWidths = True
    DataSource = DSPechVipusk
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
        FieldName = 'vib'
        Footers = <>
        Title.Caption = #1042#1099#1073#1086#1088
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'KOD_PROD'
        Footers = <>
        Title.Caption = #1050#1086#1076' '#1087#1088#1077#1087#1072#1088#1072#1090#1072' '
        Width = 169
      end
      item
        EditButtons = <>
        FieldName = 'NMAT'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 258
      end
      item
        EditButtons = <>
        FieldName = 'XARKT'
        Footers = <>
        Title.Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'kol_prih'
        Footers = <>
        Title.Caption = #1042#1099#1087#1091#1089#1082
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'neis'
        Footers = <>
        Title.Caption = #1045#1076'.'#1080#1079#1084'.'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'namreg'
        Footers = <>
        Title.Caption = #1056#1077#1075#1080#1086#1085
      end
      item
        EditButtons = <>
        FieldName = 'namorg'
        Footers = <>
        Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        Width = 191
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 637
    Width = 1074
    Height = 31
    Align = alBottom
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    DesignSize = (
      1074
      31)
    object SpeedButton1: TSpeedButton
      Left = 912
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
      Left = 991
      Top = 2
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1074
    Height = 30
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 32
    Caption = 'ToolBar1'
    TabOrder = 2
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 275
      Height = 30
      Margins.Bottom = 0
      Align = alClient
      Caption = '     '#1055#1088#1077#1087#1072#1088#1072#1090#1099', '#1074#1099#1087#1091#1097#1077#1085#1085#1099#1077' '#1079#1072' ('#1084#1077#1089#1103#1094','#1075#1086#1076'):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object SpinEdit3: TSpinEdit
      Left = 275
      Top = 0
      Width = 38
      Height = 30
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 12
      MinValue = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Value = 1
      OnChange = SpinEdit3Change
    end
    object SpinEdit4: TSpinEdit
      Left = 313
      Top = 0
      Width = 49
      Height = 30
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 2050
      MinValue = 2000
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Value = 2000
      OnChange = SpinEdit4Change
    end
    object RadioGroup1: TRadioGroup
      Left = 362
      Top = 0
      Width = 239
      Height = 30
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1074#1099#1073#1088#1072#1090#1100' '
        #1074#1089#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1099' ')
      Constraints.MaxHeight = 30
      Constraints.MinHeight = 30
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
  end
  object PechVipusk: TRxMemoryData
    FieldDefs = <
      item
        Name = 'kol_prih'
        DataType = ftFloat
      end
      item
        Name = 'NMAT'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'XARKT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'KOD_PROD'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'vib'
        DataType = ftBoolean
      end
      item
        Name = 'KSM_ID'
        DataType = ftInteger
      end
      item
        Name = 'STRUK_ID'
        DataType = ftInteger
      end
      item
        Name = 'neis'
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
      end>
    Left = 360
    Top = 112
    object PechVipuskkol_prih: TFloatField
      FieldName = 'kol_prih'
    end
    object PechVipuskNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object PechVipuskKOD_PROD: TStringField
      FieldName = 'KOD_PROD'
      Size = 18
    end
    object PechVipuskvib: TBooleanField
      FieldName = 'vib'
    end
    object PechVipuskKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
    end
    object PechVipuskSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
    end
    object PechVipuskneis: TStringField
      FieldName = 'neis'
      Size = 10
    end
    object PechVipuskgost: TStringField
      FieldName = 'gost'
      Size = 30
    end
    object PechVipusknamorg: TStringField
      FieldName = 'namorg'
      Size = 50
    end
    object PechVipusknamreg: TStringField
      FieldName = 'namreg'
    end
    object PechVipuskvipg: TFloatField
      FieldName = 'vipg'
    end
    object PechVipuskXARKT: TStringField
      FieldName = 'XARKT'
      Size = 30
    end
  end
  object DSPechVipusk: TDataSource
    DataSet = PechVipusk
    Left = 408
    Top = 112
  end
end
