unit SeriaOstatkiDM;

interface

uses DBDM,
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBUpdSQLW, IBQuery,
  RxIBQuery, IBStoredProc, IBDatabase, Dialogs;

type
  TSerOstDM = class(TDataModule)
    AddSeria: TIBStoredProc;
    Add_Ostatki: TIBStoredProc;
    q_seria: TRxIBQuery;
    q_seriaSERIA_ID: TIntegerField;
    q_seriaKSM_ID: TIntegerField;
    q_seriaSERIA: TIBStringField;
    q_seriaSROK_GODN: TDateField;
    q_seriaSERTIF: TIBStringField;
    q_seriaDATE_SERTIF: TDateField;
    q_seriaPASPORT: TIBStringField;
    q_seriaDATE_PASPORT: TDateField;
    q_seriaKOL_SERIA: TFMTBCDField;
    q_seriaDATE_VIPUSK: TDateField;
    q_seriaFORMA_VIPUSK: TIBStringField;
    q_seriaKEI_ID: TSmallintField;
    q_seriaDATE_TIME_UPDATE: TDateTimeField;
    q_seriaUSER_NAME: TIBStringField;
    q_seriaSHEMA: TIBStringField;
    q_seriaKODTN: TIBStringField;
    q_seriaDATE_ZAG: TDateField;
    q_seriaFIO_RASH: TIBStringField;
    q_seriaFIO_MASTER: TIBStringField;
    q_seriaCOMMENT: TIBStringField;
    q_seriaOB_ZAG: TFloatField;
    q_seriaVLAG_TM: TFloatField;
    q_seriaKOD_TM: TIntegerField;
    q_seriaKOL_TM: TFloatField;
    upd_seria: TIBUpdateSQLW;
    q_ostatki: TRxIBQuery;
    q_ostatkiKEI_ID: TSmallintField;
    q_ostatkiRAZDEL_ID: TSmallintField;
    q_ostatkiKSM_ID: TIntegerField;
    q_ostatkiKSM_IDPR: TIntegerField;
    q_ostatkiMES: TSmallintField;
    q_ostatkiGOD: TSmallintField;
    q_ostatkiONM_FD: TFMTBCDField;
    q_ostatkiONM_NZ: TFMTBCDField;
    q_ostatkiONM_S: TFMTBCDField;
    q_ostatkiOT_FD: TFMTBCDField;
    q_ostatkiOT_NZ: TFMTBCDField;
    q_ostatkiOT_S: TFMTBCDField;
    q_ostatkiSERIA_ID: TIntegerField;
    q_ostatkiSTRUK_ID: TIntegerField;
    q_ostatkiUSER_NAME: TIBStringField;
    q_ostatkiKOL_TRANS: TFloatField;
    q_ostatkiKOL_GRP: TFloatField;
    q_ostatkiVES_TRANS: TIBBCDField;
    q_ostatkiNMAT: TIBStringField;
    q_ostatkiNEIS: TIBStringField;
    q_ostatkiKART_ID: TIntegerField;
    q_ostatkiOT_DOKUM: TFloatField;
    q_ostatkiONM_DOKUM: TFMTBCDField;
    q_ostatkiNOMU_ID_TRANS: TSmallintField;
    q_ostatkiNOMU_ID_GRP: TSmallintField;
    q_ostatkiVOL_TRANS: TFMTBCDField;
    upd_ostatki: TIBUpdateSQLW;
    procedure q_seriaBeforeInsert(DataSet: TDataSet);
    procedure q_seriaNewRecord(DataSet: TDataSet);
    procedure q_ostatkiBeforeInsert(DataSet: TDataSet);
    procedure q_ostatkiNewRecord(DataSet: TDataSet);
  private
    m_seriaId, m_ksmId, m_kartId, m_ksmIdPrep, m_keiId, m_year, m_month,
    m_razdelId, m_strukId, m_strokaId, m_docId : integer;
    m_seria : string;


  public

    property ksmId : integer read m_ksmId write m_ksmId;
    property ksmIdPrep : integer read m_ksmIdPrep write m_ksmIdPrep;
    property keiId : integer read m_keiId write m_keiId;
    property razdelId : integer read m_razdelId write m_razdelId;
    property year : integer read m_year write m_year;
    property month : integer read m_month write m_month;
    property strukId : integer read m_strukId write m_strukId;
    property seriaId : integer read m_seriaId write m_seriaId;
    property seria : string read m_seria write m_seria;

  end;

implementation

{$R *.dfm}

procedure TSerOstDM.q_ostatkiBeforeInsert(DataSet: TDataSet);
begin
  Add_Ostatki.ExecProc;
  m_kartId := Add_Ostatki.Params.Items[0].AsInteger;
end;

procedure TSerOstDM.q_ostatkiNewRecord(DataSet: TDataSet);
begin
  q_ostatki.FieldByName('Kart_Id').AsInteger := m_kartId;
  q_ostatki.FieldByName('Ksm_Id').AsInteger := m_ksmId;
  if (m_razdelId <> 0) then
    q_ostatki.FieldByName('razdel_id').AsInteger := m_razdelId;
  if (m_ksmIdPrep <> 0) and (m_ksmIdPrep <> m_ksmId) then
    q_ostatki.FieldByName('ksm_idpr').AsInteger := m_ksmIdPrep;
  if (m_seriaId <> 0) then
    q_ostatki.FieldByName('Seria_id').AsInteger := m_seriaId;
  q_ostatki.FieldByName('Kei_Id').AsInteger := m_keiId;
  q_ostatki.FieldByName('Struk_Id').AsInteger := m_strukId;
  q_ostatki.FieldByName('Mes').AsInteger := m_month;
  q_ostatki.FieldByName('God').AsInteger := m_year;
end;

procedure TSerOstDM.q_seriaBeforeInsert(DataSet: TDataSet);
begin
  AddSeria.ExecProc;
  m_seriaId := AddSeria.Params.Items[0].AsInteger;
end;

procedure TSerOstDM.q_seriaNewRecord(DataSet: TDataSet);
begin
  q_seriaSERIA_ID.AsInteger := m_seriaId;
  q_seriaKSM_ID.AsInteger := ksmId;
  q_seriaSERIA.AsString := seria;
  if (q_seriaKol_Seria.AsVariant = '') then
    q_seriaKol_Seria.AsFloat := 0;
end;

end.
