unit TexGurTypes;

interface

type
  TTexGurType = (drugLoadSum = 1,           // суммарная загрузка на препарате, не редактируется
                 drugLoadList ,              // все загрузки на препарате списком
                 drugLoadUsual,            // загрузка из неполного отчета
                 drugLoadSeria,         // загрузка по конкретной серии
                 drugLoadSeries,        // все серии загрузки на препарате списком
                 
                 drugConsSum,           // суммарный расход на препарате, не редактируется
                 drugCons,              // все расходы на препарате списком
                 drugConsUsual,
                 drugConsSeria,         // расход по конкретной серии
                 drugConsSeries         // все серии расхода на препарате списком
                   );

implementation

end.
