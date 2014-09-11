unit Dm1Ost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh;

type
  TDmOst = class(TForm)
    DBGridEh1: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmOst: TDmOst;

implementation

{$R *.dfm}
uses dm;

end.
