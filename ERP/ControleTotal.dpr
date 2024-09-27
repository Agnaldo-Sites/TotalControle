program ControleTotal;

uses
  Vcl.Forms,
  ViewBase in '..\Comuns\base\ViewBase.pas' {frmViewBase},
  Clientes in '..\Comuns\provider\Clientes.pas' {FormClientes},
  FrameToolBar in '..\Comuns\Frames\FrameToolBar.pas' {FrmFrameToolBar: TFrame},
  Vcl.Themes,
  Vcl.Styles,
  Aparencia in '..\Comuns\provider\Aparencia.pas' {FormAparencia};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmViewBase, frmViewBase);
  Application.Run;
end.
