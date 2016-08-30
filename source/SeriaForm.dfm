object FSeriaForm: TFSeriaForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FSeriaForm'
  ClientHeight = 376
  ClientWidth = 174
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
    Width = 174
    Height = 341
    Align = alClient
    TabOrder = 0
    object grid_seria: TDBGridEh
      Left = 1
      Top = 1
      Width = 172
      Height = 339
      Align = alClient
      AutoFitColWidths = True
      DataSource = ds_seria
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      ReadOnly = True
      STFilter.Visible = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      VertScrollBar.Tracking = True
      OnDblClick = grid_seriaDblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'SERIA'
          Footers = <>
          Title.Caption = #1057#1077#1088#1080#1103
          Width = 85
        end
        item
          EditButtons = <>
          FieldName = 'DATE_ZAG'
          Footers = <>
          Title.Caption = #1044#1072#1090#1072' '#1079#1072#1075#1088'.'
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 341
    Width = 174
    Height = 35
    Align = alBottom
    TabOrder = 1
    object btn_ok: TBitBtn
      Left = 1
      Top = 1
      Width = 75
      Height = 33
      Hint = #1055#1086#1076#1074#1077#1088#1076#1080#1090#1100' '#1074#1099#1073#1086#1088' '#1089#1077#1088#1080#1080' '#1080' '#1074#1099#1081#1090#1080
      Align = alLeft
      Caption = #1042#1099#1073#1088#1072#1090#1100
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btn_okClick
      Layout = blGlyphTop
    end
    object btn_cancel: TBitBtn
      Left = 98
      Top = 1
      Width = 75
      Height = 33
      Hint = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103' '#1086#1090' '#1074#1099#1073#1086#1088#1072' '#1080' '#1074#1099#1081#1090#1080
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btn_cancelClick
    end
  end
  object FindDlgEh1: TFindDlgEh
    DBGrid = grid_seria
    FindFont.Charset = DEFAULT_CHARSET
    FindFont.Color = clWindowText
    FindFont.Height = -11
    FindFont.Name = 'Tahoma'
    FindFont.Style = []
    ShowFilterPanel = True
    SimpleSeek = True
    Left = 80
    Top = 144
  end
  object mem_seria: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    ReadOnly = True
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
    Left = 96
    Top = 224
    object mem_seriaSERIA: TStringField
      FieldName = 'SERIA'
    end
    object mem_seriaSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
    end
    object mem_seriaDATE_ZAG: TDateField
      FieldName = 'DATE_ZAG'
    end
    object mem_seriaKOL_SERIA: TFloatField
      FieldName = 'KOL_SERIA'
    end
  end
  object ds_seria: TDataSource
    DataSet = mem_seria
    Left = 96
    Top = 184
  end
end
