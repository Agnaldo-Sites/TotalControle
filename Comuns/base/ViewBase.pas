unit ViewBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB,
  Grids, DBGrids, Vcl.Themes, Vcl.Menus;

type
  TfrmViewBase = class(TForm)
    Base: TADOConnection;
    QueryConsulta: TADOQuery;
    pnl4: TPanel;
    btnSBAparencia: TSpeedButton;
    nbMenu_Notebook: TNotebook;
    btn4: TSpeedButton;
    bvl: TBevel;
    procedure btn4Click(Sender: TObject);
    procedure btnSBAparenciaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vCodUsuario: Integer;
  end;

var
  frmViewBase: TfrmViewBase;

implementation

uses
  Clientes, Aparencia, FormularioFilho;

{$R *.dfm}

procedure TfrmViewBase.btn4Click(Sender: TObject);
var
 i : integer;
begin
// Verifica se o formul�rio j� est� aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se n�o estiver aberto, cria uma nova inst�ncia
  Application.CreateForm(TFormClientes, FormClientes);
end;

procedure TfrmViewBase.btnSBAparenciaClick(Sender: TObject);
var
 i : integer;
begin
// Verifica se o formul�rio j� est� aberto
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i] is TFormClientes then
    begin
      MDIChildren[i].BringToFront;
      Exit;
    end;
  end;
  // Se n�o estiver aberto, cria uma nova inst�ncia
  Application.CreateForm(TFormAparencia, FormAparencia);

end;

procedure TfrmViewBase.FormActivate(Sender: TObject);
begin
  vCodUsuario := 1;
  QueryConsulta.Close;
  QueryConsulta.SQL.Clear;
  QueryConsulta.SQL.Add('select EstiloDeSistema from Usuarios where CodUsuario = '+ IntToStr(vCodUsuario));
  QueryConsulta.Open;

  TStyleManager.TrySetStyle(QueryConsulta.FieldByName('EstiloDeSistema').AsString);
end;

end.
