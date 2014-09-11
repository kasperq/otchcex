object FDokument: TFDokument
  Left = 253
  Top = 180
  HelpContext = 9
  Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 676
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 33
    Width = 756
    Height = 611
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu2
      object Splitter1: TSplitter
        Left = 0
        Top = 431
        Width = 748
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitLeft = 1
        ExplicitTop = 139
        ExplicitWidth = 746
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 748
        Height = 310
        Align = alTop
        TabOrder = 0
        object LTitle: TLabel
          Left = 5
          Top = 3
          Width = 40
          Height = 16
          Margins.Bottom = 0
          Alignment = taCenter
          Caption = 'LTitle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelNDOK: TLabel
          Left = 8
          Top = 48
          Width = 91
          Height = 13
          Margins.Bottom = 0
          Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelDATE_DOK: TLabel
          Left = 8
          Top = 72
          Width = 83
          Height = 13
          Margins.Bottom = 0
          Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelKLIENT_ID: TLabel
          Left = 8
          Top = 144
          Width = 58
          Height = 13
          Margins.Bottom = 0
          Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelDATE_OP: TLabel
          Left = 8
          Top = 96
          Width = 77
          Height = 13
          Margins.Bottom = 0
          Caption = #1044#1072#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelDOK_OSN_ID: TLabel
          Left = 8
          Top = 116
          Width = 108
          Height = 13
          Margins.Bottom = 0
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1086#1089#1085#1086#1074#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelKPV: TLabel
          Left = 8
          Top = 192
          Width = 24
          Height = 13
          Margins.Bottom = 0
          Caption = #1050#1091#1088#1089
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelVP_ID: TLabel
          Left = 8
          Top = 168
          Width = 38
          Height = 13
          Margins.Bottom = 0
          Caption = #1042#1072#1083#1102#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelNDS: TLabel
          Left = 8
          Top = 212
          Width = 63
          Height = 13
          Margins.Bottom = 0
          Caption = #1057#1090#1072#1074#1082#1072' '#1053#1044#1057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Bevel2: TBevel
          Left = 1
          Top = 14
          Width = 785
          Height = 10
          Shape = bsBottomLine
        end
        object LabelSTRUK_ID: TLabel
          Left = 8
          Top = 231
          Width = 31
          Height = 13
          Margins.Bottom = 0
          Caption = #1057#1082#1083#1072#1076
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelSUM_ISP1_VP: TLabel
          Left = 8
          Top = 249
          Width = 56
          Height = 13
          Margins.Bottom = 0
          Caption = #1048#1089#1087#1086#1083#1085#1077#1085#1086
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelSUM_VP: TLabel
          Left = 8
          Top = 268
          Width = 34
          Height = 13
          Margins.Bottom = 0
          Caption = #1057#1091#1084#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelSUM_BRB: TLabel
          Left = 8
          Top = 288
          Width = 34
          Height = 13
          Margins.Bottom = 0
          Caption = #1057#1091#1084#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EditNDOK: TDBEditEh
          Left = 152
          Top = 40
          Width = 121
          Height = 19
          Alignment = taLeftJustify
          Ctl3D = False
          DataField = 'NDOK'
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 0
          Visible = True
          OnKeyDown = EditNDOKKeyDown
          OnUpdateData = EditNDOKUpdateData
        end
        object EditKLIENT_ID: TDBEditEh
          Left = 152
          Top = 135
          Width = 57
          Height = 19
          Alignment = taLeftJustify
          Ctl3D = False
          DataField = 'KLIENT_ID'
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 4
          Visible = True
          OnKeyDown = EditNDOKKeyDown
        end
        object EditKPV: TDBEditEh
          Left = 152
          Top = 185
          Width = 121
          Height = 19
          Alignment = taLeftJustify
          Ctl3D = False
          DataField = 'KPV'
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 8
          Visible = True
          OnKeyDown = EditNDOKKeyDown
        end
        object EditVP_ID: TDBEditEh
          Left = 152
          Top = 160
          Width = 57
          Height = 19
          Alignment = taLeftJustify
          Ctl3D = False
          DataField = 'VP_ID'
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 6
          Visible = True
          OnKeyDown = EditNDOKKeyDown
        end
        object EditNDS: TDBEditEh
          Left = 152
          Top = 204
          Width = 121
          Height = 19
          Alignment = taLeftJustify
          Ctl3D = False
          DataField = 'NDS'
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 9
          Visible = True
          OnKeyDown = EditNDOKKeyDown
        end
        object EditDATE_DOK: TDBDateEdit
          Left = 152
          Top = 63
          Width = 121
          Height = 19
          DataField = 'DATE_DOK'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnKeyDown = EditNDOKKeyDown
        end
        object EditDATE_OP: TDBDateEdit
          Left = 152
          Top = 88
          Width = 121
          Height = 19
          DataField = 'DATE_OP'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnChange = EditDATE_OPChange
          OnKeyDown = EditNDOKKeyDown
        end
        object EditDOK_OSN_ID_LOOKUP: TRxDBComboEdit
          Left = 211
          Top = 113
          Width = 137
          Height = 19
          Ctl3D = False
          DataField = 'DOK_OSN_ID_LOOKUP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          OnButtonClick = EditDOK_OSN_ID_LOOKUPButtonClick
          OnKeyDown = EditNDOKKeyDown
        end
        object EditKLIENT_ID_LOOKUP: TRxDBComboEdit
          Left = 212
          Top = 135
          Width = 265
          Height = 19
          Ctl3D = False
          DataField = 'KLIENT_ID_LOOKUP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          OnButtonClick = EditKLIENT_ID_LOOKUPButtonClick
          OnKeyDown = EditNDOKKeyDown
        end
        object EditVP_ID_LOOKUP: TRxDBComboEdit
          Left = 211
          Top = 160
          Width = 266
          Height = 19
          Ctl3D = False
          DataField = 'VP_ID_LOOKUP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          OnButtonClick = EditVP_ID_LOOKUPButtonClick
          OnKeyDown = EditNDOKKeyDown
        end
        object EditSTRUK_ID: TDBEditEh
          Left = 152
          Top = 226
          Width = 57
          Height = 19
          Alignment = taLeftJustify
          Ctl3D = False
          DataField = 'STRUK_ID'
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 10
          Visible = True
          OnKeyDown = EditNDOKKeyDown
        end
        object EditSTRUK_ID_LOOKUP: TRxDBComboEdit
          Left = 212
          Top = 226
          Width = 265
          Height = 19
          Ctl3D = False
          DataField = 'STRUK_ID_LOOKUP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          OnButtonClick = EditSTRUK_ID_LOOKUPButtonClick
          OnKeyDown = EditNDOKKeyDown
        end
        object EditDOK_OSN_ID: TDBEditEh
          Left = 152
          Top = 113
          Width = 57
          Height = 19
          Alignment = taLeftJustify
          Ctl3D = False
          DataField = 'KLIENT_ID'
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 12
          Visible = True
          OnKeyDown = EditNDOKKeyDown
        end
        object EditSUM_ISP1_VP: TDBEditEh
          Left = 152
          Top = 246
          Width = 119
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          DataField = 'SUM_ISP1_VP'
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 13
          Visible = True
          OnKeyDown = EditNDOKKeyDown
          EditMask = ''
        end
        object EditSUM_VP: TDBEditEh
          Left = 152
          Top = 266
          Width = 119
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          DataField = 'SUM_VP'
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 14
          Visible = True
          OnKeyDown = EditNDOKKeyDown
          EditMask = ''
        end
        object EditSUM_BRB: TDBEditEh
          Left = 152
          Top = 286
          Width = 119
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          DataField = 'SUM_BRB'
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 15
          Visible = True
          OnKeyDown = EditNDOKKeyDown
          EditMask = ''
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 310
        Width = 748
        Height = 121
        Align = alClient
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 1
          Top = 1
          Width = 746
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitWidth = 98
        end
        object PageControl2: TPageControl
          Left = 1
          Top = 4
          Width = 746
          Height = 116
          ActivePage = Kart
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Kart: TTabSheet
            Caption = 'Kart'
            object DBGridEh2: TDBGridEh
              Left = 0
              Top = 0
              Width = 738
              Height = 88
              Align = alClient
              AllowedOperations = [alopUpdateEh]
              AutoFitColWidths = True
              DataSource = DM.DS_Kart
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              FooterColor = clBtnFace
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clActiveCaption
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = [fsBold]
              FooterRowCount = 1
              OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghEnterAsTab, dghRowHighlight]
              ParentFont = False
              ParentShowHint = False
              PopupMenu = PopupMenu2
              ShowHint = False
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnSortMarkingChanged = DBGridEh2SortMarkingChanged
              Columns = <
                item
                  AutoFitColWidth = False
                  EditButtons = <>
                  FieldName = 'ACCOUNT'
                  Footers = <>
                  Title.Caption = #1057#1095#1077#1090
                  Title.TitleButton = True
                end
                item
                  AutoFitColWidth = False
                  EditButtons = <>
                  FieldName = 'KOD_PROD'
                  Footers = <>
                  Title.Caption = #1050#1086#1076' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
                  Title.TitleButton = True
                  Width = 102
                end
                item
                  EditButtons = <>
                  FieldName = 'SPKSM'
                  Footers = <>
                  Title.Caption = #1057#1090#1072#1088#1099#1081' '#1082#1086#1076
                end
                item
                  AutoFitColWidth = False
                  EditButtons = <
                    item
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh2Columns2EditButtons0Click
                    end>
                  FieldName = 'KSM_ID'
                  Footers = <>
                  Title.Caption = #1050#1086#1076
                  Title.TitleButton = True
                  Width = 53
                end
                item
                  EditButtons = <
                    item
                      Glyph.Data = {
                        36030000424D3603000000000000360000002800000010000000100000000100
                        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFA94300A94300A94300FF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA9
                        4300A94300A94300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                        00FF942E00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FF942E00C25C00942E00FF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF94
                        2E00CC6700C66100942E00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF942E00D16C00CA6500942E00FF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                        00FFFF00FF942E00D77100CF6900A03A00FF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FF9D3400942E00942E00FF00FFFF00FFFF00FF942E00DC7600942E
                        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9D3400FF9A00FF9A0094
                        2E00FF00FF942E00EF8A00E88300942E00FF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FF942E00FF9A00FF9A00FF9A00FE9900F99400942E00FF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB6500094
                        2E00942E00942E00B04A00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh2Columns1EditButtons0Click
                    end>
                  FieldName = 'NMAT'
                  Footers = <
                    item
                      Value = #1048#1090#1086#1075#1086
                      ValueType = fvtStaticText
                    end>
                  ReadOnly = True
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Title.TitleButton = True
                  Width = 170
                end
                item
                  AlwaysShowEditButton = True
                  AutoFitColWidth = False
                  EditButtons = <>
                  FieldName = 'NEIS'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = #1045#1076'. '#1080#1079#1084'.'
                  Width = 38
                end
                item
                  EditButtons = <
                    item
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh2Columns5EditButtons0Click
                    end>
                  FieldName = 'SERIA'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = #1057#1077#1088#1080#1103
                  Title.TitleButton = True
                  Width = 75
                end
                item
                  EditButtons = <
                    item
                      OnClick = DBGridEh2Columns7EditButtons0Click
                    end>
                  FieldName = 'NAME_UPAK'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = #1042#1080#1076' '#1091#1087#1072#1082'.'
                  Width = 52
                end
                item
                  EditButtons = <
                    item
                      OnClick = DBGridEh2Columns8EditButtons0Click
                    end>
                  FieldName = 'VID_UPAK_NAM'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = #1042#1080#1076' '#1091#1087#1072#1082#1086#1074#1082#1080
                  Width = 59
                end
                item
                  EditButtons = <>
                  FieldName = 'KOL_PRIH'
                  Footers = <>
                  Title.Caption = #1050#1086#1083'-'#1074#1086
                  Width = 45
                end
                item
                  EditButtons = <>
                  FieldName = 'KOL_RASH'
                  Footers = <>
                  Title.Caption = #1050#1086#1083'-'#1074#1086
                  Width = 45
                  OnUpdateData = DBGridEh2Columns8UpdateData
                end
                item
                  EditButtons = <>
                  FieldName = 'CENA_PRICE'
                  Footers = <>
                  Title.Caption = #1062#1077#1085#1072' '#1087#1088#1077#1081#1089#1082#1091#1088#1072#1085#1090
                end
                item
                  EditButtons = <>
                  FieldName = 'SKID_CEN'
                  Footers = <>
                  Title.Caption = #1057#1082#1080#1076#1082#1072' '#1094#1077#1085'.'
                end
                item
                  EditButtons = <>
                  FieldName = 'CENA_VP'
                  Footers = <>
                  Title.Caption = #1062#1077#1085#1072' '#1074#1072#1083
                  Width = 49
                end
                item
                  EditButtons = <>
                  FieldName = 'CENA'
                  Footers = <>
                  Title.Caption = #1062#1077#1085#1072
                  Width = 48
                end
                item
                  DisplayFormat = '#.,00'
                  EditButtons = <>
                  FieldName = 'SUMMA_VP'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUMMA_VP'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083
                  Width = 53
                end
                item
                  DisplayFormat = '#.,'
                  EditButtons = <>
                  FieldName = 'SUMMA'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUMMA'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072
                  Width = 49
                end
                item
                  AutoFitColWidth = False
                  EditButtons = <>
                  FieldName = 'SKIDKA'
                  Footers = <>
                  Title.Caption = #1057#1082#1080#1076#1082#1072
                  Width = 37
                end
                item
                  EditButtons = <>
                  FieldName = 'SUM_SKID'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUM_SKID'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1089#1082#1080#1076#1082#1080
                  Width = 53
                end
                item
                  EditButtons = <>
                  FieldName = 'SUM_SKID_VP'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUM_SKID_VP'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1089#1082#1080#1076'. '#1074#1072#1083
                  Width = 58
                end
                item
                  AutoFitColWidth = False
                  EditButtons = <>
                  FieldName = 'NDS'
                  Footers = <>
                  Title.Caption = #1053#1044#1057
                  Width = 28
                end
                item
                  DisplayFormat = '#.,00'
                  EditButtons = <>
                  FieldName = 'SUM_NDS_VP'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUM_NDS_VP'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057' '#1074' '#1074#1072#1083
                  Width = 54
                end
                item
                  DisplayFormat = '#.,'
                  EditButtons = <>
                  FieldName = 'SUM_NDS'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUM_NDS'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
                  Width = 58
                end
                item
                  DisplayFormat = '#.,00'
                  EditButtons = <>
                  FieldName = 'SUMMA_S_NDS_VP'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUMMA_S_NDS_VP'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1074#1089#1077#1075#1086' '#1074' '#1074#1072#1083
                end
                item
                  DisplayFormat = '#.,'
                  EditButtons = <>
                  FieldName = 'SUMMA_S_NDS'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUMMA_S_NDS'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1074#1089#1077#1075#1086' '
                  Width = 57
                end
                item
                  EditButtons = <>
                  FieldName = 'KEI_ID2'
                  Footers = <>
                  Title.Caption = #1044#1086#1087'.'#1082#1086#1076' '#1077#1076'.'#1080#1079'.'
                end
                item
                  EditButtons = <
                    item
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh2Columns22EditButtons0Click
                    end>
                  FieldName = 'NEIS2'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = #1044#1086#1087'.'#1077#1076'.'#1080#1079#1084
                end
                item
                  EditButtons = <>
                  FieldName = 'KOL_PRIH_EDIZ'
                  Footers = <>
                  Title.Caption = #1044#1086#1087'.'#1082#1086#1083'-'#1074#1086
                end
                item
                  EditButtons = <>
                  FieldName = 'KOL_RASH_EDIZ'
                  Footers = <>
                  Title.Caption = #1044#1086#1087'.'#1082#1086#1083'-'#1074#1086
                  OnUpdateData = DBGridEh2Columns24UpdateData
                end
                item
                  ButtonStyle = cbsNone
                  EditButtons = <
                    item
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh2Columns21EditButtons0Click
                    end>
                  FieldName = 'TAG'
                  Footers = <>
                  Title.Caption = '  '
                end
                item
                  EditButtons = <>
                  FieldName = 'TAG1'
                  Footers = <>
                  Title.Caption = #1087#1086
                end
                item
                  EditButtons = <
                    item
                      OnClick = DBGridEh2Columns23EditButtons0Click
                    end>
                  FieldName = 'NAMREGPR'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = #1057#1090#1088#1072#1085#1072' '#1087#1088#1086#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
                end
                item
                  EditButtons = <
                    item
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh2Columns24EditButtons0Click
                    end>
                  FieldName = 'INV'
                  Footers = <
                    item
                    end>
                  Title.Caption = #1048#1085#1074'.'
                end
                item
                  EditButtons = <>
                  FieldName = 'TOV_SKIDKA'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'TNVED'
                  Footers = <>
                  Title.Caption = #1058#1053#1042#1045#1044
                end
                item
                  EditButtons = <
                    item
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh2Columns35EditButtons0Click
                    end>
                  FieldName = 'NAKL'
                  Footers = <>
                  Title.Caption = #1055#1088#1080#1093'.'#1085#1072#1082#1083
                end>
            end
          end
          object KartV: TTabSheet
            Caption = 'KartV'
            ImageIndex = 1
            object DBGridEh4: TDBGridEh
              Left = 0
              Top = 0
              Width = 738
              Height = 88
              Align = alClient
              AllowedOperations = [alopUpdateEh]
              AutoFitColWidths = True
              DataSource = DM.DS_KartV
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              FooterColor = clBtnFace
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clActiveCaption
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = [fsBold]
              FooterRowCount = 1
              OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghEnterAsTab, dghRowHighlight]
              ParentFont = False
              ParentShowHint = False
              PopupMenu = PopupMenu2
              ShowHint = False
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnSortMarkingChanged = DBGridEh4SortMarkingChanged
              Columns = <
                item
                  AutoFitColWidth = False
                  EditButtons = <>
                  FieldName = 'ACCOUNT'
                  Footers = <
                    item
                      ValueType = fvtCount
                    end>
                  Title.Caption = #1057#1095#1077#1090
                  Width = 33
                end
                item
                  AutoFitColWidth = False
                  EditButtons = <>
                  FieldName = 'KOD_PROD'
                  Footers = <>
                  Title.Caption = #1050#1086#1076' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
                  Width = 102
                end
                item
                  AutoFitColWidth = False
                  EditButtons = <
                    item
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh4Columns2EditButtons0Click
                    end>
                  FieldName = 'KSM_ID'
                  Footers = <
                    item
                      FieldName = 'KSM_ID'
                      ValueType = fvtCount
                    end>
                  Title.Caption = #1050#1086#1076
                  Width = 51
                end
                item
                  EditButtons = <>
                  FieldName = 'TNVED'
                  Footers = <>
                  Title.Caption = #1058#1053#1042#1069#1044
                end
                item
                  EditButtons = <
                    item
                      Glyph.Data = {
                        36030000424D3603000000000000360000002800000010000000100000000100
                        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFA94300A94300A94300FF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA9
                        4300A94300A94300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                        00FF942E00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FF942E00C25C00942E00FF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF94
                        2E00CC6700C66100942E00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF942E00D16C00CA6500942E00FF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                        00FFFF00FF942E00D77100CF6900A03A00FF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FF9D3400942E00942E00FF00FFFF00FFFF00FF942E00DC7600942E
                        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9D3400FF9A00FF9A0094
                        2E00FF00FF942E00EF8A00E88300942E00FF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FF942E00FF9A00FF9A00FF9A00FE9900F99400942E00FF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB6500094
                        2E00942E00942E00B04A00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh4Columns3EditButtons0Click
                    end>
                  FieldName = 'NMAT'
                  Footers = <
                    item
                      Value = #1048#1090#1086#1075#1086
                      ValueType = fvtStaticText
                    end>
                  ReadOnly = True
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Title.TitleButton = True
                  Width = 183
                end
                item
                  AlwaysShowEditButton = True
                  AutoFitColWidth = False
                  EditButtons = <>
                  FieldName = 'NEIS'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = #1045#1076'. '#1080#1079#1084'.'
                  Width = 40
                end
                item
                  EditButtons = <>
                  FieldName = 'KOL_RASH'
                  Footers = <>
                  Title.Caption = #1050#1086#1083'-'#1074#1086
                  Width = 52
                end
                item
                  EditButtons = <>
                  FieldName = 'KOL_PRIH'
                  Footers = <>
                  Title.Caption = #1050#1086#1083'-'#1074#1086
                  Width = 63
                end
                item
                  EditButtons = <>
                  FieldName = 'CENA_PRICE'
                  Footers = <>
                  Title.Caption = #1062#1077#1085#1072' '#1087#1088#1077#1081#1089#1082#1091#1088#1072#1085#1090
                end
                item
                  EditButtons = <>
                  FieldName = 'SKID_CEN'
                  Footers = <>
                  Title.Caption = #1057#1082#1080#1076#1082#1072' '#1094#1077#1085'.'
                end
                item
                  EditButtons = <>
                  FieldName = 'CENA'
                  Footers = <>
                  Title.Caption = #1062#1077#1085#1072
                end
                item
                  EditButtons = <
                    item
                    end>
                  FieldName = 'CENA_VP'
                  Footers = <>
                  Title.Caption = #1062#1077#1085#1072' '#1074' '#1074#1072#1083'.'
                  Width = 61
                end
                item
                  EditButtons = <>
                  FieldName = 'SUMMA'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUMMA'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072
                  Width = 62
                end
                item
                  EditButtons = <>
                  FieldName = 'SUMMA_VP'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUMMA_VP'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083
                  Width = 70
                  OnUpdateData = DBGridEh4Columns13UpdateData
                end
                item
                  AutoFitColWidth = False
                  EditButtons = <>
                  FieldName = 'SKIDKA'
                  Footers = <>
                  Title.Caption = #1057#1082#1080#1076#1082#1072
                  Width = 38
                end
                item
                  EditButtons = <>
                  FieldName = 'SUM_SKID'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUM_SKID'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1089#1082#1080#1076#1082#1080
                end
                item
                  EditButtons = <>
                  FieldName = 'SUM_SKID_VP'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUM_SKID_VP'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1089#1082#1080#1076'. '#1074#1072#1083
                end
                item
                  AutoFitColWidth = False
                  EditButtons = <>
                  FieldName = 'NDS'
                  Footers = <>
                  Title.Caption = #1053#1044#1057
                  Width = 40
                end
                item
                  EditButtons = <>
                  FieldName = 'SUM_NDS'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUM_NDS'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'SUM_NDS_VP'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUM_NDS_VP'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057' '#1074' '#1074#1072#1083
                  Width = 59
                end
                item
                  EditButtons = <>
                  FieldName = 'SUMMA_S_NDS'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUMMA_S_NDS'
                      ValueType = fvtSum
                    end>
                  ReadOnly = True
                  Title.Caption = #1057#1091#1084#1084#1072' '#1089' '#1053#1044#1057
                end
                item
                  EditButtons = <>
                  FieldName = 'SUMMA_S_NDS_VP'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUMMA_S_NDS_VP'
                      ValueType = fvtSum
                    end>
                  ReadOnly = True
                  Title.Caption = #1057#1091#1084#1084#1072' '#1074#1089#1077#1075#1086' '#1074' '#1074#1072#1083
                end
                item
                  EditButtons = <
                    item
                      Style = ebsEllipsisEh
                    end>
                  FieldName = 'TAG'
                  Footers = <>
                  Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
                end
                item
                  EditButtons = <>
                  FieldName = 'BRUTTO'
                  Footers = <>
                  Title.Caption = #1041#1056#1059#1058#1058#1054' ('#1082#1075')'
                end
                item
                  EditButtons = <>
                  FieldName = 'NETTO'
                  Footers = <>
                  Title.Caption = #1053#1045#1058#1058#1054
                end
                item
                  EditButtons = <
                    item
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh4Columns22EditButtons0Click
                    end>
                  FieldName = 'SERIA'
                  Footers = <>
                  Title.Caption = #1057#1077#1088#1080#1103
                end
                item
                  EditButtons = <>
                  FieldName = 'VIDTAR'
                  Footers = <>
                  Title.Caption = #1042#1080#1076' '#1090#1072#1088#1099
                end
                item
                  EditButtons = <>
                  FieldName = 'KODGR'
                  Footers = <>
                  Title.Caption = #1050#1086#1076' '#1075#1088'. '#1054#1054#1053
                end
                item
                  EditButtons = <>
                  FieldName = 'SLEDDOK'
                  Footers = <>
                  Title.Caption = #1057#1083#1077#1076'.'#1076#1086#1082'-'#1090#1099
                end
                item
                  EditButtons = <>
                  FieldName = 'STAT'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'STAT'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1090#1072#1090'.'#1089#1090#1086#1080#1084#1086#1089#1090#1100
                end
                item
                  EditButtons = <
                    item
                      OnClick = DBGridEh4Columns26EditButtons0Click
                    end>
                  FieldName = 'NAMREGPR'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = #1057#1090#1088#1072#1085#1072' '#1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
                end
                item
                  EditButtons = <>
                  FieldName = 'PRIM'
                  Footers = <>
                  Title.Caption = #1047#1072#1074'.'#1085#1086#1084#1077#1088
                end
                item
                  EditButtons = <
                    item
                      OnClick = DBGridEh4Columns30EditButtons0Click
                    end>
                  FieldName = 'INV'
                  Footers = <>
                  Title.Caption = #1048#1085#1074'.'
                end>
            end
          end
          object Uslugi: TTabSheet
            Caption = 'Uslugi'
            ImageIndex = 2
            object DBGridEh5: TDBGridEh
              Left = 0
              Top = 0
              Width = 738
              Height = 88
              Align = alClient
              AllowedOperations = [alopUpdateEh]
              AutoFitColWidths = True
              DataSource = DM.DSUslugi
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              FooterColor = cl3DLight
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clActiveCaption
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = [fsBold]
              FooterRowCount = 1
              FrozenCols = 1
              OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghRowHighlight, dghDialogFind]
              ParentFont = False
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              TitleHeight = 25
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NAME_USLUGI'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '
                  Width = 172
                end
                item
                  EditButtons = <>
                  FieldName = 'NEIS'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1045#1076'.'#1080#1079#1084'.'
                end
                item
                  EditButtons = <>
                  FieldName = 'KOL_USLUGI'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  Width = 57
                end
                item
                  EditButtons = <>
                  FieldName = 'CENA_USLUGI'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1062#1077#1085#1072
                  Width = 73
                end
                item
                  DisplayFormat = '#.,00'
                  EditButtons = <>
                  FieldName = 'SUMMA_USLUGI'
                  Footers = <
                    item
                      DisplayFormat = '#,.00'
                      FieldName = 'SUMMA_USLUGI'
                      ValueType = fvtSum
                    end>
                  Title.Alignment = taCenter
                  Title.Caption = #1057#1091#1084#1084#1072
                  Width = 67
                end
                item
                  DisplayFormat = '#.,'
                  EditButtons = <>
                  FieldName = 'SUMMA'
                  Footers = <
                    item
                      DisplayFormat = '#.,'
                      FieldName = 'SUMMA'
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1073#1077#1083'.'#1088#1091#1073
                end
                item
                  EditButtons = <>
                  FieldName = 'AKCIZ'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1040#1082#1094#1080#1079
                  Width = 71
                end
                item
                  EditButtons = <>
                  FieldName = 'STAVKA_NDS'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1057#1090#1072#1074#1082#1072' '#1053#1044#1057
                  Width = 55
                end
                item
                  DisplayFormat = '#.,00'
                  EditButtons = <>
                  FieldName = 'SUMMA_NDS'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUMMA_NDS'
                      ValueType = fvtSum
                    end>
                  Title.Alignment = taCenter
                  Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
                  Width = 70
                end
                item
                  DisplayFormat = '#.,00'
                  EditButtons = <>
                  FieldName = 'SUMMA_VCEGO'
                  Footers = <
                    item
                      DisplayFormat = '#.,00'
                      FieldName = 'SUMMA_VCEGO'
                      ValueType = fvtSum
                    end>
                  Title.Alignment = taCenter
                  Title.Caption = #1057#1091#1084#1084#1072' '#1074#1089#1077#1075#1086
                  Width = 73
                end
                item
                  EditButtons = <
                    item
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh5Columns7EditButtons0Click
                    end>
                  FieldName = 'NAMZAT'
                  Footers = <>
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1090#1072#1090#1100#1080' '#1079#1072#1090#1088#1072#1090
                  Width = 200
                end
                item
                  EditButtons = <>
                  FieldName = 'ACCOUNT'
                  Footers = <>
                  Title.Caption = #1057#1095#1077#1090' '#1079#1072#1090#1088#1072#1090
                  Width = 40
                end
                item
                  EditButtons = <
                    item
                      ShortCut = 116
                      Style = ebsEllipsisEh
                      OnClick = DBGridEh5Columns11EditButtons0Click
                    end>
                  FieldName = 'NAMESUB'
                  Footers = <>
                  Title.Caption = #1057#1091#1073#1082#1086#1085#1090#1086
                end>
            end
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 489
        Width = 748
        Height = 32
        Align = alBottom
        TabOrder = 2
        Visible = False
        object Label1: TLabel
          Left = 8
          Top = 10
          Width = 68
          Height = 13
          Margins.Bottom = 0
          Caption = #1054#1089#1085#1086#1074'. '#1073#1088#1072#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 302
          Top = 9
          Width = 152
          Height = 13
          Margins.Bottom = 0
          Caption = #1054#1088#1075#1072#1085#1080#1079'., '#1087#1088#1086#1074#1086#1076'. '#1101#1082#1089#1087#1077#1088#1090#1080#1079#1091
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RxDBComboEdit1: TRxDBComboEdit
          Left = 536
          Top = 7
          Width = 233
          Height = 19
          Ctl3D = False
          DataField = 'NAM'
          DataSource = DM.DS_Kart
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 2
          OnButtonClick = RxDBComboEdit1ButtonClick
          OnKeyDown = EditNDOKKeyDown
        end
        object DBEditEh19: TDBEditEh
          Left = 472
          Top = 7
          Width = 57
          Height = 19
          Alignment = taLeftJustify
          Ctl3D = False
          DataField = 'ORG_ID_BRAK'
          DataSource = DM.DS_Kart
          EditButtons = <>
          ParentCtl3D = False
          ShowHint = True
          TabOrder = 1
          Visible = True
          OnKeyDown = EditNDOKKeyDown
        end
        object RxDBComboEdit7: TRxDBComboEdit
          Left = 80
          Top = 7
          Width = 217
          Height = 19
          Ctl3D = False
          DataField = 'NAME_OSNOV_BRAK'
          DataSource = DM.DS_Kart
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          OnButtonClick = RxDBComboEdit3ButtonClick
          OnKeyDown = EditNDOKKeyDown
        end
      end
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 521
        Width = 748
        Height = 21
        Align = alBottom
        AllowDelete = False
        AllowInsert = False
        DataSource = DM.DS_Doc_Param
        PanelBorder = gbNone
        PanelHeight = 21
        PanelWidth = 732
        TabOrder = 3
        RowCount = 1
        object LabelPARAM_NAME: TDBEdit
          Left = 8
          Top = 2
          Width = 144
          Height = 18
          BevelInner = bvLowered
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3D = False
          DataField = 'PARAM_NAME'
          DataSource = DM.DS_Doc_Param
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object EditPARAM_VALUE: TDBEditEh
          Left = 152
          Top = 2
          Width = 577
          Height = 19
          Alignment = taLeftJustify
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = False
          DataField = 'PARAM_VALUE'
          DataSource = DM.DS_Doc_Param
          EditButtons = <
            item
              ShortCut = 0
              Style = ebsEllipsisEh
              OnClick = EditPARAM_VALUEEditButtons0Click
            end>
          ParentCtl3D = False
          ShowHint = True
          TabOrder = 1
          Visible = True
          OnKeyDown = EditPARAM_VALUEKeyDown
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 542
        Width = 748
        Height = 38
        Align = alBottom
        AllowedOperations = [alopUpdateEh]
        DataSource = DM.DS_Doc_ParamN
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clHighlight
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clDefault
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'PARAM_NAME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <
              item
                Color = clBtnFace
                Value = #1048#1090#1086#1075#1086
                ValueType = fvtStaticText
              end>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 138
          end
          item
            AutoFitColWidth = False
            EditButtons = <
              item
                Style = ebsEllipsisEh
              end>
            FieldName = 'PARAM_VALUE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = ' '
            Width = 43
          end
          item
            EditButtons = <
              item
                Style = ebsEllipsisEh
              end>
            FieldName = 'NEIS'
            Footers = <>
            Title.Caption = #1045#1076'.'#1080#1079#1084
          end
          item
            EditButtons = <>
            FieldName = 'KOL_PARAM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'CENA_PARAM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1072
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'Summa'
            Footers = <
              item
                FieldName = 'Summa'
                ValueType = fvtSum
              end>
            Title.Alignment = taCenter
            Title.Caption = #1057#1091#1084#1084#1072
            Width = 96
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'STAVKA_NDS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1044#1057
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'SummaNDS'
            Footers = <
              item
                FieldName = 'SummaNDS'
                ValueType = fvtSum
              end>
            Title.Alignment = taCenter
            Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'SummaVsego'
            Footers = <
              item
                FieldName = 'SummaVsego'
                ValueType = fvtSum
              end>
            Title.Caption = #1057#1091#1084#1084#1072' '#1089' '#1053#1044#1057
            Width = 109
          end>
      end
      object Panel7: TPanel
        Left = 0
        Top = 434
        Width = 748
        Height = 55
        Align = alBottom
        TabOrder = 5
        object DBGridEh6: TDBGridEh
          Left = 1
          Top = 23
          Width = 746
          Height = 31
          Align = alClient
          AutoFitColWidths = True
          DataSource = DM.DS_Doc_Tam_Pl
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = cl3DLight
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clHighlight
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = [fsBold]
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
          ParentFont = False
          PopupMenu = PopupMenu3
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clHighlight
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DOC_TAM_OP_KOD'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1050#1086#1076
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clDefault
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <
                item
                  OnClick = DBGridEh6Columns1EditButtons0Click
                end>
              FieldName = 'DOC_TAM_OP_NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clDefault
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 142
            end
            item
              EditButtons = <
                item
                  OnClick = DBGridEh6Columns2EditButtons0Click
                end>
              FieldName = 'NDOK'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1053#1086#1084#1077#1088' '#1087'/'#1087
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clDefault
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'DATE_DOK'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072' '#1087'/'#1087
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clDefault
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'VAL_KOD'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1050#1086#1076' '#1074#1072#1083
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clDefault
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 46
            end
            item
              EditButtons = <
                item
                  OnClick = DBGridEh6Columns5EditButtons0Click
                end>
              FieldName = 'KNAM'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1042#1072#1083#1102#1090#1072
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clDefault
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'KPV'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1050#1091#1088#1089
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clDefault
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'SUM_PL'
              Footers = <
                item
                  DisplayFormat = '#.,00'
                  FieldName = 'SUM_PL'
                  ValueType = fvtSum
                end>
              Title.Alignment = taCenter
              Title.Caption = #1057#1091#1084#1084#1072
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clDefault
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end>
        end
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 746
          Height = 22
          Caption = 'ToolBar1'
          Images = DM.RecordImage
          TabOrder = 1
          object ToolButton14: TToolButton
            Left = 0
            Top = 0
            Action = DataSetInsert1
          end
          object ToolButton15: TToolButton
            Left = 23
            Top = 0
            Action = DataSetDelete1
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077' '#1058#1058#1053
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 346
        Width = 748
        Height = 234
        Align = alClient
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 746
          Height = 232
          Align = alClient
          AllowedOperations = [alopUpdateEh]
          AutoFitColWidths = True
          Color = clBtnFace
          DataSource = DM.DS_TTN_Stroki
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clMoneyGreen
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab]
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NMAT'
              Footers = <
                item
                  Value = #1042#1089#1077#1075#1086
                  ValueType = fvtStaticText
                end
                item
                  Value = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1086#1082
                  ValueType = fvtStaticText
                end>
              Width = 128
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'SERIA'
              Footers = <>
              Title.Caption = #1057#1077#1088#1080#1103
              Width = 79
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'KOL_RASH'
              Footers = <>
              ReadOnly = True
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
              Width = 72
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'KOL_MEST'
              Footers = <
                item
                  FieldName = 'KOL_MEST'
                  ValueType = fvtSum
                end
                item
                  FieldName = 'NMAT'
                  ValueType = fvtCount
                end>
              Title.Caption = #1050#1086#1083'.'#1084#1077#1089#1090
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'NETTO'
              Footers = <
                item
                  FieldName = 'NETTO'
                  ValueType = fvtSum
                end
                item
                end>
              Width = 37
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'BRUTTO'
              Footers = <
                item
                  FieldName = 'BRUTTO'
                  ValueType = fvtSum
                end
                item
                end>
              Width = 42
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'OPRED_MAS'
              Footers = <>
              Width = 47
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'KOD_GRUZ'
              Footers = <>
              Width = 36
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'KLASS_GRUZ'
              Footers = <>
              Width = 36
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'ACTIV'
              Footers = <>
              Width = 47
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'VLAGA'
              Footers = <>
              Width = 43
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'IMPORTER'
              Footers = <>
              Width = 89
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'CENA_RO'
              Footers = <>
              Width = 87
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'PROC_NAC'
              Footers = <>
              Width = 43
            end
            item
              Color = clWindow
              EditButtons = <>
              FieldName = 'SLED_DOK'
              Footers = <>
              Width = 94
            end>
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 748
        Height = 346
        Align = alTop
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label3: TLabel
          Left = 3
          Top = 7
          Width = 88
          Height = 13
          Margins.Bottom = 0
          Caption = #1057#1077#1088#1080#1103' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 14
          Top = 65
          Width = 77
          Height = 13
          Margins.Bottom = 0
          Caption = #1047#1072#1082#1072#1079#1095#1080#1082'('#1087#1083#1072#1090')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 18
          Top = 312
          Width = 73
          Height = 13
          Margins.Bottom = 0
          Caption = #1059#1089#1083'. '#1087#1086#1089#1090#1072#1074#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 29
          Top = 25
          Width = 62
          Height = 13
          Margins.Bottom = 0
          Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 490
          Top = 26
          Width = 48
          Height = 13
          Margins.Bottom = 0
          Caption = #1042#1086#1076#1080#1090#1077#1083#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 14
          Top = 45
          Width = 77
          Height = 13
          Margins.Bottom = 0
          Caption = #1042#1083'. '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 276
          Top = 25
          Width = 68
          Height = 13
          Margins.Bottom = 0
          Caption = #1055#1091#1090#1077#1074#1086#1081' '#1083#1080#1089#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 44
          Top = 165
          Width = 47
          Height = 13
          Margins.Bottom = 0
          Caption = #1055#1088#1080#1094#1077#1087' 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 416
          Top = 165
          Width = 47
          Height = 13
          Margins.Bottom = 0
          Caption = #1055#1088#1080#1094#1077#1087' 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 218
          Top = 165
          Width = 41
          Height = 13
          Margins.Bottom = 0
          Caption = #1043#1072#1088'. '#8470'1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 597
          Top = 165
          Width = 38
          Height = 13
          Margins.Bottom = 0
          Caption = #1043#1072#1088' '#8470'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 12
          Top = 145
          Width = 79
          Height = 13
          Margins.Bottom = 0
          Caption = #1055#1091#1085#1082#1090' '#1087#1086#1075#1088#1091#1079#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 378
          Top = 145
          Width = 85
          Height = 13
          Margins.Bottom = 0
          Caption = #1055#1091#1085#1082#1090' '#1088#1072#1079#1075#1088#1091#1079#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 462
          Top = 45
          Width = 76
          Height = 13
          Margins.Bottom = 0
          Caption = #1042#1080#1076' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 0
          Top = 330
          Width = 91
          Height = 13
          Margins.Bottom = 0
          Caption = #1044#1086#1087'. '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 2
          Top = 227
          Width = 89
          Height = 13
          Margins.Bottom = 0
          Caption = #1054#1090#1087#1091#1089#1082' '#1088#1072#1079#1088#1077#1096#1080#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 1
          Top = 247
          Width = 90
          Height = 13
          Margins.Bottom = 0
          Caption = #1054#1090#1087'. '#1075#1088'. '#1087#1088#1086#1080#1079#1074#1105#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 3
          Top = 207
          Width = 88
          Height = 13
          Margins.Bottom = 0
          Caption = #1044#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1100' '#8470
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 206
          Top = 207
          Width = 11
          Height = 13
          Margins.Bottom = 0
          Caption = #1086#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 331
          Top = 207
          Width = 39
          Height = 13
          Margins.Bottom = 0
          Caption = #1042#1099#1076#1072#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 497
          Top = 233
          Width = 41
          Height = 13
          Margins.Bottom = 0
          Caption = #1055#1088#1080#1085#1103#1083' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 477
          Top = 252
          Width = 66
          Height = 13
          Margins.Bottom = 0
          Caption = #1043#1088#1091#1079' '#1087#1086#1083#1091#1095#1080#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 17
          Top = 105
          Width = 74
          Height = 13
          Margins.Bottom = 0
          Caption = #1062#1077#1083#1100' '#1087#1088#1080#1086#1073'-'#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 35
          Top = 125
          Width = 56
          Height = 13
          Margins.Bottom = 0
          Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 279
          Top = 125
          Width = 26
          Height = 13
          Margins.Bottom = 0
          Caption = #1044#1072#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 265
          Top = 185
          Width = 11
          Height = 13
          Margins.Bottom = 0
          Caption = #1086#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 419
          Top = 125
          Width = 64
          Height = 13
          Margins.Bottom = 0
          Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 5
          Top = 85
          Width = 86
          Height = 13
          Margins.Bottom = 0
          Caption = #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 250
          Top = 125
          Width = 20
          Height = 19
          Hint = #1042#1099#1073#1088#1072#1090#1100' '#1080#1079' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1080
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object Label32: TLabel
          Left = 13
          Top = 185
          Width = 78
          Height = 13
          Margins.Bottom = 0
          Caption = #1062#1077#1085#1099' '#1089#1086#1075#1083#1072#1089#1085#1086
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 428
          Top = 44
          Width = 22
          Height = 20
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object Label22: TLabel
          Left = 21
          Top = 293
          Width = 69
          Height = 13
          Margins.Bottom = 0
          Caption = #1042#1080#1076' '#1087#1086#1089#1090#1072#1074#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 527
          Top = 127
          Width = 11
          Height = 13
          Margins.Bottom = 0
          Caption = #1086#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 36
          Top = 271
          Width = 54
          Height = 13
          Margins.Bottom = 0
          Caption = #8470' '#1087#1083#1086#1084#1073#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEditEh1: TDBEditEh
          Left = 97
          Top = 5
          Width = 105
          Height = 19
          Ctl3D = False
          DataField = 'SER_NAKL'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 0
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object RxDBComboEdit2: TRxDBComboEdit
          Left = 146
          Top = 65
          Width = 599
          Height = 19
          Ctl3D = False
          DataField = 'ZAK_NAM'
          DataSource = DM.DS_TTN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          OnButtonClick = RxDBComboEdit2ButtonClick
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh2: TDBEditEh
          Left = 97
          Top = 25
          Width = 173
          Height = 19
          Ctl3D = False
          DataField = 'AVTO'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 1
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh3: TDBEditEh
          Left = 544
          Top = 25
          Width = 201
          Height = 19
          Ctl3D = False
          DataField = 'VODITEL'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 3
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh4: TDBEditEh
          Left = 97
          Top = 45
          Width = 331
          Height = 19
          Ctl3D = False
          DataField = 'VLAD_TRANS'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 4
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh5: TDBEditEh
          Left = 345
          Top = 25
          Width = 105
          Height = 19
          Ctl3D = False
          DataField = 'PUT_LIST'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 2
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh6: TDBEditEh
          Left = 97
          Top = 165
          Width = 105
          Height = 19
          Ctl3D = False
          DataField = 'PRICEP1'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 17
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh7: TDBEditEh
          Left = 472
          Top = 165
          Width = 105
          Height = 19
          Ctl3D = False
          DataField = 'PRICEP2'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 19
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh8: TDBEditEh
          Left = 265
          Top = 165
          Width = 106
          Height = 19
          Ctl3D = False
          DataField = 'GAR_N1'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 18
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh9: TDBEditEh
          Left = 640
          Top = 165
          Width = 105
          Height = 19
          Ctl3D = False
          DataField = 'GAR_N2'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 20
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh10: TDBEditEh
          Left = 97
          Top = 145
          Width = 274
          Height = 19
          Ctl3D = False
          DataField = 'PUNKT_POGR'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 15
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh11: TDBEditEh
          Left = 472
          Top = 145
          Width = 273
          Height = 19
          Ctl3D = False
          DataField = 'PUNKT_RAZGR'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 16
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh12: TDBEditEh
          Left = 96
          Top = 227
          Width = 381
          Height = 19
          Ctl3D = False
          DataField = 'OTP_RAZR'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 28
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh13: TDBEditEh
          Left = 96
          Top = 247
          Width = 381
          Height = 19
          Ctl3D = False
          DataField = 'OTP_PROIZV'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 29
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh15: TDBEditEh
          Left = 372
          Top = 207
          Width = 373
          Height = 19
          Ctl3D = False
          DataField = 'FIO_DOVER'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 27
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh16: TDBEditEh
          Left = 544
          Top = 227
          Width = 201
          Height = 19
          Ctl3D = False
          DataField = 'GRUZ_PRINAL'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 30
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh17: TDBEditEh
          Left = 544
          Top = 247
          Width = 201
          Height = 19
          Ctl3D = False
          DataField = 'GROZ_POLUCH'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 31
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh18: TDBEditEh
          Left = 96
          Top = 327
          Width = 649
          Height = 19
          Ctl3D = False
          DataField = 'DOP_INF'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 33
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBDateEdit2: TDBDateEdit
          Left = 223
          Top = 207
          Width = 106
          Height = 19
          DataField = 'DATE_DOVER'
          DataSource = DM.DS_TTN
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 26
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh14: TDBEditEh
          Left = 96
          Top = 207
          Width = 105
          Height = 19
          Ctl3D = False
          DataField = 'DOVER'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 25
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object CheckBox1: TCheckBox
          Left = 663
          Top = 124
          Width = 81
          Height = 18
          Alignment = taLeftJustify
          Caption = #1043#1086#1089#1082#1086#1085#1090#1088#1072#1082#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnKeyDown = DBEditEh1KeyDown
        end
        object RxDBComboEdit3: TRxDBComboEdit
          Left = 97
          Top = 105
          Width = 648
          Height = 19
          Ctl3D = False
          DataField = 'CEL_PRIOB'
          DataSource = DM.DS_TTN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          OnButtonClick = RxDBComboEdit3ButtonClick
          OnKeyDown = DBEditEh1KeyDown
        end
        object RxDBComboEdit4: TRxDBComboEdit
          Left = 544
          Top = 45
          Width = 201
          Height = 19
          Ctl3D = False
          DataField = 'VID_PER'
          DataSource = DM.DS_TTN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          OnButtonClick = RxDBComboEdit3ButtonClick
          OnKeyDown = DBEditEh1KeyDown
        end
        object RxDBComboEdit5: TRxDBComboEdit
          Left = 96
          Top = 307
          Width = 649
          Height = 19
          Ctl3D = False
          DataField = 'USL_POST'
          DataSource = DM.DS_TTN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 32
          OnButtonClick = RxDBComboEdit3ButtonClick
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh20: TDBEditEh
          Left = 97
          Top = 65
          Width = 47
          Height = 19
          Ctl3D = False
          DataField = 'ZAK_ID'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 6
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh21: TDBEditEh
          Left = 97
          Top = 125
          Width = 152
          Height = 19
          Ctl3D = False
          DataField = 'KONTRAKT'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 11
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBDateEdit3: TDBDateEdit
          Left = 307
          Top = 125
          Width = 105
          Height = 19
          DataField = 'KONTRAKT_DATE'
          DataSource = DM.DS_TTN
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
          OnKeyDown = DBEditEh1KeyDown
        end
        object ComboBox1: TComboBox
          Left = 96
          Top = 185
          Width = 105
          Height = 21
          BiDiMode = bdLeftToRight
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 21
          Text = #1055#1088#1077#1081#1089#1082#1091#1088#1072#1085#1090
          OnCloseUp = ComboBox1CloseUp
          OnKeyDown = DBEditEh1KeyDown
          Items.Strings = (
            #1055#1088#1077#1081#1089#1082#1091#1088#1072#1085#1090
            #1055#1088#1086#1090#1086#1082#1086#1083
            #1055#1088#1080#1082#1072#1079
            #1044#1088#1091#1075#1086#1077)
        end
        object DBEditEh23: TDBEditEh
          Left = 382
          Top = 185
          Width = 363
          Height = 19
          Ctl3D = False
          DataField = 'PRSTR'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 24
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DateEdit1: TDateEdit
          Left = 278
          Top = 185
          Width = 105
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 23
          OnKeyDown = DBEditEh1KeyDown
        end
        object Edit1: TEdit
          Left = 201
          Top = 185
          Width = 64
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 22
          Text = 'Edit1'
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh22: TDBEditEh
          Left = 486
          Top = 125
          Width = 32
          Height = 19
          Ctl3D = False
          DataField = 'PRIL'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 12
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh24: TDBEditEh
          Left = 97
          Top = 85
          Width = 47
          Height = 19
          Ctl3D = False
          DataField = 'POL_ID'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 8
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object RxDBComboEdit6: TRxDBComboEdit
          Left = 146
          Top = 85
          Width = 599
          Height = 19
          Ctl3D = False
          DataField = 'POL_NAM'
          DataSource = DM.DS_TTN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          OnButtonClick = RxDBComboEdit6ButtonClick
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBDateEdit1: TDBDateEdit
          Left = 544
          Top = 125
          Width = 105
          Height = 19
          DataField = 'DATE_PRIL'
          DataSource = DM.DS_TTN
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 34
          OnKeyDown = DBEditEh1KeyDown
        end
        object RxDBComboEdit8: TRxDBComboEdit
          Left = 96
          Top = 287
          Width = 649
          Height = 19
          Ctl3D = False
          DataField = 'VID_POS_NAM'
          DataSource = DM.DS_TTN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 35
          OnButtonClick = RxDBComboEdit3ButtonClick
          OnKeyDown = DBEditEh1KeyDown
        end
        object DBEditEh25: TDBEditEh
          Left = 96
          Top = 267
          Width = 381
          Height = 19
          Ctl3D = False
          DataField = 'OTTISK'
          DataSource = DM.DS_TTN
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ShowHint = True
          TabOrder = 36
          Visible = True
          OnKeyDown = DBEditEh1KeyDown
        end
        object Button1: TButton
          Left = 544
          Top = 1
          Width = 200
          Height = 24
          Cursor = crHandPoint
          Caption = #1056#1072#1089#1095#1077#1090' '#1084#1072#1089#1089#1099' '#1080' '#1084#1077#1089#1090
          TabOrder = 37
          OnClick = Button1Click
        end
      end
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 756
    Height = 33
    ButtonHeight = 30
    ButtonWidth = 30
    Caption = 'ToolBar2'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Images = DM.RecordImage
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object ToolButton4: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 8
      Top = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Caption = 'APrintDok'
      ImageIndex = 6
      OnClick = ToolButton7Click
    end
    object ToolButton8: TToolButton
      Left = 38
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Action = AAddMaterial
    end
    object ToolButton9: TToolButton
      Left = 76
      Top = 0
      Action = AUpdateMaterial
    end
    object ToolButton5: TToolButton
      Left = 106
      Top = 0
      Action = ADeleteMaterial
    end
    object ToolButton1: TToolButton
      Left = 136
      Top = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Action = APost
      ImageIndex = 8
    end
    object ToolButton6: TToolButton
      Left = 166
      Top = 0
      Action = AEditMaterial
    end
    object ToolButton2: TToolButton
      Left = 196
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 9
      Visible = False
      OnClick = ToolButton2Click
    end
    object ToolButton10: TToolButton
      Left = 226
      Top = 0
      Hint = #1059#1074#1077#1083#1080#1095#1080#1090#1100' '#1088#1072#1079#1084#1077#1088'! '
      Caption = 'ToolButton10'
      ImageIndex = 15
      Visible = False
      OnClick = ToolButton10Click
    end
    object ToolButton11: TToolButton
      Left = 256
      Top = 0
      Action = AFormPo
    end
    object ToolButton12: TToolButton
      Left = 286
      Top = 0
      Action = ACopy
    end
    object ToolButton13: TToolButton
      Left = 316
      Top = 0
      Action = AFormAkt
    end
    object ToolButton16: TToolButton
      Left = 346
      Top = 0
      Action = AFormChetf
    end
    object ToolButton17: TToolButton
      Left = 376
      Top = 0
      Action = ALog
    end
    object ToolButton18: TToolButton
      Left = 406
      Top = 0
      Action = ATara
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 644
    Width = 756
    Height = 32
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      756
      32)
    object BitBtn1: TBitBtn
      Left = 466
      Top = 2
      Width = 145
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1080' '#1074#1099#1081#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 611
      Top = 2
      Width = 140
      Height = 25
      Action = ACancel
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1081#1090#1080' '#1073#1077#1079' '#1079#1072#1087#1080#1089#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Images = DM.RecordImage
    Left = 272
    Top = 24
    object APost: TAction
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      ImageIndex = 9
      OnExecute = APostExecute
    end
    object ACancel: TAction
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 10
      OnExecute = ACancelExecute
    end
    object AAddMaterial: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 0
      ShortCut = 45
      OnExecute = AAddMaterialExecute
    end
    object ADeleteMaterial: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 1
      ShortCut = 16430
      OnExecute = ADeleteMaterialExecute
    end
    object AEditMaterial: TAction
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080
      ImageIndex = 5
      OnExecute = AEditMaterialExecute
    end
    object APrintDok: TAction
      Caption = 'APrintDok'
      Hint = #1055#1077#1095#1072#1090#1100
      ImageIndex = 6
      OnExecute = APrintDokExecute
    end
    object AUpdateMaterial: TAction
      Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1090#1077#1088#1072#1083
      Hint = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 13
      ShortCut = 115
      OnExecute = AUpdateMaterialExecute
    end
    object AFormPo: TAction
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1088#1080#1093'.'#1086#1088#1076#1077#1088#1072
      Hint = #1060#1086#1088#1084#1080#1088#1074#1072#1085#1080#1077' '#1087#1088#1080#1093#1086#1076#1085#1086#1075#1086' '#1086#1088#1076#1077#1088#1072
      ImageIndex = 11
      OnExecute = AFormPoExecute
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&'#1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      Hint = #1050#1086#1087#1088#1080#1088#1086#1074#1072#1090#1100'|'#1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090
      ImageIndex = 16
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&'#1042#1089#1090#1072#1074#1080#1090#1100
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100'|'#1042#1089#1090#1072#1074#1080#1090#1100' '#1089#1082#1086#1087#1088#1086#1074#1072#1085#1085#1099#1081' '#1090#1077#1082#1089#1090
      ImageIndex = 17
      ShortCut = 16470
    end
    object ACopy: TAction
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1089#1090#1088#1086#1082#1091
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1089#1090#1088#1086#1082#1091
      ImageIndex = 16
      ShortCut = 16429
      OnExecute = ACopyExecute
    end
    object AFormAkt: TAction
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1072#1082#1090#1072
      Hint = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1072#1082#1090#1072' '#1088#1077#1084#1086#1085#1090#1072'/'#1084#1086#1076#1077#1088#1085#1080#1079#1072#1094#1080#1080'/'#1089#1073#1086#1088#1082#1080
      ImageIndex = 11
      OnExecute = AFormAktExecute
    end
    object AFormChetf: TAction
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1085#1072#1080#1077' '#1089#1095#1077#1090#1072'-'#1092#1072#1082#1090#1091#1088#1099
      Hint = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1099
      ImageIndex = 11
      OnExecute = AFormChetfExecute
    end
    object ALog: TAction
      Caption = #1052#1086#1085#1080#1090#1086#1088#1080#1085#1075' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
      Hint = #1052#1086#1085#1080#1090#1086#1088#1080#1085#1075' '#1080#1079#1084#1077#1085#1077#1085#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      ImageIndex = 20
      Visible = False
      OnExecute = ALogExecute
    end
    object ATara: TAction
      Caption = #1042#1086#1079#1074#1088#1072#1090#1085#1072#1103' '#1090#1072#1088#1072
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1086#1079#1074#1088#1072#1090#1085#1091#1102' '#1090#1072#1088#1091
      ImageIndex = 4
      OnExecute = ATaraExecute
    end
  end
  object frDBDataSet1: TfrDBDataSet
    DataSource = DM.DS_Kart
    Left = 508
    Top = 5
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 32
    object N1: TMenuItem
      Caption = #1053#1072' '#1091#1079#1082#1086#1081' '#1073#1091#1084#1072#1075#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1053#1072' '#1096#1080#1088#1086#1082#1086#1081' '#1073#1091#1084#1072#1075#1077
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1057' '#1075#1088#1072#1092#1072#1084#1080' '#1085#1072#1094#1077#1085#1082#1080
      OnClick = N1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Images = DM.RecordImage
    Left = 316
    Top = 21
    object AddMaterial1: TMenuItem
      Action = AAddMaterial
    end
    object N8: TMenuItem
      Action = AUpdateMaterial
    end
    object N12: TMenuItem
      Action = ACopy
    end
    object DeleteMaterial1: TMenuItem
      Action = ADeleteMaterial
    end
    object N6: TMenuItem
      Action = APost
      ImageIndex = 8
      ShortCut = 113
    end
    object EditMaterial1: TMenuItem
      Action = AEditMaterial
      ShortCut = 114
    end
    object N9: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 6
      ShortCut = 16464
      OnClick = ToolButton7Click
    end
    object N10: TMenuItem
      Action = AFormPo
    end
    object N16: TMenuItem
      Action = AFormChetf
    end
    object N17: TMenuItem
      Action = ATara
    end
    object N13: TMenuItem
      Action = AFormAkt
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Action = EditCopy1
    end
    object Paste1: TMenuItem
      Action = EditPaste1
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N7: TMenuItem
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1080' '#1074#1099#1081#1090#1080
      ImageIndex = 9
      OnClick = N7Click
    end
    object N5: TMenuItem
      Action = ACancel
      Caption = #1042#1099#1081#1090#1080' '#1073#1077#1079' '#1079#1072#1087#1080#1089#1080
    end
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbExit]
    RebuildPrinter = False
    OnBeginBand = frReport1BeginBand
    OnGetValue = frReport1GetValue
    OnUserFunction = frReport1UserFunction
    Left = 560
    Top = 40
    ReportForm = {19000000}
  end
  object lida: TTable
    DatabaseName = 'Work'
    TableName = 'S2.DBF'
    Left = 416
    Top = 24
    object lidaKSM_ID: TFloatField
      FieldName = 'KSM_ID'
    end
    object lidaNUM: TFloatField
      FieldName = 'NUM'
    end
    object lidaSTRUK_NPP: TSmallintField
      FieldName = 'STRUK_NPP'
    end
    object lidaKSM_ID_OLD: TStringField
      FieldName = 'KSM_ID_OLD'
      Size = 10
    end
    object lidaNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object lidaED_IZM: TStringField
      FieldName = 'ED_IZM'
      Size = 10
    end
    object lidaACCOUNT: TStringField
      FieldName = 'ACCOUNT'
      Size = 10
    end
    object lidaCENA: TFloatField
      FieldName = 'CENA'
    end
    object lidaKOL: TFloatField
      FieldName = 'KOL'
    end
    object lidaSUMMA: TFloatField
      FieldName = 'SUMMA'
    end
    object lidaNAM_STRUK: TStringField
      FieldName = 'NAM_STRUK'
      Size = 100
    end
    object lidaMOL: TStringField
      FieldName = 'MOL'
      Size = 50
    end
    object lidaKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
    end
    object lidaACC: TStringField
      FieldName = 'ACC'
      Size = 5
    end
    object lidaPRMAT: TStringField
      FieldName = 'PRMAT'
      Size = 2
    end
    object lidaGR: TStringField
      FieldName = 'GR'
      Size = 2
    end
    object lidaPGR: TStringField
      FieldName = 'PGR'
      Size = 2
    end
  end
  object frOLEExcelExport1: TfrOLEExcelExport
    CellsAlign = False
    CellsFillColor = False
    CellsFontColor = False
    CellsFontName = False
    CellsFontSize = False
    CellsFontStyle = False
    Left = 512
    Top = 40
  end
  object frDBDataSet2: TfrDBDataSet
    DataSet = DM.KartMC
    Left = 552
    Top = 8
  end
  object frDBDataSet3: TfrDBDataSet
    DataSet = DM.KartDragMet
    Left = 592
    Top = 8
  end
  object frDBDataSet4: TfrDBDataSet
    DataSet = DM.Doc_Param
    Left = 632
    Top = 8
  end
  object frDialogControls1: TfrDialogControls
    Left = 680
    Top = 40
  end
  object frDBDataSet5: TfrDBDataSet
    DataSet = DM.PrihOrdDrMet
    Left = 672
    Top = 8
  end
  object frIBXComponents1: TfrIBXComponents
    Left = 648
    Top = 32
  end
  object FieldsDoc: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'SearchString'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ReplaceString'
        DataType = ftString
        Size = 500
      end>
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
    Left = 472
    Top = 8
    object FieldsDocFieldName: TStringField
      FieldName = 'FieldName'
    end
    object FieldsDocFieldValue: TStringField
      FieldName = 'FieldValue'
      Size = 500
    end
  end
  object PopupMenu3: TPopupMenu
    Images = DM.RecordImage
    Left = 632
    Top = 480
    object N14: TMenuItem
      Action = DataSetInsert1
    end
    object N15: TMenuItem
      Action = DataSetDelete1
    end
  end
  object ActionList2: TActionList
    Images = DM.RecordImage
    Left = 584
    Top = 472
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&'#1044#1086#1073#1072#1074#1080#1090#1100
      Enabled = False
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 0
      ShortCut = 8237
      DataSource = DM.DS_Doc_Tam_Pl
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&'#1059#1076#1072#1083#1080#1090#1100
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 1
      ShortCut = 8238
      DataSource = DM.DS_Doc_Tam_Pl
    end
  end
  object Dog_Bde: TTable
    DatabaseName = 'Work'
    Exclusive = True
    Left = 384
    Top = 24
  end
  object frReport2: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbPrint, pbFind, pbExit]
    RebuildPrinter = False
    OnGetValue = frReport1GetValue
    Left = 464
    Top = 40
    ReportForm = {19000000}
  end
  object raznost: TTable
    DatabaseName = 'Work'
    TableName = 'r2.dbf'
    Left = 352
    Top = 24
    object raznostKSM_ID: TFloatField
      FieldName = 'KSM_ID'
    end
    object raznostRAZNOST: TFloatField
      FieldName = 'RAZNOST'
    end
  end
  object Dvig: TTable
    DatabaseName = '11'
    TableName = 'prih19'
    TableType = ttDBase
    Left = 304
    Top = 56
    object DvigKART_ID: TFloatField
      FieldName = 'KART_ID'
    end
    object DvigKSM_ID: TFloatField
      FieldName = 'KSM_ID'
    end
    object DvigKOL_RASH: TFloatField
      FieldName = 'KOL_RASH'
    end
    object DvigTIP_OP_ID: TFloatField
      FieldName = 'TIP_OP_ID'
    end
    object DvigTIP_DOK_ID: TFloatField
      FieldName = 'TIP_DOK_ID'
    end
  end
end
