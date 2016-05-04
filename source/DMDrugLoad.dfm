object FDMDrugLoad: TFDMDrugLoad
  OldCreateOrder = False
  Height = 783
  Width = 1013
  object db: TIBDatabase
    Connected = True
    DatabaseName = '192.168.13.13:D:\IBDATA\BELMED.GDB'
    Params.Strings = (
      'user_name=IGOR'
      'password=igor'
      'sql_role_name=SKLAD_CEH'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = trans_read
    Left = 32
    Top = 24
  end
  object trans_read: TIBTransaction
    DefaultDatabase = db
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 80
  end
  object mem_texGur: TkbmMemTable
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
    BeforePost = mem_texGurBeforePost
    Left = 112
    Top = 24
    object mem_texGurKART_ID: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KART_ID'
    end
    object mem_texGurKEI_ID_KART: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KEI_ID_KART'
    end
    object mem_texGurKEI_ID_NORM: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KEI_ID_NORM'
    end
    object mem_texGurKEI_ID_OST_PREP: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KEI_ID_OST_PREP'
    end
    object mem_texGurKEI_ID_OST_CEX: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KEI_ID_OST_CEX'
    end
    object mem_texGurRAZDEL_ID: TIntegerField
      DefaultExpression = '0'
      FieldName = 'RAZDEL_ID'
    end
    object mem_texGurKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      OnValidate = mem_texGurKSM_IDValidate
    end
    object mem_texGurSTROKA_ID: TIntegerField
      DefaultExpression = '0'
      FieldName = 'STROKA_ID'
    end
    object mem_texGurSERIA_ID: TIntegerField
      DefaultExpression = '0'
      FieldName = 'SERIA_ID'
    end
    object mem_texGurDOC_ID: TIntegerField
      DefaultExpression = '0'
      FieldName = 'DOC_ID'
    end
    object mem_texGurDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
    end
    object mem_texGurNEIS: TStringField
      FieldName = 'NEIS'
      Size = 10
    end
    object mem_texGurNDOK: TStringField
      FieldName = 'NDOK'
    end
    object mem_texGurNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object mem_texGurKOL_RASH_EDIZ: TFloatField
      DefaultExpression = '0'
      FieldName = 'KOL_RASH_EDIZ'
    end
    object mem_texGurPLNORM: TFloatField
      DefaultExpression = '0'
      FieldName = 'PLNORM'
    end
    object mem_texGurOSTATOK_END_S: TFloatField
      DefaultExpression = '0'
      FieldName = 'OSTATOK_END_S'
    end
    object mem_texGurOSTATOK_END_NZ: TFloatField
      DefaultExpression = '0'
      FieldName = 'OSTATOK_END_NZ'
    end
    object mem_texGurOSTATOK_END_S_CEX: TFloatField
      DefaultExpression = '0'
      FieldName = 'OSTATOK_END_S_CEX'
    end
    object mem_texGurKRAZ: TIntegerField
      FieldName = 'KRAZ'
    end
    object mem_texGurZAG_ALL: TFloatField
      DefaultExpression = '0'
      FieldName = 'ZAG_ALL'
    end
    object mem_texGurDELETE: TBooleanField
      DefaultExpression = 'false'
      FieldName = 'DELETE'
    end
    object mem_texGurADD: TBooleanField
      FieldName = 'ADD'
    end
    object mem_texGurOSTATOK_BEGIN_S: TFloatField
      DefaultExpression = '0'
      FieldName = 'OSTATOK_BEGIN_S'
    end
    object mem_texGurOSTATOK_BEGIN_NZ: TFloatField
      DefaultExpression = '0'
      FieldName = 'OSTATOK_BEGIN_NZ'
    end
    object mem_texGurPRIX: TFloatField
      FieldName = 'PRIX'
    end
    object mem_texGurPEREDANO_PRIH_NZ: TFloatField
      DefaultExpression = '0'
      FieldName = 'PEREDANO_PRIH_NZ'
    end
    object mem_texGurPRIX_PERIOD: TFloatField
      DefaultExpression = '0'
      FieldName = 'PRIX_PERIOD'
    end
    object mem_texGurZAG: TFloatField
      DefaultExpression = '0'
      FieldName = 'ZAG'
    end
    object mem_texGurZAG_PERIOD: TFloatField
      DefaultExpression = '0'
      FieldName = 'ZAG_PERIOD'
    end
    object mem_texGurRASH_VIRAB_PERIOD: TFloatField
      DefaultExpression = '0'
      FieldName = 'RASH_VIRAB_PERIOD'
    end
    object mem_texGurPEREDANO_RASH_S: TFloatField
      DefaultExpression = '0'
      FieldName = 'PEREDANO_RASH_S'
    end
    object mem_texGurPEREDANO_RASH_NZ: TFloatField
      DefaultExpression = '0'
      FieldName = 'PEREDANO_RASH_NZ'
    end
    object mem_texGurCHANGED: TBooleanField
      FieldName = 'CHANGED'
    end
    object mem_texGurXARKT: TStringField
      FieldName = 'XARKT'
      Size = 30
    end
    object mem_texGurGOST: TStringField
      FieldName = 'GOST'
      Size = 60
    end
    object mem_texGurKSM_ID_PREP: TIntegerField
      DefaultExpression = '0'
      FieldName = 'KSM_ID_PREP'
    end
  end
  object ds_texGur: TDataSource
    DataSet = mem_texGur
    Left = 112
    Top = 80
  end
  object ostceh: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      
        'select ost.ksm_id, sum(ost.ostatok_end_s) ostatok_end_s, ost.kei' +
        '_id,'
      'ost.nmat, ost.neis'
      
        'from ost_end_cex(:dat1, :dat2, :struk_id, :ksm_id, '#39#39', :struk_id' +
        '_rela, :ksm_array) ost'
      'group by ost.ksm_id, ost.kei_id, ost.nmat, ost.neis')
    Left = 183
    Top = 244
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ksm_id'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'struk_id_rela'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ksm_array'
        ParamType = ptInput
      end>
    object ostcehKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"OST_END_CEX"."KSM_ID"'
    end
    object ostcehOSTATOK_END_S: TFMTBCDField
      FieldName = 'OSTATOK_END_S'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object ostcehKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"OST_END_CEX"."KEI_ID"'
    end
    object ostcehNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"OST_END_CEX"."NMAT"'
      Size = 60
    end
    object ostcehNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"OST_END_CEX"."NEIS"'
      FixedChar = True
      Size = 10
    end
  end
  object q_ost: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      
        'SELECT DISTINCT ost.KART_ID, ost.kei_id, ost.KSM_ID, ost.KSM_IDp' +
        'r kodp, ost.neis neis_ost,'
      'ost.RAZDEL_ID, ost.nmat, ost.ostatok_end_s,'
      'ost.ostatok_end_nz, ost.ostatok_begin_s,'
      
        'ost.ostatok_begin_nz, RAZDEL.KRAZ, ost.zag_period zag, ost.prix_' +
        'period prix, ost.peredano_prih_nz,'
      '(ost.zag_period+ ost.peredano_prih_nz) as zag_period,'
      '(ost.prix_period+ost.peredano_prih_nz) as prix_period,'
      
        'ost.peredano_rash_s, ost.peredano_rash_nz, ost.rash_virab_period' +
        ','
      'matrop.xarkt, matrop.gost'
      ''
      'FROM select_ost_ksm (:dat1,:dat2, :kodp, :struk_id, 0) ost'
      'inner JOIN RAZDEL ON (ost.RAZDEL_ID = RAZDEL.RAZDEL_ID)'
      'inner join matrop on matrop.ksm_id = ost.ksm_id'
      ''
      
        'where  (z(zag_period)<>0 or z( prix_period)<>0  or  z(OST.OSTATO' +
        'K_END_S)<>0 or z(OST.OSTATOK_END_NZ)<>0'
      
        'or z(rasx_period)<>0 or z(rash_virab_period)<>0 or z(OST.OSTATOK' +
        '_BEGIN_NZ)<>0 or z(OST.OSTATOK_BEGIN_S) <>0 )'
      'or z(ost.peredano_rash_s)<>0 or z(ost.peredano_rash_nz)<>0')
    Macros = <>
    Left = 184
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end>
    object q_ostKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"SELECT_OST_KSM"."KART_ID"'
    end
    object q_ostKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"SELECT_OST_KSM"."KEI_ID"'
    end
    object q_ostKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SELECT_OST_KSM"."KSM_ID"'
    end
    object q_ostKODP: TIntegerField
      FieldName = 'KODP'
      Origin = '"SELECT_OST_KSM"."KSM_IDPR"'
    end
    object q_ostNEIS_OST: TIBStringField
      FieldName = 'NEIS_OST'
      Origin = '"SELECT_OST_KSM"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object q_ostRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"SELECT_OST_KSM"."RAZDEL_ID"'
    end
    object q_ostNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SELECT_OST_KSM"."NMAT"'
      Size = 60
    end
    object q_ostOSTATOK_END_S: TFMTBCDField
      FieldName = 'OSTATOK_END_S'
      Origin = '"SELECT_OST_KSM"."OSTATOK_END_S"'
      Precision = 18
      Size = 6
    end
    object q_ostOSTATOK_END_NZ: TFMTBCDField
      FieldName = 'OSTATOK_END_NZ'
      Origin = '"SELECT_OST_KSM"."OSTATOK_END_NZ"'
      Precision = 18
      Size = 6
    end
    object q_ostOSTATOK_BEGIN_S: TFMTBCDField
      FieldName = 'OSTATOK_BEGIN_S'
      Origin = '"SELECT_OST_KSM"."OSTATOK_BEGIN_S"'
      Precision = 18
      Size = 6
    end
    object q_ostOSTATOK_BEGIN_NZ: TFMTBCDField
      FieldName = 'OSTATOK_BEGIN_NZ'
      Origin = '"SELECT_OST_KSM"."OSTATOK_BEGIN_NZ"'
      Precision = 18
      Size = 6
    end
    object q_ostKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
    object q_ostZAG_PERIOD: TFMTBCDField
      FieldName = 'ZAG_PERIOD'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object q_ostPRIX_PERIOD: TFMTBCDField
      FieldName = 'PRIX_PERIOD'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object q_ostPEREDANO_RASH_S: TFMTBCDField
      FieldName = 'PEREDANO_RASH_S'
      Origin = '"SELECT_OST_KSM"."PEREDANO_RASH_S"'
      Precision = 18
      Size = 6
    end
    object q_ostPEREDANO_RASH_NZ: TFMTBCDField
      FieldName = 'PEREDANO_RASH_NZ'
      Origin = '"SELECT_OST_KSM"."PEREDANO_RASH_NZ"'
      Precision = 18
      Size = 6
    end
    object q_ostRASH_VIRAB_PERIOD: TFMTBCDField
      FieldName = 'RASH_VIRAB_PERIOD'
      Origin = '"SELECT_OST_KSM"."RASH_VIRAB_PERIOD"'
      Precision = 18
      Size = 6
    end
    object q_ostZAG: TFMTBCDField
      FieldName = 'ZAG'
      Origin = '"SELECT_OST_KSM"."ZAG_PERIOD"'
      Precision = 18
      Size = 6
    end
    object q_ostPRIX: TFMTBCDField
      FieldName = 'PRIX'
      Origin = '"SELECT_OST_KSM"."PRIX_PERIOD"'
      Precision = 18
      Size = 6
    end
    object q_ostPEREDANO_PRIH_NZ: TFMTBCDField
      FieldName = 'PEREDANO_PRIH_NZ'
      Origin = '"SELECT_OST_KSM"."PEREDANO_PRIH_NZ"'
      Precision = 18
      Size = 6
    end
    object q_ostXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"MATROP"."XARKT"'
      Size = 30
    end
    object q_ostGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"MATROP"."GOST"'
      Size = 60
    end
  end
  object q_norm: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      'SELECT distinct norm.plnorm, norm.KODP, '
      'NORM.KEI_ID KEIN, NORM.KSM_ID, NORM.KRAZ, NORM.MES, '
      'NORM.GOD, NORM.NAZPRPF,'
      'NORM.NMAT_KSM NMAT, NORM.xarkt, NORM.gost, matrop.KEI_ID, '
      'NORM.NEIS, NORM.razdel_id'
      'FROM norm_view(119, :god, :mes, :kodp, :struk_id, 0) NORM '
      'inner join matrop on (norm.ksm_id = matrop.ksm_id)'
      'order by norm.kraz, norm.nmat_ksm')
    Macros = <>
    Left = 184
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'god'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end>
    object q_normPLNORM: TFMTBCDField
      FieldName = 'PLNORM'
      Origin = '"NORM_VIEW"."PLNORM"'
      Precision = 18
      Size = 7
    end
    object q_normKODP: TIntegerField
      FieldName = 'KODP'
      Origin = '"NORM_VIEW"."KODP"'
    end
    object q_normKEIN: TSmallintField
      FieldName = 'KEIN'
      Origin = '"NORM_VIEW"."KEI_ID"'
    end
    object q_normKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"NORM_VIEW"."KSM_ID"'
    end
    object q_normKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"NORM_VIEW"."KRAZ"'
    end
    object q_normMES: TSmallintField
      FieldName = 'MES'
      Origin = '"NORM_VIEW"."MES"'
    end
    object q_normGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"NORM_VIEW"."GOD"'
    end
    object q_normNAZPRPF: TIBStringField
      FieldName = 'NAZPRPF'
      Origin = '"NORM_VIEW"."NAZPRPF"'
      FixedChar = True
      Size = 3
    end
    object q_normNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"NORM_VIEW"."NMAT_KSM"'
      Size = 60
    end
    object q_normXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"NORM_VIEW"."XARKT"'
      Size = 30
    end
    object q_normGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"NORM_VIEW"."GOST"'
      Size = 60
    end
    object q_normKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"MATROP"."KEI_ID"'
    end
    object q_normNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"NORM_VIEW"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object q_normRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"NORM_VIEW"."RAZDEL_ID"'
    end
  end
  object q_prixKart: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      'select kart.*'
      'from kart'
      'inner join document on document.doc_id = kart.doc_id'
      'where document.struk_id = :struk_id'
      'and document.klient_id = :klient_id'
      'and document.date_dok between :dat1 and :dat2'
      'and document.tip_op_id = 30 and document.tip_dok_id = 37'
      'and kart.ksm_id = :ksm_id'
      'and kart.razdel_id = :razdel_id'
      'and coalesce(kart.kol_rash_ediz,0) <> 0')
    UpdateObject = upd_prixKart
    Macros = <>
    Left = 184
    Top = 80
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
      end
      item
        DataType = ftUnknown
        Name = 'ksm_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'razdel_id'
        ParamType = ptUnknown
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
      '  DOC_ID,'
      '  STROKA_ID,'
      '  KSM_ID,'
      '  CENA,'
      '  KOL_PRIH,'
      '  CENA_VP,'
      '  NDS,'
      '  SUM_NDS,'
      '  SUM_NDS_VP,'
      '  KOL_RASH,'
      '  KART_ID,'
      '  ORG_ID_BRAK,'
      '  OSNOV_BRAK_ID,'
      '  USER_NAME,'
      '  DATE_TIME_UPDATE,'
      '  PARENT,'
      '  RAZDEL_ID,'
      '  SKIDKA,'
      '  KEI_ID,'
      '  SUMMA,'
      '  SUMMA_VP,'
      '  SUM_SKID,'
      '  SUM_SKID_VP,'
      '  SUMMA_S_NDS,'
      '  SUMMA_S_NDS_VP,'
      '  TAG,'
      '  KOL_PRIH_EDIZ,'
      '  KOL_RASH_EDIZ,'
      '  TIP_OP_ID,'
      '  TIP_DOK_ID,'
      '  TAG1,'
      '  TOV_SKIDKA,'
      '  KEI_ID2,'
      '  CENA_PRICE,'
      '  SKID_CEN,'
      '  COMMENT,'
      '  DOP_SUM,'
      '  DEBET,'
      '  DTYPESUB_ID,'
      '  DCODE,'
      '  CREDIT,'
      '  CTYPESUB_ID,'
      '  CCODE,'
      '  SROK,'
      '  DATE_VID,'
      '  DOP_RASH,'
      '  DOP_RASH_ID,'
      '  NORM_RASH,'
      '  KOL_RAB'
      'from kart '
      'where'
      '  STROKA_ID = :STROKA_ID')
    ModifySQL.Strings = (
      'update kart'
      'set'
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
      
        '  (DOC_ID, KART_ID, KEI_ID, KOL_PRIH, KOL_PRIH_EDIZ, KOL_RASH, K' +
        'OL_RASH_EDIZ, '
      '   KSM_ID, RAZDEL_ID, STROKA_ID)'
      'values'
      
        '  (:DOC_ID, :KART_ID, :KEI_ID, :KOL_PRIH, :KOL_PRIH_EDIZ, :KOL_R' +
        'ASH, :KOL_RASH_EDIZ, '
      '   :KSM_ID, :RAZDEL_ID, :STROKA_ID)')
    DeleteSQL.Strings = (
      'delete from kart'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = DM1.IBT_Write
    Left = 248
    Top = 80
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
      '--and document.ndok like '#39#1056#1087'%'#39)
    Macros = <>
    Left = 328
    Top = 88
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
  object q_prihSum: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      
        'select kart.ksm_id, kart.razdel_id, sum(kart.kol_rash_ediz) prih' +
        'Sum'
      'from kart'
      'inner join document on document.doc_id = kart.doc_id'
      'where document.struk_id = :struk_id'
      'and document.klient_id = :klient_id'
      'and document.date_dok between :dat1 and :dat2'
      'and document.tip_op_id = 30 and document.tip_dok_id = 37'
      'and kart.ksm_id = :ksm_id'
      'and kart.razdel_id = :razdel_id'
      'and kart.kol_rash_ediz <> 0'
      'group by kart.ksm_id, kart.razdel_id')
    Macros = <>
    Left = 328
    Top = 144
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
      end
      item
        DataType = ftUnknown
        Name = 'ksm_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'razdel_id'
        ParamType = ptUnknown
      end>
    object q_prihSumKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object q_prihSumRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"KART"."RAZDEL_ID"'
    end
    object q_prihSumPRIHSUM: TFloatField
      FieldName = 'PRIHSUM'
      ProviderFlags = []
    end
  end
  object q_doc: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    BeforeInsert = q_docBeforeInsert
    OnNewRecord = q_docNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'select document.doc_id, document.ndok, document.date_dok, docume' +
        'nt.struk_id,'
      
        'document.klient_id, document.date_op, document.tip_op_id, docume' +
        'nt.tip_dok_id'
      'from document'
      'where document.tip_op_id = 33 and document.tip_dok_id = 34'
      'and document.date_dok between :dat1 and :dat2'
      'and document.struk_id = :struk_id'
      'and document.klient_id = :klient_id'
      'and %doc_id')
    UpdateObject = upd_doc
    Macros = <
      item
        DataType = ftString
        Name = 'doc_id'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 328
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'klient_id'
        ParamType = ptUnknown
      end>
    object q_docDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_docNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object q_docDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object q_docSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object q_docKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object q_docDATE_OP: TDateField
      FieldName = 'DATE_OP'
      Origin = '"DOCUMENT"."DATE_OP"'
    end
    object q_docTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object q_docTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
      Required = True
    end
  end
  object upd_doc: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  DOC_ID,'
      '  NDOK,'
      '  DATE_DOK,'
      '  STRUK_ID,'
      '  KLIENT_ID,'
      '  DATE_OP,'
      '  TIP_OP_ID,'
      '  TIP_DOK_ID'
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
    Left = 376
    Top = 24
  end
  object q_ostatki: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    CachedUpdates = True
    SQL.Strings = (
      
        'select ostatki.struk_id, ostatki.ksm_id, ostatki.ot_s, ostatki.k' +
        'ei_id,'
      
        'ostatki.razdel_id, ostatki.ksm_idpr, ostatki.struk_id_rela, osta' +
        'tki.kart_id,'
      'ostatki.seria_id, ostatki.account, ostatki.mes, ostatki.god'
      'from ostatki'
      'where %usl')
    UpdateObject = upd_ostatki
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 464
    Top = 24
    object q_ostatkiSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
      Origin = '"OSTATKI"."STRUK_ID"'
      Required = True
    end
    object q_ostatkiKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"OSTATKI"."KSM_ID"'
      Required = True
    end
    object q_ostatkiOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object q_ostatkiKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"OSTATKI"."KEI_ID"'
      Required = True
    end
    object q_ostatkiRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object q_ostatkiKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object q_ostatkiSTRUK_ID_RELA: TIntegerField
      FieldName = 'STRUK_ID_RELA'
      Origin = '"OSTATKI"."STRUK_ID_RELA"'
    end
    object q_ostatkiKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"OSTATKI"."KART_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_ostatkiSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
      Origin = '"OSTATKI"."SERIA_ID"'
    end
    object q_ostatkiACCOUNT: TIBStringField
      FieldName = 'ACCOUNT'
      Origin = '"OSTATKI"."ACCOUNT"'
      FixedChar = True
      Size = 5
    end
    object q_ostatkiMES: TSmallintField
      FieldName = 'MES'
      Origin = '"OSTATKI"."MES"'
      Required = True
    end
    object q_ostatkiGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"OSTATKI"."GOD"'
      Required = True
    end
  end
  object upd_ostatki: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  STRUK_ID,'
      '  KSM_ID,'
      '  OT_S,'
      '  KEI_ID,'
      '  RAZDEL_ID,'
      '  KSM_IDPR,'
      '  STRUK_ID_RELA,'
      '  KART_ID,'
      '  SERIA_ID,'
      '  ACCOUNT,'
      '  MES,'
      '  GOD'
      'from ostatki '
      'where'
      '  KART_ID = :KART_ID')
    ModifySQL.Strings = (
      'update ostatki'
      'set'
      '  ACCOUNT = :ACCOUNT,'
      '  GOD = :GOD,'
      '  KART_ID = :KART_ID,'
      '  KEI_ID = :KEI_ID,'
      '  KSM_ID = :KSM_ID,'
      '  KSM_IDPR = :KSM_IDPR,'
      '  MES = :MES,'
      '  OT_S = :OT_S,'
      '  RAZDEL_ID = :RAZDEL_ID,'
      '  SERIA_ID = :SERIA_ID,'
      '  STRUK_ID = :STRUK_ID,'
      '  STRUK_ID_RELA = :STRUK_ID_RELA'
      'where'
      '  KART_ID = :OLD_KART_ID')
    InsertSQL.Strings = (
      'insert into ostatki'
      
        '  (ACCOUNT, GOD, KART_ID, KEI_ID, KSM_ID, KSM_IDPR, MES, OT_S, R' +
        'AZDEL_ID, '
      '   SERIA_ID, STRUK_ID, STRUK_ID_RELA)'
      'values'
      
        '  (:ACCOUNT, :GOD, :KART_ID, :KEI_ID, :KSM_ID, :KSM_IDPR, :MES, ' +
        ':OT_S, '
      '   :RAZDEL_ID, :SERIA_ID, :STRUK_ID, :STRUK_ID_RELA)')
    DeleteSQL.Strings = (
      'delete from ostatki'
      'where'
      '  KART_ID = :OLD_KART_ID')
    AutoCommit = False
    UpdateTransaction = DM1.IBT_Write
    Left = 520
    Top = 24
  end
  object upd_kart: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      '  DOC_ID,'
      '  STROKA_ID,'
      '  KART_ID,'
      '  KOL_RASH,'
      '  KOL_RASH_EDIZ,'
      '  RAZDEL_ID,'
      '  KEI_ID,'
      '  KSM_ID,'
      '  NEIS,'
      '  NMAT,'
      '  KRAZ,'
      '  XARKT,'
      '  GOST,'
      '  TIP_OP_ID,'
      '  TIP_DOK_ID,'
      '  KOL_PRIH_EDIZ'
      'from kart '
      'where'
      '  STROKA_ID = :STROKA_ID')
    ModifySQL.Strings = (
      'update kart'
      'set'
      '  DOC_ID = :DOC_ID,'
      '  KART_ID = :KART_ID,'
      '  KEI_ID = :KEI_ID,'
      '  KOL_PRIH_EDIZ = :KOL_PRIH_EDIZ,'
      '  KOL_RASH = :KOL_RASH,'
      '  KOL_RASH_EDIZ = :KOL_RASH_EDIZ,'
      '  KSM_ID = :KSM_ID,'
      '  RAZDEL_ID = :RAZDEL_ID,'
      '  STROKA_ID = :STROKA_ID,'
      '  TIP_DOK_ID = :TIP_DOK_ID,'
      '  TIP_OP_ID = :TIP_OP_ID'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    InsertSQL.Strings = (
      'insert into kart'
      
        '  (DOC_ID, KART_ID, KEI_ID, KOL_PRIH_EDIZ, KOL_RASH, KOL_RASH_ED' +
        'IZ, KSM_ID, '
      '   RAZDEL_ID, STROKA_ID, TIP_DOK_ID, TIP_OP_ID)'
      'values'
      
        '  (:DOC_ID, :KART_ID, :KEI_ID, :KOL_PRIH_EDIZ, :KOL_RASH, :KOL_R' +
        'ASH_EDIZ, '
      '   :KSM_ID, :RAZDEL_ID, :STROKA_ID, :TIP_DOK_ID, :TIP_OP_ID)')
    DeleteSQL.Strings = (
      'delete from kart'
      'where'
      '  STROKA_ID = :OLD_STROKA_ID')
    AutoCommit = False
    UpdateTransaction = DM1.IBT_Write
    Left = 248
    Top = 24
  end
  object q_kart: TRxIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    BeforeInsert = q_kartBeforeInsert
    OnNewRecord = q_kartNewRecord
    CachedUpdates = True
    SQL.Strings = (
      'select kart.doc_id, kart.stroka_id, kart.kart_id, kart.kol_rash,'
      'kart.kol_rash_ediz, kart.razdel_id, kart.kei_id, kart.ksm_id,'
      'ediz.neis, matrop.nmat, razdel.kraz,  matrop.xarkt, matrop.gost,'
      'kart.tip_op_id, kart.tip_dok_id, kart.kol_prih_ediz'
      'from kart'
      'left join ediz on ediz.kei_id = kart.kei_id'
      'left join matrop on matrop.ksm_id = kart.ksm_id'
      'left join razdel on razdel.razdel_id = kart.razdel_id'
      'where kart.doc_id = :doc_id'
      'order by razdel.kraz, matrop.nmat')
    UpdateObject = upd_kart
    Macros = <>
    Left = 184
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'doc_id'
        ParamType = ptUnknown
      end>
    object q_kartDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"KART"."DOC_ID"'
      Required = True
    end
    object q_kartSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KART"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_kartKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"KART"."KART_ID"'
      Required = True
    end
    object q_kartKOL_RASH: TFMTBCDField
      FieldName = 'KOL_RASH'
      Origin = '"KART"."KOL_RASH"'
      Precision = 18
      Size = 6
    end
    object q_kartKOL_RASH_EDIZ: TFloatField
      FieldName = 'KOL_RASH_EDIZ'
      Origin = '"KART"."KOL_RASH_EDIZ"'
    end
    object q_kartRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"KART"."RAZDEL_ID"'
    end
    object q_kartKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"KART"."KEI_ID"'
    end
    object q_kartKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KART"."KSM_ID"'
      Required = True
    end
    object q_kartNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object q_kartNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
    object q_kartKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
    object q_kartXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"MATROP"."XARKT"'
      Size = 30
    end
    object q_kartGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"MATROP"."GOST"'
      Size = 60
    end
    object q_kartTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"KART"."TIP_OP_ID"'
    end
    object q_kartTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"KART"."TIP_DOK_ID"'
    end
    object q_kartKOL_PRIH_EDIZ: TFloatField
      FieldName = 'KOL_PRIH_EDIZ'
      Origin = '"KART"."KOL_PRIH_EDIZ"'
    end
  end
  object trans_write: TIBTransaction
    DefaultDatabase = db
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 136
  end
  object Matrop: TIBQuery
    SQL.Strings = (
      
        'select MATROP.NMAT,matrop.prmat, MATROP.GOST,MATROP.XARKT,MATROP' +
        '.KEI_ID,MATROP.KSM_ID,EDIZ.NEIs'
      'from Matrop'
      'inner join ediz on (matrop.kei_id=ediz.kei_id)'
      'where matrop.ksm_id=:ksm')
    Left = 56
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ksm'
        ParamType = ptInput
        Value = '0'
      end>
    object MatropNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
    object MatropXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"MATROP"."XARKT"'
      Size = 30
    end
    object MatropKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"MATROP"."KEI_ID"'
    end
    object MatropKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"MATROP"."KSM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MatropNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object MatropPRMAT: TIBStringField
      FieldName = 'PRMAT'
      Origin = '"MATROP"."PRMAT"'
      FixedChar = True
      Size = 2
    end
    object MatropGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"MATROP"."GOST"'
      Size = 60
    end
  end
  object Seria: TRxIBQuery
    Database = db
    Transaction = trans_read
    BeforeInsert = SeriaBeforeInsert
    OnNewRecord = SeriaNewRecord
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT Seria.COMMENT,Seria. DATE_PASPORT, Seria.DATE_SERTIF,Seri' +
        'a. DATE_TIME_UPDATE,Seria. DATE_VIPUSK, Seria.DATE_ZAG, Seria.FI' +
        'O_MASTER,Seria. FIO_RASH, Seria.FORMA_VIPUSK,Seria. KEI_ID, Seri' +
        'a.KOD_TM, Seria.KODTN, Seria.KOL_SERIA,Seria. KOL_TM, Seria.KSM_' +
        'ID, Seria.OB_ZAG, Seria.PASPORT, Seria.SERIA, Seria.SERIA_ID, Se' +
        'ria.SERTIF, Seria.SHEMA,Seria. SROK_GODN, Seria.USER_NAME,Seria.' +
        ' VLAG_TM, matrop.nmat nmat_dob'
      ' FROM Seria'
      'left join matrop on (seria.kod_tm=matrop.ksm_id)'
      'WHERE seria.KSM_ID = :KSM_ID'
      ' AND  %usl'
      '')
    UpdateObject = IBUpdateSeria
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 194
    Top = 321
    ParamData = <
      item
        DataType = ftInteger
        Name = 'KSM_ID'
        ParamType = ptInput
      end>
    object SeriaSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
      Origin = '"SERIA"."SERIA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SeriaKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SERIA"."KSM_ID"'
      Required = True
    end
    object SeriaSERIA: TIBStringField
      FieldName = 'SERIA'
      Origin = '"SERIA"."SERIA"'
    end
    object SeriaSROK_GODN: TDateField
      FieldName = 'SROK_GODN'
      Origin = '"SERIA"."SROK_GODN"'
    end
    object SeriaSERTIF: TIBStringField
      FieldName = 'SERTIF'
      Origin = '"SERIA"."SERTIF"'
      Size = 25
    end
    object SeriaDATE_SERTIF: TDateField
      FieldName = 'DATE_SERTIF'
      Origin = '"SERIA"."DATE_SERTIF"'
    end
    object SeriaPASPORT: TIBStringField
      FieldName = 'PASPORT'
      Origin = '"SERIA"."PASPORT"'
      FixedChar = True
      Size = 10
    end
    object SeriaDATE_PASPORT: TDateField
      FieldName = 'DATE_PASPORT'
      Origin = '"SERIA"."DATE_PASPORT"'
    end
    object SeriaKOL_SERIA: TFMTBCDField
      FieldName = 'KOL_SERIA'
      Origin = '"SERIA"."KOL_SERIA"'
      Precision = 18
      Size = 6
    end
    object SeriaDATE_VIPUSK: TDateField
      FieldName = 'DATE_VIPUSK'
      Origin = '"SERIA"."DATE_VIPUSK"'
    end
    object SeriaFORMA_VIPUSK: TIBStringField
      FieldName = 'FORMA_VIPUSK'
      Origin = '"SERIA"."FORMA_VIPUSK"'
      Size = 100
    end
    object SeriaKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"SERIA"."KEI_ID"'
    end
    object SeriaDATE_TIME_UPDATE: TDateTimeField
      FieldName = 'DATE_TIME_UPDATE'
      Origin = '"SERIA"."DATE_TIME_UPDATE"'
    end
    object SeriaUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"SERIA"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object SeriaSHEMA: TIBStringField
      FieldName = 'SHEMA'
      Origin = '"SERIA"."SHEMA"'
      FixedChar = True
      Size = 3
    end
    object SeriaKODTN: TIBStringField
      FieldName = 'KODTN'
      Origin = '"SERIA"."KODTN"'
      FixedChar = True
      Size = 10
    end
    object SeriaDATE_ZAG: TDateField
      FieldName = 'DATE_ZAG'
      Origin = '"SERIA"."DATE_ZAG"'
    end
    object SeriaFIO_RASH: TIBStringField
      FieldName = 'FIO_RASH'
      Origin = '"SERIA"."FIO_RASH"'
      Size = 30
    end
    object SeriaFIO_MASTER: TIBStringField
      FieldName = 'FIO_MASTER'
      Origin = '"SERIA"."FIO_MASTER"'
      Size = 30
    end
    object SeriaCOMMENT: TIBStringField
      FieldName = 'COMMENT'
      Origin = '"SERIA"."COMMENT"'
      Size = 120
    end
    object SeriaOB_ZAG: TFloatField
      FieldName = 'OB_ZAG'
      Origin = '"SERIA"."OB_ZAG"'
    end
    object SeriaVLAG_TM: TFloatField
      FieldName = 'VLAG_TM'
      Origin = '"SERIA"."VLAG_TM"'
    end
    object SeriaKOD_TM: TIntegerField
      FieldName = 'KOD_TM'
      Origin = '"SERIA"."KOD_TM"'
    end
    object SeriaKOL_TM: TFloatField
      FieldName = 'KOL_TM'
      Origin = '"SERIA"."KOL_TM"'
      DisplayFormat = '########0.0#####'
    end
  end
  object IBUpdateSeria: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'SELECT Seria.COMMENT,Seria. DATE_PASPORT, Seria.DATE_SERTIF,'
      'Seria. DATE_TIME_UPDATE,Seria. DATE_VIPUSK, Seria.DATE_ZAG,'
      
        ' Seria.FIO_MASTER,Seria. FIO_RASH, Seria.FORMA_VIPUSK,Seria. KEI' +
        '_ID,'
      
        ' Seria.KOD_TM, Seria.KODTN, Seria.KOL_SERIA,Seria. KOL_TM, Seria' +
        '.KSM_ID,'
      
        ' Seria.OB_ZAG, Seria.PASPORT, Seria.SERIA, Seria.SERIA_ID, Seria' +
        '.SERTIF,'
      
        ' Seria.SHEMA,Seria. SROK_GODN, Seria.USER_NAME,Seria. VLAG_TM,DA' +
        'TE_VIPUSK,'
      'Seria.COMMENT'
      ' FROM Seria'
      'where seria_id=:seria_id'
      '')
    ModifySQL.Strings = (
      'update Seria'
      'set'
      '  DATE_ZAG = :DATE_ZAG,'
      '  FIO_MASTER = :FIO_MASTER,'
      '  FIO_RASH = :FIO_RASH,'
      '  FORMA_VIPUSK = :FORMA_VIPUSK,'
      '  KOD_TM = :KOD_TM,'
      '  KOL_SERIA = :KOL_SERIA,'
      '  KOL_TM = :KOL_TM,'
      '  KSM_ID = :KSM_ID,'
      '  OB_ZAG = :OB_ZAG,'
      '  SERIA = :SERIA,'
      '  SERIA_ID = :SERIA_ID,'
      '  SROK_GODN = :SROK_GODN,'
      '  VLAG_TM = :VLAG_TM,'
      '  DATE_VIPUSK=:DATE_VIPUSK,'
      '  COMMENT = :COMMENT'
      'where'
      '  SERIA_ID = :OLD_SERIA_ID')
    InsertSQL.Strings = (
      'insert into Seria'
      
        '  (DATE_ZAG, FIO_MASTER, FIO_RASH, FORMA_VIPUSK, KOD_TM, KOL_SER' +
        'IA, KOL_TM, '
      
        '   KSM_ID, OB_ZAG, SERIA, SERIA_ID, SROK_GODN, VLAG_TM,DATE_VIPU' +
        'SK, COMMENT)'
      'values'
      
        '  (:DATE_ZAG, :FIO_MASTER, :FIO_RASH, :FORMA_VIPUSK, :KOD_TM, :K' +
        'OL_SERIA, '
      
        '   :KOL_TM, :KSM_ID, :OB_ZAG, :SERIA, :SERIA_ID, :SROK_GODN, :VL' +
        'AG_TM,:DATE_VIPUSK, :COMMENT)')
    DeleteSQL.Strings = (
      'delete from Seria'
      'where'
      '  SERIA_ID = :OLD_SERIA_ID')
    AutoCommit = False
    UpdateTransaction = trans_write
    Left = 192
    Top = 371
  end
  object Ostatki: TRxIBQuery
    Database = db
    Transaction = trans_read
    BeforeInsert = OstatkiBeforeInsert
    OnNewRecord = OstatkiNewRecord
    CachedUpdates = True
    SQL.Strings = (
      'SELECT Ost.KART_ID, matrop.KEI_ID, Ost.RAZDEL_ID,'
      'Ost.KSM_ID, Ost.KSM_IDPR, ost.mes, ost.god,'
      'Ost.ONM_FD, Ost.ONM_NZ, Ost.ONM_S, Ost.OT_FD, Ost.OT_NZ,'
      'Ost.OT_S, Ost.SERIA_ID, Ost.STRUK_ID,'
      'Ost.USER_NAME, Ost.OT_DOKUM, Ost.ONM_DOKUM,'
      'ost.nomu_id_trans, ost.kol_trans, ost.nomu_id_grp, ost.kol_grp, '
      'ost.ves_trans, ost.vol_trans,'
      'Matrop.NMAT, Ediz.NEIS'
      'FROM OSTATKI Ost'
      'INNER JOIN Matrop ON Ost.KSM_ID = Matrop.KSM_ID'
      'INNER JOIN Ediz ON Matrop.KEI_ID = Ediz.KEI_ID'
      'LEFT JOIN Seria ON Ost.SERIA_ID = Seria.SERIA_ID'
      'WHERE Ost.STRUK_ID = :STRUK_ID'
      ' %usl')
    UpdateObject = OstatkiUpdate
    GeneratorField.Field = 'KART_ID'
    GeneratorField.Generator = 'G_OSTATKI'
    GeneratorField.ApplyEvent = gamOnServer
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
      end>
    Left = 371
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STRUK_ID'
        ParamType = ptInput
      end>
    object OstatkiKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"MATROP"."KEI_ID"'
    end
    object OstatkiRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"OSTATKI"."RAZDEL_ID"'
    end
    object OstatkiKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"OSTATKI"."KSM_ID"'
      Required = True
    end
    object OstatkiKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"OSTATKI"."KSM_IDPR"'
    end
    object OstatkiMES: TSmallintField
      FieldName = 'MES'
      Origin = '"OSTATKI"."MES"'
      Required = True
    end
    object OstatkiGOD: TSmallintField
      FieldName = 'GOD'
      Origin = '"OSTATKI"."GOD"'
      Required = True
    end
    object OstatkiONM_FD: TFMTBCDField
      FieldName = 'ONM_FD'
      Origin = '"OSTATKI"."ONM_FD"'
      Precision = 18
      Size = 6
    end
    object OstatkiONM_NZ: TFMTBCDField
      FieldName = 'ONM_NZ'
      Origin = '"OSTATKI"."ONM_NZ"'
      Precision = 18
      Size = 6
    end
    object OstatkiONM_S: TFMTBCDField
      FieldName = 'ONM_S'
      Origin = '"OSTATKI"."ONM_S"'
      Precision = 18
      Size = 6
    end
    object OstatkiOT_FD: TFMTBCDField
      FieldName = 'OT_FD'
      Origin = '"OSTATKI"."OT_FD"'
      Precision = 18
      Size = 6
    end
    object OstatkiOT_NZ: TFMTBCDField
      FieldName = 'OT_NZ'
      Origin = '"OSTATKI"."OT_NZ"'
      Precision = 18
      Size = 6
    end
    object OstatkiOT_S: TFMTBCDField
      FieldName = 'OT_S'
      Origin = '"OSTATKI"."OT_S"'
      Precision = 18
      Size = 6
    end
    object OstatkiSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
      Origin = '"OSTATKI"."SERIA_ID"'
    end
    object OstatkiSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
      Origin = '"OSTATKI"."STRUK_ID"'
      Required = True
    end
    object OstatkiUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"OSTATKI"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object OstatkiKOL_TRANS: TFloatField
      FieldName = 'KOL_TRANS'
      Origin = '"OSTATKI"."KOL_TRANS"'
    end
    object OstatkiKOL_GRP: TFloatField
      FieldName = 'KOL_GRP'
      Origin = '"OSTATKI"."KOL_GRP"'
    end
    object OstatkiVES_TRANS: TIBBCDField
      FieldName = 'VES_TRANS'
      Origin = '"OSTATKI"."VES_TRANS"'
      Precision = 9
      Size = 2
    end
    object OstatkiNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
    object OstatkiNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object OstatkiKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"OSTATKI"."KART_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object OstatkiOT_DOKUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OT_DOKUM'
      Origin = '"OSTATKI"."OT_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
    end
    object OstatkiONM_DOKUM: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ONM_DOKUM'
      Origin = '"OSTATKI"."ONM_DOKUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object OstatkiNOMU_ID_TRANS: TSmallintField
      FieldName = 'NOMU_ID_TRANS'
      Origin = '"OSTATKI"."NOMU_ID_TRANS"'
    end
    object OstatkiNOMU_ID_GRP: TSmallintField
      FieldName = 'NOMU_ID_GRP'
      Origin = '"OSTATKI"."NOMU_ID_GRP"'
    end
    object OstatkiVOL_TRANS: TFMTBCDField
      FieldName = 'VOL_TRANS'
      Origin = '"OSTATKI"."VOL_TRANS"'
      Precision = 18
      Size = 6
    end
  end
  object OstatkiUpdate: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'SELECT Ost.KART_ID,matrop.KEI_ID,Ost.RAZDEL_ID,'
      'Ost.KSM_ID,Ost.KSM_IDPR,ost.mes,ost.god,'
      'Ost.ONM_FD,'
      'Ost.ONM_NZ,Ost.ONM_S,Ost.OT_FD,Ost.OT_NZ,'
      'Ost.OT_S,Ost.SERIA_ID,Ost.STRUK_ID,'
      'Ost.USER_NAME,'
      'Ost.OT_DOKUM, Ost.ONM_DOKUM,'
      
        'ost.nomu_id_trans,ost.kol_trans,ost.nomu_id_grp,ost.kol_grp,ost.' +
        'ves_trans,ost.vol_trans,'
      'Matrop.NMAT, Ediz.NEIS'
      'FROM OSTATKI Ost'
      'INNER JOIN Matrop ON Ost.KSM_ID = Matrop.KSM_ID'
      'INNER JOIN Ediz ON Matrop.KEI_ID = Ediz.KEI_ID'
      'LEFT JOIN Seria ON Ost.SERIA_ID = Seria.SERIA_ID'
      'WHERE Ost.struk_id = :STRUK_ID ')
    ModifySQL.Strings = (
      'update Ostatki'
      'set'
      '  '
      '  KART_ID = :KART_ID,'
      '   KOL_GRP = :KOL_GRP,'
      '  KOL_TRANS = :KOL_TRANS,'
      '  KSM_ID = :KSM_ID,'
      '  KSM_IDPR = :KSM_IDPR,'
      ' '
      '  NOMU_ID_GRP = :NOMU_ID_GRP,'
      '  NOMU_ID_TRANS = :NOMU_ID_TRANS,'
      ' '
      '  RAZDEL_ID = :RAZDEL_ID,'
      '  SERIA_ID = :SERIA_ID,'
      '  STRUK_ID = :STRUK_ID,'
      '  VES_TRANS = :VES_TRANS,'
      '  VOL_TRANS = :VOL_TRANS,'
      '  mes=:mes,'
      ' god=:god,'
      'kei_id=:kei_id'
      ' '
      'where'
      '  KART_ID = :OLD_KART_ID')
    InsertSQL.Strings = (
      'insert into Ostatki'
      
        '  ( KART_ID, KOL_GRP, KOL_TRANS, KSM_ID, KSM_IDPR,  NOMU_ID_GRP,' +
        ' '
      '   NOMU_ID_TRANS, RAZDEL_ID, '
      '   SERIA_ID, STRUK_ID, VES_TRANS, VOL_TRANS,mes,god)'
      'values'
      '  ( :KART_ID, :KOL_GRP, :KOL_TRANS, :KSM_ID, :KSM_IDPR,  '
      '   :NOMU_ID_GRP, :NOMU_ID_TRANS,  '
      
        '   :RAZDEL_ID, :SERIA_ID, :STRUK_ID, :VES_TRANS, :VOL_TRANS,:mes' +
        ',:god)')
    DeleteSQL.Strings = (
      'delete from Ostatki'
      'where'
      '  KART_ID = :OLD_KART_ID')
    AutoCommit = False
    UpdateTransaction = trans_write
    Left = 365
    Top = 372
  end
  object AddSeria: TIBStoredProc
    StoredProcName = 'ADD_SERIA'
    Left = 40
    Top = 200
  end
  object Add_Ostatki: TIBStoredProc
    StoredProcName = 'ADD_OSTATKI'
    Left = 40
    Top = 256
  end
  object ADD_KartDok: TIBStoredProc
    StoredProcName = 'ADD_KART'
    Left = 40
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STROKA_ID'
        ParamType = ptOutput
      end>
  end
end
