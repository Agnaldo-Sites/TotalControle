unit Clientes;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, FrameToolBar,ComObj, ActiveX, Vcl.Buttons, Vcl.Menus,NFuncao;
type
  TFormClientes = class(TForm)
    pnl1: TPanel;
    PagListagem: TPageControl;
    ts1: TTabSheet;
    PagManutencao: TTabSheet;
    dbgrd1: TDBGrid;
    lblTitulo: TLabel;
    Pesquisa: TEdit;
    DSQueryListagem: TDataSource;
    QueryListagem: TADOQuery;
    TimerCli: TTimer;
    Todos: TCheckBox;
    QueryCliente: TADOQuery;
    DSQueryCliente: TDataSource;
    lbl1: TLabel;
    lbl2: TLabel;
    DBNomeCliente: TDBEdit;
    atncfldQueryListagemCodCliente: TAutoIncField;
    wdstrngfldQueryListagemNome: TWideStringField;
    wdstrngfldQueryListagemEmail: TWideStringField;
    wdstrngfldQueryListagemTelefone: TWideStringField;
    wdstrngfldQueryListagemEndereco: TWideStringField;
    wdstrngfldQueryListagemCidade: TWideStringField;
    wdstrngfldQueryListagemEstado: TWideStringField;
    wdstrngfldQueryListagemCEP: TWideStringField;
    dtmfldQueryListagemDataCadastro: TDateTimeField;
    atncfldQueryClienteCodCliente: TAutoIncField;
    wdstrngfldQueryClienteNome: TWideStringField;
    wdstrngfldQueryClienteEmail: TWideStringField;
    wdstrngfldQueryClienteTelefone: TWideStringField;
    wdstrngfldQueryClienteEndereco: TWideStringField;
    wdstrngfldQueryClienteCidade: TWideStringField;
    wdstrngfldQueryClienteEstado: TWideStringField;
    wdstrngfldQueryClienteCEP: TWideStringField;
    dtmfldQueryClienteDataCadastro: TDateTimeField;
    lbl3: TLabel;
    CodCliente: TDBText;
    DBEmail: TDBEdit;
    DBTelefone: TDBEdit;
    lbl4: TLabel;
    lbl6: TLabel;
    Label1: TLabel;
    DBCep: TDBEdit;
    DBEndereco: TDBEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    DBCidade: TDBEdit;
    lbl81: TLabel;
    lbl82: TLabel;
    FrameBtns: TFrmFrameToolBar;
    PagClientesExcel: TTabSheet;
    pnl2: TPanel;
    edt1: TEdit;
    Titulo1: TLabel;
    QueryExcel: TADOQuery;
    atncfldQueryClienteCodCliente1: TAutoIncField;
    wdstrngfld: TWideStringField;
    wdstrngfld1: TWideStringField;
    wdstrngfld2: TWideStringField;
    dtfldQueryClienteDataNascimento1: TDateField;
    wdstrngfld3: TWideStringField;
    wdstrngfld4: TWideStringField;
    wdstrngfld5: TWideStringField;
    wdstrngfld6: TWideStringField;
    dtmfldQueryClienteDataCadastro1: TDateTimeField;
    btnSBAparencia: TSpeedButton;
    GridExcel: TStringGrid;
    PopMenu1: TPopupMenu;
    DeletaLinha: TMenuItem;
    pnl3: TPanel;
    btn1: TSpeedButton;
    pnl31: TPanel;
    btn11: TSpeedButton;
    lbl83: TLabel;
    BtnSelecionar: TSpeedButton;
    DBUF: TDBEdit;
    procedure TimerCliTimer(Sender: TObject);
    procedure dbgrd1TitleClick(Column: TColumn);
    procedure TodosClick(Sender: TObject);
    procedure PesquisaChange(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryClienteBeforeEdit(DataSet: TDataSet);
    procedure btnSBAparenciaClick(Sender: TObject);
    procedure DeletaLinhaClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure QueryClienteBeforeInsert(DataSet: TDataSet);
    procedure QueryClienteAfterPost(DataSet: TDataSet);
    procedure QueryClienteAfterCancel(DataSet: TDataSet);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure DBCepChange(Sender: TObject);
  private
    { Private declarations }
    CampoFiltrado : string;
    ColunaFiltrada: TColumn;
  public
    { Public declarations }
    vOnde : string;
  end;
var
  FormClientes: TFormClientes;
implementation


uses
  ViewBase, Vendas, ConsultaVenda;
{$R *.dfm}


procedure TFormClientes.btn11Click(Sender: TObject);
var
  i: integer;
  NomeTab : string;
  F : TNFuncao;
begin

  F.LimpaGrid(GridExcel); // Função na Unit NFuncao Que limpa a Grid, é chamada mais de uma vez neste FORM
  edt1.Text := '';

  for i := 0 to PagListagem.PageCount - 1 do
  begin
    PagListagem.Pages[i].TabVisible := True; // Torna a aba visível
  end;

  ShowMessage('Dados Limpos com Sucesso !!');

end;
procedure TFormClientes.btn1Click(Sender: TObject);
var
  Row, Col: Integer;
  Valores: string;
  F :TNFuncao;
begin
    Row := 1;
    while Row < GridExcel.RowCount do  //Loop para realizar a inclusão de cada linha da Grid
    begin

      Valores := '';
      for Col := 1 to GridExcel.ColCount - 1 do
      begin
        if Col > 1 then
          Valores := Valores + ', ';
        Valores := Valores + QuotedStr(GridExcel.Cells[Col, Row]); //Coloca os valores do insert em uma Variavel =  "Valores"
      end;

      QueryExcel.SQL.Text := 'insert into Clientes (Nome,Email,Telefone,Endereco,Cidade,Estado,CEP,DataCadastro) ' +
                           'VALUES (' + Valores + ','+DateToStr(Now)+')';
      QueryExcel.ExecSQL;
      Inc(Row);
    end;

    F.LimpaGrid(GridExcel); // Função na Unit NFuncao Que limpa a Grid, é chamada mais de uma vez neste FORM
    ShowMessage('Inclusão Realizada Com Sucesso !!');
end;
procedure TFormClientes.btnSBAparenciaClick(Sender: TObject);
var
  OpenDialog: TOpenDialog;
  ExcelApp, Workbook, Worksheet: OleVariant;
  Row: Integer;
  FilePath,Cellstring: string;
  CellValue: Integer;
  i: integer;
  ListaCodClientes: TStringList;
  CodCliente : string;
  Funcao : TNFuncao;

  QuntLinha,QuantColuna,Col: Integer;
begin
    for i := 0 to PagListagem.PageCount - 1 do
      begin
        PagListagem.Pages[i].TabVisible := PagListagem.Pages[i] = PagClientesExcel; //Deixa apenas a Aba Excel Aperta
      end;

    OpenDialog := TOpenDialog.Create(nil); //Cria o Componente que vai carregar o arquivo Excel
    ListaCodClientes := TStringList.Create;
try
    OpenDialog.Filter := 'Excel Files|*.xls;*.xlsx'; //Apenas se for esses tipos de arquivo
    if OpenDialog.Execute then
    begin
      FilePath := OpenDialog.FileName;

      // Mostra o nome do arquivo no TEdit
      edt1.Text := ExtractFileName(FilePath);

      // Cria a instância do Excel
      ExcelApp := CreateOleObject('Excel.Application');
      try
        ExcelApp.Visible := False;

        // Abre o arquivo Excel
        Workbook := ExcelApp.Workbooks.Open(FilePath);

        Worksheet := Workbook.Worksheets[1];
        QuntLinha := Worksheet.UsedRange.Rows.Count;
        QuantColuna := Worksheet.UsedRange.Columns.Count;

        // Configurar o número de linhas e colunas no StringGrid
        GridExcel.RowCount := QuntLinha;
        GridExcel.ColCount := QuantColuna;

        // Loop para preencher a grid com os dados da planilha
        for Row := 1 to QuntLinha do
        begin
          for Col := 1 to QuantColuna do
          begin
            // Ler os dados da célula e colocar na grid
            GridExcel.Cells[Col - 1, Row - 1] := VarToStr(Worksheet.Cells[Row, Col].Value);
          end;
        end;
        Funcao.AjustaTamanhoGrid(GridExcel);
          finally
            // Fecha o Workbook e o Excel
            Workbook.Close(False);
            ExcelApp.Quit;
            ExcelApp := Unassigned;
      end;
    end;
  finally
    OpenDialog.Free;
  end;
end;
procedure TFormClientes.BtnSelecionarClick(Sender: TObject);
begin
  if vOnde = 'Vendas' then //Condição para saber em qual tela as Informações vão
    begin
      FormVendas.EditCliente.text := dbgrd1.DataSource.DataSet.FieldByName('Nome').AsString;
      FormVendas.xCodCliente := dbgrd1.DataSource.DataSet.FieldByName('CodCliente').AsInteger;
      Self.close;
      exit;
    end;
end;

procedure TFormClientes.DateEdit1Change(Sender: TObject);
begin
    TimerCli.Enabled  := false;
    TimerCli.Enabled  := True;
end;
procedure TFormClientes.DBCepChange(Sender: TObject);
var
  Texto: string;
begin
  // Remover qualquer caractere que não seja número
  Texto := DBCep.Text;
  Texto := StringReplace(Texto, '-', '', [rfReplaceAll]);

  // Formatar para o padrão 12345-123
  if Length(Texto) > 5 then
    Texto := Copy(Texto, 1, 5) + '-' + Copy(Texto, 6, Length(Texto) - 5);

  // Atualiza o texto do Edit sem mover o cursor
  DBCep.OnChange := nil;
  DBCep.Text := Texto;
  DBCep.SelStart := Length(DBCep.Text);
  DBCep.OnChange := DBCepChange;

end;

procedure TFormClientes.dbgrd1CellClick(Column: TColumn);
begin
  QueryCliente.Close;
  QueryCliente.Parameters.ParamByName('CodCliente').Value := dbgrd1.DataSource.DataSet.FieldByName('CodCliente').AsInteger;
  QueryCliente.Open;
end;
procedure TFormClientes.dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Funcao : TNFuncao;
begin
   // Chama a função de zebragem de linhas
   Funcao .AjustaCorDaGrid(dbgrd1, Rect, DataCol, Column, State);
end;
procedure TFormClientes.dbgrd1TitleClick(Column: TColumn); //Define a Posição e o campo que vai ser filtrado
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
  Pesquisa.Width := 453;
  dbgrd1.Invalidate;

end;
procedure TFormClientes.DeletaLinhaClick(Sender: TObject);
var
  LinhaSelecionado,AjudaLinhaGrid : integer;
begin
  // Verifica se há mais de uma linha (para evitar deletar todas as linhas)
  if GridExcel.RowCount > 1 then
  begin

    LinhaSelecionado := GridExcel.Row; // Obtém a linha selecionada

    // Desloca todas as linhas abaixo da linha selecionada para cima
    for AjudaLinhaGrid := 0 to GridExcel.ColCount - 1 do
    begin
      for LinhaSelecionado := GridExcel.Row to GridExcel.RowCount - 2 do
      begin
        GridExcel.Cells[AjudaLinhaGrid, LinhaSelecionado] := GridExcel.Cells[AjudaLinhaGrid, LinhaSelecionado + 1];
      end;
    end;

    // Remove a última linha, que agora está duplicada
    GridExcel.RowCount := GridExcel.RowCount - 1;
  end
  else
    ShowMessage('Não é possível excluir todas as linhas.');
end;
procedure TFormClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Limpa a tela no fechamendo dela
  Action := CaFree;
  Release;
  FormClientes := nil;
end;

procedure TFormClientes.FormShow(Sender: TObject);
begin
    PagListagem.ActivePageIndex := 0;  //A tela abre sempre com a aba "Listagem"
    QueryCliente.Close;
    QueryCliente.Open;
end;

procedure TFormClientes.PesquisaChange(Sender: TObject);
begin
    TimerCli.Enabled  := false;
   TimerCli.Enabled  := True;
end;
procedure TFormClientes.QueryClienteAfterCancel(DataSet: TDataSet);
var
  i: integer;
begin
    for i := 0 to PagListagem.PageCount - 1 do
  begin
    PagListagem.Pages[i].TabVisible := True; // Torna a aba visível
  end;

  //Habilita os btns
  FrameBtns.BtnInserir.Enabled := true;
  FrameBtns.BtnExcluir.Enabled := true;
  FrameBtns.BtnEditar.Enabled := true;

  //Desabilita os Enabled dos Campos
  DBNomeCliente.Enabled := false;
  DBEmail.Enabled := false;
  DBTelefone.Enabled := false;
  DBCep.Enabled := false;
  DBEndereco.Enabled := false;
  DBCidade.Enabled := false;
  DBUF.Enabled := false;
end;

procedure TFormClientes.QueryClienteAfterPost(DataSet: TDataSet);
var
  i: integer;
begin

  if (DBNomeCliente.Text = '') or (DBEmail.Text = '') or (DBTelefone.Text = '') then
    begin
      ShowMessage('Algum Campo obrigario esta Vazio Verifique !!');
      Exit;
    end;


  for i := 0 to PagListagem.PageCount - 1 do
  begin
    PagListagem.Pages[i].TabVisible := True; // Torna a aba visível
  end;

  //Habilitando os btns
  FrameBtns.BtnInserir.Enabled := true;
  FrameBtns.BtnExcluir.Enabled := true;
  FrameBtns.BtnEditar.Enabled := true;

  //Desabilitando os Enabled dos Campos
  DBNomeCliente.Enabled := false;
  DBEmail.Enabled := false;
  DBTelefone.Enabled := false;
  DBCep.Enabled := false;
  DBEndereco.Enabled := false;
  DBCidade.Enabled := false;
  DBUF.Enabled := false;

  QueryListagem.Close;
  QueryListagem.Open;
end;
procedure TFormClientes.QueryClienteBeforeEdit(DataSet: TDataSet);
var
  i : integer;
begin

for i := 0 to PagListagem.PageCount - 1 do
  begin
    // Esconde todas as abas, exceto a que foi passada como parâmetro
    PagListagem.Pages[i].TabVisible := PagListagem.Pages[i] = PagManutencao;
  end;

  //Bloqueado os btns
  FrameBtns.BtnInserir.Enabled := false;
  FrameBtns.BtnExcluir.Enabled := false;

  //Liberar os Enabled dos Campos
  DBNomeCliente.Enabled := true;
  DBEmail.Enabled := true;
  DBTelefone.Enabled := true;
  DBCep.Enabled := true;
  DBEndereco.Enabled := true;
  DBCidade.Enabled := true;
  DBUF.Enabled := true;
end;

procedure TFormClientes.QueryClienteBeforeInsert(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to PagListagem.PageCount - 1 do
  begin
    // Esconde todas as abas, exceto a que foi passada como parâmetro
    PagListagem.Pages[i].TabVisible := PagListagem.Pages[i] = PagManutencao;
  end;

  //Bloqueado os btns
  FrameBtns.BtnEditar.Enabled := false;
  FrameBtns.BtnExcluir.Enabled := false;

  //Liberar os Enabled dos Campos
  DBNomeCliente.Enabled := true;
  DBEmail.Enabled := true;
  DBTelefone.Enabled := true;
  DBCep.Enabled := true;
  DBEndereco.Enabled := true;
  DBCidade.Enabled := true;
  DBUF.Enabled := true;
end;
procedure TFormClientes.TimerCliTimer(Sender: TObject);
begin
  TimerCli.Enabled := false;
  if Todos.Checked then
    begin
      QueryListagem.Close;
      QueryListagem.SQL.Clear;
      QueryListagem.SQL.Add('select * from Clientes');
      QueryListagem.Open;
    end
  else
    begin
      if (Pesquisa.Text <> '')   then
        begin
          QueryListagem.Close;
          QueryListagem.SQL.Clear;
          QueryListagem.SQL.Add('select * from Clientes where (1=1)');
        if CampoFiltrado = 'Nome' then
            QueryListagem.SQL.Add(' and Nome like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Email' then
          QueryListagem.SQL.Add(' and Email like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Telefone' then
          QueryListagem.SQL.Add(' and Telefone like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Cidade' then
          QueryListagem.SQL.Add(' and Cidade like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Estado' then
          QueryListagem.SQL.Add(' and Estado like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'CEP' then
          QueryListagem.SQL.Add(' and CEP like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Endereco' then
          QueryListagem.SQL.Add(' and Endereco like ''%'+Pesquisa.Text+'%''');

        QueryListagem.Open;
        end;

    end;
    QueryCliente.Close;
    QueryCliente.Open;
end;
procedure TFormClientes.TodosClick(Sender: TObject);
begin
  TimerCli.Enabled  := false;
  TimerCli.Enabled  := True;
end;
end.
