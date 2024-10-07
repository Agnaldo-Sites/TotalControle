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
  Fornecedor in '..\Comuns\provider\Fornecedor.pas' {FormFornecedor},
  Produtos in '..\Comuns\provider\Produtos.pas' {FormProdutos},
  RelProduto in '..\Comuns\provider\RelProduto.pas' {FormRelProduto},
  NFuncao in '..\Comuns\base\NFuncao.pas',
  Grupo in '..\Comuns\provider\Grupo.pas' {FormGrupo},
  CFOP in '..\Comuns\provider\CFOP.pas' {FormCFOP},
  Vendas in '..\Comuns\provider\Vendas.pas' {FormVendas},
  ConsultaVenda in '..\Comuns\provider\ConsultaVenda.pas' {FormConsultaVenda},
  ClassConexao in '..\Comuns\base\ClassConexao.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TfrmViewBase, frmViewBase);
  application.Run;
end.
