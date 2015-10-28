object FRaspred: TFRaspred
  Left = 87
  Top = 128
  BorderStyle = bsNone
  Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1089#1099#1088#1100#1103' '#1087#1086' '#1087#1088#1077#1087#1072#1088#1072#1090#1072#1084
  ClientHeight = 581
  ClientWidth = 1171
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1171
    Height = 33
    ButtonHeight = 30
    ButtonWidth = 32
    Caption = 'ToolBar1'
    Images = ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1053#1086#1074#1099#1081
      Caption = 'ToolButton1'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 32
      Top = 0
      Cursor = crHandPoint
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Caption = 'ToolButton2'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton6: TToolButton
      Left = 64
      Top = 0
      Cursor = crHandPoint
      Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1077' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
      Caption = 'ToolButton6'
      ImageIndex = 8
      OnClick = ToolButton6Click
    end
    object ToolButton7: TToolButton
      Left = 96
      Top = 0
      Hint = #1042#1099#1087#1091#1089#1082' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      Caption = 'ToolButton7'
      ImageIndex = 10
      OnClick = ToolButton7Click
    end
    object ToolButton3: TToolButton
      Left = 128
      Top = 0
      Cursor = crHandPoint
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1085#1080#1103' '
      Caption = 'ToolButton3'
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
    object Label4: TLabel
      Left = 160
      Top = 0
      Width = 242
      Height = 30
      Margins.Bottom = 0
      Alignment = taRightJustify
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = #1047#1072#1076#1072#1081#1090#1077' '#1084'-'#1094' '#1080' '#1075#1086#1076' '#1087#1088#1086#1089#1084#1086#1090#1088#1072' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Layout = tlCenter
    end
    object SpinEdit3: TSpinEdit
      Left = 402
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
      TabOrder = 0
      Value = 1
      OnChange = SpinEdit3Change
    end
    object SpinEdit4: TSpinEdit
      Left = 440
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
      MinValue = 1998
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Value = 1998
      OnChange = SpinEdit4Change
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 112
    Width = 1171
    Height = 469
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1055#1088#1080#1093#1086#1076
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1163
        Height = 441
        Align = alClient
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        AutoFitColWidths = True
        Ctl3D = False
        DataSource = DSRaspSyr
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
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab]
        ParentCtl3D = False
        ParentFont = False
        STFilter.Visible = True
        SumList.Active = True
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
        OnKeyDown = DBGridEh1KeyDown
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
            FieldName = 'KOD_PROD'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 116
          end
          item
            EditButtons = <>
            FieldName = 'NMAT'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
            Width = 215
          end
          item
            EditButtons = <>
            FieldName = 'XARKT'
            Footers = <>
            Title.Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'NEIS'
            Footers = <>
            Title.Caption = #1045'.'#1080'. '#1087#1088'-'#1090#1072
            Width = 46
          end
          item
            DisplayFormat = '########0.000'
            EditButtons = <>
            FieldName = 'KOL_RASH_EDIZ'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 83
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'NEIZN'
            Footers = <>
            Title.Caption = #1045'.'#1080'. '#1089#1099#1088#1100#1103' '#1074' '#1086#1090#1095#1077#1090#1077
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'kot_s'
            Footers = <>
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082'|'#1074' '#1089#1099#1088#1100#1077
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'kot_nz'
            Footers = <>
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082'|'#1074' '#1085'/'#1079
            Width = 137
          end
          item
            EditButtons = <>
            FieldName = 'NDOK'
            Footer.FieldName = 'NDOK'
            Footers = <>
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090
            Width = 104
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1163
        Height = 441
        Align = alClient
        AutoFitColWidths = True
        DataSource = DSRaspSyr
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
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab]
        ParentFont = False
        STFilter.Visible = True
        SumList.Active = True
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
            FieldName = 'KOD_PROD'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 113
          end
          item
            EditButtons = <>
            FieldName = 'NMAT'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
            Width = 215
          end
          item
            EditButtons = <>
            FieldName = 'XARKT'
            Footers = <>
            Title.Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072
            Width = 98
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'NEIS'
            Footers = <>
            Title.Caption = #1045'.'#1080'. '#1087#1088#1077#1087#1072#1088#1072#1090#1072
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'KOL_RASH_EDIZ'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 74
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'NEIZN'
            Footers = <>
            Title.Caption = #1045'.'#1080'. '#1089#1099#1088#1100#1103' '#1074' '#1086#1090#1095#1077#1090#1077
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'kot_s'
            Footers = <>
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082'|'#1074' '#1089#1099#1088#1100#1077
            Width = 137
          end
          item
            EditButtons = <>
            FieldName = 'kot_nz'
            Footers = <>
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082'|'#1074' '#1085'/'#1079
            Width = 137
          end
          item
            EditButtons = <>
            FieldName = 'NDOK'
            Footers = <>
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090
            Width = 108
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1056#1072#1089#1093#1086#1076
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1163
        Height = 441
        Align = alClient
        AutoFitColWidths = True
        Ctl3D = False
        DataSource = DSRaspSyr
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
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab]
        ParentCtl3D = False
        ParentFont = False
        STFilter.Visible = True
        SumList.Active = True
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
            FieldName = 'KOD_PROD'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'NMAT'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
            Width = 215
          end
          item
            EditButtons = <>
            FieldName = 'XARKT'
            Footers = <>
            Title.Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072
            Width = 105
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'NEIS'
            Footers = <>
            Title.Caption = #1045#1076'.'#1080#1079'. '#1087#1088'-'#1090#1072
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'KOL_RASH_EDIZ'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 74
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'NEIZN'
            Footers = <>
            Title.Caption = #1045'.'#1080'. '#1089#1099#1088#1100#1103' '#1074' '#1086#1090#1095#1077#1090#1077
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'kot_s'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082'|'#1074' '#1089#1099#1088#1100#1077
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'kot_nz'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082'|'#1074' '#1085'/'#1079
            Width = 93
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1077#1088#1077#1076#1072#1085#1086
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1163
        Height = 356
        Align = alClient
        AutoFitColWidths = True
        DataSource = DSPeredano
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
        FooterRowCount = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab]
        ParentFont = False
        SumList.Active = True
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'kraz'
            Footers = <>
            Title.Caption = #1054#1090#1082#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1089#1099#1088#1100#1077'|'#1056#1072#1079'- '#1076#1077#1083
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'KOD_PROD'
            Footers = <>
            Title.Caption = #1054#1090#1082#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1089#1099#1088#1100#1077'|'#1050#1086#1076
            Width = 113
          end
          item
            EditButtons = <>
            FieldName = 'NMAT'
            Footers = <>
            Title.Caption = #1054#1090#1082#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1089#1099#1088#1100#1077'|'#1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
            Width = 191
          end
          item
            EditButtons = <>
            FieldName = 'XARKT'
            Footers = <>
            Title.Caption = #1054#1090#1082#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1089#1099#1088#1100#1077'|'#1061#1072#1088#1072#1082#1090#1077'- '#1088#1080#1089#1090#1080#1082#1072
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'kol_rash_ediz'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 101
          end
          item
            EditButtons = <>
            FieldName = 'neis'
            Footers = <>
            Title.Caption = #1045'.'#1080'.'#1074' '#1086#1090#1095#1077#1090#1077
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'kraz1'
            Footers = <>
            Title.Caption = #1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1089#1099#1088#1100#1077'|'#1056#1072#1079'.'
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'kod1'
            Footers = <>
            Title.Caption = #1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1089#1099#1088#1100#1077'|'#1050#1086#1076
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'naz1'
            Footers = <>
            Title.Caption = #1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1089#1099#1088#1100#1077'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 130
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 356
        Width = 1163
        Height = 85
        Align = alBottom
        TabOrder = 1
        object Label35: TLabel
          Left = 270
          Top = 6
          Width = 95
          Height = 13
          Margins.Bottom = 0
          Caption = #1054#1089#1090#1072#1090#1086#1082'  '#1074' '#1089#1099#1088#1100#1077' :'
        end
        object Label36: TLabel
          Left = 444
          Top = 7
          Width = 74
          Height = 13
          Margins.Bottom = 0
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1074' '#1085'/'#1079':'
        end
        object Label16: TLabel
          Left = 191
          Top = 27
          Width = 39
          Height = 13
          Margins.Bottom = 0
          Caption = #1054#1090#1082#1091#1076#1072':'
        end
        object Label18: TLabel
          Left = 195
          Top = 55
          Width = 27
          Height = 13
          Margins.Bottom = 0
          Caption = #1050#1091#1076#1072':'
        end
        object Label28: TLabel
          Left = 708
          Top = 27
          Width = 38
          Height = 13
          Margins.Bottom = 0
          Caption = '- '#1089#1099#1088#1100#1077
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label31: TLabel
          Left = 714
          Top = 47
          Width = 23
          Height = 13
          Margins.Bottom = 0
          Caption = '- '#1085'/'#1079
        end
        object DBEdit9: TDBEdit
          Left = 270
          Top = 26
          Width = 104
          Height = 21
          DataField = 'OT_S'
          DataSource = DSPeredano
          TabOrder = 0
        end
        object DBEdit10: TDBEdit
          Left = 440
          Top = 27
          Width = 104
          Height = 21
          DataField = 'OT_NZ'
          DataSource = DSPeredano
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 270
          Top = 53
          Width = 104
          Height = 21
          DataField = 'OT_S1'
          DataSource = DSPeredano
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 440
          Top = 56
          Width = 104
          Height = 21
          DataField = 'OT_NZ1'
          DataSource = DSPeredano
          TabOrder = 3
        end
        object Edit7: TEdit
          Left = 655
          Top = 25
          Width = 38
          Height = 15
          AutoSize = False
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
        end
        object Edit8: TEdit
          Left = 656
          Top = 49
          Width = 37
          Height = 15
          AutoSize = False
          Color = clMoneyGreen
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 1171
    Height = 79
    Align = alTop
    TabOrder = 2
    object Label19: TLabel
      Left = 19
      Top = 15
      Width = 76
      Height = 13
      Margins.Bottom = 0
      Caption = #1057#1099#1088#1100#1077' '#1080#1083#1080' '#1087'/'#1092
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 21
      Top = 37
      Width = 37
      Height = 13
      Margins.Bottom = 0
      Caption = #1061#1072#1088'-'#1082#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 198
      Top = 34
      Width = 26
      Height = 13
      Margins.Bottom = 0
      Caption = #1043#1086#1089#1090':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 21
      Top = 56
      Width = 40
      Height = 13
      Margins.Bottom = 0
      Caption = #1060#1080#1088#1084#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 203
      Top = 14
      Width = 48
      Height = 16
      Margins.Bottom = 0
      Caption = 'Label5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 368
      Top = 33
      Width = 31
      Height = 13
      Margins.Bottom = 0
      Caption = #1057#1077#1088#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 409
      Top = 33
      Width = 39
      Height = 13
      Margins.Bottom = 0
      Caption = 'Label6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 71
      Top = 38
      Width = 39
      Height = 13
      Margins.Bottom = 0
      Caption = 'Label9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 232
      Top = 34
      Width = 46
      Height = 13
      Margins.Bottom = 0
      Caption = 'Label10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 72
      Top = 55
      Width = 46
      Height = 13
      Margins.Bottom = 0
      Caption = 'Label11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 776
      Top = 55
      Width = 46
      Height = 13
      Margins.Bottom = 0
      Caption = 'Label12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 631
      Top = 55
      Width = 80
      Height = 13
      Margins.Bottom = 0
      Caption = #1054#1089#1090#1072#1090#1086#1082' '#1074' '#1094#1077#1093#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 719
      Top = 55
      Width = 39
      Height = 13
      Margins.Bottom = 0
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 173
      Top = 9
      Width = 23
      Height = 23
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
    object Edit1: TEdit
      Left = 107
      Top = 10
      Width = 66
      Height = 19
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
      OnClick = Edit1Click
      OnKeyDown = Edit1KeyDown
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 568
    Top = 4
    Bitmap = {
      494C01010B000E000C0018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000001F9FCF001F9FCF001F9FCF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F6F60009F6F60009F6F60009F6F
      60009F6F60009F6F60009F6F60009F6F60009F6F60009F6F60009F6F60009F6F
      60009F6F60009F6F60009F6F60009F6F60009F6F60009F6F60009F6F60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F90CF0040B0DF003FB0DF0020A0
      D000109FCF000F90CF000F8FC000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009F70
      70001F4F700000000000000000000000000090605F00F0DFB000F0DFB000F0D0
      AF00F0D0AF00F0D0A000F0D0A000F0D09F00EFCF9F00EFCF9F00EFCF9000EFCF
      9000EFC09000EFC08F00EFC08F00EFC08F00EFC08000EFC080009F6F60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F4010009F4010009F40
      10009F4010009F4010009F4010009F4010009F4010009F4010009F4010009F40
      10009F4010009F4010009F4010009F4010009F4010009F4010009F4010009F40
      10009F4010009F4010009F401000000000000F8FC0008FD0EF00B0FFFF007FF0
      FF0070EFFF0060DFF0004FCFEF003FBFE0002FAFDF001F9FCF000F90CF000F8F
      C0000F8FC0000000000000000000000000000000000000000000AF707000205F
      9F000F6FD0005F809F00000000000000000090605F00F0DFBF00F0DFB000F0DF
      B000F0DFAF00F0D0AF00F0D0A000F0D0A000EFCFA000EFCF9F00EFCF9F00EFCF
      9000EFCF9000EFCF9000EFC08F00EFC08F00EFC08F00EFC080009F6F60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AF6F0000EFA04F00FFB06F00FFB0
      5F00FFAF5000FFAF4F00FFA04000FFA03F00FF9F3000FF9F2F00FF901F00FF90
      1F00FF8F1000FF8F0F00FF800000FF800000FF800000FF800000FF800000FF80
      0000FF800000FF800000E07000009F401000008FC0004FAFD000D0FFFF007FFF
      FF007FFFFF007FFFFF0080FFFF0080FFFF007FF0FF0070EFFF005FDFF00040BF
      E0002FAFDF001F9FD0001090CF000F8FCF002F8FB000AF7F70002F5F8F00106F
      E00030A0FF00309FF000000000000000000090605F00F0DFBF00F0DFBF00F0DF
      B000F0DFB000F0DFAF00F0D0AF00F0D0A000F0D0A000EFD0A000EFCF9F00EFCF
      9F00EFCF9F00EFCF9000EFCF9000EFC08F00EFC08F00EFC08F009F6F60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BF7F0F00FFBF7F00FFB06F00EFAF
      5F00BF804F00DF904F00FFA04000FFA03F00DF8F3000BF7F2F00DF802000FF90
      1F00FF901000FF8F0F00FF8F0F00FF800000FF800000FF800000FF800000FF80
      0000FF800000FF800000FF8000009F4010000F8FCF001F90CF00BFEFF0008FFF
      FF007FF0FF007FF0FF007FF0FF007FF0FF007FF0FF007FF0FF007FF0FF007FF0
      FF007FF0FF0070EFFF006FDFF0006FBFD00090808F00205F8F000F6FE000309F
      FF003FAFFF002090FF00000000000000000090606000F0E0C000F0DFBF00F0DF
      BF00F0DFB000F0DFB000F0DFB000F0D0AF00F0D0AF00F0D0A000EFD0A000F0CF
      9F00EFCF9F00EFCF9F00EFCF9000EFCF9000EFC09000EFC08F009F6F60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0801000FFBF7F00CF9F60001F1F
      20001F1F20001F1F200090603000CF8F3F001F1F20001F1F20001F1F2000BF70
      1F00FF901F002F2020001F1F20001F1F20001F1F20001F1F20001F1F20001F1F
      20002F201F00DF700000FF8000009F4010001090CF0020A0D0006FC0E000AFFF
      FF0070F0FF007FF0FF007FF0FF007FF0FF0070F0FF007FF0FF0070EFFF0070EF
      FF0070EFFF0070EFFF0080DFEF009F8F90002F5F8F000F6FDF00309FFF003FAF
      FF00208FFF0000000000000000000000000090606000F0E0C000F0E0C000F0E0
      C000F0DFBF00F0DFB000F0DFB000F0DFB000F0D0AF00F0D0AF00F0D0A000F0D0
      A000EFD09F00EFCF9F00EFCF9F00EFCF9000EFCF9000EFC090009F6F60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CF801000FFBF8000FFBF7F00906F
      4F008060400080603F00EFA04F00EF9F400090603000805F2F0090602F00EF90
      2000FF901F00905F1F0080501F0080501000804F1000804F0F00804F0F00804F
      0F0090500F00FF800000FF8000009F4010001090CF004FC0E0003FAFD000BFFF
      FF007FFFFF007FF0FF007FF0FF007FF0FF0080DFE0008FCFD0008FD0DF0080CF
      D0007FC0CF0070E0F0007FB0BF0030608F000F6FDF00309FFF003FAFFF002F9F
      F0000F8FCF000000000000000000000000009F6F6000F0E0CF00F0E0C000D080
      2000D0802000D0802000D0802000D0802000D0802000D0802000D0802000D080
      2000D0802000D0802000D0802000D0802000EFCF9000EFCF90009F6F60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CF801000FFBF8000FFBF8000DFA0
      6F00BF8F5F00CF905000FFAF5000FFAF4F00CF8F3F00BF7F3000CF802F00FF9F
      2F00FF902000C07F3F00AF6F4000C0702F00FF8F0000FF800000C06F1F00AF60
      2F00C06F1F00FF800000FF8000009F4010000F8FCF0060DFEF003FBFE000A0DF
      EF008FFFFF007FF0FF007FEFF0008FDFE000BFAFA000DFC0AF00DFD0B000D0C0
      AF00BFAF9F008FA0A000708F8F005080A00040AFFF003FAFFF0030A0FF0050D0
      F0001090CF000000000000000000000000009F6F6000FFE0D000F0E0CF00F0E0
      C000F0E0C000F0E0C000F0DFBF00F0DFBF00F0DFB000F0DFB000F0D0AF00F0D0
      AF00F0D0A000F0D0A000EFD0A000EFCF9F00EFCF9F00EFCF90009F6F60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CF8F1000FFBF8000CF9F6F001F1F
      20001F1F20001F1F2000906F4000BF8040001F1F20001F1F20001F1F2000AF70
      2F008F606F00001FFF00001FFF00001FFF00AF6F300070505F00001FFF00001F
      FF00001FFF00C06F1F00FF8000009F4010000F8FCF006FDFF000A0606F0070C0
      E000A0FFFF0070EFF00090A0A000CFCFC000F0F0D000FFFFD000FFFFD000FFFF
      DF00FFFFD000D0C09F00A0807000CFB0AF007FDFFF004FCFFF004FC0F0006FE0
      FF002FAFDF00000000000000000000000000A0706000FFEFD000FFE0D000F0E0
      CF00F0E0CF00F0E0C000F0E0C000F0DFBF00F0DFBF00F0DFB000F0DFB000F0DF
      AF00F0D0AF00F0D0A000F0D0A000EFD0A000EFCF9F00EFCF9F009F6F60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D08F1000FFBF8000FFBF80009F7F
      5F0080604F00906F4F00EFAF5F00FFB05F009F703F00805F30009F6F3000EF90
      3000EF9030008F606F00605080008F605F00FF8F0F00EF80100070505F00604F
      60008F5F4000FF800000FF8000009F4010000F8FCF006FDFF000A0606F0040B0
      DF00C0FFFF007FC0CF00CFB0A000FFFFFF00FFFFF000FFFFDF00FFFFD000FFFF
      D000FFFFCF00FFFFBF00F0D0A000D0A08F0070DFEF006FE0FF004FCFF0006FE0
      FF0050D0EF000F8FC0000000000000000000A0706F00FFEFDF00FFEFD000D080
      2000D0802000D0802000D0802000D0802000D0802000D0802000D0802000D080
      2000D0802000D0802000D0802000D0802000F0D0A000F0CF9F009F6F60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D08F1000FFBF8000FFBF8000CF9F
      6F0090705000BF8F5F00FFB06F00FFB05F00BF804000805F3000C07F3F00FFA0
      3F00FF9F3000AF70500060508000AF704000FF8F1000FF8F0F00AF6F3000604F
      6000AF602F00FF800000FF8000009F401000108FCF006FDFEF00A0605F0030B0
      DF00AFDFEF00A09F9F00FFF0DF00FFFFFF00FFFFFF00FFFFF000FFFFDF00FFFF
      D000FFF0C000FFDF9F00FFDF9F00D0B090008FC0CF006FE0FF004FCFF0006FE0
      FF0070EFFF00109FCF000000000000000000AF7F6F00FFEFDF00FFEFDF00FFEF
      D000FFEFD000FFE0CF00F0E0CF000080BF000080BF000080BF000080BF000080
      BF000080BF000080BF000080BF000080BF000080BF000080BF000080BF000080
      BF000080BF000080BF000080BF000080BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D08F1000FFBF8000C0906F001F1F
      20001F1F20001F1F200080604000BF8F50001F1F20001F1F20001F1F20009F6F
      30008F6F7F00001FFF00001FFF00001FFF00AF6F40008F5F5F00001FFF00001F
      FF00001FFF00AF602F00FF8000009F401000108FCF006FDFEF00A0605F00FFF0
      E0002F9FD000C0A09000FFFFDF00FFFFEF00FFFFFF00FFFFF000FFFFDF00FFFF
      D000FFF0C000F0C08F00FFCF8F00EFD0A000A0AFAF0070DFF0004FCFF0006FE0
      FF0080F0FF0030B0DF000F8FC00000000000B07F6F00FFF0E000FFEFDF00FFEF
      DF00FFEFD000FFEFD000FFE0CF000080BF00C0FFFF00B0FFFF00A0FFFF0090FF
      FF008FFFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080F0FF0080F0
      FF0080F0FF0080EFFF0080EFFF000080BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DF901000FFBF8000FFBF8000CF9F
      6F0080604F00AF805F00FFBF7000FFB06F00AF7F4F00805F3F00AF7F3F00FFA0
      4000FFA03F009F706F0060508F00AF704F00FF901F00FF8F10009F604000604F
      6F00AF602F00FF800000FF8000009F4010001090CF0070DFF000A0706F00FFFF
      F000FFEFDF00CFB09F00FFFFDF00FFFFDF00FFFFE000FFFFE000FFFFDF00FFFF
      D000FFE0B000EFAF7000F0C07F00F0DFA000B0A0A0007FD0E0004FCFF0006FE0
      FF0080F0FF0060E0F0001090CF0000000000B0806F00FFF0E000FFF0E000D080
      2000D0802000D0802000D08020000080BF00CFFFFF00BFFFFF00AFFFFF009FFF
      FF0090FFFF008FFFFF0080FFFF0080FFFF0080FFFF0080FFFF0080F0FF0080F0
      FF0080F0FF0080F0FF0080EFFF000080BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DF901000FFBF8000FFBF8000FFBF
      8000FFBF8000FFBF8000FFBF7F00FFBF7000FFB06000FFB05F00FFAF5000FFAF
      4F00FFA03F00FFA03000FF9F2F00FF9F2000FF901F00FF901000FF8F0F00FF8F
      0F00FF800000FF800000FF8000009F4010001090CF0070DFF000A0706F00FFFF
      FF00FFF0E000CFAF9000FFFFD000FFFFD000FFFFD000FFFFDF00FFFFD000FFF0
      BF00F0C08F00EFA06000FFCF8F00F0DFA000A0AFAF0070DFEF004FCFF00060E0
      FF007FF0FF007FF0FF002FAFDF0000000000BF806F00FFF0EF00FFF0E000FFF0
      E000FFEFDF00FFEFDF00FFEFDF000080BF00D0FFFF00C0FFFF00B0FFFF00A0FF
      FF008FEFE00080E0E00080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080F0
      FF0080F0FF0080F0FF0080EFFF000080BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DF901000FFBF8000FFC08000FFCF
      9F00FFCF9F00FFCF9F00FFCF9F00FFCF9000FFCF9000FFC08000FFC07F00FFBF
      7000FFBF6F00FFB05F00FF9F3000FF9F2F00FF902000FF901F00FF8F1000FF8F
      0F00FF8F0000FF800000FF8000009F4010001090CF0070E0F000BF806F00FFFF
      FF00FFF0F000B08F8000FFFFCF00FFFFD000FFFFCF00FFF0C000FFE0AF00F0C0
      8F00EFBF8000F0D09F00FFF0B000E0C09F00A0BFBF008FEFFF0060D0FF007FE0
      FF008FF0FF008FFFFF0050D0EF000F8FC000C08F6F00FFF0EF00FFF0EF00FFF0
      E000FFF0E000FFEFE000FFEFDF000080BF00DFFFFF00CFFFFF00BFFFFF009FEF
      E00060A0A00080E0E0008FFFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080F0FF0080F0FF0080EFFF000080BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E09F1000FFBF8000C0906F0070DF
      CF0070DFCF0070DFCF0070DFCF0070DFCF0070DFCF0070DFCF0070DFCF0070DF
      CF0070DFCF00D0DFBF00FFA03000DF8F2F00CF7F2000BF701F00BF701F00BF6F
      1000CF700F00FF800000FF8000009F4010001090CF0070E0F000BF806F00FFFF
      FF00FFFFFF00D0BFB000D0BF9F00FFFFCF00FFDFA000EFBF8000EFAF6F00EFB0
      7000F0DFBF00FFFFFF00F0E0CF00AF9F9F009FC0DF00A0DFEF00AFDFF000BFE0
      F000BFEFF000C0EFFF00B0EFF0001F90CF00C08F7000FFF0EF00FFF0EF00D080
      2000D0802000D0802000D08020000080BF00E0FFFF00DFFFFF00BFEFEF007FA0
      A00090E0E0009FFFFF0090FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080F0FF0080F0FF0080F0FF000080BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E09F1000FFBF8000AF805F004FCF
      BF004FCFBF004FCFBF004FCFBF004FCFBF004FCFBF004FCFBF004FCFBF004FCF
      BF004FCFBF00D0DFBF00FFA03F00AF702F009F6F2F00905F20009F601F008050
      1F00BF6F1000FF8F0F00FF8000009F4010001090CF0070E0F000D0906F00FFFF
      FF00FFFFFF00FFF0F000DFC0BF00DFBF9F00FFEFAF00FFDF9F00FFD08F00FFE0
      A000FFFFE000EFE0E000BF908F0050B0D00040C0E0003FC0E0001F9FD0001090
      CF001090CF001F90CF001F90CF000F90CF00CF907000FFFFF000FFF0F000FFF0
      EF00FFF0EF00FFF0E000FFF0E0000080BF00EFFFFF009FB0B0006F808000A0DF
      DF00B0FFFF00A0FFFF0090FFFF008FFFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080F0FF0080F0FF000080BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0900F00FFBF8000EFAF7000AF80
      5F00AF805F00AF805F00AF805F00AF805F00AF805000AF7F4F00AF7F4F00AF7F
      4000AF703F00EFA05F00FFA04000EF9F3000EF902F00FF9F2F00DF802000BF70
      1F00FF8F1000FF8F0F00FF8000009F4010001090CF007FE0F000D0906F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E0D0CF00DFAF9F00EFCFA000E0C09F00E0C0
      9F00CFAF8F00AF908000A06F6F0070EFFF0070F0FF0070EFFF0020AFDF000000
      000000000000000000000000000000000000CF907000FFFFF000FFFFF000FFF0
      F000FFF0EF00FFF0EF00FFF0EF000080BF00F0FFFF0090A0A0000000000090B0
      B000BFFFFF00AFFFFF009FFFFF0090FFFF008FFFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080F0FF0080F0FF000080BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DF8F0000FFB06000FFBF8000FFBF
      8000FFBF8000FFBF8000FFBF8000FFBF8000FFBF8000FFBF7F00FFB06F00FFB0
      6000FFB05F00FFAF5000FFA04000FFA03F00FFA03000FF9F2F00FF9F2000FF90
      1F00FF901000FF8F0F00E07F0F00904F10000F8FCF008FDFEF00DF9F7000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF0EF00FFF0E000EFDFCF00A06F
      5F00A06F5F00A06F5F00A0606F0080EFFF0080EFFF0080EFFF0020A0D0000000
      000000000000000000000000000000000000D09F7000FFFFFF00FFFFF000FFFF
      F000FFF0F000FFF0EF00FFF0EF000080BF00FFFFFF00F0FFFF0090A0A0000000
      80000000800000008000A0FFFF009FFFFF008FFFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080F0FF000080BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DF900000E09F2000EFA0
      3000EFA03000EFA03000E0A03000E09F3000E09F3000DF9F3000DF902F00DF90
      2F00DF8F2000DF8F2000D08F1F00D0801F00D0801000D07F1000CF7F1000CF70
      0F00CF700F00B0600F0090500F0000000000000000003FA0D000DF9F7000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF000DFC0BF00A06F
      5F00E09F5000E08F3000B06F4F001F9FCF00209FD00020A0D0001090CF000000
      000000000000000000000000000000000000D09F7000FFFFFF00FFFFFF00FFFF
      F000FFFFF000FFFFF000FFF0EF000080BF00FFFFFF00F0FFFF00EFFFFF00305F
      FF0000008000000080005070C000A0FFFF0090FFFF008FFFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080F0FF000080BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F8FC000E0AF7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFC0C000A06F
      5F00FFB05F00BF7F5F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D09F7000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF000FFFFF0000080BF000080BF000080BF000080BF000000
      8000305FFF0000008000000000000080BF000080BF000080BF000080BF000080
      BF000080BF000080BF000080BF000080BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0AF7F00FFF0
      F000FFF0EF00FFF0EF00FFF0EF00FFF0EF00F0F0EF00F0F0EF00DFC0C000A06F
      5F00C0806F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CF8F6F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF000FFFFF000FFF0F000FFF0EF00FFF0EF00FFF0
      EF00706FB0000F0F8F00706FB000FFEFDF00FFEFDF00FFEFD0009F6F60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0AF7F00D090
      6F00D0906F00D0906F00D0906F00D0906F00D0906F00D0906F00D0906F00A06F
      5F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CF8F6F00CF8F6F00CF8F6F00CF8F
      6F00CF8F6F00CF8F6F00CF8F6F00CF8F6F00CF8F6F00CF8F6F00CF8F6F00CF8F
      6F00CF8F6F00CF8F6F00CF8F6F00CF8F6F00CF8F6F00CF8F6F00CF8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F8F8F005F606000807F
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000006F6F00006F6F00006F6F00006F
      6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F
      6F00006F6F00006F6F00006F6F00006F6F000000000000000000000000000000
      000000000000000000000000000000000000AFAFAF00CFCFCF00B0AFAF00A09F
      9F000000000000000000AFAFAF00D0D0D000DFDFDF00C0BFBF00AFAFAF000000
      00000000000000000000000000000000000000000000A0AFAF003F80C0002F7F
      BF00908F90000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000006F6F00006F6F00006F6F00006F
      6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F
      6F00006F6F00006F6F00006F6F00006F6F000000000000000000000000000000
      00000000000000000000AFAFAF00C0C0C000F0F0F000F0F0F000BFBFBF00B0AF
      AF005F5F5F00605F60008F808000AFAFAF00CFCFCF00E0E0E000E0E0E000D0D0
      D000B0B0B000000000000000000000000000A0502F005F8FB00050BFFF002F90
      F0002F7FB000908080007F403000703F1F0080402000904F20009F4F20009F50
      20009F5020009F5020009F502000A0502000A0502F00A0502F00A0502F00A050
      2F00A0502F00A0502F00A0502F00A0502F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090605F00A06F6F00A06F6F00A06F
      6F00A06F6F00A06F6F00A06F6F00A06F6F00006F6F00006F6F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00006F6F00006F6F000000000000000000000000000000
      0000AFAFAF00BFBFBF00EFEFEF00FFFFFF00FFFFFF00F0F0F000BFBFBF00B0B0
      B0004F4F4F002020200030303000404040006060600080808000AFAFAF00D0D0
      D000EFEFEF00DFDFDF00AFA0AF0000000000A0502F00CFE0F0005FBFFF0050B0
      FF002F90F0002F7FB0009F8F9000A08F80008F4F0000D0BF9F00E0C0A000E0C0
      A000DFBF9F00E0BF9F00E0C09F00EFCFA000F0D0A000FFD0AF00FFD0AF00FFD0
      AF00FFD0AF00FFD0AF00FFD0AF00A0502F008F3F10008F3F10008F3F10008F3F
      10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F
      10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F
      10008F3F10008F3F10008F3F10008F3F100090606000FFE0BF00FFE0BF00FFDF
      B000F0D0A000F0D09F00F0D09F00F0CF9000006F6F00006F6F00FFFFFF00FFFF
      FF00FFFFFF008FC0C0003F9F9F000F7070000F7070003F9F9F008FC0C000FFFF
      FF00FFFFFF00FFFFFF00006F6F00006F6F00000000000000000000000000AFAF
      AF00E0DFDF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00B0B0B000B0B0
      B0009F909F006F6F6F004F4F4F00303030002F2F2F002F2F300040404000605F
      60008F8F8F00A0A0A0000000000000000000A0502F00FFFFF000CFE0F0005FBF
      FF0050B0FF002F90F0002F7FB0009F8F900090502000B09F8F00BFA08F00BFA0
      8F00B09F8000B09F8000C0A08000D0B08F00E0C09F00F0CFA000FFD0AF00FFD0
      AF00FFD0AF00FFD0AF00FFD0AF00A0502F008F3F1000FFF0EF00FFF0E000FFE0
      C000F0D0A000F0D0A000FFFFFF00FFFFFF00FFD0AF00FFE0C000FFE0BF00FFDF
      BF00FFDFB000FFDFB000FFD0AF00FFD0A000FFD0A000FFD0A000FFCF9F00FFCF
      9F00FFCF9F00FFCF9000FFCF90008F3F100090606000F0DFBF00F0DFBF00F0D0
      B000F0D0AF00EFCFA000EFCF9F00EFC09000006F6F00006F6F00FFFFFF00FFFF
      FF0060B0B000006F6F00006F6F00006F6F00006F6F00006F6F00006F6F0060B0
      B000FFFFFF00FFFFFF00006F6F00006F6F0000000000A0A0A000D0CFCF00FFF0
      F000FFFFFF00F0F0F000F0F0F000EFEFEF00CFC0C000AFAFAF00A09F9F00A0A0
      A000AFAFAF00BFB0B000B0B0B0009F9F9F007F7F7F00505050003F3F3F002020
      2F0040404000A09F9F000000000000000000A0502F00FFFFFF00FFFFF000CFE0
      F0005FBFFF0050B0FF002F90F0002F7FB00090706F00908F7F009F8F70009080
      700090806F009F806F00A08F7000BF9F8000D0B08F00E0C09F00F0CFA000FFD0
      AF00FFD0AF00FFD0AF00FFD0AF00A0502F008F3F1000FFF0EF00D0C0B0006040
      1F006F401F006F401F007F604F00EFEFE000FFFFFF00FFE0C000FFE0C000FFDF
      BF00FFDFB000FFDFB000FFDFAF00FFD0AF00FFD0A000FFD0A000FFD09F00FFCF
      9F00FFCF9F00FFCF9000FFCF90008F3F100090606000F0DFC000F0E0C000F0DF
      BF00F0D0B000F0D0AF00EFCFA000EFCF9F00006F6F00006F6F00FFFFFF008FC0
      C000006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F
      6F008FC0C000FFFFFF00006F6F00006F6F0000000000A0A0A000F0F0F000F0F0
      F000F0F0F000E0E0E000C0BFBF00AFAFAF00BFB0B000D0D0D000B0B0B000AFA0
      A000A09FA0009F9F9F00A0A0A000AFAFAF00B0B0B000B0B0B000A0A0A0008080
      80006F6F6F00A0A0A0000000000000000000A0502F00FFFFFF00FFFFFF00FFFF
      FF00C0DFF0005FBFFF004FB0FF004090E00060605F00807F7000A07F6000BF9F
      8F00BF9F9000BF9F9000BF9F8F00B08F6000BF7F1000CF7F0000DF800000F090
      0000FF900000FF9F0000FF9F0000A0502F008F3F1000FFF0EF006F4F3000605F
      4000FFFFFF00FFFFFF007F8F7F007F604F00FFFFFF00FFE0CF00FFE0C000FFE0
      BF00FFDFBF00FFDFB000FFDFB000FFD0AF00FFD0AF00FFD0A000FFD0A000FFD0
      9F00FFCF9F00FFCF9F00FFCF90008F3F100090606000F0E0CF00F0E0C000F0DF
      C000F0DFB000F0D0B000F0D0AF00EFCFA000006F6F00006F6F00FFFFFF003F9F
      9F00006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F
      6F003F9F9F00FFFFFF00006F6F00006F6F0000000000A0A0A000E0E0E000DFDF
      DF00BFBFBF00AFA0A000BFBFBF00D0D0D000DFE0DF00E0E0E000EFE0E000DFD0
      D000CFC0C000BFBFBF00AFAFAF00A0A0A000A09F9F00A09F9F00A0A0A000B0AF
      AF00B0B0B000A0A0A0000000000000000000A0502F00FFFFFF00FFFFFF00C0BF
      BF00BFBFBF00BFDFF0007FC0F000CFD0DF00B0A09F00B09F8F00D0BFA000EFE0
      C000FFF0DF00FFF0D000EFE0C000CFBFA000BF9F8F00AF907F00C0A08000E0BF
      9F00F0D0A000FFD0AF00FFD0AF00A0502F008F3F1000FFFFF0005F301000D0D0
      D000E0EFEF00FFFFFF00FFFFFF006F401F00F0D0A000FFE0CF00D0802000D080
      2000D0802000D0802000D0802000D0802000D0802000D0802000D0802000D080
      2000D0802000FFCF9F00FFCF9F008F3F100090606000F0E0D000FFE0D000F0E0
      C000F0DFBF00F0DFBF00F0D0B000F0D0AF00006F6F00006F6F00FFFFFF000F70
      7000006F6F00006F6F00006F6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00006F
      6F000F707000FFFFFF00006F6F00006F6F0000000000A0A0A000B0B0B000AFA0
      A000BFBFBF00D0D0D000DFDFDF00DFDFDF00D0D0D000EFEFEF00FFF0F000F0F0
      F000F0F0F000E0E0E000DFDFDF00CFCFCF00C0BFBF00B0B0B000AFAFAF00A0A0
      A000A09F9F009F9F9F000000000000000000A0502F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F0F0EF00DFD0D000BFAFAF00C0A09000E0D0AF00FFE0B000FFE0
      BF00FFE0BF00FFE0BF00FFE0BF00FFEFD000E0D0D000B0908F00AF907F00DFBF
      9000F0CFA000FFD0AF00FFD0AF00A0502F008F3F1000FFFFF0005F301000D0D0
      D000D0D0D000E0EFEF00FFFFFF006F401F00F0D0A000FFE0CF00FFE0CF00FFE0
      C000FFE0C000FFDFBF00FFDFB000FFDFB000FFD0AF00FFD0AF00FFD0A000FFD0
      A000FFD09F00FFCF9F00FFCF9F008F3F10009F6F6000F0EFDF00FFEFDF00F0E0
      CF00F0DFC000F0DFC000F0DFBF00F0D0B000006F6F00006F6F00FFFFFF000F70
      7000006F6F00006F6F00006F6F00FFFFFF00006F6F00006F6F00006F6F00006F
      6F000F707000FFFFFF00006F6F00006F6F0000000000A0A0A000BFBFBF00D0D0
      D000DFDFDF00D0D0D000D0D0D000D0D0D000E0E0E000F0F0F000C0C0C000C0BF
      C000D0CFD000E0E0E000EFEFEF00EFEFEF00E0E0E000DFDFDF00CFCFCF00C0C0
      C000BFBFBF00AFA0A0000000000000000000A0502F00FFFFFF00FFFFFF004FB0
      4F004FB04F00F0F0F000D0D0D000BF9F9000D0BF9F00FFDFAF00FFEFC000FFFF
      DF00FFFFDF00FFFFE000FFFFF000FFFFFF00FFFFFF00CFB0A000B07F3F00DF80
      0000F0900000FF9F0000FF9F0000A0502F008F3F1000FFFFF0006F4F3000806F
      4F00D0D0D000D0D0D00080604000603F1F00FFDFBF00FFEFD000FFE0CF00FFE0
      C000FFE0C000FFE0BF00FFDFBF00FFDFB000FFDFB000FFD0AF00FFD0AF00FFD0
      A000FFD0A000FFCF9F00FFCF9F008F3F10009F6F6000F0EFE000FFEFE000F0E0
      D000F0E0CF00F0E0C000F0DFBF00F0DFB000006F6F00006F6F00FFFFFF003F9F
      9F00006F6F00006F6F00006F6F00FFFFFF00006F6F00006F6F00006F6F00006F
      6F003F9F9F00FFFFFF00006F6F00006F6F0000000000A0A0A000D0D0D000DFDF
      DF00D0D0D000D0D0D000D0D0D000E0E0E000F0F0F000C0BFBF00AFB0AF0080C0
      8000B0B0B000AFAFAF00B0AFAF00BFBFBF00CFCFCF00DFD0D000DFDFDF00DFDF
      DF00DFDFDF00AFAFAF000000000000000000A0502F00FFFFFF00FFFFFF004FB0
      4F004FB04F00F0F0F000DFD0D000BFA09000EFD0AF00F0C09000FFEFBF00FFFF
      DF00FFFFDF00FFFFEF00FFFFFF00FFFFFF00FFFFEF00E0DFC000B09F8F00DFBF
      9F00F0D0AF00FFD0AF00FFD0AF00A0502F008F3F1000FFFFF000D0C0BF006F4F
      30005F3010005F3010006F4F3000D0BFAF00FFEFDF00FFEFD000FFE0D000FFE0
      CF00FFE0C000FFE0C000FFE0BF00FFDFB000FFDFB000FFDFAF00FFD0AF00FFD0
      A000FFD0A000FFD09F00FFCF9F008F3F1000A0706F00FFF0EF00FFF0EF00FFEF
      DF00F0E0D000F0E0CF00F0E0C000F0DFBF00006F6F00006F6F00FFFFFF008FC0
      C000006F6F00006F6F00006F6F00FFFFFF00006F6F00006F6F00006F6F00006F
      6F008FC0C000FFFFFF00006F6F00006F6F000000000000000000BFBFBF00DFDF
      DF00DFDFDF00DFDFDF00E0E0E000EFEFEF00B0B0B000BFBFBF00F0F0F000D0F0
      D000EFEFEF00E0E0E000FFC0AF00C0BFC000B0B0B000AFA0AF00AFAFAF00BFBF
      BF00BFBFBF00B0B0B0000000000000000000A0502F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DFD0D000BF9F9000F0E0AF00EFBF8F00FFD0AF00FFE0
      BF00FFE0BF00FFE0C000FFE0C000FFE0C000FFE0BF00F0F0CF00B09F8F00E0C0
      A000F0D0B000FFDFB000FFDFB000A0502F008F3F1000FFFFFF00FFFFF000FFEF
      D000F0D0AF00F0D0A000FFFFFF00FFFFFF00FFE0C000FFEFDF00FFEFD000FFE0
      CF00FFE0CF00FFE0C000FFE0BF00FFDFBF00FFDFB000FFDFB000FFDFAF00FFD0
      AF00FFD0A000FFD0A000FFCF9F008F3F1000A0706F00FFF0F000FFFFF000FFEF
      E000F0EFDF00FFE0D000F0E0CF00F0DFC000006F6F00006F6F00FFFFFF00FFFF
      FF0060B0B000006F6F00006F6F00006F6F00006F6F00006F6F00006F6F0060B0
      B000FFFFFF00FFFFFF00006F6F00006F6F00000000000000000000000000B0B0
      B000CFCFCF00D0D0D000C0C0C000AFAFAF00CFCFCF00F0F0F000F0F0F000F0F0
      F000EFEFEF00EFEFEF00EFEFEF00EFEFEF00E0E0E000DFDFDF00CFCFCF00AFAF
      AF00A0A0A000000000000000000000000000A0502F00FFFFFF00FFFFFF00C0C0
      C000BFBFBF00FFFFFF00EFE0E000BF9F9000FFE0B000EFBF8000FFCF9F00FFDF
      B000FFE0BF00FFE0BF00FFE0BF00FFE0BF00FFE0BF00FFDFB000BF9F8000F090
      0000FF900000FF9F0000FF9F0000A0502F008F3F1000FFFFFF00D0CFC0006040
      1F00606060006060600090909000FFFFFF00FFFFFF00FFEFDF00FFEFD000FFEF
      D000FFE0CF00FFE0C000FFE0C000FFE0BF00FFDFBF00FFDFB000FFDFB000FFD0
      AF00FFD0A000FFD0A000FFD0A0008F3F1000AF7F6F00FFFFFF00FFFFFF00FFF0
      EF00FFEFE000FFEFDF00FFEFD000F0E0CF00006F6F00006F6F00FFFFFF00FFFF
      FF00FFFFFF008FC0C0003F9F9F000F7070000F7070003F9F9F008FC0C000FFFF
      FF00FFFFFF00FFFFFF00006F6F00006F6F000000000000000000000000000000
      000000000000A09F9F00BFBFBF00DFDFDF00CFCFCF00AFAFAF00CFCFCF00DFDF
      DF00E0E0E000EFE0E000E0E0E000E0E0E000E0E0E000E0E0E000C0C0C000BFB0
      BF0000000000000000000000000000000000A0502F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0F0F000C0A09000EFDFB000F0D0A000F0CF9000F0D0
      A000FFEFBF00FFFFD000FFFFDF00FFFFDF00FFFFDF00EFDFBF00C0AF9F00FFE0
      C000FFE0C000FFDFBF00FFDFBF00A0502F008F3F1000FFFFFF006F4F30005F80
      7F0000BFFF0000BFFF0090EFFF0090909000FFFFFF00FFEFDF00FFEFDF00FFEF
      D000FFEFCF00FFE0CF00FFE0C000FFE0C000FFDFBF00FFDFB000FFDFB000FFDF
      AF00FFD0AF00FFD0A000FFD0A0008F3F1000B07F6F00FFFFFF00FFFFFF00FFFF
      F000FFF0EF00FFEFE000FFEFDF00FFE0D000006F6F00006F6F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00006F6F00006F6F000000000000000000000000000000
      000000000000B0AFB000F0F0F000F0F0F000E0DFDF00BFBFBF00BFBFBF00C0C0
      CF00D0D0DF00D0DFDF00DFDFDF00DFDFDF00C0C0C000AFAFAF00BFB0BF000000
      000000000000000000000000000000000000A0502F00FFFFFF00FFFFFF006F90
      FF006F90FF00FFFFFF00FFFFFF00CFAFAF00D0BFA000FFFFE000FFEFDF00F0D0
      A000F0CF9000F0DFAF00FFE0BF00FFF0C000FFFFD000CFB09F00DFC0B000FFEF
      CF00FFE0CF00FFE0C000FFE0C000A0502F008F3F1000FFFFFF005F30100000BF
      FF00004F0000004F000000BFFF0060606000F0D0A000FFF0E000D0802000D080
      2000D0802000D0802000D0802000D0802000D0802000D0802000D0802000D080
      2000D0802000FFD0AF00FFD0A0008F3F1000B0806F00FFFFFF00FFFFFF00FFFF
      FF00FFFFF000FFF0EF00FFF0E000FFEFDF00006F6F00006F6F00006F6F00006F
      6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F
      6F00006F6F00006F6F00006F6F00006F6F000000000000000000000000000000
      00000000000000000000EFDFDF00FFEFE000FFE0DF00FFDFD000FFDFD000F0DF
      D000F0DFD000EFDFDF00E0E0DF00DFDFDF00CFC0CF0000000000000000000000
      000000000000000000000000000000000000A0502F00FFFFFF00FFFFFF006F90
      FF006F90FF00FFFFFF00FFFFFF00EFE0E000BF9F8F00E0DFD000FFFFFF00FFEF
      C000F0C09000F0C09000F0D0A000FFEFBF00DFC0AF00BF907F00F09F1000FF9F
      0000FF9F0000FF9F0000FF9F0000A0502F008F3F1000FFFFFF005F30100080FF
      FF00004F0000004F000000BFFF0060606000F0D0AF00FFF0E000FFEFE000FFEF
      DF00FFEFD000FFEFD000FFE0CF00FFE0C000FFE0C000FFDFBF00FFDFBF00FFDF
      B000FFDFAF00FFD0AF00FFD0A0008F3F1000BF807000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF000FFF0EF00FFF0E000006F6F00006F6F00006F6F00006F
      6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F6F00006F
      6F00006F6F00006F6F00006F6F00006F6F000000000000000000000000000000
      00000000000000000000E0C0C000FFE0DF00FFE0D000FFDFCF00FFD0C000FFCF
      BF00FFCFB000FFC0B000FFC0AF00EFD0CF000000000000000000000000000000
      000000000000000000000000000000000000A0502F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0703000BF9F9000CFB0A000EFDF
      B000FFE0BF00F0E0B000E0D0AF00CFB09F00BFA09000EFDFD000FFF0E000FFF0
      DF00FFEFDF00FFEFD000FFEFD000A0502F008F3F1000FFFFFF006F5030009F9F
      9F00FFFFFF0000BFFF009F8F7F0060401F00FFE0CF00FFF0E000FFF0E000FFEF
      DF00FFEFDF00FFEFD000FFEFCF00FFE0CF00FFE0C000FFE0C000FFDFBF00FFDF
      B000FFDFB000FFD0AF00FFD0AF008F3F1000BF8F7000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF000FFF0EF00FFEFE000FFEFDF00F0E0D000F0E0
      CF00F0DFC000F0DFBF00F0DFB000E0C0A000BFA08F008F706F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0C0C000FFEFE000FFE0D000FFDFCF00FFD0C000FFCF
      BF00FFCFBF00FFC0B000FFBFA000000000000000000000000000000000000000
      000000000000000000000000000000000000A0502F00EFC07F00EFC07F00EFC0
      7F00EFC07F00EFC07F00EFC07F00EFC07F00CF600000E0B07F00BF9F7F00BF9F
      8F00BF9F8F00BF9F8F00BF9F8F00CFA08000E0BF7F00EFC07F00EFC07F00EFC0
      7F00EFC07F00EFC07F00EFC07F00A0502F008F3F1000FFFFFF00D0CFC0006F50
      30005F3010005F3010006F4F3000CFC0BF00FFF0EF00FFF0EF00FFF0E000FFF0
      E000FFEFDF00FFEFD000FFEFD000FFE0CF00FFE0CF00FFE0C000FFE0BF00FFDF
      BF00FFDFB000FFDFB000FFD0AF008F3F1000C08F7000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF000FFF0EF00FFEFE000FFEFDF00F0E0
      D000FFF0DF00FFEFD000D0CFB000B0AF9F00AFA08F0080706F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFCFCF00FFEFE000FFE0D000FFDFCF00FFD0C000FFCF
      BF00FFCFBF00FFC0B000F0B0A000000000000000000000000000000000000000
      000000000000000000000000000000000000A0502F00CF6F1F00D0701000D070
      1000D0701000D0701000D0701000D0701000D0701000D0701000D0701000D070
      1000D0701000D0701000D0701000FFC08000EF9F4000E0801000FFC08000EF9F
      40009F6F4F004F6FD000CF6F1F00A0502F008F3F1000E0AF5F00E0AF5F00E0AF
      5F00E0AF5F00E0AF5F00E0AF5F00E0AF5F00E0AF5F00E0AF5F00E0AF5F00E0AF
      5F00E0AF5F00E0AF5F00E0AF5F00E0AF5F00E0AF5F00E0AF5F00E0AF5F00E0AF
      5F00E0AF5F00E0AF5F00E0AF5F008F3F1000CF907000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF000FFF0EF00FFF0E000FFEF
      DF00CFA09000A0706F009F6F6F00906F6F00906F6F00906F5F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFCFCF00FFEFDF00FFE0D000FFDFCF00FFD0C000FFCF
      BF00FFCFBF00FFC0B000FFC0AF00000000000000000000000000000000000000
      000000000000000000000000000000000000A0502F00C0703F00D0803F00D080
      3F00D0803F00D0803F00D0803F00D0803F00D0803F00D0803F00D0803F00D080
      3F00D0803F00D0803F00D0803F00F0BF8000E0904000D0701000FFC08000E090
      40009F6F4F004F6FD000C0703F00A0502F008F3F1000BF500F00CF5F0000CF5F
      0000CF5F0000CF5F0000CF5F0000CF5F0000CF5F0000CF5F0000CF5F0000CF5F
      0000CF5F0000CF5F0000CF5F0000FFAF6000EF802F00DF6F0F00FFAF6000EF80
      2F009F5F30003050C000BF500F008F3F1000CF907000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF000FFFFF000F0E0
      DF00B0807F00B07F5F00D0905F00D0804000E08F2000B06F5F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFCFCF00FFE0DF00FFE0D000FFDFCF00FFD0C000FFCF
      BF00FFCFBF00FFC0AF00FFC0AF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0502F00A0502F00A050
      2F00A0502F00A0502F00A0502F00A0502F00A0502F00A0502F00A0502F00A050
      2F00A0502F00A0502F00A0502F00A0502F00A0502F00A0502F00A0502F00A050
      2F00A0502F00A0502F00A0502F00000000008F3F1000B05F2000C06F2000C06F
      2000C06F2000C06F2000C06F2000C06F2000C06F2000C06F2000C06F2000C06F
      2000C06F2000C06F2000C06F2000F0AF6000DF7F2F00C05F0F00FFAF6000DF7F
      2F00804F30003050C000B05F20008F3F1000D09F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0EF
      E000AF807F00C08F6000EFB06000FFAF3000C07F500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0CFC000FFF0EF00FFE0DF00FFE0D000FFDFCF00FFD0C000FFD0
      BF00FFCFBF00FFC0AF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F3F10008F3F10008F3F
      10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F
      10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F10008F3F
      10008F3F10008F3F10008F3F100000000000D09F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0EF
      EF00AF807F00C08F6000FFBF5F00C0805F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFCFCF00FFF0EF00FFEFE000FFE0DF00FFDFD000FFDFCF00FFD0
      C000F0BFB000FFC0AF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D09F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF0
      F000B0808000D0906000C08F6F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFB0B000EFCFCF00E0C0C000E0C0BF00E0C0BF00E0BFBF00E0BFB000E0B0
      AF00FFC0AF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CF8F6F00D0906F00D0906F00D090
      6F00D0906F00D0906F00D0906F00D0906F00D0906F00D0906F00D0906F00D090
      6F00B0706000A060600000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AF7F
      7F00B0808000B0808000B0808000B0808000B0808000B0808000B0808000B080
      8000B0808000B0808000B0808000B0808000B0808000B0808000B0808000B080
      8000B0808000B08080000000000000000000000000000000000000000000AF7F
      7F00B0808000B0808000B0808000B0808000B0808000B0808000B0808000B080
      8000B0808000B0808000B0808000B0808000B0808000B0808000B0808000B080
      8000B0808000B0808000000000000000000000000000AF5F5F00A04F4F00A06F
      6F00BFBFBF00CFD0CF00D0CFCF00CFCFCF00C0C0C000A06F6F00903F3F00A04F
      4F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004F0000004F
      0000004F0000004F000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AF7F
      7F00F0E0C000F0E0BF00F0DFBF00F0DFBF00F0DFB000F0DFB000F0DFB000F0D0
      AF00F0D0AF00F0D0AF00F0D0A000F0D0A000F0D0A000F0D09F00F0D09F00F0CF
      9F00F0CF9F00B08F7F000000000000000000000000000000000000000000AF7F
      7F00F0E0C000F0E0BF00F0DFBF00F0DFBF00F0DFB000F0DFB000F0DFB000F0D0
      AF00F0D0AF00F0D0AF00F0D0A000F0D0A000F0D0A000F0D09F00F0D09F00F0CF
      9F00F0CF9F00B08F7F000000000000000000BF707000D0606000CF5F5F00A06F
      6F00AF909000DFC0BF00FFF0F000FFFFFF00EFEFEF00B06F6F008F202000BF50
      5000B05F5F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004F00005F9F5F009FDF
      AF003FA02F002F800000004F0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AF7F
      7F00F0E0C000F0E0C000F0E0BF00F0DFBF00F0DFBF00F0DFB000F0DFB000F0DF
      B000F0DFAF00F0D0AF00F0D0AF00F0D0A000F0D0A000F0D0A000F0D0A000F0D0
      9F00F0D09F00B08F7F000000000000000000000000000000000000000000AF7F
      7F00F0E0C000F0E0C000F0E0BF00F0DFBF00F0DFBF00F0DFB000F0DFB000F0DF
      B000F0DFAF00F0D0AF00F0D0AF00F0D0A000F0D0A000F0D0A000F0D0A000F0D0
      9F00F0D09F00B08F7F000000000000000000BF706F00CF606000CF606000AF70
      70009F505000AF5F5F00E0D0D000FFFFFF00FFF0F000BF7070008F202000B050
      5000B05F5F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004F00005F9F5F009FDF
      AF003FA02F002F800000004F0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AF7F
      7F00F0E0CF00F0E0C000009F0000009F0000F0DFBF00F0DFBF009F3000009F30
      00009F3000009F3000009F3000009F3000009F3000009F3000009F300000F0D0
      A000F0D09F00B08F7F000000000000000000000000000000000000000000AF7F
      7F00F0E0CF00F0E0C000009F0000009F0000F0DFBF00F0DFBF009F3000009F30
      00009F3000009F3000009F3000009F3000009F3000009F3000009F300000F0D0
      A000F0D09F00B08F7F000000000000000000BF706F00CF606000C05F5F00B07F
      7F009F50500090202000BFA0A000F0FFF000FFFFFF00BF7F70008F1F1F00B050
      5000B05F5F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004F00005F9F5F009FDF
      AF003FA02F002F800000004F0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AF7F
      7F00F0E0CF00F0E0CF00009F0000009F0000F0E0C000F0DFBF00F0DFBF00F0DF
      B000F0DFB000F0DFB000F0DFB000F0DFAF00F0D0AF00F0D0AF00F0D0A000F0D0
      A000F0D0A000B08F7F000000000000000000000000000000000000000000AF7F
      7F00F0E0CF00F0E0CF00009F0000009F0000F0E0C000F0DFBF00F0DFBF00F0DF
      B000F0DFB000F0DFB000F0DFB000F0DFAF00F0D0AF00F0D0AF00F0D0A000F0D0
      A000F0D0A000B08F7F000000000000000000BF706F00CF606000C05F5F00BF7F
      7F00B0808000A0606000A0909000CFCFCF00F0EFEF00BF7070008F2020000070
      0F0000700F0000700F0000700F0000700F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004F00005F9F5F009FDF
      AF003FA02F002F800000004F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F5F
      5F00BFAF9F00BFAF9F00BFAF9000BFAF9000BFAF9000BFAF9000BFAF8F00BFA0
      8F00BFA08F00B0A08F00B0A08000B0A08000B0A08000B0A08000B0A07F00B09F
      7F00B09F7F0080605F0000000000000000000000000000000000000000007F5F
      5F00BFAF9F00BFAF9F00BFAF9000BFAF9000BFAF9000BFAF9000BFAF8F00BFA0
      8F00BFA08F00B0A08F00B0A08000B0A08000B0A08000B0A08000B0A07F00B09F
      7F00B09F7F0080605F000000000000000000BF707000CF606000CF606000C060
      6000CF7F7000CF707000C06F6F00C06F6F00D07F7F00C060600000700F000070
      0F000F8010000F901F000F901F000F9010000F7F0F0000700F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004F00005F9F5F009FDF
      AF003FA02F002F800000004F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000000000000009F0000009F000000
      9F0000009F0000009F0000009F0000009F0000009F0000009F0000009F000000
      9F0000009F0000009F0000009F0000009F0000009F0000009F0000009F000000
      9F0000009F0000009F0000009F0000009F00BF706F00BF505000BF6F6000CF8F
      8F00D09F9F00D09F9F00D09F9F00D0909000D0909000D09F9F00D09F9F00D070
      7000B0505000000000000F8010000F9F1F000FA01F000F8F100000700F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004F000030A04F002FBF
      50001FAF2F0010901000004F0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000060000000000000AF80
      7F00FFEFDF00FFEFD000FFEFD000FFEFCF00F0E0CF00F0E0CF00F0E0C000F0E0
      C000F0E0C000F0DFBF00F0DFBF00F0DFB000F0DFB000F0DFB000F0DFAF00F0D0
      AF00F0D0AF00B08F7F0000000000006000000000000000009F0000000000AF80
      7F00FFEFDF00FFEFD000FFEFD000FFEFCF00F0E0CF00F0E0CF00F0E0C000F0E0
      C000F0E0C000F0DFBF00F0DFBF00F0DFB000F0DFB000F0DFB000F0DFAF00F0D0
      AF00F0D0AF00B08F7F000000000000009F00BF6F6000BF606000EFDFDF00FFF0
      F000F0F0F000F0F0F000F0F0F000FFF0F000FFF0F000FFFFFF00EFDFDF00CF70
      7000AF505000000000000000000000700F000F9F1F000FAF1F000F8010000070
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004F00001F9F300020C050001FB0
      400010A02F000F9F1F0000800F00004F00000000000000000000000000000000
      000000000000000000000000000000000000000000000060000000000000B08F
      7F00FFEFDF00FFEFDF000060000000600000FFEFD000F0E0CF00006000000060
      000000600000006000000060000000600000006000000060000000600000F0DF
      B000F0DFAF00B08F7F0000000000006000000000000000009F0000000000B08F
      7F00FFEFDF00FFEFDF0000009F0000009F00FFEFD000F0E0CF0000009F000000
      9F0000009F0000009F0000009F0000009F0000009F0000009F0000009F00F0DF
      B000F0DFAF00B08F7F000000000000009F00BF6F6000BF6F6F00F0F0EF00F0F0
      F000F0EFEF00F0EFEF00F0EFEF00F0EFEF00F0EFEF00F0F0F000EFDFDF00CF6F
      6F00AF505000B0808000B0808000B08080000F80100010AF20000F9F1F000070
      0F00B0808000B0808000B0808000B08080000000000000000000000000000000
      0000000000000000000000000000004F00001FA03F002FD05F0020C050001FB0
      3F0010A02F000F9F1000008F000000700000004F000000000000000000000000
      000000000000000000000000000000000000000000000060000000000000B08F
      8000FFF0E000FFEFDF000060000000600000FFEFD000FFEFD000F0E0CF00F0E0
      CF00F0E0CF00F0E0C000F0E0C000F0E0BF00F0DFBF00F0DFBF00F0DFB000F0DF
      B000F0DFB000B08F7F0000000000006000000000000000009F0000000000B08F
      8000FFF0E000FFEFDF0000009F0000009F00FFEFD000FFEFD000F0E0CF00F0E0
      CF00F0E0CF00F0E0C000F0E0C000F0E0BF00F0DFBF00F0DFBF00F0DFB000F0DF
      B000F0DFB000B08F7F000000000000009F00BF6F6000C06F6F00F0EFEF00E0E0
      E000D0D0D000DFD0D000DFD0D000DFD0D000D0D0D000E0E0E000EFDFD000CF6F
      6F00AF505000F0E0C000F0DFBF00F0DFB0000F700F001FAF2F0010AF20000070
      0F00F0CF9F00F0CF9F00F0D09F00B08080000000000000000000000000000000
      00000000000000000000004F000020AF400030E06F002FCF5F001FBF4F0010B0
      3F000FA0200000901000008F00000080000000700000004F0000000000000000
      0000000000000000000000000000000000000000000000600000000000008F6F
      6000BFB0AF00BFB0A000BFB0A000BFB0A000BFB0A000BFAFA000BFAF9F00BFAF
      9F00BFAF9F00BFAF9000BFAF9000BFAF9000BFAF9000BFA08F00BFA08F00B0A0
      8F00B0A0800080605F0000000000006000000000000000009F00000000008F6F
      6000BFB0AF00BFB0AF00BFB0A000BFB0A000BFB0A000BFAFA000BFAF9F00BFAF
      9F00BFAF9F00BFAF9000BFAF9000BFAF9000BFAF9000BFA08F00BFA08F00B0A0
      8F00B0A0800080605F000000000000009F00BF6F6000BF6F6F00F0EFEF00EFEF
      EF00E0DFDF00E0DFDF00E0DFDF00E0DFDF00E0DFDF00EFEFEF00EFDFDF00CF6F
      6F00AF505000F0E0CF00F0DFC000F0DFBF0000700F0020AF3F0020BF3F000070
      0F00EFCF9000EFCF9000F0D09F00B08080000000000000000000000000000000
      000000000000004F00002FB0400040EF700030DF60002FCF5F001FBF4F0010AF
      30000FA0200000900F0000800000008000000080000000700000004F00000000
      0000000000000000000000000000000000000000000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000000000000009F0000009F000000
      9F0000009F0000009F0000009F0000009F0000009F0000009F0000009F000000
      9F0000009F0000009F0000009F0000009F0000009F0000009F0000009F000000
      9F0000009F0000009F0000009F0000009F00BF6F6000C06F6F00F0EFEF00E0E0
      E000DFD0D000DFDFDF00DFDFDF00DFDFDF00DFD0D000E0E0E000EFDFD000CF70
      6F00AF50500000700F0000700F0000700F000F70100030BF4F002FC04F000070
      0F0000700F0000700F0000700F00B08080000000000000000000000000000000
      0000004F00002FB040004FFF80003FEF700030DF600020CF50001FBF400010AF
      30000F9F1F0000900F000080000000800000008000000080000000700000004F
      000000000000000000000000000000000000000000000000000000000000BF90
      8000E0E0D000DFDFCF00DFD0CF00E0DFCF00F0E0D000F0EFDF00FFEFDF00FFEF
      D000FFEFD000F0EFD000F0E0CF00F0E0CF00F0E0CF00F0E0C000F0E0C000F0E0
      BF00F0DFBF00B08F7F000000000000000000000000000000000000000000C090
      8000FFF0EF00FFF0E000FFF0E000FFF0E000FFF0DF00FFEFDF00FFEFDF00FFEF
      D000FFEFD000F0EFD000F0E0CF00F0E0CF00F0E0CF00F0E0C000F0E0C000F0E0
      BF00F0DFBF00B08F7F000000000000000000BF6F6000BF6F6F00F0EFEF00FFF0
      F000F0EFEF00F0EFEF00F0EFEF00F0EFEF00F0EFEF00FFF0F000EFDFDF00CF70
      6F00AF50500000700F0020AF300030AF50003FBF5F0040CF6F003FC05F002FBF
      4F0020AF300020AF300000700F00B0808000000000000000000000000000004F
      00002FB040004FFF800040FF7F003FE06F002FD0600020C050001FB0400010A0
      2F000F9F1F00008F0F0000800000008000000080000000800000008000000070
      0000004F0000000000000000000000000000000000000000000000000000B08F
      7F00CFCFC000BFBFB00000700000007F0000E0DFCF00F0EFDF009F3000009F30
      00009F3000009F3000009F3000009F3000009F3000009F3000009F300000F0E0
      C000F0E0C000B08F7F000000000000000000000000000000000000000000C09F
      8000FFF0EF00FFF0EF00009F0000009F0000FFF0E000FFEFDF009F3000009F30
      00009F3000009F3000009F3000009F3000009F3000009F3000009F300000F0E0
      C000F0E0C000B08F7F00000000000000000000000000B0606000D0CFCF00DFDF
      DF00DFD0D000DFD0D000DFD0D000DFD0D000DFD0D000DFDFDF00D0C0C000AF60
      6000FFFFF000FFEFE00000700F002FAF4F005FEF900050DF80004FD06F0020AF
      300020AF3F0000700F00F0D09F00B08080000000000000000000004F00001F9F
      300030CF5F001F9F30001F9F300010801F00006F0F0000600F0000600F000060
      0000005F0000005F0000005F0000005F0000005F000000600000006000000070
      0000006F0000004F000000000000000000000000000000000000000000000060
      000000600000006000000060000000700000DFD0C000EFE0D000F0EFDF00FFEF
      DF00FFEFDF00FFEFDF00FFEFD000FFEFD000FFEFD000F0E0CF00F0E0CF00F0E0
      C000F0E0C000B08F7F000000000000000000000000000000000000000000C090
      8000F0F0EF00F0EFE0000090000000900000F0EFDF00F0EFDF00F0EFDF00FFEF
      DF00FFEFDF00FFEFDF00FFEFD000FFEFD000FFEFD000F0E0CF00F0E0CF00F0E0
      C000F0E0C000B08F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BF8F
      8000FFFFFF00FFF0EF00FFEFE000006F000030AF50005FEF90005FE08F003FBF
      5F000F700F00F0D0AF00F0D0A000B080800000000000004F0000004F0000004F
      0000005F000000600000006F000000700F00008010000F8F1F00C0F0FF0000D0
      F00000D0F00000D0F0000F5F60002FBF4F0020A03F001F9F3000108F20000F70
      1000004F0000004F0000004F0000000000000000000000000000000000000060
      000010AF200010A01F0000600000AFAFA000CFC0BF00DFD0CF00E0DFD000F0EF
      DF00FFEFDF00FFEFDF00FFEFDF00FFEFD000FFEFD000FFEFD000FFE0CF00F0E0
      CF00F0E0CF00B08F7F000000000000000000000000000000000000000000B08F
      7F00DFDFD000DFDFD000DFDFD000DFD0CF00DFD0CF00DFD0CF00E0DFD000F0EF
      DF00FFEFDF00FFEFDF00FFEFDF00FFEFD000FFEFD000FFEFD000FFE0CF00F0E0
      CF00F0E0CF00B08F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CF9F
      8000FFFFFF00FFFFF000FFF0EF00FFEFE00000700F003FBF60004FD07F001080
      1F00F0DFBF00F0DFB000F0DFAF00B0808000004F0000005F0000007000000080
      0000C07F0000C07F0000C07F0000C07F00000F9F1F000FA02F0010AF3000C0F0
      FF0000D0F00000D0F00000D0F0000F5F600040F07F004FFF80004FFF80004FFF
      80004FFF800030CF5F00005F0F00004F00000000000000000000000000000060
      00001FB02F0010AF200000600000A09F9F00AFAFA000BFB0AF00CFC0BF00E0DF
      D000F0EFDF00FFF0E000FFEFDF00FFEFDF00FFEFDF00FFEFD000FFEFD000F0EF
      CF00F0E0CF00B08F7F0000000000000000000000000000000000000000009F70
      6000BFB0B000BFB0B000BFB0B000B0B0AF00B0B0AF00BFB0AF00CFC0BF00E0DF
      D000F0EFDF00FFF0E000FFEFDF00FFEFDF00FFEFDF00FFEFD000FFEFD000F0EF
      CF00F0E0CF00B08F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CF9F
      8000FFFFFF00FFFFFF00FFFFF000FFF0EF00FFEFE0000F7F100010801F00F0E0
      CF00F0DFC000F0DFBF00FFDFB000B080800000000000004F000000500000C07F
      0000E0C05F00E0C05000E0B03F00DFAF1F00C07F00000FA02F0010AF30001FBF
      4000C0F0FF0000D0F00000D0F00000D0F0000F5F600030CF5F001F9F30001F90
      2F00FF7FFF00004F0000004F0000000000000060000000600000006000000060
      000020BF3F001FB0300000600000006000000060000000600000BFBFB000DFDF
      CF00F0EFE000FFF0E000FFF0E000FFEFDF00FFEFDF00FFEFDF00FFEFD000FFEF
      D000FFEFCF00B08F7F00000000000000000000009F0000009F0000009F000000
      9F0000009F0000009F0000009F0000009F0000009F0000009F00BFBFB000DFDF
      CF00F0EFE000FFF0E000FFF0E000FFEFDF00FFEFDF00FFEFDF00FFEFD000FFEF
      D000FFEFCF00B08F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFAF
      8000FFFFFF00FFFFFF00FFFFFF00FFFFF000FFF0EF00FFEFE000FFEFDF00FFE0
      D000F0E0CF00F0E0C000F0DFB000B0808000000000000000000000000000BF8F
      5000EFDF9F00EFD08F00E0CF6000E0BF3F00C07F0000004F0000004F0000004F
      0000004F0000C0F0FF0000D0F0000F5F6000004F0000004F0000004F0000FF7F
      FF00FF7FFF00700070000000000000000000006000003FD0600030CF5F0030CF
      50002FC04F0020BF400020BF3F001FB0300010AF2F0000600000702000008F2F
      0000903000009F3000009F3000009F3000009F3000009F3000009F300000FFEF
      D000FFEFD000B08F7F00000000000000000000009F004F7FFF003F6FFF002F5F
      FF00104FFF00003FFF00002FFF000020E000001FD00000009F00702000008F2F
      0000903000009F3000009F3000009F3000009F3000009F3000009F300000FFEF
      D000FFEFD000B08F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFAF
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF000FFF0EF00FFEFE000FFEF
      DF00FFEFDF00E0DFC000C0BFAF00B0808000000000000000000000000000BF8F
      5000FFF0D000F0EFBF00EFD08F00E0C05000C07F000000000000000000000000
      0000000000000000000050E0F000000000000000000000000000FFD0FF00FF7F
      FF00FF00FF007000700070007000000000000060000040DF70003FDF6F003FD0
      600030CF5F002FC04F002FC0400020BF3F0020BF300000600000CFCFC000E0E0
      DF00F0F0E000FFF0EF00FFF0EF00FFF0E000FFF0E000FFF0E000FFEFDF00FFEF
      DF00FFEFD000B08F7F00000000000000000000009F004F7FFF004070FF003060
      FF002050FF000F40FF000030FF00002FF000001FDF0000009F00CFCFC000E0E0
      DF00F0F0E000FFF0EF00FFF0EF00FFF0E000FFF0E000FFF0E000FFEFDF00FFEF
      DF00FFEFD000B08F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0B0
      8F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF000FFF0EF00F0E0
      D000BF807F00BF807F00BF807F00B0808000000000000000000000000000BF8F
      5000FFFFFF00FFF0D000EFDF9F00E0C05F00C07F000000000000000000000000
      00000000000000000000000000000000000000000000FFD0FF00FFD0FF00FF00
      FF00FF00FF00FF00FF0070007000700070000060000000600000006000000060
      00003FD060003FD05F0000600000006000000060000000600000E0E0E000F0EF
      EF00FFF0EF00FFF0EF00FFF0EF00FFF0EF00FFF0E000FFF0E000FFF0E000FFEF
      DF00FFEFDF00B08F7F00000000000000000000009F0000009F0000009F000000
      9F0000009F0000009F0000009F0000009F0000009F0000009F00E0E0E000F0EF
      EF00FFF0EF00FFF0EF00FFF0EF00FFF0EF00FFF0E000FFF0E000FFF0E000FFEF
      DF00FFEFDF00B08F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0B0
      8F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0CF
      CF00BF807F00EFB07000EFA04F00C0806F000000000000000000000000000000
      0000BF8F5000BF8F5000BF8F5000C07F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD0FF00FFD0
      FF00FF00FF007000700070007000000000000000000000000000000000000060
      000040DF700040DF6F0000600000BFBFBF00DFDFDF00F0EFEF00FFF0F000FFFF
      F000FFFFF000FFFFF000FFF0EF00FFF0EF00FFF0EF00FFF0E000FFF0E000FFF0
      E000FFEFDF00B08F7F000000000000000000000000000000000000000000DFAF
      8F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF0F000FFFF
      F000FFFFF000FFFFF000FFF0EF00FFF0EF00FFF0EF00FFF0E000FFF0E000FFF0
      E000FFEFDF00B08F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFBF
      9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0D0
      D000BF807F00FFC07000CF907000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFD0
      FF00FF7FFF007000700000000000000000000000000000000000000000000060
      00004FE07F004FE07F0000600000B0806F00C0907000D0A07F00DFA08000DFA0
      8000DFA08000DFA08000DFA08000DFA08000DFA08000DFA08000DFA08000DFA0
      8000DFA08000DFA080000000000000000000000000000000000000000000DFA0
      8000DFA08000DFA08000DFA08000DFA08000DFA08000DFA08000DFA08000DFA0
      8000DFA08000DFA08000DFA08000DFA08000DFA08000DFA08000DFA08000DFA0
      8000DFA08000DFA0800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFBF
      9000FFF0F000FFF0F000FFF0F000FFF0F000FFF0F000FFF0F000FFF0F000E0D0
      CF00BF807F00CF9F800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF7FFF000000000000000000000000000000000000000000000000000060
      0000006000000060000000600000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFBF
      9000DFAF8000DFAF8000DFAF8000DFAF8000DFAF8000DFAF8000DFAF8000DFAF
      8000BF807F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFF000000FFFFFF1F
      FFFF00001F000000FFFFFF01FFE700001F0000008000010007C300001F000000
      00000000000300001F00000000000000000300001F0000000000000000070000
      1F00000000000000000700001F00000000000000000700001F00000000000000
      000700001F00000000000000000300001F000000000000000003000000000000
      0000000000010000000000000000000000010000000000000000000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000001F00000000000000000000001F000000000000
      80000180001F000000000000FFFFFF8003FF000000000000FFFFFFC007FF0000
      1F000000FFFFFFC00FFF00001F000000FFFFFF8FFFFFFFFFFFFF0000FF0C1F87
      FFFFFFFFFFFF0000FC0007000000FFFFFF000000F00001000000000000000000
      E000030000000000000000008000030000000000000000008000030000000000
      0000000080000300000000000000000080000300000000000000000080000300
      0000000000000000800003000000000000000000C00003000000000000000000
      E00007000000000000000000F8000F000000000000000000F8001F0000000000
      00000000FC007F000000000000000000FC00FF00000000000000003FFC01FF00
      000000000000003FFC01FF00000000000000003FFC01FF00000000000000003F
      FC01FF80000100000000007FF803FFFFFFFF8000010000FFF803FFFFFFFFFFFF
      FF0001FFF007FFFFFFFFFFFFFF0003FFE00003E00003800FFFFFC3FFE00003E0
      00030007FFFF81FFE00003E000030007FFFF81FFE00003E000030007FFFF81FF
      E00003E000030000FFFF81FFE00003E0000300003FFF81FF8000008000000004
      1FFF81FFA00002A0000200060FFF00FFA00002A00002000000FE007FA00002A0
      0002000000FC003FA00002A00002000000F8001F800000800000000000F0000F
      E00003E00003000000E00007E00003E00003800000C00003E00003E00003FFE0
      00800001E00003E00003FFE000000000E00003E00003FFE00080000100000300
      0003FFE000E00003000003000003FFE000E07DC1000003000003FFE000E07F80
      000003000003FFE000F0FFC1E00003E00003FFE001FFFFE3E00003E00003FFE0
      03FFFFF7E1FFFFFFFFFFFFE007FFFFFF00000000000000000000000000000000
      000000000000}
  end
  object FindDlgEh1: TFindDlgEh
    DBGrid = DBGridEh1
    FindFont.Charset = DEFAULT_CHARSET
    FindFont.Color = clRed
    FindFont.Height = -11
    FindFont.Name = 'MS Sans Serif'
    FindFont.Style = [fsBold]
    ShowFilterPanel = True
    SimpleSeek = True
    Left = 536
    Top = 296
  end
  object PopupMenu1: TPopupMenu
    Left = 536
    Top = 8
    object N4: TMenuItem
      Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1080#1090#1100'  '#1087#1088#1080#1093#1086#1076
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1079#1072#1075#1088#1091#1079#1082#1091
      OnClick = N5Click
    end
    object N1: TMenuItem
      Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1088#1072#1089#1093#1086#1076' '#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1091
      OnClick = N1Click
    end
  end
  object DSRaspSyr: TDataSource
    DataSet = RaspSyr
    Left = 382
    Top = 295
  end
  object RaspSyr: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    AutoCalcFields = False
    BeforeInsert = RaspSyrBeforeInsert
    BeforePost = RaspSyrBeforePost
    OnCalcFields = RaspSyrCalcFields
    OnNewRecord = RaspSyrNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT  DOCUMENT.DATE_DOK, DOCUMENT. KLIENT_ID,DOCUMENT.DOC_ID,k' +
        'art.kart_id,kart.kei_id kei_idn,DOCUMENT. TIP_DOK_ID, DOCUMENT. ' +
        'STRUK_ID, KART.KSM_ID, KART.KOL_PRIH_ediz,SPPROD.KOD_PROD,SPPROD' +
        '.NMAT,kart.stroka_id,SPPROD.XARKT,SERIA.SERIA, n1.NEIS,n2.neis n' +
        'eizn,'
      
        'OSTATKI.ostatok_begin_s oNM_S,OSTATKI.Ostatok_begin_NZ ONM_NZ, O' +
        'STATKI.Ostatok_end_s OT_S,'
      'OSTATKI.Ostatok_end_nz OT_NZ,OSTATKI.RAZDEL_ID,RAZDEL.KRAZ,'
      
        'TIP_OPER. GR_OP_ID, DOCUMENT. TIP_OP_ID,DOCUMENT.NDOK, KART. KOL' +
        '_RASH_ediz'
      'FROM KART'
      '   INNER JOIN DOCUMENT ON (KART.DOC_ID = DOCUMENT.DOC_ID)'
      
        '   INNER JOIN TIP_OPER ON (DOCUMENT.TIP_OP_ID = TIP_OPER.TIP_OP_' +
        'ID)'
      '   INNER JOIN SPPROD ON (DOCUMENT.KLIENT_ID = SPPROD.KSM_ID)'
      '   INNER JOIN EDIZ n1  ON (SPPROD.KEI_ID = n1.KEI_ID)'
      '   left JOIN EDIZ  n2 ON (kart.KEI_ID = n2.KEI_ID)'
      
        '   left JOIN SELECT_OST_KSM (:DAT1,:DAT2,0,:cex,:KSM_M) OSTATKI ' +
        'ON (KART.Ksm_ID = OSTATKI.Ksm_ID and document.klient_id=ostatki.' +
        'ksm_idpr and kart.razdel_id=ostatki.razdel_id)'
      '  INNER JOIN RAZDEL ON (OSTATKI.RAZDEL_ID = RAZDEL.RAZDEL_ID)'
      '   left JOIN SERIA ON (OSTATKI.SERIA_ID = SERIA.SERIA_ID)'
      ' WHERE %SDAT'
      '     AND  %STIP'
      '     AND  document.struk_id=:CEX  '
      '     AND  %KSM'
      'ORDER BY SPPROD.NMAT    ')
    UpdateObject = RaspSyrUpdate
    Macros = <
      item
        DataType = ftString
        Name = 'SDAT'
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
    Left = 288
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
        DataType = ftInteger
        Name = 'cex'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ksm_m'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CEX'
        ParamType = ptInput
      end>
    object RaspSyrDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object RaspSyrKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
    end
    object RaspSyrDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RaspSyrTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
      Required = True
    end
    object RaspSyrSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object RaspSyrKOD_PROD: TIBStringField
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      OnValidate = RaspSyrKOD_PRODValidate
      FixedChar = True
      Size = 18
    end
    object RaspSyrNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object RaspSyrXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"SPPROD"."XARKT"'
      Size = 30
    end
    object RaspSyrSERIA: TIBStringField
      FieldName = 'SERIA'
      Origin = '"SERIA"."SERIA"'
    end
    object RaspSyrNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object RaspSyrGR_OP_ID: TSmallintField
      FieldName = 'GR_OP_ID'
      Origin = '"TIP_OPER"."GR_OP_ID"'
    end
    object RaspSyrTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object RaspSyrRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object RaspSyrKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
      OnValidate = RaspSyrKRAZValidate
    end
    object RaspSyrSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RaspSyrKEI_IDN: TSmallintField
      FieldName = 'KEI_IDN'
      Origin = '"KART"."KEI_ID"'
    end
    object RaspSyrNEIZN: TIBStringField
      FieldName = 'NEIZN'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object RaspSyrNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object RaspSyrKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      Origin = '"KART"."KOL_PRIH_EDIZ"'
    end
    object RaspSyrKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      Origin = '"KART"."KOL_RASH_EDIZ"'
    end
    object RaspSyrONM_S: TFMTBCDField
      FieldName = 'ONM_S'
      Origin = '"OSTATKI"."ONM_S"'
      Precision = 18
      Size = 6
    end
    object RaspSyrONM_NZ: TFMTBCDField
      FieldName = 'ONM_NZ'
      Origin = '"OSTATKI"."ONM_NZ"'
      Precision = 18
      Size = 6
    end
    object RaspSyrkot_s: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kot_s'
      Calculated = True
    end
    object RaspSyrkot_nz: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kot_nz'
      Calculated = True
    end
    object RaspSyrKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
    object RaspSyrKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object RaspSyrOT_S: TFloatField
      FieldName = 'OT_S'
    end
    object RaspSyrOT_NZ: TFloatField
      FieldName = 'OT_NZ'
    end
  end
  object RaspSyrUpdate: TIBUpdateSQLW
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
      '  KEI_ID = :KEI_IDN,'
      '  KOL_PRIH_EDIZ = :KOL_PRIH_EDIZ,'
      '  KOL_RASH_EDIZ = :KOL_RASH_EDIZ,'
      '  KSM_ID = :KSM_ID,'
      '  RAZDEL_ID = :RAZDEL_ID'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    InsertSQL.Strings = (
      'insert into KART'
      
        '  (DOC_ID, KART_ID, KEI_ID, KOL_PRIH_EDIZ, KOL_RASH_EDIZ, KSM_ID' +
        ', RAZDEL_ID, '
      '   STROKA_ID)'
      'values'
      
        '  (:DOC_ID, :KART_ID, :KEI_IDN, :KOL_PRIH_EDIZ, :KOL_RASH_EDIZ, ' +
        ':KSM_ID, '
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
  object IBOtkudaPered: TIBQuery
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
      '      (KART.KSM_ID = :ksm)'
      '   and '
      
        '      (DOCUMENT.TIP_OP_ID = 34 or DOCUMENT.TIP_OP_ID = 37 or DOC' +
        'UMENT.TIP_OP_ID = 32 or DOCUMENT.TIP_OP_ID = 8 or document.tip_o' +
        'p_id=85)'
      '   and'
      '      (DOCUMENT.struk_ID = :cex)'
      '   and'
      '      (kart.parent is null)')
    Left = 728
    Top = 8
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
    object IBOtkudaPeredTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object IBOtkudaPeredKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
    end
    object IBOtkudaPeredKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object IBOtkudaPeredKEI_PREP: TSmallintField
      FieldName = 'KEI_PREP'
      Origin = '"SPPROD"."KEI_ID"'
    end
    object IBOtkudaPeredXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"SPPROD"."XARKT"'
      Size = 30
    end
    object IBOtkudaPeredNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object IBOtkudaPeredSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object IBOtkudaPeredDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object IBOtkudaPeredDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBOtkudaPeredKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object IBOtkudaPeredKART_ID: TSmallintField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
    object IBOtkudaPeredOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object IBOtkudaPeredOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object IBOtkudaPeredRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object IBOtkudaPeredKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
    object IBOtkudaPeredKEI_ID_SYR: TSmallintField
      FieldName = 'KEI_ID_SYR'
      Origin = '"NORM"."KEI_ID"'
    end
    object IBOtkudaPeredKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object IBOtkudaPeredNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object IBOtkudaPeredSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBOtkudaPeredKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      Origin = '"KART"."KOL_PRIH_EDIZ"'
    end
    object IBOtkudaPeredKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      Origin = '"KART"."KOL_RASH_EDIZ"'
    end
    object IBOtkudaPeredPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = '"KART"."PARENT"'
    end
  end
  object IBKudaPered: TIBQuery
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
      '    INNER JOIN SPPROD ON (OSTATKI.KSM_IDPR = SPPROD.KSM_ID)'
      '    inner JOIN RAZDEL ON (kart.RAZDEL_ID = RAZDEL.RAZDEL_ID)'
      '    inner JOIN EDIZ ON (kart.KEI_ID =EDIZ.KEI_ID)'
      '   left JOIN struk ON (document.Klient_ID =struk.struk_ID)'
      '  WHERE '
      ''
      '      (DOCUMENT.DATE_Op  between :dat1 and :dat2)'
      '   and '
      '      (KART.KSM_ID = :ksm)'
      '   and '
      '      (DOCUMENT.TIP_OP_ID = 34 or DOCUMENT.TIP_OP_ID = 37)'
      '   and'
      '      (DOCUMENT.struk_ID = :cex)'
      '   and'
      '     not (kart.parent is null)')
    Left = 760
    Top = 8
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
    object IBKudaPeredTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object IBKudaPeredKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
    end
    object IBKudaPeredKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object IBKudaPeredKEI_PREP: TSmallintField
      FieldName = 'KEI_PREP'
      Origin = '"SPPROD"."KEI_ID"'
    end
    object IBKudaPeredXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"SPPROD"."XARKT"'
      Size = 30
    end
    object IBKudaPeredNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object IBKudaPeredSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object IBKudaPeredDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object IBKudaPeredDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBKudaPeredKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object IBKudaPeredKART_ID: TSmallintField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
    object IBKudaPeredPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = '"KART"."PARENT"'
    end
    object IBKudaPeredOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object IBKudaPeredOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object IBKudaPeredRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object IBKudaPeredKEI_ID_SYR: TSmallintField
      FieldName = 'KEI_ID_SYR'
      Origin = '"NORM"."KEI_ID"'
    end
    object IBKudaPeredSTNAME: TIBStringField
      FieldName = 'STNAME'
      Origin = '"STRUK"."STNAME"'
      FixedChar = True
    end
    object IBKudaPeredKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"NORM"."KRAZ"'
      Required = True
    end
    object IBKudaPeredKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object IBKudaPeredNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object IBKudaPeredSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBKudaPeredKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      Origin = '"KART"."KOL_PRIH_EDIZ"'
    end
    object IBKudaPeredKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      Origin = '"KART"."KOL_RASH_EDIZ"'
    end
  end
  object Peredano: TRxMemoryData
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
    Left = 616
    Top = 8
    object Peredanokraz: TIntegerField
      FieldName = 'kraz'
    end
    object PeredanoNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object PeredanoXARKT: TStringField
      FieldName = 'XARKT'
      Size = 30
    end
    object PeredanoKOD_PROD: TStringField
      FieldName = 'KOD_PROD'
      Size = 18
    end
    object Peredanokol_rash: TFloatField
      FieldName = 'kol_rash_ediz'
    end
    object Peredanoneis: TStringField
      FieldName = 'neis'
    end
    object PeredanoTip_op_id: TIntegerField
      FieldName = 'Tip_op_id'
    end
    object Peredanostroka_id: TIntegerField
      FieldName = 'stroka_id'
    end
    object Peredanoklient_id: TIntegerField
      FieldName = 'klient_id'
    end
    object Peredanokraz1: TIntegerField
      FieldName = 'kraz1'
    end
    object Peredanokod1: TStringField
      FieldName = 'kod1'
    end
    object Peredanonaz1: TStringField
      FieldName = 'naz1'
    end
    object PeredanoOt_s: TFloatField
      FieldName = 'Ot_s'
    end
    object PeredanoOt_nz: TFloatField
      FieldName = 'Ot_nz'
    end
    object PeredanoOt_s1: TFloatField
      FieldName = 'Ot_s1'
    end
    object PeredanoOt_nz1: TFloatField
      FieldName = 'Ot_nz1'
    end
  end
  object DSPeredano: TDataSource
    DataSet = Peredano
    Left = 688
  end
  object FindDlgEh2: TFindDlgEh
    DBGrid = DBGridEh2
    FindFont.Charset = DEFAULT_CHARSET
    FindFont.Color = clRed
    FindFont.Height = -11
    FindFont.Name = 'MS Sans Serif'
    FindFont.Style = [fsBold]
    ShowFilterPanel = True
    SimpleSeek = True
    Left = 504
    Top = 296
  end
  object FindDlgEh3: TFindDlgEh
    DBGrid = DBGridEh3
    FindFont.Charset = DEFAULT_CHARSET
    FindFont.Color = clRed
    FindFont.Height = -11
    FindFont.Name = 'MS Sans Serif'
    FindFont.Style = [fsBold]
    ShowFilterPanel = True
    SimpleSeek = True
    Left = 568
    Top = 296
  end
end
