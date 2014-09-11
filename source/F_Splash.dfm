object FSplash: TFSplash
  Left = 374
  Top = 294
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 87
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 382
    Height = 87
    Align = alClient
    Shape = bsFrame
  end
  object Bevel2: TBevel
    Left = 4
    Top = 5
    Width = 375
    Height = 76
    Shape = bsFrame
    Style = bsRaised
  end
  object RxProcessLabel: TRxLabel
    Left = 8
    Top = 16
    Width = 369
    Height = 20
    Alignment = taCenter
    AutoSize = False
    Caption = #1048#1076#1105#1090' '#1079#1072#1075#1088#1091#1079#1082#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ShadowColor = clInfoBk
  end
  object RxLabel1: TRxLabel
    Left = 96
    Top = 40
    Width = 202
    Height = 20
    Caption = #1055#1086#1076#1086#1078#1076#1080#1090#1077', '#1087#1086#1078#1072#1083#1091#1081#1089#1090#1072'...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ShadowColor = clInfoBk
  end
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 382
    Height = 87
    Align = alClient
    Brush.Style = bsClear
  end
  object ProgressBar1: TProgressBar
    Left = 32
    Top = 64
    Width = 329
    Height = 8
    Max = 200
    Step = 20
    TabOrder = 0
  end
end
