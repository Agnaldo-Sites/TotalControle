unit Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.ExtCtrls, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, FrameToolBar;

type
  TFormFornecedor = class(TForm)
    PagListagem: TPageControl;
    Listagem: TTabSheet;
    PagManutencao: TTabSheet;
    qryQueryOperacoes: TADOQuery;
    Timer: TTimer;
    QueryFornecedor: TADOQuery;
    DSQueryFornecedor: TDataSource;
    QueryListagem: TADOQuery;
    DSQueryListagem: TDataSource;
    atncfldQueryListagemCodFor: TAutoIncField;
    strngfldQueryListagemNome: TStringField;
    strngfldQueryListagemCNPJ: TStringField;
    strngfldQueryListagemTelefone: TStringField;
    strngfldQueryListagemEmail: TStringField;
    strngfldQueryListagemEndereco: TStringField;
    strngfldQueryListagemCidade: TStringField;
    strngfldQueryListagemEstado: TStringField;
    strngfldQueryListagemCEP: TStringField;
    dtfldQueryListagemDataCadastro: TDateField;
    strngfldQueryListagemStatus: TStringField;
    strngfldQueryListagemStatusFor: TStringField;
    dbgrd1: TDBGrid;
    Pesquisa: TEdit;
    Todos: TCheckBox;
    lblTitulo: TLabel;
    atncfldQueryFornecedorCodFor: TAutoIncField;
    strngfldQueryFornecedorNome: TStringField;
    strngfldQueryFornecedorCNPJ: TStringField;
    strngfldQueryFornecedorTelefone: TStringField;
    strngfldQueryFornecedorEmail: TStringField;
    strngfldQueryFornecedorEndereco: TStringField;
    strngfldQueryFornecedorCidade: TStringField;
    strngfldQueryFornecedorEstado: TStringField;
    strngfldQueryFornecedorCEP: TStringField;
    dtfldQueryFornecedorDataCadastro: TDateField;
    strngfldQueryFornecedorStatus: TStringField;
    frmfrmtlbr1: TFrmFrameToolBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PesquisaChange(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure dbgrd1TitleClick(Column: TColumn);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure TodosClick(Sender: TObject);
  private
    { Private declarations }
    ColunaFiltrada: TColumn;
    procedure AjustaCorDaGrid(Grid: TDBGrid; const Rect: TRect; DataCol: Integer; State: TGridDrawState);
  public
    { Public declarations }
    CampoFiltrado : string;
  end;

var
  FormFornecedor: TFormFornecedor;

implementation

uses
  ViewBase;

{$R *.dfm}

procedure TFormFornecedor.PesquisaChange(Sender: TObject);
begin
  Timer.Enabled  := false;
  Timer.Enabled  := True;
end;

procedure TFormFornecedor.AjustaCorDaGrid(Grid: TDBGrid; const Rect: TRect; DataCol: Integer; State: TGridDrawState);
begin
        // padroniza zebrado nas colunas
  if(datacol mod 2 = 0)
    then Grid.Columns[datacol].Color := clInfoBk
    else Grid.Columns[datacol].Color := clWindow;

  // padroniza dor de fundo da linha selecionada
  if gDSelected in State
    then Grid.Canvas.Brush.Color := clActiveCaption;

  // aplica
  Grid.DefaultDrawDataCell(Rect, Grid.columns[datacol].field, State);
end;

procedure TFormFornecedor.dbgrd1CellClick(Column: TColumn);
begin
  QueryFornecedor.Close;
  QueryFornecedor.Parameters.ParamByName('CodFor').Value := dbgrd1.DataSource.DataSet.FieldByName('CodFor').AsInteger;
  QueryFornecedor.Open;
end;

procedure TFormFornecedor.dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   AjustaCorDaGrid(dbgrd1, Rect, DataCol, State);
end;

procedure TFormFornecedor.dbgrd1TitleClick(Column: TColumn);
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
    Pesquisa.Width := 636;
    dbgrd1.Invalidate;
end;

procedure TFormFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  Release;
  FormFornecedor := nil
end;

procedure TFormFornecedor.FormShow(Sender: TObject);
begin
   PagListagem.ActivePageIndex := 0;
end;

procedure TFormFornecedor.TimerTimer(Sender: TObject);
begin
  Timer.Enabled := false;

  if Todos.Checked then
    begin
      QueryListagem.Close;
      QueryListagem.SQL.Clear;
      QueryListagem.SQL.Add('select *,case when Status = ''S'' then ''SIM'' else ''NÂO'' end StatusFor from Fornecedores');
      QueryListagem.Open;
    end
  else
    begin
      if (Pesquisa.Text <> '') then
        begin
          QueryListagem.Close;
          QueryListagem.SQL.Clear;
          QueryListagem.SQL.Add('select *,case when Status = ''S'' then ''SIM'' else ''NÂO'' end StatusFor from Fornecedores where (1=1)');

        if CampoFiltrado = 'Nome' then
            QueryListagem.SQL.Add(' and Nome like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'CNPJ' then
          QueryListagem.SQL.Add(' and CNPJ like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Telefone' then
          QueryListagem.SQL.Add(' and Telefone like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'CNPJ' then
          QueryListagem.SQL.Add(' and CNPJ like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Endereco' then
          QueryListagem.SQL.Add(' and Endereco like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Cidade' then
          QueryListagem.SQL.Add(' and Cidade like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Cidade' then
          QueryListagem.SQL.Add(' and Cidade like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'CEP' then
          QueryListagem.SQL.Add(' and CEP like ''%'+Pesquisa.Text+'%''');

        QueryListagem.Open;
        end;


    end;
end;

procedure TFormFornecedor.TodosClick(Sender: TObject);
begin
  Timer.Enabled  := false;
  Timer.Enabled  := True;
end;

end.
