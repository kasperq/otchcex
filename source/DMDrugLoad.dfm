object FDMDrugLoad: TFDMDrugLoad
  OldCreateOrder = False
  Height = 427
  Width = 684
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
    Active = True
    DefaultDatabase = db
    Left = 32
    Top = 80
  end
  object RxIBQuery1: TRxIBQuery
    Macros = <>
    Left = 136
    Top = 24
  end
  object mem_drugLoad: TkbmMemTable
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
    Left = 136
    Top = 88
  end
end
