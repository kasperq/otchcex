unit DrugReportEdit;

interface

uses SeriaOstatki, DrugLoad,
  IBDatabase, Controls;

type
  TDrugReportEdit = class
  private
    serOstDrug : TSeriaOstatki;
    drSeriaLoad : TDrugLoad;
    m_strukId, m_ksmIdDrug, m_seriaIdDrug : integer;

  public
    Constructor Create(db : TIBDatabase; strukId : integer);
    Destructor Destroy; override;

    procedure loadTexGurLoad; // ��������� �������� �� ������ � ��������� �������� �����������
    procedure findDrug(); overload; // ��������� ���������� �� ��� ������ ���������
    procedure findDrug(kodProd : string); overload; // ���� �������� �� �������� ���� � ������� SPPROD
    procedure findSeria(seria : string); overload;  // ���� ����� �������� ��������� �� ���������� ������ �����
    procedure findSeria(); overload;  // ��������� ������� ����� �������� ���������
    procedure setDateLoad(value : TDate);

  end;

implementation

end.
