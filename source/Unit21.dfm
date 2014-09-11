object F1: TF1
  Left = 239
  Top = 107
  Width = 696
  Height = 480
  Caption = 'F1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 48
    Width = 649
    Height = 120
    DataSource = DSCeh_marsh1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MARSH_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KSM_IDOV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIA_IDOV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZAG_OV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLAGA_OV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AKTIV_OV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOEFPER1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOEFPER2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KSM_DOB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOL_DOB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMAT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XARKT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GOST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMAT_DOB'
        Visible = True
      end>
  end
  object DSCeh_marsh1: TDataSource
    DataSet = Ceh_marsh1
    Left = 120
    Top = 328
  end
  object Ceh_marsh1: TIBQuery
    Database = DM1.BELMED
    Transaction = DM1.IBT_Read
    SQL.Strings = (
      
        'SELECT ceh_marsh.marsh_id,ceh_marsh.ksm_idov,ceh_marsh.seria_ido' +
        'v, ceh_marsh.zag_ov,'
      
        ' ceh_marsh.vlaga_ov, ceh_marsh.aktiv_ov, ceh_marsh.koefper1, ceh' +
        '_marsh.koefper2, ceh_marsh.ksm_dob, ceh_marsh.kol_dob, m1.NMAT,m' +
        '1.XARKT,m1.GOST, seria.seria,m1.nmat nmat_dob'
      'FROM ceh_marsh'
      '   INNER JOIN matrop ON (ceh_marsh.ksm_IDov =matrop.ksm_ID)'
      '   inner JOIN seria ON (ceh_marsh.seria_idov =seria. seria_ID)'
      '   inner JOIN MATROP m1 ON (ceh_marsh.KSM_IDov = MATROP.KSM_ID)'
      '   inner JOIN MATROP m2 ON (ceh_marsh.KSM_Dob = MATROP.KSM_ID)'
      'where ceh_marsh.ksm_id=771')
    Left = 216
    Top = 224
    object Ceh_marsh1MARSH_ID: TSmallintField
      FieldName = 'MARSH_ID'
      Origin = '"CEH_MARSH"."MARSH_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Ceh_marsh1KSM_IDOV: TSmallintField
      FieldName = 'KSM_IDOV'
      Origin = '"CEH_MARSH"."KSM_IDOV"'
    end
    object Ceh_marsh1SERIA_IDOV: TSmallintField
      FieldName = 'SERIA_IDOV'
      Origin = '"CEH_MARSH"."SERIA_IDOV"'
    end
    object Ceh_marsh1ZAG_OV: TFloatField
      FieldName = 'ZAG_OV'
      Origin = '"CEH_MARSH"."ZAG_OV"'
    end
    object Ceh_marsh1VLAGA_OV: TFloatField
      FieldName = 'VLAGA_OV'
      Origin = '"CEH_MARSH"."VLAGA_OV"'
    end
    object Ceh_marsh1AKTIV_OV: TFloatField
      FieldName = 'AKTIV_OV'
      Origin = '"CEH_MARSH"."AKTIV_OV"'
    end
    object Ceh_marsh1KOEFPER1: TFloatField
      FieldName = 'KOEFPER1'
      Origin = '"CEH_MARSH"."KOEFPER1"'
    end
    object Ceh_marsh1KOEFPER2: TFloatField
      FieldName = 'KOEFPER2'
      Origin = '"CEH_MARSH"."KOEFPER2"'
    end
    object Ceh_marsh1KSM_DOB: TSmallintField
      FieldName = 'KSM_DOB'
      Origin = '"CEH_MARSH"."KSM_DOB"'
    end
    object Ceh_marsh1KOL_DOB: TFloatField
      FieldName = 'KOL_DOB'
      Origin = '"CEH_MARSH"."KOL_DOB"'
    end
    object Ceh_marsh1NMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
    object Ceh_marsh1XARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"MATROP"."XARKT"'
      Size = 30
    end
    object Ceh_marsh1GOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"MATROP"."GOST"'
      Size = 30
    end
    object Ceh_marsh1SERIA: TIBStringField
      FieldName = 'SERIA'
      Origin = '"SERIA"."SERIA"'
    end
    object Ceh_marsh1NMAT_DOB: TIBStringField
      FieldName = 'NMAT_DOB'
      Origin = '"MATROP"."NMAT"'
      Size = 60
    end
  end
end
