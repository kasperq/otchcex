object dmSelOstKsm: TdmSelOstKsm
  OldCreateOrder = False
  Height = 828
  Width = 982
  object trans_read: TIBTransaction
    Active = True
    DefaultDatabase = db
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 80
  end
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
  object mem_ost: TkbmMemTable
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
    Left = 144
    Top = 24
    object mem_ostKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
    end
    object mem_ostKART_ID: TIntegerField
      FieldName = 'KART_ID'
    end
    object mem_ostSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
    end
    object mem_ostKEI_ID: TIntegerField
      FieldName = 'KEI_ID'
    end
    object mem_ostKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
    end
    object mem_ostSERIA_ID: TIntegerField
      FieldName = 'SERIA_ID'
    end
    object mem_ostRAZDEL_ID: TIntegerField
      FieldName = 'RAZDEL_ID'
    end
    object mem_ostOST_BEG_S: TFloatField
      FieldName = 'OST_BEG_S'
    end
    object mem_ostOST_BEG_NZ: TFloatField
      FieldName = 'OST_BEG_NZ'
    end
    object mem_ostPRIH_PERIOD: TFloatField
      FieldName = 'PRIH_PERIOD'
    end
    object mem_ostRASH_PERIOD: TFloatField
      FieldName = 'RASH_PERIOD'
    end
    object mem_ostZAG_PERIOD: TFloatField
      FieldName = 'ZAG_PERIOD'
    end
    object mem_ostRASH_VIRAB_PERIOD: TFloatField
      FieldName = 'RASH_VIRAB_PERIOD'
    end
    object mem_ostPEREDANO_PRIH_S: TFloatField
      FieldName = 'PEREDANO_PRIH_S'
    end
    object mem_ostPEREDANO_RASH_S: TFloatField
      FieldName = 'PEREDANO_RASH_S'
    end
    object mem_ostPEREDANO_PRIH_NZ: TFloatField
      FieldName = 'PEREDANO_PRIH_NZ'
    end
    object mem_ostPEREDANO_RASH_NZ: TFloatField
      FieldName = 'PEREDANO_RASH_NZ'
    end
    object mem_ostOST_END_S: TFloatField
      FieldName = 'OST_END_S'
    end
    object mem_ostOST_END_NZ: TFloatField
      FieldName = 'OST_END_NZ'
    end
  end
  object q_ostatki: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 240
    Top = 24
  end
  object q_prihPeriod: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 320
    Top = 24
  end
  object RxIBQuery1: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 192
    Top = 120
  end
  object q_prihAll: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 392
    Top = 24
  end
  object q_rashPeriod: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 320
    Top = 80
  end
  object q_rashAll: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 392
    Top = 80
  end
  object q_zagPeriod: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 320
    Top = 128
  end
  object q_zagAll: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 392
    Top = 128
  end
  object q_rashVirPeriod: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 320
    Top = 176
  end
  object q_rashVirAll: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 392
    Top = 176
  end
  object q_perPrihS: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 320
    Top = 224
  end
  object q_perRashS: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 320
    Top = 272
  end
  object q_perPrihNzPeriod: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 320
    Top = 320
  end
  object q_perPrihNzAll: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 400
    Top = 320
  end
  object q_perRashNzPeriod: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 320
    Top = 368
  end
  object q_perRashNzAll: TRxIBQuery
    Database = db
    Transaction = trans_read
    Macros = <>
    Left = 400
    Top = 368
  end
end
