unit ConsultaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.Buttons,
  FrameToolBar, Vcl.Mask, Vcl.DBCtrls;

type
  TFormConsultaVenda = class(TForm)
    PagListagem: TPageControl;
    ts1: TTabSheet;
    lblTitulo: TLabel;
    dbgrd1: TDBGrid;
    Pesquisa: TEdit;
    chkTodos: TCheckBox;
    Todos: TCheckBox;
    Timer: TTimer;
    QueryListagem: TADOQuery;
    DSQueryListagem: TDataSource;
    ConsultaVendas: TADOQuery;
    Manutencao: TTabSheet;
    FrameBtn: TFrmFrameToolBar;
    lbl4: TLabel;
    DBQuant: TDBEdit;
    lbl6: TLabel;
    DBEdit1: TDBEdit;
    PnlDescproduto: TPanel;
    DSConsultaVendas: TDataSource;
    GridVenda: TDBGrid;
    Vendas: TADOQuery;
    DSVendas: TDataSource;
    QueryListagemCodVenda: TIntegerField;
    QueryListagemDatVenda: TDateTimeField;
    QueryListagemCodCliente: TIntegerField;
    QueryListagemNome: TWideStringField;
    QueryListagemCodUsuario: TIntegerField;
    QueryListagemNome_1: TWideStringField;
    QueryListagemMetodoPagamento: TWideStringField;
    QueryListagemTotVenda: TBCDField;
    ConsultaVendasCodVenda: TIntegerField;
    ConsultaVendasSeqItensVenda: TAutoIncField;
    ConsultaVendasCodCliente: TIntegerField;
    ConsultaVendasNome: TWideStringField;
    ConsultaVendasCodProduto: TIntegerField;
    ConsultaVendasDescProduto: TStringField;
    ConsultaVendasQuant: TIntegerField;
    ConsultaVendasValUnitario: TBCDField;
    ConsultaVendasValTot: TBCDField;
    VendasCodVenda: TIntegerField;
    VendasSeqItensVenda: TAutoIncField;
    VendasCodCliente: TIntegerField;
    VendasCodProduto: TIntegerField;
    VendasQuant: TIntegerField;
    VendasValUnitario: TBCDField;
    VendasValTot: TBCDField;
    QueryConsulta: TADOQuery;
    procedure TimerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PesquisaChange(Sender: TObject);
    procedure TodosClick(Sender: TObject);
    procedure dbgrd1TitleClick(Column: TColumn);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure GridVendaCellClick(Column: TColumn);
    procedure VendasAfterCancel(DataSet: TDataSet);
    procedure VendasAfterPost(DataSet: TDataSet);
    procedure VendasBeforeEdit(DataSet: TDataSet);
    procedure VendasBeforeInsert(DataSet: TDataSet);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNomeClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VendasBeforeDelete(DataSet: TDataSet);
    procedure VendasAfterDelete(DataSet: TDataSet);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    CampoFiltrado : string;
    ColunaFiltrada : TColumn;
    vStatus : string;
    row : Integer;
  public
    { Public declarations }
  end;

var
  FormConsultaVenda: TFormConsultaVenda;

implementation

{$R *.dfm}

uses NFuncao, Produtos, Vendas, Clientes, ViewBase;

procedure TFormConsultaVenda.DBEdit1Exit(Sender: TObject);
var
  Funcao : TNFuncao;
  DescProduto: string;
begin
  if DBEdit1.Text = '' then exit;

  DescProduto := Funcao.ConsultaQuery('Produtos','DescProduto','CodProduto',DBEdit1.Text,QueryConsulta); //Retorna a Descrição do Produto pela Fuñção na Unit "NFucao"
  if DescProduto <> '' then
    PnlDescproduto.Caption :=  DescProduto
  else
    begin
      ShowMessage('Erro Produto não encontrado Verifique');
      DBEdit1.SetFocus;
      Exit;
    end;
end;

procedure TFormConsultaVenda.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then //Se o F5 for apertado
  begin
    FormProdutos := TFormProdutos.Create(Self);
    try
      FormProdutos.BtnSelecionar.Visible := true;
      FormProdutos.vOnde := 'ConsultaVendas';
      Application.CreateForm(TFormProdutos, FormProdutos);
    finally
      FormProdutos.BtnSelecionar.Visible := false;
      FormProdutos.Free;
    end;
  end;
end;

procedure TFormConsultaVenda.dbgrd1CellClick(Column: TColumn);
begin

    ConsultaVendas.Close;
    ConsultaVendas.Parameters.ParamByName('CodVenda').Value := dbgrd1.DataSource.DataSet.FieldByName('CodVenda').AsInteger;
    ConsultaVendas.Open;

end;

procedure TFormConsultaVenda.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Funcao : TNFuncao;
begin
   // Chama a função de zebragem de linhas
   Funcao .AjustaCorDaGrid(dbgrd1, Rect, DataCol, Column, State);
end;

procedure TFormConsultaVenda.dbgrd1TitleClick(Column: TColumn); //Define a Posição e o campo que vai ser filtrado
begin
  ColunaFiltrada := Column;
  if Column.Field.FieldName <> CampoFiltrado then
    begin
      CampoFiltrado := Column.Field.FieldName;
    end;

  if Assigned(ColunaFiltrada) then
    ColunaFiltrada.Title.Caption := StringReplace(ColunaFiltrada.Title.Caption, ' ↑', '', [rfReplaceAll]);

  ColunaFiltrada := Column;
  ColunaFiltrada.Title.Caption := ColunaFiltrada.Title.Caption;
  lblTitulo.Caption := 'Pesquisar: ' +Column.Title.Caption;
  lblTitulo.Width := lblTitulo.Canvas.TextWidth(lblTitulo.Caption);
  Pesquisa.Left := lblTitulo.Left + lblTitulo.Width + 10;
  Pesquisa.Width := 618;
  Pesquisa.Visible := true;
  dbgrd1.Invalidate;
end;

procedure TFormConsultaVenda.DBNomeClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then  //Define a Posição e o campo que vai ser filtrado
  begin
    FormClientes := TFormClientes.Create(Self);
    try
      FormClientes.BtnSelecionar.Visible := true;
      FormClientes.vOnde := 'ConsultaVendas';
      Application.CreateForm(TFormClientes, FormClientes);
    finally
      FormClientes.BtnSelecionar.Visible := false;
      FormClientes.Free;
    end;
  end;
end;

procedure TFormConsultaVenda.GridVendaCellClick(Column: TColumn); // Grid da Venda clicado = Aparece os Itens da Venda Selecionado
var
  Fucao : TNFuncao;
begin
  Vendas.Close;
  Vendas.Parameters.ParamByName('SeqItensVenda').Value := GridVenda.DataSource.DataSet.FieldByName('SeqItensVenda').AsInteger;
  Vendas.Open;

  PnlDescproduto.Caption := Fucao.ConsultaQuery('Produtos','DescProduto','CodProduto',
  IntToStr(Vendas.FieldByName('CodProduto').AsInteger),QueryConsulta);

end;

procedure TFormConsultaVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Limpa a tela no fechamendo dela
  Action := CaFree;
  Release;
  FormConsultaVenda := nil;
end;

procedure TFormConsultaVenda.FormShow(Sender: TObject);
begin
  PagListagem.ActivePageIndex := 0; //A tela abre sempre com a aba "Listagem"
end;

procedure TFormConsultaVenda.PesquisaChange(Sender: TObject);
begin
  Timer.Enabled := false;
  Timer.Enabled := true;
end;

procedure TFormConsultaVenda.TimerTimer(Sender: TObject);
begin
  Timer.Enabled := false;

  if Todos.Checked then
    begin
      QueryListagem.Close;
      QueryListagem.SQL.Clear;
      QueryListagem.SQL.Add('select Vendas.CodVenda,Vendas.DatVenda,Vendas.CodCliente,Clientes.Nome,Vendas.CodUsuario,Usuarios.Nome,Vendas.MetodoPagamento,Vendas.TotVenda from Vendas'+
      ' left outer join Usuarios on Vendas.CodUsuario = Usuarios.CodUsuario'+
      ' left outer join Clientes on Vendas.CodCliente = Clientes.CodCliente');

      QueryListagem.Open;
    end
  else
    begin
      if (Pesquisa.Text <> '')  then
        begin
          QueryListagem.Close;
          QueryListagem.SQL.Clear;
          QueryListagem.SQL.Add('select Vendas.CodVenda,Vendas.DatVenda,Vendas.CodCliente,Clientes.Nome,Vendas.CodUsuario,Usuarios.Nome,Vendas.MetodoPagamento,Vendas.TotVenda from Vendas'+
      ' left outer join Usuarios on Vendas.CodUsuario = Usuarios.CodUsuario'+
      ' left outer join Clientes on Vendas.CodCliente = Clientes.CodCliente where (1=1)');
        if CampoFiltrado = 'CodVenda' then
          QueryListagem.SQL.Add(' and Vendas.CodVenda = '+Pesquisa.Text+'')
        else if CampoFiltrado = 'DatVenda' then
          QueryListagem.SQL.Add(' and Vendas.DatVenda = '+Pesquisa.Text+'')
        else if CampoFiltrado = 'Nome' then
          QueryListagem.SQL.Add(' and Clientes.Nome like ''%'+Pesquisa.Text+'%''')
        else if CampoFiltrado = 'Nome_1' then
          QueryListagem.SQL.Add(' and Usuarios.Nome like ''%'+Pesquisa.Text+'%''')
        else if CampoFiltrado = 'MetodoPagamento' then
          QueryListagem.SQL.Add(' and Vendas.MetodoPagamento like ''%'+Pesquisa.Text+'%''')
        else if CampoFiltrado = 'TotVenda' then
          QueryListagem.SQL.Add(' and Vendas.TotVenda = '+Pesquisa.Text+'');
        QueryListagem.Open;
        end;

    end;
end;

procedure TFormConsultaVenda.TodosClick(Sender: TObject);
begin
  Timer.Enabled := false;
  Timer.Enabled := true;
end;

procedure TFormConsultaVenda.VendasAfterCancel(DataSet: TDataSet);
var
  i : integer;
begin
for i := 0 to PagListagem.PageCount - 1 do
  begin
    PagListagem.Pages[i].TabVisible := True; // Torna a aba visível
  end;

  //Habilita os btns
  FrameBtn.BtnEditar.Enabled := true;
  FrameBtn.BtnInserir.Enabled := true;
  FrameBtn.BtnExcluir.Enabled := true;

  //Cancela os Enabled dos Campos
  DBEdit1.Enabled := false;
  DBQuant.Enabled := false;
  PnlDescproduto.Caption := '';

end;

procedure TFormConsultaVenda.VendasAfterDelete(DataSet: TDataSet);
begin
  ConsultaVendas.Close;
  ConsultaVendas.Open;
  PnlDescproduto.Caption := '';
end;

procedure TFormConsultaVenda.VendasAfterPost(DataSet: TDataSet);
var
  i, xSeqIntensVenda : integer;
  Funcao : TNFuncao;
  xSoma : Double;
  xQuantEstoque : integer;
begin

  if (DBEdit1.Text = '') or (DBQuant.Text = '') then
    begin
      ShowMessage('Algum Campo está vazio Verifique !!');
      Abort;
    end;

    //Verifica se o Usario Permite Movimentar o Estoque do Produto
   if Funcao.ConsultaQuery('Produtos','PermiteMovEstoque','CodProduto', IntToStr(Vendas.FieldByName('CodProduto').AsInteger),QueryConsulta) <> 'N'  then
    begin

      //Verificação do Estoque
      if StrToInt(DBQuant.Text) > StrToInt(Funcao.ConsultaQuery('Produtos','QuantEstoque','CodProduto', IntToStr(Vendas.FieldByName('CodProduto').AsInteger),QueryConsulta)) then
        begin
          ShowMessage('Produto não tem estoque Sufuciente !!');
          DBQuant.SetFocus;
          Abort;
        end;
    end;

  with QueryConsulta do //Update no estoque do Produto
    begin
      xQuantEstoque := StrToInt(Funcao.ConsultaQuery('Produtos','QuantEstoque','CodProduto', IntToStr(Vendas.FieldByName('CodProduto').AsInteger),QueryConsulta)) - Vendas.FieldByName('Quant').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add(' Update Produtos set QuantEstoque ='+IntToStr(xQuantEstoque)+' where CodProduto = '+ IntToStr(Vendas.FieldByName('CodProduto').AsInteger));
      ExecSQL;
    end;

    xSeqIntensVenda :=  GridVenda.DataSource.DataSet.FieldByName('SeqItensVenda').AsInteger;

  if vStatus = 'I' then // Caso estiver no modo de Inserir
    begin
      with QueryConsulta do //Inserção do Produto na ItensVenda
        begin
          Close;
          SQL.Clear;
          SQL.Add('insert into ItensVenda (CodVenda,CodCliente,CodProduto,Quant) values (:CodVenda,:CodCliente,:CodProduto,:Quant)');
          Parameters.ParamByName('CodVenda').Value := QueryListagem.FieldByName('CodVenda').AsInteger;
          Parameters.ParamByName('CodCliente').Value := QueryListagem.FieldByName('CodCliente').AsInteger;
          Parameters.ParamByName('CodProduto').Value := Vendas.FieldByName('CodProduto').AsInteger;
          Parameters.ParamByName('Quant').Value := Vendas.FieldByName('Quant').AsInteger;
          ExecSQL;

          Close;
          SQL.Clear;
          SQL.Add('select top(1) SeqItensVenda from ItensVenda order by SeqItensVenda desc');
          Open;

          xSeqIntensVenda :=  FieldByName('SeqItensVenda').AsInteger;
        end;
    end;

    if vStatus <> 'D' then // Condição para se for diferente de Excluir
    begin
      QueryConsulta.Close;
      QueryConsulta.SQL.Clear;
      QueryConsulta.SQL.Add('EXEC ItensVendaTotProduto :SeqItensVeda');  //Procedure no Bando para o Calculo do ValTot do Produto na ItensVenda
      QueryConsulta.Parameters.ParamByName('SeqItensVeda').Value := xSeqIntensVenda;
      QueryConsulta.ExecSQL;
    end;


  ConsultaVendas.Close;
  ConsultaVendas.Open;
  vStatus := '';

  //habilita os Btns
  FrameBtn.BtnEditar.Enabled := true;
  FrameBtn.BtnInserir.Enabled := true;
  FrameBtn.BtnExcluir.Enabled := true;

  //Cancela os Enabled dos Campos
  DBEdit1.Enabled := false;
  DBQuant.Enabled := false;
  PnlDescproduto.Caption := '';

  for i := 0 to PagListagem.PageCount - 1 do
  begin
    PagListagem.Pages[i].TabVisible := True; // Torna a aba visível
  end;

end;

procedure TFormConsultaVenda.VendasBeforeDelete(DataSet: TDataSet);
begin
  vStatus := 'D';
end;

procedure TFormConsultaVenda.VendasBeforeEdit(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to PagListagem.PageCount - 1 do
  begin
    // Esconde todas as abas, exceto a que foi passada como parâmetro
    PagListagem.Pages[i].TabVisible := PagListagem.Pages[i] = Manutencao;
  end;

  //Desabilita os Btns
  FrameBtn.BtnInserir.Enabled := false;
  FrameBtn.BtnExcluir.Enabled := false;

  //Libera os Enabled dos Campos
  DBEdit1.Enabled := true;
  DBQuant.Enabled := true;
  DBEdit1.SetFocus;

end;

procedure TFormConsultaVenda.VendasBeforeInsert(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to PagListagem.PageCount - 1 do
  begin
    // Esconde todas as abas, exceto a que foi passada como parâmetro
    PagListagem.Pages[i].TabVisible := PagListagem.Pages[i] = Manutencao;
  end;

  //Desabilita os btns
  FrameBtn.BtnInserir.Enabled := false;
  FrameBtn.BtnExcluir.Enabled := false;
  PnlDescproduto.Caption := '';

  //Libera os Enabled dos Campos
  DBEdit1.Enabled := true;
  DBQuant.Enabled := true;
  vStatus := 'I';
  DBEdit1.SetFocus;


end;

end.
