unit ViewBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB;

type
  TfrmViewBase = class(TForm)
    pnl1: TPanel;
    pnl3: TPanel;
    pnl21: TPanel;
    pnl2: TPanel;
    pnl4: TPanel;
    nbMenu_Notebook: TNotebook;
    btn4: TSpeedButton;
    bvl: TBevel;
    Base: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewBase: TfrmViewBase;

implementation

{$R *.dfm}

end.
