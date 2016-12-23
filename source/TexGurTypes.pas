unit TexGurTypes;

interface

type
  TTexGurType = (drugLoadSum = 1,           // ��������� �������� �� ���������, �� �������������
                 drugLoadList ,              // ��� �������� �� ��������� �������
                 drugLoadUsual,            // �������� �� ��������� ������
                 drugLoadSeria,         // �������� �� ���������� �����
                 drugLoadSeries,        // ��� ����� �������� �� ��������� �������
                 
                 drugConsSum,           // ��������� ������ �� ���������, �� �������������
                 drugConsList,              // ��� ������� �� ��������� �������
                 drugConsUsual,         // ������ �� ��������� ������
                 drugConsSeria,         // ������ �� ���������� �����
                 drugConsSeries,        // ��� ����� ������� �� ��������� �������

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
                  incoming = 1,       // ������
                  loading,            // ��������
                  consumption,        // ������
                  full                // ������
                );

implementation

end.
