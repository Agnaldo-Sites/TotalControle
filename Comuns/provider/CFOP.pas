﻿unit CFOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  FrameToolBar, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ComCtrls, Data.Win.ADODB;

type
  TFormCFOP = class(TForm)
    PagListagem: TPageControl;
    ts1: TTabSheet;
    lblTitulo: TLabel;
    BtnSelecionar: TSpeedButton;
    Pesquisa: TEdit;
    chkTodos: TCheckBox;
    Todos: TCheckBox;
    dbgrd1: TDBGrid;
    PagManutencao: TTabSheet;
    lbl1: TLabel;
    lbl2: TLabel;
    dbtxtCodCliente: TDBText;
    Label1: TLabel;
    DBNome: TDBEdit;
    FrameBtn: TFrmFrameToolBar;
    QueryCFOP: TADOQuery;
    DSQueryCFOP: TDataSource;
    DSQueryListagem: TDataSource;
    QueryListagem: TADOQuery;
    Timer: TTimer;
    QueryListagemCodCFOP: TAutoIncField;
    QueryListagemDescCFOP: TStringField;
    QueryListagemAtivo: TStringField;
    QueryListagemAtivoCFOP: TStringField;
    QueryCFOPCodCFOP: TAutoIncField;
    QueryCFOPDescCFOP: TStringField;
    QueryCFOPAtivo: TStringField;
    DBComboBox1: TDBComboBox;
    Label2: TLabel;
    Label3: TLabel;
    procedure TimerTimer(Sender: TObject);
    procedure PesquisaChange(Sender: TObject);
    procedure TodosClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure dbgrd1TitleClick(Column: TColumn);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure QueryCFOPAfterCancel(DataSet: TDataSet);
    procedure QueryCFOPAfterPost(DataSet: TDataSet);
    procedure QueryCFOPBeforeEdit(DataSet: TDataSet);
    procedure QueryCFOPBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    CampoFiltrado : string;
    ColunaFiltrada : TColumn;
  public
    { Public declarations }
    vOnde : string;
  end;

var
  FormCFOP: TFormCFOP;

implementation

{$R *.dfm}

uses NFuncao, RelProduto, Grupo, ViewBase;

procedure TFormCFOP.BtnSelecionarClick(Sender: TObject);
begin
  if vOnde = 'RelProdutos' then //Condição para saber em qual tela as Informações vão
    begin
      FormRelProduto.pnlDescGrupo1.Caption := dbgrd1.DataSource.DataSet.FieldByName('DescCFOP').AsString;
      FormRelProduto.CodCFOP.Text := IntToStr(dbgrd1.DataSource.DataSet.FieldByName('CodCFOP').AsInteger);
      Self.close;
      exit;
    end;
end;

procedure TFormCFOP.dbgrd1CellClick(Column: TColumn);
begin
   QueryCFOP.Close;
   QueryCFOP.Parameters.ParamByName('CodCFOP').Value := dbgrd1.DataSource.DataSet.FieldByName('CodCFOP').AsInteger;
   QueryCFOP.Open;
end;

procedure TFormCFOP.dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  F : TNFuncao;
begin
   // Chama a função de zebragem de linhas
   F.AjustaCorDaGrid(dbgrd1, Rect, DataCol, Column, State)

end;

procedure TFormCFOP.dbgrd1TitleClick(Column: TColumn); //Define a Posição e o campo que vai ser filtrado
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
      Pesquisa.Width := 283;
      Pesquisa.Visible := true;
      dbgrd1.Invalidate;
end;

procedure TFormCFOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Limpa a tela no fechamendo dela
  Action := CaFree;
  Release;
  FormCFOP := nil;
end;

procedure TFormCFOP.FormShow(Sender: TObject);
begin
  PagListagem.ActivePageIndex := 0; //A tela abre sempre com a aba "Listagem"
  QueryCFOP.Close;
  QueryCFOP.Open;
end;

procedure TFormCFOP.PesquisaChange(Sender: TObject);
begin
  Timer.enabled := false;
  Timer.enabled := true;
end;

procedure TFormCFOP.QueryCFOPAfterCancel(DataSet: TDataSet);
var
  i : integer;
begin
for i := 0 to PagListagem.PageCount - 1 do
  begin
    PagListagem.Pages[i].TabVisible := True; // Torna a aba visível
  end;

  //Habilita os Btns
  FrameBtn.BtnEditar.Enabled := true;
  FrameBtn.BtnInserir.Enabled := true;
  FrameBtn.BtnExcluir.Enabled := true;

  //Desabilita os Enabled dos Campos
  DBNome.Enabled := false;
  DBComboBox1.Enabled := false;
end;

procedure TFormCFOP.QueryCFOPAfterPost(DataSet: TDataSet);
var
  i : integer;
begin
for i := 0 to PagListagem.PageCount - 1 do
  begin
    PagListagem.Pages[i].TabVisible := True; // Torna a aba visível
  end;

  //Habilita os Btns
  FrameBtn.BtnEditar.Enabled := true;
  FrameBtn.BtnInserir.Enabled := true;
  FrameBtn.BtnExcluir.Enabled := true;

  //Liberar os Enabled dos Campos
  DBNome.Enabled := false;
  DBComboBox1.Enabled := false;

  QueryListagem.Close;
  QueryListagem.Open;

end;

procedure TFormCFOP.QueryCFOPBeforeEdit(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to PagListagem.PageCount - 1 do
  begin
    // Esconde todas as abas, exceto a que foi passada como parâmetro
    PagListagem.Pages[i].TabVisible := PagListagem.Pages[i] = PagManutencao;
  end;

  //Desabilita os Btns
  FrameBtn.BtnInserir.Enabled := false;
  FrameBtn.BtnExcluir.Enabled := false;

  //Liberar os Enabled dos Campos
  DBNome.Enabled := true;
  DBComboBox1.Enabled := true;

end;

procedure TFormCFOP.QueryCFOPBeforeInsert(DataSet: TDataSet);
var
  i: integer;
begin
  for i := 0 to PagListagem.PageCount - 1 do
  begin
    // Esconde todas as abas, exceto a que foi passada como parâmetro
    PagListagem.Pages[i].TabVisible := PagListagem.Pages[i] = PagManutencao;
  end;

  //Desabilita os Btns
  FrameBtn.BtnEditar.Enabled := false;
  FrameBtn.BtnExcluir.Enabled := false;

  //Liberar os Enabled dos Campos
  DBNome.Enabled := true;
  DBComboBox1.Enabled := true;

end;

procedure TFormCFOP.SpeedButton1Click(Sender: TObject);
begin
  with QueryListagem do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Create table CFOP( CodCFOP INT IDENTITY(1,1) PRIMARY KEY,DescCFOP varchar(200),Ativo char(1) )');
      ExecSQL;
    end;
end;

procedure TFormCFOP.TimerTimer(Sender: TObject);
begin
  Timer.Enabled := false;

  if Todos.Checked then
    begin
      QueryListagem.Close;
      QueryListagem.SQL.Clear;
      QueryListagem.SQL.Add('select CFOP.*, CASE WHEN Ativo = ''S'' then ''SIM'' else ''NÂO'' END AtivoCFOP from CFOP');
      QueryListagem.Open;
    end
  else
    begin
      if (Pesquisa.Text <> '')  then
        begin
          QueryListagem.Close;
          QueryListagem.SQL.Clear;
          QueryListagem.SQL.Add('select CFOP.*, CASE WHEN Ativo = ''S'' then ''SIM'' else ''NÂO'' END AtivoCFOP from CFOP where (1=1)');

        if CampoFiltrado = 'CodCFOP' then
            QueryListagem.SQL.Add(' and CodCFOP like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'DescCFOP' then
          QueryListagem.SQL.Add(' and DescCFOP like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'AtivoCFOP' then
          QueryListagem.SQL.Add(' and Ativo like ''%'+Pesquisa.Text+'%''');

        QueryListagem.Open;
        end;

    end;
    QueryCFOP.Close;
    QueryCFOP.Open;
end;

procedure TFormCFOP.TodosClick(Sender: TObject);
begin
  Timer.enabled := false;
  Timer.enabled := true;
end;

end.
