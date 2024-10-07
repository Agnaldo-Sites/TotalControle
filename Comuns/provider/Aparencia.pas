unit Aparencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Themes;

type
  TFormAparencia = class(TForm)
    pnl1: TPanel;
    ComboBox2: TComboBox;
    lbl1: TLabel;
    pnl2: TPanel;
    lbl2: TLabel;
    mmo1: TMemo;
    rg1: TRadioGroup;
    rb1: TRadioButton;
    chk1: TCheckBox;
    dbgrd1: TDBGrid;
    pnl3: TPanel;
    shp1: TShape;
    btn1: TButton;
    btn2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure CarregaEstiloUsuario;
  public
    { Public declarations }
  end;

var
  FormAparencia: TFormAparencia;

implementation

uses
  ViewBase;

{$R *.dfm}

procedure TFormAparencia.CarregaEstiloUsuario;
begin
end;


procedure TFormAparencia.ComboBox2Change(Sender: TObject); //Executa o Update do sistama escolhido pelo Usuario
begin
   with frmViewBase.QueryConsulta do begin
    Close;
    SQL.Clear;
    SQL.Add('update Usuarios set EstiloDeSistema = :NomeEstilo where CodUsuario = '+IntToStr(frmViewBase.vCodUsuario));
    Parameters.ParamByName('NomeEstilo').Value := ComboBox2.Text;
    ExecSQL;
   end;


  //Seta o estilo no sistema
  TStyleManager.TrySetStyle(ComboBox2.Text);
  self.Show;
end;


procedure TFormAparencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Limpa a Tela apos fechá la
  Action := CaFree;
  Release;
  FormAparencia := nil;
end;

procedure TFormAparencia.FormShow(Sender: TObject); //Amosta no ComboBox todos os estilos Disponiveis
var
  StyleName: string;
begin
  ComboBox2.Items.Clear; //Limpa o ComboBox

  for StyleName in TStyleManager.StyleNames do ComboBox2.Items.Add(StyleName);
  ComboBox2.Sorted := True;
  //Para cada Estilo Adicione os Estilos no CompoBox
  ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

end.
