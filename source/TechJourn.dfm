object FTechJourn: TFTechJourn
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FTechJourn'
  ClientHeight = 828
  ClientWidth = 1044
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pc_techJourn: TPageControl
    Left = 0
    Top = 0
    Width = 1044
    Height = 828
    ActivePage = sheet_prep
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    OnChange = pc_techJournChange
    object sheet_prep: TTabSheet
      Caption = #1055#1088#1077#1087#1072#1088#1072#1090
    end
  end
end
