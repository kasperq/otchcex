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

    procedure loadTexGurLoad; // загружает загрузку по сериям с заданными текущими параметрами
    procedure findDrug(); overload; // открывает справочник ГП для поиска препарата
    procedure findDrug(kodProd : string); overload; // ищет препарат по длинному коду в таблице SPPROD
    procedure findSeria(seria : string); overload;  // ищет серию текущего препарата по введенному номеру серии
    procedure findSeria(); overload;  // открывает таблицу серий текущего препарата
    procedure setDateLoad(value : TDate);

  end;

implementation

end.
