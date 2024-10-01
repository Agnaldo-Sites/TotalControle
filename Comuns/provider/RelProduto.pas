unit RelProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, QuickRpt, QRCtrls, Vcl.Buttons, QRPrntr, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TFormRelProduto = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    DataIni: TJvDateEdit;
    lbl2: TLabel;
    DataFim: TJvDateEdit;
    lbl3: TLabel;
    CodGrupo: TEdit;
    pnlDescGrupo: TPanel;
    CodCFOP: TEdit;
    lbl31: TLabel;
    pnlDescGrupo1: TPanel;
    grp1: TGroupBox;
    RadioStatus: TRadioGroup;
    btn1: TSpeedButton;
    QuickReport: TQuickRep;
    qrbndPageHeaderBand1: TQRBand;
    qrlbl1: TQRLabel;
    qrbnd1: TQRBand;
    qrbnd2: TQRBand;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    qrdbtxtCodGrupo: TQRDBText;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl41: TLabel;
    lbl51: TLabel;
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
    qrdbtxtCodGrupo1: TQRDBText;
    qrdbtxtDescProduto: TQRDBText;
    qrdbtxtCodGrupo2: TQRDBText;
    qrdbtxtDescGrupo: TQRDBText;
    qrdbtxtCodigoBarra: TQRDBText;
    qrdbtxtCustoCompra: TQRDBText;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelProduto: TFormRelProduto;

implementation

uses
  ViewBase;

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

      if (DataIni.text <> ' / / ') and (DataFim.Text <> ' / / ') then
        begin
          SQL.Add(' and Produtos.DataCadastro between :DatIni and :DataFim');
          Parameters.ParamByName('DatIni').Value := DataIni.Date;
          Parameters.ParamByName('DataFim').Value := DataFim.Date;
        end;

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

     QuickReport.Preview;

end;

procedure TFormRelProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  Release;
  RelProdutos := nil;
end;

end.
