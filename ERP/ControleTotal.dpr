program ControleTotal;

uses
  Vcl.Forms,
  ViewBase in '..\Comuns\base\ViewBase.pas' {frmViewBase},
  Clientes in '..\Comuns\provider\Clientes.pas' {FormClientes},
  FrameToolBar in '..\Comuns\Frames\FrameToolBar.pas' {FrmFrameToolBar: TFrame},
  Vcl.Themes,
  Vcl.Styles,
  Aparencia in '..\Comuns\provider\Aparencia.pas' {FormAparencia},
  FormularioFilho in '..\Comuns\provider\FormularioFilho.pas' {FormFormularioFilho},
  LoginUsuarios in '..\Comuns\provider\LoginUsuarios.pas' {FormLoginUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TfrmViewBase, frmViewBase);
  Application.Run;
end.
