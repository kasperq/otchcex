object FAktRashoda: TFAktRashoda
  Left = 0
  Top = 154
  BorderStyle = bsNone
  Caption = #1040#1082#1090' '#8470'2 '#1088#1072#1089#1093#1086#1076#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
  ClientHeight = 628
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1184
    Height = 40
    ButtonHeight = 40
    ButtonWidth = 41
    Caption = 'ToolBar1'
    GradientEndColor = 13288646
    Images = ImageList1
    TabOrder = 1
    object ToolButton5: TToolButton
      Left = 0
      Top = 0
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Caption = 'ToolButton5'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
    object ToolButton4: TToolButton
      Left = 41
      Top = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083' '#1080#1079' '#1072#1082#1090#1072
      Caption = 'ToolButton4'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = Button3Click
    end
    object ToolButton2: TToolButton
      Left = 82
      Top = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Caption = 'ToolButton2'
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = True
      OnClick = Button1Click
    end
    object ToolButton1: TToolButton
      Left = 123
      Top = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1090#1080#1087' '#1087#1077#1095#1072#1090#1080'...'
      Caption = 'ToolButton1'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object ToolButton3: TToolButton
      Left = 164
      Top = 0
      Hint = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1074#1089#1077' '#1085#1086#1088#1084#1099' '#1074' '#1088#1072#1089#1093#1086#1076
      Caption = 'ToolButton3'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = Button2Click
    end
    object ToolButton8: TToolButton
      Left = 205
      Top = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080' '#1089#1099#1088#1100#1103
      Caption = 'ToolButton8'
      ImageIndex = 8
      OnClick = ToolButton8Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 1184
    Height = 327
    Align = alClient
    AutoFitColWidths = True
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
    SortLocal = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleHeight = 15
    TitleLines = 1
    OnCellClick = DBGridEh1CellClick
    OnKeyDown = DBGridEh1KeyDown
    OnTitleClick = DBGridEh1TitleClick
    Columns = <
      item
        Alignment = taCenter
        AlwaysShowEditButton = True
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'KSM_ID'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1089#1099#1088#1100#1103', '#1084#1072#1090#1077#1088#1080#1072#1083#1072
        Width = 77
        OnEditButtonClick = DBGridEh1Columns0EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'NMAT_KSM'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
      end
      item
        AlwaysShowEditButton = True
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'NEIS'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1045#1076'.'#1080#1079#1084'.'
        Width = 50
        OnEditButtonClick = DBGridEh1Columns2EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'PLNORM'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1088#1084#1072' '#1088#1072#1089#1093#1086#1076#1072
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'FACTRASHOD'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081' '#1088#1072#1089#1093#1086#1076
        Width = 120
      end
      item
        Alignment = taRightJustify
        EditButtons = <>
        FieldName = 'OTKLONENIE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
        Width = 77
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'PERENOS'
        Footers = <>
        HighlightRequired = True
        Title.Alignment = taCenter
        Title.Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080
        Width = 60
      end
      item
        AlwaysShowEditButton = True
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'KRAZ'
        Footers = <>
        Title.Caption = #1056#1072#1079#1076#1077#1083
        Title.SortIndex = 1
        Title.SortMarker = smDownEh
        Title.TitleButton = True
        OnEditButtonClick = DBGridEh1Columns7EditButtonClick
      end
      item
        AlwaysShowEditButton = True
        EditButtons = <>
        FieldName = 'NAMRAZ'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1079#1076#1077#1083#1072
        Title.TitleButton = True
        OnEditButtonClick = DBGridEh1Columns7EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'OST_STRUK_ID'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'CENA'
        Footers = <>
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 424
    Width = 1184
    Height = 204
    Align = alBottom
    TabOrder = 2
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 43
      Width = 689
      Height = 158
      AutoFitColWidths = True
      DataSource = DSDocTipParam
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGridEh2KeyPress
      Columns = <
        item
          EditButtons = <>
          FieldName = 'PARAM_NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
          Width = 286
        end
        item
          EditButtons = <>
          FieldName = 'DEFAULT_VALUE'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1060#1048#1054
          Width = 245
        end
        item
          EditButtons = <>
          FieldName = 'STRUK_ID'
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
    object ToolBar2: TToolBar
      Left = 1
      Top = 4
      Width = 80
      Height = 40
      Align = alCustom
      ButtonHeight = 40
      ButtonWidth = 40
      Caption = 'ToolBar2'
      GradientEndColor = 13288646
      Images = ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object ToolButton6: TToolButton
        Left = 0
        Top = 0
        Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Caption = 'ToolButton6'
        ImageIndex = 1
        OnClick = AddBtnClick
      end
      object ToolButton7: TToolButton
        Left = 40
        Top = 0
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Caption = 'ToolButton7'
        ImageIndex = 6
        OnClick = delBtnClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 40
    Width = 1184
    Height = 57
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 6
      Top = 6
      Width = 35
      Height = 13
      Margins.Bottom = 0
      Caption = #1052#1077#1089#1103#1094':'
    end
    object Label11: TLabel
      Left = 266
      Top = 6
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
      Layout = tlCenter
    end
    object Label19: TLabel
      Left = 220
      Top = 30
      Width = 647
      Height = 19
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'Label19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 141
      Top = 6
      Width = 23
      Height = 13
      Margins.Bottom = 0
      Caption = #1043#1086#1076':'
    end
    object Label3: TLabel
      Left = 4
      Top = 31
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
    object Label6: TLabel
      Left = 219
      Top = 2
      Width = 41
      Height = 19
      Margins.Bottom = 0
      AutoSize = False
      Caption = #1053#1086#1088#1084#1099': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object SpeedButton2: TSpeedButton
      Left = 191
      Top = 29
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
      OnClick = SpeedButton2Click
    end
    object Label7: TLabel
      Left = 404
      Top = 3
      Width = 75
      Height = 13
      Margins.Bottom = 0
      Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
    end
    object Edit1: TEdit
      Left = 62
      Top = 28
      Width = 131
      Height = 22
      Color = clWhite
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnClick = Edit1Click
      OnKeyDown = Edit1KeyDown
    end
    object monthCombo: TComboBox
      Left = 41
      Top = 1
      Width = 86
      Height = 21
      DropDownCount = 12
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = #1103#1085#1074#1072#1088#1100
      OnSelect = monthComboSelect
      Items.Strings = (
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
    end
    object yearEdit: TEdit
      Left = 164
      Top = 1
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '2011'
      OnKeyPress = yearEditKeyPress
    end
    object nDocEdit: TEdit
      Left = 482
      Top = 1
      Width = 328
      Height = 21
      TabOrder = 3
    end
  end
  object NormVQuery: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      
        'select normss.ksm_id, normss.nmat_ksm, rtrim(normss.neis) neis, ' +
        'normss.neis_prod,'
      
        'normss.plnorm, normss.struk_id, ltrim(rtrim(normss.stname)) stna' +
        'me, normss.namspsr, normss.nmat,'
      
        'razdel.namraz, razdel.razdel_id, razdel.kraz, struk.medend, norm' +
        'ss.kei_id'
      'from norm_view(119,:GOD,:MES,:KSM_ID,:STRUK_ID,0) normss'
      'left join razdel on normss.razdel_id = razdel.razdel_id'
      'left join struk on normss.struk_id = struk.struk_id'
      'order by razdel.namraz')
    Macros = <>
    Left = 592
    Top = 14
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'KSM_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'STRUK_ID'
        ParamType = ptUnknown
      end>
    object NormVQueryKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"NORM_VIEW"."KSM_ID"'
    end
    object NormVQueryNMAT_KSM: TIBStringField
      FieldName = 'NMAT_KSM'
      Origin = '"NORM_VIEW"."NMAT_KSM"'
      Size = 60
    end
    object NormVQueryNEIS: TIBStringField
      FieldName = 'NEIS'
      ProviderFlags = []
      Size = 256
    end
    object NormVQueryNEIS_PROD: TIBStringField
      FieldName = 'NEIS_PROD'
      Origin = '"NORM_VIEW"."NEIS_PROD"'
      FixedChar = True
      Size = 10
    end
    object NormVQueryPLNORM: TFMTBCDField
      FieldName = 'PLNORM'
      Origin = '"NORM_VIEW"."PLNORM"'
      Precision = 18
      Size = 7
    end
    object NormVQuerySTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"NORM_VIEW"."STRUK_ID"'
    end
    object NormVQueryNAMSPSR: TIBStringField
      FieldName = 'NAMSPSR'
      Origin = '"NORM_VIEW"."NAMSPSR"'
      FixedChar = True
      Size = 30
    end
    object NormVQueryNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"NORM_VIEW"."NMAT"'
      FixedChar = True
      Size = 60
    end
    object NormVQueryFACTRASHOD: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FACTRASHOD'
      Calculated = True
    end
    object NormVQueryOTKLONENIE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OTKLONENIE'
      Calculated = True
    end
    object NormVQueryNAMRAZ: TIBStringField
      FieldName = 'NAMRAZ'
      Origin = '"RAZDEL"."NAMRAZ"'
      Size = 60
    end
    object NormVQueryRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"RAZDEL"."RAZDEL_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object NormVQueryMEDEND: TIBStringField
      FieldName = 'MEDEND'
      Origin = '"STRUK"."MEDEND"'
      FixedChar = True
      Size = 1
    end
    object NormVQueryKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"NORM_VIEW"."KEI_ID"'
    end
    object NormVQueryKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
    object NormVQuerySTNAME: TIBStringField
      FieldName = 'STNAME'
      ProviderFlags = []
      Size = 256
    end
  end
  object DataSource1: TDataSource
    DataSet = NormiMemDat
    Left = 664
    Top = 14
  end
  object frxReport1: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40739.434456192100000000
    ReportOptions.LastChange = 40935.690836886580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo58OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  if <frxDBDataSet1."MEDEND"> = 1 then'
      '//    Memo58.Text := '#39#1040'.'#1041'. '#1046#1080#1096#1082#1077#1074#1080#1095#39';'
      '//  if <frxDBDataSet1."MEDEND"> = 2 then'
      '//    Memo58.Text := '#39#1040'.'#1042'. '#1055#1088#1072#1090#1100#1082#1086#39';              '
      'end;'
      ''
      'procedure Memo54OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  if <frxDBDataSet1."MEDEND"> = 1 then'
      '//    Memo54.Text := '#39#1058'.'#1042'. '#1048#1075#1085#1072#1090#1077#1085#1082#1086#39';'
      '//  if <frxDBDataSet1."MEDEND"> = 2 then'
      '//    Memo54.Text := '#39#1058'.'#1055'. '#1071#1082#1086#1074#1080#1094#1082#1072#1103#39';  '
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  ds: TfrxDataset;'
      'begin '
      
        '  ds:=TfrxMasterData(Sender).DataSet;                           ' +
        '                                             '
      '  ds.next;'
      '  if not ds.eof then             '
      '      ds.prior'
      '  else'
      '  begin'
      ''
      '    if param8 = '#39#39' then'
      '    begin      '
      '      Memo61.Visible := false;'
      
        '      Footer1.Height := Footer1.Height - 30;                    ' +
        '                                                                ' +
        '    '
      '    end;        '
      '    if param7 = '#39#39' then'
      '    begin      '
      '      Memo60.Visible := false;'
      
        '      Footer1.Height := Footer1.Height - 30;                    ' +
        '                                                                ' +
        '    '
      '    end;        '
      '    if param6 = '#39#39' then'
      '    begin      '
      '      Memo68.Visible := false;'
      
        '      Footer1.Height := Footer1.Height - 30;                    ' +
        '                                                                ' +
        '    '
      '    end;        '
      '    if param1 = '#39#39' then'
      '    begin      '
      '      Memo58.Visible := false;'
      
        '      Footer1.Height := Footer1.Height - 30;                    ' +
        '                                                                ' +
        '    '
      '    end;        '
      '    if param5 = '#39#39' then'
      '    begin      '
      '      Memo52.Visible := false;'
      
        '      Footer1.Height := Footer1.Height - 30;                    ' +
        '                                                                ' +
        '    '
      '    end;        '
      '    if param4 = '#39#39' then'
      '    begin    ;'
      '      Memo51.Visible := false;'
      
        '      Footer1.Height := Footer1.Height - 30;                    ' +
        '                                                                ' +
        '    '
      '    end;        '
      '    if param3 = '#39#39' then'
      '    begin      '
      '      Memo50.Visible := false;'
      
        '      Footer1.Height := Footer1.Height - 30;                    ' +
        '                                                                ' +
        '    '
      '    end;        '
      '    if param2 = '#39#39' then'
      '    begin      '
      '      Memo49.Visible := false;'
      
        '      Footer1.Height := Footer1.Height - 30;                    ' +
        '                                                                ' +
        '    '
      '    end;        '
      '    if podp1 = '#39#39' then'
      '      Memo59.Visible := false; '
      '    if podp2 = '#39#39' then '
      '      Memo54.Visible := false; '
      '    if podp3 = '#39#39' then  '
      '      Memo55.Visible := false; '
      '    if podp4 = '#39#39' then '
      '      Memo56.Visible := false;'
      '    if podp5 = '#39#39' then '
      '      Memo57.Visible := false;'
      '    if podp6 = '#39#39' then '
      '      Memo69.Visible := false; '
      '    if podp7 = '#39#39' then '
      '      Memo64.Visible := false; '
      '    if podp8 = '#39#39' then '
      '      Memo65.Visible := false;'
      '      '
      '    if (Engine.FreeSpace < Footer1.Height) then '
      '      Engine.NewPage;'
      '  end;'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 560
    Top = 14
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 181.417440000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Top = 105.826840000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1106#1056#1113#1056#1118' '#1074#8222#8211' [nDoc]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 612.283860000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '"'#1056#1032#1057#8218#1056#1030#1056#181#1057#1026#1056#182#1056#1169#1056#176#1057#1035'"')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 514.016080000000000000
          Top = 15.118120000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1112'. '#1056#1110#1056#181#1056#1029#1056#181#1057#1026#1056#176#1056#187#1057#1034#1056#1029#1056#1109#1056#1110#1056#1109' '#1056#1169#1056#1105#1057#1026#1056#181#1056#1108#1057#8218#1056#1109#1057#1026#1056#176)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 600.945270000000000000
          Top = 34.015770000000010000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1111#1056#1109' '#1056#1111#1057#1026#1056#1109#1056#1105#1056#183#1056#1030#1056#1109#1056#1169#1057#1027#1057#8218#1056#1030#1057#1107)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 612.283860000000000000
          Top = 52.913420000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1038'.'#1056#152'.'#1056#1106#1056#1169#1056#176#1056#1112#1056#1109#1056#1030#1056#1105#1057#8225)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 502.677490000000000000
          Top = 71.811070000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '"------------" ---- ------------2011'#1056#1110'.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 124.724490000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1057#1026#1056#176#1057#1027#1057#8230#1056#1109#1056#1169#1056#176' '#1056#1112#1056#176#1057#8218#1056#181#1057#1026#1056#1105#1056#176#1056#187#1056#1109#1056#1030' '#1056#1169#1056#187#1057#1039' '#1057#1027#1056#1109#1056#1169#1056#181#1057#1026#1056#182#1056#176#1056#1029#1056#1105#1057#1039' ' +
              #1056#1105' '#1057#1036#1056#1108#1057#1027#1056#1111#1056#187#1057#1107#1056#176#1057#8218#1056#176#1057#8224#1056#1105#1056#1105' '#1056#1109#1056#177#1056#1109#1057#1026#1057#1107#1056#1169#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039' '#1056#1111#1057#1026#1056#1105' '#1056#1111#1057#1026 +
              #1056#1109#1056#1105#1056#183#1056#1030#1056#1109#1056#1169#1057#1027#1057#8218#1056#1030#1056#181)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 143.622140000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#187#1056#181#1056#1108#1056#176#1057#1026#1057#1027#1057#8218#1056#1030#1056#181#1056#1029#1056#1029#1057#8249#1057#8230' '#1057#1027#1057#1026#1056#181#1056#1169#1057#1027#1057#8218#1056#1030' '#1056#1111#1056#1109' '#1057#8224#1056#181#1057#8230#1057#1107' '#1074#8222#8211' [ceh' +
              '] '#1056#183#1056#176' [month] [year] '#1056#1110'.')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        PrintOnFirstPage = False
        object Memo3: TfrxMemoView
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 45.354360000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 113.385900000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 313.700990000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 374.173470000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 449.764070000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 548.031850000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 94.488250000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Width = 45.354360000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211
            #1056#1111'/'#1056#1111)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 45.354360000000000000
          Width = 68.031540000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169'  '
            #1056#1112#1056#176#1057#8218#1056#181'-'
            #1057#1026#1056#1105#1056#176#1056#187#1056#176)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 113.385900000000000000
          Width = 200.315090000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181
            #1056#1112#1056#176#1057#8218#1056#181#1057#1026#1056#1105#1056#176#1056#187#1056#176)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 313.700990000000000000
          Width = 60.472480000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'.'
            #1056#1105#1056#183#1056#1112'.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 374.173470000000000000
          Width = 75.590600000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#1109#1057#1026#1056#1112#1056#176
            #1057#1026#1056#176#1057#1027#1057#8230#1056#1109#1056#1169#1056#176)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 449.764070000000000000
          Width = 98.267780000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#176#1056#1108#1057#8218#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1105#1056#8470' '#1057#1026#1056#176#1057#1027#1057#8230#1056#1109#1056#1169)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 548.031850000000000000
          Width = 90.708720000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1108#1056#187#1056#1109#1056#1029#1056#181#1056#1029#1056#1105#1056#181
            '       (+/-)')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1056#1112#1056#181'-'
            #1057#8225#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Top = 75.590600000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 45.354360000000000000
          Top = 75.590600000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 113.385900000000000000
          Top = 75.590600000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 313.700990000000000000
          Top = 75.590600000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 374.173470000000000000
          Top = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 449.764070000000000000
          Top = 75.590600000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 548.031850000000000000
          Top = 75.590600000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 638.740570000000000000
          Top = 75.590600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 408.189240000000000000
        Top = 566.929499999999900000
        Width = 718.110700000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Memo6: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#1033#1057#1039#1057#1027#1056#1029#1056#181#1056#1029#1056#1105#1056#181' '#1056#1111#1057#1026#1056#1105#1057#8225#1056#1105#1056#1029' '#1056#1109#1057#8218#1056#1108#1056#187#1056#1109#1056#1029#1056#181#1056#1029#1056#1105#1056#8470':')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Top = 56.692949999999990000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 7.559060000000000000
          Top = 192.756030000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8220#1056#187#1056#176#1056#1030#1056#1029#1057#8249#1056#8470' '#1057#8218#1056#181#1057#8230#1056#1029#1056#1109#1056#187#1056#1109#1056#1110':')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 502.677490000000000000
          Top = 192.756030000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8212'.'#1056#1114'.'#1056#1116#1056#176#1056#1169#1056#1030#1056#1105#1056#1108#1056#1109#1056#1030#1056#176)
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 7.559060000000000000
          Top = 234.330860000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[param2]:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 7.559060000000000000
          Top = 257.008040000000100000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[param3]:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 7.559060000000000000
          Top = 283.464750000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[param4]:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 7.559060000000000000
          Top = 309.921460000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[param5]:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 502.677490000000000000
          Top = 234.330860000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo54OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[podp2]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 502.677490000000000000
          Top = 257.008040000000100000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[podp3]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 502.677490000000000000
          Top = 283.464750000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[podp4]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 502.677490000000000000
          Top = 309.921460000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[podp5]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 7.559060000000000000
          Top = 211.653680000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[param1]:')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 502.677490000000000000
          Top = 211.653680000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo59OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[podp1]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 7.559060000000000000
          Top = 362.834880000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[param7]:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 7.559060000000000000
          Top = 385.512060000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[param8]:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 502.677490000000000000
          Top = 362.834880000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo54OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[podp7]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 502.677490000000000000
          Top = 385.512060000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[podp8]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 7.559060000000000000
          Top = 336.378169999999900000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[param6]:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 502.677490000000000000
          Top = 336.378169999999900000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo59OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[podp6]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Top = 75.590600000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Top = 94.488250000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Top = 113.385900000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Top = 132.283550000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Top = 151.181200000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Top = 170.078850000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo38: TfrxMemoView
          Left = 313.700990000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NEIS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."NEIS"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 374.173470000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PLNORM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."PLNORM"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 449.764070000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'FACTRASHOD'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."FACTRASHOD"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 548.031850000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'OTKLONENIE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#.######'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."OTKLONENIE"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 1035.591220000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              #1056#8221#1056#1109#1056#1108#1057#1107#1056#1112#1056#181#1056#1029#1057#8218' '#1057#1027#1057#8222#1056#1109#1057#1026#1056#1112#1056#1105#1057#1026#1056#1109#1056#1030#1056#176#1056#1029' '#1056#1111#1057#1026#1056#1109#1056#1110#1057#1026#1056#176#1056#1112#1056#1029#1057#8249#1056#1112' '#1056#1109#1056 +
              #177#1056#181#1057#1027#1056#1111#1056#181#1057#8225#1056#181#1056#1029#1056#1105#1056#181#1056#1112' '#1056#1115#1056#1106#1056#1038#1056#1032)
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 461.102660000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."NAMRAZ"'
        object Memo43: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."NAMRAZ"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 544.252320000000100000
        Width = 718.110700000000000000
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo71: TfrxMemoView
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 45.354360000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[(<frxDBDataset1."KSM_ID">)]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 113.385900000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."NMAT_KSM"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 720
    Top = 14
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'KSM_ID=KSM_ID'
      'NMAT_KSM=NMAT_KSM'
      'NEIS=NEIS'
      'NEIS_PROD=NEIS_PROD'
      'PLNORM=PLNORM'
      'STRUK_ID=STRUK_ID'
      'STNAME=STNAME'
      'NAMSPSR=NAMSPSR'
      'NMAT=NMAT'
      'FACTRASHOD=FACTRASHOD'
      'NAMRAZ=NAMRAZ'
      'OTKLONENIE=OTKLONENIE'
      'RAZDEL_ID=RAZDEL_ID'
      'PERENOS=PERENOS'
      'MEDEND=MEDEND'
      'KEI_ID=KEI_ID'
      'KRAZ=KRAZ')
    DataSet = NormiMemDat
    BCDToCurrency = False
    Left = 632
    Top = 14
  end
  object NormiMemDat: TRxMemoryData
    FieldDefs = <>
    Left = 752
    Top = 14
    object NormiMemDatKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
    end
    object NormiMemDatNMAT_KSM: TStringField
      DisplayWidth = 60
      FieldName = 'NMAT_KSM'
      Size = 60
    end
    object NormiMemDatNEIS: TStringField
      FieldName = 'NEIS'
      Size = 256
    end
    object NormiMemDatNEIS_PROD: TStringField
      DisplayWidth = 10
      FieldName = 'NEIS_PROD'
      Size = 60
    end
    object NormiMemDatPLNORM: TFloatField
      DisplayWidth = 19
      FieldName = 'PLNORM'
      OnChange = NormiMemDatPLNORMChange
      DisplayFormat = '0.######'
    end
    object NormiMemDatSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
    end
    object NormiMemDatSTNAME: TStringField
      DisplayWidth = 20
      FieldName = 'STNAME'
    end
    object NormiMemDatNAMSPSR: TStringField
      FieldName = 'NAMSPSR'
      Size = 30
    end
    object NormiMemDatNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object NormiMemDatFACTRASHOD: TFloatField
      DisplayWidth = 19
      FieldName = 'FACTRASHOD'
      OnChange = NormiMemDatFACTRASHODChange
      DisplayFormat = '0.######'
    end
    object NormiMemDatNAMRAZ: TStringField
      DisplayWidth = 60
      FieldName = 'NAMRAZ'
      Size = 60
    end
    object NormiMemDatOTKLONENIE: TStringField
      FieldName = 'OTKLONENIE'
    end
    object NormiMemDatRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
    end
    object NormiMemDatPERENOS: TBooleanField
      FieldName = 'PERENOS'
    end
    object NormiMemDatMEDEND: TWordField
      DisplayWidth = 1
      FieldName = 'MEDEND'
    end
    object NormiMemDatKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
    end
    object NormiMemDatOST_STRUK_ID: TIntegerField
      FieldName = 'OST_STRUK_ID'
    end
    object NormiMemDatKRAZ: TIntegerField
      FieldName = 'KRAZ'
    end
    object NormiMemDatCENA: TFloatField
      FieldName = 'CENA'
    end
    object NormiMemDatSPEC: TIntegerField
      FieldName = 'SPEC'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 528
    Top = 14
    object N3: TMenuItem
      Caption = '...'#1076#1083#1103' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1103' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1087#1086' '#1084#1080#1082#1088#1086#1073#1080#1086#1083#1086#1075#1080#1095#1077#1089#1082#1086#1081' '#1095#1080#1089#1090#1086#1090#1077
      OnClick = N1Click
    end
    object N4: TMenuItem
      Caption = '...'#1076#1083#1103' '#1089#1086#1076#1077#1088#1078#1072#1085#1080#1103' '#1080' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      OnClick = N2Click
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 808
    Bitmap = {
      494C010109000B00140018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      000000000000000000000000000000000000000000000000000000000000A87D
      7800B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7
      D800F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2
      CF00B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800F3E7D800F2E6D700FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F0E2CF00F0E2
      CF00B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800F3E8DB00F3E7D900FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00F0E2CF00F0E2
      CF00B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800F4EADE00F4E9DC00F3E8DA00F3E7D900F2E6D700F2E5D500F1E4D400F1E4
      D200F0E3D000F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2
      CF00B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800F4EBE000F3E9DE00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000EFE1CE00EFE1
      CE00B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800EDE5DB00EDE4DA00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00E8DAC800E8DA
      C800B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B288
      7E00D9D3CB00D9D2C900D9D1C700D8D0C700D7CFC500D7CEC400D6CEC200D6CD
      C000D6CCBF00D6CBBE00D6CABC00D5C9BA00D5C8B900D4C7B800D4C7B700D4C7
      B700B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A07A
      7100B5AFAA00B4AEA900B4ADA700B4ACA600B4ACA400B3ACA300B2ABA200B2AA
      A100B1A9A000B1A99E00B0A89D00B0A89C00B0A79A00B0A69A00B0A59900AFA4
      9800A47476000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A35228000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A35228000000000000000000BA8E
      8200E7E2DD00E7E2DB00E6E0DA00E6E0D900E5DED700E5DED500E5DDD400E5DB
      D200E4DBD100E3D9CF00E3D9CD00E2D9CC00E2D8CB00E1D6C900E1D6C700E1D5
      C600B78183000000000000000000A35228000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A35228000000000000000000BA8E
      8200DCD8D400DCD6D200D8754200D8754200D8754200D8754200D8754200D875
      4200D8754200D8754200D8754200D8754200D8754200D8754200D5CBBF00D5CA
      BD00B78183000000000000000000A35228000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A35228000000000000000000AE87
      7700B7B5B100B6B4B000F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CA
      B300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300B1AAA100B1A9
      9F00A47476000000000000000000A35228000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A35228000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C296
      8500FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FBF7F300FBF7F300FAF5
      EF00FAF5EF00F8F1EB00F8F1EB00F7F1E900F7F1E900F6ECE200F6ECE200F6EC
      E200B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CA9C
      8800FEFDFC00FDFCFA00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F5ECE300F5EB
      E100B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEA0
      8900FFFFFF00FFFFFF00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00F6EFE600F6EE
      E500B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2A3
      8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F1E900F7F0
      E700B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7A7
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FEFCFA00FEFB
      F800FCF9F600FBF8F400FBF7F300FAF6F100FAF4EF00F9F3EE00F9F2EC00F7F1
      EA00B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAAB
      8D00FFFFFF00FFFFFF00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F9F4EF00F9F3
      ED00B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FAF6F100FAF5
      EF00B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFC00FEFCFA00FDFBF800FCF9F600FBF8F400FAF6
      F200B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FEFDFB00FEFBF900FDFAF700FBF8
      F500B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8F00DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200AA807C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000143E0000143E0000143E
      0000143E0000143E0000143E0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300000000000000000000000000993E3E00913233008C53
      5400A7ADAC00C0C2C100C2BFBD00BDBFBD00B5B5B500915353007D2222008E35
      3500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000236A0000206000001D5800001A500000184A
      000017460000154100001540000016430000194D000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A97F
      7900F5E2C100F5E0BD00F4DEBB00F4DCB800F3DCB500F4DAB200F3D9B000F3D7
      AD00F2D6AA00F1D5A800F1D4A500F1D3A400F1D2A200F0D19F00F0D09D00F0CF
      9C00F0CE9A00B3897B000000000000000000AC5B5500C24B4B00BB4344008E50
      510097787700CCAFAC00F8F0ED00FCFCFB00E5E5E3009E53520076111100A538
      3800A04141000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4787400A4787400A4787400A478
      7400A4787400A4787400A4787400A4787400A4787400A4787400A4787400A478
      7400A4787400A47874008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002673000025710000236B0000276706003E6D27004E8035005385
      3B0053853B004A703700315A1C0017430000133A000016440000154100000000
      000000000000000000000000000000000000000000000000000000000000A97F
      7A00F6E3C500F5E1C100F5E0BF00F5DFBC00F4DDB800F3DCB600F3DBB300F3D9
      B100F3D8AE00F3D7AC00F1D6A900F2D5A700F1D3A400F0D2A200F0D1A000F0D0
      9E00F0D09D00B3897B000000000000000000AB5B5400C04B4B00B84645009357
      570080383800963E3E00D9C7C500FFFFFF00F8F4F300A558570076111100A437
      37009F4041000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4787400ECDED100F9F0E000F6EB
      DA00F5EAD900F5E9D600F4E8D400F4E8D300F4E8D300F4E8D400F4E8D400F4E8
      D400F6ECD700EDDFCC008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000287800002675000034771200529F2B0070D040008CBA7600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0087BE6C006EA75200496B39001D440900133A00001A4E
      000000000000000000000000000000000000000000000000000000000000A97F
      7A00F7E5C900F6E3C6000099000000990000F5DFBC00F4DEBA00993300009933
      000099330000993300009933000099330000993300009933000099330000F1D2
      A100F1D19F00B3897B000000000000000000AB5B5400C04A4B00B64444009D5F
      5F00863C3B0079131300A9908F00EBF6F300FFFFFF00AA5E5C00700E0E00A336
      36009F4041000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4787400EADBD000F7EDDF00F3E7
      D900F2E7D800F2E6D600F1E4D400F0E3D100F0E3D100F0E2D000F0E3D000F0E2
      D000F2E6D200EADAC8008C5D5C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000297D
      0000287A00004893230077D64800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0075A75C00325620001237
      0000194D0000000000000000000000000000000000000000000000000000A97F
      7A00F7E7CC00F6E6CA000099000000990000F6E1C100F5DFBE00F4DEBB00F5DD
      B700F4DCB500F3DAB300F3D9B000F2D8AD00F2D6AB00F2D5A800F1D5A600F1D3
      A300F1D2A200B3897B000000000000000000AB5B5400C04B4B00B6424200A560
      6000A36D6B008E4747008B777800BDC0BC00F0E7E600AC5C5C0076111100025C
      0400025B0500025B040002590400015503000000000000000000000000000000
      000000000000000000000000000000000000A4787400EBDCD300F7EFE300F3EA
      DE00F3E9DC00F2E8DA00F2E6D800F1E5D600F0E4D300EFE3D100EFE3D100F0E2
      D000F2E5D200EADAC8008C5D5C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B8300002A7E
      00004AA31E0082D55900FFFFFF00FFFFFF0082D5590065BF3700518C34004878
      300048783000548B390070BD4A00FFFFFF00FFFFFF00FFFFFF0082AD6D003458
      2200133A00001849000000000000000000000000000000000000000000007F5F
      5C00BAAF9D00B9AD9A00B9AC9700B8AB9600B8AA9400B8A99100B8A88F00B8A7
      8C00B8A68B00B7A58800B7A48600B6A38400B6A28200B5A18000B5A07F00B59F
      7C00B59F7B0086675C000000000000000000AB5B5500C04B4C00BC464700B74A
      4B00BD5D5C00B85B5B00B0515100B2515100C25E5E00B7484800015503000259
      040004690A0005780C00047F0B000377090003630500025C0400000000000000
      000000000000000000000000000000000000B4817600ECDED700F9F2E800F9DE
      C200F5C89700F5C99900F5C89800F5C99800F5C89800F4C89700F5C79400F5DA
      BD00F1E7D400EADAC8008C5D5C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B8300004197
      160074FF2E00FFFFFF00FFFFFF0072CE4400427E240022680000206000001E5C
      00001D5800001D580000215C03004A7B31007EC25C00FFFFFF00FFFFFF007DA5
      690022490E001643000000000000000000000000000000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A00AA595300A53A3800AA4D4B00C074
      7300C7828200C9848300CA828100C6787700C4797A00C9888600CB878600C256
      56009C3B3C0000000000036A070005870C0006900D0003700800015503000000
      000000000000000000000000000000000000B4817600ECE1DA00F9F3EB00F8E4
      CF00FADCC000F9DDC100F9DCC000F8DCBE00F8DCBD00F7DBBC00F7D9B800F3DD
      C400F1E5D300E9D9C7008C5D5C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000002D890000308705006AE1
      2E00FFFFFF00FFFFFF006BD5360033791000256F0000246C00002F6E10003A70
      1F00396D1F0028620A001E5C00001D58000035671C007CBD5B00FFFFFF00FFFF
      FF0053794100154000001B530000000000000000000000009A0000000000AD83
      7D00F9ECD800F9EBD500F8E9D200F8E8CF00F7E6CD00F7E5C900F6E4C600F6E2
      C300F5E0C000F5DFBD00F4DEBB00F4DDB700F4DBB500F3DAB200F3D9AF00F3D7
      AD00F2D7AB00B3897B000000000000009A00A5524B00A74C4800E5D3D000F6F0
      F000F4EEED00F4EFED00F4EFED00F6EFEE00F6EEED00FAF8F700E3D0CF00BA55
      5500993739000000000000000000025A040005860C0006920E00036D0700025C
      040000000000000000000000000000000000B4817600EEE3DC00FAF5EE00F6EE
      E200F5E9DC00F5E9DB00F4E7D900F5E7D800F5E6D600F3E4D300EFE0CE00EBDE
      CC00EDE2D100E6D8C700976A6500000000000000000000000000000000000000
      000000000000000000000000000000000000000000002E8B000044A51300FFFF
      FF00FFFFFF007DCF54003A831600287A000027770000256F000054A12D0082D5
      590082D5590048812B001E5C00001E5C00001D580000406D290088C36A00FFFF
      FF0081A47000224E0C001B520000000000000000000000009A0000000000B288
      7E00FAEEDB00F9ECD90000009A0000009A00F8E9D000F7E7CD0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A00F3D9
      B000F2D8AE00B3897B000000000000009A00A5514A00AD545100F3EDEA00F4F2
      F200EDE6E500EEE7E600EEE7E600EEE7E600EDE6E500F4F4F300E5D0CF00B853
      530099373800A4676900A4676900A4676900036908000795100004860C00025C
      0400A4676900A4676900A4676900A4676900BA8E8500F0E6E000FBF7F200F9DC
      BE00F3C28C00F1C28E00F3C48F00F5C48F00F5C48F00F1C18D00E7B88500DCC3
      A900D8D0C400DACCBE0093686300000000000000000000000000000000000000
      000000000000000000000000000000000000309100002F8E000053DB0F00FFFF
      FF00FFFFFF0050C316002B8300002A7F0000297C00002675000053AB2800FFFF
      FF00FFFFFF0048812B00206000001F5F00001E5C00001D590000629F4300FFFF
      FF00FFFFFF00496B39001B5200001A4E00000000000000009A0000000000B68B
      8000FBF0E000FAEFDD0000009A0000009A00F8EAD400F8E9D100F7E7CE00F7E6
      CB00F6E4C800F6E4C500F5E1C200F5E0BF00F5DEBC00F4DDB900F4DCB700F4DB
      B400F3D9B100B3897B000000000000009A00A5514A00AF545100EFE6E300DCDA
      DA00CBC7C600CECACA00CECACA00CECACA00CBC7C600D8DCDA00E2CCCB00BA54
      540099373800F4DAB500F3D5AA00F2D0A000035C06000C93180007951100025C
      0400EBC18000EBC18000F2C78200A4676900BA8E8500F2E8E200FBF7F200F1E8
      DD00E8DBCE00E1D5C800E6D9CC00EFE1D100EEE0CF00E3D3C400CBBDAE00B5AA
      9F00B3ABA100BFB4A8008A615C00000000000000000000000000000000000000
      000000000000000000000000000000000000319300003291020064FA1900FFFF
      FF0072FF2C0039940B002D89000030860600318209002F7C090055B72500FFFF
      FF00FFFFFF004C922900296A090028680900246304001E5A00003E6C27008CBA
      7600FFFFFF00629F43001E5A0000143C00000000000000009A00000000008B6A
      6100BCB5AA00BCB4A800BBB3A600BBB2A400BBB1A200BAAFA000BAAF9D00BAAE
      9B00BAAD9900B9AC9700B9AB9400B8A99200B8A99000B8A78E00B8A68B00B7A5
      8A00B7A5870086675D000000000000009A00A5514A00AD535100F0E7E600E6E3
      E200D8D3D100DAD5D500DAD5D500DAD5D500D8D3D100E3E5E300E2CCCC00BA54
      530099373800F3DABC00F2D5B100F0D0A700025804001298230011A52200025C
      0400E9BD7F00E9BD7F00EFC48100A4676900CB9A8200F2EAE400F9F8F400E9DD
      D100D0C1B100C2B4A500CABCAD00DBCBB800DCCBB900C7B7A600AA9B8C00948A
      8000938D8600A0988F0083605C00000000000000000000000000000000000000
      00000000000000000000000000000000000032960000379C050070FF2800FFFF
      FF0066FF1900329202002F8E000057DC140079E444007CDB4C0074FF2E00FFFF
      FF00FFFFFF0082CE5C0081C95D0081C95D00529332001F5D00002A630D0083C3
      6400FFFFFF006CBD440022640100174500000000000000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A00A5514A00AF545100EFE6E600E0DD
      DC00CFCBCA00D1CFCE00D1CFCE00D1CFCE00CFCBCA00DDDEDD00E3CECB00BB55
      540099373800015703000157030001570300035C06001CA934001AB13200025C
      0400025C04000157030001560300A4676900CB9A8200F5EDE900F8F9F800748D
      B700C0996F00A8876300AA896500B8946D00B9956D00A5856100557299004B61
      8D0058576F0089837C006C4F4C00000000000000000000000000000000000000
      000000000000000000000000000000000000339B00003EB4020074FF2E00FFFF
      FF0060FF1100339701003092000059F00E00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0057A2320021630000266607007DCF
      5400FFFFFF0070BD4A002365030020620000000000000000000000000000C296
      8500FCF5EA00FBF4E700FBF2E400FAF1E200FAF0DF00F9EEDC00F9EEDA00F9EC
      D600F8EAD400F7E9D100F7E7CE00F7E6CB00F7E4C800F6E4C500F6E2C200F5E0
      BF00F4DFBC00B48B7E000000000000000000A5514A00AD535000F2E9E900F6F2
      F200EEE5E300EEE7E600EEE7E600EEE7E600EEE5E300F6F4F200E6D0CF00BA55
      5400993838000157030011991F001F9A370024A941002CC04E0023B7400019AA
      300011991F0011991F0001550300A4676900DCA88700F7F0EC00FBFBFB007EA2
      CB00748DB7009E9A9F009D9895009A959100928E8C005572990079B7D90073BC
      E300353C6B005C5968005B434100000000000000000000000000000000000000
      00005B5757004642420046424200464242003BB1000043CA000073FF2D00FFFF
      FF0068FF1C00349C0000329700004DE5010065F21E0066EE220073E83900FFFF
      FF00FFFFFF0072DC3D006BD536006CCF3B004C922900226800002F6D100082CE
      5C00FFFFFF006CBD44002367010021650000000000000000000000000000C598
      8500FCF6ED00FBF4EA000098000000980000FAF0E200F9EFDF00993300009933
      000099330000993300009933000099330000993300009933000099330000F6E2
      C300F6E1C000B48B7E000000000000000000000000009D4B4800C7C1C000CFCF
      CF00CCC6C600CCC7C700CCC7C700CCC7C700CCC6C600CFCFCF00C7B7B6009A48
      4800FFFBF000F8EADC00015703001B95320044E57A003BD469002FC654001199
      1F001192220002580400EFC58300A4676900DCA88700F8F2EF00FDFDFD005F6D
      9900CBEFF6009AADC5009A98A000959392005572990089D2EB005572990074B5
      DD0062A1D000333766005142520000000000000000008F8F9000545454005454
      54005B5757003B3A3C00353537005B55550041C3000045CF000070FF2800FFFF
      FF0074FF2E003AB0000033990000339B000033950200318F020051D11100FFFF
      FF00FFFFFF0049A61A002A7C02002979020028750100246E00004482250076FF
      3200FFFFFF005FB335002268000022680000000000000000000000000000C497
      8400F5F0E900F4EFE7000094000000940000F3EBDF00F4EADD00F4EBDC00F8ED
      DC00F8EDDB00F9ECD900F9EBD600F8EAD300F8E8D000F7E7CD00F6E6CA00F7E4
      C600F6E2C400B48B7E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A775
      6B00FFFFFC00FAF0E600F8EADA00005000001D9A360043E1780040DD720023AC
      4000035A0500EBC79300F2C98C00A4676900E3B18E00F9F3EF00FEFEFE00B3B3
      C50070799A00CBEFF6009FC1D5005572990090DEF2005572990086D9F7005572
      99006BACDB00558CC1002F3160002F3160002F3160008F8F9000BEBEBF00BEBE
      BF005B575700524D4E005B5555005B555500349E000043CA00006BFF2100FFFF
      FF00FFFFFF004FEF0000339900003399000033990000319500004EDA0800FFFF
      FF00FFFFFF0048AC16002A800000297E0000287A00002775000065BF3700FFFF
      FF00FFFFFF0048932300236A000000000000000000000000000000000000B48C
      7800DDDAD500DCD9D400DCD8D100DCD7CE00DCD5CD00DED7CE00E5DED000F0E8
      D900F8EEDD00FAEFDD00F9EDD900F9ECD700F8EAD300F8E8D100F8E7CE00F7E6
      CB00F6E5C800B48B7E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC82
      6800FFFFFF00FEF7F200FAEFE600F8EAD9000157040028AD470035C75E000767
      0D00F0D0A700EECC9E00F3CE9700A4676900E3B18E00FAF3EF00FFFFFF00FEFE
      FE00B6B6C8007383A200B8ECF5007291B6005572990089D7F000557299007BCD
      F3005572990066B5EC005BA9E800509DE5004690E1008F8F9000BABABA00BABA
      BA005B5757005B5757005F5A5A005F5A5A000000000041C3000062FF1300FFFF
      FF00FFFFFF0074FF2E003FBD00003399000033990000339900004ADF000071FF
      2A0071FF2A0046B30F002C8600002B830000297E00004AA31E00FFFFFF00FFFF
      FF0076D148002C730900246E0000000000000000000000000000000000009876
      6400B8B6B200B8B5B100B8B5B000B7B4AD00B7B2AC00BCB7AE00CDC6BC00E5DE
      D100F5ECDE00FAF0E000FAEFDD00FAEEDB00F9ECD800F8EBD500F8E9D200F7E8
      CF00F7E7CC00B48B7E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC82
      6800FFFFFF00FFFEFC00FCF6F000FAEFE600F7EADA0004600900086A0F00F3D9
      BB00F3D4B000F0D0A600F6D3A000A4676900EDBD9200FBF5F100FFFFFF00FFFF
      FF00FEFEFE00B9B9CA006B81A100A5E9F4006789B3005572990081CEEE005572
      990070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000C7C8C800C7C8
      C8005B5757006B6767006B6767006B6767000000000047D6000050F3000076FF
      3200FFFFFF00FFFFFF006AFF20003DB700003399000033990000349D000036A1
      0000369A0300329102002E8C00002C86000044A5130079E44400FFFFFF00FFFF
      FF004FA3260025720000000000000000000000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A00BDB8B000DFD8
      CF00F4ECE000FAF1E200FBF1E100FAEFDF00FAEEDC00F9ECD800F8EBD600F8EA
      D300F8E8CF00B48B7E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D192
      6D00FFFFFF00FFFFFF00FFFEFC00FEF7F000FAEFE500F8EAD900F7E5CE00F6DE
      C400F3D9B800F4D8B100EBCFA400A4676900EDBD9200FBF6F200FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00BBBBCB006480A10094E2F1006586B00081CEEE007BCD
      F30070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000F1F1F100EFEF
      EF005B575700767474007674740076747400000000000000000046D400006BFF
      2100FFFFFF00FFFFFF00FFFFFF0070FF280048D90000359F0000339900003399
      00003399000031950000389A080051D1110074FF2F00FFFFFF00FFFFFF0070D0
      40002E79090026750000000000000000000000009A004978FF003B6BFF00285C
      FF00144AFF00053AFF00002DF9000023E700031AD10000009A0073260000882D
      000095320000983300009933000099330000993300009933000099330000F9EC
      D600F8EAD300B48B7E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D192
      6D00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FCF7F000FAEFE500F8E9D900F8E7
      D100FBEACE00DECEB400B6AA9300A4676900EDBD9200DCA88700DCA88700DCA8
      8700DCA88700DCA88700DBA78600A5847E005E7EA000C4EBF60086D9F7007BCD
      F30070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000F1F1F100F1F1
      F1005B575700818080008180800081808000000000000000000050F300004FEF
      000072FF2C00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066FF190051F600004CE5
      00004DE5010053FA00006DFF2400FFFFFF00FFFFFF00FFFFFF0070DF38003B82
      1700287A000000000000000000000000000000009A004A79FF004373FF003365
      FF002054FF000C43FF000034FF000028F300001FDE0000009A00CDCAC400E6E3
      DB00F6F1E700FCF5EA00FCF4E800FBF3E500FAF1E300FAF0E000FAEFDD00F9EE
      DA00F9ECD700B48B7E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DA9D
      7500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FCF6EF00FCF3E600EDD8
      C900A56B5F00A56B5F00A56B5F00A46769000000000000000000000000000000
      0000000000000000000000000000000000000000000055729900C3ECFB00BDE6
      F90070C1F00066B5EC005BA9E800509DE5003B5D9B008F8F9000F1F1F100F1F1
      F1005B5757008B8B8B008B8B8B008B8B8B000000000000000000000000004ADF
      000053FA000072FF2C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0060E21F00398414002A7E
      00000000000000000000000000000000000000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A00E7E4E000F3EF
      E900FBF6EE00FCF7EE00FCF5EB00FBF5E900FCF3E700FBF2E300FAF0E100FAEF
      DE00F9EDDB00B48B7E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DA9D
      7500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FFFEF700DAC1
      BA00A56B5F00E19E5500E68F3100B56D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006A96
      C000679AC9006195C9005A8DC700556DA400000000008F8F90008F8F90008F8F
      90005B5757008C8C8C007C7C7C007C7C7C000000000000000000000000000000
      000050F000004DE8000064FA190074FF2E00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0082D5590066EE22004BBE1200308704002B8300000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FEFEFE00FFFDFC00FEFDFA00FEFCF900F8F5F100FBF8
      F300FCF8F200FDF8F100FDF7EE00FCF5EC00FBF4E900FBF3E700FBF2E500FBF1
      E100FAEFDE00B48B7E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7AB
      7900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCC7
      C500A56B5F00F8B55C00BF7A5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5757005B5757005B5757005B5757000000000000000000000000000000
      000000000000000000004ADF00004EEB00005BFF090068FF1D006CFF23006CFF
      220068FF1C005EF712004DD906003EA50A00318B04002D890000000000000000
      000000000000000000000000000000000000000000000000000000000000D9A3
      8100D9A38100D9A38100D9A38100D9A38100D9A38100D9A38100DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA4820000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7AB
      7900FBF4F000FBF4EF00FAF3EF00FAF3EF00F8F2EF00F7F2EF00F7F2EF00D8C2
      C000A56B5F00C1836C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004CE5000047D6000047D8000047D8
      000045CF00003FB603003EAD06003EA50A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7AB
      7900D1926D00D1926D00D1926D00D1926D00D1926D00D1926D00D1926D00D192
      6D00A56B5F000000000000000000000000000000000000000000AE746C009F52
      52009A4D4E009C4E4F0099474800A3737400B7B8B800B8B6B600B9B7B700BAB8
      B700BAB7B700B9B7B700B8B6B600B7B6B600B8B8B800A471710098454600994A
      4B00994B4C009A4D4E009A4D4E0000000000000000000000000000000000A87D
      7800B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B781830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000006900000069000000
      6900000069000000690000006900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B4817600C36E6B00C964
      6400C9646400CB656500B75757009A696A00B0B1B100CDCDCB00E5E3E100F2EF
      ED00F9F5F200F9F5F100EEEBEA00E3E2E000DEDFDF00B6767600952C2C009835
      35009E3A3A00C15B5B00C06061009A4C4D00000000000000000000000000A97F
      7900F5E2C100F5E0BD00F4DEBB00F4DCB800F3DCB500F4DAB200F3D9B000F3D7
      AD00F2D6AA00F1D5A800F1D4A500F1D3A400F1D2A200F0D19F00F0D09D00F0CF
      9C00F0CE9A00B3897B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEABAC00CCCACB00B1AFAF00A09D
      9E000000000000000000ACAAAB00D3D3D300DBDADA00C0BEBE00ADAAAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000DB1000008A10000009300000085000000
      7D000000760000006E0000006B00000071000000810000000000000000000000
      00000000000000000000000000000000000000000000B4817600C36E6B00CD65
      6500CD666600CE676700BA5859009B6C6C00A18D8D00B5818000CFAFAC00DFCC
      CA00F9F5F100FFFCF900FBF7F500EFEDEB00E8E9E800B9767700942A29009833
      33009E393900C25C5C00C26262009A4C4D00000000000000000000000000A97F
      7A00F6E3C500F5E1C100F5E0BF00F5DFBC00F4DDB800F3DCB600F3DBB300F3D9
      B100F3D8AE00F3D7AC00F1D6A900F2D5A700F1D3A400F0D2A200F0D1A000F0D0
      9E00F0D09D00B3897B0000000000000000000000000000000000000000000000
      00000000000000000000AEABAC00C7C5C600F4F3F300F7F6F600BCBABA00B1AF
      AF005D5C5D00615F600088868700AEACAC00CBCACA00E3E2E200E7E7E700D5D4
      D400B6B4B5000000000000000000000000000000000000000000000000000000
      0000000000000013C000000CBC000002B3000B16AD004149B6006C71C2007C7F
      C5007C7FC5006365B3003031960001027200000062000000730000006E000000
      00000000000000000000000000000000000000000000B4817600C36E6B00CC65
      6500CB666600CE676700B85858009E717100A17D7E009E3D3C00B4706E00C9A0
      9D00ECE8E500FBF7F500FEFAF700F9F5F200F0F0EF00BB797800942A2A009833
      33009E393900C25C5C00C26262009A4C4D00000000000000000000000000A97F
      7A00F7E5C900F6E3C6000099000000990000F5DFBC00F4DEBA00993300009933
      000099330000993300009933000099330000993300009933000099330000F1D2
      A100F1D19F00B3897B0000000000000000000000000000000000000000000000
      0000ADABAC00BBB8B900EAE9E900FFFEFE00FDFCFC00F3F2F200BAB8B800B2B0
      B0004C4B4D002323250030303200424244006260620087848600AFADAD00D2D1
      D100E9E8E800DEDDDD00AAA7A800000000000000000000000000000000000000
      00000017C900000BC3001E2DC800787FDA00D2D6F400FDFDFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6F6FB00C0C1E0006464AD000F0F7300000061000000
      82000000000000000000000000000000000000000000B4817600C36E6B00CC65
      6500CB666600CE676700B8585800A2747400A7848400972F2F009F3F3F00B575
      7300DED8D700F2EFED00FBF7F500FEFBF800FAFAF700BE7C7C0094292A009833
      33009E393900C25C5C00C26262009A4C4D00000000000000000000000000A97F
      7A00F7E7CC00F6E6CA000099000000990000F6E1C100F5DFBE00F4DEBB00F5DD
      B700F4DCB500F3DAB300F3D9B000F2D8AD00F2D6AB00F2D5A800F1D5A600F1D3
      A300F1D2A200B3897B000000000000000000000000000000000000000000AFAD
      AE00E1DFDF00FDFCFC00FCFBFB00FAF9F900FCFBFB00EDEBEC00B6B4B400B6B4
      B400989798006F6E6F004C4B4D003333350028282A002E2E300041414300605F
      60008C898A00A7A5A5000000000000000000000000000000000000000000001B
      D100000FCC005965D700E4E6F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CDCDE400363690000000
      5C000000800000000000000000000000000000000000B4817600C36E6B00CC65
      6500CB666600CE676700B8585800A5767600AD89880098323200972F2F00A048
      4800C9C2C100E5E3E100F3F0ED00FDF9F600FFFFFD00C27F7E00932929009833
      33009E393900C25C5C00C26262009A4C4D000000000000000000000000007F5F
      5C00BAAF9D00B9AD9A00B9AC9700B8AB9600B8AA9400B8A99100B8A88F00B8A7
      8C00B8A68B00B7A58800B7A48600B6A38400B6A28200B5A18000B5A07F00B59F
      7C00B59F7B0086675C00000000000000000000000000A4A1A200D1CFCF00F8F7
      F700FBFAFA00F7F6F600F7F6F600EAE9E900C8C7C700ADABAC00A09D9E00A3A1
      A100AFACAD00B8B5B600B3B1B1009E9D9D007B7A7B005756570038383A002627
      290043424400A19E9F00000000000000000000000000000000000020DB000013
      D3006071E200FBFCFE00FFFFFF00FFFFFF00FBFCFE00B3B7E9007475CC005758
      BE005759BF007C7CCA00CBCCEC00FFFFFF00FFFFFF00FFFFFF00E6E6F1003A3A
      93000000610000007B00000000000000000000000000B4817600C36E6B00CC65
      6500CB666600CE676700B7575700AB7A7900B58C8B00972B2B00972B2B009732
      3200ADA6A600CFCFCE00E6E3E000F6F3F000FFFFFD00C4828000932929009833
      33009E393900C25C5C00C26262009A4C4D000000000000660000006600000066
      0000006600000066000000660000006600000066000000660000006600000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000000000A4A1A200F0F0F000F4F4
      F400F1F0F000E2E1E100C1BFBF00ABA8A900B9B7B700D4D3D300B7B5B500A8A5
      A500A29FA0009F9C9D00A2A0A000ABA8A900B5B3B200B5B3B300A7A5A6008483
      84006C6C6D00A2A0A000000000000000000000000000000000000018DC003D54
      E300F7F8FF00FFFFFF00FFFFFF00D5D8F400464ECA000509AF00141AB2001113
      AF001217A60012129C001818A2006262C000E7E7F600FFFFFF00FFFFFF00DADA
      E90018187A0000007100000000000000000000000000B4817600C36E6B00CC65
      6500CB666600CE676700B5565600AE7C7B00C5AAA800A6656500A16060009D64
      64009E9F9F00B4B9B800D3D6D400ECEFEC00FFFFFF00C3828100902626009530
      30009C373700C15B5B00C26262009A4C4D00000000000066000000000000AD83
      7D00F9ECD800F9EBD500F8E9D200F8E8CF00F7E6CD00F7E5C900F6E4C600F6E2
      C300F5E0C000F5DFBD00F4DEBB00F4DDB700F4DBB500F3DAB200F3D9AF00F3D7
      AD00F2D7AB00B3897B00000000000066000000000000A4A1A200E6E5E500DBDA
      DA00BAB8B800A9A6A700BAB8B800D6D5D600DFE0DF00E4E3E300E8E7E700D8D6
      D600C9C7C700BAB8B800AFACAD00A5A2A300A19E9F00A09D9E00A7A4A400B1AE
      AE00B6B4B400A7A5A5000000000000000000000000000024E6000928E200CDD3
      F800FFFFFF00FFFFFF00CACEF4001B2ACA000206BB00242FC3001F2FCD00181A
      BD003A3BB4003435AC002C2CAA0010109A003030AC00E1E1F300FFFFFF00FFFF
      FF007D7EB90000006B0000008B000000000000000000B4817600C36E6B00CC65
      6500CB666600CE676700BD5C5C00B9717200D3A7A500C9A0A000BF999900B894
      9400B18D8D00B18D8D00C39F9E00D8B2B100E6C2C000C5777600A73F3F00AA45
      4500AE494900C6606000C26162009A4C4D00000000000066000000000000B288
      7E00FAEEDB00F9ECD9000066000000660000F8E9D000F7E7CD00006600000066
      000000660000006600000066000000660000006600000066000000660000F3D9
      B000F2D8AE00B3897B00000000000066000000000000A4A1A200B2B0B100A9A7
      A700BBBABA00D4D4D400DCDDDD00D9D9D900D5D5D500ECEBEB00F8F7F700F6F6
      F600F1F0F000E7E6E600DAD9D900CDCCCC00C0BEBE00B5B3B300AAA8A800A3A1
      A100A19E9F009D9A9B00000000000000000000000000001EE9004A64EA00FFFF
      FF00FFFFFF00EDEFFA00263EDA00000ECB00071EC900151EC4000F1AC5001821
      BF00272AB0002122A7001C1CA2001212A100000093004545B600FAFAFD00FFFF
      FF00E1E1EC0015158300000089000000000000000000B4817600C36E6B00CD66
      6600CD666600CD666600CC656500CC636300CB616100CB626200CB626200CC61
      6200CC616200CB616100CA5F5F00CA5F5F00C95F5F00CB626200CC656500CC63
      6300CD666600CE676700C06061009A4C4D00000000000066000000000000B68B
      8000FBF0E000FAEFDD000066000000660000F8EAD400F8E9D100F7E7CE00F7E6
      CB00F6E4C800F6E4C500F5E1C200F5E0BF00F5DEBC00F4DDB900F4DCB700F4DB
      B400F3D9B100B3897B00000000000066000000000000A4A1A200BCBABB00D5D4
      D400DADADA00D7D7D700D6D6D600D3D3D300E3E3E300F7F6F600C5C3C400C6BC
      C400D1CFD000E1E0E000E8E8E800E9E9E900E2E2E200D9D9D900CFCECE00C4C3
      C300BCBABA00A8A5A6000000000000000000002AF2000020EE0090A2F700FFFF
      FF00FFFFFF007B8EF0000013DB00001CD500041BCF000C15C7000D19C4001823
      BE002124AF001D1DA50010109F000606A00000009A0000009500A2A3D800FFFF
      FF00FFFFFF006464AD00000089000000820000000000B4817600C36E6B00C660
      6000C15D5C00C4636100C86C6B00CB727200CD777600CD777600CD777600CD77
      7600CD777600CD777600CD777600CD777600CD777600CD777600CD777600CD79
      7800CD6F6F00CD666600C06061009A4C4D000000000000660000000000008B6A
      6100BCB5AA00BBB3A700BAB2A500BBB2A400BBB1A200BAAFA000BAAF9D00BAAE
      9B00BAAD9900B9AC9700B9AB9400B8A99200B8A99000B8A78E00B8A68B00B7A5
      8A00B7A5870086675D00000000000066000000000000A4A1A200D6D6D600D8D8
      D800D6D6D600D6D6D600D4D4D400E0E0E000F7F6F600C0BCBE00AEB2AD0080C1
      8400B2B6B100AEAAAC00B0AFAF00BCBBBB00CAC9C900D8D7D700DCDCDC00DCDC
      DC00DADADA00AFAEAE000000000000000000002CF6000430F200CED7FE00FFFF
      FF00F3F6FF001D42EE00001FE5000A2CE0000F2CDA000C16CF002B39CB002D34
      BD002D30B000292BAE000C0CAB000F15AD00080BA500000097004242B400FDFD
      FE00FFFFFF00A2A3D800000097000000650000000000B4827600C46F6C00B04E
      4A00A5494400B56C6800C48F8C00D0ABA900D7BCBB00D8BFBE00D8BEBD00D8BE
      BD00D8BEBD00D8BEBD00D8BEBD00D8BEBD00D8BEBD00D8BEBD00D8BEBD00D8C3
      C200D1909000CC616100C06061009A4C4D000000000000660000006600000065
      0000006400000063000000630000006400000065000000660000006600000066
      0000006600000066000000660000006600000066000000660000006600000066
      0000006600000066000000660000006600000000000000000000BFBDBE00DBDB
      DB00D8D9D900D9D9D900E6E6E600EAE9E900B7B5B500BDBBBC00F2F2F100D4F1
      D500EBEEEB00E7E5E600FAC0AF00C1BFC000B3B1B100AAA7A800AFACAD00BDBB
      BB00BDBBBC00B6B3B4000000000000000000002DFB001741F700EDF1FF00FFFF
      FF00D4DCFF000430F5000022ED009BAAF600F0F2FD00E6E6FB00E3E5FB00DDDD
      F300DBDBF400E1E2F600E7E7F700EFEFFA00787CD10000009C001618A600F2F2
      FA00FFFFFF00C3C6EA000308A7000000740000000000B4827600C46E6B00AC45
      4100CE9E9A00FAF5F300F6EDEC00F7EFEE00F8F1F000F8F1F000F8F1F000F8F1
      F000F8F1F000F8F1F000F8F1F000F8F1F000F8F1F000F8F1F000FAF3F200EEE5
      E400CD8E8D00C3595900C06061009A4D4E00000000000000000000000000BA90
      8000E6E0D600DED8CD00DED6CA00E4DCCF00F0E7D600F7ECDA00F9EEDA00F9EC
      D600F8EAD400F7E9D100F7E7CE00F7E6CB00F7E4C800F6E4C500F6E2C200F5E0
      BF00F4DFBC00B48B7E000000000000000000000000000000000000000000B5B3
      B400CAC9C900D6D5D500C6C4C400AEACAC00CCCACA00F7F6F600F7F6F600F7F2
      F600EFEDED00EBEAEA00E9E9E900E8E8E800E2E2E200D9D9D900CDCDCD00AAA8
      A900A5A2A3000000000000000000000000000336FF00365CFC00F7F8FF00FFFF
      FF00C6D2FF000233FD000026F500AEBCFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00878CDA000000A5000C12AA00EDEF
      FA00FFFFFF00CBCCEC00050DA9000002A30000000000B4827600C46E6B00AC45
      4100D2A6A300FFFFFF00FBF5F400FBF5F400FBF5F400FBF5F400FBF5F400FBF5
      F400FBF5F400FBF5F400FBF5F400FBF5F400FBF5F400FBF5F400FDF7F600EFE7
      E600CC8D8C00C1575700C06061009A4D4E00000000000000000000000000B58C
      7A00CDC9C100BDB8B00000730000007C0000E5DCCF00F4EADB00983300009933
      000099330000993300009933000099330000993300009933000099330000F6E2
      C300F6E1C000B48B7E0000000000000000000000000000000000000000000000
      000000000000A19E9F00BBBABA00DCDCDC00CDCDCD00ADAEAE00C9C9C900DDDC
      DC00E6E5E500E8E7E700E6E6E600E4E4E400E5E5E500E0E0E000C5C5C500BAB7
      B800000000000000000000000000000000002853FF005274FF00F5F7FF00FFFF
      FF00D9E1FF000537FF00002BFD00829AFE00CAD3FC00C9D0FB00D9DFFA00E5E8
      FA00E1E2F800C7CDF500C5CAF300CACFF200656ED4000001AE001B24B700F5F6
      FC00FFFFFF00C3C6EA00020CAD000005A90000000000B4827600C46E6B00AC45
      4100D1A4A100FFFFFD00F8F2F100F8F1F000F8F2F100F8F2F100F8F2F100F8F2
      F100F8F2F100F8F2F100F8F2F100F8F2F100F8F2F100F8F1F000FBF5F400EFE6
      E500CC8D8C00C1575700C06061009A4D4E000000000000000000000000000066
      000000660000006600000066000000710000D9D2C600EDE4D700F4EBDC00F8ED
      DC00F8EDDB00F9ECD900F9EBD600F8EAD300F8E8D000F7E7CD00F6E6CA00F7E4
      C600F6E2C400B48B7E0000000000000000000000000000000000000000000000
      000000000000B1AFB000F6F7F700F7F6F500E2DFDE00BCBABA00BABBBB00C4C7
      C800D4D7D800D5D8D800D8D9D900D8D8D800C6C5C600ADABAC00BAB7B8000000
      000000000000000000000000000000000000466BFF005B7CFF00EDF1FF00FFFF
      FF00F7F8FF002652FF00002EFF000336FF000434F9000724EE002D41E1002239
      DB002536DA00152CD5000413CE00041CCA000217C4000004B8004C57CC00FEFE
      FF00FFFFFF00A1A6E3000003AE000008AD0000000000B4827600C46E6B00AC45
      4100D1A4A100FFFFFE00E9E4E300CCCACA00CDCCCC00CDCCCC00CDCCCC00CDCC
      CC00CDCCCC00CDCCCC00CDCCCC00CDCCCC00CDCCCC00CAC9C800E6E2E200F2E8
      E700CC8D8C00C1575700C06061009A4D4E000000000000000000000000000066
      000013AA220010A61D0000660000ADA9A200C8C1B900D9D2C800E5DED000F0E8
      D900F8EEDD00FAEFDD00F9EDD900F9ECD700F8EAD300F8E8D100F8E7CE00F7E6
      CB00F6E5C800B48B7E0000000000000000000000000000000000000000000000
      00000000000000000000EED9D800FFEAE200FFE5DA00FEDFD400FADDD300F6DC
      D300F1DCD600ECDEDA00E6E1DF00DBDBDB00C8C7C80000000000000000000000
      0000000000000000000000000000000000000838FF005274FF00E1E7FF00FFFF
      FF00FFFFFF008FA6FF000027FF000031FF000031FF000B2BF6000221F2001E3D
      EC00011ADF000020DB000012D5000019D2000016CB00000FC400B3B7E900FFFF
      FF00FFFFFF005965D7000002B1000000000000000000B4827600C46E6B00AC45
      4100D1A4A100FFFFFE00F5EEEE00EDE8E700EDE8E700EDE8E700EDE8E700EDE8
      E700EDE8E700EDE8E700EDE8E700EDE8E700EDE8E700ECE7E600F5F0F000F1E7
      E600CC8D8C00C1575700C06061009A4D4E000000000000000000000000000066
      00001AB12D0016AD260000660000A19F9900ADA9A300BAB5AD00CDC6BC00E5DE
      D100F5ECDE00FAF0E000FAEFDD00FAEEDB00F9ECD800F8EBD500F8E9D200F7E8
      CF00F7E7CC00B48B7E0000000000000000000000000000000000000000000000
      00000000000000000000E5C4C100FFE7DD00FFE1D500FFDACE00FFD4C500FFCE
      BC00FFC9B700FFC7B300FDC1AE00EBD2CF000000000000000000000000000000
      00000000000000000000000000000000000000000000466BFF00CAD5FF00FFFF
      FF00FFFFFF00F7F8FF003C63FF000027FF000033FF00153CFF001B42FE00153B
      F500021CE8001230E500041EE1000020DB00000DD2006071E200FFFFFF00FFFF
      FF00DFE2F7000F1FC100000BB8000000000000000000B4827600C46E6B00AC45
      4100D1A4A100FFFFFE00ECE7E600D4D1D100D5D2D200D5D2D200D5D2D200D5D2
      D200D5D2D200D5D2D200D5D2D200D5D2D200D5D2D200D2D0D000E9E5E500F1E8
      E700CC8D8C00C1575700C06061009A4D4E000066000000660000006600000066
      000022B93B001DB5320000660000006600000066000000660000BDB8B000DFD8
      CF00F4ECE000FAF1E200FBF1E100FAEFDF00FAEEDC00F9ECD800F8EBD600F8EA
      D300F8E8CF00B48B7E0000000000000000000000000000000000000000000000
      00000000000000000000E6C5C100FFEBE100FFE1D500FFDACE00FFD5C700FECF
      BF00FECAB800FFC4B000F9B9A700000000000000000000000000000000000000
      000000000000000000000000000000000000000000006585FF0095AAFF00FEFE
      FF00FFFFFF00FFFFFF00DFE5FF00335AFF000229FF000832FF001742FF001B46
      FF001838EE00082FEB000222E9000017E1004A64EA00F1F3FD00FFFFFF00FFFF
      FF00727FDE000007BE00000000000000000000000000B4827600C46E6B00AC45
      4100D1A4A100FFFFFE00F2ECEB00E5E0DF00E5E1E000E5E1E000E5E1E000E5E1
      E000E5E1E000E5E1E000E5E1E000E5E1E000E5E1E000E4DFDF00F2EDEC00F1E7
      E600CC8D8C00C1575700C06061009A4D4E00006600003CD4620036CF5A0030C9
      52002CC3490026BE410021B838001CB4310017AF2A000066000073260000882D
      000095320000983300009933000099330000993300009933000099330000F9EC
      D600F8EAD300B48B7E0000000000000000000000000000000000000000000000
      00000000000000000000ECCDC800FFEBE100FFE1D500FFDACE00FFD5C700FECF
      BF00FECAB800FFC5B100F0B4A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006281FF00E1E7
      FF00FFFFFF00FFFFFF00FFFFFF00EDF1FF006C87FF00113DFF00022AFF000023
      FF000021FC000025F8001B3FF3008497F500F8FAFF00FFFFFF00FFFFFF00D2D6
      F4000F23CB000011C300000000000000000000000000B4827600C46E6B00AC45
      4100D1A4A100FFFFFE00F2ECEB00E5E0DF00E5E1E000E5E1E000E5E1E000E5E1
      E000E5E1E000E5E1E000E5E1E000E5E1E000E5E1E000E4DFDF00F2EDEC00F1E7
      E600CC8D8C00C1575700C06061009A4D4E000066000044DD70003FD868003AD2
      600035CD58002FC74F002AC1470025BD3E0020B8360000660000CDCAC400E6E3
      DB00F6F1E700FCF5EA00FCF4E800FBF3E500FAF1E300FAF0E000FAEFDD00F9EE
      DA00F9ECD700B48B7E0000000000000000000000000000000000000000000000
      00000000000000000000E8CCC800FFE9DF00FFE1D500FFDACE00FFD5C700FECF
      BF00FECAB800FFC5B100FAC0AF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000095AAFF008FA6
      FF00F3F6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4DCFF009AADFF007F98
      FF00829AFE00A1B3FF00E6EBFF00FFFFFF00FFFFFF00FFFFFF00D9DEF900293E
      D8000011CB0000000000000000000000000000000000B4827600C46E6B00AC45
      4100D1A4A100FFFFFE00EBE5E500D2CFCF00D3D1D000D3D1D000D3D1D000D3D1
      D000D3D1D000D3D1D000D3D1D000D3D1D000D3D1D000D0CECE00E9E4E300F2E8
      E700CC8D8C00C1575700C06061009A4D4E000066000000660000006600000066
      00003ED7660038D15E0000660000006600000066000000660000E7E4E000F3EF
      E900FBF6EE00FCF7EE00FCF5EB00FBF5E900FCF3E700FBF2E300FAF0E100FAEF
      DE00F9EDDB00B48B7E0000000000000000000000000000000000000000000000
      00000000000000000000E8CCC800FFE7DD00FFE1D500FFDACE00FFD5C700FECF
      BF00FFCAB800FAC0AF00FAC0AF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007590
      FF00A1B3FF00F3F6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B8C2F600223ADD000013
      D3000000000000000000000000000000000000000000B4827600C46E6B00AC45
      4100D2A5A200FFFFFF00FCF5F400FDF6F500FDF6F500FDF6F500FDF6F500FDF6
      F500FDF6F500FDF6F500FDF6F500FDF6F500FDF6F500FDF6F500FFF8F700F1E7
      E600CC8D8C00C3595900C16162009A4D4E000000000000000000000000000066
      000046DE730041DA6D0000660000BCBBBA00DBDAD800F0EEEB00F8F5F100FBF8
      F300FCF8F200FDF8F100FDF7EE00FCF5EC00FBF4E900FBF3E700FBF2E500FBF1
      E100FAEFDE00B48B7E0000000000000000000000000000000000000000000000
      000000000000E7C9C500FFF1E900FFE7DD00FFE1D500FFDACE00FED5C700FED0
      BF00FFCCB900FAC0AF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000091A7FF00849CFF00CED7FE00F7F8FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFBFE00CAD1FB006A81F100082BE200001ADC000000
      00000000000000000000000000000000000000000000B4827600BF6F6B00AA45
      4100CB9E9B00F3F3F200EFE9E800EFE9E800EFE9E800EFE9E800EFE9E800EFE9
      E800EFE9E800EFE9E800EFE9E800EFE9E800EFE9E800EFE9E800F0ECEB00E8E0
      DF00C88B8A00B8535300B85C5D009A4D4E000000000000000000000000000066
      00004DE67F0049E2790000660000B1856A00C7967700D5A07F00D9A38100DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA4820000000000000000000000000000000000000000000000
      000000000000E8CCC800FFF4EB00FFEBE100FFE6D900FFDFD200FFD9CA00FFD4
      C300F1BDB000FAC0AF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007590FF0089A0FF00B9C7FF00DBE2FF00E5EAFF00E3E9
      FF00D9E1FF00BECAFD007B94FB003355F200072EE9000025E500000000000000
      0000000000000000000000000000000000000000000000000000AD736C00A145
      4000B6898700C6CBCB00C4C3C300C4C3C300C4C3C300C4C3C300C4C3C300C4C3
      C300C4C3C300C4C3C300C4C3C300C4C3C300C4C3C300C4C3C300C3C3C300CFC9
      C800B8848400964445009A4C4D00000000000000000000000000000000000066
      0000006600000066000000660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9B3B100E8CCC800E7C7C300E7C5BF00E7C2BB00E7BEB800E7BCB400E5B6
      AF00FAC0AF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F98FF006585FF006987FF006987
      FF005B7CFF003C60FB003559F7003355F2000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00E00007000000000000000000E0000700
      0000000000000000E00007000000000000000000E00007000000000000000000
      E00007000000000000000000E00007000000000000000000E000070000000000
      00000000E00007000000000000000000E0000700000000000000000000000000
      0000000000000000600006000000000000000000600006000000000000000000
      600006000000000000000000000000000000000000000000E000070000000000
      00000000E00007000000000000000000E00007000000000000000000E0000700
      0000000000000000E00007000000000000000000E00007000000000000000000
      E00007000000000000000000E00007000000000000000000E000070000000000
      00000000E00007000000000000000000FFFFFFFF81FFE00003800FFFFFFFFFFE
      007FE000030007FF0001FFF8001FE000030007FF0001FFF0000FE000030007FF
      0001FFE00007E000030000FF0001FFC00003E0000300003F0001FFC000038000
      0000041F0001FF800001A0000200060F0001FF800001A000020000000001FF00
      0000A000020000000001FF000000A000020000000001FF000000800000000000
      0001FF000000E000030000000001F0000000E00003800000000180000000E000
      03FFE000000000000001E00003FFE000000000800001E00003FFE00000000080
      0003000003FFE000000000C00003000003FFE000000000C00007000003FFE000
      FF8000E0000F000003FFE000FFE080F0001FE00003FFE001FFFFF0FC003FE000
      03FFE003FFFFFFFF00FFFFFFFFFFE007C00001E00003FFFFFFFF81FF800000E0
      0003FF0C1FFE007F800000E00003FC0007F8001F800000E00003F00001F0000F
      800000E00003E00003E00007800000E00003800003C000038000008000008000
      03C00003800000A00002800003800001800000A00002800003800001800000A0
      0002800003000000800000A00002800003000000800000800000C00003000000
      800000E00003E00007000000800000E00003F8000F000000800000E00003F800
      1F000000800000E00003FC007F000001800000E00003FC00FF80000180000000
      0003FC01FF800003800000000003FC01FFC00003800000000003FC01FFC00007
      800000000003FC01FFE0000F800000E00003F803FFF0001F800000E00003F803
      FFFC003FC00001E1FFFFF007FFFF00FF00000000000000000000000000000000
      000000000000}
  end
  object DocTipParam: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      'select *'
      'from doc_tip_param'
      'where doc_tip_param.struk_id = :struk_id '
      'and doc_tip_param.tip_dok_id = :tip_dok_id'
      'order by doc_tip_param.tip_param_id')
    UpdateObject = DocTipParamUpdate
    Macros = <>
    Left = 944
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'struk_id'
        ParamType = ptInputOutput
      end
      item
        DataType = ftInteger
        Name = 'tip_dok_id'
        ParamType = ptInputOutput
      end>
    object DocTipParamTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOC_TIP_PARAM"."TIP_DOK_ID"'
      Required = True
    end
    object DocTipParamPARAM_NAME: TIBStringField
      FieldName = 'PARAM_NAME'
      Origin = '"DOC_TIP_PARAM"."PARAM_NAME"'
      Size = 50
    end
    object DocTipParamPARAM_TYPE: TIBStringField
      FieldName = 'PARAM_TYPE'
      Origin = '"DOC_TIP_PARAM"."PARAM_TYPE"'
      FixedChar = True
      Size = 1
    end
    object DocTipParamDEFAULT_VALUE: TIBStringField
      FieldName = 'DEFAULT_VALUE'
      Origin = '"DOC_TIP_PARAM"."DEFAULT_VALUE"'
      Size = 100
    end
    object DocTipParamLOOKUP: TIBStringField
      FieldName = 'LOOKUP'
      Origin = '"DOC_TIP_PARAM"."LOOKUP"'
      FixedChar = True
      Size = 10
    end
    object DocTipParamKEY_FIELD: TIBStringField
      FieldName = 'KEY_FIELD'
      Origin = '"DOC_TIP_PARAM"."KEY_FIELD"'
      FixedChar = True
      Size = 10
    end
    object DocTipParamRESULT_FIELD: TIBStringField
      FieldName = 'RESULT_FIELD'
      Origin = '"DOC_TIP_PARAM"."RESULT_FIELD"'
      FixedChar = True
      Size = 10
    end
    object DocTipParamKOL_PARAM: TFloatField
      FieldName = 'KOL_PARAM'
      Origin = '"DOC_TIP_PARAM"."KOL_PARAM"'
    end
    object DocTipParamCENA_PARAM: TIBBCDField
      FieldName = 'CENA_PARAM'
      Origin = '"DOC_TIP_PARAM"."CENA_PARAM"'
      Precision = 18
      Size = 2
    end
    object DocTipParamSTAVKA_NDS: TFloatField
      FieldName = 'STAVKA_NDS'
      Origin = '"DOC_TIP_PARAM"."STAVKA_NDS"'
    end
    object DocTipParamSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOC_TIP_PARAM"."STRUK_ID"'
    end
    object DocTipParamTIP_PARAM_ID: TSmallintField
      FieldName = 'TIP_PARAM_ID'
      Origin = '"DOC_TIP_PARAM"."TIP_PARAM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object DSDocTipParam: TDataSource
    DataSet = DocTipParam
    Left = 896
    Top = 16
  end
  object DocTipParamUpdate: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  TIP_PARAM_ID,'
      '  TIP_DOK_ID,'
      '  PARAM_NAME,'
      '  PARAM_TYPE,'
      '  DEFAULT_VALUE,'
      '  LOOKUP,'
      '  KEY_FIELD,'
      '  RESULT_FIELD,'
      '  KOL_PARAM,'
      '  CENA_PARAM,'
      '  STAVKA_NDS,'
      '  STRUK_ID'
      'from doc_tip_param '
      'where'
      '  TIP_PARAM_ID = :TIP_PARAM_ID'
      'order by '
      '  TIP_PARAM_ID')
    ModifySQL.Strings = (
      'update doc_tip_param'
      'set'
      '  DEFAULT_VALUE = :DEFAULT_VALUE,'
      '  PARAM_NAME = :PARAM_NAME,'
      '  PARAM_TYPE = :PARAM_TYPE,'
      '  STRUK_ID = :STRUK_ID,'
      '  TIP_DOK_ID = :TIP_DOK_ID'
      'where'
      '  TIP_PARAM_ID = :OLD_TIP_PARAM_ID')
    InsertSQL.Strings = (
      'insert into doc_tip_param'
      '  (DEFAULT_VALUE, PARAM_NAME, PARAM_TYPE, STRUK_ID, TIP_DOK_ID)'
      'values'
      
        '  (:DEFAULT_VALUE, :PARAM_NAME, :PARAM_TYPE, :STRUK_ID, :TIP_DOK' +
        '_ID)')
    DeleteSQL.Strings = (
      'delete from doc_tip_param'
      'where'
      '  TIP_PARAM_ID = :OLD_TIP_PARAM_ID')
    AutoCommit = True
    UpdateTransaction = DM1.IBT_Write
    Left = 976
    Top = 16
  end
  object tempQuery: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT MATROP.KSM_ID, MATROP.NMAT, MATROP.KEI_ID, EDIZ.NEIS'
      'FROM MATROP'
      '   INNER JOIN EDIZ ON (MATROP.KEI_ID = EDIZ.KEI_ID)'
      'WHERE matrop.ksm_id = :ksm_id')
    Left = 856
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ksm_id'
        ParamType = ptUnknown
      end>
    object tempQueryKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"MATROP"."KSM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tempQueryNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
    object tempQueryKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"MATROP"."KEI_ID"'
    end
    object tempQueryNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
  end
  object Ceh_NormZ: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      
        'SELECT CEH_NORMZ. KSM_ID_MAT, CEH_NORMZ. KSM_ID_PR, CEH_NORMZ.DE' +
        'CZNAK'
      '  FROM CEH_NORMZ'
      '  INNER JOIN MATROP ON ( CEH_NORMZ. KSM_ID_MAT = MATROP.KSM_ID)'
      
        '   INNER JOIN RAZDEL ON (CEH_NORMZ. RAZDEL_ID = RAZDEL. RAZDEL_I' +
        'D)'
      'where CEH_NORMZ.KSM_ID_PR = :ksm_id_pr'
      '')
    Macros = <>
    Left = 1056
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ksm_id_pr'
        ParamType = ptUnknown
      end>
    object Ceh_NormZKSM_ID_MAT: TIntegerField
      FieldName = 'KSM_ID_MAT'
      Origin = '"CEH_NORMZ"."KSM_ID_MAT"'
      Required = True
    end
    object Ceh_NormZKSM_ID_PR: TIntegerField
      FieldName = 'KSM_ID_PR'
      Origin = '"CEH_NORMZ"."KSM_ID_PR"'
      Required = True
    end
    object Ceh_NormZDECZNAK: TSmallintField
      FieldName = 'DECZNAK'
      Origin = '"CEH_NORMZ"."DECZNAK"'
    end
  end
  object cenaQ: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      
        'select ostatki.ksm_id, ostatki.struk_id, ostatki.cena_uch, ostat' +
        'ki.ksm_idpr,'
      'ostatki.kei_id'
      'from ostatki'
      'where ostatki.struk_id = :struk_id'
      'order by ostatki.ksm_id, ostatki.ksm_idpr')
    Macros = <>
    Left = 592
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end>
    object cenaQKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"OSTATKI"."KSM_ID"'
      Required = True
    end
    object cenaQSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
      Origin = '"OSTATKI"."STRUK_ID"'
      Required = True
    end
    object cenaQCENA_UCH: TFloatField
      FieldName = 'CENA_UCH'
      Origin = '"OSTATKI"."CENA_UCH"'
    end
    object cenaQKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object cenaQKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"OSTATKI"."KEI_ID"'
      Required = True
    end
  end
  object q_specKart: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      
        'select document.ndok, document.struk_id, document.klient_id, doc' +
        'ument.date_dok,'
      
        'document.tip_op_id, document.tip_dok_id, kart.ksm_id, kart.kol_r' +
        'ash, kart.kart_id,'
      'kart.stroka_id, kart.cena, kart.cena_vp, kart.doc_id'
      'from kart'
      'inner join document on kart.doc_id = document.doc_id'
      'where document.struk_id = :struk_id'
      'and document.date_dok between :dat1 and :dat2'
      'and document.tip_op_id = 32 and document.tip_dok_id = 198'
      'and %usl')
    UpdateObject = upd_specKart
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 640
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
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
    object q_specKartNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object q_specKartSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
    end
    object q_specKartKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
    end
    object q_specKartDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object q_specKartTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
    end
    object q_specKartTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
    end
    object q_specKartKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object q_specKartKOL_RASH: TFMTBCDField
      FieldName = 'KOL_RASH'
      Origin = '"KART"."KOL_RASH"'
      Precision = 18
      Size = 6
    end
    object q_specKartKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
    object q_specKartSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_specKartCENA: TIBBCDField
      FieldName = 'CENA'
      Origin = '"KART"."CENA"'
      Precision = 18
      Size = 4
    end
    object q_specKartCENA_VP: TIBBCDField
      FieldName = 'CENA_VP'
      Origin = '"KART"."CENA_VP"'
      Precision = 18
      Size = 4
    end
    object q_specKartDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"KART"."DOC_ID"'
      Required = True
    end
  end
  object q_specDoc: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      
        'select document.doc_id, document.ndok, document.struk_id, docume' +
        'nt.klient_id, document.date_dok,'
      'document.tip_op_id, document.tip_dok_id, document.date_op'
      'from document'
      'where document.struk_id = :struk_id'
      'and document.date_dok between :dat1 and :dat2'
      'and document.tip_op_id = 32 and document.tip_dok_id = 198'
      'and %usl')
    UpdateObject = upd_specDoc
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 680
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
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
    object q_specDocDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_specDocNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object q_specDocSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object q_specDocKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object q_specDocDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object q_specDocTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object q_specDocTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
      Required = True
    end
    object q_specDocDATE_OP: TDateField
      FieldName = 'DATE_OP'
      Origin = '"DOCUMENT"."DATE_OP"'
    end
  end
  object upd_specKart: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  NDOK,'
      '  STRUK_ID,'
      '  KLIENT_ID,'
      '  DATE_DOK,'
      '  TIP_OP_ID,'
      '  TIP_DOK_ID,'
      '  KSM_ID,'
      '  KOL_RASH,'
      '  KART_ID,'
      '  STROKA_ID,'
      '  CENA,'
      '  CENA_VP,'
      '  DOC_ID'
      'from kart '
      'where'
      '  STROKA_ID = :STROKA_ID')
    ModifySQL.Strings = (
      'update kart'
      'set'
      '  CENA = :CENA,'
      '  CENA_VP = :CENA_VP,'
      '  DOC_ID = :DOC_ID,'
      '  KART_ID = :KART_ID,'
      '  KOL_RASH = :KOL_RASH,'
      '  KSM_ID = :KSM_ID,'
      '  STROKA_ID = :STROKA_ID'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    InsertSQL.Strings = (
      'insert into kart'
      '  (CENA, CENA_VP, DOC_ID, KART_ID, KOL_RASH, KSM_ID, STROKA_ID)'
      'values'
      
        '  (:CENA, :CENA_VP, :DOC_ID, :KART_ID, :KOL_RASH, :KSM_ID, :STRO' +
        'KA_ID)')
    DeleteSQL.Strings = (
      'delete from kart'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = DM1.IBT_Write
    Left = 640
    Top = 96
  end
  object upd_specDoc: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  DOC_ID,'
      '  NDOK,'
      '  STRUK_ID,'
      '  KLIENT_ID,'
      '  DATE_DOK,'
      '  TIP_OP_ID,'
      '  TIP_DOK_ID,'
      '  DATE_OP'
      'from document '
      'where'
      '  DOC_ID = :DOC_ID')
    ModifySQL.Strings = (
      'update document'
      'set'
      '  DATE_DOK = :DATE_DOK,'
      '  DATE_OP = :DATE_OP,'
      '  DOC_ID = :DOC_ID,'
      '  KLIENT_ID = :KLIENT_ID,'
      '  NDOK = :NDOK,'
      '  STRUK_ID = :STRUK_ID,'
      '  TIP_DOK_ID = :TIP_DOK_ID,'
      '  TIP_OP_ID = :TIP_OP_ID'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    InsertSQL.Strings = (
      'insert into document'
      
        '  (DATE_DOK, DATE_OP, DOC_ID, KLIENT_ID, NDOK, STRUK_ID, TIP_DOK' +
        '_ID, TIP_OP_ID)'
      'values'
      
        '  (:DATE_DOK, :DATE_OP, :DOC_ID, :KLIENT_ID, :NDOK, :STRUK_ID, :' +
        'TIP_DOK_ID, '
      '   :TIP_OP_ID)')
    DeleteSQL.Strings = (
      'delete from document'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    AutoCommit = False
    UpdateTransaction = DM1.IBT_Write
    Left = 680
    Top = 96
  end
  object q_specOst: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'select ostatki.*'
      'from ostatki'
      'where ostatki.struk_id = :struk_id'
      'and ostatki.ksm_id = :ksm_id'
      'and ostatki.account = '#39'10/11'#39
      'and coalesce(ostatki.ksm_idpr, 0) = 0'
      'and coalesce(ostatki.ot_s, 0) <> 0')
    Macros = <>
    Left = 728
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ksm_id'
        ParamType = ptUnknown
      end>
    object q_specOstMES: TSmallintField
      FieldName = 'MES'
      Origin = '"OSTATKI"."MES"'
      Required = True
    end
    object q_specOstSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
      Origin = '"OSTATKI"."STRUK_ID"'
      Required = True
    end
    object q_specOstKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"OSTATKI"."KSM_ID"'
      Required = True
    end
    object q_specOstONM_S: TFMTBCDField
      FieldName = 'ONM_S'
      Origin = '"OSTATKI"."ONM_S"'
      Precision = 18
      Size = 6
    end
    object q_specOstCENA_UCH: TFloatField
      FieldName = 'CENA_UCH'
      Origin = '"OSTATKI"."CENA_UCH"'
    end
    object q_specOstGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"OSTATKI"."GOD"'
      Required = True
    end
    object q_specOstSPROD_ID: TIntegerField
      FieldName = 'SPROD_ID'
      Origin = '"OSTATKI"."SPROD_ID"'
    end
    object q_specOstKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"OSTATKI"."KEI_ID"'
      Required = True
    end
    object q_specOstONM_NZ: TFMTBCDField
      FieldName = 'ONM_NZ'
      Origin = '"OSTATKI"."ONM_NZ"'
      Precision = 18
      Size = 6
    end
    object q_specOstOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object q_specOstOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object q_specOstKOL_TRANS: TFloatField
      FieldName = 'KOL_TRANS'
      Origin = '"OSTATKI"."KOL_TRANS"'
    end
    object q_specOstNOMU_ID_TRANS: TSmallintField
      FieldName = 'NOMU_ID_TRANS'
      Origin = '"OSTATKI"."NOMU_ID_TRANS"'
    end
    object q_specOstKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"OSTATKI"."KART_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_specOstSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
      Origin = '"OSTATKI"."SERIA_ID"'
    end
    object q_specOstOT_FD: TFMTBCDField
      FieldName = 'OT_FD'
      Origin = '"OSTATKI"."OT_FD"'
      Precision = 18
      Size = 6
    end
    object q_specOstONM_FD: TFMTBCDField
      FieldName = 'ONM_FD'
      Origin = '"OSTATKI"."ONM_FD"'
      Precision = 18
      Size = 6
    end
    object q_specOstNOMU_ID_GRP: TSmallintField
      FieldName = 'NOMU_ID_GRP'
      Origin = '"OSTATKI"."NOMU_ID_GRP"'
    end
    object q_specOstKOL_GRP: TFloatField
      FieldName = 'KOL_GRP'
      Origin = '"OSTATKI"."KOL_GRP"'
    end
    object q_specOstVES_TRANS: TIBBCDField
      FieldName = 'VES_TRANS'
      Origin = '"OSTATKI"."VES_TRANS"'
      Precision = 9
      Size = 2
    end
    object q_specOstVOL_TRANS: TFMTBCDField
      FieldName = 'VOL_TRANS'
      Origin = '"OSTATKI"."VOL_TRANS"'
      Precision = 18
      Size = 6
    end
    object q_specOstUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"OSTATKI"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object q_specOstORG_RESERV: TIntegerField
      FieldName = 'ORG_RESERV'
      Origin = '"OSTATKI"."ORG_RESERV"'
    end
    object q_specOstOT_DOKUM: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'OT_DOKUM'
      Origin = '"OSTATKI"."OT_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object q_specOstONM_DOKUM: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ONM_DOKUM'
      Origin = '"OSTATKI"."ONM_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object q_specOstDATE_TIME_UPDATE: TDateTimeField
      FieldName = 'DATE_TIME_UPDATE'
      Origin = '"OSTATKI"."DATE_TIME_UPDATE"'
    end
    object q_specOstKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object q_specOstRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object q_specOstINV_ID: TIntegerField
      FieldName = 'INV_ID'
      Origin = '"OSTATKI"."INV_ID"'
    end
    object q_specOstACCOUNT: TIBStringField
      FieldName = 'ACCOUNT'
      Origin = '"OSTATKI"."ACCOUNT"'
      FixedChar = True
      Size = 5
    end
    object q_specOstSUMMA_KART: TIBBCDField
      FieldName = 'SUMMA_KART'
      Origin = '"OSTATKI"."SUMMA_KART"'
      Precision = 18
      Size = 2
    end
    object q_specOstOT_S2: TFMTBCDField
      FieldName = 'OT_S2'
      Origin = '"OSTATKI"."OT_S2"'
      Precision = 18
      Size = 6
    end
    object q_specOstKEI_ID2: TSmallintField
      FieldName = 'KEI_ID2'
      Origin = '"OSTATKI"."KEI_ID2"'
    end
    object q_specOstVOL_GRP: TFMTBCDField
      FieldName = 'VOL_GRP'
      Origin = '"OSTATKI"."VOL_GRP"'
      Precision = 18
      Size = 6
    end
    object q_specOstVES_GRP: TIBBCDField
      FieldName = 'VES_GRP'
      Origin = '"OSTATKI"."VES_GRP"'
      Precision = 9
      Size = 3
    end
    object q_specOstPROC_OV: TFMTBCDField
      FieldName = 'PROC_OV'
      Origin = '"OSTATKI"."PROC_OV"'
      Precision = 18
      Size = 6
    end
    object q_specOstCENA_OPT: TIBBCDField
      FieldName = 'CENA_OPT'
      Origin = '"OSTATKI"."CENA_OPT"'
      Precision = 18
      Size = 2
    end
    object q_specOstONM_S_P: TFMTBCDField
      FieldName = 'ONM_S_P'
      Origin = '"OSTATKI"."ONM_S_P"'
      Precision = 18
      Size = 6
    end
    object q_specOstSTRUK_ID_RELA: TIntegerField
      FieldName = 'STRUK_ID_RELA'
      Origin = '"OSTATKI"."STRUK_ID_RELA"'
    end
    object q_specOstBSO: TSmallintField
      FieldName = 'BSO'
      Origin = '"OSTATKI"."BSO"'
    end
    object q_specOstDATE_VID: TDateField
      FieldName = 'DATE_VID'
      Origin = '"OSTATKI"."DATE_VID"'
    end
    object q_specOstSROK: TIBBCDField
      FieldName = 'SROK'
      Origin = '"OSTATKI"."SROK"'
      Precision = 9
      Size = 2
    end
    object q_specOstNLK: TIntegerField
      FieldName = 'NLK'
      Origin = '"OSTATKI"."NLK"'
    end
    object q_specOstSUMMA_SPIS: TIBBCDField
      FieldName = 'SUMMA_SPIS'
      Origin = '"OSTATKI"."SUMMA_SPIS"'
      Precision = 18
      Size = 2
    end
    object q_specOstCENA_UCH_NM: TIBBCDField
      FieldName = 'CENA_UCH_NM'
      Origin = '"OSTATKI"."CENA_UCH_NM"'
      Precision = 18
      Size = 4
    end
    object q_specOstACCOUNT_OLD: TIBStringField
      FieldName = 'ACCOUNT_OLD'
      Origin = '"OSTATKI"."ACCOUNT_OLD"'
      FixedChar = True
      Size = 5
    end
  end
  object q_prixDoc: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      'select document.*'
      'from document'
      'where document.struk_id = :struk_id'
      'and document.klient_id = :klient_id'
      'and document.date_dok between :dat1 and :dat2'
      'and document.tip_op_id = 30 and document.tip_dok_id = 37'
      'and document.ndok like '#39#1056#1087'%'#39)
    Macros = <>
    Left = 808
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
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
    object q_prixDocNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object q_prixDocDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_prixDocPRIZ_ID: TSmallintField
      FieldName = 'PRIZ_ID'
      Origin = '"DOCUMENT"."PRIZ_ID"'
      Required = True
    end
    object q_prixDocTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object q_prixDocTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
      Required = True
    end
    object q_prixDocDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object q_prixDocDOK_OSN_ID: TIntegerField
      FieldName = 'DOK_OSN_ID'
      Origin = '"DOCUMENT"."DOK_OSN_ID"'
    end
    object q_prixDocSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object q_prixDocVP_ID: TSmallintField
      FieldName = 'VP_ID'
      Origin = '"DOCUMENT"."VP_ID"'
    end
    object q_prixDocKPV: TFMTBCDField
      FieldName = 'KPV'
      Origin = '"DOCUMENT"."KPV"'
      Precision = 18
      Size = 6
    end
    object q_prixDocKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object q_prixDocSUM_BRB: TIBBCDField
      FieldName = 'SUM_BRB'
      Origin = '"DOCUMENT"."SUM_BRB"'
      Precision = 18
      Size = 2
    end
    object q_prixDocSUM_ISP1: TIBBCDField
      FieldName = 'SUM_ISP1'
      Origin = '"DOCUMENT"."SUM_ISP1"'
      Precision = 18
      Size = 2
    end
    object q_prixDocSUM_ISP2: TIBBCDField
      FieldName = 'SUM_ISP2'
      Origin = '"DOCUMENT"."SUM_ISP2"'
      Precision = 18
      Size = 2
    end
    object q_prixDocSUM_VP: TIBBCDField
      FieldName = 'SUM_VP'
      Origin = '"DOCUMENT"."SUM_VP"'
      Precision = 18
      Size = 2
    end
    object q_prixDocSUM_ISP1_VP: TIBBCDField
      FieldName = 'SUM_ISP1_VP'
      Origin = '"DOCUMENT"."SUM_ISP1_VP"'
      Precision = 18
      Size = 2
    end
    object q_prixDocSUM_ISP2_VP: TIBBCDField
      FieldName = 'SUM_ISP2_VP'
      Origin = '"DOCUMENT"."SUM_ISP2_VP"'
      Precision = 18
      Size = 2
    end
    object q_prixDocNDS: TIBBCDField
      FieldName = 'NDS'
      Origin = '"DOCUMENT"."NDS"'
      Precision = 9
      Size = 2
    end
    object q_prixDocSUM_NDS: TIBBCDField
      FieldName = 'SUM_NDS'
      Origin = '"DOCUMENT"."SUM_NDS"'
      Precision = 18
      Size = 2
    end
    object q_prixDocSUM_NDS_VP: TIBBCDField
      FieldName = 'SUM_NDS_VP'
      Origin = '"DOCUMENT"."SUM_NDS_VP"'
      Precision = 18
      Size = 2
    end
    object q_prixDocDATE_OP: TDateField
      FieldName = 'DATE_OP'
      Origin = '"DOCUMENT"."DATE_OP"'
    end
    object q_prixDocDATE_VVOD: TDateTimeField
      FieldName = 'DATE_VVOD'
      Origin = '"DOCUMENT"."DATE_VVOD"'
    end
    object q_prixDocZADACHA_ID: TIBStringField
      FieldName = 'ZADACHA_ID'
      Origin = '"DOCUMENT"."ZADACHA_ID"'
      FixedChar = True
      Size = 10
    end
    object q_prixDocUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"DOCUMENT"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object q_prixDocDOV: TIntegerField
      FieldName = 'DOV'
      Origin = '"DOCUMENT"."DOV"'
    end
    object q_prixDocDATE_TIME_UPDATE: TDateTimeField
      FieldName = 'DATE_TIME_UPDATE'
      Origin = '"DOCUMENT"."DATE_TIME_UPDATE"'
    end
    object q_prixDocJORN_ID: TSmallintField
      FieldName = 'JORN_ID'
      Origin = '"DOCUMENT"."JORN_ID"'
    end
    object q_prixDocRCHET_ID: TIntegerField
      FieldName = 'RCHET_ID'
      Origin = '"DOCUMENT"."RCHET_ID"'
    end
    object q_prixDocTAG: TIntegerField
      FieldName = 'TAG'
      Origin = '"DOCUMENT"."TAG"'
    end
    object q_prixDocKPV_OLD: TFMTBCDField
      FieldName = 'KPV_OLD'
      Origin = '"DOCUMENT"."KPV_OLD"'
      Precision = 18
      Size = 6
    end
  end
  object q_prixKart: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      'select kart.*'
      'from kart'
      'where kart.doc_id = :doc_id'
      'and coalesce(kart.kol_rash, 0) <> 0')
    UpdateObject = upd_prixKart
    Macros = <>
    Left = 848
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'doc_id'
        ParamType = ptInput
      end>
    object q_prixKartDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"KART"."DOC_ID"'
      Required = True
    end
    object q_prixKartSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_prixKartKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object q_prixKartCENA: TIBBCDField
      FieldName = 'CENA'
      Origin = '"KART"."CENA"'
      Precision = 18
      Size = 4
    end
    object q_prixKartKOL_PRIH: TFMTBCDField
      FieldName = 'KOL_PRIH'
      Origin = '"KART"."KOL_PRIH"'
      Precision = 18
      Size = 6
    end
    object q_prixKartCENA_VP: TIBBCDField
      FieldName = 'CENA_VP'
      Origin = '"KART"."CENA_VP"'
      Precision = 18
      Size = 4
    end
    object q_prixKartNDS: TIBBCDField
      FieldName = 'NDS'
      Origin = '"KART"."NDS"'
      Precision = 9
      Size = 2
    end
    object q_prixKartSUM_NDS: TIBBCDField
      FieldName = 'SUM_NDS'
      Origin = '"KART"."SUM_NDS"'
      Precision = 18
      Size = 2
    end
    object q_prixKartSUM_NDS_VP: TIBBCDField
      FieldName = 'SUM_NDS_VP'
      Origin = '"KART"."SUM_NDS_VP"'
      Precision = 18
      Size = 2
    end
    object q_prixKartKOL_RASH: TFMTBCDField
      FieldName = 'KOL_RASH'
      Origin = '"KART"."KOL_RASH"'
      Precision = 18
      Size = 6
    end
    object q_prixKartKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
    object q_prixKartORG_ID_BRAK: TIntegerField
      FieldName = 'ORG_ID_BRAK'
      Origin = '"KART"."ORG_ID_BRAK"'
    end
    object q_prixKartOSNOV_BRAK_ID: TSmallintField
      FieldName = 'OSNOV_BRAK_ID'
      Origin = '"KART"."OSNOV_BRAK_ID"'
    end
    object q_prixKartUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"KART"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object q_prixKartDATE_TIME_UPDATE: TDateTimeField
      FieldName = 'DATE_TIME_UPDATE'
      Origin = '"KART"."DATE_TIME_UPDATE"'
    end
    object q_prixKartPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = '"KART"."PARENT"'
    end
    object q_prixKartRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"KART"."RAZDEL_ID"'
    end
    object q_prixKartSKIDKA: TIBBCDField
      FieldName = 'SKIDKA'
      Origin = '"KART"."SKIDKA"'
      Precision = 9
      Size = 2
    end
    object q_prixKartKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"KART"."KEI_ID"'
    end
    object q_prixKartSUMMA: TIBBCDField
      FieldName = 'SUMMA'
      Origin = '"KART"."SUMMA"'
      Precision = 18
      Size = 2
    end
    object q_prixKartSUMMA_VP: TIBBCDField
      FieldName = 'SUMMA_VP'
      Origin = '"KART"."SUMMA_VP"'
      Precision = 18
      Size = 2
    end
    object q_prixKartSUM_SKID: TIBBCDField
      FieldName = 'SUM_SKID'
      Origin = '"KART"."SUM_SKID"'
      Precision = 18
      Size = 2
    end
    object q_prixKartSUM_SKID_VP: TIBBCDField
      FieldName = 'SUM_SKID_VP'
      Origin = '"KART"."SUM_SKID_VP"'
      Precision = 18
      Size = 2
    end
    object q_prixKartSUMMA_S_NDS: TIBBCDField
      FieldName = 'SUMMA_S_NDS'
      Origin = '"KART"."SUMMA_S_NDS"'
      Precision = 18
      Size = 2
    end
    object q_prixKartSUMMA_S_NDS_VP: TIBBCDField
      FieldName = 'SUMMA_S_NDS_VP'
      Origin = '"KART"."SUMMA_S_NDS_VP"'
      Precision = 18
      Size = 2
    end
    object q_prixKartTAG: TIntegerField
      FieldName = 'TAG'
      Origin = '"KART"."TAG"'
    end
    object q_prixKartKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      Origin = '"KART"."KOL_PRIH_EDIZ"'
    end
    object q_prixKartKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      Origin = '"KART"."KOL_RASH_EDIZ"'
    end
    object q_prixKartTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"KART"."TIP_OP_ID"'
    end
    object q_prixKartTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"KART"."TIP_DOK_ID"'
    end
    object q_prixKartTAG1: TIntegerField
      FieldName = 'TAG1'
      Origin = '"KART"."TAG1"'
    end
    object q_prixKartTOV_SKIDKA: TSmallintField
      FieldName = 'TOV_SKIDKA'
      Origin = '"KART"."TOV_SKIDKA"'
    end
    object q_prixKartKEI_ID2: TSmallintField
      FieldName = 'KEI_ID2'
      Origin = '"KART"."KEI_ID2"'
    end
    object q_prixKartCENA_PRICE: TIBBCDField
      FieldName = 'CENA_PRICE'
      Origin = '"KART"."CENA_PRICE"'
      Precision = 18
      Size = 2
    end
    object q_prixKartSKID_CEN: TIBBCDField
      FieldName = 'SKID_CEN'
      Origin = '"KART"."SKID_CEN"'
      Precision = 9
      Size = 2
    end
    object q_prixKartCOMMENT: TIBStringField
      FieldName = 'COMMENT'
      Origin = '"KART"."COMMENT"'
      Size = 40
    end
    object q_prixKartDOP_SUM: TIBBCDField
      FieldName = 'DOP_SUM'
      Origin = '"KART"."DOP_SUM"'
      Precision = 9
      Size = 4
    end
    object q_prixKartDEBET: TIBStringField
      FieldName = 'DEBET'
      Origin = '"KART"."DEBET"'
      FixedChar = True
      Size = 5
    end
    object q_prixKartDTYPESUB_ID: TSmallintField
      FieldName = 'DTYPESUB_ID'
      Origin = '"KART"."DTYPESUB_ID"'
    end
    object q_prixKartDCODE: TIntegerField
      FieldName = 'DCODE'
      Origin = '"KART"."DCODE"'
    end
    object q_prixKartCREDIT: TIBStringField
      FieldName = 'CREDIT'
      Origin = '"KART"."CREDIT"'
      FixedChar = True
      Size = 5
    end
    object q_prixKartCTYPESUB_ID: TSmallintField
      FieldName = 'CTYPESUB_ID'
      Origin = '"KART"."CTYPESUB_ID"'
    end
    object q_prixKartCCODE: TIntegerField
      FieldName = 'CCODE'
      Origin = '"KART"."CCODE"'
    end
    object q_prixKartSROK: TSmallintField
      FieldName = 'SROK'
      Origin = '"KART"."SROK"'
    end
    object q_prixKartDATE_VID: TDateField
      FieldName = 'DATE_VID'
      Origin = '"KART"."DATE_VID"'
    end
    object q_prixKartDOP_RASH: TIBBCDField
      FieldName = 'DOP_RASH'
      Origin = '"KART"."DOP_RASH"'
      Precision = 18
      Size = 2
    end
    object q_prixKartDOP_RASH_ID: TSmallintField
      FieldName = 'DOP_RASH_ID'
      Origin = '"KART"."DOP_RASH_ID"'
    end
    object q_prixKartNORM_RASH: TFMTBCDField
      FieldName = 'NORM_RASH'
      Origin = '"KART"."NORM_RASH"'
      Precision = 18
      Size = 6
    end
    object q_prixKartKOL_RAB: TFMTBCDField
      FieldName = 'KOL_RAB'
      Origin = '"KART"."KOL_RAB"'
      Precision = 18
      Size = 6
    end
  end
  object upd_prixKart: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  kart.*'
      'from kart '
      'where'
      '  STROKA_ID = :STROKA_ID')
    ModifySQL.Strings = (
      'update kart'
      'set'
      '  CENA = :CENA,'
      '  CENA_VP = :CENA_VP,'
      '  DOC_ID = :DOC_ID,'
      '  KART_ID = :KART_ID,'
      '  KEI_ID = :KEI_ID,'
      '  KOL_PRIH = :KOL_PRIH,'
      '  KOL_PRIH_EDIZ = :KOL_PRIH_EDIZ,'
      '  KOL_RASH = :KOL_RASH,'
      '  KOL_RASH_EDIZ = :KOL_RASH_EDIZ,'
      '  KSM_ID = :KSM_ID,'
      '  RAZDEL_ID = :RAZDEL_ID,'
      '  STROKA_ID = :STROKA_ID'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    InsertSQL.Strings = (
      'insert into kart'
      
        '  (CENA, CENA_VP, DOC_ID, KART_ID, KEI_ID, KOL_PRIH, KOL_PRIH_ED' +
        'IZ, KOL_RASH, '
      '   KOL_RASH_EDIZ, KSM_ID, RAZDEL_ID, STROKA_ID)'
      'values'
      
        '  (:CENA, :CENA_VP, :DOC_ID, :KART_ID, :KEI_ID, :KOL_PRIH, :KOL_' +
        'PRIH_EDIZ, '
      '   :KOL_RASH, :KOL_RASH_EDIZ, :KSM_ID, :RAZDEL_ID, :STROKA_ID)')
    DeleteSQL.Strings = (
      'delete from kart'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = DM1.IBT_Write
    Left = 848
    Top = 104
  end
  object q_ostatki: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'select ostatki.*'
      'from ostatki'
      'where ostatki.struk_id = :struk_id'
      'and ostatki.ksm_id = :ksm_id'
      'and coalesce(ostatki.ksm_idpr, 0) = :ksm_idpr')
    UpdateObject = upd_ostatki
    Macros = <>
    Left = 888
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ksm_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ksm_idpr'
        ParamType = ptUnknown
      end>
    object q_ostatkiKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"OSTATKI"."KART_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_ostatkiOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"OSTATKI"."KSM_ID"'
      Required = True
    end
    object q_ostatkiSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
      Origin = '"OSTATKI"."STRUK_ID"'
      Required = True
    end
    object q_ostatkiMES: TSmallintField
      FieldName = 'MES'
      Origin = '"OSTATKI"."MES"'
      Required = True
    end
    object q_ostatkiONM_S: TFMTBCDField
      FieldName = 'ONM_S'
      Origin = '"OSTATKI"."ONM_S"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiCENA_UCH: TFloatField
      FieldName = 'CENA_UCH'
      Origin = '"OSTATKI"."CENA_UCH"'
    end
    object q_ostatkiGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"OSTATKI"."GOD"'
      Required = True
    end
    object q_ostatkiSPROD_ID: TIntegerField
      FieldName = 'SPROD_ID'
      Origin = '"OSTATKI"."SPROD_ID"'
    end
    object q_ostatkiKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"OSTATKI"."KEI_ID"'
      Required = True
    end
    object q_ostatkiONM_NZ: TFMTBCDField
      FieldName = 'ONM_NZ'
      Origin = '"OSTATKI"."ONM_NZ"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiKOL_TRANS: TFloatField
      FieldName = 'KOL_TRANS'
      Origin = '"OSTATKI"."KOL_TRANS"'
    end
    object q_ostatkiNOMU_ID_TRANS: TSmallintField
      FieldName = 'NOMU_ID_TRANS'
      Origin = '"OSTATKI"."NOMU_ID_TRANS"'
    end
    object q_ostatkiSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
      Origin = '"OSTATKI"."SERIA_ID"'
    end
    object q_ostatkiOT_FD: TFMTBCDField
      FieldName = 'OT_FD'
      Origin = '"OSTATKI"."OT_FD"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiONM_FD: TFMTBCDField
      FieldName = 'ONM_FD'
      Origin = '"OSTATKI"."ONM_FD"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiNOMU_ID_GRP: TSmallintField
      FieldName = 'NOMU_ID_GRP'
      Origin = '"OSTATKI"."NOMU_ID_GRP"'
    end
    object q_ostatkiKOL_GRP: TFloatField
      FieldName = 'KOL_GRP'
      Origin = '"OSTATKI"."KOL_GRP"'
    end
    object q_ostatkiVES_TRANS: TIBBCDField
      FieldName = 'VES_TRANS'
      Origin = '"OSTATKI"."VES_TRANS"'
      Precision = 9
      Size = 2
    end
    object q_ostatkiVOL_TRANS: TFMTBCDField
      FieldName = 'VOL_TRANS'
      Origin = '"OSTATKI"."VOL_TRANS"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"OSTATKI"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object q_ostatkiORG_RESERV: TIntegerField
      FieldName = 'ORG_RESERV'
      Origin = '"OSTATKI"."ORG_RESERV"'
    end
    object q_ostatkiOT_DOKUM: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'OT_DOKUM'
      Origin = '"OSTATKI"."OT_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object q_ostatkiONM_DOKUM: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ONM_DOKUM'
      Origin = '"OSTATKI"."ONM_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object q_ostatkiDATE_TIME_UPDATE: TDateTimeField
      FieldName = 'DATE_TIME_UPDATE'
      Origin = '"OSTATKI"."DATE_TIME_UPDATE"'
    end
    object q_ostatkiKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object q_ostatkiRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object q_ostatkiINV_ID: TIntegerField
      FieldName = 'INV_ID'
      Origin = '"OSTATKI"."INV_ID"'
    end
    object q_ostatkiACCOUNT: TIBStringField
      FieldName = 'ACCOUNT'
      Origin = '"OSTATKI"."ACCOUNT"'
      FixedChar = True
      Size = 5
    end
    object q_ostatkiSUMMA_KART: TIBBCDField
      FieldName = 'SUMMA_KART'
      Origin = '"OSTATKI"."SUMMA_KART"'
      Precision = 18
      Size = 2
    end
    object q_ostatkiOT_S2: TFMTBCDField
      FieldName = 'OT_S2'
      Origin = '"OSTATKI"."OT_S2"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiKEI_ID2: TSmallintField
      FieldName = 'KEI_ID2'
      Origin = '"OSTATKI"."KEI_ID2"'
    end
    object q_ostatkiVOL_GRP: TFMTBCDField
      FieldName = 'VOL_GRP'
      Origin = '"OSTATKI"."VOL_GRP"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiVES_GRP: TIBBCDField
      FieldName = 'VES_GRP'
      Origin = '"OSTATKI"."VES_GRP"'
      Precision = 9
      Size = 3
    end
    object q_ostatkiPROC_OV: TFMTBCDField
      FieldName = 'PROC_OV'
      Origin = '"OSTATKI"."PROC_OV"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiCENA_OPT: TIBBCDField
      FieldName = 'CENA_OPT'
      Origin = '"OSTATKI"."CENA_OPT"'
      Precision = 18
      Size = 2
    end
    object q_ostatkiONM_S_P: TFMTBCDField
      FieldName = 'ONM_S_P'
      Origin = '"OSTATKI"."ONM_S_P"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiSTRUK_ID_RELA: TIntegerField
      FieldName = 'STRUK_ID_RELA'
      Origin = '"OSTATKI"."STRUK_ID_RELA"'
    end
    object q_ostatkiBSO: TSmallintField
      FieldName = 'BSO'
      Origin = '"OSTATKI"."BSO"'
    end
    object q_ostatkiDATE_VID: TDateField
      FieldName = 'DATE_VID'
      Origin = '"OSTATKI"."DATE_VID"'
    end
    object q_ostatkiSROK: TIBBCDField
      FieldName = 'SROK'
      Origin = '"OSTATKI"."SROK"'
      Precision = 9
      Size = 2
    end
    object q_ostatkiNLK: TIntegerField
      FieldName = 'NLK'
      Origin = '"OSTATKI"."NLK"'
    end
    object q_ostatkiSUMMA_SPIS: TIBBCDField
      FieldName = 'SUMMA_SPIS'
      Origin = '"OSTATKI"."SUMMA_SPIS"'
      Precision = 18
      Size = 2
    end
    object q_ostatkiCENA_UCH_NM: TIBBCDField
      FieldName = 'CENA_UCH_NM'
      Origin = '"OSTATKI"."CENA_UCH_NM"'
      Precision = 18
      Size = 4
    end
    object q_ostatkiACCOUNT_OLD: TIBStringField
      FieldName = 'ACCOUNT_OLD'
      Origin = '"OSTATKI"."ACCOUNT_OLD"'
      FixedChar = True
      Size = 5
    end
  end
  object upd_ostatki: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      ' ostatki.*'
      'from ostatki '
      'where'
      '  KART_ID = :KART_ID')
    ModifySQL.Strings = (
      'update ostatki'
      'set'
      '  ACCOUNT = :ACCOUNT,'
      '  CENA_UCH = :CENA_UCH,'
      '  KART_ID = :KART_ID,'
      '  KEI_ID = :KEI_ID,'
      '  KSM_ID = :KSM_ID,'
      '  KSM_IDPR = :KSM_IDPR,'
      '  STRUK_ID = :STRUK_ID'
      'where'
      '  KART_ID = :OLD_KART_ID')
    InsertSQL.Strings = (
      'insert into ostatki'
      
        '  (ACCOUNT, CENA_UCH, KART_ID, KEI_ID, KSM_ID, KSM_IDPR, STRUK_I' +
        'D)'
      'values'
      
        '  (:ACCOUNT, :CENA_UCH, :KART_ID, :KEI_ID, :KSM_ID, :KSM_IDPR, :' +
        'STRUK_ID)')
    DeleteSQL.Strings = (
      'delete from ostatki'
      'where'
      '  KART_ID = :OLD_KART_ID')
    AutoCommit = False
    UpdateTransaction = DM1.IBT_Write
    Left = 888
    Top = 104
  end
  object mem_notAdded: TkbmMemTable
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
    Left = 728
    Top = 104
    object mem_notAddedKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
    end
    object mem_notAddedKOL: TFloatField
      FieldName = 'KOL'
    end
  end
end
