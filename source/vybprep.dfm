object FVybPrep: TFVybPrep
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1074#1099#1087#1091#1089#1082#1072#1077#1084#1099#1093' '#1087#1088#1077#1087#1072#1088#1072#1090#1086#1074
  ClientHeight = 541
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 788
    Height = 541
    Align = alClient
    AutoFitColWidths = True
    DataSource = DSvprep
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
    STFilter.Visible = True
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
    OnTitleBtnClick = DBGridEh1TitleBtnClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'KOD_PROD'
        Footers = <>
        Title.Caption = #1050#1086#1076' '#1087#1088#1077#1087#1072#1088#1072#1090#1072' '
        Title.TitleButton = True
        Width = 169
      end
      item
        EditButtons = <>
        FieldName = 'NMAT'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Title.SortIndex = 1
        Title.SortMarker = smDownEh
        Title.TitleButton = True
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
        FieldName = 'KOL_PRIH'
        Footers = <>
        Title.Caption = #1042#1099#1087#1091#1089#1082
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'NEIS'
        Footers = <>
        Title.Caption = #1045#1076'.'#1080#1079#1084'.'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'NAMREG'
        Footers = <>
        Title.Caption = #1056#1077#1075#1080#1086#1085
      end
      item
        EditButtons = <>
        FieldName = 'NAMORG'
        Footers = <>
        Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        Width = 191
      end>
  end
  object vprep: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      
        'SELECT kart.kol_prih,SPPROD.NMAT, SPPROD.XARKT, SPPROD.KOD_PROD,' +
        'SPPROD.STRUK_ID,'
      
        'KART.KSM_ID,ediz.neis neis,spprod.gost,sprorg.nam namorg,region.' +
        'nam namreg'
      ' FROM KARTv kart'
      '  INNER JOIN SPPROD ON (KART.KSM_ID = SPPROD.KSM_ID)'
      '  inner join document on (kart.doc_id=document.doc_id)'
      '  left JOIN SProrg ON (spprod.Korg = SProrg.Kod)'
      '  LEFT JOIN region ON (SPPROD.reg = region.reg)'
      '  INNER JOIN ediz ON (spprod.Kei_ID = ediz.Kei_ID)'
      ' where DOcUMENT.STRUK_ID=:struk'
      ' and document.struk_id = document.klient_id '
      '  AND DOCUMENT.TIP_OP_ID=36'
      ' and document.tip_dok_id=74'
      '  AND Document.Date_op between :dat1 and :dat2'
      'order by spprod.nmat')
    Left = 199
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'STRUK'
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
    object vprepKOL_PRIH: TFMTBCDField
      FieldName = 'KOL_PRIH'
      Origin = '"KARTV"."KOL_PRIH"'
      Precision = 18
      Size = 6
    end
    object vprepNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object vprepXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"SPPROD"."XARKT"'
      Size = 30
    end
    object vprepKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object vprepSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"SPPROD"."STRUK_ID"'
    end
    object vprepKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KARTV"."KSM_ID"'
      Required = True
    end
    object vprepNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object vprepGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"SPPROD"."GOST"'
      FixedChar = True
      Size = 30
    end
    object vprepNAMORG: TIBStringField
      FieldName = 'NAMORG'
      Origin = '"SPRORG"."NAM"'
      Size = 50
    end
    object vprepNAMREG: TIBStringField
      FieldName = 'NAMREG'
      Origin = '"REGION"."NAM"'
      FixedChar = True
    end
  end
  object DSvprep: TDataSource
    DataSet = mem_vipusk
    Left = 264
    Top = 144
  end
  object mem_vipusk: TkbmMemTable
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
    Left = 432
    Top = 216
    object mem_vipuskSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"SPPROD"."STRUK_ID"'
    end
    object mem_vipuskKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KARTV"."KSM_ID"'
      Required = True
    end
    object mem_vipuskKOD_PROD: TStringField
      FieldName = 'KOD_PROD'
      Size = 18
    end
    object mem_vipuskKOL_PRIH: TFloatField
      FieldName = 'KOL_PRIH'
    end
    object mem_vipuskNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object mem_vipuskXARKT: TStringField
      FieldName = 'XARKT'
      Size = 30
    end
    object mem_vipuskNEIS: TStringField
      FieldName = 'NEIS'
      Size = 10
    end
    object mem_vipuskGOST: TStringField
      FieldName = 'GOST'
      Size = 30
    end
    object mem_vipuskNAMORG: TStringField
      FieldName = 'NAMORG'
      Size = 50
    end
    object mem_vipuskNAMREG: TStringField
      FieldName = 'NAMREG'
    end
  end
  object FindDlgEh1: TFindDlgEh
    DBGrid = DBGridEh1
    FindFont.Charset = DEFAULT_CHARSET
    FindFont.Color = clWindowText
    FindFont.Height = -11
    FindFont.Name = 'Tahoma'
    FindFont.Style = []
    ShowFilterPanel = True
    SimpleSeek = True
    Left = 552
    Top = 328
  end
end
