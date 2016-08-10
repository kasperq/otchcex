object FAktRashDet: TFAktRashDet
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081' '#1072#1082#1090
  ClientHeight = 498
  ClientWidth = 755
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
    Width = 755
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 224
    ExplicitTop = 72
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 755
    Height = 457
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 320
    ExplicitTop = 312
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 753
      Height = 455
      Align = alClient
      AutoFitColWidths = True
      DataSource = FAktRashoda.ds_specKart
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
          FieldName = 'KSM_ID'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'FACTRASHOD'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'RAZDEL_ID'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'KEI_ID'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'ACCOUNT'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'STROKA_ID'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'KART_ID'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'DOC_ID'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'KOL_RASH'
          Footers = <>
        end>
    end
  end
end
