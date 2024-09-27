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


procedure TFormAparencia.ComboBox2Change(Sender: TObject);
begin
   with frmViewBase.QueryConsulta do begin
    Close;
    SQL.Clear;
    SQL.Add('update Usuarios set EstiloDeSistema = :NomeEstilo where CodUsuario = '+IntToStr(frmViewBase.vCodUsuario));
    Parameters.ParamByName('NomeEstilo').Value := ComboBox2.Text;
    ExecSQL;
   end;



  TStyleManager.TrySetStyle(ComboBox2.Text);
  self.Show;
end;


procedure TFormAparencia.FormShow(Sender: TObject);
var
  StyleName: string;
begin
  ComboBox2.Items.Clear;
  for StyleName in TStyleManager.StyleNames
    do ComboBox2.Items.Add(StyleName);
  ComboBox2.Sorted := True;
  ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

end.
