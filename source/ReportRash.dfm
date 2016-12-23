object FReportRash: TFReportRash
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FReportRash'
  ClientHeight = 685
  ClientWidth = 1049
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter5: TSplitter
    Left = 0
    Top = 481
    Width = 1049
    Height = 8
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    ExplicitLeft = -223
    ExplicitTop = 560
    ExplicitWidth = 1272
  end
  object grid_otchet: TDBGridEh
    Left = 0
    Top = 489
    Width = 1049
    Height = 196
    Align = alBottom
    AutoFitColWidths = True
    DataSource = ds_texGur
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    HorzScrollBar.Tracking = True
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'KRAZ'
        Footers = <>
        Title.Caption = #1056#1072#1079
      end
      item
        EditButtons = <>
        FieldName = 'KSM_ID'
        Footers = <>
        Title.Caption = #1050#1086#1076
      end
      item
        EditButtons = <>
        FieldName = 'NMAT'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'OSTATOK_BEGIN_S'
        Footers = <>
        Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1084#1077#1089#1103#1094#1072' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'|'#1074' '#1089#1099#1088#1100#1077
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'OSTATOK_BEGIN_NZ'
        Footers = <>
        Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1084#1077#1089#1103#1094#1072' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'|'#1074' '#1085'/'#1079
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'PRIX'
        Footers = <>
        Title.Caption = #1055#1088#1080#1093#1086#1076'|'#1074' '#1089#1099#1088#1100#1077
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'PEREDANO_PRIH_NZ'
        Footers = <>
        Title.Caption = #1055#1088#1080#1093#1086#1076'|'#1074' '#1085'/'#1079
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'PRIX_PERIOD'
        Footers = <>
        Title.Caption = #1055#1088#1080#1093#1086#1076'|'#1089#1091#1084#1084#1072
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'ZAG'
        Footers = <>
        Title.Caption = #1047#1072#1075#1088#1091#1079#1082#1072'|'#1080#1079' '#1089#1099#1088#1100#1103
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'ZAG_PERIOD'
        Footers = <>
        Title.Caption = #1047#1072#1075#1088#1091#1079#1082#1072'|'#1089#1091#1084#1084#1072
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'RASH_VIRAB_PERIOD'
        Footers = <>
        Title.Caption = #1056#1072#1089#1093#1086#1076
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'PEREDANO_RASH_S'
        Footers = <>
        Title.Caption = #1055#1077#1088#1077#1076#1072#1085#1086'|'#1080#1079' '#1089#1099#1088#1100#1103
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'PEREDANO_RASH_NZ'
        Footers = <>
        Title.Caption = #1055#1077#1088#1077#1076#1072#1085#1086'|'#1080#1079' '#1085'/'#1079
      end>
  end
  object grid_zagr: TDBGridEh
    Left = 0
    Top = 165
    Width = 1049
    Height = 316
    Align = alClient
    Constraints.MinWidth = 670
    Ctl3D = False
    DataSource = ds_texGur
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
    FooterRowCount = 1
    HorzScrollBar.Tracking = True
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghRowHighlight]
    ParentCtl3D = False
    ParentFont = False
    RowSizingAllowed = True
    STFilter.Visible = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleHeight = 25
    TitleLines = 2
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    OnDrawColumnCell = grid_zagrDrawColumnCell
    OnEditButtonClick = grid_zagrEditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DELETE'
        Footers = <>
        MaxWidth = 34
        MinWidth = 30
        Title.Caption = #1059#1076#1072#1083'.'
      end
      item
        EditButtons = <>
        FieldName = 'NAZPRPF'
        Footers = <>
        MaxWidth = 25
        ReadOnly = True
        Title.Caption = #1055'/'#1092
        Width = 25
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'KRAZ'
        Footers = <>
        MaxWidth = 35
        MinWidth = 25
        Title.Caption = #1056#1072#1079#1076'.'
        Width = 35
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'KSM_ID'
        Footers = <>
        MaxWidth = 48
        MinWidth = 30
        Title.Caption = #1050#1086#1076
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'NMAT'
        Footers = <>
        MaxWidth = 170
        MinWidth = 100
        ReadOnly = True
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1099#1088#1100#1103' '#1080#1083#1080' '#1087'/'#1092
        Width = 162
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'NEIS'
        Footers = <>
        MaxWidth = 40
        MinWidth = 25
        ReadOnly = True
        Title.Caption = #1045'.'#1080'.'
        Width = 34
      end
      item
        DisplayFormat = '######0.000000'
        EditButtons = <>
        FieldName = 'KOL_PRIH'
        Footers = <>
        Title.Caption = #1055#1088#1080#1093#1086#1076
      end
      item
        AlwaysShowEditButton = True
        ButtonStyle = cbsEllipsis
        DisplayFormat = '######0.000000'
        EditButtons = <>
        FieldName = 'KOL_RASH_EDIZ'
        Footers = <>
        MaxWidth = 81
        MinWidth = 50
        Title.Caption = #1047#1072#1075#1088#1091#1078#1077#1085#1086
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'DATE_DOK'
        Footers = <>
        MaxWidth = 65
        MinWidth = 50
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1075#1088#1091#1079#1082#1080
      end
      item
        EditButtons = <>
        FieldName = 'OLD_DATE_DOK'
        Footers = <>
        Visible = False
      end
      item
        Color = cl3DLight
        DisplayFormat = '######0.000000'
        EditButtons = <>
        FieldName = 'ZAG_PERIOD'
        Footers = <>
        MaxWidth = 64
        MinWidth = 50
        ReadOnly = True
        Title.Caption = #1042#1089#1077#1075#1086' '#1079#1072#1075#1088#1091#1078#1077#1085#1086
      end
      item
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'RASCH_ZAG'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1091
        Visible = False
        Width = 113
      end
      item
        Color = cl3DLight
        DisplayFormat = '######0.0000000'
        EditButtons = <>
        FieldName = 'PLNORM'
        Footers = <>
        MaxWidth = 80
        MinWidth = 70
        ReadOnly = True
        Title.Caption = #1055#1083'.'#1085#1086#1088#1084#1072' '#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1091
        Width = 80
      end
      item
        DisplayFormat = '######0.000000'
        EditButtons = <>
        FieldName = 'KOL_RASH_VIRAB'
        Footers = <>
        Title.Caption = #1056#1072#1089#1093#1086#1076
      end
      item
        EditButtons = <>
        FieldName = 'DATE_DOK_RASH'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1088#1072#1089#1093#1086#1076#1072
      end
      item
        Color = cl3DLight
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'OSTATOK_END_S'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1084#1077#1089#1103#1094#1072' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'|'#1074' '#1089#1099#1088#1100#1077
      end
      item
        Color = cl3DLight
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'OSTATOK_END_NZ'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1084#1077#1089#1103#1094#1072' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'|'#1074' '#1085'/'#1079
        Width = 69
      end
      item
        Color = cl3DLight
        DisplayFormat = '########0.000000'
        EditButtons = <>
        FieldName = 'OSTATOK_END_S_CEX'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1074' '#1094#1077#1093#1077
      end
      item
        EditButtons = <>
        FieldName = 'DOC_ID'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'STROKA_ID'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'KART_ID'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'KEI_ID_NORM'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'KEI_ID_KART'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'KEI_ID_OST_PREP'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'KEI_ID_OST_CEX'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'USER_NAME'
        Footers = <>
        Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'NDOK'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'SERIA'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'TIP_OP_ID'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'TIP_DOK_ID'
        Footers = <>
        Visible = False
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 52
    Width = 1049
    Height = 113
    Align = alTop
    Constraints.MinHeight = 50
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 473
      Top = 1
      Height = 111
      ExplicitLeft = 520
      ExplicitHeight = 213
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 472
      Height = 111
      Align = alLeft
      TabOrder = 0
      object Label19: TLabel
        Left = 215
        Top = 13
        Width = 250
        Height = 50
        Margins.Bottom = 0
        AutoSize = False
        Caption = 'Label19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label41: TLabel
        Left = 4
        Top = 17
        Width = 52
        Height = 13
        Margins.Bottom = 0
        Caption = #1055#1088#1077#1087#1072#1088#1072#1090':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label46: TLabel
        Left = 4
        Top = 38
        Width = 34
        Height = 13
        Margins.Bottom = 0
        Caption = #1057#1077#1088#1080#1103':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 146
        Top = 36
        Width = 23
        Height = 17
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
        OnClick = SpeedButton1Click
      end
      object Label56: TLabel
        Left = 3
        Top = 59
        Width = 150
        Height = 13
        Margins.Bottom = 0
        Caption = #1044#1072#1090#1072' '#1087#1077#1088#1074#1086#1081' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1089#1077#1088#1080#1080':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label57: TLabel
        Left = 4
        Top = 76
        Width = 26
        Height = 13
        Margins.Bottom = 0
        Caption = #1043#1086#1089#1090':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label61: TLabel
        Left = 2
        Top = 90
        Width = 40
        Height = 13
        Margins.Bottom = 0
        Caption = #1060#1080#1088#1084#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 46
        Top = 91
        Width = 46
        Height = 13
        Margins.Bottom = 0
        Caption = 'Label28'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 96
        Top = 90
        Width = 36
        Height = 13
        Margins.Bottom = 0
        Caption = 'Lab29'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 32
        Top = 76
        Width = 36
        Height = 13
        Margins.Bottom = 0
        Caption = 'Lab22'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label59: TLabel
        Left = 232
        Top = 82
        Width = 40
        Height = 13
        Margins.Bottom = 0
        Caption = #1061#1072#1088'_'#1082#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 291
        Top = 66
        Width = 39
        Height = 13
        Margins.Bottom = 0
        Caption = 'Label3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 274
        Top = 82
        Width = 46
        Height = 13
        Margins.Bottom = 0
        Caption = 'Label11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 186
        Top = 13
        Width = 23
        Height = 20
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
        OnClick = SpeedButton2Click
      end
      object btn_setDateLoad: TSpeedButton
        Left = 257
        Top = 56
        Width = 23
        Height = 22
        Hint = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1087#1086' '#1089#1077#1088#1080#1080
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
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = btn_setDateLoadClick
      end
      object btn_loadSeria: TSpeedButton
        Left = 175
        Top = 35
        Width = 23
        Height = 22
        Hint = #1055#1088#1080#1085#1103#1090#1100' '#1089#1077#1088#1080#1102
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
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = btn_loadSeriaClick
      end
      object edit_kodProd: TEdit
        Left = 56
        Top = 14
        Width = 130
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnChange = edit_kodProdChange
        OnClick = edit_kodProdClick
        OnKeyDown = edit_kodProdKeyDown
      end
      object edit_seria: TEdit
        Left = 45
        Top = 35
        Width = 105
        Height = 19
        Hint = #1055#1086#1089#1083#1077' '#1074#1074#1086#1076#1072' '#1089#1077#1088#1080#1080' '#1074#1088#1091#1095#1085#1091#1102' '#1085#1072#1078#1084#1080#1090#1077' '#1082#1083#1072#1074#1080#1096#1091' ENTER'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = edit_seriaClick
        OnKeyDown = edit_seriaKeyDown
      end
      object DateEdit1: TDateEdit
        Left = 157
        Top = 57
        Width = 94
        Height = 20
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 2
        OnKeyDown = DateEdit1KeyDown
      end
    end
    object GroupBox3: TGroupBox
      Left = 476
      Top = 1
      Width = 572
      Height = 111
      Align = alClient
      Caption = #1042#1099#1087#1091#1089#1082':'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      object Label68: TLabel
        Left = 6
        Top = 51
        Width = 73
        Height = 13
        Margins.Bottom = 0
        Caption = #1055#1083#1072#1085#1080#1088#1091#1077#1084#1099#1081':'
      end
      object Label26: TLabel
        Left = 86
        Top = 49
        Width = 46
        Height = 13
        Margins.Bottom = 0
        Caption = 'Label26'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label70: TLabel
        Left = 6
        Top = 69
        Width = 46
        Height = 13
        Margins.Bottom = 0
        Caption = #1060#1072#1082#1090'-'#1080#1081':'
      end
      object Label34: TLabel
        Left = 58
        Top = 69
        Width = 46
        Height = 13
        Margins.Bottom = 0
        Caption = 'Label34'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label75: TLabel
        Left = 7
        Top = 33
        Width = 38
        Height = 13
        Margins.Bottom = 0
        Caption = #1045#1076'.'#1080#1079#1084'.'
      end
      object Label21: TLabel
        Left = 52
        Top = 33
        Width = 36
        Height = 13
        Margins.Bottom = 0
        Caption = 'Lab21'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 6
        Top = 17
        Width = 82
        Height = 13
        Margins.Bottom = 0
        Caption = #1060#1086#1088#1084#1072' '#1074#1099#1087#1091#1089#1082#1072':'
      end
      object Label45: TLabel
        Left = 98
        Top = 18
        Width = 46
        Height = 13
        Margins.Bottom = 0
        Caption = 'Label45'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 6
        Top = 87
        Width = 79
        Height = 13
        Margins.Bottom = 0
        Caption = #1050#1086#1083'-'#1074#1086' '#1074' '#1089#1077#1088#1080#1080':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edit_kolSeria: TEdit
        Left = 138
        Top = 87
        Width = 75
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = 'edit_kolSeria'
        OnClick = edit_kolSeriaClick
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1049
    Height = 52
    Align = alTop
    TabOrder = 3
    object btn_vipuskList1: TSpeedButton
      Left = 54
      Top = 1
      Width = 53
      Height = 50
      Hint = #1042#1099#1073#1086#1088' '#1087#1088#1077#1087#1072#1088#1072#1090#1072' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1074#1099#1087#1091#1089#1082#1072' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1084#1077#1089#1103#1094#1072
      Align = alLeft
      Caption = #1042#1099#1087#1091#1089#1082
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFA47874A47874A47874A47874A47874A47874A47874A4
        7874A47874A47874A47874A47874A47874A478748C5D5CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874ECDED1F9F0E0F6EBDAF5EA
        D9F5E9D6F4E8D4F4E8D3F4E8D3F4E8D4F4E8D4F4E8D4F6ECD7EDDFCC8C5D5CFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874EADBD0
        F7EDDFF3E7D9F2E7D8F2E6D6F1E4D4F0E3D1F0E3D1F0E2D0F0E3D0F0E2D0F2E6
        D2EADAC88C5D5CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFA47874EBDCD3F7EFE3F3EADEF3E9DCF2E8DAF2E6D8F1E5D6F0E4D3EFE3D1
        EFE3D1F0E2D0F2E5D2EADAC88C5D5CFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFB48176ECDED7F9F2E8F9DEC2F5C897F5C999F5C898F5
        C998F5C898F4C897F5C794F5DABDF1E7D4EADAC88C5D5CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB48176ECE1DAF9F3EBF8E4CFFADC
        C0F9DDC1F9DCC0F8DCBEF8DCBDF7DBBCF7D9B8F3DDC4F1E5D3E9D9C78C5D5CFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB48176EEE3DC
        FAF5EEF6EEE2F5E9DCF5E9DBF4E7D9F5E7D8F5E6D6F3E4D3EFE0CEEBDECCEDE2
        D1E6D8C7976A65FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFBA8E85F0E6E0FBF7F2F9DCBEF3C28CF1C28EF3C48FF5C48FF5C48FF1C18D
        E7B885DCC3A9D8D0C4DACCBE936863FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFBA8E85F2E8E2FBF7F2F1E8DDE8DBCEE1D5C8E6D9CCEF
        E1D1EEE0CFE3D3C4CBBDAEB5AA9FB3ABA1BFB4A88A615CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCB9A82F2EAE4F9F8F4E9DDD1D0C1
        B1C2B4A5CABCADDBCBB8DCCBB9C7B7A6AA9B8C948A80938D86A0988F83605CFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCB9A82F5EDE9
        F8F9F8748DB7C0996FA88763AA8965B8946DB9956DA585615572994B618D5857
        6F89837C6C4F4CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFDCA887F7F0ECFBFBFB7EA2CB748DB79E9A9F9D98959A9591928E8C557299
        79B7D973BCE3353C6B5C59685B4341FF00FFFF00FFFF00FFFF00FFFF00FF5B57
        57464242464242464242DCA887F8F2EFFDFDFD5F6D99CBEFF69AADC59A98A095
        939255729989D2EB55729974B5DD62A1D0333766514252FF00FFFF00FF8F8F90
        5454545454545B57573B3A3C3535375B5555E3B18EF9F3EFFEFEFEB3B3C57079
        9ACBEFF69FC1D555729990DEF255729986D9F75572996BACDB558CC12F31602F
        31602F31608F8F90BEBEBFBEBEBF5B5757524D4E5B55555B5555E3B18EFAF3EF
        FFFFFFFEFEFEB6B6C87383A2B8ECF57291B655729989D7F05572997BCDF35572
        9966B5EC5BA9E8509DE54690E18F8F90BABABABABABA5B57575B57575F5A5A5F
        5A5AEDBD92FBF5F1FFFFFFFFFFFFFEFEFEB9B9CA6B81A1A5E9F46789B3557299
        81CEEE55729970C1F066B5EC5BA9E8509DE54690E18F8F90C7C8C8C7C8C85B57
        576B67676B67676B6767EDBD92FBF6F2FFFFFFFFFFFFFFFFFFFEFEFEBBBBCB64
        80A194E2F16586B081CEEE7BCDF370C1F066B5EC5BA9E8509DE54690E18F8F90
        F1F1F1EFEFEF5B5757767474767474767474EDBD92DCA887DCA887DCA887DCA8
        87DCA887DBA786A5847E5E7EA0C4EBF686D9F77BCDF370C1F066B5EC5BA9E850
        9DE54690E18F8F90F1F1F1F1F1F15B5757818080818080818080FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF557299C3ECFBBDE6F970C1
        F066B5EC5BA9E8509DE53B5D9B8F8F90F1F1F1F1F1F15B57578B8B8B8B8B8B8B
        8B8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF6A96C0679AC96195C95A8DC7556DA4FF00FF8F8F908F8F908F8F905B57
        578C8C8C7C7C7C7C7C7CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF5B57575B57575B57575B5757FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_vipuskList1Click
      ExplicitLeft = 1
      ExplicitHeight = 51
    end
    object btn_syrInfo: TSpeedButton
      Left = 107
      Top = 1
      Width = 53
      Height = 50
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1074#1080#1078#1077#1085#1080#1103' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1089#1099#1088#1100#1103
      Align = alLeft
      Caption = #1054' '#1089#1099#1088#1100#1077
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFA87D78B78183B78183B78183B78183B78183B78183B78183B78183B781
        83B78183B78183B78183B78183B78183B78183B78183B78183FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFA87D78F3E7D8F3E7D8F3E7D8F3E7D8F3E7D8F3E7D8
        F3E7D8F3E7D8F0E2CFF0E2CFF0E2CFF0E2CFF0E2CFF0E2CFF0E2CFF0E2CFB781
        83FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA87D78F3E7D8F2E6D7FDEFE0FD
        EFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0
        F0E2CFF0E2CFB78183FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA87D78F3E8
        DBF3E7D9FECC9AFECC9AFECC9AFECC9AFECC9AFECC9AFECC9AFECC9AFECC9AFE
        CC9AFECC9AFECC9AF0E2CFF0E2CFB78183FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA87D78F4EADEF4E9DCF3E8DAF3E7D9F2E6D7F2E5D5F1E4D4F1E4D2F0E3
        D0F0E2CFF0E2CFF0E2CFF0E2CFF0E2CFF0E2CFF0E2CFB78183FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFA87D78F4EBE0F3E9DEFDEFE0FDEFE0FDEFE0FDEFE0
        FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0EFE1CEEFE1CEB781
        83FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA87D78EDE5DBEDE4DAFECC9AFE
        CC9AFECC9AFECC9AFECC9AFECC9AFECC9AFECC9AFECC9AFECC9AFECC9AFECC9A
        E8DAC8E8DAC8B78183FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2887ED9D3
        CBD9D2C9D9D1C7D8D0C7D7CFC5D7CEC4D6CEC2D6CDC0D6CCBFD6CBBED6CABCD5
        C9BAD5C8B9D4C7B8D4C7B7D4C7B7B78183FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA07A71B5AFAAB4AEA9B4ADA7B4ACA6B4ACA4B3ACA3B2ABA2B2AAA1B1A9
        A0B1A99EB0A89DB0A89CB0A79AB0A69AB0A599AFA498A47476FF00FFFF00FFFF
        00FFA35228A35228A35228A35228A35228A35228A35228A35228A35228A35228
        A35228A35228A35228A35228A35228A35228A35228A35228A35228A35228A352
        28A35228A35228A35228A35228FF00FFFF00FFBA8E82E7E2DDE7E2DBE6E0DAE6
        E0D9E5DED7E5DED5E5DDD4E5DBD2E4DBD1E3D9CFE3D9CDE2D9CCE2D8CBE1D6C9
        E1D6C7E1D5C6B78183FF00FFFF00FFA35228A35228FF00FFFF00FFBA8E82DCD8
        D4DCD6D2D87542D87542D87542D87542D87542D87542D87542D87542D87542D8
        7542D87542D87542D5CBBFD5CABDB78183FF00FFFF00FFA35228A35228FF00FF
        FF00FFAE8777B7B5B1B6B4B0F6CAB3F6CAB3F6CAB3F6CAB3F6CAB3F6CAB3F6CA
        B3F6CAB3F6CAB3F6CAB3F6CAB3F6CAB3B1AAA1B1A99FA47476FF00FFFF00FFA3
        5228A35228A35228A35228A35228A35228A35228A35228A35228A35228A35228
        A35228A35228A35228A35228A35228A35228A35228A35228A35228A35228A352
        28A35228A35228A35228FF00FFFF00FFFF00FFC29685FFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFBF7F3FBF7F3FAF5EFFAF5EFF8F1EBF8F1EBF7F1E9F7F1E9F6ECE2
        F6ECE2F6ECE2B78183FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCA9C88FEFD
        FCFDFCFAFDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FD
        EFE0FDEFE0FDEFE0F5ECE3F5EBE1B78183FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFCEA089FFFFFFFFFFFFFECC9AFECC9AFECC9AFECC9AFECC9AFECC9AFECC
        9AFECC9AFECC9AFECC9AFECC9AFECC9AF6EFE6F6EEE5B78183FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFD2A38AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1E9F7F0E7B781
        83FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD7A78CFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFDFEFCFAFEFBF8FCF9F6FBF8F4FBF7F3FAF6F1FAF4EFF9F3EE
        F9F2ECF7F1EAB78183FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDAAB8DFFFF
        FFFFFFFFFDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FDEFE0FD
        EFE0FDEFE0FDEFE0F9F4EFF9F3EDB78183FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFDEAD8EFFFFFFFFFFFFFECC9AFECC9AFECC9AFECC9AFECC9AFECC9AFECC
        9AFECC9AFECC9AFECC9AFECC9AFECC9AFAF6F1FAF5EFB78183FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFDEAD8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFEFCFAFDFBF8FCF9F6FBF8F4FAF6F2B781
        83FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEAD8EFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFBFEFBF9
        FDFAF7FBF8F5B78183FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEAD8FDAA4
        82DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DA
        A482DAA482DAA482DAA482DAA482AA807CFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_syrInfoClick
      ExplicitLeft = 103
      ExplicitTop = 10
    end
    object btn_save: TSpeedButton
      Left = 160
      Top = 1
      Width = 63
      Height = 50
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Align = alLeft
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        AE746C9F52529A4D4E9C4E4F994748A37374B7B8B8B8B6B6B9B7B7BAB8B7BAB7
        B7B9B7B7B8B6B6B7B6B6B8B8B8A47171984546994A4B994B4C9A4D4E9A4D4EFF
        00FFFF00FFB48176C36E6BC96464C96464CB6565B757579A696AB0B1B1CDCDCB
        E5E3E1F2EFEDF9F5F2F9F5F1EEEBEAE3E2E0DEDFDFB67676952C2C9835359E3A
        3AC15B5BC060619A4C4DFF00FFB48176C36E6BCD6565CD6666CE6767BA58599B
        6C6CA18D8DB58180CFAFACDFCCCAF9F5F1FFFCF9FBF7F5EFEDEBE8E9E8B97677
        942A299833339E3939C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB66
        66CE6767B858589E7171A17D7E9E3D3CB4706EC9A09DECE8E5FBF7F5FEFAF7F9
        F5F2F0F0EFBB7978942A2A9833339E3939C25C5CC262629A4C4DFF00FFB48176
        C36E6BCC6565CB6666CE6767B85858A27474A78484972F2F9F3F3FB57573DED8
        D7F2EFEDFBF7F5FEFBF8FAFAF7BE7C7C94292A9833339E3939C25C5CC262629A
        4C4DFF00FFB48176C36E6BCC6565CB6666CE6767B85858A57676AD8988983232
        972F2FA04848C9C2C1E5E3E1F3F0EDFDF9F6FFFFFDC27F7E9329299833339E39
        39C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB6666CE6767B75757AB
        7A79B58C8B972B2B972B2B973232ADA6A6CFCFCEE6E3E0F6F3F0FFFFFDC48280
        9329299833339E3939C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB66
        66CE6767B55656AE7C7BC5AAA8A66565A160609D64649E9F9FB4B9B8D3D6D4EC
        EFECFFFFFFC382819026269530309C3737C15B5BC262629A4C4DFF00FFB48176
        C36E6BCC6565CB6666CE6767BD5C5CB97172D3A7A5C9A0A0BF9999B89494B18D
        8DB18D8DC39F9ED8B2B1E6C2C0C57776A73F3FAA4545AE4949C66060C261629A
        4C4DFF00FFB48176C36E6BCD6666CD6666CD6666CC6565CC6363CB6161CB6262
        CB6262CC6162CC6162CB6161CA5F5FCA5F5FC95F5FCB6262CC6565CC6363CD66
        66CE6767C060619A4C4DFF00FFB48176C36E6BC66060C15D5CC46361C86C6BCB
        7272CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776
        CD7776CD7978CD6F6FCD6666C060619A4C4DFF00FFB48276C46F6CB04E4AA549
        44B56C68C48F8CD0ABA9D7BCBBD8BFBED8BEBDD8BEBDD8BEBDD8BEBDD8BEBDD8
        BEBDD8BEBDD8BEBDD8BEBDD8C3C2D19090CC6161C060619A4C4DFF00FFB48276
        C46E6BAC4541CE9E9AFAF5F3F6EDECF7EFEEF8F1F0F8F1F0F8F1F0F8F1F0F8F1
        F0F8F1F0F8F1F0F8F1F0F8F1F0F8F1F0FAF3F2EEE5E4CD8E8DC35959C060619A
        4D4EFF00FFB48276C46E6BAC4541D2A6A3FFFFFFFBF5F4FBF5F4FBF5F4FBF5F4
        FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FDF7F6EFE7E6CC8D
        8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFDF8F2F1F8
        F1F0F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F1F0
        FBF5F4EFE6E5CC8D8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4
        A1FFFFFEE9E4E3CCCACACDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCD
        CCCCCDCCCCCAC9C8E6E2E2F2E8E7CC8D8CC15757C060619A4D4EFF00FFB48276
        C46E6BAC4541D1A4A1FFFFFEF5EEEEEDE8E7EDE8E7EDE8E7EDE8E7EDE8E7EDE8
        E7EDE8E7EDE8E7EDE8E7EDE8E7ECE7E6F5F0F0F1E7E6CC8D8CC15757C060619A
        4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFEECE7E6D4D1D1D5D2D2D5D2D2
        D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D2D0D0E9E5E5F1E8E7CC8D
        8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFEF2ECEBE5
        E0DFE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E4DFDF
        F2EDECF1E7E6CC8D8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4
        A1FFFFFEF2ECEBE5E0DFE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5
        E1E0E5E1E0E4DFDFF2EDECF1E7E6CC8D8CC15757C060619A4D4EFF00FFB48276
        C46E6BAC4541D1A4A1FFFFFEEBE5E5D2CFCFD3D1D0D3D1D0D3D1D0D3D1D0D3D1
        D0D3D1D0D3D1D0D3D1D0D3D1D0D0CECEE9E4E3F2E8E7CC8D8CC15757C060619A
        4D4EFF00FFB48276C46E6BAC4541D2A5A2FFFFFFFCF5F4FDF6F5FDF6F5FDF6F5
        FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FFF8F7F1E7E6CC8D
        8CC35959C161629A4D4EFF00FFB48276BF6F6BAA4541CB9E9BF3F3F2EFE9E8EF
        E9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8
        F0ECEBE8E0DFC88B8AB85353B85C5D9A4D4EFF00FFFF00FFAD736CA14540B689
        87C6CBCBC4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4
        C3C3C4C3C3C4C3C3C3C3C3CFC9C8B884849644459A4C4DFF00FF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_saveClick
      ExplicitLeft = 101
      ExplicitTop = -3
    end
    object btn_insertRec: TSpeedButton
      Left = 223
      Top = 1
      Width = 71
      Height = 50
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091' '#1074' '#1090#1077#1082#1091#1097#1080#1081' '#1088#1072#1079#1076#1077#1083
      Align = alLeft
      Caption = #1044#1086#1073'. '#1089#1090#1088#1086#1082#1091
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFA87D78B78183B78183B78183B78183B78183B78183B78183B78183B781
        83B78183B78183B78183B78183B78183B78183B78183B78183B78183FF00FFFF
        00FFFF00FFFF00FFFF00FFA97F79F5E2C1F5E0BDF4DEBBF4DCB8F3DCB5F4DAB2
        F3D9B0F3D7ADF2D6AAF1D5A8F1D4A5F1D3A4F1D2A2F0D19FF0D09DF0CF9CF0CE
        9AB3897BFF00FFFF00FFFF00FFFF00FFFF00FFA97F7AF6E3C5F5E1C1F5E0BFF5
        DFBCF4DDB8F3DCB6F3DBB3F3D9B1F3D8AEF3D7ACF1D6A9F2D5A7F1D3A4F0D2A2
        F0D1A0F0D09EF0D09DB3897BFF00FFFF00FFFF00FFFF00FFFF00FFA97F7AF7E5
        C9F6E3C6009900009900F5DFBCF4DEBA99330099330099330099330099330099
        3300993300993300993300F1D2A1F1D19FB3897BFF00FFFF00FFFF00FFFF00FF
        FF00FFA97F7AF7E7CCF6E6CA009900009900F6E1C1F5DFBEF4DEBBF5DDB7F4DC
        B5F3DAB3F3D9B0F2D8ADF2D6ABF2D5A8F1D5A6F1D3A3F1D2A2B3897BFF00FFFF
        00FFFF00FFFF00FFFF00FF7F5F5CBAAF9DB9AD9AB9AC97B8AB96B8AA94B8A991
        B8A88FB8A78CB8A68BB7A588B7A486B6A384B6A282B5A180B5A07FB59F7CB59F
        7B86675CFF00FFFF00FFFF00FF00660000660000660000660000660000660000
        6600006600006600006600006600006600006600006600006600006600006600
        006600006600006600006600006600006600FF00FF006600FF00FFAD837DF9EC
        D8F9EBD5F8E9D2F8E8CFF7E6CDF7E5C9F6E4C6F6E2C3F5E0C0F5DFBDF4DEBBF4
        DDB7F4DBB5F3DAB2F3D9AFF3D7ADF2D7ABB3897BFF00FF006600FF00FF006600
        FF00FFB2887EFAEEDBF9ECD9006600006600F8E9D0F7E7CD0066000066000066
        00006600006600006600006600006600006600F3D9B0F2D8AEB3897BFF00FF00
        6600FF00FF006600FF00FFB68B80FBF0E0FAEFDD006600006600F8EAD4F8E9D1
        F7E7CEF7E6CBF6E4C8F6E4C5F5E1C2F5E0BFF5DEBCF4DDB9F4DCB7F4DBB4F3D9
        B1B3897BFF00FF006600FF00FF006600FF00FF8B6A61BCB5AABBB3A7BAB2A5BB
        B2A4BBB1A2BAAFA0BAAF9DBAAE9BBAAD99B9AC97B9AB94B8A992B8A990B8A78E
        B8A68BB7A58AB7A58786675DFF00FF006600FF00FF0066000066000065000064
        0000630000630000640000650000660000660000660000660000660000660000
        6600006600006600006600006600006600006600006600006600FF00FFFF00FF
        FF00FFBA9080E6E0D6DED8CDDED6CAE4DCCFF0E7D6F7ECDAF9EEDAF9ECD6F8EA
        D4F7E9D1F7E7CEF7E6CBF7E4C8F6E4C5F6E2C2F5E0BFF4DFBCB48B7EFF00FFFF
        00FFFF00FFFF00FFFF00FFB58C7ACDC9C1BDB8B0007300007C00E5DCCFF4EADB
        983300993300993300993300993300993300993300993300993300F6E2C3F6E1
        C0B48B7EFF00FFFF00FFFF00FFFF00FFFF00FF00660000660000660000660000
        7100D9D2C6EDE4D7F4EBDCF8EDDCF8EDDBF9ECD9F9EBD6F8EAD3F8E8D0F7E7CD
        F6E6CAF7E4C6F6E2C4B48B7EFF00FFFF00FFFF00FFFF00FFFF00FF00660013AA
        2210A61D006600ADA9A2C8C1B9D9D2C8E5DED0F0E8D9F8EEDDFAEFDDF9EDD9F9
        ECD7F8EAD3F8E8D1F8E7CEF7E6CBF6E5C8B48B7EFF00FFFF00FFFF00FFFF00FF
        FF00FF0066001AB12D16AD26006600A19F99ADA9A3BAB5ADCDC6BCE5DED1F5EC
        DEFAF0E0FAEFDDFAEEDBF9ECD8F8EBD5F8E9D2F7E8CFF7E7CCB48B7EFF00FFFF
        00FF00660000660000660000660022B93B1DB532006600006600006600006600
        BDB8B0DFD8CFF4ECE0FAF1E2FBF1E1FAEFDFFAEEDCF9ECD8F8EBD6F8EAD3F8E8
        CFB48B7EFF00FFFF00FF0066003CD46236CF5A30C9522CC34926BE4121B8381C
        B43117AF2A006600732600882D00953200983300993300993300993300993300
        993300F9ECD6F8EAD3B48B7EFF00FFFF00FF00660044DD703FD8683AD26035CD
        582FC74F2AC14725BD3E20B836006600CDCAC4E6E3DBF6F1E7FCF5EAFCF4E8FB
        F3E5FAF1E3FAF0E0FAEFDDF9EEDAF9ECD7B48B7EFF00FFFF00FF006600006600
        0066000066003ED76638D15E006600006600006600006600E7E4E0F3EFE9FBF6
        EEFCF7EEFCF5EBFBF5E9FCF3E7FBF2E3FAF0E1FAEFDEF9EDDBB48B7EFF00FFFF
        00FFFF00FFFF00FFFF00FF00660046DE7341DA6D006600BCBBBADBDAD8F0EEEB
        F8F5F1FBF8F3FCF8F2FDF8F1FDF7EEFCF5ECFBF4E9FBF3E7FBF2E5FBF1E1FAEF
        DEB48B7EFF00FFFF00FFFF00FFFF00FFFF00FF0066004DE67F49E279006600B1
        856AC79677D5A07FD9A381DAA482DAA482DAA482DAA482DAA482DAA482DAA482
        DAA482DAA482DAA482DAA482FF00FFFF00FFFF00FFFF00FFFF00FF0066000066
        00006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_insertRecClick
      ExplicitLeft = 176
      ExplicitTop = -3
    end
    object btn_delRecord: TSpeedButton
      Left = 294
      Top = 1
      Width = 75
      Height = 50
      Hint = 
        #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1091#1102' '#1089#1090#1088#1086#1082#1091' ('#1076#1083#1103' '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1103' '#1089#1085#1080#1084#1080#1090#1077' '#1086#1090#1084#1077#1090#1082#1091' "'#1059#1076 +
        #1072#1083'.")'
      Align = alLeft
      Caption = #1059#1076#1072#1083'. '#1089#1090#1088#1086#1082#1091
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFA87D78B78183B78183B78183B78183B78183B78183B78183B78183B781
        83B78183B78183B78183B78183B78183B78183B78183B78183B78183FF00FFFF
        00FFFF00FFFF00FFFF00FFA97F79F5E2C1F5E0BDF4DEBBF4DCB8F3DCB5F4DAB2
        F3D9B0F3D7ADF2D6AAF1D5A8F1D4A5F1D3A4F1D2A2F0D19FF0D09DF0CF9CF0CE
        9AB3897BFF00FFFF00FFFF00FFFF00FFFF00FFA97F7AF6E3C5F5E1C1F5E0BFF5
        DFBCF4DDB8F3DCB6F3DBB3F3D9B1F3D8AEF3D7ACF1D6A9F2D5A7F1D3A4F0D2A2
        F0D1A0F0D09EF0D09DB3897BFF00FFFF00FFFF00FFFF00FFFF00FFA97F7AF7E5
        C9F6E3C6009900009900F5DFBCF4DEBA99330099330099330099330099330099
        3300993300993300993300F1D2A1F1D19FB3897BFF00FFFF00FFFF00FFFF00FF
        FF00FFA97F7AF7E7CCF6E6CA009900009900F6E1C1F5DFBEF4DEBBF5DDB7F4DC
        B5F3DAB3F3D9B0F2D8ADF2D6ABF2D5A8F1D5A6F1D3A3F1D2A2B3897BFF00FFFF
        00FFFF00FFFF00FFFF00FF7F5F5CBAAF9DB9AD9AB9AC97B8AB96B8AA94B8A991
        B8A88FB8A78CB8A68BB7A588B7A486B6A384B6A282B5A180B5A07FB59F7CB59F
        7B86675CFF00FFFF00FFFF00FF00009A00009A00009A00009A00009A00009A00
        009A00009A00009A00009A00009A00009A00009A00009A00009A00009A00009A
        00009A00009A00009A00009A00009A00009AFF00FF00009AFF00FFAD837DF9EC
        D8F9EBD5F8E9D2F8E8CFF7E6CDF7E5C9F6E4C6F6E2C3F5E0C0F5DFBDF4DEBBF4
        DDB7F4DBB5F3DAB2F3D9AFF3D7ADF2D7ABB3897BFF00FF00009AFF00FF00009A
        FF00FFB2887EFAEEDBF9ECD900009A00009AF8E9D0F7E7CD00009A00009A0000
        9A00009A00009A00009A00009A00009A00009AF3D9B0F2D8AEB3897BFF00FF00
        009AFF00FF00009AFF00FFB68B80FBF0E0FAEFDD00009A00009AF8EAD4F8E9D1
        F7E7CEF7E6CBF6E4C8F6E4C5F5E1C2F5E0BFF5DEBCF4DDB9F4DCB7F4DBB4F3D9
        B1B3897BFF00FF00009AFF00FF00009AFF00FF8B6A61BCB5AABCB4A8BBB3A6BB
        B2A4BBB1A2BAAFA0BAAF9DBAAE9BBAAD99B9AC97B9AB94B8A992B8A990B8A78E
        B8A68BB7A58AB7A58786675DFF00FF00009AFF00FF00009A00009A00009A0000
        9A00009A00009A00009A00009A00009A00009A00009A00009A00009A00009A00
        009A00009A00009A00009A00009A00009A00009A00009A00009AFF00FFFF00FF
        FF00FFC29685FCF5EAFBF4E7FBF2E4FAF1E2FAF0DFF9EEDCF9EEDAF9ECD6F8EA
        D4F7E9D1F7E7CEF7E6CBF7E4C8F6E4C5F6E2C2F5E0BFF4DFBCB48B7EFF00FFFF
        00FFFF00FFFF00FFFF00FFC59885FCF6EDFBF4EA009800009800FAF0E2F9EFDF
        993300993300993300993300993300993300993300993300993300F6E2C3F6E1
        C0B48B7EFF00FFFF00FFFF00FFFF00FFFF00FFC49784F5F0E9F4EFE700940000
        9400F3EBDFF4EADDF4EBDCF8EDDCF8EDDBF9ECD9F9EBD6F8EAD3F8E8D0F7E7CD
        F6E6CAF7E4C6F6E2C4B48B7EFF00FFFF00FFFF00FFFF00FFFF00FFB48C78DDDA
        D5DCD9D4DCD8D1DCD7CEDCD5CDDED7CEE5DED0F0E8D9F8EEDDFAEFDDF9EDD9F9
        ECD7F8EAD3F8E8D1F8E7CEF7E6CBF6E5C8B48B7EFF00FFFF00FFFF00FFFF00FF
        FF00FF987664B8B6B2B8B5B1B8B5B0B7B4ADB7B2ACBCB7AECDC6BCE5DED1F5EC
        DEFAF0E0FAEFDDFAEEDBF9ECD8F8EBD5F8E9D2F7E8CFF7E7CCB48B7EFF00FFFF
        00FF00009A00009A00009A00009A00009A00009A00009A00009A00009A00009A
        BDB8B0DFD8CFF4ECE0FAF1E2FBF1E1FAEFDFFAEEDCF9ECD8F8EBD6F8EAD3F8E8
        CFB48B7EFF00FFFF00FF00009A4978FF3B6BFF285CFF144AFF053AFF002DF900
        23E7031AD100009A732600882D00953200983300993300993300993300993300
        993300F9ECD6F8EAD3B48B7EFF00FFFF00FF00009A4A79FF4373FF3365FF2054
        FF0C43FF0034FF0028F3001FDE00009ACDCAC4E6E3DBF6F1E7FCF5EAFCF4E8FB
        F3E5FAF1E3FAF0E0FAEFDDF9EEDAF9ECD7B48B7EFF00FFFF00FF00009A00009A
        00009A00009A00009A00009A00009A00009A00009A00009AE7E4E0F3EFE9FBF6
        EEFCF7EEFCF5EBFBF5E9FCF3E7FBF2E3FAF0E1FAEFDEF9EDDBB48B7EFF00FFFF
        00FFFF00FFFF00FFFF00FFDEAD8EFFFFFFFFFFFFFEFEFEFFFDFCFEFDFAFEFCF9
        F8F5F1FBF8F3FCF8F2FDF8F1FDF7EEFCF5ECFBF4E9FBF3E7FBF2E5FBF1E1FAEF
        DEB48B7EFF00FFFF00FFFF00FFFF00FFFF00FFD9A381D9A381D9A381D9A381D9
        A381D9A381D9A381DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482
        DAA482DAA482DAA482DAA482FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_delRecordClick
      ExplicitLeft = 241
    end
    object btn_delAllRecs: TSpeedButton
      Left = 369
      Top = 1
      Width = 71
      Height = 50
      Hint = 
        #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077' '#1089#1090#1088#1086#1082#1080' '#1080#1079' '#1089#1077#1088#1080#1080' ('#1076#1083#1103' '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1103' '#1089#1085#1080#1084#1080#1090#1077' '#1086#1090#1084#1077#1090#1082#1091' ' +
        '"'#1059#1076#1072#1083'.")'
      Align = alLeft
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000690000690000690000
        69000069000069FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000DB10008A1000093
        00008500007D00007600006E00006B000071000081FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0013C0000CBC00
        02B30B16AD4149B66C71C27C7FC57C7FC56365B3303196010272000062000073
        00006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0017
        C9000BC31E2DC8787FDAD2D6F4FDFDFEFFFFFFFFFFFFFFFFFFFFFFFFF6F6FBC0
        C1E06464AD0F0F73000061000082FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF001BD1000FCC5965D7E4E6F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFCDCDE436369000005C000080FF00FFFF00FFFF
        00FFFF00FFFF00FF0020DB0013D36071E2FBFCFEFFFFFFFFFFFFFBFCFEB3B7E9
        7475CC5758BE5759BF7C7CCACBCCECFFFFFFFFFFFFFFFFFFE6E6F13A3A930000
        6100007BFF00FFFF00FFFF00FFFF00FF0018DC3D54E3F7F8FFFFFFFFFFFFFFD5
        D8F4464ECA0509AF141AB21113AF1217A612129C1818A26262C0E7E7F6FFFFFF
        FFFFFFDADAE918187A000071FF00FFFF00FFFF00FF0024E60928E2CDD3F8FFFF
        FFFFFFFFCACEF41B2ACA0206BB242FC31F2FCD181ABD3A3BB43435AC2C2CAA10
        109A3030ACE1E1F3FFFFFFFFFFFF7D7EB900006B00008BFF00FFFF00FF001EE9
        4A64EAFFFFFFFFFFFFEDEFFA263EDA000ECB071EC9151EC40F1AC51821BF272A
        B02122A71C1CA21212A10000934545B6FAFAFDFFFFFFE1E1EC151583000089FF
        00FF002AF20020EE90A2F7FFFFFFFFFFFF7B8EF00013DB001CD5041BCF0C15C7
        0D19C41823BE2124AF1D1DA510109F0606A000009A000095A2A3D8FFFFFFFFFF
        FF6464AD000089000082002CF60430F2CED7FEFFFFFFF3F6FF1D42EE001FE50A
        2CE00F2CDA0C16CF2B39CB2D34BD2D30B0292BAE0C0CAB0F15AD080BA5000097
        4242B4FDFDFEFFFFFFA2A3D8000097000065002DFB1741F7EDF1FFFFFFFFD4DC
        FF0430F50022ED9BAAF6F0F2FDE6E6FBE3E5FBDDDDF3DBDBF4E1E2F6E7E7F7EF
        EFFA787CD100009C1618A6F2F2FAFFFFFFC3C6EA0308A70000740336FF365CFC
        F7F8FFFFFFFFC6D2FF0233FD0026F5AEBCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF878CDA0000A50C12AAEDEFFAFFFFFFCBCCEC050DA900
        02A32853FF5274FFF5F7FFFFFFFFD9E1FF0537FF002BFD829AFECAD3FCC9D0FB
        D9DFFAE5E8FAE1E2F8C7CDF5C5CAF3CACFF2656ED40001AE1B24B7F5F6FCFFFF
        FFC3C6EA020CAD0005A9466BFF5B7CFFEDF1FFFFFFFFF7F8FF2652FF002EFF03
        36FF0434F90724EE2D41E12239DB2536DA152CD50413CE041CCA0217C40004B8
        4C57CCFEFEFFFFFFFFA1A6E30003AE0008AD0838FF5274FFE1E7FFFFFFFFFFFF
        FF8FA6FF0027FF0031FF0031FF0B2BF60221F21E3DEC011ADF0020DB0012D500
        19D20016CB000FC4B3B7E9FFFFFFFFFFFF5965D70002B1FF00FFFF00FF466BFF
        CAD5FFFFFFFFFFFFFFF7F8FF3C63FF0027FF0033FF153CFF1B42FE153BF5021C
        E81230E5041EE10020DB000DD26071E2FFFFFFFFFFFFDFE2F70F1FC1000BB8FF
        00FFFF00FF6585FF95AAFFFEFEFFFFFFFFFFFFFFDFE5FF335AFF0229FF0832FF
        1742FF1B46FF1838EE082FEB0222E90017E14A64EAF1F3FDFFFFFFFFFFFF727F
        DE0007BEFF00FFFF00FFFF00FFFF00FF6281FFE1E7FFFFFFFFFFFFFFFFFFFFED
        F1FF6C87FF113DFF022AFF0023FF0021FC0025F81B3FF38497F5F8FAFFFFFFFF
        FFFFFFD2D6F40F23CB0011C3FF00FFFF00FFFF00FFFF00FF95AAFF8FA6FFF3F6
        FFFFFFFFFFFFFFFFFFFFFFFFFFD4DCFF9AADFF7F98FF829AFEA1B3FFE6EBFFFF
        FFFFFFFFFFFFFFFFD9DEF9293ED80011CBFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF7590FFA1B3FFF3F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB8C2F6223ADD0013D3FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF91A7FF849CFFCED7FEF7F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFBFBFECAD1FB6A81F1082BE2001ADCFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7590FF89
        A0FFB9C7FFDBE2FFE5EAFFE3E9FFD9E1FFBECAFD7B94FB3355F2072EE90025E5
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7F98FF6585FF6987FF6987FF5B7CFF3C60FB3559F733
        55F2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_delAllRecsClick
      ExplicitLeft = 316
    end
    object btn_allDrugLoad: TSpeedButton
      Left = 1
      Top = 1
      Width = 53
      Height = 50
      Hint = #1042#1099#1073#1086#1088' '#1087#1088#1077#1087#1072#1088#1072#1090#1072' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1074#1099#1087#1091#1089#1082#1072' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1084#1077#1089#1103#1094#1072
      Align = alLeft
      Caption = #1042#1089#1103' '#1079#1072#1075#1088'.'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBB4A00BB4A00BB4A00BB4A00BB4A00BB
        4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00
        BB4A00BB4A00BB4A00BB4A00FF00FFFF00FFFF00FFFF00FFBB4A00FFFFFFFFF4
        E7FFF0DEFFEBD5FEE6CB29961CFEDDB8FFD8B0FFD5A7FED1A0F4C696B6926D23
        6D18DCB182EFC08EFBC995FECB96FECB96BB4A00FF00FFFF00FFFF00FFFF00FF
        BB4A00FFFFFFFFF8F0FEF4EAFFEFE1FFEBD729961CFEE2C4FEDEBBFED9B1FFD5
        A9E6BD932C2D2E0E3C4C535A519A7F5FD7AC7FF4C490FECB96BB4A00FF00FFFF
        00FFFF00FFFF00FFBB4A00FFFFFFFFFCF8FFF8F2FFF4EAFEF0E129961CFFE7CF
        FEE3C6FEDEBCFEDAB2FED5AA8F8876055F8E35546C5B4140836850C49E75E9BB
        8ABB4A00FF00FFFF00FFFF00FFFF00FFBB4A00379C2A29961C29961C29961C29
        961C29961C29961C29961C29961C29961C29961C268C1E28524CCE8987B47474
        5F3F381F4A17216A18BB4A00FF00FFFF00FFFF00FFFF00FFBB4A00FFFFFFFFFF
        FFFFFFFFFFFCFBFFFAF429961CFFF2E5FEEFDCFFEAD1FFE6C9FFE0BFFFDCB62A
        6C2CCC8C8AD99797AA6D6D67403D755E49BB4A00FF00FFFF00FFFF00FFFF00FF
        BB4A00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFC29961CFEF6EEFEF3E6FFEEDDFFEA
        D4FEE5CAFFE1C029961CB28472C78C8CD99898A76B6B68413DBB4A00FF00FFFF
        00FFFF00FFFF00FFBB4A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29961CFFFBF6
        FFF7EFFFF3E7FFEFDDFEEAD4FFE6CA29961CFEDCB8A67E6DCA9090D59595AD69
        6973352EFF00FFFF00FFFF00FFFF00FFBB4A00CFCCF87979FF4747FF2C2CFE28
        28FB1D2EC97372FECCC9F8FFF7F0FEF3E7FEEFDEFEEBD529961CFFE3C2FFDDBA
        AB8373DC98978677811588AB109AC1FF00FFFF00FFFF00FFBB4A003941EB3E3E
        E53E3EBB5050B24E4FB13C3AB42C2CD5282DEE1E566B29961C29961C29961C29
        961C29961C29961C29961C53602C1E8FB504A6ED0024AC000289FF00FFFF00FF
        4C4DFE4C4DCE8280B0DED4BDCEC2C1ACABCAEAE2CE9391B23C3CAD3232F48F8C
        FBFFF8F3FFF4EA29961CFEEDD9FEE7CFFEE2C6FFDEBC77B2B40759CF1628D502
        0FA0FF00FF4848FF5858D9AAA9BFFFFAC9F8D098EDB57AE7A970F7CE9AFFFFEB
        C9CACA3D3CAB3737FECECEFBFFFAF229961CFFF2E3FFEDDAFEE9D1FEE3C7FEE0
        BD744F692024CDFF00FFFF00FF6565F77A7AC6FFFFD5FFF7C2FBEFBAFAE3ADF4
        C78CEEB87BF4CF96FFFBDA8B87AB3736D17575FFFFFCFB29961CFFF7EDFFF3E5
        FFEFDAFEEAD1FFE5C6BB4A00FF00FFFF00FF3838FF6362E6C7C5D3FFFFDDFFFF
        CFFFFFD0FFFFD1FFF8C4FFDCA1F6B675F6BC83E6DAC73E3EA94946FEFEECF537
        9C29FEE8EBFEE5E4FEE1DEFEDCD5FED8CABB4A00FF00FFFF00FF4848FF6A69E1
        CEDAE5FCFFFEFFFFD8FFFFD3AFAF933B3C3B3B3C3B3B3C3B3B3C3BC6BCC54B4C
        A6362FE0CC5800CC5800CC5800CC5800CC5800CC5800CC5900BB4A00FF00FFFF
        00FF4848FF6F6EE2BBD0E3FAFEFFFFFFF6FFFFD8B5B5993B3C3B373834887F65
        D8A36EAAA5C0484AAC362FE0BB4A00BB4A00BB4A00BB4A00BB4A00BB4A00BB4A
        00FF00FFFF00FFFF00FF3535FF6E6DEAD3C9DCFFFFFFFFFFFFFFFFF3FFFFD9D7
        D7B056574CA39373FFD092E6D5B84141BA2F2EFFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6A6AFB8F89D3FFFFF4FFFF
        FFFFFFFFFFFFFBFFFFEFE7E7C7565447BDB08A908BBB3939E5FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4141FF
        6968EDBAAFCFFFFFF4FFFFFFFCFFFFF8FCFFFFFFFFFEFCCFADACB44142D42F2E
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF4646FF5C5CED938CD4E3DDDEE3EEEBCBE3EFEAE9EE9797D8
        4242E03030FCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3333FF4242FA4B49E9625EE160
        5EE24444E92F2FF72626FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF1C1CFF1B1BFF1818FF1717FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_allDrugLoadClick
      ExplicitHeight = 51
    end
  end
  object FindDlgEh1: TFindDlgEh
    DBGrid = grid_zagr
    FindFont.Charset = DEFAULT_CHARSET
    FindFont.Color = clRed
    FindFont.Height = -11
    FindFont.Name = 'MS Sans Serif'
    FindFont.Style = [fsBold]
    ShowFilterPanel = True
    SimpleSeek = True
    Left = 464
    Top = 344
  end
  object mem_texGur: TkbmMemTable
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
    Left = 712
    Top = 568
    object mem_texGurKART_ID: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KART_ID'
    end
    object mem_texGurKEI_ID_KART: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KEI_ID_KART'
    end
    object mem_texGurKEI_ID_NORM: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KEI_ID_NORM'
    end
    object mem_texGurKEI_ID_OST_PREP: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KEI_ID_OST_PREP'
    end
    object mem_texGurKEI_ID_OST_CEX: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KEI_ID_OST_CEX'
    end
    object mem_texGurRAZDEL_ID: TIntegerField
      DefaultExpression = '0'
      FieldName = 'RAZDEL_ID'
    end
    object mem_texGurKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
    end
    object mem_texGurSTROKA_ID: TIntegerField
      DefaultExpression = '0'
      FieldName = 'STROKA_ID'
    end
    object mem_texGurSERIA_ID: TIntegerField
      DefaultExpression = '0'
      FieldName = 'SERIA_ID'
    end
    object mem_texGurDOC_ID: TIntegerField
      DefaultExpression = '0'
      FieldName = 'DOC_ID'
    end
    object mem_texGurDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
    end
    object mem_texGurNEIS: TStringField
      FieldName = 'NEIS'
      Size = 10
    end
    object mem_texGurNDOK: TStringField
      FieldName = 'NDOK'
    end
    object mem_texGurNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object mem_texGurKOL_RASH_EDIZ: TFloatField
      DefaultExpression = '0'
      FieldName = 'KOL_RASH_EDIZ'
    end
    object mem_texGurPLNORM: TFloatField
      DefaultExpression = '0'
      FieldName = 'PLNORM'
    end
    object mem_texGurOSTATOK_END_S: TFloatField
      DefaultExpression = '0'
      FieldName = 'OSTATOK_END_S'
    end
    object mem_texGurOSTATOK_END_NZ: TFloatField
      DefaultExpression = '0'
      FieldName = 'OSTATOK_END_NZ'
    end
    object mem_texGurOSTATOK_END_S_CEX: TFloatField
      DefaultExpression = '0'
      FieldName = 'OSTATOK_END_S_CEX'
    end
    object mem_texGurKRAZ: TIntegerField
      FieldName = 'KRAZ'
    end
    object mem_texGurZAG_ALL: TFloatField
      DefaultExpression = '0'
      FieldName = 'ZAG_ALL'
    end
    object mem_texGurDELETE: TBooleanField
      DefaultExpression = 'false'
      FieldName = 'DELETE'
    end
    object mem_texGurADD: TBooleanField
      FieldName = 'ADD'
    end
    object mem_texGurOSTATOK_BEGIN_S: TFloatField
      DefaultExpression = '0'
      FieldName = 'OSTATOK_BEGIN_S'
    end
    object mem_texGurOSTATOK_BEGIN_NZ: TFloatField
      DefaultExpression = '0'
      FieldName = 'OSTATOK_BEGIN_NZ'
    end
    object mem_texGurPRIX: TFloatField
      FieldName = 'PRIX'
    end
    object mem_texGurPEREDANO_PRIH_NZ: TFloatField
      DefaultExpression = '0'
      FieldName = 'PEREDANO_PRIH_NZ'
    end
    object mem_texGurPRIX_PERIOD: TFloatField
      DefaultExpression = '0'
      FieldName = 'PRIX_PERIOD'
    end
    object mem_texGurZAG: TFloatField
      DefaultExpression = '0'
      FieldName = 'ZAG'
    end
    object mem_texGurZAG_PERIOD: TFloatField
      DefaultExpression = '0'
      FieldName = 'ZAG_PERIOD'
    end
    object mem_texGurRASH_VIRAB_PERIOD: TFloatField
      DefaultExpression = '0'
      FieldName = 'RASH_VIRAB_PERIOD'
    end
    object mem_texGurPEREDANO_RASH_S: TFloatField
      DefaultExpression = '0'
      FieldName = 'PEREDANO_RASH_S'
    end
    object mem_texGurPEREDANO_RASH_NZ: TFloatField
      DefaultExpression = '0'
      FieldName = 'PEREDANO_RASH_NZ'
    end
    object mem_texGurCHANGED: TBooleanField
      FieldName = 'CHANGED'
    end
    object mem_texGurXARKT: TStringField
      FieldName = 'XARKT'
      Size = 30
    end
    object mem_texGurGOST: TStringField
      FieldName = 'GOST'
      Size = 60
    end
    object mem_texGurKSM_ID_PREP: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KSM_ID_PREP'
    end
    object mem_texGurOLD_DATE_DOK: TDateField
      FieldName = 'OLD_DATE_DOK'
    end
    object mem_texGurTIP_OP_ID: TIntegerField
      FieldName = 'TIP_OP_ID'
    end
    object mem_texGurTIP_DOK_ID: TIntegerField
      FieldName = 'TIP_DOK_ID'
    end
    object mem_texGurSERIA: TStringField
      FieldName = 'SERIA'
    end
    object mem_texGurOLD_SERIA_ID: TIntegerField
      FieldName = 'OLD_SERIA_ID'
    end
    object mem_texGurOLD_SERIA: TStringField
      FieldName = 'OLD_SERIA'
    end
    object mem_texGurKOL_RASH_VIRAB: TFloatField
      FieldName = 'KOL_RASH_VIRAB'
    end
    object mem_texGurDATE_DOK_RASH: TDateField
      FieldName = 'DATE_DOK_RASH'
    end
    object mem_texGurSTROKA_ID_RASH: TIntegerField
      FieldName = 'STROKA_ID_RASH'
    end
    object mem_texGurUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 10
    end
    object mem_texGurKOL_PRIH: TFloatField
      FieldName = 'KOL_PRIH'
    end
  end
  object ds_texGur: TDataSource
    DataSet = mem_texGur
    Left = 760
    Top = 568
  end
  object q_utPlan: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT *'
      'FROM UTPLAN'
      'WHERE UTPLAN.MES= :month '
      'AND UTPLAN.GOD= :year '
      'AND UTPLAN.SPROD_ID= :sprod_id')
    Macros = <>
    Left = 872
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'month'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'year'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sprod_id'
        ParamType = ptUnknown
      end>
    object q_utPlanGOD: TIntegerField
      FieldName = 'GOD'
      Origin = '"UTPLAN"."GOD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_utPlanMES: TSmallintField
      FieldName = 'MES'
      Origin = '"UTPLAN"."MES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_utPlanSPROD_ID: TIntegerField
      FieldName = 'SPROD_ID'
      Origin = '"UTPLAN"."SPROD_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_utPlanDOL_RB: TSmallintField
      FieldName = 'DOL_RB'
      Origin = '"UTPLAN"."DOL_RB"'
    end
    object q_utPlanDOL_EXP: TSmallintField
      FieldName = 'DOL_EXP'
      Origin = '"UTPLAN"."DOL_EXP"'
    end
    object q_utPlanPLAN: TIBBCDField
      FieldName = 'PLAN'
      Origin = '"UTPLAN"."PLAN"'
      Precision = 18
      Size = 3
    end
    object q_utPlanCENA: TIBBCDField
      FieldName = 'CENA'
      Origin = '"UTPLAN"."CENA"'
      Precision = 18
      Size = 2
    end
  end
  object q_ozhidVipusk: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT kartv.kol_prih'
      'FROM KARTV'
      'INNER JOIN DOCUMENT ON (KARTV.DOC_ID = DOCUMENT.DOC_ID)'
      'WHERE DOCUMENT.STRUK_ID= :struk_id'
      'and document.struk_id = document.klient_id '
      'AND DOCUMENT.TIP_OP_ID = 36 and document.tip_dok_id = 74'
      'AND KARTV.KSM_ID= :ksm_idpr'
      'AND Document.Date_op between :dat1 and :dat2')
    Macros = <>
    Left = 904
    Top = 296
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
        Name = 'dat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat2'
        ParamType = ptUnknown
      end>
    object q_ozhidVipuskKOL_PRIH: TFMTBCDField
      FieldName = 'KOL_PRIH'
      Origin = '"KARTV"."KOL_PRIH"'
      Precision = 18
      Size = 6
    end
  end
  object q_sdano: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT SUM(kart.kol_prih) SDANO'
      'FROM KART'
      'INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)'
      'WHERE DOCUMENT.KLIENT_ID= :struk_id'
      'AND DOCUMENT.TIP_OP_ID = 2'
      'AND KART.KSM_ID = :ksm_idpr'
      'AND Document.Date_op between :dat1 and :dat2')
    Macros = <>
    Left = 936
    Top = 296
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
        Name = 'dat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat2'
        ParamType = ptUnknown
      end>
    object q_sdanoSDANO: TFMTBCDField
      FieldName = 'SDANO'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
  end
end
