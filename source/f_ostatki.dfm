object FOstatki: TFOstatki
  Left = 248
  Top = 133
  HelpContext = 4
  Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099'/'#1087#1088#1086#1076#1091#1082#1094#1080#1103' '#1085#1072' '#1089#1082#1083#1072#1076#1077
  ClientHeight = 670
  ClientWidth = 795
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 354
    Width = 795
    Height = 2
    Cursor = crVSplit
    Align = alBottom
    Color = clMoneyGreen
    ParentColor = False
    ExplicitLeft = 8
    ExplicitTop = 316
    ExplicitWidth = 787
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 795
    Height = 33
    ButtonHeight = 30
    ButtonWidth = 31
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Images = DM.RecordImage
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = AAddKart
    end
    object ToolButton2: TToolButton
      Left = 31
      Top = 0
      Action = AAddSeria
    end
    object ToolButton10: TToolButton
      Left = 62
      Top = 0
      Action = ADeleteKart
    end
    object ToolButton7: TToolButton
      Left = 93
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 101
      Top = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080
      ImageIndex = 5
      OnClick = ToolButton9Click
    end
    object ToolButton5: TToolButton
      Left = 132
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object DBNavigator1: TDBNavigator
      Left = 140
      Top = 0
      Width = 116
      Height = 30
      DataSource = DM.DS_Ost
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Hints.Strings = (
        #1042' '#1085#1072#1095#1072#1083#1086
        #1053#1072#1079#1072#1076
        #1042#1087#1077#1088#1105#1076
        #1042' '#1082#1086#1085#1077#1094
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
      TabOrder = 0
    end
    object ToolButton6: TToolButton
      Left = 256
      Top = 0
      Action = ATakeDolg
      Visible = False
    end
    object ToolButton4: TToolButton
      Left = 287
      Top = 0
      Action = AReturnDolg
      Visible = False
    end
    object ABtn: TToolButton
      Left = 318
      Top = 0
      Action = AApplyChanges
    end
    object ToolButton3: TToolButton
      Left = 349
      Top = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Caption = 'ToolButton3'
      ImageIndex = 11
      OnClick = ToolButton3Click
    end
    object ToolButton8: TToolButton
      Left = 380
      Top = 0
      Action = ACenaUch
    end
    object ToolButton11: TToolButton
      Left = 411
      Top = 0
      Action = AEditChet
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 589
    Width = 795
    Height = 81
    Align = alBottom
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 40
      Width = 793
      Height = 40
      Align = alClient
      TabOrder = 0
      DesignSize = (
        793
        40)
      object BitBtn4: TBitBtn
        Left = 523
        Top = 6
        Width = 133
        Height = 25
        Action = AAccept
        Anchors = [akRight, akBottom]
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091
        TabOrder = 0
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF1F55042057041F59021F58031F54041F5404FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2975042367012674002B7A042F
          7B092B7A042675002369001F57031F5703FF00FFFF00FFFF00FFFF00FFFF00FF
          286A08297504389A0849C60A56EC0B59FF0655FF014FD70A3EA70A2A79022160
          011E4F05FF00FFFF00FFFF00FF2E76092F7A0942B70764E622FFFFFF61E41F58
          E0145AED10FFFFFFFFFFFF4FD30D2E7D072060011E5503FF00FFFF00FF2E7609
          41B6075EFF0E62EA1D44B50C368F0A51D211327E0B3B950D56DB14FFFFFF4FD4
          0D2B79041E5503FF00FF2971053795085AF40DFFFFFF3CA30833880857E610FF
          FFFF3B970D287A002D7B0756DB14FFFFFF3EA60A236900215A042E780A42BB05
          FFFFFF4EDB083AA10758ED0E78AE5E59ED0F4DC90F297B00287A003A920EFFFF
          FF4FD80B277500215A0433820B4BD704FFFFFF41BF024CDC055DFF0C40B10839
          9B085AED10358D0A297C002A7B025CE51756FF022E7B07215D03368F094FE106
          FFFFFF40C00037A5003BAB03328E043086054BD10846BE0A2C7E032A7C0159E0
          155AFF0731800A215F0237900A4EE503FFFFFF46D200339900359E00349A0233
          91033594054ACE0832870732850861EC1B55F3062F7B09225E0434860B4DDD05
          FFFFFF54FF0036A20035A00036A200359D013391033CA805399F0645BB0AFFFF
          FF4ACB0A2A7703215A04FF00FF38920B5AFF08FFFFFF4BE30036A200339A0034
          9C00339602318D0342B9065BFF0962E8203AA207266D03FF00FFFF00FF38920B
          51F4005CFF0AFFFFFF54FE0045D20040BF0142C7004EE403FFFFFFFFFFFF44BB
          082F790A266D03FF00FFFF00FFFF00FF40AD0A52F8005DFF0CFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF59F50C43BC0732820A296E06FF00FFFF00FFFF00FFFF00FF
          FF00FF3A970C4CD70753FA0055FF0058F60953F00549D5043BA407317B0C317B
          0CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38930B40AC0940
          AF093B9E0933830B2E7809FF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object BitBtn3: TBitBtn
        Left = 661
        Top = 7
        Width = 128
        Height = 25
        Action = AExitForm
        Anchors = [akRight, akBottom]
        Caption = #1042#1099#1093#1086#1076
        TabOrder = 1
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0872DD0362C3006CDB0877E711
          7DEA0877E70069DD005DC70654A50654A5FF00FFFF00FFFF00FFFF00FFFF00FF
          0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
          B70B5095FF00FFFF00FFFF00FF1278E0127CE870B4F9F6FAFEFFFFFFEEF6FDD3
          E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78ED025AB60653A2FF00FFFF00FF1278E0
          6DB2F9FEFEFFE9F3FD1E7FF00D73ED1474EB066BE90C6FE889B9F4E6F0FDB0D5
          FA0970E60653A2FF00FF0B70D53695F4E8F3FEFFFFFF89BAF48FC0F92A86F110
          75EE1275EC1E79EC84B5F489BAF4FFFFFF58A5F5005EC70858AB137AE371B5FB
          FFFFFFB2D7FC278CF992C4FBDAEAFD318BF3388DF2D7E8FC87B8F50D71EAE6F0
          FDB3D7FB016BDE0858AB1F85ECA2CFFDFFFFFF419EFD3495FB298DF992C5FBE6
          F1FEE5F1FD88BCF71075EE0B70EBB4D2F8E6F3FF0E7BE9065AB02F8FF1B7DAFD
          FFFFFF419FFF3196FE3094FC469EFCF1F8FEF1F8FE3892F5187DF11378EF9FC9
          F7F0F8FF1A82EC055CB53693F0B8DAFEFFFFFF59ACFF3499FF55A9FEE8F3FF85
          BFFD83BDFCE7F2FE4498F61A7FF2D3E6FCD9EBFE117DE9095CB22689EDAFD6FD
          FFFFFFC3E1FF4AA4FFEDF6FF81C0FF3296FE2E93FC7BBAFDEBF5FE59A5F8E9F3
          FE99C9FA0773E10958ABFF00FF3994F0F1F8FFFBFDFF78BBFF61AFFF3499FF34
          99FF3398FF3095FD68B0FCF4FAFFF5FAFE49A0F7076ACEFF00FFFF00FF3994F0
          CDE6FFF6FAFFFBFDFFC1DFFF58ABFF43A0FF49A3FF84C1FEFBFDFFFFFFFF78B9
          F9137BE6076ACEFF00FFFF00FFFF00FF64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE7F3FE77B8FA1D85ED0D6DD0FF00FFFF00FFFF00FFFF00FF
          FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
          E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3B94F061ABF665
          ADF7489EF42286EC127AE4FF00FFFF00FFFF00FFFF00FFFF00FF}
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 793
      Height = 39
      Align = alTop
      TabOrder = 1
      object Label3: TLabel
        Left = 152
        Top = 3
        Width = 74
        Height = 13
        Margins.Bottom = 0
        Caption = #1057#1088#1086#1082' '#1075#1086#1076#1085#1086#1089#1090#1080
      end
      object Label4: TLabel
        Left = 280
        Top = 3
        Width = 61
        Height = 13
        Margins.Bottom = 0
        Caption = #1057#1077#1088#1090#1080#1092#1080#1082#1072#1090
      end
      object Label5: TLabel
        Left = 376
        Top = 3
        Width = 102
        Height = 13
        Margins.Bottom = 0
        Caption = #1044#1072#1090#1072' '#1089#1077#1088#1090#1080#1092#1080#1082#1072#1094#1080#1080
      end
      object Label6: TLabel
        Left = 40
        Top = 3
        Width = 43
        Height = 13
        Margins.Bottom = 0
        Caption = #1055#1072#1089#1087#1086#1088#1090
      end
      object Label1: TLabel
        Left = 589
        Top = 3
        Width = 112
        Height = 13
        Margins.Bottom = 0
        Caption = #1047#1072#1088#1077#1079#1077#1088#1074#1080#1088#1086#1074#1072#1085#1086' '#1076#1083#1103
      end
      object Bevel1: TBevel
        Left = 500
        Top = 0
        Width = 9
        Height = 40
        Shape = bsLeftLine
      end
      object DBEdit3: TDBEdit
        Left = 248
        Top = 17
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'SERTIF'
        DataSource = DM.DS_Ostatki
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 8
        Top = 17
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'PASPORT'
        DataSource = DM.DS_Ostatki
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBDateEdit1: TDBDateEdit
        Left = 128
        Top = 17
        Width = 121
        Height = 19
        DataField = 'SROK_GODN'
        DataSource = DM.DS_Ostatki
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBDateEdit2: TDBDateEdit
        Left = 368
        Top = 17
        Width = 121
        Height = 19
        DataField = 'DATE_SERTIF'
        DataSource = DM.DS_Ostatki
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 505
        Top = 17
        Width = 275
        Height = 19
        Ctl3D = False
        DataField = 'ORG_RESERV_NAM'
        DataSource = DM.DS_Ostatki
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 63
    Width = 795
    Height = 291
    Align = alClient
    TabOrder = 2
    object ScrollBar1: TScrollBar
      Left = 778
      Top = 1
      Width = 16
      Height = 254
      Align = alRight
      Kind = sbVertical
      Max = 1
      PageSize = 0
      TabOrder = 0
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 1
      Width = 777
      Height = 254
      Align = alClient
      AllowedOperations = [alopUpdateEh]
      AutoFitColWidths = True
      DataSource = DM.DS_Ost
      EvenRowColor = clWindow
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FrozenCols = 4
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghRowHighlight]
      ParentFont = False
      PopupMenu = PopupMenu1
      STFilter.Visible = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleImages = ImageList1
      UseMultiTitle = True
      VertScrollBar.ExtScrollBar = ScrollBar1
      OnDblClick = DBGridEh2DblClick
      OnGetCellParams = DBGridEh2GetCellParams
      OnKeyDown = DBGridEh2KeyDown
      Columns = <
        item
          EditButtons = <>
          FieldName = 'KOD_PROD'
          Footers = <>
          Title.Caption = #1050#1086#1076' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
          Width = 106
        end
        item
          EditButtons = <>
          FieldName = 'KSM_ID'
          Footers = <>
          Title.Caption = #1050#1086#1076
        end
        item
          EditButtons = <>
          FieldName = 'ACCOUNT'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1057#1095#1077#1090
        end
        item
          EditButtons = <
            item
              Style = ebsEllipsisEh
              OnClick = DBGridEh2Columns1EditButtons0Click
            end>
          FieldName = 'NMAT'
          Footers = <>
          Width = 191
        end
        item
          EditButtons = <>
          FieldName = 'NEIS'
          Footers = <>
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'KOL_RASH'
          Footers = <>
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1088#1072#1089#1093#1086#1076#1072
        end
        item
          EditButtons = <>
          FieldName = 'NAL_DOKUM'
          Footers = <>
          Width = 85
        end
        item
          EditButtons = <>
          FieldName = 'OT_S2'
          Footers = <>
          Title.Caption = #1053#1072#1083#1080#1095#1080#1077' '#1074#1086' '#1074#1090#1086#1088#1086#1081' '#1077#1076'.'#1080#1079#1084
          Width = 91
        end
        item
          EditButtons = <>
          FieldName = 'NAL_REAL'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'NAL_FD'
          Footers = <>
          Visible = False
        end
        item
          DisplayFormat = '#.,0000'
          EditButtons = <>
          FieldName = 'COST_DAY'
          Footers = <>
          Title.Caption = #1053#1072#1083#1080#1095#1080#1077
          Visible = False
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'KEI_ID'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'OPT_CENA'
          Footers = <>
          Width = 89
        end
        item
          DisplayFormat = '#.,00'
          EditButtons = <>
          FieldName = 'SUMMA_OPT'
          Footers = <>
          Width = 99
        end
        item
          EditButtons = <>
          FieldName = 'CSUM_DAY'
          Footers = <>
          Title.Caption = #1057#1091#1084#1084#1072
          Visible = False
          Width = 117
        end
        item
          Checkboxes = False
          EditButtons = <
            item
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FF932B00932B00932B00FF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93
                2B00932B00932B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF7B1A00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FF7B1A00B141007B1A00FF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7B
                1A00BD4C00B646007B1A00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7B1A00C45100BB4A007B1A00FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FF7B1A00CB5600C14E00892300FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FF861F007B1A007B1A00FF00FFFF00FFFF00FF7B1A00D15B007B1A
                00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF861F00FF8200FF82007B
                1A00FF00FF7B1A00EA7000E169007B1A00FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FF7B1A00FF8200FF8200FF8200FE8100F77B007B1A00FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA336007B
                1A007B1A007B1A009C3100FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              Style = ebsGlyphEh
              Width = 22
              OnClick = DBGridEh2Columns14EditButtons0Click
            end>
          Footers = <>
          KeyList.Strings = (
            '')
          Title.ImageIndex = 0
          Width = 20
        end
        item
          EditButtons = <>
          FieldName = 'SPKSM'
          Footers = <>
          Title.Caption = #1057#1090#1072#1088#1099#1081' '#1082#1086#1076
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 255
      Width = 793
      Height = 35
      Align = alBottom
      TabOrder = 2
      object Label12: TLabel
        Left = 5
        Top = 10
        Width = 89
        Height = 13
        Margins.Bottom = 0
        Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082': '#1050#1054#1044
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 227
        Top = 8
        Width = 93
        Height = 13
        Margins.Bottom = 0
        Caption = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 460
        Top = 8
        Width = 75
        Height = 13
        Margins.Bottom = 0
        Caption = #1057#1058#1040#1056#1067#1049' '#1050#1054#1044
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEditEh1: TDBEditEh
        Left = 100
        Top = 6
        Width = 121
        Height = 19
        Ctl3D = False
        EditButtons = <>
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Visible = True
        OnChange = DBEditEh1Change
        OnKeyDown = DBEditEh1KeyDown
      end
      object DBEditEh2: TDBEditEh
        Left = 326
        Top = 6
        Width = 121
        Height = 19
        Ctl3D = False
        EditButtons = <>
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Visible = True
        OnChange = DBEditEh2Change
        OnKeyDown = DBEditEh1KeyDown
      end
      object DBEditEh3: TDBEditEh
        Left = 559
        Top = 6
        Width = 121
        Height = 19
        Ctl3D = False
        EditButtons = <>
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Visible = True
        OnChange = DBEditEh3Change
        OnKeyDown = DBEditEh1KeyDown
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 356
    Width = 795
    Height = 114
    Align = alBottom
    Constraints.MinHeight = 50
    TabOrder = 3
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 777
      Height = 112
      Align = alClient
      AllowedOperations = [alopUpdateEh]
      AutoFitColWidths = True
      DataSource = DM.DS_Ostatki
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.ExtScrollBar = ScrollBar2
      OnColExit = DBGridEh1ColExit
      OnGetCellParams = DBGridEh1GetCellParams
      OnKeyDown = DBGridEh1KeyDown
      Columns = <
        item
          EditButtons = <>
          FieldName = 'KART_ID'
          Footers = <>
          ReadOnly = True
          Title.Caption = #8470' '#1082#1072#1088#1090'.'
          Width = 39
        end
        item
          Color = clMoneyGreen
          EditButtons = <>
          FieldName = 'SERIA'
          Footers = <>
          Title.Caption = #1057#1077#1088#1080#1103
          Width = 66
          OnUpdateData = DBGridEh1Columns1UpdateData
        end
        item
          Color = clMoneyGreen
          EditButtons = <>
          FieldName = 'OT_DOKUM'
          Footers = <>
          Title.Caption = #1053#1072#1083#1080#1095#1080#1077
          Width = 59
        end
        item
          Color = clMoneyGreen
          EditButtons = <>
          FieldName = 'Cost_day'
          Footers = <>
          Visible = False
          Width = 108
        end
        item
          Color = clMoneyGreen
          EditButtons = <>
          FieldName = 'OT_S'
          Footers = <>
          Title.Caption = #1053#1072#1083#1080#1095#1080#1077
          Visible = False
        end
        item
          Color = clMoneyGreen
          EditButtons = <>
          FieldName = 'OT_FD'
          Footers = <>
          Title.Caption = #1053#1072#1083#1080#1095#1080#1077
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'OT_S2'
          Footers = <>
          Title.Caption = #1053#1072#1083#1080#1095#1080#1077'2'
          OnUpdateData = DBGridEh1Columns6UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'KOL_RASH'
          Footers = <>
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1088#1072#1089#1093#1086#1076#1072
          OnUpdateData = DBGridEh1Columns7UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'BRUTTO'
          Footers = <>
          Title.Caption = #1041#1088#1091#1090#1090#1086
          Width = 68
          OnUpdateData = DBGridEh1Columns8UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'KOL_MEST'
          Footers = <>
          Title.Caption = #1050#1086#1083'.'#1084#1077#1089#1090
          OnUpdateData = DBGridEh1Columns9UpdateData
        end
        item
          AlwaysShowEditButton = True
          AutoDropDown = True
          EditButtons = <
            item
              Style = ebsEllipsisEh
              OnClick = DBGridEh1Columns2EditButtons0Click
            end>
          FieldName = 'UPGRUP_NAME'
          Footers = <>
          Title.Caption = #1043#1088#1091#1087'. '#1091#1087#1072#1082'.'
          Visible = False
          Width = 68
          OnUpdateData = DBGridEh1Columns6UpdateData
        end
        item
          DropDownSpecRow.Visible = True
          EditButtons = <>
          FieldName = 'Lupgrup_name'
          Footers = <>
          Width = 73
          OnUpdateData = DBGridEh1Columns7UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'KOL_GRP'
          Footers = <>
          Title.Caption = #1050#1086#1083'. '#1074' 1 '#1075#1088#1091#1087'.'#1091#1087'.'
          Width = 46
          OnUpdateData = DBGridEh1Columns8UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'VES_GRP'
          Footers = <>
          Title.Caption = #1042#1077#1089' '#1075#1088#1091#1087#1087#1086#1074#1086#1081
          OnUpdateData = DBGridEh1Columns9UpdateData
        end
        item
          AlwaysShowEditButton = True
          EditButtons = <
            item
              Style = ebsEllipsisEh
            end>
          FieldName = 'UPTRANS_NAME'
          Footers = <>
          Title.Caption = #1058#1088#1072#1085#1089#1087'. '#1091#1087#1072#1082'.'
          Visible = False
          Width = 72
          OnUpdateData = DBGridEh1Columns9UpdateData
        end
        item
          AutoDropDown = True
          EditButtons = <
            item
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFC00FD800ED35E1DD25D1CD15D1CD15D1CD15D
                1CD15D1CD15D1CD15D1CD15D1CD15E1DD2800ED3FC00FDFF00FFFF00FFF700FB
                2D31CF1C4AEE163EE7173FE8173FE8173FE8173FE8173FE8173FE8163EE71C4A
                EE2D31CFF700FBFF00FFFF00FFF501FB363BDA1840EF1132E61134E61134E611
                34E61134E61134E61134E61132E61840EF363BDAF501FBFF00FFFF00FFF601FC
                3C44DD1C46F01237E91339E91439E91439E81439E81439E91339E91237E91C46
                F03C44DDF601FCFF00FFFF00FFF601FC414FE32352F6153EEA163FEA1842EE19
                43EE1943EE1842EE1640EA143EEA2351F54150E2F601FCFF00FFFF00FFFE00FE
                353FD9274AD98F98C09CA2C03558DD1543EF1644EF2D52E0979EC0959DC02F4F
                DB353DDEFE00FEFF00FFFF00FF9326EC274FDF2745CEEBE5DCFFFAE4425DCF0C
                35E00E36DF3452D1F6F0E0F6EFE03450CE254EE09326ECFF00FFFF00FF6851EE
                4F8DFF2C60F698ADE5A2B5E53F6EF2205BFE215BFE3869F49DB0E59DB0E53264
                F44E8CFF6851EEFF00FFFF00FF7845F264A4FF2561FF1958FF1959FF2360FF26
                62FF2662FF2461FF1A59FF1958FF2460FF64A4FF7845F2FF00FFFF00FFCA15FB
                5599F8609EFF3874FF3772FF3A76FF3A76FF3A76FF3A76FF3772FF3874FF609E
                FF5599F8CA15FBFF00FFFF00FFFF00FFBD1DFC6A62FB569EF750A5F96A72FA70
                6BFF706BFF6A72FA50A5F9569EF76A62FBBD1DFCFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FF829DE659CDF1944CEBA73EF2A73EF2954CEB59CDF1829DE6FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9DAAEBA5F5FD94EDF897
                EEF797EEF794EDF8A3F4FD9DAAEBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFC25AF3B492F2B295F3B195F3B195F3B295F3B492F2C25AF3FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              Hint = #1058#1072#1088#1072
              Style = ebsGlyphEh
              OnClick = DBGridEh1Columns15EditButtons0Click
            end>
          FieldName = 'Luptrans_name'
          Footers = <>
          Width = 84
          OnUpdateData = DBGridEh1Columns10UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'KOL_TRANS'
          Footers = <>
          Title.Caption = #1050#1086#1083'. '#1074' 1 '#1090#1088#1072#1085#1089'.'#1091#1087'.'
          Width = 48
          OnUpdateData = DBGridEh1Columns11UpdateData
        end
        item
          EditButtons = <>
          EditMask = '#'
          FieldName = 'Kol_Upak_Trans'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1090#1088#1072#1085#1089#1087'. '#1091#1087'.'
          Width = 60
          OnUpdateData = DBGridEh1Columns12UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'VES_TRANS'
          Footers = <>
          Title.Caption = #1042#1077#1089' '#1090#1088#1072#1085#1089#1087'.'
          Width = 44
          OnUpdateData = DBGridEh1Columns13UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'VOL_TRANS'
          Footers = <>
          Title.Caption = #1054#1073#1098#1105#1084' '#1090#1088#1072#1085#1089#1087'.'
          Width = 46
          OnUpdateData = DBGridEh1Columns14UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'Cdolg_prihod'
          Footers = <>
          ReadOnly = True
          Visible = False
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'Cdolg_rashod'
          Footers = <>
          ReadOnly = True
          Visible = False
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'PROC_OV'
          Footers = <>
          Title.Caption = #1082#1086#1101#1092'.'
          OnUpdateData = DBGridEh1Columns20UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'KEI_ID2'
          Footers = <>
          Title.Caption = #1050#1086#1076' 2'#1077#1080
          Visible = False
          OnUpdateData = DBGridEh1Columns21UpdateData
        end>
    end
    object ScrollBar2: TScrollBar
      Left = 778
      Top = 1
      Width = 16
      Height = 112
      Align = alRight
      Kind = sbVertical
      Max = 1
      PageSize = 0
      TabOrder = 1
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 554
    Width = 795
    Height = 35
    Align = alBottom
    TabOrder = 4
    Visible = False
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 83
      Height = 13
      Margins.Bottom = 0
      Caption = #1042#1079#1103#1090#1100' '#1074' '#1076#1086#1083#1075' '#1085#1072':'
    end
    object Label7: TLabel
      Left = 480
      Top = 8
      Width = 34
      Height = 13
      Margins.Bottom = 0
      Caption = #1050#1086#1083'-'#1074#1086
    end
    object Edit3: TEdit
      Left = 96
      Top = 8
      Width = 49
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 144
      Top = 8
      Width = 233
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 376
      Top = 8
      Width = 97
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      Text = 'Edit5'
    end
    object BitBtn5: TBitBtn
      Left = 601
      Top = 6
      Width = 92
      Height = 23
      Action = AAcceptDolg
      Caption = #1042#1079#1103#1090#1100' '#1074' '#1076#1086#1083#1075
      TabOrder = 3
    end
    object Edit6: TEdit
      Left = 520
      Top = 8
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      Left = 696
      Top = 6
      Width = 88
      Height = 23
      Action = ACancelDolg
      Caption = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103
      TabOrder = 5
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 470
    Width = 795
    Height = 84
    Align = alBottom
    TabOrder = 5
    Visible = False
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 777
      Height = 47
      Align = alClient
      AutoFitColWidths = True
      DataSource = DM.DS_Dolg
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      VertScrollBar.ExtScrollBar = ScrollBar3
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DEST_ID'
          Footers = <>
          Width = 89
        end
        item
          EditButtons = <>
          FieldName = 'NMAT'
          Footers = <>
          Width = 399
        end
        item
          EditButtons = <>
          FieldName = 'SERIA'
          Footers = <>
          Width = 140
        end
        item
          EditButtons = <>
          FieldName = 'SUMDOLG'
          Footers = <>
        end>
    end
    object Panel9: TPanel
      Left = 1
      Top = 48
      Width = 793
      Height = 35
      Align = alBottom
      TabOrder = 1
      object Label8: TLabel
        Left = 478
        Top = 7
        Width = 34
        Height = 13
        Margins.Bottom = 0
        Caption = #1050#1086#1083'-'#1074#1086
      end
      object Label9: TLabel
        Left = 14
        Top = 13
        Width = 79
        Height = 13
        Margins.Bottom = 0
        Caption = #1042#1077#1088#1085#1091#1090#1100' '#1076#1086#1083#1075' '#1089':'
      end
      object BitBtn6: TBitBtn
        Left = 600
        Top = 8
        Width = 92
        Height = 23
        Action = AAcceptReturn
        Caption = #1042#1077#1088#1085#1091#1090#1100' '#1076#1086#1083#1075
        TabOrder = 0
      end
      object BitBtn8: TBitBtn
        Left = 694
        Top = 7
        Width = 88
        Height = 23
        Action = ACancelReturn
        Caption = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103
        TabOrder = 1
      end
      object Edit7: TEdit
        Left = 520
        Top = 8
        Width = 73
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
      end
      object Edit8: TEdit
        Left = 96
        Top = 8
        Width = 49
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
        Text = 'Edit8'
      end
      object Edit9: TEdit
        Left = 144
        Top = 8
        Width = 233
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
        Text = 'Edit9'
      end
      object Edit10: TEdit
        Left = 376
        Top = 8
        Width = 97
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
        Text = 'Edit10'
      end
    end
    object ScrollBar3: TScrollBar
      Left = 778
      Top = 1
      Width = 16
      Height = 47
      Align = alRight
      Kind = sbVertical
      Max = 1
      PageSize = 0
      TabOrder = 2
    end
  end
  object Panel10: TPanel
    Left = 0
    Top = 33
    Width = 795
    Height = 30
    Align = alTop
    TabOrder = 6
    DesignSize = (
      795
      30)
    object Label11: TLabel
      Left = 6
      Top = 5
      Width = 48
      Height = 13
      Margins.Bottom = 0
      Caption = #1056#1072#1079#1076#1077#1083':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 560
      Top = 5
      Width = 37
      Height = 13
      Margins.Bottom = 0
      Anchors = [akTop, akRight]
      Caption = #1057#1082#1083#1072#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 56
      Top = 3
      Width = 231
      Height = 21
      EditButtons = <>
      KeyField = 'PRMAT'
      ListField = 'NAMPR'
      ListSource = DM.DS_Matr_pr
      TabOrder = 0
      Visible = True
      OnCloseUp = DBLookupComboboxEh1CloseUp
    end
    object STRUK: TDBEditEh
      Left = 598
      Top = 2
      Width = 196
      Height = 21
      Anchors = [akTop, akRight]
      EditButtons = <
        item
          OnClick = DBEditEh1EditButtons0Click
        end>
      TabOrder = 1
      Visible = True
    end
    object CheckBox1: TCheckBox
      Left = 293
      Top = 5
      Width = 132
      Height = 17
      Caption = #1044#1074#1077' '#1077#1076'.'#1080#1079#1084#1077#1088#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 426
      Top = 5
      Width = 132
      Height = 17
      Caption = #1058#1086#1083#1100#1082#1086' '#1089' '#1085#1072#1083#1080#1095#1080#1077#1084
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = CheckBox2Click
    end
  end
  object ActionList1: TActionList
    Images = DM.RecordImage
    Left = 616
    Top = 200
    object AAddKart: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      ImageIndex = 0
      ShortCut = 45
      OnExecute = AAddKartExecute
    end
    object AAddSeria: TAction
      Caption = 'AddSeria'
      Hint = #1053#1086#1074#1072#1103' '#1089#1077#1088#1080#1103
      ImageIndex = 3
      OnExecute = AAddSeriaExecute
    end
    object AFindMaterial: TAction
      Caption = 'AFindMaterial'
      OnExecute = AFindMaterialExecute
    end
    object ACancelChanges: TAction
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      OnExecute = ACancelChangesExecute
    end
    object AApplyChanges: TAction
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      ImageIndex = 8
      OnExecute = AApplyChangesExecute
    end
    object AExitForm: TAction
      Caption = #1042#1099#1093#1086#1076
      OnExecute = AExitFormExecute
    end
    object AAccept: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091
      OnExecute = AAcceptExecute
    end
    object ACenaUch: TAction
      Caption = #1059#1095#1077#1090#1085#1072#1103' '#1094#1077#1085#1072
      Hint = #1059#1095#1077#1090#1085#1072#1103' '#1094#1077#1085#1072
      ImageIndex = 4
      OnExecute = ACenaUchExecute
    end
    object AFindSprorg: TAction
      ImageIndex = 4
      OnExecute = AFindSprorgExecute
    end
    object ATakeDolg: TAction
      Caption = 'ATakeDolg'
      Enabled = False
      Hint = #1042#1079#1103#1090#1100' '#1074' '#1076#1086#1083#1075
      ImageIndex = 8
      OnExecute = ATakeDolgExecute
    end
    object AReturnDolg: TAction
      Caption = 'AReturnDolg'
      Enabled = False
      Hint = #1042#1077#1088#1085#1091#1090#1100' '#1076#1086#1083#1075
      ImageIndex = 7
      OnExecute = AReturnDolgExecute
    end
    object AAcceptDolg: TAction
      Caption = #1042#1079#1103#1090#1100' '#1074' '#1076#1086#1083#1075
      ImageIndex = 6
      OnExecute = AAcceptDolgExecute
    end
    object AAcceptReturn: TAction
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1076#1086#1083#1075
      ImageIndex = 6
      OnExecute = AAcceptReturnExecute
    end
    object ACancelDolg: TAction
      Caption = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103
      ImageIndex = 5
      OnExecute = ACancelDolgExecute
    end
    object ACancelReturn: TAction
      Caption = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103
      ImageIndex = 5
      OnExecute = ACancelReturnExecute
    end
    object AViewKart: TAction
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080
      ImageIndex = 9
      ShortCut = 115
      OnExecute = AViewKartExecute
    end
    object ADeleteKart: TAction
      Caption = 'ADeleteKart'
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      ImageIndex = 1
      OnExecute = ADeleteKartExecute
    end
    object AEditChet: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1095#1077#1090
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1095#1077#1090
      ImageIndex = 2
      OnExecute = AEditChetExecute
    end
  end
  object FindDlgEh1: TFindDlgEh
    DBGrid = DBGridEh2
    ShowFindResult = False
    FindFont.Charset = DEFAULT_CHARSET
    FindFont.Color = clRed
    FindFont.Height = -11
    FindFont.Name = 'MS Sans Serif'
    FindFont.Style = []
    ShowFilterPanel = True
    SimpleSeek = True
    Left = 664
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Images = DM.RecordImage
    Left = 568
    Top = 201
    object N1: TMenuItem
      Action = AAddKart
    end
    object N2: TMenuItem
      Action = AAddSeria
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1077#1088#1080#1102
      ShortCut = 16429
    end
    object N3: TMenuItem
      Action = ADeleteKart
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091
      ShortCut = 16430
    end
    object N10: TMenuItem
      Action = ACenaUch
    end
    object N4: TMenuItem
      Action = AViewKart
      ImageIndex = 5
    end
    object N5: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      ImageIndex = 8
      ShortCut = 113
      OnClick = AApplyChangesExecute
    end
    object N9: TMenuItem
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 11
      ShortCut = 114
      OnClick = ToolButton3Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N7: TMenuItem
      Action = AAccept
    end
    object N8: TMenuItem
      Action = AExitForm
    end
  end
  object ImageList1: TImageList
    Left = 576
    Bitmap = {
      494C010101000300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008CCE00008CCE00008CCE00008CC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000ADE70000BDEF0000BDF70000B5EF0000ADE70000ADDE00009CCE00008C
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009CDE0000BD
      EF0000DEFF0000DEFF000094B50010526300104A5A000873940000B5E70000AD
      DE00008CBD000073AD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000C6EF0000E7
      FF0000DEFF0008738C00211818002110100021101000211010001042520000AD
      E70000B5EF00008CC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5EF0000EFFF0000EF
      FF00087B84002110100021181800182121001821210018182100211010001839
      420000B5F70000B5EF000084BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000D6F70000F7FF0000BD
      C600211010002110100021181800211818002118180021181800211818002108
      080010526B0000C6FF0000A5D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000B5EF0000EFFF0000F7FF0000BD
      CE0008848C00088C9400088C9400088494000884940008849400087B9400087B
      9400087B940000BDF70000B5F700008CC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000B5EF0010F7FF0000F7FF0000F7
      FF0000FFFF0000FFFF0000FFFF0000EFFF0000EFFF0000E7FF0000F7FF0000E7
      FF0000D6FF0000C6FF0000C6FF00008CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000BDF7005AF7FF0029FFFF0000F7
      FF0000EFF700089CA50000C6CE0000EFFF0000DEFF0000DEF700088C9C0000B5
      D60000D6FF0000CEFF0000C6FF000094D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000B5F70073F7FF0073FFFF0000FF
      FF0000A5AD0021080800104A4A0000EFF70000F7FF00009CAD00211008001042
      4A0000D6FF0000D6FF0000CEFF000094CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004AE7FF00D6FFFF0029FF
      FF00008C8C00290000001831310000E7EF0000FFFF0008848C00210000001829
      310000D6F70000DEFF0000BDF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010CEFF00B5FFFF00CEFF
      FF0029DEDE001042420000848C0000FFFF0000F7FF0000CEDE0010394200087B
      8C0000E7FF0000DEFF0000A5DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031DEFF00E7FF
      FF00E7FFFF0052FFFF0008FFFF0000F7FF0000EFFF0000F7FF0000EFF70000EF
      FF0000EFFF0000C6EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000C6FF0039E7
      FF00C6FFFF00F7FFFF00D6FFFF00A5FFFF0084FFFF0073FFFF0052FFFF0010F7
      FF0000C6EF00009CDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010CEFF004AE7FF008CF7FF009CFFFF008CFFFF0052F7FF0018DEFF0000BD
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000BDF70000C6F70000BDF70000B5F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC3F000000000000F00F000000000000
      C003000000000000C00300000000000080010000000000008001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80010000000000008001000000000000C003000000000000C003000000000000
      F00F000000000000FC3F00000000000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu2: TPopupMenu
    Left = 464
    Top = 136
    object N11: TMenuItem
      Action = AMat
    end
    object N12: TMenuItem
      Action = ASeria
    end
  end
  object ActionList2: TActionList
    Left = 432
    Top = 136
    object AMat: TAction
      Caption = #1055#1086' '#1084#1072#1090#1077#1088#1080#1072#1083#1091
      OnExecute = AMatExecute
    end
    object ASeria: TAction
      Caption = #1055#1086' '#1089#1077#1088#1080#1080
      OnExecute = ASeriaExecute
    end
  end
end
