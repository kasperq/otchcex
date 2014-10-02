object FEdiz: TFEdiz
  Left = 240
  Top = 109
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1077'.'#1080'.'
  ClientHeight = 211
  ClientWidth = 184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 184
    Height = 180
    Align = alClient
    DataSource = DM1.DSediz
    Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'KEI_ID'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NEIS'
        Title.Alignment = taCenter
        Title.Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 180
    Width = 184
    Height = 31
    Align = alBottom
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    DesignSize = (
      184
      31)
    object SpeedButton1: TSpeedButton
      Left = 14
      Top = -8
      Width = 79
      Height = 30
      Hint = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100' '#1074#1099#1073#1086#1088' '#1087#1088#1086#1076#1091#1082#1094#1080#1080' '#1080' '#1074#1099#1081#1090#1080
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF1948011A4C011A4E001A4C01194801194801FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF266F011F5E00246E002876012A
        78032876012570002061001A4B011A4B01FF00FFFF00FFFF00FFFF00FFFF00FF
        236203266F01348C0844B70A54E40C57FF0353FC004BCD0A39970A2774001D56
        00174202FF00FFFF00FFFF00FF2871032A77033DA80861EC1BFFFFFF60E02055
        DA1359E612FFFFFFFFFFFF4BC70D2A7A021C5600194901FF00FFFF00FF287103
        3CA6075EFF0E5EEF163FA50C32810B4DC7112C780635850E53D115FFFFFF4CC8
        0E287501194901FF00FF246A0233870957F608FFFFFF3794082F7D0855DE10FF
        FFFF36870D27750029770253D115FFFFFF39960A2061001B4F012973043DAD05
        FFFFFF4BD00835910757E61072C24958E61148BD0E27780027770035810EFFFF
        FF4BCE0A2570001B4F012E790846CA05FFFFFF3CB00349CF065CFF0B3BA20834
        8D0859E612317E0B2879002877005AE01754FD002977021C520132810A4CD507
        FFFFFF3BB100339900369C032F84052D7F0447C50841B00A2A7B0128790056DA
        1358FF042C7A061C550033810B4BDB02FFFFFF41C500309000319400318F0230
        870431880645C1072E7E072E7C075EF01452EF042A77031D53012F7A0A49D106
        FFFFFF53FA00329700319500329700319101308704379906348F0740AD0AFFFF
        FF46BD0A2672011B4F01FF00FF33830C58FF05FFFFFF47D80032970030910030
        9200308C022E84033DA9075AFF0760ED1A369207226501FF00FFFF00FF33830C
        4EEC005BFF09FFFFFF53F90041C4003BB1013DB9004ADB02FFFFFFFFFFFF3EAB
        082A7504226501FF00FFFF00FFFF00FF3B9D0A50F1005CFF0BFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF57F5073EAC072D7A07246602FF00FFFF00FFFF00FFFF00FF
        FF00FF35870D48CA0751F30053FA0056F40751EA0446C7053795082B77052B77
        05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF34830C3A9C0A3B
        9E09368D0A2E7909297403FF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 106
      Top = 0
      Width = 78
      Height = 30
      Hint = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103' '#1086#1090' '#1074#1099#1073#1086#1088#1072' '#1080' '#1074#1099#1081#1090#1080
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF033B8A033D90013D95023B91033A89033A89FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0357D30147B20051D0035CE007
        63E3035CE0004ED30042B7023A8F023A8FFF00FFFF00FFFF00FFFF00FFFF00FF
        0650BA0357D32781F278B4F7CAE2FCE9F4FFDCEDFF9CC7FA3F8FF20155DD0140
        A404367DFF00FFFF00FFFF00FF075DD70762E155A0F7F3F8FEFFFFFFE9F3FCC6
        DEFAD9E9FCFFFFFFFFFFFF99C5F8055DE70040A302398BFF00FFFF00FF075DD7
        529EF7FEFEFFE2EFFC0F65EB0558E70959E50250E20454E16FA6F0DEEBFC9CC9
        F80355DE02398BFF00FF0455C9207DF0E1EFFEFFFFFF6FA7F076AFF7176CED06
        5AE9075AE60F5EE66AA1F06FA7F0FFFFFF3E8FF20043B7033E96085FDA56A1FA
        FFFFFF9ECBFB1573F779B4FACFE3FC1C72EF2274EECBE1FB6DA5F20556E3DEEB
        FC9FCBFA0050D4033E960F6BE68BC1FCFFFFFF2987FC1F7DFA1674F779B5FADE
        EDFEDDEDFC6EAAF4065AE90455E5A0C5F6DEEFFF0560E202409C1B76EDA4CFFC
        FFFFFF2988FF1C7EFE1C7BFB2D87FBEDF6FEEDF6FE2279F20B63ED085DEA88BA
        F4EBF6FF0C68E60141A1207AEBA5CFFEFFFFFF3F97FF1F81FF3B93FEE1EFFF6B
        ADFC69ABFBE0EEFE2C80F30C65EEC6DEFBCEE5FE0763E203419E146FE79ACAFC
        FFFFFFB2D8FF318EFFE7F3FF67AFFF1D7EFE1A7AFB60A7FCE5F2FE3F8FF6E2EF
        FE81BAF80258D8033E96FF00FF237BEBEDF6FFFAFCFF5DA9FF469AFF1F81FF1F
        81FF1E80FF1C7DFC4D9CFBF0F8FFF2F8FE3089F4024FC0FF00FFFF00FF237BEB
        BFDEFFF3F8FFFAFCFFB0D5FF3E96FF2B89FF308CFF6AB0FEFAFCFFFFFFFF5DA6
        F70860DE024FC0FF00FFFF00FFFF00FF4997F3C7E3FFF7FBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE0EFFE5CA5F80E6BE70552C2FF00FFFF00FFFF00FFFF00FF
        FF00FF2D82EB91C5FBCCE6FFD9EDFFDCEDFEC4E0FE86BFFC348BF40A65E10A65
        E1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF247BEB4696F34A
        98F42F87F0116CE6075FDCFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton2Click
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 214
    Bitmap = {
      494C010102000400040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000184A0000184A0000184A
      0000184A0000184A0000184A0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000319400003194000031
      9400003194000031940000319400000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBD
      BD00BDBDBD007B7B7B0000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000297B000021730000216B0000216300002163
      0000185A000018520000184A0000104200001031000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000005AEF000052DE00004ACE000042BD000042
      BD000042B5000039A5000031940000297B0000215A0000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD007B7B7B0000000000BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000002984000029840000297B0000317B0800398C100042A518004AAD
      18004AAD1800429C1800397B1800216300001852000010420000103100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063FF00005AF700005AEF00106BE7004A94E7007BB5EF008CBD
      EF008CBDEF0073ADE7004284D600085ABD0000399C0000297B00002163000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B0000000000FFFFFF00DEDE
      DE00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00002984000029840000319400004ACE00005AEF1000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005AE718004A9C180021630800184A00001031
      0000000000000000000000000000000000000000000000000000000000000000
      00000063FF00005AFF00187BFF0094C6FF00F7F7FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7EFFF007BADE700105ABD00003194000021
      630000000000000000000000000000000000FFFFFF00DEDEDE00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000002984
      0000298C000042C600005AFF0800FFFFFF00FFFFFF00FFFFFF00FFFFFF005AFF
      08005AFF0800FFFFFF00FFFFFF00FFFFFF00FFFFFF005ADE1800397B18001852
      0000103100000000000000000000000000000000000000000000000000000063
      FF00006BFF0073B5FF00F7FFFF00FFFFFF00FFFFFF00CEE7FF00CEE7FF00B5D6
      FF00C6DEFF00CEE7FF00CEE7FF00FFFFFF00FFFFFF00E7EFFF00528CD6000039
      9C0000216300000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000298C0000298C
      000042D60000FFFFFF00FFFFFF00FFFFFF0052FF000042BD0000318C0800318C
      0800318408003994080042B5080052FF0000FFFFFF00FFFFFF00FFFFFF003984
      1800184A00001031000000000000000000000000000000000000006BFF00006B
      FF0094C6FF00FFFFFF00FFFFFF00DEE7FF009CC6FF00085AE7000052E7000052
      E700004AE700004ADE00085AE700B5D6FF00FFFFFF00FFFFFF00FFFFFF005294
      DE0000319400002163000000000000000000DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000002984000039BD
      0000FFFFFF00FFFFFF00FFFFFF0042D60000298C0000298400003184000052DE
      0800317B08002173000021730000317B08004ACE0800FFFFFF00FFFFFF006BCE
      310029630800184A0000000000000000000000000000000000000063FF0063AD
      FF00FFFFFF00FFFFFF00DEEFFF00428CF700005AE7000052E7000052E700085A
      E7000052E7000052E700004AE700004ADE005294EF00D6E7FF00FFFFFF00EFF7
      FF001863BD0000318C000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD007B7B7B0000000000DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000298C00003194000052FF
      0000FFFFFF00FFFFFF0042CE00002984000029840000319C000052FF0000FFFF
      FF0039AD0800297B00002173000021730000297300004AC60800FFFFFF00FFFF
      FF0052AD2900185A0000184A00000000000000000000006BFF001073FF00DEEF
      FF00FFFFFF00DEEFFF00398CF700085AEF00085AEF00085AEF00005AE7000052
      E7000052E7000052E7000052E7000052E700004ADE00428CEF00D6E7FF00FFFF
      FF00A5C6EF000042A5000039940000000000DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE0000000000BDBDBD00BDBDBD00FFFF
      FF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000298C000039BD0000FFFF
      FF00FFFFFF004AEF0000298C00002984000031A5000052FF0000FFFFFF00FFFF
      FF004AEF0000297B0000297B00002173000021730000297B000052E70800FFFF
      FF00FFFFFF00316B1000185A00000000000000000000006BFF005AADFF00FFFF
      FF00FFFFFF0073B5FF000863EF0084BDF700FFFFFF0073ADF700005AE700005A
      E700085AE700085AE70084B5F700E7EFFF000052E700004AE7008CBDF700FFFF
      FF00FFFFFF00296BC6000039AD0000000000BDBDBD00FFFFFF00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00298C0000298C00004AE70000FFFF
      FF005AFF080039AD00002984000039B500005AFF0800FFFFFF00FFFFFF00FFFF
      FF005AFF0800318C0000297B0000297B00002173000021730000399C0800FFFF
      FF00FFFFFF004A94210021630000184A00000873FF000873FF00B5DEFF00FFFF
      FF00FFFFFF00106BF700086BF7003184F700BDDEFF00FFFFFF004A94F700085A
      EF00005AE70094C6F700FFFFFF008CBDF7000052E7000052E7001063E700D6E7
      FF00FFFFFF007BADE7000042C60000399400BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00298C0000319400005AFF0000FFFF
      FF0052FF00003194000039BD00005AFF0800FFFFFF00FFFFFF0042CE000039BD
      0000FFFFFF0042C600002984000029840000297B0000217B0000297B00005AFF
      0000FFFFFF0052C6210021730000216B00000873FF00187BFF00EFF7FF00FFFF
      FF00B5DEFF001073F7001073F700106BF7002173F700B5D6FF00F7FFFF004A94
      F70063A5F700FFFFFF0094BDF7000863E7000052E7000052E7000052E700BDDE
      FF00FFFFFF00BDD6F7000052D600004ACE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00298C000031A500005AFF0800FFFF
      FF004ADE0000319400004AEF0000FFFFFF005AFF080039BD0000298C0000298C
      000052F7000052FF0000298C00002984000029840000297B0000297B000052DE
      0800FFFFFF005AE71800297B0000297B00000873FF003994FF00FFFFFF00FFFF
      FF006BADFF001073F700187BF7001073F700106BF700217BF700B5D6FF00F7FF
      FF00E7F7FF0063A5F7000863EF00005AE700005AE7000052E7000052E7007BB5
      F700FFFFFF00E7EFFF000063E700005AE700BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003194000039B500005AFF0800FFFF
      FF004ADE00003194000031A500004AEF000039AD0000298C0000298C0000298C
      000039AD0000FFFFFF0031A50000298400002984000029840000297B000052D6
      0800FFFFFF005AFF0000297B0000297B0000107BFF0052A5FF00FFFFFF00FFFF
      FF0063ADFF00187BFF001073FF00187BF7001073F700106BF7009CCEFF00FFFF
      FF00FFFFFF004A94F7000863EF00085AEF00085AEF00005AE700005AE7006BAD
      F700FFFFFF00EFF7FF000063F700005AEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003194000039BD0000FFFFFF00FFFF
      FF004AE700003194000031940000319400003194000031940000298C0000298C
      0000298C00004ADE00004AE700002984000029840000298400002984000052E7
      0800FFFFFF0052FF00002984000029840000187BFF006BADFF00FFFFFF00FFFF
      FF007BBDFF00187BFF00187BFF001873FF00187BFF0073B5FF00F7F7FF00A5CE
      FF00BDDEFF00F7F7FF005294F7000863EF000863EF00085AEF00005AE7008CBD
      F700FFFFFF00E7F7FF00006BF700005AF700BDBDBD00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003194000042C600005AFF0800FFFF
      FF0052FF0000319C000031940000319400003194000031940000319400003194
      0000298C00003194000052FF0000319C00002984000029840000319400005AFF
      0800FFFFFF004AEF00002984000029840000187BFF006BB5FF00FFFFFF00FFFF
      FF00CEE7FF00187BFF00187BFF002984FF009CCEFF00FFFFFF0073B5FF001073
      F700187BF700BDDEFF00FFFFFF007BB5FF000863EF000863EF000863EF00C6DE
      FF00FFFFFF00B5DEFF000063FF00005AF700BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0031A5000039B5000052FF0000FFFF
      FF00FFFFFF0039BD000031940000319400003194000031940000319400003194
      000031940000298C000039B5000042CE0000298400002984000039BD0000FFFF
      FF00FFFFFF0042C6000029840000298400003994FF005AA5FF00EFF7FF00FFFF
      FF00FFFFFF00298CFF00187BFF008CC6FF00FFFFFF00A5CEFF001873FF001073
      FF001073F700217BF700C6DEFF00FFFFFF00086BF7000863EF00297BF700FFFF
      FF00FFFFFF0073B5FF00005AFF00005AF700BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000039AD000052F70000FFFF
      FF00FFFFFF0052F70000319C0000319400003194000031940000319400003194
      00003194000031940000298C000039BD0000319400003194000052FF0000FFFF
      FF005AFF0800319C00002984000000000000000000003994FF00CEE7FF00FFFF
      FF00FFFFFF00B5D6FF001884FF00429CFF0084C6FF00298CFF00187BFF00187B
      FF001073FF001073FF002984FF0094C6FF00106BF700106BF700B5D6FF00FFFF
      FF00FFFFFF002184FF00005AFF0000000000DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE0000000000BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000039AD000042D600005AFF
      0800FFFFFF00FFFFFF004AE70000319C00003194000031940000319400003194
      00003194000031940000298C0000298C000039AD00004AEF0000FFFFFF00FFFF
      FF0042D6000029840000298400000000000000000000429CFF0094CEFF00FFFF
      FF00FFFFFF00FFFFFF0073B5FF001884FF001884FF00187BFF00187BFF00187B
      FF00187BFF00187BFF001073FF001073F7001073F700BDDEFF00FFFFFF00FFFF
      FF0094CEFF000063FF000063FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000039B5000052FF
      0000FFFFFF00FFFFFF00FFFFFF004AEF000039AD000031940000319400003194
      000031940000319400003194000039AD000052F70000FFFFFF00FFFFFF0052FF
      000031940000298400000000000000000000000000000000000052A5FF00E7F7
      FF00FFFFFF00FFFFFF00FFFFFF008CC6FF001884FF001884FF001884FF00187B
      FF00187BFF00187BFF00187BFF00187BFF00A5CEFF00FFFFFF00FFFFFF00E7F7
      FF00107BFF000063FF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000039BD000042D6
      00005AFF0800FFFFFF00FFFFFF00FFFFFF005AFF08004AE7000042C6000039BD
      000039BD000042CE00004AEF0000FFFFFF00FFFFFF00FFFFFF005AFF080039AD
      000029840000298C0000000000000000000000000000000000005AA5FF008CC6
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007BBDFF003994FF00298C
      FF00298CFF004294FF008CC6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A9C
      FF000063FF00006BFF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000000039B5
      00004ADE00005AFF0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0052F7000039AD0000298C
      0000298C00000000000000000000000000000000000000000000000000005AA5
      FF009CCEFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6E7FF00429CFF00006B
      FF00006BFF00000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000039BD000042C6000052F700005AFF0800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0052FF000042D6000031940000298C0000298C
      0000000000000000000000000000000000000000000000000000000000000000
      00005AADFF007BBDFF00D6E7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7F7FF008CC6FF001884FF00006BFF00086B
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000042CE000039B5000042CE00004AEF000052FF000052FF000052FF
      000052FF000052F7000042D6000039B5000031940000298C0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007BBDFF005AA5FF0084C6FF00BDDEFF00DEEFFF00E7F7FF00E7F7
      FF00DEEFFF00C6E7FF0094C6FF0052A5FF00187BFF000873FF00000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000042CE000039B5000039B5000039BD000039BD
      000039B5000039AD0000319C0000319400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007BBDFF005AA5FF005AA5FF0063ADFF0063AD
      FF0052A5FF003994FF00298CFF00187BFF000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00FF81FFFF81FFC3FBC3FBC3FBFE007FFE
      007F31FE03FC03FCF8001FF8001FFFFF2AFD9CFFF0000FF0000FE9FC20FB40FB
      E00007E00007A8FC11FEFFFFC00003C00003FFFFFFFFCFFDC00003C00003FFFF
      2BFD11FE80000180000140FB60FBFFFF800001800001FFFFFFFFFFFF00000000
      0000FFFFFFFFFFFF000000000000FFFFFFFF2BFD00000000000061FBFFFFFFFF
      000000000000FFFFFFFF9CFF000000000000FFFFFFFFFFFF000000000000FFFF
      FFFFFFFF000000000000FFFFFFFFFFFF80000180000118FF32FE0AFD80000180
      000110FEF7FE7BFFC00003C00003FFFFFFFFFFFFC00003C00003FFFFFFFFFFFF
      E00007E00007A7FC45FCE3FBF0000FF0000FCFFD2BFD2BFDF8003FF8003FFFFF
      FFFFFFFFFE00FFFE00FF00000000000000000000000000000000000000000000
      000000000000}
  end
end