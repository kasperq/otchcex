unit TexGurTypes;

interface

type
  TTexGurType = (drugLoadSum = 1,           // суммарная загрузка на препарате, не редактируется
                 drugLoadList ,              // все загрузки на препарате списком
                 drugLoadUsual,            // загрузка из неполного отчета
                 drugLoadSeria,         // загрузка по конкретной серии
                 drugLoadSeries,        // все серии загрузки на препарате списком
                 
                 drugConsSum,           // суммарный расход на препарате, не редактируется
                 drugConsList,              // все расходы на препарате списком
                 drugConsUsual,         // расход из неполного отчета
                 drugConsSeria,         // расход по конкретной серии
                 drugConsSeries,        // все серии расхода на препарате списком

                 drugIncSum,
                 drugIncList,
                 drugIncUsual,
                 drugIncSeria,
                 drugIncSeries,

                 drugSum,
                 drugList,
                 drugUsual,
                 drugSeria,
                 drugSeries
                   );
  TTexGurGroup = (
                  incoming = 1,       // приход
                  loading,            // загрузка
                  consumption,        // расход
                  full                // полный
                );

implementation

end.
