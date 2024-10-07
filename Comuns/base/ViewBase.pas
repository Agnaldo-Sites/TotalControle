unit ViewBase;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB,
  Grids, DBGrids, Vcl.Themes, Vcl.Menus;
type
  TfrmViewBase = class(TForm)
    Base: TADOConnection;
    QueryConsulta: TADOQuery;
    pnl4: TPanel;
    btnSBAparencia: TSpeedButton;
    nbMenu_Notebook: TNotebook;
    BtnFornecedor: TSpeedButton;
    bvl: TBevel;
    Timer1: TTimer;
    PopMenu1: TPopupMenu;
    CarregaLogin1: TMenuItem;
    btn5: TSpeedButton;
    BtnUsuarios: TSpeedButton;
    BtnProdutos: TSpeedButton;
    BtnRelProdutos: TSpeedButton;
    BtnGrupo: TSpeedButton;
    BtnCFOP: TSpeedButton;
    BtnVendas: TSpeedButton;
    BtnConsultaVenda: TSpeedButton;
    procedure BtnFornecedorClick(Sender: TObject);
    procedure btnSBAparenciaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CarregaLogin1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure BtnUsuariosClick(Sender: TObject);
    procedure BtnProdutosClick(Sender: TObject);
    procedure BtnRelProdutosClick(Sender: TObject);
    procedure BtnGrupoClick(Sender: TObject);
    procedure BtnCFOPClick(Sender: TObject);
    procedure BtnVendasClick(Sender: TObject);
    procedure BtnConsultaVendaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
     procedure ConfigurarConexao;
  public
    { Public declarations }
    vCodUsuario: Integer;
  end;
var
  frmViewBase: TfrmViewBase;
implementation
uses
  Clientes, Aparencia, LoginUsuarios, Usuarios, Fornecedor, Produtos, RelProduto,
  Grupo, CFOP, Vendas, ConsultaVenda, ClassConexao;
{$R *.dfm}
procedure TfrmViewBase.BtnCFOPClick(Sender: TObject);
var
 i : integer;
begin
// Verifica se o formulário já está aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se não estiver aberto, cria uma nova instância
  Application.CreateForm(TFormCFOP, FormCFOP);  //CFOP

end;

procedure TfrmViewBase.BtnConsultaVendaClick(Sender: TObject);
var
 i : integer;
begin
// Verifica se o formulário já está aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se não estiver aberto, cria uma nova instância
  Application.CreateForm(TFormConsultaVenda, FormConsultaVenda); //Consulta de Vendas

end;

procedure TfrmViewBase.BtnFornecedorClick(Sender: TObject);
var
 i : integer;
begin
// Verifica se o formulário já está aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se não estiver aberto, cria uma nova instância
  Application.CreateForm(TFormFornecedor, FormFornecedor); // Fornecedores
end;

procedure TfrmViewBase.BtnGrupoClick(Sender: TObject);
var
  i: integer;
begin
  // Verifica se o formulário já está aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se não estiver aberto, cria uma nova instância
  Application.CreateForm(TFormGrupo, FormGrupo); //Grupo de Produtos

end;

procedure TfrmViewBase.BtnProdutosClick(Sender: TObject);
var
  i: integer;
begin
// Verifica se o formulário já está aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se não estiver aberto, cria uma nova instância
  Application.CreateForm(TFormProdutos, FormProdutos); //Produtos
end;
procedure TfrmViewBase.BtnRelProdutosClick(Sender: TObject);
var
  i: integer;
begin
// Verifica se o formulário já está aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se não estiver aberto, cria uma nova instância
  Application.CreateForm(TFormRelProduto, FormRelProduto); //Relatorio de Produtos
end;
procedure TfrmViewBase.btn5Click(Sender: TObject);
var
  i: integer;
begin
// Verifica se o formulário já está aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se não estiver aberto, cria uma nova instância
  Application.CreateForm(TFormClientes, FormClientes); //Clientes
end;
procedure TfrmViewBase.btnSBAparenciaClick(Sender: TObject);
var
 i : integer;
begin
// Verifica se o formulário já está aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se não estiver aberto, cria uma nova instância
  Application.CreateForm(TFormAparencia, FormAparencia); //Aparencia do Sistema
end;
procedure TfrmViewBase.BtnUsuariosClick(Sender: TObject);
var
 i : integer;
begin
// Verifica se o formulário já está aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se não estiver aberto, cria uma nova instância
  Application.CreateForm(TFormUsuarios, FormUsuarios); //Usuarios
end;
procedure TfrmViewBase.BtnVendasClick(Sender: TObject);
var
 i : integer;
begin
// Verifica se o formulário já está aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se não estiver aberto, cria uma nova instância
  Application.CreateForm(TFormVendas, FormVendas); //Vendas

end;

procedure TfrmViewBase.CarregaLogin1Click(Sender: TObject); // Realiza o fechameto das telas para alterar o estilo do sistema
var
  I, QtdeTelasAtivas: Integer;
  Resultado : Integer;
begin
    QtdeTelasAtivas := 0;
    for I := 0 to Screen.FormCount - 1 do
    if Screen.Forms[I].HandleAllocated and IsWindowVisible(Screen.Forms[I].Handle) then begin
      QtdeTelasAtivas := QtdeTelasAtivas + 1;
    end;
    if (QtdeTelasAtivas > 0) then begin
      Resultado := MessageDlg('Para alterar a aparência do sistema é necessário fechar todas as tela do Sistema Deseja Fechar tudo altomaticamente?',mtConfirmation,[mbYes, mbNo],0);
    end;
      if Resultado = mrYes
        then begin
          Try
            for I := 0 to Screen.FormCount - 1 do
              if Screen.Forms[I].HandleAllocated and IsWindowVisible(Screen.Forms[I].Handle) and (Screen.Forms[I] <> frmViewBase)
                then Screen.Forms[I].Close;
          Except
            exit;
          End;

          try
            Application.CreateForm(TFormLoginUsuarios,FormLoginUsuarios);
            FormLoginUsuarios.ShowModal;
          finally
            FormLoginUsuarios.Free;
          end;
        end;
end;
procedure TfrmViewBase.ConfigurarConexao;
var
  FConexao : TConexao;
begin
  // Cria uma instância da classe de conexão
  FConexao := TConexao.Create(Self);
  try
    // Configura a conexão do componente ADOConnectionBase
    FConexao.GetConfigConnection(Base);
    // Abre a conexão
    Base.Connected := True;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao configurar a conexão: ' + E.Message);
    end;
  end;
end;

procedure TfrmViewBase.FormActivate(Sender: TObject);
begin
  // Entra com o estilo Padão do sistema o Usuario 1
  QueryConsulta.Close;
  QueryConsulta.SQL.Clear;
  QueryConsulta.SQL.Add('select EstiloDeSistema from Usuarios where CodUsuario = 1');
  QueryConsulta.Open;
  TStyleManager.TrySetStyle(QueryConsulta.FieldByName('EstiloDeSistema').AsString);
  Timer1.Enabled := true;

end;
procedure TfrmViewBase.FormCreate(Sender: TObject);
begin
  ConfigurarConexao; // Funcão de Conexão d Arquivo ini
end;

procedure TfrmViewBase.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  Application.CreateForm(TFormLoginUsuarios,FormLoginUsuarios); // Abre a tela do Login de Usuarios
  FormLoginUsuarios.ShowModal;
end;
end.
