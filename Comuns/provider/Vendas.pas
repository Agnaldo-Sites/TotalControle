unit Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TFormVendas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel6: TPanel;
    Label3: TLabel;
    Panel7: TPanel;
    Label4: TLabel;
    BtnSelecionar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RadioGroup1: TRadioGroup;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    CodProduto: TEdit;
    QueryConsulta: TADOQuery;
    DBEdit1: TDBEdit;
    QueryLIstaProduto: TADOQuery;
    QueryProduto: TADOQuery;
    EditTotal: TEdit;
    QueryProdutoCodProduto: TAutoIncField;
    QueryProdutoDescProduto: TStringField;
    QueryProdutoCodigoBarra: TStringField;
    QueryProdutoCustoCompra: TBCDField;
    QueryProdutoCustoVenda: TBCDField;
    QueryProdutoQuantEstoque: TIntegerField;
    QueryProdutoPermiteMovEstoque: TStringField;
    QueryProdutoNCM: TStringField;
    QueryProdutoCEST: TStringField;
    QueryProdutoCFOP: TStringField;
    QueryProdutoAliquotaICMS: TStringField;
    QueryProdutoAliquotaIPI: TStringField;
    QueryProdutoAtivo: TStringField;
    QueryProdutoCodGrupo: TIntegerField;
    DSQueryProduto: TDataSource;
    Edit1: TEdit;
    Label9: TLabel;
    PopupMenu1: TPopupMenu;
    DeletaLinha: TMenuItem;
    BtnConfimaCompra: TSpeedButton;
    BtnCancelar: TSpeedButton;
    Vendas: TADOQuery;
    Panel11: TPanel;
    lblCliente: TLabel;
    EditCliente: TEdit;
    StringGrid1: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure CodProdutoExit(Sender: TObject);
    procedure CodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CodProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DeletaLinhaClick(Sender: TObject);
    procedure BtnConfimaCompraClick(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EditClienteExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditClienteKeyPress(Sender: TObject; var Key: Char);
    procedure EditClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VendasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CarregaStringGrid;
  public
    { Public declarations }
    xCodCliente,xCodProduto : integer;
  end;

var
  FormVendas: TFormVendas;

implementation

{$R *.dfm}

uses ViewBase, NFuncao, Produtos, Clientes;

procedure TFormVendas.BtnCancelarClick(Sender: TObject);
var
  F: TNFuncao;
begin
   F.LimpaGrid(StringGrid1);
  CodProduto.Clear;
  DBEdit1.Clear;
  Edit1.Text := '1';
  EditCliente.Clear;
  EditTotal.Clear;
  Label9.Caption := 'R$ 0,00';
  RadioGroup1.ItemIndex := -1;
  CarregaStringGrid;
  ShowMessage('Venda Cancelada com Sucesso !!');
  EditCliente.Enabled := true;
  EditCliente.SetFocus;
end;

procedure TFormVendas.BtnConfimaCompraClick(Sender: TObject);
var
  i: integer;
  xCodVenda : integer;
  xSomaTotVenda : Double;
  F : TNFuncao;
begin

  EditCliente.Enabled := true;
  CodProduto.Enabled := false;

  Vendas.Close;
  Vendas.SQL.Clear;
  Vendas.SQL.Add('select TOP(1) CodVenda from Vendas order by CodVenda desc');
  Vendas.Open;
  xCodVenda := Vendas.FieldByName('CodVenda').AsInteger + 1;

  with Vendas do
    begin
      Close;
      SQL.Clear;
      SQL.Add('insert into Vendas (CodVenda,MetodoPagamento,CodUsuario,CodCliente,TotVenda) values '+
              ' (:CodVenda,:MetodoPagamento,:CodUsuario,:CodCliente,:TotVenda)');

      xSomaTotVenda := 0;
      for i := 1 to StringGrid1.RowCount - 1 do
        begin
          xSomaTotVenda := xSomaTotVenda + StrToFloat(StringGrid1.Cells[3, i]);
        end;

      Parameters.ParamByName('CodVenda').value :=          xCodVenda;
      Parameters.ParamByName('MetodoPagamento').value :=   StringGrid1.Cells[4, i];
      Parameters.ParamByName('CodUsuario').value :=        frmViewBase.vCodUsuario;
      Parameters.ParamByName('CodCliente').value :=        xCodCliente;
      Parameters.ParamByName('TotVenda').value :=          xSomaTotVenda;

      try
        ExecSQL;  // Executa a query no banco de dados
      except
        on E: Exception do
        begin
          ShowMessage('Erro ao inserir a linha ' + IntToStr(i) + ': ' + E.Message);
          Exit;
        end;
      end;
    end;

   for i := 1 to StringGrid1.RowCount - 1 do
    begin

        with Vendas do
          begin

            Close;
            SQL.Clear;
            SQL.Add('insert into ItensVenda (CodVenda,CodCliente,CodProduto,Quant,ValUnitario,ValTot) values '+
                    ' (:CodVenda,:CodCliente,:CodProduto,:Quant,:ValUnitario,:ValTot)');

            Parameters.ParamByName('CodVenda').value :=         xCodVenda;
            Parameters.ParamByName('CodCliente').value :=       xCodCliente;
            Parameters.ParamByName('CodProduto').value :=       StrToInt( StringGrid1.Cells[6, i]);
            Parameters.ParamByName('Quant').value :=       StrToInt( StringGrid1.Cells[2, i]);
            Parameters.ParamByName('ValUnitario').value :=       StrToFloat( StringGrid1.Cells[1, i]);
            Parameters.ParamByName('ValTot').value :=       StrToFloat( StringGrid1.Cells[3, i]);


          try
            ExecSQL;  // Executa a query no banco de dados
          except
            on E: Exception do
            begin
              ShowMessage('Erro ao inserir a linha ' + IntToStr(i) + ': ' + E.Message);
              Exit;
            end;
          end;
          end;

    end;

    F.LimpaGrid(StringGrid1);
    CodProduto.Text := '';
    DBEdit1.Clear;
    Edit1.Text := '1';
    EditCliente.Text := '';
    EditTotal.Clear;
    RadioGroup1.ItemIndex := -1;
    Label9.Caption := 'R$ 0,00';
    CarregaStringGrid;
    ShowMessage('Venda Realizada Com Sucesso!!');

    EditCliente.SetFocus;

end;


procedure TFormVendas.BtnSelecionarClick(Sender: TObject);
var
  Descricao: string;
  ValorUnitario: string;
  Quantidade: string;
  ValorTotal: string;
  TipoPagamento: string;
  i: Integer;
  CodigoCliente : string;
  CodigoProduto : string;
  xSoma : Double;
  Funcao : TNFuncao;
begin

  if (CodProduto.Text = '') or (DBEdit1.Text = '') or (EditTotal.Text = '') or (Edit1.Text = '') or  (EditCliente.Text = '')
  or (RadioGroup1.ItemIndex = -1 ) then
    begin
      ShowMessage('algum Campo Vazio Verique !!');
      Exit;
    end;

  // Obtenha os dados dos Edits
  xSoma := 0;
  Descricao := CodProduto.Text;
  ValorUnitario := DBEdit1.Text;
  Quantidade :=  Edit1.Text;
  ValorTotal := EditTotal.Text;
  CodigoCliente := IntToStr(xCodCliente);
  CodigoProduto := IntToStr(xCodProduto);

  // Obtenha o tipo de pagamento

  case RadioGroup1.ItemIndex of
  0:TipoPagamento := 'Dinhero';
  1:TipoPagamento := 'Cartão de Credito';
  2:TipoPagamento := 'Cartão de Debido';
  end;

  // Adicionar os dados no TStringGrid
  i := StringGrid1.RowCount; // Pegue a última linha (para adicionar um novo registro)
  StringGrid1.RowCount := i + 1; // Aumente a contagem de linhas

  // Adicione os dados às células
  StringGrid1.Cells[0, i] := Descricao;
  StringGrid1.Cells[1, i] := ValorUnitario;
  StringGrid1.Cells[2, i] := Quantidade;
  StringGrid1.Cells[3, i] := ValorTotal;
  StringGrid1.Cells[4, i] := TipoPagamento;
  StringGrid1.Cells[5, i] := CodigoCliente;
  StringGrid1.Cells[6, i] := CodigoProduto;
  // Limpar os Edits após adicionar os dados
  CodProduto.Clear;
  DBEdit1.Clear;
  Edit1.Text := '1';
  EditTotal.Clear;
  RadioGroup1.ItemIndex := -1;
  StringGrid1.ColWidths[5] := 0;
  StringGrid1.ColWidths[6] := 0;


  for i := 1 to StringGrid1.RowCount - 1 do
  begin
    // Certifique-se de que o valor na célula não está vazio antes de tentar converter
    if StringGrid1.Cells[3, i] <> '' then // Coluna 3, ajuste conforme necessário
    begin
      xSoma := xSoma + StrToFloat(StringGrid1.Cells[3, i]); // Converte e soma os valores
    end;
  end;

  Label9.Caption := 'R$ '+ FloatToStr(xSoma);
  EditCliente.Enabled := false;
  CodProduto.SetFocus;

end;

procedure TFormVendas.Button1Click(Sender: TObject);
begin
  Vendas.Close;
  Vendas.SQL.Clear;
  Vendas.SQL.Add('create table ItensVenda( CodVenda int, SeqItensVenda INT IDENTITY(1,1), CodCliente int, CodProduto int)');
  Vendas.ExecSQL;

end;

procedure TFormVendas.CarregaStringGrid;
var
  F: TNFuncao;
begin
  // Configurar o TStringGrid
  StringGrid1.ColCount := 7;// 5 colunas
  StringGrid1.Cells[0, 0] := 'Descrição do Produto';
  StringGrid1.Cells[1, 0] := 'Val. Unitário';
  StringGrid1.Cells[2, 0] := 'Quantidade';
  StringGrid1.Cells[3, 0] := 'Val. Total';
  StringGrid1.Cells[4, 0] := 'Tipo Pagamento';
  StringGrid1.Cells[5, 0] := 'CodigoCliente';
  StringGrid1.Cells[6, 0] := 'CodigoProduto';


  // Inicializar RowCount para 1 (apenas cabeçalho)
  StringGrid1.RowCount := 1; // Começa apenas com a linha de cabeçalho
  F.AjustaTamanhoGrid(StringGrid1);
  StringGrid1.ColWidths[5] := 0;
  StringGrid1.ColWidths[6] := 0;
end;

procedure TFormVendas.CodProdutoExit(Sender: TObject);
var
  F : TNFuncao;
  NomeProduto : string;
begin
     if CodProduto.Text = '' then
      begin
        ShowMessage('Campo dente ser Preencher Verifique !!');
        CodProduto.SetFocus;
        Exit;
      end;

     NomeProduto := F.ConsultaQuery('Produtos','DescProduto','DescProduto',CodProduto.Text,QueryConsulta);
    if NomeProduto = '' then
      begin
        ShowMessage('Produto não Cadastrado Verifique !!');
        CodProduto.SetFocus;
        Exit;
      end;
end;

procedure TFormVendas.CodProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    FormProdutos := TFormProdutos.Create(Self);
    try
      FormProdutos.BtnSelecionar.Visible := true;
      FormProdutos.vOnde := 'Vendas';
      Application.CreateForm(TFormProdutos, FormProdutos);
    finally
      FormProdutos.BtnSelecionar.Visible := false;
      FormProdutos.Free;
    end;
  end;
end;

procedure TFormVendas.CodProdutoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
      Key := #0;
      DBEdit1.SetFocus;
    end;
end;

procedure TFormVendas.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
      Key := #0;
      Edit1.SetFocus;
    end;
end;

procedure TFormVendas.DeletaLinhaClick(Sender: TObject);
var
  LinhaSelecionado,AjudaLinhaGrid : integer;
begin

  // Verifica se há mais de uma linha (para evitar deletar todas as linhas)
  if StringGrid1.RowCount > 1 then
  begin
    LinhaSelecionado := StringGrid1.Row; // Obtém a linha selecionada

    // Desloca todas as linhas abaixo da linha selecionada para cima
    for AjudaLinhaGrid := 0 to StringGrid1.ColCount - 1 do
    begin
      for LinhaSelecionado := StringGrid1.Row to StringGrid1.RowCount - 2 do
      begin
        StringGrid1.Cells[AjudaLinhaGrid, LinhaSelecionado] := StringGrid1.Cells[AjudaLinhaGrid, LinhaSelecionado + 1];
      end;
    end;
    // Remove a última linha, que agora está duplicada
    StringGrid1.RowCount := StringGrid1.RowCount - 1;
  end
  else
    ShowMessage('Não é possível excluir todas as linhas.');

end;

procedure TFormVendas.Edit1Exit(Sender: TObject);
var
  xCustoCompra,xResultadoSoma : Double;
  xEstoque : integer;
  F : TNFuncao;
  xQuantEstoque : integer;
begin
  with QueryProduto do
    begin

      xCustoCompra := FieldByName('CustoCompra').AsFloat;
      xEstoque :=   StrToInt(Edit1.Text);
      EditTotal.Text :=  FloatToStr(xCustoCompra * xEstoque);
    end;

  //Verifica se o Usario Permite Movimentar o Estoque do Produto
   if F.ConsultaQuery('Produtos','PermiteMovEstoque','CodProduto', IntToStr(xCodProduto),QueryConsulta) <> 'N'  then
    begin

      //Verificação do Estoque
      if StrToInt(Edit1.Text) > StrToInt(F.ConsultaQuery('Produtos','QuantEstoque','CodProduto', IntToStr(xCodProduto),QueryConsulta)) then
        begin
          ShowMessage('Produto não tem estoque Sufuciente !!');
          Edit1.SetFocus;
          Abort;
        end;
    end;

  with QueryConsulta do //Update no estoque do Produto
    begin
      xQuantEstoque := StrToInt(F.ConsultaQuery('Produtos','QuantEstoque','CodProduto', IntToStr(xCodProduto),QueryConsulta)) -  StrToInt(Edit1.Text);

      Close;
      SQL.Clear;
      SQL.Add(' Update Produtos set QuantEstoque ='+IntToStr(xQuantEstoque)+' where CodProduto = '+ IntToStr(xCodProduto));
      ExecSQL;
    end;

end;


procedure TFormVendas.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    FormClientes := TFormClientes.Create(Self);
    try
      FormClientes.BtnSelecionar.Visible := true;
      Application.CreateForm(TFormClientes, FormClientes);
    finally
      FormClientes.BtnSelecionar.Visible := false;
      FormClientes.Free;
    end;
  end;
end;

procedure TFormVendas.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      BtnSelecionar.click;
    end;
end;

procedure TFormVendas.EditClienteExit(Sender: TObject);
var
  F : TNFuncao;
  NomeCliente : string;
begin
  if EditCliente.Text = '' then
    begin
      ShowMessage('Campo Tende de ser Preenchido Verifique !!');
      EditCliente.SetFocus;
      Exit;
    end;

    NomeCliente := F.ConsultaQuery('Clientes','Nome','Nome',EditCliente.Text,QueryConsulta);
    if NomeCliente = '' then
      begin
        ShowMessage('Nome de Cliente não Cadastrado Verifique !!');
        EditCliente.SetFocus;
        Exit;
      end;

    CodProduto.Enabled := true;
end;

procedure TFormVendas.EditClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_F5 then
  begin
    FormClientes := TFormClientes.Create(Self);
    try
      FormClientes.BtnSelecionar.Visible := true;
      FormClientes.vOnde := 'Vendas';
      Application.CreateForm(TFormClientes, FormClientes);
    finally
      FormClientes.BtnSelecionar.Visible := false;
      FormClientes.Free;
    end;
  end;
end;

procedure TFormVendas.EditClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      CodProduto.Enabled := true;
      CodProduto.SetFocus;
    end;
end;

procedure TFormVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := CaFree;
  Release;
  FormVendas := nil;
end;

procedure TFormVendas.FormCreate(Sender: TObject);
begin
  CarregaStringGrid;
end;

procedure TFormVendas.FormShow(Sender: TObject);
var
  Funcao : TNFuncao;
  DescGrupo: string;
begin
  Label9.Font.Color := clRed;
  DescGrupo := Funcao.ConsultaQuery('Usuarios','Nome','CodUsuario',IntToStr(frmViewBase.vCodUsuario),QueryConsulta);
  if DescGrupo <> '' then
    Label1.Caption :=  'Usuario Realizando a Venda: '+ DescGrupo
  else
    begin
      ShowMessage('Erro Alguma Coisa Errada com o Codigo de Usuario');
      Exit;
    end;
end;

procedure TFormVendas.SpeedButton1Click(Sender: TObject);
begin
  CodProduto.Clear;
  DBEdit1.Clear;
  Edit1.Text := '1';
  EditTotal.Clear;
  RadioGroup1.ItemIndex := -1;
  EditCliente.Enabled := true;
  CodProduto.SetFocus;
end;

end.
