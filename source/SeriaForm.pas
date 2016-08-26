unit SeriaForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FindDlgEh, StdCtrls, Buttons, Grids, DBGridEh, ExtCtrls;

type
  TFSeriaForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grid_seria: TDBGridEh;
    btn_ok: TBitBtn;
    btn_cancel: TBitBtn;
    FindDlgEh1: TFindDlgEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
