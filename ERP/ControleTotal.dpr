program ControleTotal;

uses
  Vcl.Forms,
  ViewBase in '..\Comuns\base\ViewBase.pas' {frmViewBase},
  Clientes in '..\Comuns\provider\Clientes.pas' {FormClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmViewBase, frmViewBase);
  Application.CreateForm(TFormClientes, FormClientes);
  Application.Run;
end.
