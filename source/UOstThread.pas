unit UOstThread;

interface

uses Classes, SysUtils;

type
  TOstThread = class(TThread) //Новый класс
  private

  protected
    procedure ShowResult;
    procedure Execute; override;
  end;

implementation

uses
  Ostatki, dm;

//Процедура для вывода информации из потока
procedure TOstThread.ShowResult;
begin
  FOstatki.dbgrideh1.Visible := false;
  FOstatki.dbgrideh2.Visible := true;
  dm.Splash.Free;
end;   
    
//Длинная процедура   
procedure TOstThread.Execute;
begin
  Ost_Usl := ' ';
  ost_s := ' ';
  Ost_Usl1 := ' having  (sum(Ostatok_end_NZ) <> 0) or (sum(Ostatok_end_S) <> 0) '
              + ' or (sum(Ostatok_begin_NZ) <> 0) or (sum(Ostatok_begin_S) <> 0) '
              + ' or (sum(OST.PRIX_PERIOD) <> 0) or (sum(OST.RASX_PERIOD) <> 0)';
  Ost_sort := ' ORDER BY 1';
  OstSyr_sort := ' ORDER BY OST.ksm_id';
  FOstatki.Ost.Close;
  FOstatki.Ost.ParamByName('STRUK_ID').AsInteger := vStruk_Id;
  FOstatki.Ost.MacroByName('DAT1').AsString := '''' + S_DAT1 + '''';
  FOstatki.Ost.MacroByName('DAT2').AsString := '''' + S_DAT2 + '''';
  FOstatki.Ost.MacroByName('usl').AsString := Ost_Usl;
  FOstatki.Ost.MacroByName('USL1').AsString := Ost_Usl1;
  FOstatki.Ost.MacroByName('SORT').AsString := Ost_Sort;
  FOstatki.Ost.Open;

  Synchronize(ShowResult);
end;   


end.
