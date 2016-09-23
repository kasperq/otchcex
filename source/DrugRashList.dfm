object FDrugRashList: TFDrugRashList
  Left = 0
  Top = 0
  ClientHeight = 237
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 416
    ExplicitTop = 96
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 393
    Height = 155
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 440
    ExplicitTop = 336
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 391
      Height = 153
      Align = alClient
      AutoFitColWidths = True
      DataSource = ds_texGur
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      FooterRowCount = 1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'KSM_ID'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'KOL_RASH_EDIZ'
          Footer.Color = clMoneyGreen
          Footer.ValueType = fvtSum
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'DATE_DOK'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'SERIA'
          Footers = <>
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 196
    Width = 393
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 320
    ExplicitTop = 416
    ExplicitWidth = 185
  end
  object ds_texGur: TDataSource
    DataSet = FDMDrugLoad.mem_texGur
    Left = 32
    Top = 72
  end
end
