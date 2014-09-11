object FindStruk: TFindStruk
  Left = 185
  Top = 156
  Width = 559
  Height = 392
  HelpContext = 230
  Caption = #1042#1099#1073#1086#1088' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1086#1075#1086' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ScreenSnap = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 551
    Height = 332
    Align = alClient
    TabOrder = 0
    object TreeView1: TTreeView
      Left = 1
      Top = 1
      Width = 216
      Height = 330
      Align = alLeft
      Ctl3D = True
      Indent = 15
      ParentCtl3D = False
      ReadOnly = True
      SortType = stText
      TabOrder = 0
      OnChange = TreeView1Change
      OnDeletion = TreeView1Deletion
      OnExpanding = TreeView1Expanding
    end
    object StaticText2: TStaticText
      Left = 224
      Top = 8
      Width = 97
      Height = 17
      Caption = #1042#1080#1076' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 264
      Top = 32
      Width = 57
      Height = 17
      Caption = #1055#1083#1086#1097#1072#1076#1082#1072
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 320
      Top = 8
      Width = 225
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 320
      Top = 32
      Width = 225
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object StaticText4: TStaticText
      Left = 232
      Top = 56
      Width = 39
      Height = 17
      Caption = #1043#1088#1091#1087#1087#1072
      TabOrder = 5
    end
    object StaticText5: TStaticText
      Left = 232
      Top = 104
      Width = 84
      Height = 17
      Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      TabOrder = 6
    end
    object StaticText6: TStaticText
      Left = 232
      Top = 152
      Width = 35
      Height = 17
      Caption = #1054#1090#1076#1077#1083
      TabOrder = 7
    end
    object StaticText7: TStaticText
      Left = 232
      Top = 200
      Width = 31
      Height = 17
      Caption = #1041#1102#1088#1086
      TabOrder = 8
    end
    object StaticText8: TStaticText
      Left = 232
      Top = 248
      Width = 40
      Height = 17
      Caption = #1057#1077#1082#1090#1086#1088
      TabOrder = 9
    end
    object Edit3: TEdit
      Left = 232
      Top = 72
      Width = 57
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
    end
    object Edit4: TEdit
      Left = 232
      Top = 120
      Width = 57
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
    end
    object Edit5: TEdit
      Left = 232
      Top = 168
      Width = 57
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 12
    end
    object Edit6: TEdit
      Left = 232
      Top = 216
      Width = 57
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 13
    end
    object Edit7: TEdit
      Left = 232
      Top = 264
      Width = 57
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 14
    end
    object Memo2: TMemo
      Left = 320
      Top = 64
      Width = 225
      Height = 41
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 15
    end
    object Memo3: TMemo
      Left = 320
      Top = 112
      Width = 225
      Height = 41
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 16
    end
    object Memo4: TMemo
      Left = 320
      Top = 160
      Width = 225
      Height = 41
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 17
    end
    object Memo5: TMemo
      Left = 320
      Top = 208
      Width = 225
      Height = 41
      Ctl3D = False
      Lines.Strings = (
        '')
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 18
    end
    object Memo6: TMemo
      Left = 320
      Top = 256
      Width = 225
      Height = 41
      Ctl3D = False
      Lines.Strings = (
        '')
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 19
    end
    object Edit8: TEdit
      Left = 248
      Top = 304
      Width = 233
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clMenu
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 20
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 551
    Height = 33
    ButtonHeight = 33
    ButtonWidth = 41
    Caption = 'ToolBar2'
    Flat = True
    Images = ImageList1
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1080' '#1074#1099#1081#1090#1080
      Caption = 'ToolButton1'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 41
      Top = 0
      Cursor = crHandPoint
      Hint = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103' '#1086#1090' '#1074#1099#1073#1086#1088#1072' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
      Caption = 'ToolButton2'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 82
      Top = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '
      Caption = 'ToolButton3'
      DropdownMenu = PopupMenu1
      ImageIndex = 2
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
    end
  end
  object DSIBstruk: TDataSource
    DataSet = IBstruk
    Left = 48
    Top = 56
  end
  object IBstruk: TIBQuery
    SQL.Strings = (
      
        'SELECT STRUK.STRUK_ID, STRUK.FUL_NAME, STRUK.STNAME, STRUK.MEDEN' +
        'D,'
      '       STRUK.STRUK, STRUK.OTDEL, STRUK.BURO, STRUK.SECTOR,'
      '       STRUK.GRUPPA, STRUK.VIDPR, STRUK.RELA, STRUK."LEVEL",'
      '       STRUK.CHISL, STRUK.KOD_STRUK, STRUK.DUD'
      'FROM STRUK'
      'ORDER BY STRUK.GRUPPA')
    Left = 16
    Top = 56
    object IBstrukSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"STRUK"."STRUK_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBstrukFUL_NAME: TIBStringField
      FieldName = 'FUL_NAME'
      Origin = '"STRUK"."FUL_NAME"'
      Size = 120
    end
    object IBstrukSTNAME: TIBStringField
      DisplayWidth = 20
      FieldName = 'STNAME'
      Origin = '"STRUK"."STNAME"'
      FixedChar = True
    end
    object IBstrukMEDEND: TIBStringField
      FieldName = 'MEDEND'
      Origin = '"STRUK"."MEDEND"'
      FixedChar = True
      Size = 1
    end
    object IBstrukSTRUK: TIBStringField
      FieldName = 'STRUK'
      Origin = '"STRUK"."STRUK"'
      FixedChar = True
      Size = 2
    end
    object IBstrukOTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = '"STRUK"."OTDEL"'
      FixedChar = True
      Size = 2
    end
    object IBstrukBURO: TIBStringField
      FieldName = 'BURO'
      Origin = '"STRUK"."BURO"'
      FixedChar = True
      Size = 2
    end
    object IBstrukSECTOR: TIBStringField
      FieldName = 'SECTOR'
      Origin = '"STRUK"."SECTOR"'
      FixedChar = True
      Size = 2
    end
    object IBstrukGRUPPA: TIBStringField
      FieldName = 'GRUPPA'
      Origin = '"STRUK"."GRUPPA"'
      FixedChar = True
      Size = 2
    end
    object IBstrukVIDPR: TIBStringField
      FieldName = 'VIDPR'
      Origin = '"STRUK"."VIDPR"'
      FixedChar = True
      Size = 1
    end
    object IBstrukRELA: TSmallintField
      FieldName = 'RELA'
      Origin = '"STRUK"."RELA"'
    end
    object IBstrukLEVEL: TIBStringField
      FieldName = 'LEVEL'
      Origin = '"STRUK"."LEVEL"'
      FixedChar = True
      Size = 1
    end
    object IBstrukCHISL: TSmallintField
      FieldName = 'CHISL'
      Origin = '"STRUK"."CHISL"'
    end
    object IBstrukKOD_STRUK: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_STRUK'
      Origin = '"STRUK"."KOD_STRUK"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 256
    end
    object IBstrukDUD: TDateField
      FieldName = 'DUD'
      Origin = '"STRUK"."DUD"'
    end
  end
  object GRUPPA: TIBQuery
    SQL.Strings = (
      
        'SELECT STRUK.STRUK_ID, STRUK.FUL_NAME, STRUK.STNAME, STRUK.MEDEN' +
        'D,'
      '       STRUK.STRUK, STRUK.OTDEL, STRUK.BURO, STRUK.SECTOR,'
      '       STRUK.GRUPPA, STRUK.VIDPR, STRUK.RELA, STRUK."LEVEL",'
      '       STRUK.CHISL, STRUK.KOD_STRUK, STRUK.DUD'
      'FROM STRUK'
      'WHERE (STRUK.RELA=:VRELA)'
      'ORDER BY STRUK.STRUK_ID')
    Left = 88
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VRELA'
        ParamType = ptInput
      end>
    object GRUPPASTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"STRUK"."STRUK_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object GRUPPAFUL_NAME: TIBStringField
      FieldName = 'FUL_NAME'
      Origin = '"STRUK"."FUL_NAME"'
      Size = 120
    end
    object GRUPPASTNAME: TIBStringField
      DisplayWidth = 20
      FieldName = 'STNAME'
      Origin = '"STRUK"."STNAME"'
      FixedChar = True
    end
    object GRUPPAMEDEND: TIBStringField
      FieldName = 'MEDEND'
      Origin = '"STRUK"."MEDEND"'
      FixedChar = True
      Size = 1
    end
    object GRUPPASTRUK: TIBStringField
      FieldName = 'STRUK'
      Origin = '"STRUK"."STRUK"'
      FixedChar = True
      Size = 2
    end
    object GRUPPAOTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = '"STRUK"."OTDEL"'
      FixedChar = True
      Size = 2
    end
    object GRUPPABURO: TIBStringField
      FieldName = 'BURO'
      Origin = '"STRUK"."BURO"'
      FixedChar = True
      Size = 2
    end
    object GRUPPASECTOR: TIBStringField
      FieldName = 'SECTOR'
      Origin = '"STRUK"."SECTOR"'
      FixedChar = True
      Size = 2
    end
    object GRUPPAGRUPPA: TIBStringField
      FieldName = 'GRUPPA'
      Origin = '"STRUK"."GRUPPA"'
      FixedChar = True
      Size = 2
    end
    object GRUPPAVIDPR: TIBStringField
      FieldName = 'VIDPR'
      Origin = '"STRUK"."VIDPR"'
      FixedChar = True
      Size = 1
    end
    object GRUPPARELA: TSmallintField
      FieldName = 'RELA'
      Origin = '"STRUK"."RELA"'
    end
    object GRUPPALEVEL: TIBStringField
      FieldName = 'LEVEL'
      Origin = '"STRUK"."LEVEL"'
      FixedChar = True
      Size = 1
    end
    object GRUPPACHISL: TSmallintField
      FieldName = 'CHISL'
      Origin = '"STRUK"."CHISL"'
    end
    object GRUPPAKOD_STRUK: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_STRUK'
      Origin = '"STRUK"."KOD_STRUK"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 256
    end
    object GRUPPADUD: TDateField
      FieldName = 'DUD'
      Origin = '"STRUK"."DUD"'
    end
  end
  object DSGruppa: TDataSource
    DataSet = GRUPPA
    Left = 120
    Top = 57
  end
  object DSELevel: TDataSource
    DataSet = ELevel
    Left = 192
    Top = 56
  end
  object ELevel: TIBQuery
    SQL.Strings = (
      
        'SELECT STRUK.STRUK_ID, STRUK.FUL_NAME, STRUK.STNAME, STRUK.MEDEN' +
        'D,'
      '       STRUK.STRUK, STRUK.OTDEL, STRUK.BURO, STRUK.SECTOR,'
      '       STRUK.GRUPPA, STRUK.VIDPR, STRUK.RELA, STRUK."LEVEL",'
      '       STRUK.CHISL, STRUK.KOD_STRUK, STRUK.DUD'
      'FROM STRUK'
      'WHERE (STRUK.RELA=:VRELA)'
      'AND (STRUK.DUD IS NULL)')
    Left = 160
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VRela'
        ParamType = ptInput
      end>
    object ELevelSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"STRUK"."STRUK_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ELevelFUL_NAME: TIBStringField
      FieldName = 'FUL_NAME'
      Origin = '"STRUK"."FUL_NAME"'
      Size = 120
    end
    object ELevelSTNAME: TIBStringField
      DisplayWidth = 20
      FieldName = 'STNAME'
      Origin = '"STRUK"."STNAME"'
      FixedChar = True
    end
    object ELevelMEDEND: TIBStringField
      FieldName = 'MEDEND'
      Origin = '"STRUK"."MEDEND"'
      FixedChar = True
      Size = 1
    end
    object ELevelSTRUK: TIBStringField
      FieldName = 'STRUK'
      Origin = '"STRUK"."STRUK"'
      FixedChar = True
      Size = 2
    end
    object ELevelOTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = '"STRUK"."OTDEL"'
      FixedChar = True
      Size = 2
    end
    object ELevelBURO: TIBStringField
      FieldName = 'BURO'
      Origin = '"STRUK"."BURO"'
      FixedChar = True
      Size = 2
    end
    object ELevelSECTOR: TIBStringField
      FieldName = 'SECTOR'
      Origin = '"STRUK"."SECTOR"'
      FixedChar = True
      Size = 2
    end
    object ELevelGRUPPA: TIBStringField
      FieldName = 'GRUPPA'
      Origin = '"STRUK"."GRUPPA"'
      FixedChar = True
      Size = 2
    end
    object ELevelVIDPR: TIBStringField
      FieldName = 'VIDPR'
      Origin = '"STRUK"."VIDPR"'
      FixedChar = True
      Size = 1
    end
    object ELevelRELA: TSmallintField
      FieldName = 'RELA'
      Origin = '"STRUK"."RELA"'
    end
    object ELevelLEVEL: TIBStringField
      FieldName = 'LEVEL'
      Origin = '"STRUK"."LEVEL"'
      FixedChar = True
      Size = 1
    end
    object ELevelCHISL: TSmallintField
      FieldName = 'CHISL'
      Origin = '"STRUK"."CHISL"'
    end
    object ELevelKOD_STRUK: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_STRUK'
      Origin = '"STRUK"."KOD_STRUK"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 256
    end
    object ELevelDUD: TDateField
      FieldName = 'DUD'
      Origin = '"STRUK"."DUD"'
    end
  end
  object IBRod: TIBQuery
    SQL.Strings = (
      'Select  *  from select_struk1(:vStruk_id)')
    Left = 56
    Top = 89
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vStruk_id'
        ParamType = ptInput
        Value = '6'
      end>
    object IBRodSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"SELECT_STRUK1"."STRUK_ID"'
    end
    object IBRodFUL_NAME: TIBStringField
      FieldName = 'FUL_NAME'
      Origin = '"SELECT_STRUK1"."FUL_NAME"'
      Size = 120
    end
    object IBRodGRUPPA_NAME: TIBStringField
      FieldName = 'GRUPPA_NAME'
      Origin = '"SELECT_STRUK1"."GRUPPA_NAME"'
      Size = 120
    end
    object IBRodSTRUKT_NAME: TIBStringField
      FieldName = 'STRUKT_NAME'
      Origin = '"SELECT_STRUK1"."STRUKT_NAME"'
      Size = 120
    end
    object IBRodOTDEL_NAME: TIBStringField
      FieldName = 'OTDEL_NAME'
      Origin = '"SELECT_STRUK1"."OTDEL_NAME"'
      Size = 120
    end
    object IBRodBURO_NAME: TIBStringField
      FieldName = 'BURO_NAME'
      Origin = '"SELECT_STRUK1"."BURO_NAME"'
      Size = 120
    end
    object IBRodSECTOR_NAME: TIBStringField
      FieldName = 'SECTOR_NAME'
      Origin = '"SELECT_STRUK1"."SECTOR_NAME"'
      Size = 120
    end
    object IBRodGRUPPA: TIBStringField
      FieldName = 'GRUPPA'
      Origin = '"SELECT_STRUK1"."GRUPPA"'
      FixedChar = True
      Size = 2
    end
    object IBRodSTRUK: TIBStringField
      FieldName = 'STRUK'
      Origin = '"SELECT_STRUK1"."STRUK"'
      FixedChar = True
      Size = 2
    end
    object IBRodOTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = '"SELECT_STRUK1"."OTDEL"'
      FixedChar = True
      Size = 2
    end
    object IBRodBURO: TIBStringField
      FieldName = 'BURO'
      Origin = '"SELECT_STRUK1"."BURO"'
      FixedChar = True
      Size = 2
    end
    object IBRodSECTOR: TIBStringField
      FieldName = 'SECTOR'
      Origin = '"SELECT_STRUK1"."SECTOR"'
      FixedChar = True
      Size = 2
    end
    object IBRodMEDEND: TIBStringField
      FieldName = 'MEDEND'
      Origin = '"SELECT_STRUK1"."MEDEND"'
      FixedChar = True
      Size = 1
    end
    object IBRodMEDEND_NAME: TIBStringField
      FieldName = 'MEDEND_NAME'
      Origin = '"SELECT_STRUK1"."MEDEND_NAME"'
      Size = 30
    end
    object IBRodVIDPR: TIBStringField
      FieldName = 'VIDPR'
      Origin = '"SELECT_STRUK1"."VIDPR"'
      FixedChar = True
      Size = 1
    end
    object IBRodVIDPR_NAME: TIBStringField
      FieldName = 'VIDPR_NAME'
      Origin = '"SELECT_STRUK1"."VIDPR_NAME"'
      FixedChar = True
      Size = 30
    end
    object IBRodCHISL: TSmallintField
      FieldName = 'CHISL'
      Origin = '"SELECT_STRUK1"."CHISL"'
    end
    object IBRodDUD: TDateField
      FieldName = 'DUD'
      Origin = '"SELECT_STRUK1"."DUD"'
    end
    object IBRodLEVEL: TIBStringField
      FieldName = 'LEVEL'
      Origin = '"SELECT_STRUK1"."LEVEL"'
      FixedChar = True
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = IBRod
    Left = 88
    Top = 89
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 496
    Top = 10
    Bitmap = {
      494C010103000400040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001001000000000000012
      0000000000000000000000000000000000000000000000000000000000000000
      0000000048094809480948094809480900000000000000000000000000000000
      0000000000000000000000000000000000000000205520552055205520552055
      0000000000000000000000000000000000000000000000000000000000000000
      F03DB5561042AD3500000000EF3DD65A1863534AF03D00000000000000000000
      0000C275C275C175F17AFF7FFE7F027AC0791863186318631863186318631863
      18634E2A4E2A4E2A4E2A4E2A4E2A4E2A4E2E0000000000000000000000000000
      2C12EB0DCA0DAA0DA90D890D680948090609C404000000000000000000000000
      00000000000000000000000000000000C079A071806D60658065606140592055
      0049E038000000000000000000000000000000000000000000000000F03D9452
      BD77BE77524A1042A514A5144A29F03DB55639675A6BD75A3146000000000000
      0000347F667E017E227EFF7FFF7FFF7FFF7F1863186318631863186318631863
      18632B222B222B262B220B220B220B220B22000000000000000000004D122D12
      2C120D166F1EF222F32AF32AB1222E1EAA1168092609E5040000000000000000
      000000000000000000000000E07DC07DC0792576AC76127B347B347BF1766B72
      C36540590049E03C00000000000000000000000000000000F03D324A7B6FFF7F
      FF7FBD7732461042630C00042104420CA5142A291042D65A7B6F1863EF3D0000
      0000A821A821A821A821A81DA81DA81DA821871DA71DA721A821A821C825C825
      C925C825C821C825C825C825C825A821A72100000000000000004D124D128F16
      342B7743FF7FFF7FFF7FFF7FFF7FFF7F5743D126AA114709C504000000000000
      00000000000000000000E07DE07D467E557FFE7FFF7FFF7FFF7FFF7FFF7FFF7F
      DD7FF276C4652051E03C00000000000000000000000010423967FF7FFF7FDE7B
      FF7F7C6F314631468C31E71C630C210421042104420CA5144B29CF3900000000
      0000A821A821A821A821A821A821A825A825A821A821A821A821A821A825A925
      A925C925C925A821A821C921C921C921C8210000000000004D124D12331F9843
      FF7FFF7FFF7FFF7F98439843FF7FFF7FFF7FFF7F56434E226809E50400000000
      0000000000000000E07D017E117FFE7FFF7FFF7FBB7FBB7F787F997F9B7F9B7F
      FF7FFF7FDC7F8D724059E03C000000000000CE39D65ADE7BDF7BBE77BE777B6F
      9452F03DAD35CE39F04131461142AD350821841042082104430CAE3500000000
      0000EA29EB290B2A0B2A0B2A0B2A0B2AEB29EA29EA25EA25E925E925E925E925
      E925C921C821C81DC81DC81DC81DC821C921000000004D124D125427FF7FFF7F
      FF7F773B331F6F1A6E1A4E1A8F1A1327773FFF7FFF7FFF7F4F224809E5040000
      000000000000017E017E547FFF7FFF7FBC7F567FC275A175A071A071A071C375
      787FFF7FFF7FFF7FAE722055E03C00000000CE399C73BD779C733967734EEF3D
      3246D65A3146CF39AE35AD35AE35EF3D31423146CF392925C61CAE3500000000
      0000CB2DCB29AB29AB29CB2DCB2DAB29AA298925692569216821682168216821
      682168216821682168216721471D67216721000000004D12321BFF7FFF7FFF7F
      54276E122D124D1655332D16EB0D0C0E0D16342FFF7FFF7F374BCB1547090000
      000000000000007EEF7EFF7FFF7FBC7F8B7AC175C175C175C275A175A071A071
      A071AD7ABC7FFF7FFE7FE565205100000000CE395A6B18633246CF3D3246F75E
      39673A675B6BF75E94523246F041CE39AE35AD35CF3910423146CF3900000000
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00004E126E12773FFF7FFF7F5323
      4D124D12AF16773BFF7FF11E0C120C0E0C0E0C12342BFF7FFF7FF33288094709
      00000000017E447EDC7FFF7FBC7F8A7AE275E275E275C175C175C175A175A071
      A071A0718C7ABC7FFF7F5677605D40550000CE391042EF3D524AD65A18631863
      F75E7B6FDE7BBD779C735A6B1863B556534A3146EF3DCE39AE35AD3500000000
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00004D12321BFF7FFF7F76334E12
      4D12D016773FFF7FFF7F76332C120C120C0E0C0E0C12563BFF7FFF7FEC19890D
      00000000017EEF7EFF7FFF7F117F037A337FFF7FF17AC275C275E375E375137B
      DC7FA075A071347BFF7FFF7F276A605D0000CE39524AD75A1863F75EF75ED65A
      3967BE7774525452D65A39677B6F7B6F39671863B656744E524ACF3900000000
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6E126E127633FF7F9847D1164D12
      F1169843FF7FFF7FFF7F98476E162C120C120C0EEB0DB01EFF7FFF7FB126AA0D
      4709237E237E987FFF7FFF7F047A037A697A997FFF7FAD7AE275C275357FFF7F
      347BA175A075E475BC7FFF7FF27680654055CE39F75EF75EF75EF75ED65A3967
      BE77534A104269263042F03D1042524A9552F75E186318631863104200000000
      00002F2E2F2E2F2E2F2E2F2E0E2E0E2AED29ED25ED25ED25ED25ED25ED25ED25
      ED250E2A0E2A0E2E0E2E0E2E0E2E0E2E2F2E6E128F169743FF7F773B6E12331B
      9847FF7FFF7F331F321BFF7F331F2D122C120C120C120C169843FF7F1537EB0D
      CA0D237E467EFE7FFF7F987F247A247A047A467A787FFE7FAD7ACF7AFF7F347F
      E375C175A175A175997FFF7F797BC06DA0690000534A1863176318635A6B7B6F
      3146524ABD73965F9B6F5A6B7E42734E1142EF3DF041524A524A314600000000
      00004F2E5032703650324F322E320E2E0D2E0E2E0E2E2E2E2E2E4F324F322F2E
      2F2E2E2A2E2E2F2E4F2E4F324F324F324F326E12D0169847FF7F552B8E127633
      FF7F9843321B4D124E12763B773B4D122D122C120C120C125637FF7F57430C12
      0C12237E8A7EFF7FFF7FF07E257E457E247E047A477A787FFE7FDD7FCF7AE375
      C275C175C175C175127BFF7FDD7FE175C0750000000031469552F75E9452F03D
      B556BE77BE77BE779C737B6F7B6F7B6F39671863000000000000000000000000
      00000C260C262C264D2A6E2E6F326E2E4D2A2D2A2D2A4D2A2D2A2D2A2C260C26
      0C260B220B220B220B220B220C260C260C266E12121B9847FF7F552B6E12B016
      7633F1164E126E124D12D116FF7FD0164D122D122D122C125533FF7F97432D12
      2C12447ECE7EFF7FFF7FEF7E457E257E467E257E247A567FFF7FFF7FAC7AE379
      E275C275C275C175F17AFF7FFE7F027AC0790000000000000000AE35524A1863
      B5561042945218635A6B5B6B5A6B5A6B5A6B39670000CF392070000000000000
      0000786B996F9A73BB77BB739B6F175F175F58677A6F596B796B9A6FBB73BB73
      9B6FBB739A6F5967376337635867586738638F12331BFF7FFF7F552F8F168F12
      8F126E126E126E126E124D12552B552F4D124D124D122D12563BFF7F773F2D12
      2C12457E107FFF7FFF7F327F457E457E457E467E117FFE7F767F997FFE7FAD7A
      037AE279E275C275337FFF7FDD7F017AE07900000000000000001042DD7BBE77
      3963524A524A9452F65EF75E1763F75E9452F03D000000700000207000300000
      000067216721671D671D471D461D471D471D471D471D471D471D471D661D661D
      661D661D661D661D861D861D861D861D861D8F16331B9843FF7F773FAF168F16
      8F168F128E126E126E124E128F12773BAF164D124D126E129843FF7F76332D12
      2D12467E107FFF7FFF7FBB7F467E467E687E567FFF7F117F247E467E997FFF7F
      127FE379E379E2799A7FFF7F987FE07DE079000000000000000000001C5F7F67
      5F633F5B1E5B1D5B1C5F1B633A67186394520000000000000000000000680000
      0000A821A821A821A821A8218821882187218821A821A821A821882188218721
      872187218721872187218721872187218621D016121B773FFF7FFF7F321B6E12
      8F168F168F168F126E126E124E12121754234D124D12331BFF7FFF7F331F4D12
      2D12AA7EEE7EDD7FFF7FFF7F887E467E347FFF7F767F457E257E257E477E9A7F
      FF7F037A037A487AFF7FFF7F117FC07DE079000000000000000000009A4E5F63
      3F5F1F57DF52BF4A9F469F467F42DB5A00000000000000000000000000280070
      000000000000000000000000000000000000661D661D861D871D871D8721A821
      A821A821A821C925C925C925C925C925C9250000D1167637FF7FFF7F763BAF16
      8F128F168F168F168F126E126E126E12331B8F128F12773FFF7F98478F164D12
      00000000AB7EBB7FFF7FFF7F987F667EAB7E337F687E457E457E457E257E687E
      547F047A047A787FFF7FFF7F677EE07D0000000000000000000000009A4E7F67
      3F5F1F57FF52DF4EBF469F425E3E000000000000000000000000000000000060
      0070FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0D320D360D360D320D32
      0D32ED31ED2DCC2DCC2DCB29CB29AB29AA290000F11654279847FF7FFF7F552F
      8F166E128F168F168F168F126E126E126E12D1167633FF7FFF7F54274D124D12
      00000000AB7E557FFF7FFF7FFF7F117F667E667E467E467E467E457E457E257E
      257E257A997FFF7FFF7F557FE07DE07D000000000000000000000000BB527F67
      3F5F1F57FF52DF4EBF469F423C3A000000000000000000000000000000000000
      0000186318631863186318631F0010020000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000121B773FFF7FFF7FFF7F
      7633D1168F126E126E126E126E126E12F1167637FF7FFF7F773F8E124D120000
      000000000000CD7EDD7FFF7FFF7FFF7F547F667E667E667E467E467E457E457E
      457E777FFF7FFF7FDD7F457EE07D0000000000000000000000000000BB527F67
      3F5F1F57FF52DF4EBF469F427E42000000000000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000121B54279843FF7FFF7F
      FF7F9843552F331F321B321B53237633FF7FFF7FFF7F9847F1164D124D120000
      000000000000EE7E547FFF7FFF7FFF7FFF7FFF7F327FAA7E887E887EAB7E347F
      FF7FFF7FFF7FFF7FCC7EE07D017E0000000000000000000000000000BB525F63
      3F5F1F57FF52DF4EBF467E427E42000000000000000000002070000000000000
      000000001042186318631863186310420000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000121B552B9843FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F763BF1164D124E1200000000
      0000000000000000EE7E557FFE7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FBB7FAC7E007E017E00000000000000000000000000009A529F6F5F63
      3F5F1F57FF52DF4EBF4A7E420000000000000000000000700000207000300000
      00000E2E0E2A0E2A0E2A0E2A0E2E0E2E0E2E2E2A0E2A0E2A0D2A0D2A0D2A0E2E
      2E2E2E2E0E2E0D2A0D2A0E2E0E2E2E2E2E320000000000000000321B331F763B
      9843FF7FFF7FFF7FFF7FFF7FFF7FFF7F773F54278F164D126E12000000000000
      00000000000000000000EF7E327FBB7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      DD7F347F667E017E227E00000000000000000000000000000000BB52BF6F7F67
      5F633F5B1F57DF4E5C427E420000000000000000000000000000000000680000
      0000004200001042186318631863100000004E2E4E2E4E2E4E2E2D2A2D2A2D2A
      2C262D2A2D2A2E2A2E2A2D2A2D2A2E2A2E2E000000000000000000005423121B
      54237633773B773F773F773F7637542712178F166E1200000000000000000000
      000000000000000000000000327FEE7E337F997FDC7FDD7FDD7FDC7FBA7F557F
      CD7E467E237E0000000000000000000000000000000000003842BB529A4E9A4E
      7A4A5A465A463A427E4200000000000000000000000000000000000000280070
      0000EA25EA25EA250B2E4D368F42B04AB04A90464E3E0B32EA2DEB29EB290B26
      EA25EA21EA21EA210A220A220A220A220A220000000000000000000000000000
      5323121B121B321B321B1217D116B0168F120000000000000000000000000000
      00000000000000000000000000000000327FEE7EEE7EEF7EEF7ECD7EAB7E887E
      457E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000060
      0070FF7F0042E07F004200001F001F0000006725672567256725882988298829
      87298729A9312C3E904EF35A145F145F145F424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00FF81FFFF81FFFE183F000400FE007FFE
      007FF8000F023202F8001FF8001FE00003002300F0000FF0000FC00007003700
      E00007E00007000007003800C00003C00003000007003700C00003C000030000
      0700320080000180000100000700040080000180000100000700020000000000
      0000000007000200000000000000800007000200000000000000C00003000200
      000000000000F0000B000200000000000000F00013000200000000000000F800
      BB000200000000000000F80181000200800001800001F803FC00020080000180
      0001F803FF000200C00003C00003F80383000200C00003C00003F803AB01D601
      E00007E00007F0079301D501F0000FF0000FF007BB01C401F8003FF8003FE00F
      81005C00FE00FFFE00FFFFFFFC02970300000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 184
    object N3: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1075#1088#1091#1087#1087#1099
      OnClick = N3Click
    end
    object N1: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1086#1075#1086' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
      OnClick = N1Click
    end
    object N4: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1086#1090#1076#1077#1083#1072
      OnClick = N4Click
    end
    object N2: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1074#1089#1077#1075#1086' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
      OnClick = N2Click
    end
    object N5: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1089#1086#1075#1083#1072#1089#1085#1086' '#1096#1090#1072#1090#1085#1086#1075#1086' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1103
      OnClick = N5Click
    end
  end
  object DS_REPORT: TDataSource
    DataSet = REPORT
    Left = 120
    Top = 129
  end
  object REPORT: TRxIBQuery
    SQL.Strings = (
      
        ' SELECT S1.STRUK_ID, S1.FUL_NAME,  S1.GRUPPA, S1.STRUK,         ' +
        '        S1.OTDEL, S1.BURO,S1.SECTOR,'
      '    case S1.STRUK  '
      '        when '#39'20'#39' then '#39'0'#39
      '         else S1.MEDEND'
      '    end  MEDEND,'
      
        '                S1.KOD_STRUK,  S1.VIDPR, VIDPR.NAME VIDPR_NAME, ' +
        '                S1.CHISL,S1.DUD,S1."LEVEL", MEDEND.NAME'
      '    FROM STRUK S1'
      '      LEFT JOIN MEDEND ON (S1.MEDEND=MEDEND.KOD)'
      '      LEFT JOIN VIDPR ON (S1.VIDPR=VIDPR.VIDPR_ID)'
      'WHERE (S1.DUD IS  NULL)'
      '%usl'
      'ORDER BY S1.GRUPPA,  z(S1.STRUK), 8,  z(S1.OTDEL), '
      '                      z(S1.BURO), z(S1.SECTOR)')
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
      end>
    Left = 88
    Top = 129
    object REPORTSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"STRUK"."STRUK_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object REPORTFUL_NAME: TIBStringField
      FieldName = 'FUL_NAME'
      Origin = '"STRUK"."FUL_NAME"'
      Size = 120
    end
    object REPORTGRUPPA: TIBStringField
      FieldName = 'GRUPPA'
      Origin = '"STRUK"."GRUPPA"'
      FixedChar = True
      Size = 2
    end
    object REPORTSTRUK: TIBStringField
      FieldName = 'STRUK'
      Origin = '"STRUK"."STRUK"'
      FixedChar = True
      Size = 2
    end
    object REPORTOTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = '"STRUK"."OTDEL"'
      FixedChar = True
      Size = 2
    end
    object REPORTBURO: TIBStringField
      FieldName = 'BURO'
      Origin = '"STRUK"."BURO"'
      FixedChar = True
      Size = 2
    end
    object REPORTSECTOR: TIBStringField
      FieldName = 'SECTOR'
      Origin = '"STRUK"."SECTOR"'
      FixedChar = True
      Size = 2
    end
    object REPORTMEDEND: TIBStringField
      FieldName = 'MEDEND'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object REPORTKOD_STRUK: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_STRUK'
      Origin = '"STRUK"."KOD_STRUK"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object REPORTVIDPR: TIBStringField
      FieldName = 'VIDPR'
      Origin = '"STRUK"."VIDPR"'
      FixedChar = True
      Size = 1
    end
    object REPORTVIDPR_NAME: TIBStringField
      FieldName = 'VIDPR_NAME'
      Origin = '"VIDPR"."NAME"'
      Size = 30
    end
    object REPORTCHISL: TSmallintField
      FieldName = 'CHISL'
      Origin = '"STRUK"."CHISL"'
    end
    object REPORTDUD: TDateField
      FieldName = 'DUD'
      Origin = '"STRUK"."DUD"'
    end
    object REPORTLEVEL: TIBStringField
      FieldName = 'LEVEL'
      Origin = '"STRUK"."LEVEL"'
      FixedChar = True
      Size = 1
    end
    object REPORTNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"MEDEND"."NAME"'
      FixedChar = True
      Size = 10
    end
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    Left = 280
    Top = 3
    ReportForm = {19000000}
  end
  object frREPORT: TfrDBDataSet
    DataSet = REPORT
    Left = 312
    Top = 3
  end
end
