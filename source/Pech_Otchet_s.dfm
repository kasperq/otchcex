object FPerOtchet: TFPerOtchet
  Left = 247
  Top = 160
  Caption = #1055#1077#1088#1077#1076#1072#1095#1072' '#1086#1090#1095#1077#1090#1086#1074' '#1074' '#1040#1057#1059
  ClientHeight = 193
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Otchet: TTable
    DatabaseName = 'ot'
    DefaultIndex = False
    TableName = 'OTCHET.DBF'
    Left = 284
    Top = 58
    object OtchetMES1: TStringField
      FieldName = 'MES1'
      Size = 2
    end
    object OtchetOTSTRK: TStringField
      FieldName = 'OTSTRK'
      Size = 4
    end
    object OtchetOTPROD: TStringField
      FieldName = 'OTPROD'
      Size = 6
    end
    object OtchetOTKPN: TStringField
      FieldName = 'OTKPN'
      Size = 1
    end
    object OtchetOTKVI: TStringField
      FieldName = 'OTKVI'
      Size = 1
    end
    object OtchetOTMATR: TStringField
      FieldName = 'OTMATR'
      Size = 5
    end
    object OtchetNMAT: TStringField
      FieldName = 'NMAT'
      Size = 25
    end
    object OtchetOTCENA: TFloatField
      FieldName = 'OTCENA'
    end
    object OtchetCENAZA: TFloatField
      FieldName = 'CENAZA'
    end
    object OtchetOSTSN: TFloatField
      FieldName = 'OSTSN'
    end
    object OtchetOSTNZN: TFloatField
      FieldName = 'OSTNZN'
    end
    object OtchetPRIX: TFloatField
      FieldName = 'PRIX'
    end
    object OtchetZAG: TFloatField
      FieldName = 'ZAG'
    end
    object OtchetRASM: TFloatField
      FieldName = 'RASM'
    end
    object OtchetRASG: TFloatField
      FieldName = 'RASG'
    end
    object OtchetPERS: TFloatField
      FieldName = 'PERS'
    end
    object OtchetPERP: TFloatField
      FieldName = 'PERP'
    end
    object OtchetOSTSK: TFloatField
      FieldName = 'OSTSK'
    end
    object OtchetOSTZK: TFloatField
      FieldName = 'OSTZK'
    end
    object OtchetPRIXK: TFloatField
      FieldName = 'PRIXK'
    end
    object OtchetRASK: TFloatField
      FieldName = 'RASK'
    end
    object OtchetFACTK: TFloatField
      FieldName = 'FACTK'
    end
    object OtchetFACTM: TFloatField
      FieldName = 'FACTM'
    end
    object OtchetPEREM: TFloatField
      FieldName = 'PEREM'
    end
    object OtchetPEREG: TFloatField
      FieldName = 'PEREG'
    end
    object OtchetOTRAZ: TStringField
      FieldName = 'OTRAZ'
      Size = 2
    end
    object OtchetPKV: TStringField
      FieldName = 'PKV'
      Size = 1
    end
    object OtchetPGD: TStringField
      FieldName = 'PGD'
      Size = 1
    end
    object OtchetMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object OtchetPR: TSmallintField
      FieldName = 'PR'
    end
    object OtchetPRS: TSmallintField
      FieldName = 'PRS'
    end
    object OtchetKSM_ID: TFloatField
      FieldName = 'KSM_ID'
    end
    object OtchetOTPROD_S: TStringField
      FieldName = 'OTPROD_S'
      Size = 6
    end
  end
  object regot: TTable
    DatabaseName = 'ot'
    DefaultIndex = False
    TableName = 'REGOT.DBF'
    Left = 244
    Top = 58
    object regotDATCEX: TStringField
      FieldName = 'DATCEX'
      Size = 8
    end
    object regotSNZAP: TStringField
      FieldName = 'SNZAP'
      Size = 8
    end
    object regotDATACY: TStringField
      FieldName = 'DATACY'
      Size = 8
    end
    object regotCEX: TStringField
      FieldName = 'CEX'
      Size = 4
    end
    object regotMES: TSmallintField
      FieldName = 'MES'
    end
  end
  object Prizpr: TTable
    DatabaseName = 'ot'
    DefaultIndex = False
    TableName = 'PRIZPR.DBF'
    Left = 204
    Top = 58
    object PrizprPRGOD: TStringField
      FieldName = 'PRGOD'
      Size = 4
    end
    object PrizprPRMES: TStringField
      FieldName = 'PRMES'
      Size = 2
    end
    object PrizprSPROD: TStringField
      FieldName = 'SPROD'
      Size = 6
    end
    object PrizprSPPOL: TStringField
      FieldName = 'SPPOL'
      Size = 2
    end
    object PrizprSPPRN: TStringField
      FieldName = 'SPPRN'
      Size = 1
    end
    object PrizprSPVIS: TStringField
      FieldName = 'SPVIS'
      Size = 1
    end
    object PrizprPRSHAP: TStringField
      FieldName = 'PRSHAP'
      Size = 1
    end
    object PrizprPRGRA: TStringField
      FieldName = 'PRGRA'
      Size = 10
    end
    object PrizprPRG1: TFloatField
      FieldName = 'PRG1'
    end
    object PrizprPRG2: TFloatField
      FieldName = 'PRG2'
    end
    object PrizprPRG3: TFloatField
      FieldName = 'PRG3'
    end
    object PrizprPRG4: TFloatField
      FieldName = 'PRG4'
    end
    object PrizprPRG5: TFloatField
      FieldName = 'PRG5'
    end
    object PrizprSPCEH: TStringField
      FieldName = 'SPCEH'
      Size = 4
    end
    object PrizprKOLG1: TFloatField
      FieldName = 'KOLG1'
    end
    object PrizprKOLG2: TFloatField
      FieldName = 'KOLG2'
    end
    object PrizprKOLG3: TFloatField
      FieldName = 'KOLG3'
    end
    object PrizprKOLG4: TFloatField
      FieldName = 'KOLG4'
    end
    object PrizprKOLGS1: TFloatField
      FieldName = 'KOLGS1'
    end
    object PrizprKOLGS2: TFloatField
      FieldName = 'KOLGS2'
    end
    object PrizprKOLGS3: TFloatField
      FieldName = 'KOLGS3'
    end
    object PrizprKOLGS4: TFloatField
      FieldName = 'KOLGS4'
    end
    object PrizprKOLK1: TFloatField
      FieldName = 'KOLK1'
    end
    object PrizprKOLK2: TFloatField
      FieldName = 'KOLK2'
    end
    object PrizprKOLK3: TFloatField
      FieldName = 'KOLK3'
    end
    object PrizprKOLK4: TFloatField
      FieldName = 'KOLK4'
    end
    object PrizprKOLKS1: TFloatField
      FieldName = 'KOLKS1'
    end
    object PrizprKOLKS2: TFloatField
      FieldName = 'KOLKS2'
    end
    object PrizprKOLKS3: TFloatField
      FieldName = 'KOLKS3'
    end
    object PrizprKOLKS4: TFloatField
      FieldName = 'KOLKS4'
    end
    object PrizprKSM_ID: TFloatField
      FieldName = 'KSM_ID'
    end
    object PrizprSPROD_S: TStringField
      FieldName = 'SPROD_S'
      Size = 6
    end
  end
  object Query_Otchet: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT DISTINCT'
      'OST.KART_ID,'
      'OST.KSM_ID,'
      'OST.OSTATOK_END_S,'
      'OST.OSTATOK_END_NZ,'
      'OST.OSTATOK_BEGIN_NZ,'
      'OST.OSTATOK_BEGIN_S,'
      'OST.NMAT,'
      '(ost.zag_period+ost.peredano_prih_nz) as zag_period,'
      'ost.rash_virab_period,'
      '(ost.prix_period+ost.peredano_prih_nz) as prix_period,'
      'ost.rasx_period,'
      '(ost.peredano_rash_s) as pers,'
      '(ost.peredano_rash_nz) as pernz,'
      'razdel.KRAZ,'
      'kart.kei_id kei_idn,'
      'matrop.kei_id,'
      'ost.razdel_id'
      ''
      'FROM select_ob_ved(%dat1,%dat2,:kodp) OST'
      'inner join razdel on (OST.razdel_id=razdel.razdel_id)'
      'inner join kart on (OST.kart_id=kart.kart_id)'
      'inner join matrop on (ost.ksm_id=matrop.ksm_id)'
      'inner join document on (kart.doc_id=document.doc_id)'
      'where  OST.struk_id=:STRUK'
      ' and OST.KSM_IDPR=:KODP'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'dat1'
        ParamType = ptInput
        Value = #39'01.10.2005'#39
      end
      item
        DataType = ftString
        Name = 'dat2'
        ParamType = ptInput
        Value = #39'30.10.2005'#39
      end>
    Left = 200
    Top = 97
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'KODP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STRUK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KODP'
        ParamType = ptUnknown
      end>
    object Query_OtchetKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SELECT_OB_VED"."KSM_ID"'
    end
    object Query_OtchetOSTATOK_END_S: TFMTBCDField
      FieldName = 'OSTATOK_END_S'
      Origin = '"SELECT_OB_VED"."OSTATOK_END_S"'
      Precision = 18
      Size = 6
    end
    object Query_OtchetOSTATOK_END_NZ: TFMTBCDField
      FieldName = 'OSTATOK_END_NZ'
      Origin = '"SELECT_OB_VED"."OSTATOK_END_NZ"'
      Precision = 18
      Size = 6
    end
    object Query_OtchetOSTATOK_BEGIN_NZ: TFMTBCDField
      FieldName = 'OSTATOK_BEGIN_NZ'
      Origin = '"SELECT_OB_VED"."OSTATOK_BEGIN_NZ"'
      Precision = 18
      Size = 6
    end
    object Query_OtchetOSTATOK_BEGIN_S: TFMTBCDField
      FieldName = 'OSTATOK_BEGIN_S'
      Origin = '"SELECT_OB_VED"."OSTATOK_BEGIN_S"'
      Precision = 18
      Size = 6
    end
    object Query_OtchetNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SELECT_OB_VED"."NMAT"'
      Size = 60
    end
    object Query_OtchetZAG_PERIOD: TFMTBCDField
      FieldName = 'ZAG_PERIOD'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object Query_OtchetRASH_VIRAB_PERIOD: TFMTBCDField
      FieldName = 'RASH_VIRAB_PERIOD'
      Origin = '"SELECT_OB_VED"."RASH_VIRAB_PERIOD"'
      Precision = 18
      Size = 6
    end
    object Query_OtchetPRIX_PERIOD: TFMTBCDField
      FieldName = 'PRIX_PERIOD'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object Query_OtchetRASX_PERIOD: TFMTBCDField
      FieldName = 'RASX_PERIOD'
      Origin = '"SELECT_OB_VED"."RASX_PERIOD"'
      Precision = 18
      Size = 6
    end
    object Query_OtchetPERS: TFMTBCDField
      FieldName = 'PERS'
      Origin = '"SELECT_OB_VED"."PEREDANO_RASH_S"'
      Precision = 18
      Size = 6
    end
    object Query_OtchetPERNZ: TFMTBCDField
      FieldName = 'PERNZ'
      Origin = '"SELECT_OB_VED"."PEREDANO_RASH_NZ"'
      Precision = 18
      Size = 6
    end
    object Query_OtchetKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
    object Query_OtchetKEI_IDN: TSmallintField
      FieldName = 'KEI_IDN'
      Origin = '"KART"."KEI_ID"'
    end
    object Query_OtchetKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"MATROP"."KEI_ID"'
    end
    object Query_OtchetRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"SELECT_OB_VED"."RAZDEL_ID"'
    end
    object Query_OtchetKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"SELECT_OB_VED"."KART_ID"'
    end
  end
  object Otchets: TTable
    DatabaseName = 'ot'
    DefaultIndex = False
    TableName = 'OTCHETS.DBF'
    Left = 324
    Top = 58
    object OtchetsMES1: TStringField
      FieldName = 'MES1'
      Size = 2
    end
    object OtchetsOTSTRK: TStringField
      FieldName = 'OTSTRK'
      Size = 4
    end
    object OtchetsOTPROD: TStringField
      FieldName = 'OTPROD'
      Size = 6
    end
    object OtchetsOTKPN: TStringField
      FieldName = 'OTKPN'
      Size = 1
    end
    object OtchetsOTKVI: TStringField
      FieldName = 'OTKVI'
      Size = 1
    end
    object OtchetsOTMATR: TStringField
      FieldName = 'OTMATR'
      Size = 5
    end
    object OtchetsOTCENA: TFloatField
      FieldName = 'OTCENA'
    end
    object OtchetsCENAZA: TFloatField
      FieldName = 'CENAZA'
    end
    object OtchetsOSTSN: TFloatField
      FieldName = 'OSTSN'
    end
    object OtchetsOSTNZN: TFloatField
      FieldName = 'OSTNZN'
    end
    object OtchetsPRIX: TFloatField
      FieldName = 'PRIX'
    end
    object OtchetsZAG: TFloatField
      FieldName = 'ZAG'
    end
    object OtchetsRASM: TFloatField
      FieldName = 'RASM'
    end
    object OtchetsRASG: TFloatField
      FieldName = 'RASG'
    end
    object OtchetsPERS: TFloatField
      FieldName = 'PERS'
    end
    object OtchetsPERP: TFloatField
      FieldName = 'PERP'
    end
    object OtchetsOSTSK: TFloatField
      FieldName = 'OSTSK'
    end
    object OtchetsOSTZK: TFloatField
      FieldName = 'OSTZK'
    end
    object OtchetsPRIXK: TFloatField
      FieldName = 'PRIXK'
    end
    object OtchetsRASK: TFloatField
      FieldName = 'RASK'
    end
    object OtchetsFACTK: TFloatField
      FieldName = 'FACTK'
    end
    object OtchetsFACTM: TFloatField
      FieldName = 'FACTM'
    end
    object OtchetsPEREM: TFloatField
      FieldName = 'PEREM'
    end
    object OtchetsPEREG: TFloatField
      FieldName = 'PEREG'
    end
    object OtchetsOTRAZ: TStringField
      FieldName = 'OTRAZ'
      Size = 2
    end
    object OtchetsPKV: TStringField
      FieldName = 'PKV'
      Size = 1
    end
    object OtchetsPGD: TStringField
      FieldName = 'PGD'
      Size = 1
    end
    object OtchetsMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object OtchetsPR: TSmallintField
      FieldName = 'PR'
    end
    object OtchetsKSM_ID: TFloatField
      FieldName = 'KSM_ID'
    end
    object OtchetsOTPROD_S: TStringField
      FieldName = 'OTPROD_S'
      Size = 6
    end
  end
  object Spisok: TTable
    DatabaseName = 'ot'
    DefaultIndex = False
    TableName = 'SPISOK.DBF'
    Left = 156
    Top = 58
    object SpisokOTPROD: TStringField
      FieldName = 'OTPROD'
      Size = 6
    end
    object SpisokNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object SpisokOTSTRK: TStringField
      FieldName = 'OTSTRK'
      Size = 4
    end
    object SpisokMES: TSmallintField
      FieldName = 'MES'
    end
    object SpisokGOD: TSmallintField
      FieldName = 'GOD'
    end
  end
  object ncmatrd: TTable
    DatabaseName = 'ot'
    DefaultIndex = False
    TableName = 'NCMATRD.DBF'
    Left = 116
    Top = 58
    object ncmatrdNCPROD: TStringField
      FieldName = 'NCPROD'
      Size = 6
    end
    object ncmatrdNCKPN: TStringField
      FieldName = 'NCKPN'
      Size = 1
    end
    object ncmatrdNCKVI: TStringField
      FieldName = 'NCKVI'
      Size = 1
    end
    object ncmatrdNCEDIZ: TStringField
      FieldName = 'NCEDIZ'
      Size = 4
    end
    object ncmatrdNCSTRK: TStringField
      FieldName = 'NCSTRK'
      Size = 4
    end
    object ncmatrdNCRAZ: TStringField
      FieldName = 'NCRAZ'
      Size = 2
    end
    object ncmatrdNCMATR: TStringField
      FieldName = 'NCMATR'
      Size = 5
    end
    object ncmatrdNCPROC: TFloatField
      FieldName = 'NCPROC'
    end
    object ncmatrdNCEDIZM: TStringField
      FieldName = 'NCEDIZM'
      Size = 4
    end
    object ncmatrdNCNRDS: TFloatField
      FieldName = 'NCNRDS'
    end
    object ncmatrdNCNRFK: TFloatField
      FieldName = 'NCNRFK'
    end
    object ncmatrdNMATS: TStringField
      FieldName = 'NMATS'
      Size = 25
    end
    object ncmatrdNCCENA: TFloatField
      FieldName = 'NCCENA'
    end
    object ncmatrdKSM_ID: TFloatField
      FieldName = 'KSM_ID'
    end
    object ncmatrdNCPROD_S: TStringField
      FieldName = 'NCPROD_S'
      Size = 6
    end
  end
  object Ras_Vir: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT DISTINCT  SELECT_OB_VED.KART_ID,KART.KEI_ID, '
      ' SELECT_OB_VED.SERIA,'
      ' SELECT_OB_VED.ostatok_end_s ot_s, '
      ' SELECT_OB_VED.ostatok_end_nz ot_nz, '
      ' SELECT_OB_VED.ostatok_begin_s onm_s, '
      ' SELECT_OB_VED.ostatok_begin_nz onm_nz,'
      
        '( SELECT_OB_VED.zag_period+ SELECT_OB_VED.peredano_prih_nz) as z' +
        'ag_period, '
      'SELECT_OB_VED.rash_virab_period,'
      
        '( SELECT_OB_VED.prix_period+ SELECT_OB_VED.peredano_prih_nz) as ' +
        'prix_period,'
      'SELECT_OB_VED.peredano_rash_s,'
      'SELECT_OB_VED.peredano_rash_nz'
      'FROM  SELECT_OB_VED (%DAT1,%DAT2,:kodp)'
      'inner join kart on (SELECT_OB_VED.kart_id=kart.kart_id)'
      ''
      '')
    Left = 119
    Top = 101
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kodp'
        ParamType = ptUnknown
      end>
  end
  object normt: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT DISTINCT  SELECT_OB_VED.KART_ID,KART.KEI_ID, '
      ' SELECT_OB_VED.SERIA,'
      ' SELECT_OB_VED.ostatok_end_s ot_s, '
      ' SELECT_OB_VED.ostatok_end_nz ot_nz, '
      ' SELECT_OB_VED.ostatok_begin_s onm_s, '
      ' SELECT_OB_VED.ostatok_begin_nz onm_nz,'
      
        '( SELECT_OB_VED.zag_period+ SELECT_OB_VED.peredano_prih_nz) as z' +
        'ag_period, '
      'SELECT_OB_VED.rash_virab_period,'
      
        '( SELECT_OB_VED.prix_period+ SELECT_OB_VED.peredano_prih_nz) as ' +
        'prix_period,'
      'SELECT_OB_VED.peredano_rash_s,'
      'SELECT_OB_VED.peredano_rash_nz'
      'FROM  SELECT_OB_VED (%DAT1,%DAT2,:kodp)'
      'inner join kart on (SELECT_OB_VED.kart_id=kart.kart_id)'
      ''
      '')
    Left = 159
    Top = 101
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kodp'
        ParamType = ptUnknown
      end>
  end
end
