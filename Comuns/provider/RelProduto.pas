unit RelProduto;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;
type
  TFormRelProduto = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    CodGrupo: TEdit;
    pnlDescGrupo: TPanel;
    CodCFOP: TEdit;
    lbl31: TLabel;
    pnlDescGrupo1: TPanel;
    grp1: TGroupBox;
    RadioStatus: TRadioGroup;
    btn1: TSpeedButton;
    RelProdutos: TADOQuery;
    DSRelProdutos: TDataSource;
    RadioEstoque: TRadioGroup;
    atncfldRelProdutosCodProduto: TAutoIncField;
    strngfldRelProdutosDescProduto: TStringField;
    strngfldRelProdutosCodigoBarra: TStringField;
    bcdfldRelProdutosCustoCompra: TBCDField;
    bcdfldRelProdutosCustoVenda: TBCDField;
    strngfldRelProdutosCFOP: TStringField;
    strngfldRelProdutosAtivo: TStringField;
    strngfldRelProdutosPermiteMovEstoque: TStringField;
    dtfldRelProdutosDataCadastro: TDateField;
    intgrfldRelProdutosCodGrupo: TIntegerField;
    strngfldRelProdutosDescGrupo: TStringField;
    DBGrid1: TDBGrid;
    QueryConsulta: TADOQuery;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CodGrupoExit(Sender: TObject);
    procedure CodCFOPExit(Sender: TObject);
    procedure CodGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodCFOPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FormRelProduto: TFormRelProduto;
implementation
uses
  ViewBase, NFuncao, Grupo, CFOP;
{$R *.dfm}
procedure TFormRelProduto.btn1Click(Sender: TObject);
begin
  WITH RelProdutos do
    begin
      close;
      SQL.Clear;
      SQL.Add('select Produtos.CodProduto,Produtos.DescProduto,Produtos.CodigoBarra,Produtos.CustoCompra,Produtos.CustoVenda,Produtos.CFOP,isnull(Produtos.Ativo,''N'') as Ativo,'+
      ' isnull(Produtos.PermiteMovEstoque,''N'') PermiteMovEstoque,Produtos.DataCadastro,Produtos.CodGrupo,Grupo.DescGrupo'+
      ' from Produtos'+
      ' left outer join Grupo on Produtos.CodGrupo = Grupo.CodGrupo where (1=1)');
      {if (DataIni.text <> ' / / ') and (DataFim.Text <> ' / / ') then
        begin
          SQL.Add(' and Produtos.DataCadastro between :DatIni and :DataFim');
          Parameters.ParamByName('DatIni').Value := DataIni.Date;
          Parameters.ParamByName('DataFim').Value := DataFim.Date;
        end;      }
      if CodGrupo.Text <> '' then
        SQL.Add(' and Produtos.CodGrupo = '+CodGrupo.Text);
      if CodCFOP.Text <> '' then
        SQL.Add(' and Produtos.CFOP = '+CodCFOP.Text);
      case RadioEstoque.ItemIndex of
        0:SQL.Add(' and Produtos.PermiteMovEstoque = ''S''');
        1:SQL.Add(' and Produtos.PermiteMovEstoque = ''N''');
      end;

      case RadioStatus.ItemIndex of
        0:SQL.Add(' and Produtos.Ativo = ''S''');
        1:SQL.Add(' and Produtos.Ativo = ''N''');
      end;
      Open;
    end;
end;
procedure TFormRelProduto.CodCFOPExit(Sender: TObject);
var
  Funcao : TNFuncao;
  DescCFOP : string;
begin
  if CodCFOP.Text = '' then exit;

  DescCFOP := Funcao.ConsultaQuery('CFOP','DescCFOP','CodCFOP',CodCFOP.Text,QueryConsulta);
  if DescCFOP <> '' then
    pnlDescGrupo.Caption :=  DescCFOP
  else
    begin
      ShowMessage('Erro Grupo não encontrado Verifique');
      CodCFOP.SetFocus;
      Exit;
    end;

end;

procedure TFormRelProduto.CodCFOPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    FormCFOP := TFormCFOP.Create(Self);
    try
      FormCFOP.BtnSelecionar.Visible := true;
      FormCFOP.vOnde := 'RelProdutos';
      Application.CreateForm(TFormCFOP, FormCFOP);
    finally
      FormCFOP.BtnSelecionar.Visible := false;
      FormCFOP.Free;
    end;
  end;
end;

procedure TFormRelProduto.CodGrupoExit(Sender: TObject);
var
  Funcao : TNFuncao;
  DescGrupo: string;
begin
  if CodGrupo.Text = '' then exit;

  DescGrupo := Funcao.ConsultaQuery('Grupo','DescGrupo','CodGrupo',CodGrupo.Text,QueryConsulta);
  if DescGrupo <> '' then
    pnlDescGrupo.Caption :=  DescGrupo
  else
    begin
      ShowMessage('Erro Grupo não encontrado Verifique');
      CodGrupo.SetFocus;
      Exit;
    end;
end;

procedure TFormRelProduto.CodGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    FormGrupo := TFormGrupo.Create(Self);
    try
      FormGrupo.BtnSelecionar.Visible := true;
      FormGrupo.vOnde := 'RelProdutos';
      Application.CreateForm(TFormGrupo, FormGrupo);
    finally
      FormGrupo.BtnSelecionar.Visible := false;
      FormGrupo.Free;
    end;
  end;
end;

procedure TFormRelProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  Release;
  RelProdutos := nil;
end;

end.

