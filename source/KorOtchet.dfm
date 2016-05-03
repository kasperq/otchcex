object FKorOtchet: TFKorOtchet
  Left = 163
  Top = 116
  BorderStyle = bsNone
  Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1086'-'#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1086#1090#1095#1077#1090#1072
  ClientHeight = 764
  ClientWidth = 1159
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 674
    Width = 1159
    Height = 1
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 458
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1159
    Height = 33
    ButtonHeight = 30
    ButtonWidth = 32
    Caption = 'ToolBar1'
    Images = ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ToolButton7: TToolButton
      Left = 0
      Top = 0
      Hint = #1042#1099#1073#1086#1088' '#1087#1088#1077#1087#1072#1088#1072#1090#1072' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1074#1099#1087#1091#1089#1082#1072
      Caption = 'ToolButton7'
      ImageIndex = 2
      OnClick = ToolButton7Click
    end
    object ToolButton1: TToolButton
      Left = 32
      Top = 0
      Cursor = crHandPoint
      Hint = #1053#1086#1074#1099#1081
      Caption = 'ToolButton1'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 64
      Top = 0
      Cursor = crHandPoint
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Caption = 'ToolButton2'
      ImageIndex = 0
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 96
      Top = 0
      Cursor = crHandPoint
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1085#1080#1103' '
      Caption = 'ToolButton3'
      ImageIndex = 4
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 128
      Top = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080' '#1089#1099#1088#1100#1103
      Caption = 'ToolButton4'
      ImageIndex = 5
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 160
      Top = 0
      Hint = #1047#1072#1085#1077#1089#1077#1085#1080#1077' '#1088#1072#1089#1093#1086#1076#1072' ('#1085'/'#1079'=0)'
      Caption = 'ToolButton5'
      ImageIndex = 6
      OnClick = ToolButton5Click
    end
    object ToolButton6: TToolButton
      Left = 192
      Top = 0
      Hint = 
        #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1088#1072#1089#1095#1080#1090#1072#1085#1085#1086#1081' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1090#1086#1095#1085#1086#1089#1090#1080' ('#1079#1085#1072#1082#1086#1074' '#1087#1086#1089#1083#1077' '#1079#1072#1087#1103 +
        #1090#1086#1081')'
      Caption = 'ToolButton6'
      ImageIndex = 7
      OnClick = ToolButton6Click
    end
    object Label4: TLabel
      Left = 224
      Top = 0
      Width = 245
      Height = 30
      Margins.Bottom = 0
      Alignment = taRightJustify
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = #1047#1072#1076#1072#1081#1090#1077' '#1084#1077#1089#1103#1094' '#1080' '#1075#1086#1076' '#1087#1088#1086#1089#1084#1086#1090#1088#1072' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Layout = tlCenter
    end
    object ComboBox1: TComboBox
      Left = 469
      Top = 0
      Width = 111
      Height = 21
      Ctl3D = False
      DropDownCount = 12
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        ' '#1103#1085#1074#1072#1088#1100
        ' '#1092#1077#1074#1088#1072#1083#1100
        ' '#1084#1072#1088#1090
        ' '#1072#1087#1088#1077#1083#1100
        ' '#1084#1072#1081
        ' '#1080#1102#1085#1100
        ' '#1080#1102#1083#1100
        ' '#1072#1074#1075#1091#1089#1090
        ' '#1089#1077#1085#1090#1103#1073#1088#1100
        ' '#1086#1082#1090#1103#1073#1088#1100
        ' '#1085#1086#1103#1073#1088#1100
        ' '#1076#1077#1082#1072#1073#1088#1100)
    end
    object ComboBox2: TComboBox
      Left = 580
      Top = 0
      Width = 69
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 1
      OnChange = ComboBox2Change
      Items.Strings = (
        '2000'
        '2001'
        '2002'
        '2003'
        '2004'
        '2005'
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017')
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 97
    Width = 1159
    Height = 577
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1055#1088#1080#1093#1086#1076
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1151
        Height = 549
        Align = alClient
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        AutoFitColWidths = True
        Ctl3D = False
        DataSource = DSRaspSyrPrep
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16776176
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clBlack
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghRowHighlight]
        ParentCtl3D = False
        ParentFont = False
        RowHeight = 2
        RowLines = 1
        STFilter.Visible = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleHeight = 25
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnEditButtonClick = DBGridEh1EditButtonClick
        Columns = <
          item
            Alignment = taCenter
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'KRAZ'
            Footers = <>
            Title.Caption = #1056#1072#1079#1076#1077#1083
            Width = 43
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'KSM_ID'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'NMAT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1099#1088#1100#1103
            Width = 215
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'NEIS'
            Footers = <>
            Title.Caption = #1045'.'#1080'.'
            Width = 46
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'KOL_RASH_EDIZ'
            Footers = <>
            Title.Caption = #1055#1088#1080#1093#1086#1076
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'NDOK'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090
          end
          item
            EditButtons = <>
            FieldName = 'SERIA'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1057#1077#1088#1080#1103' '#1089#1099#1088#1100#1103
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'OST_C'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1074' '#1094#1077#1093#1077
          end
          item
            EditButtons = <>
            FieldName = 'DOC_ID'
            Footers = <>
            Visible = False
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1151
        Height = 549
        Align = alClient
        AutoFitColWidths = True
        DataSource = DSRaspSyrPrep
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16776176
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clNavy
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghRowHighlight]
        ParentFont = False
        STFilter.Visible = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleHeight = 25
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnEditButtonClick = DBGridEh3EditButtonClick
        Columns = <
          item
            Checkboxes = True
            EditButtons = <>
            FieldName = 'VIB'
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
            Title.Caption = #1042#1099#1073#1086#1088
            Width = 45
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'KRAZ'
            Footers = <>
            Title.Caption = #1056#1072#1079#1076#1077#1083
            Width = 51
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'KSM_ID'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 113
          end
          item
            EditButtons = <>
            FieldName = 'NMAT'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1099#1088#1100#1103
            Width = 215
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'NEIS'
            Footers = <>
            Title.Caption = #1045'.'#1080'. '
            Width = 74
          end
          item
            DisplayFormat = '######0.000000'
            EditButtons = <>
            FieldName = 'KOL_RASH_EDIZ'
            Footers = <>
            Title.Caption = #1047#1072#1075#1088#1091#1079#1082#1072'|'#1092#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103
            Width = 85
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'KOLVIP'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1047#1072#1075#1088#1091#1079#1082#1072'| '#1087#1086' '#1085#1086#1088#1084#1077
            Width = 108
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'ONM_S'
            Footers = <>
            Visible = False
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'ONM_NZ'
            Footers = <>
            Visible = False
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'OT_S'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1084#1077#1089#1103#1094#1072' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'|'#1074' '#1089#1099#1088#1100#1077
            Width = 137
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'OT_NZ'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1084#1077#1089#1103#1094#1072' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'|'#1074' '#1085'/'#1079
            Width = 137
          end
          item
            EditButtons = <>
            FieldName = 'NDOK'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090
            Width = 75
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'OST_C'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1074' '#1094#1077#1093#1077
          end
          item
            EditButtons = <>
            FieldName = 'ZNAKI'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_NORM'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'RAZDEL_ID'
            Footers = <>
            Visible = False
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1056#1072#1089#1093#1086#1076
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1151
        Height = 549
        Align = alClient
        AutoFitColWidths = True
        Ctl3D = False
        DataSource = DSRaspSyrPrep
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16776176
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clNavy
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghRowHighlight]
        ParentCtl3D = False
        ParentFont = False
        STFilter.Visible = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleHeight = 25
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnEditButtonClick = DBGridEh2EditButtonClick
        Columns = <
          item
            Checkboxes = True
            EditButtons = <>
            FieldName = 'VIB'
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
            Title.Caption = #1042#1099#1073#1086#1088
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'KRAZ'
            Footers = <>
            Title.Caption = #1056#1072#1079#1076#1077#1083
            Width = 51
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'KSM_ID'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'NMAT'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1099#1088#1100#1103
            Width = 215
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'NEIS'
            Footers = <>
            Title.Caption = #1045'.'#1080'. '
            Width = 74
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'KOL_RASH_EDIZ'
            Footers = <>
            Title.Caption = #1056#1072#1089#1093#1086#1076' '#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1091'|'#1092#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081
            Width = 79
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'KOLVIP'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1056#1072#1089#1093#1086#1076' '#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1091'| '#1087#1086' '#1085#1086#1088#1084#1077
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'OT_S'
            Footers = <>
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'| '#1074' '#1089#1099#1088#1100#1077
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'OT_NZ'
            Footers = <>
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'| '#1074' '#1085'/'#1079
          end
          item
            DisplayFormat = '########0.000000'
            EditButtons = <>
            FieldName = 'OST_C'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1074' '#1094#1077#1093#1077
          end
          item
            EditButtons = <>
            FieldName = 'ZNAKI'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_NORM'
            Footers = <>
            Visible = False
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1077#1088#1077#1076#1072#1085#1086
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 41
        Width = 1151
        Height = 508
        Align = alClient
        AutoFitColWidths = True
        DataSource = DSPeredanoSyr
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16776176
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clNavy
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghRowHighlight]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleHeight = 25
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnDrawColumnCell = DBGridEh4DrawColumnCell
        OnEditButtonClick = DBGridEh4EditButtonClick
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'KSM_ID'
            Footers = <>
            Title.Caption = #1050#1086#1076' '#1089#1099#1088#1100#1103
            Width = 47
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'KRAZ'
            Footers = <>
            Title.Caption = #1056#1072#1079'.'
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'NMAT1'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1099#1088#1100#1103
            Width = 241
          end
          item
            EditButtons = <>
            FieldName = 'KOL_RASH_EDIZ'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 87
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'NEIS'
            Footers = <>
            Title.Caption = #1045'.'#1080'.'
            Width = 66
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'KRAZ1'
            Footers = <>
            Title.Caption = #1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1089#1099#1088#1100#1077'|'#1056#1072#1079'.'
            Width = 41
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'KOD_PROD'
            Footers = <>
            Title.Caption = #1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1089#1099#1088#1100#1077'|'#1050#1086#1076' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'NMAT'
            Footers = <>
            Title.Caption = #1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1089#1099#1088#1100#1077'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
            Width = 166
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'STNAME'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1089#1099#1088#1100#1077'|'#1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1090#1088#1091#1082'. '#1087#1086#1076#1088#1072#1079#1076'.'
          end
          item
            EditButtons = <>
            FieldName = 'DOC_ID'
            Footers = <>
            Visible = False
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1151
        Height = 41
        Align = alTop
        Constraints.MinHeight = 40
        TabOrder = 1
        object Label3: TLabel
          Left = 438
          Top = 16
          Width = 78
          Height = 13
          Margins.Bottom = 0
          Caption = #1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1085#1086':'
        end
        object Label6: TLabel
          Left = 24
          Top = 18
          Width = 73
          Height = 13
          Margins.Bottom = 0
          Caption = #1063#1090#1086' '#1087#1077#1088#1077#1076#1072#1085#1086':'
        end
        object RadioGroup2: TRadioGroup
          Left = 520
          Top = 1
          Width = 313
          Height = 39
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            #1085#1072' '#1076#1088#1091#1075#1086#1081' '#1087#1088#1077#1087#1072#1088#1072#1090
            #1074' '#1076#1088'.'#1089#1090#1088#1091#1082'. '#1087#1086#1076#1088#1072#1079#1076#1077#1083'.'
            #1089#1087#1080#1089#1072#1090#1100)
          TabOrder = 0
        end
        object RadioGroup1: TRadioGroup
          Left = 98
          Top = 3
          Width = 303
          Height = 35
          Caption = #1054#1090#1082#1091#1076#1072
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            #1089#1099#1088#1100#1077
            #1085#1077#1079#1072#1074#1077#1088#1096#1077#1085#1082#1072)
          ParentFont = False
          TabOrder = 1
        end
        object Edit7: TEdit
          Left = 167
          Top = 17
          Width = 38
          Height = 15
          AutoSize = False
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
        end
        object Edit8: TEdit
          Left = 348
          Top = 18
          Width = 37
          Height = 15
          AutoSize = False
          Color = clMoneyGreen
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 1159
    Height = 64
    Align = alTop
    Constraints.MinHeight = 60
    TabOrder = 2
    object Label2: TLabel
      Left = 6
      Top = 11
      Width = 52
      Height = 13
      Margins.Bottom = 0
      Caption = #1055#1088#1077#1087#1072#1088#1072#1090':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 511
      Top = 42
      Width = 26
      Height = 13
      Margins.Bottom = 0
      Caption = #1043#1086#1089#1090':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 764
      Top = 43
      Width = 40
      Height = 13
      Margins.Bottom = 0
      Caption = #1060#1080#1088#1084#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 539
      Top = 41
      Width = 222
      Height = 17
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'Lab22'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 214
      Top = 13
      Width = 56
      Height = 16
      Margins.Bottom = 0
      Caption = 'Label19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 813
      Top = 43
      Width = 346
      Height = 17
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'Lab29'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 197
      Top = 41
      Width = 39
      Height = 17
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'Lab21'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 286
      Top = 42
      Width = 40
      Height = 13
      Margins.Bottom = 0
      Caption = #1061#1072#1088'_'#1082#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 330
      Top = 43
      Width = 170
      Height = 18
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'Label41'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 160
      Top = 41
      Width = 34
      Height = 13
      Margins.Bottom = 0
      Caption = #1045#1076'.'#1080#1079'.:'
    end
    object Label1: TLabel
      Left = 816
      Top = 13
      Width = 39
      Height = 13
      Margins.Bottom = 0
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 191
      Top = 10
      Width = 23
      Height = 21
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
    object Label20: TLabel
      Left = 50
      Top = 41
      Width = 46
      Height = 13
      Margins.Bottom = 0
      Caption = 'Label20'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 6
      Top = 41
      Width = 38
      Height = 13
      Margins.Bottom = 0
      Caption = #1042#1099#1087#1091#1089#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 59
      Top = 9
      Width = 133
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
      TabOrder = 0
      OnChange = Edit1Change
      OnClick = Edit1Click
      OnKeyDown = Edit1KeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 675
    Width = 1159
    Height = 89
    Align = alBottom
    TabOrder = 3
    object DBGridEh5: TDBGridEh
      Left = 1
      Top = 1
      Width = 1157
      Height = 87
      Align = alClient
      AutoFitColWidths = True
      Constraints.MinHeight = 50
      DataSource = DSRaspSyrPrep
      EvenRowColor = clWindow
      Flat = True
      FooterColor = 16776176
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab]
      ReadOnly = True
      RowSizingAllowed = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleHeight = 25
      UseMultiTitle = True
      VertScrollBar.Tracking = True
      VertScrollBar.VisibleMode = sbNeverShowEh
      Columns = <
        item
          EditButtons = <>
          FieldName = 'KRAZ'
          Footers = <>
          Title.Caption = #1056#1072#1079#1076#1077#1083
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
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1099#1088#1100#1103
        end
        item
          EditButtons = <>
          FieldName = 'NEIS'
          Footers = <>
          Title.Caption = #1045#1076'.'#1080#1079#1084'.'
        end
        item
          DisplayFormat = '########0.000000'
          EditButtons = <>
          FieldName = 'ONM_S'
          Footers = <>
          Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1084#1077#1089#1103#1094#1072' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'|'#1074' '#1089#1099#1088#1100#1077
          Width = 184
        end
        item
          DisplayFormat = '########0.000000'
          EditButtons = <>
          FieldName = 'ONM_NZ'
          Footers = <>
          Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1084#1077#1089#1103#1094#1072' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'|'#1074' '#1085'/'#1079
          Width = 134
        end
        item
          DisplayFormat = '########0.000000'
          EditButtons = <>
          FieldName = 'PRIX_PERIOD'
          Footers = <>
          Title.Caption = #1055#1088#1080#1093#1086#1076
          Width = 215
        end
        item
          EditButtons = <>
          FieldName = 'ZAG_PERIOD'
          Footers = <>
          Title.Caption = #1047#1072#1075#1088#1091#1079#1082#1072
          Width = 74
        end
        item
          DisplayFormat = '######0.000000'
          EditButtons = <>
          FieldName = 'RASH_VIRAB_PERIOD'
          Footers = <>
          Title.Caption = #1056#1072#1089#1093#1086#1076
          Width = 85
        end
        item
          DisplayFormat = '########0.000000'
          EditButtons = <>
          FieldName = 'PEREDANO_RASH_S'
          Footers = <>
          Title.Caption = #1055#1077#1088#1077#1076#1072#1085#1086' '#1080#1079' '#1089#1099#1088#1100#1103
          Width = 108
        end
        item
          DisplayFormat = '########0.000000'
          EditButtons = <>
          FieldName = 'PEREDANO_RASH_NZ'
          Footers = <>
          Title.Caption = #1055#1077#1088#1077#1076#1072#1085#1086' '#1080#1079' '#1085'/'#1079
          Width = 137
        end
        item
          DisplayFormat = '########0.000000'
          EditButtons = <>
          FieldName = 'OT_S'
          Footers = <>
          Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1084#1077#1089#1103#1094#1072' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'|'#1074' '#1089#1099#1088#1100#1077
          Width = 108
        end
        item
          DisplayFormat = '########0.000000'
          EditButtons = <>
          FieldName = 'OT_NZ'
          Footers = <>
          Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1084#1077#1089#1103#1094#1072' '#1085#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1077'| '#1074' '#1085'/'#1079
          Width = 137
        end>
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 776
    Top = 212
    Bitmap = {
      494C010108000900500018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE585800A74B4C00A36E
      6F00BABFBE00CED0CF00D0CDCC00CCCDCC00C5C5C500A76E6E0095383800A44E
      4E00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BE767000D0666600CA5E5F00A46B
      6C00AC919000D8C0BE00FAF4F100FDFDFC00EBEBEA00B26E6D008F222100B852
      5200B45B5B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7
      D800F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2
      CF00B7818300000000000000000000000000B3897B00B3897B00B3897B00B389
      7B00B3897B00B3897B00B3897B00B3897B00B3897B00B3897B00B3897B00B389
      7B00B3897B00B3897B00B3897B00B3897B00B3897B00B3897B00B3897B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009BD4FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD766F00CE666600C8616000A972
      720098525200AB585800E2D4D200FFFFFF00FAF7F600B87372008F212100B751
      5100B35A5B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800F3E7D800F2E6D700FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F0E2CF00F0E2
      CF00B7818300000000000000000000000000A97F7A00F6E3C400F5E1C200F5DF
      BE00F5DFBB00F5DDB900F4DCB600F4DBB300F3D9B000F3D8AE00F2D6AB00F2D5
      A900F2D4A700F2D3A400F0D2A200F0D1A000F0D09E00F0D09C00B3897B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000007200BA720000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD766F00CE656600C65F5F00B17A
      7A009D56550092242400BBA6A500F0F8F600FFFFFF00BC7977008A1D1D00B650
      5000B35A5B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800F3E8DB00F3E7D900FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00F0E2CF00F0E2
      CF00B7818300000000000000000000000000A97F7A00F7E4C800F6E3C500F6E1
      C200F6E1C000F5DEBC00F4DDBA00F4DCB600F3DAB400F3D9B100F2D8AE00F2D7
      AC00F2D6AA00F1D5A700F1D4A500F1D3A300F0D1A000F1D09E00B3897B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD766F00CE666600C65D5D00B87B
      7B00B6878500A4626200A2909100CCCECB00F4EDEC00BE7777008F2122000677
      0C0007760D0006760C0006740B0005700A000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800F4EADE00F4E9DC00F3E8DA00F3E7D900F2E6D700F2E5D500F1E4D400F1E4
      D200F0E3D000F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2
      CF00B7818300000000000000000000000000A97F7A00F8E6CC00F6E5C900F6E3
      C600F6E2C300F5E1C000F5DFBD00F5DEBA00F4DCB800F3DBB500F3DAB200F2D9
      AF00F2D7AD00F2D6AA00F2D5A700F2D4A500F1D3A300F1D2A100B3897B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD767000CE666700CB616200C765
      6600CC787700C8767600C16C6C00C36C6C00D0797900C7636300057009000674
      0C000C8316000D9119000C9718000A901500087D0E0006770C00000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800F4EBE000F3E9DE00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000EFE1CE00EFE1
      CE00B7818300000000000000000000000000A97F7B00F8E8CF00F7E6CD00F7E6
      CA00F7E3C600F6E2C300F5E1C100F5E0BD00F4DEBB00F4DDB800F3DBB500F4DA
      B300F2D9B000F2D7AD00F2D7AA00F1D5A800F1D4A600F1D3A400B3897B000000
      0000000000000000000000000000000000000000000000000000FFFFEA000000
      00000000000000009B0000000000000000000072BA0000000000000000000000
      00000000000072BAEA0000000000000000000000000000000000009BD4000000
      0000000000000000000000000000FFFFD400BC746E00B8545200BC686600CE8D
      8C00D49A9A00D59C9B00D69A9900D3919000D1929300D59F9D00D79E9D00D071
      7100B055560000000000098412000E9E19000FA61C00098A130005700A000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800EDE5DB00EDE4DA00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00E8DAC800E8DA
      C800B7818300000000000000000000000000AA807B00F8EAD300F8E8D000F7E7
      CE00F6E5CA00F6E4C700F6E2C400F6E1C100F5E0BE00F4DFBB00F5DDB800F4DC
      B600F3DBB300F3D9B100F3D8AE00F2D7AB00F2D6A900F2D4A700B3897B000000
      000000000000000000000000000000000000BAEAFF0000000000720000000000
      0000000000000000000000000000000000000072BA0000000000000000000000
      00000000000072BAEA0000000000000000000000000000000000009BD4000000
      0000000000000000000000000000FFFFD400B86D6600BA676300EBDDDB00F8F4
      F400F7F2F100F7F3F100F7F3F100F8F3F200F8F2F100FBFAF900EADBDA00C970
      7000AE515300000000000000000006750C000E9D19000FA81D00098712000677
      0C0000000000000000000000000000000000000000000000000000000000B288
      7E00D9D3CB00D9D2C900D9D1C700D8D0C700D7CFC500D7CEC400D6CEC200D6CD
      C000D6CCBF00D6CBBE00D6CABC00D5C9BA00D5C8B900D4C7B800D4C7B700D4C7
      B700B7818300000000000000000000000000AD837D00F9ECD700F8EAD400DF99
      3E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF99
      3E00DF993E00DF993E00DF993E00DF993E00F2D7AC00F2D6A900B3897B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D49B0000000000000072BA0000000000000000000000
      00000000000072BAEA0000000000000000000000000000000000009BD4000000
      0000000000000000000000000000FFFFD400B86C6500BF6F6C00F6F1EF00F7F5
      F500F1ECEB00F2EDEC00F2EDEC00F2EDEC00F1ECEB00F7F7F600EBDBDA00C86E
      6E00AE515200B7818300B7818300B78183000A83130011AA20000C9D19000677
      0C00B7818300B7818300B7818300B7818300000000000000000000000000A07A
      7100B5AFAA00B4AEA900B4ADA700B4ACA600B4ACA400B3ACA300B2ABA200B2AA
      A100B1A9A000B1A99E00B0A89D00B0A89C00B0A79A00B0A69A00B0A59900AFA4
      9800A4747600000000000000000000000000B2887E00FAEDDB00F9ECD800F9EB
      D400F8E9D100F8E7CF00F7E6CC00F7E4C900F6E3C600F6E2C300F6E0C000F5DF
      BD00F5DEBA00F4DCB700F3DBB400F3DAB200F3D8AF00F3D7AC00B3897B000000
      000000000000000000000000000000000000000000000072BA0000000000FFD4
      9B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B86C6500C06F6C00F3ECEA00E4E3
      E300D7D4D300D9D6D600D9D6D600D9D6D600D7D4D300E1E4E300E9D8D700C96F
      6F00AE515200F7E3C500F6DFBC00F5DBB40008770F0019A92B0012AA22000677
      0C00F0CF9800F0CF9800F5D49A00B7818300A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800B68B8000FAEFDE00FAEDDB00F9EC
      D900F9EBD600F8EAD200F7E8D000F8E6CC00F7E5C900F6E3C700F6E2C400F6E1
      C000F5DFBE00F5DEBA00F4DCB800F3DBB500F3DAB200F3D9AF00B3897B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B86C6500BF6E6C00F4EDEC00ECEA
      E900E1DDDC00E3DFDF00E3DFDF00E3DFDF00E1DDDC00EAEBEA00E9D8D800C96F
      6E00AE515200F6E3CB00F5DFC200F4DBBA0006730C0023AD390021B838000677
      0C00EECC9700EECC9700F3D19900B7818300A35228000000000000000000BA8E
      8200E7E2DD00E7E2DB00E6E0DA00E6E0D900E5DED700E5DED500E5DDD400E5DB
      D200E4DBD100E3D9CF00E3D9CD00E2D9CC00E2D8CB00E1D6C900E1D6C700E1D5
      C600B78183000000000000000000A3522800BA8E8200FAF0E200FAEFDE00DF99
      3E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF99
      3E00DF993E00DF993E00DF993E00DF993E00F4DCB500F4DAB300B3897B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007200000000000000000000000000000000000000000000000000
      000000000000BAEAFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B86C6500C06F6C00F3ECEC00E7E5
      E400DAD7D600DCDAD900DCDAD900DCDAD900DAD7D600E5E6E500EAD9D700CA70
      6F00AE51520005720A0005720A0005720A000877100030BB4D002EC24B000677
      0C0006770C0005720A0005710A00B7818300A35228000000000000000000BA8E
      8200DCD8D400DCD6D200D8754200D8754200D8754200D8754200D8754200D875
      4200D8754200D8754200D8754200D8754200D8754200D8754200D5CBBF00D5CA
      BD00B78183000000000000000000A3522800BE928300FBF2E500FAF1E200FAEF
      DF00FAEEDC00FAECDA00F9ECD7000099CC000099CC000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000099CC000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC0000000000000000009BD4FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B86C6500BF6E6B00F5EEEE00F8F5
      F500F2EBEA00F2EDEC00F2EDEC00F2EDEC00F2EBEA00F8F7F500ECDBDA00C970
      6F00AE52520005720A0021AE350034AF51003BBB5C0044CE690039C75A002DBC
      490021AE350021AE350004700900B7818300A35228000000000000000000AE87
      7700B7B5B100B6B4B000F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CA
      B300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300B1AAA100B1A9
      9F00A47476000000000000000000A3522800C2968500FBF4E800FBF2E500FBF1
      E300FAF0E000FAEEDD00FAEDDA000099CC00CFFFFE00C3FFFE00B7FFFE00ACFF
      FE00A3FFFE009BFFFE0099FFFE0099FEFE0099FCFF0099FAFE0099F8FE0099F6
      FF0099F4FE0099F3FE0099F1FF000099CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000720000000000D49B000000000000000000000000
      00000000000000000000000000000000000000000000B1666300D4CFCE00DADA
      DA00D8D3D300D8D4D400D8D4D400D8D4D400D8D3D300DADADA00D4C7C600AF63
      6300FFFCF400FAEFE40005720A002FAA4B005FEB930055DE830048D36F0021AE
      350022A8380006730B00F3D29B00B7818300A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800C6998600FCF5EB00FCF4E900DF99
      3E00DF993E00DF993E00DF993E000099CC00D8FFFF00CAFFFE00BEFFFE00B2FF
      FE00A8FFFE009FFFFE0099FFFE0099FEFE0099FDFE0099FBFE0099F9FE0099F7
      FF0099F5FF0099F4FF0099F2FE000099CC000000000000000000000072000000
      000000000000FFFFEA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BA8E
      8500FFFFFD00FBF4EC00FAEFE300006B020032AF50005EE891005AE58B003ABE
      5A0008750E00F0D4A900F5D5A300B7818300000000000000000000000000C296
      8500FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FBF7F300FBF7F300FAF5
      EF00FAF5EF00F8F1EB00F8F1EB00F7F1E900F7F1E900F6ECE200F6ECE200F6EC
      E200B7818300000000000000000000000000CA9C8800FCF7EE00FCF5EC00FCF4
      E900FBF2E600FBF1E400FAF0E2000099CC00DEFFFF00D2FFFE00C5FFFE00B9FF
      FE00A2EEED0098EDEC009DFFFE0099FFFE0099FEFE0099FCFE0099FBFE0099F9
      FF0099F6FE0099F5FE0099F2FE000099CC000000000000000000000000000000
      0000000000007200000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4FFFF0000000000FFFFEA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CB9A
      8200FFFFFF00FEF9F500FBF3EC00FAEFE20005720B003FBF62004FD479001181
      1C00F4DBBA00F2D8B200F6D9AC00B7818300000000000000000000000000CA9C
      8800FEFDFC00FDFCFA00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F5ECE300F5EB
      E100B7818300000000000000000000000000CEA08900FDF8F100FCF7EF00FCF6
      ED00FCF4E900FBF3E800FBF2E5000099CC00E5FFFF00DAFFFE00CDFFFE00B3EE
      ED0081B6B5009BE9E800A1FFFE009AFFFE0099FFFE0099FDFE0099FBFE0099FA
      FF0099F7FF0099F6FF0099F3FE000099CC000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000072BA
      EA000000000000000000000000000000000000000000FFFFD400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CB9A
      8200FFFFFF00FFFEFD00FDF8F400FBF3EC00F9EFE3000C7B140013841F00F6E2
      CA00F6DEC100F4DBB900F8DDB400B7818300000000000000000000000000CEA0
      8900FFFFFF00FFFFFF00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00F6EFE600F6EE
      E500B7818300000000000000000000000000D2A38A00FDF9F300FDF8F100DF99
      3E00DF993E00DF993E00DF993E000099CC00ECFFFF00E1FFFE00CAF2F20091B9
      B800ACE9E800B1FFFE00A6FFFE009EFFFE0099FFFE0099FEFE0099FDFE0099FA
      FE0099F9FE0099F7FE0099F4FE000099CC000000000000000000000000000000
      0000009BD4000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCA8
      8700FFFFFF00FFFFFF00FFFEFD00FEF9F400FBF3EB00FAEFE200F9EBD900F8E6
      D100F6E2C800F7E1C200F0DAB700B7818300000000000000000000000000D2A3
      8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F1E900F7F0
      E700B7818300000000000000000000000000D7A78C00FEFAF600FDF9F400FDF8
      F200FDF7F000FCF6ED00FCF5EB000099CC00F2FFFF00B1C3C200889E9E00B8E3
      E300C3FFFE00B8FFFF00ACFFFE00A3FFFE009BFFFE0099FEFE0099FDFE0099FC
      FE0099FAFF0099F8FE0099F6FE000099CC000000000000000000000000000000
      00000000000000000000D49B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCA8
      8700FFFFFF00FFFFFF00FFFFFF00FFFEFD00FDF9F400FBF3EB00FAEEE200FAED
      DC00FCEFD900E6D9C400C6BCA900B7818300000000000000000000000000D7A7
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FEFCFA00FEFB
      F800FCF9F600FBF8F400FBF7F300FAF6F100FAF4EF00F9F3EE00F9F2EC00F7F1
      EA00B7818300000000000000000000000000DAAB8D00FEFBF900FDFAF700FDF9
      F400FDF9F300FDF7F000FCF6EE000099CC00F7FFFF00A8B5B5000C0E0E00A8C7
      C700CBFFFF00BFFFFF00B3FFFE00A8FFFE009FFFFE0099FFFE0099FEFE0099FD
      FE0099FBFE0099F9FF0099F7FE000099CC00D4FFFF00000000009B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFEABA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3B1
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FDF8F300FDF6EC00F1E1
      D500B8857A00B8857A00B8857A00B7818300000000000000000000000000DAAB
      8D00FFFFFF00FFFFFF00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F9F4EF00F9F3
      ED00B7818300000000000000000000000000DEAD8E00FFFDFB00FEFBF900FEFB
      F800FEF9F500FDF9F300FDF7F1000099CC00FBFFFF00F4FFFE00A6B5B5000000
      9A0000009A0000009A00B9FFFE00AEFFFF00A4FFFE009DFFFE0099FEFE0099FE
      FE0099FCFE0099FAFE0099F9FE000099CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3B1
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FFFEF900E3CF
      C900B8857A00E8B27000ECA54A00C5876800000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FAF6F100FAF5
      EF00B7818300000000000000000000000000DEAD8E00FFFDFD00FEFDFA00FEFC
      F900FEFBF800FDFAF500FEF9F3000099CC00FFFFFF00F8FFFF00EFFFFF004A79
      FF0000009A0000009A006C8FD200B4FFFE00AAFFFE00A1FFFE009AFFFE0099FE
      FE0099FDFE0099FCFE0099F9FE000099CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDBD
      9200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4D4
      D200B8857A00FAC57700CD93770000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFC00FEFCFA00FDFBF800FCF9F600FBF8F400FAF6
      F200B7818300000000000000000000000000DEAD8E00FFFEFE00FFFDFD00FEFD
      FB00FEFCFA00FEFBF800FEFAF6000099CC000099CC000099CC000099CC000000
      9A004A79FF0000009A00000000000099CC000099CC000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDBD
      9200FCF7F400FCF7F300FBF6F300FBF6F300FAF5F300F9F5F300F9F5F300E1D0
      CE00B8857A00CF9B86000000000000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FEFDFB00FEFBF900FDFAF700FBF8
      F500B7818300000000000000000000000000DAA48200FFFEFE00FFFEFE00FEFD
      FD00FEFCFB00FEFDFA00FEFCF800FEFAF700FDF9F400FDF8F200FDF7F000FDF6
      EE008D89C7001F1EA4008D88C500FBF2E400FBF0E100FAEFDE00B3897B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDBD
      9200DCA88700DCA88700DCA88700DCA88700DCA88700DCA88700DCA88700DCA8
      8700B8857A00000000000000000000000000000000000000000000000000DEAD
      8F00DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200AA807C00000000000000000000000000DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA482000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B78183000000000000000000000000000000000000000000A87D
      7800B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B781830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B89880058606400817A
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A97F
      7900F5E2C100F5E0BD00F4DEBB00F4DCB800F3DCB500F4DAB200F3D9B000F3D7
      AD00F2D6AA00F1D5A800F1D4A500F1D3A400F1D2A200F0D19F00F0D09D00F0CF
      9C00F0CE9A00B3897B000000000000000000000000000000000000000000A97F
      7900F5E2C100F5E0BD00F4DEBB00F4DCB800F3DCB500F4DAB200F3D9B000F3D7
      AD00F2D6AA00F1D5A800F1D4A500F1D3A400F1D2A200F0D19F00F0D09D00F0CF
      9C00F0CE9A00B3897B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A9AA003E84C400297B
      BE00978994000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A97F
      7A00F6E3C500F5E1C100F5E0BF00F5DFBC00F4DDB800F3DCB600F3DBB300F3D9
      B100F3D8AE00F3D7AC00F1D6A900F2D5A700F1D3A400F0D2A200F0D1A000F0D0
      9E00F0D09D00B3897B000000000000000000000000000000000000000000A97F
      7A00F6E3C500F5E1C100F5E0BF00F5DFBC00F4DDB800F3DCB600F3DBB300F3D9
      B100F3D8AE00F3D7AC00F1D6A900F2D5A700F1D3A400F0D2A200F0D1A000F0D0
      9E00F0D09D00B3897B000000000000000000A4787400A4787400A4787400A478
      7400A4787400A4787400A4787400A4787400A4787400A4787400A4787400A478
      7400A4787400A47874008C5D5C00000000000000000000000000000000000000
      000000000000000000000000000000000000A35228005E8CB10052B9FF002D94
      F7002878B700938186007946300071391C0085432100964B25009D4F27009F50
      27009F5027009F5027009F502700A0512700A2512800A2522800A3522800A352
      2800A3522800A3522800A3522800A3522800000000000000000000000000A97F
      7A00F7E5C900F6E3C6000099000000990000F5DFBC00F4DEBA00993300009933
      000099330000993300009933000099330000993300009933000099330000F1D2
      A100F1D19F00B3897B000000000000000000000000000000000000000000A97F
      7A00F7E5C900F6E3C6000099000000990000F5DFBC00F4DEBA00993300009933
      000099330000993300009933000099330000993300009933000099330000F1D2
      A100F1D19F00B3897B000000000000000000A4787400ECDED100F9F0E000F6EB
      DA00F5EAD900F5E9D600F4E8D400F4E8D300F4E8D300F4E8D400F4E8D400F4E8
      D400F6ECD700EDDFCC008C5D5C00000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800CAE1F4005CBAFC0054B7
      FF002C94F5002A78B7009B8A9000A58F81008E480100D0B89D00E1C5A400E2C4
      A100DFBF9B00E0BF9900E5C29A00EECAA000F6D0A600FBD4A900FDD6AA00FED7
      AB00FED7AB00FED7AB00FED7AB00A3522800000000000000000000000000A97F
      7A00F7E7CC00F6E6CA000099000000990000F6E1C100F5DFBE00F4DEBB00F5DD
      B700F4DCB500F3DAB300F3D9B000F2D8AD00F2D6AB00F2D5A800F1D5A600F1D3
      A300F1D2A200B3897B000000000000000000000000000000000000000000A97F
      7A00F7E7CC00F6E6CA000099000000990000F6E1C100F5DFBE00F4DEBB00F5DD
      B700F4DCB500F3DAB300F3D9B000F2D8AD00F2D6AB00F2D5A800F1D5A600F1D3
      A300F1D2A200B3897B000000000000000000A4787400EADBD000F7EDDF00F3E7
      D900F2E7D800F2E6D600F1E4D400F0E3D100F0E3D100F0E2D000F0E3D000F0E2
      D000F2E6D200EADAC8008C5D5C00000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FFFCF700C9E0F4005BBA
      FC0054B6FF002C93F4002A78B5009D8C910091532000B09E8A00BCA78F00BBA4
      8A00B69E8300B79D8000C2A58500D4B48F00E7C49C00F4CFA400FBD4A900FDD6
      AA00FED7AB00FED7AB00FED7AB00A35228000000000000000000000000007F5F
      5C00BAAF9D00B9AD9A00B9AC9700B8AB9600B8AA9400B8A99100B8A88F00B8A7
      8C00B8A68B00B7A58800B7A48600B6A38400B6A28200B5A18000B5A07F00B59F
      7C00B59F7B0086675C0000000000000000000000000000000000000000007F5F
      5C00BAAF9D00B9AD9A00B9AC9700B8AB9600B8AA9400B8A99100B8A88F00B8A7
      8C00B8A68B00B7A58800B7A48600B6A38400B6A28200B5A18000B5A07F00B59F
      7C00B59F7B0086675C000000000000000000A4787400EBDCD300F7EFE300F3EA
      DE00F3E9DC00F2E8DA00F2E6D800F1E5D600F0E4D300EFE3D100EFE3D100F0E2
      D000F2E5D200EADAC8008C5D5C00000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FFFDFB00FFFBF700C8E0
      F4005BBAFC0054B6FF002B93F5002878B7009173680096897A00998977009784
      720095816E0099826F00A38B7300BB9F8000D4B48F00E6C39B00F2CDA300FAD4
      A800FDD6AA00FED7AB00FED7AB00A35228000000000000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A000000000000660000006600000066
      0000006600000066000000660000006600000066000000660000006600000066
      0000006600000066000000660000006600000066000000660000006600000066
      000000660000006600000066000000660000B4817600ECDED700F9F2E800F9DE
      C200F5C89700F5C99900F5C89800F5C99800F5C89800F4C89700F5C79400F5DA
      BD00F1E7D400EADAC8008C5D5C00000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FFFFFF00FFFEFC00FFFC
      F800C4DEF5005AB9FC004FB5FF004597E30066645D0087787000A57E6500B99C
      8B00BA9F9000BA9F9000BC9D8C00B7896500BE791600CD7B0000DE850000F191
      0000FB970000FE980000FE980000A35228000000000000009A0000000000AD83
      7D00F9ECD800F9EBD500F8E9D200F8E8CF00F7E6CD00F7E5C900F6E4C600F6E2
      C300F5E0C000F5DFBD00F4DEBB00F4DDB700F4DBB500F3DAB200F3D9AF00F3D7
      AD00F2D7AB00B3897B000000000000009A00000000000066000000000000AD83
      7D00F9ECD800F9EBD500F8E9D200F8E8CF00F7E6CD00F7E5C900F6E4C600F6E2
      C300F5E0C000F5DFBD00F4DEBB00F4DDB700F4DBB500F3DAB200F3D9AF00F3D7
      AD00F2D7AB00B3897B000000000000660000B4817600ECE1DA00F9F3EB00F8E4
      CF00FADCC000F9DDC100F9DCC000F8DCBE00F8DCBD00F7DBBC00F7D9B800F3DD
      C400F1E5D300E9D9C7008C5D5C00000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FFFFFF00FFFFFF00C0BF
      BF00BFBDBB00BAD9F2007CC1F100C8D3D900B3A19C00B69A8C00D0BDA600EBE3
      C600F9F7D800F9F7D600EBE3C500CFBAA700B89A8D00AC917B00C0A38200E2BF
      9800F7D1A600FDD6AA00FDD6AA00A35228000000000000009A0000000000B288
      7E00FAEEDB00F9ECD90000009A0000009A00F8E9D000F7E7CD0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A00F3D9
      B000F2D8AE00B3897B000000000000009A00000000000066000000000000B288
      7E00FAEEDB00F9ECD9000066000000660000F8E9D000F7E7CD00006600000066
      000000660000006600000066000000660000006600000066000000660000F3D9
      B000F2D8AE00B3897B000000000000660000B4817600EEE3DC00FAF5EE00F6EE
      E200F5E9DC00F5E9DB00F4E7D900F5E7D800F5E6D600F3E4D300EFE0CE00EBDE
      CC00EDE2D100E6D8C700976A6500000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FFFFFF00FFFFFF00FFFF
      FF00FEFDFC00F5F2EF00D8D5D000B9ACA800C0A39400E7D3AF00FEE2B700FEE4
      BB00FEE4BB00FEE4BC00FEE4BE00FEE9D000E2D7D000B4968A00AF967B00D9B9
      9300F4CFA400FDD6AA00FDD6AA00A35228000000000000009A0000000000B68B
      8000FBF0E000FAEFDD0000009A0000009A00F8EAD400F8E9D100F7E7CE00F7E6
      CB00F6E4C800F6E4C500F5E1C200F5E0BF00F5DEBC00F4DDB900F4DCB700F4DB
      B400F3D9B100B3897B000000000000009A00000000000066000000000000B68B
      8000FBF0E000FAEFDD000066000000660000F8EAD400F8E9D100F7E7CE00F7E6
      CB00F6E4C800F6E4C500F5E1C200F5E0BF00F5DEBC00F4DDB900F4DCB700F4DB
      B400F3D9B100B3897B000000000000660000BA8E8500F0E6E000FBF7F200F9DC
      BE00F3C28C00F1C28E00F3C48F00F5C48F00F5C48F00F1C18D00E7B88500DCC3
      A900D8D0C400DACCBE0093686300000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FFFFFF00FFFFFF004CB7
      4C004CB64C00F5F5F400D7D4D300B89B9200D1B99F00F9DCAA00FBEEC400FFFF
      DA00FFFFDB00FFFFE700FFFFF400FFFFFD00FFFFFF00C9B3A100B07E3E00D882
      0000F5930000FE980000FE980000A35228000000000000009A00000000008B6A
      6100BCB5AA00BCB4A800BBB3A600BBB2A400BBB1A200BAAFA000BAAF9D00BAAE
      9B00BAAD9900B9AC9700B9AB9400B8A99200B8A99000B8A78E00B8A68B00B7A5
      8A00B7A5870086675D000000000000009A000000000000660000000000008B6A
      6100BCB5AA00BBB3A700BAB2A500BBB2A400BBB1A200BAAFA000BAAF9D00BAAE
      9B00BAAD9900B9AC9700B9AB9400B8A99200B8A99000B8A78E00B8A68B00B7A5
      8A00B7A5870086675D000000000000660000BA8E8500F2E8E200FBF7F200F1E8
      DD00E8DBCE00E1D5C800E6D9CC00EFE1D100EEE0CF00E3D3C400CBBDAE00B5AA
      9F00B3ABA100BFB4A8008A615C00000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FFFFFF00FFFFFF004CB7
      4C004CB64C00F5F5F500D8D5D400BFA39400E9D2AA00F2C79400FAE9BE00FFFF
      DA00FFFFDC00FFFFED00FFFFFD00FFFFF900FFFFE800E6DDC000B49B8A00D9BC
      9B00F4D1AA00FDD7AC00FDD7AC00A35228000000000000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A000000000000660000006600000065
      0000006400000063000000630000006400000065000000660000006600000066
      0000006600000066000000660000006600000066000000660000006600000066
      000000660000006600000066000000660000CB9A8200F2EAE400F9F8F400E9DD
      D100D0C1B100C2B4A500CABCAD00DBCBB800DCCBB900C7B7A600AA9B8C00948A
      8000938D8600A0988F0083605C00000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00F8F8F800DCD4D400BA9F9100F7E0AF00EFBD8800FAD6A900FEE3
      B900FEE4BC00FEE4C000FEE4C500FEE4C300FEE4BE00F4F0CE00B79D8E00E2C6
      A700F7D6B100FDDAB100FDDAB100A3522800000000000000000000000000C296
      8500FCF5EA00FBF4E700FBF2E400FAF1E200FAF0DF00F9EEDC00F9EEDA00F9EC
      D600F8EAD400F7E9D100F7E7CE00F7E6CB00F7E4C800F6E4C500F6E2C200F5E0
      BF00F4DFBC00B48B7E000000000000000000000000000000000000000000BA90
      8000E6E0D600DED8CD00DED6CA00E4DCCF00F0E7D600F7ECDA00F9EEDA00F9EC
      D600F8EAD400F7E9D100F7E7CE00F7E6CB00F7E4C800F6E4C500F6E2C200F5E0
      BF00F4DFBC00B48B7E000000000000000000CB9A8200F5EDE900F8F9F800748D
      B700C0996F00A8876300AA896500B8946D00B9956D00A5856100557299004B61
      8D0058576F0089837C006C4F4C00000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FFFFFF00FFFFFF00C0C0
      C000BFBFBF00FBFBFB00E8E0E000BA9F9100F9E4B400EFB98300F9CD9F00FCDC
      B100FEE4BB00FEE4BD00FEE4BD00FEE4BD00FEE4BB00FADEB300BA9A8200F090
      0000FB970000FE980000FE980000A3522800000000000000000000000000C598
      8500FCF6ED00FBF4EA000098000000980000FAF0E200F9EFDF00993300009933
      000099330000993300009933000099330000993300009933000099330000F6E2
      C300F6E1C000B48B7E000000000000000000000000000000000000000000B58C
      7A00CDC9C100BDB8B00000730000007C0000E5DCCF00F4EADB00983300009933
      000099330000993300009933000099330000993300009933000099330000F6E2
      C300F6E1C000B48B7E000000000000000000DCA88700F7F0EC00FBFBFB007EA2
      CB00748DB7009E9A9F009D9895009A959100928E8C005572990079B7D90073BC
      E300353C6B005C5968005B434100000000000000000000000000000000000000
      00005B575700464242004642420046424200A3522800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00F7F5F500C0A49600EBD8B000F7D5A400F2CA9600F5D4
      A100FAEABF00FEFCD500FFFFDA00FFFFDA00FFFFD900E8DDBE00C7AD9D00F9E1
      C500FEE1C200FEDFBD00FEDFBD00A3522800000000000000000000000000C497
      8400F5F0E900F4EFE7000094000000940000F3EBDF00F4EADD00F4EBDC00F8ED
      DC00F8EDDB00F9ECD900F9EBD600F8EAD300F8E8D000F7E7CD00F6E6CA00F7E4
      C600F6E2C400B48B7E0000000000000000000000000000000000000000000066
      000000660000006600000066000000710000D9D2C600EDE4D700F4EBDC00F8ED
      DC00F8EDDB00F9ECD900F9EBD600F8EAD300F8E8D000F7E7CD00F6E6CA00F7E4
      C600F6E2C400B48B7E000000000000000000DCA88700F8F2EF00FDFDFD005F6D
      9900CBEFF6009AADC5009A98A000959392005572990089D2EB005572990074B5
      DD0062A1D000333766005142520000000000000000008F8F9000545454005454
      54005B5757003B3A3C00353537005B555500A3522800FFFFFF00FFFFFF006E94
      FF006E94FF00FFFFFF00FEFEFE00CAAFA800D0B9A100FFFDE700FBEED900F4D0
      A000F2C99600F6D9AA00FAE7BD00FCF0C700FFFFD400C8B09D00DCC5B400FDE8
      CF00FFE5C900FFE2C300FFE2C300A3522800000000000000000000000000B48C
      7800DDDAD500DCD9D400DCD8D100DCD7CE00DCD5CD00DED7CE00E5DED000F0E8
      D900F8EEDD00FAEFDD00F9EDD900F9ECD700F8EAD300F8E8D100F8E7CE00F7E6
      CB00F6E5C800B48B7E0000000000000000000000000000000000000000000066
      000013AA220010A61D0000660000ADA9A200C8C1B900D9D2C800E5DED000F0E8
      D900F8EEDD00FAEFDD00F9EDD900F9ECD700F8EAD300F8E8D100F8E7CE00F7E6
      CB00F6E5C800B48B7E000000000000000000E3B18E00F9F3EF00FEFEFE00B3B3
      C50070799A00CBEFF6009FC1D5005572990090DEF2005572990086D9F7005572
      99006BACDB00558CC1002F3160002F3160002F3160008F8F9000BEBEBF00BEBE
      BF005B575700524D4E005B5555005B555500A3522800FFFFFF00FFFFFF006E94
      FF006E94FF00FFFFFF00FFFFFF00EFE7E600BA998800E5DBD300FFFFFF00FBE8
      C200F3C79100F2C49000F6D5A200FFEEBB00DCC7AB00BD977B00F6981000FF99
      0000FF990000FF990000FF990000A35228000000000000000000000000009876
      6400B8B6B200B8B5B100B8B5B000B7B4AD00B7B2AC00BCB7AE00CDC6BC00E5DE
      D100F5ECDE00FAF0E000FAEFDD00FAEEDB00F9ECD800F8EBD500F8E9D200F7E8
      CF00F7E7CC00B48B7E0000000000000000000000000000000000000000000066
      00001AB12D0016AD260000660000A19F9900ADA9A300BAB5AD00CDC6BC00E5DE
      D100F5ECDE00FAF0E000FAEFDD00FAEEDB00F9ECD800F8EBD500F8E9D200F7E8
      CF00F7E7CC00B48B7E000000000000000000E3B18E00FAF3EF00FFFFFF00FEFE
      FE00B6B6C8007383A200B8ECF5007291B6005572990089D7F000557299007BCD
      F3005572990066B5EC005BA9E800509DE5004690E1008F8F9000BABABA00BABA
      BA005B5757005B5757005F5A5A005F5A5A00A3522800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2753100BA9E9400CAB5A400E9D8
      B600F8E5B800F7E4B600E6D3AF00CBB09C00BFA39700EADBD000FFF3E500FEF0
      DE00FEEDD800FFE9D100FFE9D100A352280000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A00BDB8B000DFD8
      CF00F4ECE000FAF1E200FBF1E100FAEFDF00FAEEDC00F9ECD800F8EBD600F8EA
      D300F8E8CF00B48B7E0000000000000000000066000000660000006600000066
      000022B93B001DB5320000660000006600000066000000660000BDB8B000DFD8
      CF00F4ECE000FAF1E200FBF1E100FAEFDF00FAEEDC00F9ECD800F8EBD600F8EA
      D300F8E8CF00B48B7E000000000000000000EDBD9200FBF5F100FFFFFF00FFFF
      FF00FEFEFE00B9B9CA006B81A100A5E9F4006789B3005572990081CEEE005572
      990070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000C7C8C800C7C8
      C8005B5757006B6767006B6767006B676700A3522800EAC07800EAC07800EAC0
      7800EAC07800EAC07800EAC07800EAC07800CC670100E0B77A00BF9B7E00BA9B
      8B00B99D8F00B99D8F00BF9F8F00CBA78600E4BC7B00EAC07800EAC07800EAC0
      7800EAC07800EAC07800EAC07800A352280000009A004978FF003B6BFF00285C
      FF00144AFF00053AFF00002DF9000023E700031AD10000009A0073260000882D
      000095320000983300009933000099330000993300009933000099330000F9EC
      D600F8EAD300B48B7E000000000000000000006600003CD4620036CF5A0030C9
      52002CC3490026BE410021B838001CB4310017AF2A000066000073260000882D
      000095320000983300009933000099330000993300009933000099330000F9EC
      D600F8EAD300B48B7E000000000000000000EDBD9200FBF6F200FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00BBBBCB006480A10094E2F1006586B00081CEEE007BCD
      F30070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000F1F1F100EFEF
      EF005B575700767474007674740076747400A3522800CA6E1800D7771200D777
      1200D7771200D7771200D7771200D7771200D7771200D7771200D7771200D777
      1200D7771200D7771200D7771200FCC08000EE9E4000E5861600FCC08000EE9E
      40009E6A4E004E6ED400CA6E1800A352280000009A004A79FF004373FF003365
      FF002054FF000C43FF000034FF000028F300001FDE0000009A00CDCAC400E6E3
      DB00F6F1E700FCF5EA00FCF4E800FBF3E500FAF1E300FAF0E000FAEFDD00F9EE
      DA00F9ECD700B48B7E0000000000000000000066000044DD70003FD868003AD2
      600035CD58002FC74F002AC1470025BD3E0020B8360000660000CDCAC400E6E3
      DB00F6F1E700FCF5EA00FCF4E800FBF3E500FAF1E300FAF0E000FAEFDD00F9EE
      DA00F9ECD700B48B7E000000000000000000EDBD9200DCA88700DCA88700DCA8
      8700DCA88700DCA88700DBA78600A5847E005E7EA000C4EBF60086D9F7007BCD
      F30070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000F1F1F100F1F1
      F1005B575700818080008180800081808000A3522800C6773800D2833E00D283
      3E00D2833E00D2833E00D2833E00D2833E00D2833E00D2833E00D2833E00D283
      3E00D2833E00D2833E00D2833E00F6BB8000E2914000D4761600FCC08000E291
      40009E6A4E004E6ED400C6773800A352280000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A00E7E4E000F3EF
      E900FBF6EE00FCF7EE00FCF5EB00FBF5E900FCF3E700FBF2E300FAF0E100FAEF
      DE00F9EDDB00B48B7E0000000000000000000066000000660000006600000066
      00003ED7660038D15E0000660000006600000066000000660000E7E4E000F3EF
      E900FBF6EE00FCF7EE00FCF5EB00FBF5E900FCF3E700FBF2E300FAF0E100FAEF
      DE00F9EDDB00B48B7E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000055729900C3ECFB00BDE6
      F90070C1F00066B5EC005BA9E800509DE5003B5D9B008F8F9000F1F1F100F1F1
      F1005B5757008B8B8B008B8B8B008B8B8B0000000000A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A352280000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FEFEFE00FFFDFC00FEFDFA00FEFCF900F8F5F100FBF8
      F300FCF8F200FDF8F100FDF7EE00FCF5EC00FBF4E900FBF3E700FBF2E500FBF1
      E100FAEFDE00B48B7E0000000000000000000000000000000000000000000066
      000046DE730041DA6D0000660000BCBBBA00DBDAD800F0EEEB00F8F5F100FBF8
      F300FCF8F200FDF8F100FDF7EE00FCF5EC00FBF4E900FBF3E700FBF2E500FBF1
      E100FAEFDE00B48B7E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006A96
      C000679AC9006195C9005A8DC700556DA400000000008F8F90008F8F90008F8F
      90005B5757008C8C8C007C7C7C007C7C7C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9A3
      8100D9A38100D9A38100D9A38100D9A38100D9A38100D9A38100DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA4820000000000000000000000000000000000000000000066
      00004DE67F0049E2790000660000B1856A00C7967700D5A07F00D9A38100DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA4820000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5757005B5757005B5757005B5757000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000066
      0000006600000066000000660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000800FFFE00007FFFFFFFFFFFF0007FFE0
      000700001FFF7FFF0007FFE0000700001FFF3FFF0007FFE0000700001FFFBFFF
      0000FFE0000700001FFFBFFF00003FE0000700001F1939CC00041FE000070000
      1F1939CC00060FE0000700001F9939CC000000E0000700001F83FFFF00000000
      000000001FC3FFFF00000060000600001FC3F9FF000000600006000000C7FCFF
      000000600006000000E7FC7F800000000000000000C3FE7FFFE000E000070000
      00C3FE3FFFE000E00007000000C3E73FFFE000E0000700000093F67FFFE000E0
      000700000099F07FFFE000E0000700000019F07FFFE000E00007000000FFFFFF
      FFE000E00007000000FFFFFFFFE001E00007000000FFFFFFFFE003E000070000
      1FFFFFFFFFE007E0000700001FFFFFFFE00003E00003FFFFFF8FFFFFE00003E0
      0003FFFFFF87FFFFE00003E000030001FF000000E00003E000030001FF000000
      E00003E000030001FF000000E00003E000030001FF0000008000008000000001
      FF000000A00002A000020001FF000000A00002A000020001FF000000A00002A0
      00020001FF000000A00002A000020001FF0000008000008000000001FF000000
      E00003E000030001FF000000E00003E000030001F0000000E00003E000030001
      80000000E00003E00003000000000000E00003E0000300000000000000000300
      0003000000000000000003000003000000000000000003000003000000000000
      000003000003FF8000800001E00003E00003FFE080FFFFFFE00003E00003FFFF
      F0FFFFFFFFFFFFE1FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object FindDlgEh1: TFindDlgEh
    DBGrid = DBGridEh1
    ShowFindResult = False
    FindFont.Charset = DEFAULT_CHARSET
    FindFont.Color = clRed
    FindFont.Height = -11
    FindFont.Name = 'MS Sans Serif'
    FindFont.Style = [fsBold]
    ShowFilterPanel = True
    SimpleSeek = True
    Left = 728
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 728
    Top = 208
    object N4: TMenuItem
      Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1080#1090#1100'  '#1087#1088#1080#1093#1086#1076
    end
    object N5: TMenuItem
      Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1079#1072#1075#1088#1091#1079#1082#1091
    end
    object N1: TMenuItem
      Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1088#1072#1089#1093#1086#1076' '#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1091
    end
  end
  object DSRaspSyrPrep: TDataSource
    DataSet = RaspSyrPrep
    Left = 382
    Top = 295
  end
  object RaspSyrPrep: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    AfterDelete = RaspSyrPrepAfterDelete
    AfterPost = RaspSyrPrepAfterPost
    BeforeDelete = RaspSyrPrepBeforeDelete
    BeforeInsert = RaspSyrPrepBeforeInsert
    BeforePost = RaspSyrPrepBeforePost
    OnNewRecord = RaspSyrPrepNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT DISTINCT cast(0 as integer) as vib, KART.KART_ID, KART.KE' +
        'I_ID, KART.KSM_ID,'
      'KART.KOL_RASH_EDIZ, '
      'KART.STROKA_ID, ostatki.kei_id  kei,'
      
        'DOCUMENT.NDOK, kart.parent, DOCUMENT.DOC_ID, document.Tip_op_id,' +
        ' document.date_dok,'
      'kart.RAZDEL_ID, EDIZ.NEIS, RAZDEL.KRAZ,'
      'KART.KOL_PRIH_EDIZ, KART.KOL_PRIH, KART.KOL_RASH,'
      'ostatki.SERIA, ostatki.ksm_idpr,'
      'cast( ostatki.ostatok_end_s as numeric(15,6)) ot_s, '
      'cast( ostatki.ostatok_end_nz as numeric(15,6)) ot_nz, '
      'cast( ostatki.ostatok_begin_s as numeric(15,6)) onm_s, '
      'cast( ostatki.ostatok_begin_nz as numeric(15,6)) onm_nz,'
      'cast(ostatki.zag_period as numeric(15,6)) zag,'
      'cast(ostatki.prix_period as numeric(15,6)) prix,'
      
        'cast(( ostatki.zag_period + ostatki.peredano_prih_nz) as numeric' +
        '(15,6)) as zag_period, '
      
        'cast(ostatki.rash_virab_period as numeric(15,6)) rash_virab_peri' +
        'od ,'
      
        'cast(( ostatki.prix_period + ostatki.peredano_prih_nz) as numeri' +
        'c(15,6)) as prix_period,'
      'cast(ostatki.peredano_rash_s as numeric(15,6)) peredano_rash_s,'
      
        'cast(ostatki.peredano_rash_nz as numeric(15,6)) peredano_rash_nz' +
        ', '
      'ostatki.nmat,'
      'cast(0 as numeric(15,6)) as ost_c,'
      'cast(0 as numeric(15,6)) as kolvip,'
      'cast(0 as numeric(15,6)) as plan_norm,'
      'cast(0 as integer) as ksmArr'
      ''
      'FROM  SELECT_Ost_ksm (%DAT1, %DAT2, :kodp, :struk, 0) ostatki'
      'inner join kart on (ostatki.kart_id = kart.kart_id)'
      'inner join (select doc_id, ndok, tip_op_id, date_dok '
      '                 from document '
      
        '                 where (document.date_op between %DAT1 and %DAT2' +
        ' )  '
      
        '                  AND (%STIP) and (%KSM)) document on (kart.doc_' +
        'id = document.doc_id)'
      'left JOIN EDIZ  ON (kart.KEI_ID = EDIZ.KEI_ID)'
      'INNER JOIN RAZDEL ON (kart.RAZDEL_ID = RAZDEL.RAZDEL_ID)'
      ' '
      'ORDER BY RAZDEL.KRAZ, ostatki.nmat '
      '')
    UpdateObject = RaspSyrPrepUpdate
    Macros = <
      item
        DataType = ftString
        Name = 'DAT1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DAT2'
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
        Name = 'KSM'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 312
    Top = 295
    ParamData = <
      item
        DataType = ftInteger
        Name = 'kodp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'struk'
        ParamType = ptInput
      end>
    object RaspSyrPrepVIB: TIntegerField
      FieldName = 'VIB'
      ProviderFlags = []
    end
    object RaspSyrPrepKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
    object RaspSyrPrepKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"KART"."KEI_ID"'
    end
    object RaspSyrPrepKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
      OnValidate = RaspSyrPrepKSM_IDValidate
    end
    object RaspSyrPrepKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      Origin = '"KART"."KOL_RASH_EDIZ"'
    end
    object RaspSyrPrepSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RaspSyrPrepKEI: TSmallintField
      FieldName = 'KEI'
      Origin = '"SELECT_OST_KSM"."KEI_ID"'
    end
    object RaspSyrPrepNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object RaspSyrPrepPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = '"KART"."PARENT"'
    end
    object RaspSyrPrepDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RaspSyrPrepTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object RaspSyrPrepDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object RaspSyrPrepRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"KART"."RAZDEL_ID"'
    end
    object RaspSyrPrepNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object RaspSyrPrepKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
      OnValidate = RaspSyrPrepKRAZValidate
    end
    object RaspSyrPrepKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      Origin = '"KART"."KOL_PRIH_EDIZ"'
    end
    object RaspSyrPrepKOL_PRIH: TFMTBCDField
      FieldName = 'KOL_PRIH'
      Origin = '"KART"."KOL_PRIH"'
      Precision = 18
      Size = 6
    end
    object RaspSyrPrepKOL_RASH: TFMTBCDField
      FieldName = 'KOL_RASH'
      Origin = '"KART"."KOL_RASH"'
      Precision = 18
      Size = 6
    end
    object RaspSyrPrepSERIA: TIBStringField
      FieldName = 'SERIA'
      Origin = '"SELECT_OST_KSM"."SERIA"'
    end
    object RaspSyrPrepKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"SELECT_OST_KSM"."KSM_IDPR"'
    end
    object RaspSyrPrepOT_S: TFloatField
      FieldName = 'OT_S'
      ProviderFlags = []
    end
    object RaspSyrPrepOT_NZ: TFloatField
      FieldName = 'OT_NZ'
      ProviderFlags = []
    end
    object RaspSyrPrepONM_S: TFloatField
      FieldName = 'ONM_S'
      ProviderFlags = []
    end
    object RaspSyrPrepONM_NZ: TFloatField
      FieldName = 'ONM_NZ'
      ProviderFlags = []
    end
    object RaspSyrPrepZAG: TFloatField
      FieldName = 'ZAG'
      ProviderFlags = []
    end
    object RaspSyrPrepPRIX: TFloatField
      FieldName = 'PRIX'
      ProviderFlags = []
    end
    object RaspSyrPrepZAG_PERIOD: TFloatField
      FieldName = 'ZAG_PERIOD'
      ProviderFlags = []
    end
    object RaspSyrPrepRASH_VIRAB_PERIOD: TFloatField
      FieldName = 'RASH_VIRAB_PERIOD'
      ProviderFlags = []
    end
    object RaspSyrPrepPRIX_PERIOD: TFloatField
      FieldName = 'PRIX_PERIOD'
      ProviderFlags = []
    end
    object RaspSyrPrepPEREDANO_RASH_S: TFloatField
      FieldName = 'PEREDANO_RASH_S'
      ProviderFlags = []
    end
    object RaspSyrPrepPEREDANO_RASH_NZ: TFloatField
      FieldName = 'PEREDANO_RASH_NZ'
      ProviderFlags = []
    end
    object RaspSyrPrepNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SELECT_OST_KSM"."NMAT"'
      Size = 60
    end
    object RaspSyrPrepOST_C: TFloatField
      FieldName = 'OST_C'
      ProviderFlags = []
    end
    object RaspSyrPrepKOLVIP: TFloatField
      FieldName = 'KOLVIP'
      ProviderFlags = []
    end
    object RaspSyrPrepZNAKI: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ZNAKI'
      Calculated = True
    end
    object RaspSyrPrepPLAN_NORM: TFMTBCDField
      FieldName = 'PLAN_NORM'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object RaspSyrPrepksmArr: TIntegerField
      FieldName = 'ksmArr'
      ProviderFlags = []
    end
  end
  object RaspSyrPrepUpdate: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select *'
      ' from KART '
      'where'
      '  STROKA_ID = :STROKA_ID')
    ModifySQL.Strings = (
      'update KART'
      'set'
      '  DOC_ID = :DOC_ID,'
      '  KART_ID = :KART_ID,'
      '  KEI_ID = :KEI_ID,'
      '  KOL_PRIH_EDIZ = :KOL_PRIH_EDIZ,'
      '  KOL_RASH_EDIZ = :KOL_RASH_EDIZ,'
      '  KSM_ID = :KSM_ID,'
      '  RAZDEL_ID = :RAZDEL_ID'
      ' where'
      '  STROKA_ID = :OLD_STROKA_ID')
    InsertSQL.Strings = (
      'insert into KART'
      
        '  (DOC_ID, KART_ID, KEI_ID, KOL_PRIH_EDIZ, KOL_RASH_EDIZ, KSM_ID' +
        ', RAZDEL_ID, '
      '   STROKA_ID)'
      'values'
      
        '  (:DOC_ID, :KART_ID, :KEI_ID, :KOL_PRIH_EDIZ, :KOL_RASH_EDIZ, :' +
        'KSM_ID, '
      '   :RAZDEL_ID, :STROKA_ID)')
    DeleteSQL.Strings = (
      'delete from KART'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = DM1.IBT_Write
    Left = 351
    Top = 295
  end
  object IBOtkudaPerPrep: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT DOCUMENT.TIP_OP_ID, DOCUMENT.KLIENT_ID, SPPROD.KOD_PROD,'
      
        ' SPPROD.KEI_ID KEI_PREP, SPPROD.XARKT, SPPROD.NMAT, DOCUMENT.STR' +
        'UK_ID,'
      
        ' DOCUMENT.DATE_DOK, DOCUMENT.DOC_ID, KART.KOL_PRIH_ediz, KART.KS' +
        'M_ID,'
      ' KART.KART_ID, KART.STROKA_ID, OSTATKI.OT_S, OSTATKI.OT_NZ,'
      ' OSTATKI. RAZDEL_ID,RAZDEL.KRAZ,kart.KEI_ID KEI_ID_SYR,'
      ' OSTATKI.KSM_IDPR,KART.KOL_RASH_ediz,EDIZ.NEIS,kart.parent'
      'FROM DOCUMENT'
      '   INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
      '    INNER JOIN OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)'
      '    INNER JOIN SPPROD ON (OSTATKI.KSM_IDPR = SPPROD.KSM_ID)'
      '    inner JOIN RAZDEL ON (kart.RAZDEL_ID = RAZDEL.RAZDEL_ID)'
      '    inner JOIN EDIZ ON (kart.KEI_ID =EDIZ.KEI_ID)'
      '  WHERE '
      ''
      '      (DOCUMENT.DATE_Op  between :dat1 and :dat2)'
      '   and '
      '      (Ostatki.KSM_IDPR = :ksm)'
      '   and '
      
        '      (DOCUMENT.TIP_OP_ID = 34 or DOCUMENT.TIP_OP_ID = 37 or DOC' +
        'UMENT.TIP_OP_ID = 32 or DOCUMENT.TIP_OP_ID = 8)'
      '   and'
      '      (DOCUMENT.struk_ID = :cex)'
      '   and'
      '      (kart.parent is null)')
    Left = 616
    Top = 192
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
        Name = 'ksm'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cex'
        ParamType = ptUnknown
      end>
    object IBOtkudaPerPrepTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object IBOtkudaPerPrepKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
    end
    object IBOtkudaPerPrepKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object IBOtkudaPerPrepKEI_PREP: TSmallintField
      FieldName = 'KEI_PREP'
      Origin = '"SPPROD"."KEI_ID"'
    end
    object IBOtkudaPerPrepXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"SPPROD"."XARKT"'
      Size = 30
    end
    object IBOtkudaPerPrepNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object IBOtkudaPerPrepSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object IBOtkudaPerPrepDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object IBOtkudaPerPrepDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBOtkudaPerPrepKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object IBOtkudaPerPrepOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object IBOtkudaPerPrepOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object IBOtkudaPerPrepRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object IBOtkudaPerPrepKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
    object IBOtkudaPerPrepKEI_ID_SYR: TSmallintField
      FieldName = 'KEI_ID_SYR'
      Origin = '"NORM"."KEI_ID"'
    end
    object IBOtkudaPerPrepKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object IBOtkudaPerPrepNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object IBOtkudaPerPrepSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBOtkudaPerPrepKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      Origin = '"KART"."KOL_PRIH_EDIZ"'
    end
    object IBOtkudaPerPrepKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      Origin = '"KART"."KOL_RASH_EDIZ"'
    end
    object IBOtkudaPerPrepPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = '"KART"."PARENT"'
    end
    object IBOtkudaPerPrepKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
  end
  object IBKudaPerPrep: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT DOCUMENT.TIP_OP_ID, DOCUMENT.KLIENT_ID, SPPROD.KOD_PROD,'
      
        ' SPPROD.KEI_ID KEI_PREP, SPPROD.XARKT, SPPROD.NMAT, DOCUMENT.STR' +
        'UK_ID,struk.stname,'
      
        ' DOCUMENT.DATE_DOK, DOCUMENT.DOC_ID, KART.KOL_PRIH_ediz, KART.KS' +
        'M_ID,'
      ' KART.KART_ID, KART.STROKA_ID, OSTATKI.OT_S, OSTATKI.OT_NZ,'
      ' OSTATKI. RAZDEL_ID,RAZDEL.KRAZ,kart.KEI_ID KEI_ID_SYR,'
      ' OSTATKI.KSM_IDPR,kart.KOL_RASH_ediz,EDIZ.NEIS,kart.parent'
      'FROM DOCUMENT'
      '   INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
      '    INNER JOIN OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)'
      '    INNER JOIN SPPROD ON (DOCUMENT.KLIENT_ID = SPPROD.KSM_ID)'
      '    inner JOIN RAZDEL ON (kart.RAZDEL_ID = RAZDEL.RAZDEL_ID)'
      '    inner JOIN EDIZ ON (kart.KEI_ID =EDIZ.KEI_ID)'
      '   left JOIN struk ON (document.Klient_ID =struk.struk_ID)'
      '  WHERE '
      ''
      '      (DOCUMENT.DATE_Op  between :dat1 and :dat2)'
      '   and '
      '      (OSTATKI.KSM_IDPR = :ksm)'
      '   and '
      '      (DOCUMENT.TIP_OP_ID = 34 or DOCUMENT.TIP_OP_ID = 37)'
      '   and'
      '      (DOCUMENT.struk_ID = :cex)'
      '   and'
      '      (kart.parent is null)')
    Left = 880
    Top = 200
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
        Name = 'ksm'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cex'
        ParamType = ptUnknown
      end>
    object IBKudaPerPrepTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object IBKudaPerPrepKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
    end
    object IBKudaPerPrepKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object IBKudaPerPrepKEI_PREP: TSmallintField
      FieldName = 'KEI_PREP'
      Origin = '"SPPROD"."KEI_ID"'
    end
    object IBKudaPerPrepXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"SPPROD"."XARKT"'
      Size = 30
    end
    object IBKudaPerPrepNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object IBKudaPerPrepSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object IBKudaPerPrepDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object IBKudaPerPrepDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBKudaPerPrepKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object IBKudaPerPrepPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = '"KART"."PARENT"'
    end
    object IBKudaPerPrepOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object IBKudaPerPrepOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object IBKudaPerPrepRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object IBKudaPerPrepKEI_ID_SYR: TSmallintField
      FieldName = 'KEI_ID_SYR'
      Origin = '"NORM"."KEI_ID"'
    end
    object IBKudaPerPrepSTNAME: TIBStringField
      FieldName = 'STNAME'
      Origin = '"STRUK"."STNAME"'
      FixedChar = True
    end
    object IBKudaPerPrepKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"NORM"."KRAZ"'
      Required = True
    end
    object IBKudaPerPrepKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object IBKudaPerPrepNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object IBKudaPerPrepSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBKudaPerPrepKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      Origin = '"KART"."KOL_PRIH_EDIZ"'
    end
    object IBKudaPerPrepKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      Origin = '"KART"."KOL_RASH_EDIZ"'
    end
    object IBKudaPerPrepKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
  end
  object PeredanoPrep: TRxMemoryData
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
        Name = 'kol_rash_ediz'
        DataType = ftFloat
      end
      item
        Name = 'neis'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tip_op_id'
        DataType = ftInteger
      end
      item
        Name = 'stroka_id'
        DataType = ftInteger
      end
      item
        Name = 'klient_id'
        DataType = ftInteger
      end
      item
        Name = 'kraz1'
        DataType = ftInteger
      end
      item
        Name = 'kod1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'naz1'
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
        Name = 'Ot_s1'
        DataType = ftFloat
      end
      item
        Name = 'Ot_nz1'
        DataType = ftFloat
      end
      item
        Name = 'Stroka_id1'
        DataType = ftInteger
      end>
    Left = 824
    Top = 208
    object PeredanoPrepkraz: TIntegerField
      FieldName = 'kraz'
    end
    object PeredanoPrepNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object PeredanoPrepXARKT: TStringField
      FieldName = 'XARKT'
      Size = 30
    end
    object PeredanoPrepKOD_PROD: TStringField
      FieldName = 'KOD_PROD'
      Size = 18
    end
    object PeredanoPrepkol_rash: TFloatField
      FieldName = 'kol_rash_ediz'
    end
    object PeredanoPrepneis: TStringField
      FieldName = 'neis'
    end
    object PeredanoPrepTip_op_id: TIntegerField
      FieldName = 'Tip_op_id'
    end
    object PeredanoPrepstroka_id: TIntegerField
      FieldName = 'stroka_id'
    end
    object PeredanoPrepklient_id: TIntegerField
      FieldName = 'klient_id'
    end
    object PeredanoPrepkraz1: TIntegerField
      FieldName = 'kraz1'
    end
    object PeredanoPrepkod1: TStringField
      FieldName = 'kod1'
    end
    object PeredanoPrepnaz1: TStringField
      FieldName = 'naz1'
    end
    object PeredanoPrepOt_s: TFloatField
      FieldName = 'Ot_s'
    end
    object PeredanoPrepOt_nz: TFloatField
      FieldName = 'Ot_nz'
    end
    object PeredanoPrepOt_s1: TFloatField
      FieldName = 'Ot_s1'
    end
    object PeredanoPrepOt_nz1: TFloatField
      FieldName = 'Ot_nz1'
    end
  end
  object DSPeredanoSyr: TDataSource
    DataSet = PeredanoSyr
    Left = 392
    Top = 336
  end
  object FindDlgEh2: TFindDlgEh
    DBGrid = DBGridEh2
    ShowFindResult = False
    FindFont.Charset = DEFAULT_CHARSET
    FindFont.Color = clRed
    FindFont.Height = -11
    FindFont.Name = 'MS Sans Serif'
    FindFont.Style = [fsBold]
    ShowFilterPanel = True
    SimpleSeek = True
    Left = 680
    Top = 248
  end
  object FindDlgEh3: TFindDlgEh
    DBGrid = DBGridEh3
    ShowFindResult = False
    FindFont.Charset = DEFAULT_CHARSET
    FindFont.Color = clRed
    FindFont.Height = -11
    FindFont.Name = 'MS Sans Serif'
    FindFont.Style = [fsBold]
    ShowFilterPanel = True
    SimpleSeek = True
    Left = 776
    Top = 272
  end
  object PeredanoSyr: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    AutoCalcFields = False
    BeforeInsert = PeredanoSyrBeforeInsert
    BeforePost = PeredanoSyrBeforePost
    OnNewRecord = PeredanoSyrNewRecord
    CachedUpdates = True
    SQL.Strings = (
      'SELECT'
      
        ' DOCUMENT.TIP_OP_ID, DOCUMENT.KLIENT_ID, SPPROD.KOD_PROD, SPPROD' +
        '.KEI_ID KEI_PREP, SPPROD.XARKT, SPPROD.NMAT, DOCUMENT.STRUK_ID, ' +
        'cast('#39' '#39' as char(20)) stname,'
      
        ' DOCUMENT.DATE_DOK, DOCUMENT.DOC_ID, KART.KOL_PRIH_ediz, KART.KS' +
        'M_ID, MATROP.NMAT nmat1,'
      ' KART.KART_ID, KART.STROKA_ID, OSTATKI.OT_S, OSTATKI.OT_NZ,'
      
        ' OSTATKI. RAZDEL_ID RAZDEL_IDO,RAZDEL.KRAZ,kart.KEI_ID KEI_ID_SY' +
        'R,'
      ' OSTATKI.KSM_IDPR,kart.KOL_RASH_ediz,EDIZ.NEIS,'
      ' razkyda.kraz kraz1,ostkyda.razdel_id'
      'FROM DOCUMENT'
      '   INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
      
        '   left JOIN OSTATKI ostkyda ON (KART.Ksm_ID = OSTKyda.Ksm_ID  a' +
        'nd    document.klient_id=ostkyda.ksm_idpr  AND  KART.RAZDEL_ID=O' +
        'STKyda.RAZDEL_ID)'
      '   inner JOIN OSTATKI ON (KART.KART_ID = OSTatki.KART_ID)'
      '   left JOIN SPPROD ON (DOCUMENT.KLIENT_ID = SPPROD.KSM_ID)'
      '   left JOIN MATROP ON (KART.KSM_ID =MATROP.KSM_ID)'
      '   left JOIN RAZDEL ON (kart.RAZDEL_ID = RAZDEL.RAZDEL_ID)'
      
        '   left join RAZDEL razkyda ON (ostkyda.RAZDEL_ID =    RAZkyda.R' +
        'AZDEL_ID)'
      '    left JOIN EDIZ ON (kart.KEI_ID =EDIZ.KEI_ID)'
      '  '
      '  WHERE '
      '      (DOCUMENT.DATE_Op  between :dat1 and :dat2)'
      '   and '
      '      (OSTATKI.KSM_IDPR = :ksm)'
      '   and '
      '      (DOCUMENT.TIP_OP_ID = 34 or DOCUMENT.TIP_OP_ID = 37) '
      '   and'
      '      (DOCUMENT.struk_ID = :cex)'
      ''
      'UNION'
      ''
      
        ' SELECT DOCUMENT.TIP_OP_ID, DOCUMENT.KLIENT_ID,  cast('#39' '#39' as cha' +
        'r(18))  KOD_PROD,'
      
        '  cast(0 as smallint)  KEI_PREP, cast('#39' '#39' as VARchar(30))   XARK' +
        'T, cast('#39' '#39' as VARchar(60)) nmat,'
      ' DOCUMENT.STRUK_ID,struk.stname,'
      
        ' DOCUMENT.DATE_DOK, DOCUMENT.DOC_ID, KART.KOL_PRIH_ediz, KART.KS' +
        'M_ID, MATROP.NMAT nmat1,'
      ' KART.KART_ID, KART.STROKA_ID, OSTATKI.OT_S, OSTATKI.OT_NZ,'
      
        ' OSTATKI. RAZDEL_ID RAZDEL_IDO,RAZDEL.KRAZ,kart.KEI_ID KEI_ID_SY' +
        'R,'
      ' OSTATKI.KSM_IDPR,kart.KOL_RASH_ediz,EDIZ.NEIS,'
      ' razkyda.kraz kraz1,ostkyda.razdel_id'
      'FROM DOCUMENT'
      '   INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
      
        '   left JOIN OSTATKI ostkyda ON (KART.Ksm_ID = ostkyda.Ksm_ID  a' +
        'nd    document.klient_id=ostkyda.ksm_idpr  AND  KART.RAZDEL_ID=o' +
        'stkyda.RAZDEL_ID)'
      '   inner JOIN OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)'
      '   left JOIN MATROP ON (KART.KSM_ID =MATROP.KSM_ID)'
      '   left JOIN RAZDEL ON (kart.RAZDEL_ID = RAZDEL.RAZDEL_ID)'
      
        '   left join RAZDEL razkyda ON (ostkyda.RAZDEL_ID =    RAZkyda.R' +
        'AZDEL_ID)'
      '    left JOIN EDIZ ON (kart.KEI_ID =EDIZ.KEI_ID)'
      '    left JOIN struk ON (document.Klient_ID =struk.struk_ID)'
      '  WHERE '
      '      (DOCUMENT.DATE_Op  between :dat1 and :dat2)'
      '   and '
      '      (OSTATKI.KSM_IDPR = :ksm)'
      '   and '
      '      (DOCUMENT.TIP_OP_ID = 8   ) '
      '   and'
      '      (DOCUMENT.struk_ID = :cex)'
      ''
      'UNION'
      ''
      'SELECT DOCUMENT.TIP_OP_ID, DOCUMENT.KLIENT_ID,'
      'cast('#39' '#39' as  char(18))  KOD_PROD,'
      
        'cast(0 as smallint)  KEI_PREP, cast('#39' '#39' as VARchar(30))  XARKT, ' +
        'cast('#39' '#39' as VARchar(60)) NMAT,DOCUMENT.STRUK_ID,'
      'cast('#39' '#39' as char(20)) stname,'
      
        ' DOCUMENT.DATE_DOK, DOCUMENT.DOC_ID, KART.KOL_PRIH_ediz, KART.KS' +
        'M_ID, MATROP.NMAT nmat1,'
      ' KART.KART_ID, KART.STROKA_ID, OSTATKI.OT_S, OSTATKI.OT_NZ,'
      
        ' OSTATKI. RAZDEL_ID RAZDEL_IDO,RAZDEL.KRAZ,kart.KEI_ID KEI_ID_SY' +
        'R,'
      ' OSTATKI.KSM_IDPR,kart.KOL_RASH_ediz,EDIZ.NEIS,'
      ' razkyda.kraz kraz1,ostkyda.razdel_id'
      'FROM DOCUMENT'
      '   INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
      
        '   left JOIN OSTATKI ostkyda ON (KART.Ksm_ID = ostkyda.Ksm_ID  a' +
        'nd    document.klient_id=ostkyda.ksm_idpr AND    KART.RAZDEL_ID=' +
        'ostkyda.RAZDEL_ID)'
      '   inner JOIN OSTATKI ON (KART.KART_ID = OSTATKI.KART_ID)'
      '  '
      ' left JOIN MATROP ON (KART.KSM_ID =MATROP.KSM_ID)'
      '   left JOIN RAZDEL ON (kart.RAZDEL_ID = RAZDEL.RAZDEL_ID)'
      
        '   left join RAZDEL razkyda ON (ostkyda.RAZDEL_ID =    RAZkyda.R' +
        'AZDEL_ID)'
      '    left JOIN EDIZ ON (kart.KEI_ID =EDIZ.KEI_ID)'
      ''
      ' WHERE '
      '      (DOCUMENT.DATE_Op  between :dat1 and :dat2)'
      '   and '
      '      (OSTATKI.KSM_IDPR = :ksm)'
      '   and '
      '      (DOCUMENT.TIP_OP_ID = 32 or document.tip_op_id=85 )'
      '   and'
      '      (DOCUMENT.struk_ID = :cex)'
      ''
      'union'
      ''
      'SELECT'
      
        ' DOCUMENT.TIP_OP_ID, DOCUMENT.KLIENT_ID, SPPROD.KOD_PROD, SPPROD' +
        '.KEI_ID KEI_PREP, SPPROD.XARKT, SPPROD.NMAT, DOCUMENT.STRUK_ID,s' +
        'truk.stname,'
      
        ' DOCUMENT.DATE_DOK, DOCUMENT.DOC_ID, KART.KOL_PRIH_ediz, KART.KS' +
        'M_ID, MATROP.NMAT nmat1,'
      ' KART.KART_ID, KART.STROKA_ID, OSTATKI.OT_S, OSTATKI.OT_NZ,'
      
        ' OSTATKI. RAZDEL_ID RAZDEL_IDO,RAZDEL.KRAZ,kart.KEI_ID KEI_ID_SY' +
        'R,'
      ' OSTATKI.KSM_IDPR,kart.KOL_RASH_ediz,EDIZ.NEIS,'
      ' razkyda.kraz kraz1,ostkyda.razdel_id'
      'FROM DOCUMENT'
      '   INNER JOIN KART ON (DOCUMENT.DOC_ID = KART.DOC_ID)'
      
        '   left JOIN OSTATKI ostkyda ON (KART.Ksm_ID = OSTKyda.Ksm_ID  a' +
        'nd    document.klient_id=ostkyda.ksm_idpr  AND  KART.RAZDEL_ID=O' +
        'STKyda.RAZDEL_ID)'
      '   inner JOIN OSTATKI ON (KART.KART_ID = OSTatki.KART_ID)'
      '   left JOIN SPPROD ON (DOCUMENT.KLIENT_ID = SPPROD.KSM_ID)'
      '   left JOIN MATROP ON (KART.KSM_ID =MATROP.KSM_ID)'
      '  left JOIN struk ON ( ostkyda.struk_ID =struk.struk_ID)'
      '   left JOIN RAZDEL ON (kart.RAZDEL_ID = RAZDEL.RAZDEL_ID)'
      
        '   left join RAZDEL razkyda ON (ostkyda.RAZDEL_ID =    RAZkyda.R' +
        'AZDEL_ID)'
      '    left JOIN EDIZ ON (kart.KEI_ID =EDIZ.KEI_ID)'
      '  '
      '  WHERE '
      '      (DOCUMENT.DATE_Op  between :dat1 and :dat2)'
      '   and '
      '      (OSTATKI.KSM_IDPR = :ksm)'
      '   and '
      '      (DOCUMENT.TIP_OP_ID =139 ) '
      '   and'
      '      (DOCUMENT.struk_ID = :cex)')
    UpdateObject = IBPerdanoSyr
    Macros = <>
    Left = 320
    Top = 335
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dat1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'dat2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ksm'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cex'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'dat1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'dat2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ksm'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cex'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'dat1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'dat2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ksm'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cex'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'dat1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'dat2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ksm'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cex'
        ParamType = ptInput
      end>
    object PeredanoSyrTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      ProviderFlags = []
    end
    object PeredanoSyrKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      ProviderFlags = []
    end
    object PeredanoSyrKOD_PROD: TIBStringField
      FieldName = 'KOD_PROD'
      ProviderFlags = []
      OnValidate = PeredanoSyrKOD_PRODValidate
      FixedChar = True
      Size = 18
    end
    object PeredanoSyrKEI_PREP: TSmallintField
      FieldName = 'KEI_PREP'
      ProviderFlags = []
    end
    object PeredanoSyrXARKT: TIBStringField
      FieldName = 'XARKT'
      ProviderFlags = []
      Size = 30
    end
    object PeredanoSyrNMAT: TIBStringField
      FieldName = 'NMAT'
      ProviderFlags = []
      Size = 60
    end
    object PeredanoSyrSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      ProviderFlags = []
    end
    object PeredanoSyrSTNAME: TIBStringField
      FieldName = 'STNAME'
      ProviderFlags = []
      FixedChar = True
    end
    object PeredanoSyrDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      ProviderFlags = []
    end
    object PeredanoSyrDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      ProviderFlags = []
    end
    object PeredanoSyrKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      ProviderFlags = []
    end
    object PeredanoSyrKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      ProviderFlags = []
      OnValidate = PeredanoSyrKSM_IDValidate
    end
    object PeredanoSyrNMAT1: TIBStringField
      FieldName = 'NMAT1'
      ProviderFlags = []
      Size = 60
    end
    object PeredanoSyrSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      ProviderFlags = []
    end
    object PeredanoSyrOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object PeredanoSyrOT_S: TFMTBCDField
      FieldName = 'OT_S'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object PeredanoSyrRAZDEL_IDO: TSmallintField
      FieldName = 'RAZDEL_IDO'
      ProviderFlags = []
    end
    object PeredanoSyrKRAZ: TSmallintField
      FieldName = 'KRAZ'
      ProviderFlags = []
      OnValidate = PeredanoSyrKRAZValidate
    end
    object PeredanoSyrKEI_ID_SYR: TSmallintField
      FieldName = 'KEI_ID_SYR'
      ProviderFlags = []
    end
    object PeredanoSyrKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      ProviderFlags = []
    end
    object PeredanoSyrKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      ProviderFlags = []
    end
    object PeredanoSyrNEIS: TIBStringField
      FieldName = 'NEIS'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object PeredanoSyrKRAZ1: TSmallintField
      FieldName = 'KRAZ1'
      ProviderFlags = []
      OnValidate = PeredanoSyrKRAZ1Validate
    end
    object PeredanoSyrRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      ProviderFlags = []
    end
    object PeredanoSyrKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
  end
  object IBPerdanoSyr: TIBUpdateSQLW
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
      '  DOC_ID = :DOC_ID,'
      '  KART_ID = :KART_ID,'
      '  KEI_ID = :KEI_ID_SYR,'
      '  KOL_PRIH_EDIZ = :KOL_PRIH_EDIZ,'
      '  KOL_RASH_EDIZ = :KOL_RASH_EDIZ,'
      '  KSM_ID = :KSM_ID,'
      '  RAZDEL_ID = :RAZDEL_ID,'
      '  STROKA_ID = :STROKA_ID'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    InsertSQL.Strings = (
      'insert into KART'
      
        '  (DOC_ID, KART_ID, KEI_ID, KOL_PRIH_EDIZ, KOL_RASH_EDIZ, KSM_ID' +
        ', RAZDEL_ID, '
      '   STROKA_ID)'
      'values'
      
        '  (:DOC_ID, :KART_ID, :KEI_ID_SYR, :KOL_PRIH_EDIZ, :KOL_RASH_EDI' +
        'Z, :KSM_ID, '
      '   :RAZDEL_ID, :STROKA_ID)')
    DeleteSQL.Strings = (
      'delete from KART'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = DM1.IBT_Write
    Left = 359
    Top = 335
  end
  object IBQuery1: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    Left = 940
    Top = 193
  end
  object Prix_korr: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT DISTINCT  SELECT_OB_VED.KART_ID,KART.KEI_ID, '
      ' SELECT_OB_VED.SERIA,'
      ' SELECT_OB_VED.ostatok_end_s ot_s, '
      ' SELECT_OB_VED.ostatok_end_nz ot_nz, '
      ' SELECT_OB_VED.ostatok_begin_s onm_s, '
      ' SELECT_OB_VED.ostatok_begin_nz onm_nz,'
      
        '( SELECT_OB_VED.zag_period+ SELECT_OB_VED.peredano_prih_nz) as z' +
        'ag_period, '
      'SELECT_OB_VED.rash_virab_period,'
      
        '( SELECT_OB_VED.prix_period+ SELECT_OB_VED.peredano_prih_nz) as ' +
        'prix_period,'
      'SELECT_OB_VED.peredano_rash_s,'
      'SELECT_OB_VED.peredano_rash_nz'
      'FROM  SELECT_OB_VED (%DAT1,%DAT2,:kodp)'
      'inner join kart on (SELECT_OB_VED.kart_id=kart.kart_id)'
      ''
      '')
    Left = 463
    Top = 308
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kodp'
        ParamType = ptUnknown
      end>
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'Panel1.Height'
      'Panel2.Height'
      'Splitter1.Height'
      'Panel3.Height')
    StoredValues = <>
    Left = 472
    Top = 264
  end
  object KartKorrOtchet: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      'SELECT kart. *'
      'FROM  kart'
      'inner join  document on (kart.doc_id=document.doc_id)'
      ' %usl'
      '')
    UpdateObject = IBKartKorrOtchet
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
      end>
    Left = 296
    Top = 231
    object KartKorrOtchetDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"KART"."DOC_ID"'
      Required = True
    end
    object KartKorrOtchetSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object KartKorrOtchetKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object KartKorrOtchetCENA: TIBBCDField
      FieldName = 'CENA'
      Origin = '"KART"."CENA"'
      Precision = 18
      Size = 4
    end
    object KartKorrOtchetKOL_PRIH: TFMTBCDField
      FieldName = 'KOL_PRIH'
      Origin = '"KART"."KOL_PRIH"'
      Precision = 18
      Size = 6
    end
    object KartKorrOtchetCENA_VP: TIBBCDField
      FieldName = 'CENA_VP'
      Origin = '"KART"."CENA_VP"'
      Precision = 18
      Size = 4
    end
    object KartKorrOtchetNDS: TIBBCDField
      FieldName = 'NDS'
      Origin = '"KART"."NDS"'
      Precision = 9
      Size = 2
    end
    object KartKorrOtchetSUM_NDS: TIBBCDField
      FieldName = 'SUM_NDS'
      Origin = '"KART"."SUM_NDS"'
      Precision = 18
      Size = 2
    end
    object KartKorrOtchetSUM_NDS_VP: TIBBCDField
      FieldName = 'SUM_NDS_VP'
      Origin = '"KART"."SUM_NDS_VP"'
      Precision = 18
      Size = 2
    end
    object KartKorrOtchetKOL_RASH: TFMTBCDField
      FieldName = 'KOL_RASH'
      Origin = '"KART"."KOL_RASH"'
      Precision = 18
      Size = 6
    end
    object KartKorrOtchetKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
    object KartKorrOtchetORG_ID_BRAK: TIntegerField
      FieldName = 'ORG_ID_BRAK'
      Origin = '"KART"."ORG_ID_BRAK"'
    end
    object KartKorrOtchetOSNOV_BRAK_ID: TSmallintField
      FieldName = 'OSNOV_BRAK_ID'
      Origin = '"KART"."OSNOV_BRAK_ID"'
    end
    object KartKorrOtchetUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"KART"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object KartKorrOtchetDATE_TIME_UPDATE: TDateTimeField
      FieldName = 'DATE_TIME_UPDATE'
      Origin = '"KART"."DATE_TIME_UPDATE"'
    end
    object KartKorrOtchetPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = '"KART"."PARENT"'
    end
    object KartKorrOtchetRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"KART"."RAZDEL_ID"'
    end
    object KartKorrOtchetSKIDKA: TIBBCDField
      FieldName = 'SKIDKA'
      Origin = '"KART"."SKIDKA"'
      Precision = 9
      Size = 2
    end
    object KartKorrOtchetKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"KART"."KEI_ID"'
    end
    object KartKorrOtchetSUMMA: TIBBCDField
      FieldName = 'SUMMA'
      Origin = '"KART"."SUMMA"'
      Precision = 18
      Size = 2
    end
    object KartKorrOtchetSUMMA_VP: TIBBCDField
      FieldName = 'SUMMA_VP'
      Origin = '"KART"."SUMMA_VP"'
      Precision = 18
      Size = 2
    end
    object KartKorrOtchetSUM_SKID: TIBBCDField
      FieldName = 'SUM_SKID'
      Origin = '"KART"."SUM_SKID"'
      Precision = 18
      Size = 2
    end
    object KartKorrOtchetSUM_SKID_VP: TIBBCDField
      FieldName = 'SUM_SKID_VP'
      Origin = '"KART"."SUM_SKID_VP"'
      Precision = 18
      Size = 2
    end
    object KartKorrOtchetSUMMA_S_NDS: TIBBCDField
      FieldName = 'SUMMA_S_NDS'
      Origin = '"KART"."SUMMA_S_NDS"'
      Precision = 18
      Size = 2
    end
    object KartKorrOtchetSUMMA_S_NDS_VP: TIBBCDField
      FieldName = 'SUMMA_S_NDS_VP'
      Origin = '"KART"."SUMMA_S_NDS_VP"'
      Precision = 18
      Size = 2
    end
    object KartKorrOtchetTAG: TIntegerField
      FieldName = 'TAG'
      Origin = '"KART"."TAG"'
    end
    object KartKorrOtchetKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      Origin = '"KART"."KOL_PRIH_EDIZ"'
    end
    object KartKorrOtchetKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      Origin = '"KART"."KOL_RASH_EDIZ"'
    end
    object KartKorrOtchetTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"KART"."TIP_OP_ID"'
    end
    object KartKorrOtchetTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"KART"."TIP_DOK_ID"'
    end
    object KartKorrOtchetTAG1: TIntegerField
      FieldName = 'TAG1'
      Origin = '"KART"."TAG1"'
    end
    object KartKorrOtchetTOV_SKIDKA: TSmallintField
      FieldName = 'TOV_SKIDKA'
      Origin = '"KART"."TOV_SKIDKA"'
    end
    object KartKorrOtchetKEI_ID2: TSmallintField
      FieldName = 'KEI_ID2'
      Origin = '"KART"."KEI_ID2"'
    end
    object KartKorrOtchetCENA_PRICE: TIBBCDField
      FieldName = 'CENA_PRICE'
      Origin = '"KART"."CENA_PRICE"'
      Precision = 18
      Size = 2
    end
    object KartKorrOtchetSKID_CEN: TIBBCDField
      FieldName = 'SKID_CEN'
      Origin = '"KART"."SKID_CEN"'
      Precision = 9
      Size = 2
    end
    object KartKorrOtchetCOMMENT: TIBStringField
      FieldName = 'COMMENT'
      Origin = '"KART"."COMMENT"'
      Size = 40
    end
    object KartKorrOtchetDOP_SUM: TIBBCDField
      FieldName = 'DOP_SUM'
      Origin = '"KART"."DOP_SUM"'
      Precision = 9
      Size = 4
    end
    object KartKorrOtchetDEBET: TIBStringField
      FieldName = 'DEBET'
      Origin = '"KART"."DEBET"'
      FixedChar = True
      Size = 5
    end
    object KartKorrOtchetDTYPESUB_ID: TSmallintField
      FieldName = 'DTYPESUB_ID'
      Origin = '"KART"."DTYPESUB_ID"'
    end
    object KartKorrOtchetDCODE: TIntegerField
      FieldName = 'DCODE'
      Origin = '"KART"."DCODE"'
    end
    object KartKorrOtchetCREDIT: TIBStringField
      FieldName = 'CREDIT'
      Origin = '"KART"."CREDIT"'
      FixedChar = True
      Size = 5
    end
    object KartKorrOtchetCTYPESUB_ID: TSmallintField
      FieldName = 'CTYPESUB_ID'
      Origin = '"KART"."CTYPESUB_ID"'
    end
    object KartKorrOtchetCCODE: TIntegerField
      FieldName = 'CCODE'
      Origin = '"KART"."CCODE"'
    end
    object KartKorrOtchetSROK: TSmallintField
      FieldName = 'SROK'
      Origin = '"KART"."SROK"'
    end
    object KartKorrOtchetDATE_VID: TDateField
      FieldName = 'DATE_VID'
      Origin = '"KART"."DATE_VID"'
    end
    object KartKorrOtchetDOP_RASH: TIBBCDField
      FieldName = 'DOP_RASH'
      Origin = '"KART"."DOP_RASH"'
      Precision = 18
      Size = 2
    end
    object KartKorrOtchetDOP_RASH_ID: TSmallintField
      FieldName = 'DOP_RASH_ID'
      Origin = '"KART"."DOP_RASH_ID"'
    end
    object KartKorrOtchetNORM_RASH: TFMTBCDField
      FieldName = 'NORM_RASH'
      Origin = '"KART"."NORM_RASH"'
      Precision = 18
      Size = 6
    end
    object KartKorrOtchetKOL_RAB: TFMTBCDField
      FieldName = 'KOL_RAB'
      Origin = '"KART"."KOL_RAB"'
      Precision = 18
      Size = 6
    end
  end
  object IBKartKorrOtchet: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select *'
      ' from KART '
      'where'
      '  STROKA_ID = :STROKA_ID')
    ModifySQL.Strings = (
      'update KART'
      'set'
      '  DOC_ID = :DOC_ID,'
      '  KART_ID = :KART_ID,'
      '  KEI_ID = :KEI_ID,'
      '  KOL_PRIH_EDIZ = :KOL_PRIH_EDIZ,'
      '  KOL_RASH_EDIZ = :KOL_RASH_EDIZ,'
      '  KSM_ID = :KSM_ID,'
      '  RAZDEL_ID = :RAZDEL_ID'
      ' where'
      '  STROKA_ID = :OLD_STROKA_ID')
    InsertSQL.Strings = (
      'insert into KART'
      
        '  (DOC_ID, KART_ID, KEI_ID, KOL_PRIH_EDIZ, KOL_RASH_EDIZ, KSM_ID' +
        ', RAZDEL_ID, '
      '   STROKA_ID)'
      'values'
      
        '  (:DOC_ID, :KART_ID, :KEI_ID, :KOL_PRIH_EDIZ, :KOL_RASH_EDIZ, :' +
        'KSM_ID, '
      '   :RAZDEL_ID, :STROKA_ID)')
    DeleteSQL.Strings = (
      'delete from KART'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = DM1.IBT_Write
    Left = 335
    Top = 247
  end
  object ostceh: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      
        'select ost.ksm_id, sum(ost.ostatok_end_s) ostatok_end_s, ost.kei' +
        '_id,'
      'ost.nmat, ost.neis'
      
        'from ost_end_cex(:dat1, :dat2, :struk_id, :ksm_id, '#39#39', :struk_id' +
        '_rela, :ksm_array) ost'
      'group by ost.ksm_id, ost.kei_id, ost.nmat, ost.neis')
    Left = 175
    Top = 292
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
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ksm_id'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'struk_id_rela'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ksm_array'
        ParamType = ptInput
      end>
    object ostcehKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"OST_END_CEX"."KSM_ID"'
    end
    object ostcehOSTATOK_END_S: TFMTBCDField
      FieldName = 'OSTATOK_END_S'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object ostcehKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"OST_END_CEX"."KEI_ID"'
    end
    object ostcehNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"OST_END_CEX"."NMAT"'
      Size = 60
    end
    object ostcehNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"OST_END_CEX"."NEIS"'
      FixedChar = True
      Size = 10
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 48
    Top = 272
    object MenuItem2: TMenuItem
      Caption = #1058#1086#1083#1100#1082#1086' '#1087#1086#1084#1077#1095#1077#1085#1085#1086#1077' '#1089#1099#1088#1100#1077
      OnClick = MenuItem2Click
    end
    object MenuItem1: TMenuItem
      Caption = #1042#1089#1077' '#1089#1099#1088#1100#1077
      OnClick = MenuItem1Click
    end
    object MenuItem3: TMenuItem
    end
  end
end
