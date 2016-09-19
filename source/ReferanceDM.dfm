object RefDM: TRefDM
  OldCreateOrder = False
  Height = 776
  Width = 945
  object q_spprod: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    SQL.Strings = (
      
        'select spprod.struk_id, spprod.nmat, spprod.kod_prod, spprod.kei' +
        '_id, spprod.ksm_id,'
      
        'spprod.sprod_id, spprod.vol_ov, spprod.volumf, spprod.gost, sppr' +
        'od.korg, '
      
        'spprod.xarkt, spprod.activp, spprod.lek_id, ediz.neis, sprorg.na' +
        'm, spformv.namefv,'
      'region.nam nam_reg'
      'from spprod'
      'inner join ediz on spprod.kei_id = ediz.kei_id'
      'left join sprorg on spprod.korg = sprorg.kod'
      'left join spformv on spprod.spfv = spformv.spfv'
      'left join region on spprod.reg = region.reg'
      'where %usl'
      'order by spprod.kod_prod, spprod.nmat')
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 48
    Top = 40
    object q_spprodSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"SPPROD"."STRUK_ID"'
    end
    object q_spprodNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object q_spprodKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object q_spprodKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"SPPROD"."KEI_ID"'
    end
    object q_spprodKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SPPROD"."KSM_ID"'
      Required = True
    end
    object q_spprodSPROD_ID: TIntegerField
      FieldName = 'SPROD_ID'
      Origin = '"SPPROD"."SPROD_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_spprodVOL_OV: TFMTBCDField
      FieldName = 'VOL_OV'
      Origin = '"SPPROD"."VOL_OV"'
      Precision = 18
      Size = 6
    end
    object q_spprodVOLUMF: TFMTBCDField
      FieldName = 'VOLUMF'
      Origin = '"SPPROD"."VOLUMF"'
      Precision = 18
      Size = 6
    end
    object q_spprodGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"SPPROD"."GOST"'
      FixedChar = True
      Size = 30
    end
    object q_spprodKORG: TIntegerField
      FieldName = 'KORG'
      Origin = '"SPPROD"."KORG"'
    end
    object q_spprodXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"SPPROD"."XARKT"'
      Size = 30
    end
    object q_spprodACTIVP: TSmallintField
      FieldName = 'ACTIVP'
      Origin = '"SPPROD"."ACTIVP"'
    end
    object q_spprodLEK_ID: TSmallintField
      FieldName = 'LEK_ID'
      Origin = '"SPPROD"."LEK_ID"'
    end
    object q_spprodNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object q_spprodNAM: TIBStringField
      FieldName = 'NAM'
      Origin = '"SPRORG"."NAM"'
      Size = 100
    end
    object q_spprodNAMEFV: TIBStringField
      FieldName = 'NAMEFV'
      Origin = '"SPFORMV"."NAMEFV"'
      FixedChar = True
      Size = 50
    end
    object q_spprodNAM_REG: TIBStringField
      FieldName = 'NAM_REG'
      Origin = '"REGION"."NAM"'
      FixedChar = True
    end
  end
  object mem_spprod: TkbmMemTable
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
    Left = 48
    Top = 112
    object mem_spprodSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"SPPROD"."STRUK_ID"'
    end
    object mem_spprodKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"SPPROD"."KEI_ID"'
    end
    object mem_spprodKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SPPROD"."KSM_ID"'
      Required = True
    end
    object mem_spprodSPROD_ID: TIntegerField
      FieldName = 'SPROD_ID'
      Origin = '"SPPROD"."SPROD_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object mem_spprodKORG: TIntegerField
      FieldName = 'KORG'
      Origin = '"SPPROD"."KORG"'
    end
    object mem_spprodACTIVP: TSmallintField
      FieldName = 'ACTIVP'
      Origin = '"SPPROD"."ACTIVP"'
    end
    object mem_spprodLEK_ID: TSmallintField
      FieldName = 'LEK_ID'
      Origin = '"SPPROD"."LEK_ID"'
    end
    object mem_spprodNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object mem_spprodKOD_PROD: TStringField
      FieldName = 'KOD_PROD'
      Size = 18
    end
    object mem_spprodVOL_OV: TFloatField
      FieldName = 'VOL_OV'
    end
    object mem_spprodVOLUMF: TFloatField
      FieldName = 'VOLUMF'
    end
    object mem_spprodGOST: TStringField
      FieldName = 'GOST'
      Size = 30
    end
    object mem_spprodXARKT: TStringField
      FieldName = 'XARKT'
      Size = 30
    end
    object mem_spprodNEIS: TStringField
      FieldName = 'NEIS'
      Size = 10
    end
    object mem_spprodNAM: TStringField
      FieldName = 'NAM'
      Size = 100
    end
    object mem_spprodNAMEFV: TStringField
      FieldName = 'NAMEFV'
      Size = 50
    end
    object mem_spprodNAM_REG: TStringField
      FieldName = 'NAM_REG'
    end
  end
end
