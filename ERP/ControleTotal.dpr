program ControleTotal;

uses
  Vcl.Forms,
  ViewBase in '..\Comuns\base\ViewBase.pas' {frmViewBase};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmViewBase, frmViewBase);
  Application.Run;
end.
