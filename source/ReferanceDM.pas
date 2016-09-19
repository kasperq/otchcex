unit ReferanceDM;

interface

uses DBDM,
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery, RxIBQuery, kbmMemTable;

type
  TRefDM = class({TTempDM}TDataModule)
    q_spprod: TRxIBQuery;
    q_spprodSTRUK_ID: TSmallintField;
    q_spprodNMAT: TIBStringField;
    q_spprodKOD_PROD: TIBStringField;
    q_spprodKEI_ID: TSmallintField;
    q_spprodKSM_ID: TIntegerField;
    q_spprodSPROD_ID: TIntegerField;
    q_spprodVOL_OV: TFMTBCDField;
    q_spprodVOLUMF: TFMTBCDField;
    q_spprodGOST: TIBStringField;
    q_spprodKORG: TIntegerField;
    q_spprodXARKT: TIBStringField;
    q_spprodACTIVP: TSmallintField;
    q_spprodLEK_ID: TSmallintField;
    q_spprodNEIS: TIBStringField;
    q_spprodNAM: TIBStringField;
    q_spprodNAMEFV: TIBStringField;
    q_spprodNAM_REG: TIBStringField;
    mem_spprod: TkbmMemTable;
    mem_spprodSTRUK_ID: TSmallintField;
    mem_spprodKEI_ID: TSmallintField;
    mem_spprodKSM_ID: TIntegerField;
    mem_spprodSPROD_ID: TIntegerField;
    mem_spprodKORG: TIntegerField;
    mem_spprodACTIVP: TSmallintField;
    mem_spprodLEK_ID: TSmallintField;
    mem_spprodNMAT: TStringField;
    mem_spprodKOD_PROD: TStringField;
    mem_spprodVOL_OV: TFloatField;
    mem_spprodVOLUMF: TFloatField;
    mem_spprodGOST: TStringField;
    mem_spprodXARKT: TStringField;
    mem_spprodNEIS: TStringField;
    mem_spprodNAM: TStringField;
    mem_spprodNAMEFV: TStringField;
    mem_spprodNAM_REG: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
