object FTechJournPrep: TFTechJournPrep
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FTechJournPrep'
  ClientHeight = 807
  ClientWidth = 1045
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 238
    Width = 1045
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ResizeStyle = rsUpdate
    ExplicitTop = 233
    ExplicitWidth = 350
  end
  object Panel1: TPanel
    Left = 0
    Top = 34
    Width = 1045
    Height = 204
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitTop = 29
    ExplicitWidth = 819
    object grid_seria: TDBGridEh
      Left = 1
      Top = 65
      Width = 1043
      Height = 138
      Align = alClient
      AutoFitColWidths = True
      DataSource = ds_seriaDoc
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
          FieldName = 'SERIA'
          Footers = <>
          Title.Caption = #1057#1077#1088#1080#1103
        end>
    end
    object pnl_seriaTop: TPanel
      Left = 1
      Top = 1
      Width = 1043
      Height = 64
      Align = alTop
      TabOrder = 1
      object Label41: TLabel
        Left = 4
        Top = 9
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
      object btn_prepList: TSpeedButton
        Left = 186
        Top = 5
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
        OnClick = btn_prepListClick
      end
      object lbl_prepNmat: TLabel
        Left = 214
        Top = 5
        Width = 635
        Height = 20
        Margins.Bottom = 0
        AutoSize = False
        Caption = 'lbl_prepNmat'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object lbl_prepRegion: TLabel
        Left = 215
        Top = 28
        Width = 86
        Height = 13
        Margins.Bottom = 0
        Caption = 'lbl_prepRegion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_kodPrep: TEdit
        Left = 54
        Top = 5
        Width = 130
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 241
    Width = 1045
    Height = 566
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 312
    ExplicitTop = 400
    ExplicitWidth = 185
    ExplicitHeight = 41
    object grid_zagruz: TDBGridEh
      Left = 1
      Top = 35
      Width = 1043
      Height = 530
      Align = alClient
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
    end
    object pnl_topZagruz: TPanel
      Left = 1
      Top = 1
      Width = 1043
      Height = 34
      Align = alTop
      TabOrder = 1
      object btn_dvigSir: TSpeedButton
        Left = 1
        Top = 1
        Width = 100
        Height = 32
        Align = alLeft
        Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1089#1099#1088#1100#1103
      end
      object btn_add: TSpeedButton
        Left = 101
        Top = 1
        Width = 100
        Height = 32
        Align = alLeft
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        ExplicitLeft = 207
      end
      object btn_del: TSpeedButton
        Left = 201
        Top = 1
        Width = 100
        Height = 32
        Align = alLeft
        Caption = #1059#1076#1072#1083#1080#1090#1100
        ExplicitLeft = 307
      end
    end
  end
  object pnl_top: TPanel
    Left = 0
    Top = 0
    Width = 1045
    Height = 34
    Align = alTop
    TabOrder = 2
    object btn_vipusk: TSpeedButton
      Left = 1
      Top = 1
      Width = 100
      Height = 32
      Cursor = crHandPoint
      Align = alLeft
      Constraints.MinHeight = 32
      Caption = #1057#1087#1080#1089#1086#1082' '#1074#1099#1087#1091#1089#1082#1072
      OnClick = btn_vipuskClick
      ExplicitLeft = 0
      ExplicitTop = 0
    end
    object btn_save: TSpeedButton
      Left = 101
      Top = 1
      Width = 80
      Height = 32
      Cursor = crHandPoint
      Align = alLeft
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    end
    object Label5: TLabel
      Left = 256
      Top = 0
      Width = 209
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
    object edt_year: TSpinEdit
      Left = 503
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
      TabOrder = 0
      Value = 2000
    end
    object edt_month: TSpinEdit
      Left = 465
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
    end
  end
  object q_seriaDoc: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'select distinct document.ndok,'
      
        'substring(document.ndok from 11 for char_length(document.ndok)) ' +
        'seria'
      'from document'
      'where document.date_dok between :dat1 and :dat2'
      'and document.struk_id = :struk_id'
      'and document.klient_id = :ksm_idpr'
      'and document.tip_op_id = 33'
      'and document.tip_dok_id = 34'
      
        'order by substring(document.ndok from 11 for char_length(documen' +
        't.ndok))')
    Macros = <>
    Left = 376
    Top = 24
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
        DataType = ftUnknown
        Name = 'ksm_idpr'
        ParamType = ptUnknown
      end>
    object q_seriaDocNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object q_seriaDocSERIA: TIBStringField
      FieldName = 'SERIA'
      ProviderFlags = []
    end
  end
  object mem_seriaDoc: TkbmMemTable
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
    Left = 552
    Top = 48
    object mem_seriaDocSERIA: TStringField
      FieldName = 'SERIA'
    end
    object mem_seriaDocSAVED: TIntegerField
      FieldName = 'SAVED'
    end
  end
  object ds_seriaDoc: TDataSource
    DataSet = mem_seriaDoc
    Left = 592
    Top = 48
  end
end
