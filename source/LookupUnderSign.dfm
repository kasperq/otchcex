object FLookupUnderSign: TFLookupUnderSign
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'FLookupUnderSign'
  ClientHeight = 76
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 336
    Height = 76
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 210
    ExplicitHeight = 270
    object grd_underSign: TDBGridEh
      Left = 1
      Top = 1
      Width = 334
      Height = 74
      Align = alClient
      AutoFitColWidths = True
      BorderStyle = bsNone
      DataSource = ds_underSign
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghDialogFind]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      VertScrollBar.VisibleMode = sbNeverShowEh
      OnCellClick = grd_underSignCellClick
      OnKeyPress = grd_underSignKeyPress
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DEFAULT_VALUE'
          Footers = <>
        end>
    end
  end
  object q_underSign: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      
        'select doc_tip_param.tip_param_id, doc_tip_param.tip_dok_id, doc' +
        '_tip_param.param_name,'
      'doc_tip_param.default_value'
      'from doc_tip_param'
      'where doc_tip_param.tip_dok_id = 90'
      'and doc_tip_param.default_value is not null')
    Left = 64
    Top = 32
    object q_underSignTIP_PARAM_ID: TSmallintField
      FieldName = 'TIP_PARAM_ID'
      Origin = '"DOC_TIP_PARAM"."TIP_PARAM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_underSignTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOC_TIP_PARAM"."TIP_DOK_ID"'
      Required = True
    end
    object q_underSignPARAM_NAME: TIBStringField
      FieldName = 'PARAM_NAME'
      Origin = '"DOC_TIP_PARAM"."PARAM_NAME"'
      Size = 50
    end
    object q_underSignDEFAULT_VALUE: TIBStringField
      FieldName = 'DEFAULT_VALUE'
      Origin = '"DOC_TIP_PARAM"."DEFAULT_VALUE"'
      Size = 100
    end
  end
  object ds_underSign: TDataSource
    DataSet = q_underSign
    Left = 112
    Top = 32
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 224
    Top = 40
  end
end
