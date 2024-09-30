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
  LoginUsuarios in '..\Comuns\provider\LoginUsuarios.pas' {FormLoginUsuarios},
  Criptografia in '..\Comuns\Class\Criptografia.pas',
  BCrypt.Consts in '..\modules\bcrypt\src\BCrypt.Consts.pas',
  BCrypt.Core in '..\modules\bcrypt\src\BCrypt.Core.pas',
  BCrypt.Intf in '..\modules\bcrypt\src\BCrypt.Intf.pas',
  BCrypt in '..\modules\bcrypt\src\BCrypt.pas',
  BCrypt.Types in '..\modules\bcrypt\src\BCrypt.Types.pas',
  Usuarios in '..\Comuns\provider\Usuarios.pas' {FormUsuarios},
  Fornecedor in '..\Comuns\provider\Fornecedor.pas' {FormFornecedor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TfrmViewBase, frmViewBase);
  Application.Run;
end.
