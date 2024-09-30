﻿unit Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, FrameToolBar, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Data.Win.ADODB, JvExMask, JvToolEdit, JvDBControls, Vcl.Buttons;

type
  TFormUsuarios = class(TForm)
    pnl1: TPanel;
    PagListagem: TPageControl;
    ts1: TTabSheet;
    lblTitulo: TLabel;
    dbgrd1: TDBGrid;
    Pesquisa: TEdit;
    chkTodos: TCheckBox;
    PagManutencao: TTabSheet;
    lbl1: TLabel;
    lbl2: TLabel;
    dbtxtCodCliente: TDBText;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl3: TLabel;
    lbl8: TLabel;
    lbl82: TLabel;
    DBNome: TDBEdit;
    DBEmail: TDBEdit;
    DBTelefone: TDBEdit;
    FrameBtn: TFrmFrameToolBar;
    Todos: TCheckBox;
    Timer: TTimer;
    DSQueryUsuarios: TDataSource;
    QueryListagem: TADOQuery;
    DSQueryListagem: TDataSource;
    DateEdit1: TJvDateEdit;
    QueryUsuarios: TADOQuery;
    DBComboBox: TDBComboBox;
    DBDataCricao: TJvDBDateEdit;
    DBDataNacimento: TJvDBDateEdit;
    lbl32: TLabel;
    QueryOperacoes: TADOQuery;
    intgrfldQueryListagemCodUsuario: TIntegerField;
    wdstrngfldQueryListagemNome: TWideStringField;
    wdstrngfldQueryListagemEmail: TWideStringField;
    wdstrngfldQueryListagemSenha: TWideStringField;
    wdstrngfldQueryListagemTelefone: TWideStringField;
    dtfldQueryListagemDataNascimento: TDateField;
    blnfldQueryListagemAtivo: TBooleanField;
    dtmfldQueryListagemDataCriacao: TDateTimeField;
    dtmfldQueryListagemUltimoLogin: TDateTimeField;
    strngfldQueryListagemEstiloDeSistema: TStringField;
    strngfldQueryListagemUserAtivo: TStringField;
    intgrfldQueryUsuariosCodUsuario: TIntegerField;
    wdstrngfldQueryUsuariosNome: TWideStringField;
    wdstrngfldQueryUsuariosEmail: TWideStringField;
    wdstrngfldQueryUsuariosSenha: TWideStringField;
    wdstrngfldQueryUsuariosTelefone: TWideStringField;
    dtfldQueryUsuariosDataNascimento: TDateField;
    blnfldQueryUsuariosAtivo: TBooleanField;
    dtmfldQueryUsuariosDataCriacao: TDateTimeField;
    dtmfldQueryUsuariosUltimoLogin: TDateTimeField;
    strngfldQueryUsuariosEstiloDeSistema: TStringField;
    lbl31: TLabel;
    EditSenha: TDBEdit;
    BtnAlteraSenha: TBitBtn;
    PanelSenha: TPanel;
    edtNovaSenha: TEdit;
    lbl5: TLabel;
    btn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTimer(Sender: TObject);
    procedure dbgrd1TitleClick(Column: TColumn);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PesquisaChange(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure TodosClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure QueryUsuariosAfterPost(DataSet: TDataSet);
    procedure QueryUsuariosAfterInsert(DataSet: TDataSet);
    procedure QueryUsuariosBeforeEdit(DataSet: TDataSet);
    procedure QueryUsuariosBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure BtnAlteraSenhaClick(Sender: TObject);
    procedure QueryUsuariosAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
    StatusInserir : string;
  public
    { Public declarations }
    CampoFiltrado : string;
    ColunaFiltrada: TColumn;
     procedure AjustaCorDaGrid(Grid: TDBGrid; const Rect: TRect; DataCol: Integer; State: TGridDrawState);
  end;

var
  FormUsuarios: TFormUsuarios;

implementation

{$R *.dfm}

uses Clientes, ViewBase, Criptografia;

procedure TFormUsuarios.AjustaCorDaGrid(Grid: TDBGrid; const Rect: TRect; DataCol: Integer; State: TGridDrawState);
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

procedure TFormUsuarios.btn1Click(Sender: TObject);
var
  Criptografia : TCriptografia;
  Senha : string;
begin
  with QueryOperacoes do
    begin
        Senha := Criptografia.GenerateHash(edtNovaSenha.Text);
        close;
        SQL.Clear;
        SQL.Add('UPDATE Usuarios set Senha = '''+Senha+''' where CodUsuario ='+ IntToStr(QueryUsuarios.FieldByName('CodUsuario').AsInteger));
    end;
    ShowMessage('Senha Alterada Com Sucesso !!');
    QueryUsuarios.FieldByName('Senha').AsString := Senha;
    PanelSenha.Visible := false;
end;

procedure TFormUsuarios.BtnAlteraSenhaClick(Sender: TObject);
begin
  PanelSenha.Visible := true;
  edtNovaSenha.SetFocus;
end;

procedure TFormUsuarios.DateEdit1Change(Sender: TObject);
begin
    Timer.Enabled  := false;
    Timer.Enabled  := True;
end;

procedure TFormUsuarios.dbgrd1CellClick(Column: TColumn);
begin
  QueryUsuarios.Close;
  QueryUsuarios.Parameters.ParamByName('CodUsuario').Value := dbgrd1.DataSource.DataSet.FieldByName('CodUsuario').AsInteger;
  QueryUsuarios.Open;
end;

procedure TFormUsuarios.dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  AjustaCorDaGrid(dbgrd1, Rect, DataCol, State);
end;

procedure TFormUsuarios.dbgrd1TitleClick(Column: TColumn);
begin
  ColunaFiltrada := Column;
  if Column.Field.FieldName <> CampoFiltrado then
    begin
      CampoFiltrado := Column.Field.FieldName;
    end;


  if Assigned(ColunaFiltrada) then
    ColunaFiltrada.Title.Caption := StringReplace(ColunaFiltrada.Title.Caption, ' ↑', '', [rfReplaceAll]);

  if (CampoFiltrado = 'DataNascimento') or (CampoFiltrado = 'DataCriacao') then
    begin
      ColunaFiltrada := Column;
      ColunaFiltrada.Title.Caption := ColunaFiltrada.Title.Caption;
      lblTitulo.Caption := 'Pesquisar: ' +Column.Title.Caption;
      lblTitulo.Width := lblTitulo.Canvas.TextWidth(lblTitulo.Caption);
      DateEdit1.Left := lblTitulo.Left + lblTitulo.Width + 10;
      DateEdit1.Width := 122;
      Pesquisa.Visible := false;
      DateEdit1.Visible := true;
      dbgrd1.Invalidate;
    end
  else
    begin
      ColunaFiltrada := Column;
      ColunaFiltrada.Title.Caption := ColunaFiltrada.Title.Caption;
      lblTitulo.Caption := 'Pesquisar: ' +Column.Title.Caption;
      lblTitulo.Width := lblTitulo.Canvas.TextWidth(lblTitulo.Caption);
      Pesquisa.Left := lblTitulo.Left + lblTitulo.Width + 10;
      Pesquisa.Width := 469;
      DateEdit1.Visible := false;
      Pesquisa.Visible := true;
      dbgrd1.Invalidate;
    end;
end;

procedure TFormUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  Release;
  FormUsuarios := nil;
end;

procedure TFormUsuarios.FormShow(Sender: TObject);
begin
    PagListagem.ActivePageIndex := 0;
end;


procedure TFormUsuarios.PesquisaChange(Sender: TObject);
begin
  Timer.Enabled  := false;
  Timer.Enabled  := True;
end;

procedure TFormUsuarios.QueryUsuariosAfterCancel(DataSet: TDataSet);
var
  i : integer;
begin
for i := 0 to PagListagem.PageCount - 1 do
  begin
    PagListagem.Pages[i].TabVisible := True; // Torna a aba visível
  end;

  FrameBtn.BtnEditar.Enabled := true;
  FrameBtn.BtnInserir.Enabled := true;
  FrameBtn.BtnExcluir.Enabled := true;
  EditSenha.Enabled := false;
  BtnAlteraSenha.Enabled := false;

  //Liberar os Enabled dos Campos
  DBNome.Enabled := false;
  DBEmail.Enabled := false;
  DBDataNacimento.Enabled := false;
  DBTelefone.Enabled := false;
  DBComboBox.Enabled := false;
  StatusInserir := '';
end;

procedure TFormUsuarios.QueryUsuariosAfterInsert(DataSet: TDataSet);
begin
    with QueryOperacoes do
    begin
        Close;
        SQL.Clear;
        SQL.Add('select Top(1) CodUsuario from Usuarios order by CodUsuario desc');
        Open;

        QueryUsuarios.FieldByName('CodUsuario').AsInteger := FieldByName('CodUsuario').AsInteger + 1;
    end;
end;

procedure TFormUsuarios.QueryUsuariosAfterPost(DataSet: TDataSet);
var
  Senha : string;
  CodUsuario,i : Integer;
  Criptografia : TCriptografia;
begin
  if StatusInserir = 'S' then
    begin

      with QueryOperacoes do
        begin
            Close;
            SQL.Clear;
            SQL.Add('Select Top(1) CodUsuario,Senha from Usuarios order by CodUsuario Desc');
            Open;

            Senha := FieldByName('Senha').AsString;
            CodUsuario := FieldByName('CodUsuario').AsInteger;

            close;
            SQL.Clear;
            SQL.Add('UPDATE Usuarios set Senha = '''+Criptografia.GenerateHash(Senha)+''', EstiloDeSistema = ''Amethyst Kamri'' where CodUsuario = '+IntToStr(CodUsuario));
            ExecSQL;
        end;
    end;

  for i := 0 to PagListagem.PageCount - 1 do
  begin
    PagListagem.Pages[i].TabVisible := True; // Torna a aba visível
  end;

  FrameBtn.BtnEditar.Enabled := true;
  FrameBtn.BtnInserir.Enabled := true;
  FrameBtn.BtnExcluir.Enabled := true;
  EditSenha.Enabled := false;
  BtnAlteraSenha.Enabled := false;

  //Liberar os Enabled dos Campos
  DBNome.Enabled := false;
  DBEmail.Enabled := false;
  DBDataNacimento.Enabled := false;
  DBTelefone.Enabled := false;
  DBComboBox.Enabled := false;
  StatusInserir := '';


end;

procedure TFormUsuarios.QueryUsuariosBeforeEdit(DataSet: TDataSet);
var
  i : integer;
begin

  for i := 0 to PagListagem.PageCount - 1 do
  begin
    // Esconde todas as abas, exceto a que foi passada como parâmetro
    PagListagem.Pages[i].TabVisible := PagListagem.Pages[i] = PagManutencao;
  end;

  FrameBtn.BtnInserir.Enabled := false;
  FrameBtn.BtnExcluir.Enabled := false;
  BtnAlteraSenha.Enabled := true;

  //Liberar os Enabled dos Campos
  DBNome.Enabled := true;
  DBEmail.Enabled := true;
  DBDataNacimento.Enabled := true;
  DBTelefone.Enabled := true;
  DBComboBox.Enabled := true;

end;

procedure TFormUsuarios.QueryUsuariosBeforeInsert(DataSet: TDataSet);
var
  i: integer;
begin
  StatusInserir := 'S';
  for i := 0 to PagListagem.PageCount - 1 do
  begin
    // Esconde todas as abas, exceto a que foi passada como parâmetro
    PagListagem.Pages[i].TabVisible := PagListagem.Pages[i] = PagManutencao;
  end;

  FrameBtn.BtnEditar.Enabled := false;
  FrameBtn.BtnExcluir.Enabled := false;

  //Liberar os Enabled dos Campos
  DBNome.Enabled := true;
  DBEmail.Enabled := true;
  EditSenha.Enabled := true;
  DBDataNacimento.Enabled := true;
  DBTelefone.Enabled := true;
  DBComboBox.Enabled := true;


end;

procedure TFormUsuarios.TimerTimer(Sender: TObject);
begin
   Timer.Enabled := false;

  if Todos.Checked then
    begin
      QueryListagem.Close;
      QueryListagem.SQL.Clear;
      QueryListagem.SQL.Add('select *,case when Ativo = 1 then ''SIM'' else ''NÂO'' end UserAtivo  from Usuarios');
      QueryListagem.Open;
    end
  else
    begin
      if (Pesquisa.Text <> '') or (DateEdit1.Text <>  ' / / ')   then
        begin
          QueryListagem.Close;
          QueryListagem.SQL.Clear;
          QueryListagem.SQL.Add('select *,case when Ativo = 1 then ''SIM'' else ''NÂO'' end UserAtivo  from Usuarios where (1=1)');

        if CampoFiltrado = 'Nome' then
            QueryListagem.SQL.Add(' and Nome like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Email' then
          QueryListagem.SQL.Add(' and Email like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'Telefone' then
          QueryListagem.SQL.Add(' and Telefone like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'DataNascimento' then
          begin
            QueryListagem.SQL.Add(' and DataNascimento >= :DataEdit1');
            QueryListagem.Parameters.ParamByName('DataEdit1').Value := DateEdit1.Date;
          end

        else if CampoFiltrado = 'Ativo' then
          QueryListagem.SQL.Add(' and Ativo like ''%'+Pesquisa.Text+'%''')

        else if CampoFiltrado = 'DataCriacao' then
          QueryListagem.SQL.Add(' and DataCriacao >= '+ DateToStr(DateEdit1.Date) +'');

        QueryListagem.Open;
        end;


    end;

end;

procedure TFormUsuarios.TodosClick(Sender: TObject);
begin
  Timer.Enabled  := false;
  Timer.Enabled  := True;
end;

end.
