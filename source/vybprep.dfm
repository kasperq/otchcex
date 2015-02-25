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
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
      
        'select kart.kol_prih, spprod.nmat, spprod.xarkt, spprod.kod_prod' +
        ', spprod.struk_id,'
      
        'kart.ksm_id, ediz.neis neis, spprod.gost, sprorg.nam namorg, reg' +
        'ion.nam namreg'
      'from kartv kart'
      '  inner join spprod on (kart.ksm_id = spprod.ksm_id)'
      '  inner join document on (kart.doc_id = document.doc_id)'
      '  left join sprorg on (spprod.korg = sprorg.kod)'
      '  left join region on (spprod.reg = region.reg)'
      '  inner join ediz on (spprod.kei_id = ediz.kei_id)'
      'where document.struk_id = :struk'
      '  and document.klient_id = :klient_id'
      '  and document.tip_op_id = 36'
      '  and document.tip_dok_id = 74'
      '  and document.date_op between :dat1 and :dat2'
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
        Name = 'klient_id'
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
    DataSet = vprep
    Left = 264
    Top = 144
  end
end
