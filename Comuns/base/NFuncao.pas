unit NFuncao;

interface

uses
   ADODB, DB, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, FrameToolBar,ComObj, ActiveX, Vcl.Buttons, Vcl.Menus;

type
  TNFuncao = class
    public
      Function ConsultaQuery(NomeTabela,ValorDesejado, CampoChave,ValorChave: string; ADOQuery: TADOQuery): string;
      procedure LimpaGrid(Grid : TStringGrid);
      procedure AjustaCorDaGrid(Grid: TDBGrid; const Rect: TRect; DataCol: Integer;Column: TColumn; State: TGridDrawState);
      procedure AjustaTamanhoGrid(Grid : TStringGrid);
      procedure AbreTelaLogin;
  end;

implementation

{ TNFuncao }

uses Usuarios, LoginUsuarios, ViewBase;

procedure TNFuncao.LimpaGrid(Grid: TStringGrid);
begin
    // Limpa o conteúdo do grid
  Grid.RowCount := 2;
  Grid.ColCount := 2;

  // Limpa todas as células do StringGrid
  Grid.Cols[0].Clear;
  Grid.Cols[1].Clear;

  // Restaura as configurações padrão
  Grid.FixedCols := 1;
  Grid.FixedRows := 1;

  // Habilita a edição das células
  Grid.Options := Grid.Options + [goEditing];

  // Redefinindo as cores e configurações do grid
  Grid.Color := clWindow;

  Grid.DefaultRowHeight := 24;

  // Forçar o redesenho do grid
  Grid.Invalidate;
end;

procedure TNFuncao.AbreTelaLogin;
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

procedure TNFuncao.AjustaCorDaGrid(Grid: TDBGrid; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  // Define as cores de zebragem nas linhas
  if (Grid.DataSource.DataSet.RecNo mod 2 = 0) then
    Grid.Canvas.Brush.Color := clWhite // Linhas pares brancas
  else
    Grid.Canvas.Brush.Color := $00FFFFCC; // Linhas ímpares amarelo claro
  Grid.Canvas.Font.Size := 9;
  // Define a cor da fonte
  Grid.Canvas.Font.Color := clBlack; // Cor da fonte padrão (preto)
  // Se a linha estiver selecionada, muda a cor da linha e da fonte
  if (gdSelected in State) then
  begin
    Grid.Canvas.Brush.Color := clActiveCaption; // Cor para a linha selecionada
    Grid.Canvas.Font.Color := clWhite; // Cor da fonte para a linha selecionada
  end;
  // Desenha a célula com as cores definidas
  Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TNFuncao.AjustaTamanhoGrid(Grid: TStringGrid);
var
  Col, Row, MaxWidth, TextWidth: Integer;
  CellText: string;
begin
  // Itera sobre as colunas do grid
  for Col := 0 to Grid.ColCount - 1 do
  begin
    MaxWidth := 0;
    // Itera sobre as linhas do grid
    for Row := 0 to Grid.RowCount - 1 do
    begin
      CellText := Grid.Cells[Col, Row];
      TextWidth := Grid.Canvas.TextWidth(CellText); // Usa o Canvas do Grid
      if TextWidth > MaxWidth then
        MaxWidth := TextWidth; // Atualiza a largura máxima se necessário
    end;
    Grid.ColWidths[Col] := MaxWidth + 10; // Ajusta a largura da coluna
  end;
end;

function TNFuncao.ConsultaQuery(NomeTabela,ValorDesejado ,CampoChave,ValorChave: string; ADOQuery: TADOQuery): string;
var
  SQLQuery: string;
  xCodigo : integer;
begin
  Result := '';

  if TryStrToInt(ValorChave, xCodigo) then
    SQLQuery := 'SELECT '+ValorDesejado+' FROM ' + NomeTabela + ' WHERE ' + CampoChave + ' = '+ValorChave
  else
     SQLQuery := 'SELECT '+ValorDesejado+' FROM ' + NomeTabela + ' WHERE ' + CampoChave + ' = '''+ValorChave+''' ';

  try
    if ADOQuery.Active then
      ADOQuery.Close;

    ADOQuery.SQL.Clear;
    ADOQuery.SQL.Add(SQLQuery);
    ADOQuery.Open;

    if ADOQuery.IsEmpty then
    begin
      Result := '';
    end
    else Result := ADOQuery.FieldByName(ValorDesejado).AsString;
  except
    on E: Exception do
    begin
      //ShowMessage('Erro ao realizar consulta: ' + E.Message);
      Result := '';  // Retorna vazio em caso de erro
    end;
  end;
end;

end.
