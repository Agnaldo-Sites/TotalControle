unit LoginUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB, Vcl.Themes;

type
  TFormLoginUsuarios = class(TForm)
    pnl1: TPanel;
    EditNome: TEdit;
    EditSenha: TEdit;
    lblNome: TLabel;
    lblSenha: TLabel;
    lblTitulo: TLabel;
    lblNome1: TLabel;
    pnl31: TPanel;
    btn11: TSpeedButton;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    ConsultaUsuario: TADOQuery;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
  private
    { Private declarations }
    xButtonClose : integer;
  public
    { Public declarations }
  end;

var
  FormLoginUsuarios: TFormLoginUsuarios;

implementation

uses
  ViewBase;

{$R *.dfm}

procedure TFormLoginUsuarios.btn11Click(Sender: TObject);
begin

      if (EditNome.Text = '') and (EditSenha.Text = '')  then
        begin
            ShowMessage('Campo tende ser Obrigatorio Verifique !!');
            EditNome.SetFocus;
            Exit;
        end;
      ConsultaUsuario.Close;
      ConsultaUsuario.SQL.Clear;
      ConsultaUsuario.SQL.Add('select * from Usuarios where Nome =:Nome and Senha = :Senha');
      ConsultaUsuario.Parameters.ParamByName('Nome').Value := EditNome.Text;
      ConsultaUsuario.Parameters.ParamByName('Senha').Value := EditSenha.Text;
      ConsultaUsuario.Open;

      if ConsultaUsuario.IsEmpty then
        begin
            ShowMessage('Usuario não Cadastrado Verifique !!');
            EditNome.SetFocus;
            Exit;
        end
      else
        begin
          frmViewBase.vCodUsuario := ConsultaUsuario.FieldByName('CodUsuario').AsInteger;

          ConsultaUsuario.Close;
          ConsultaUsuario.SQL.Clear;
          ConsultaUsuario.SQL.Add('select EstiloDeSistema from Usuarios where CodUsuario = '+ IntToStr(frmViewBase.vCodUsuario));
          ConsultaUsuario.Open;
          TStyleManager.TrySetStyle(ConsultaUsuario.FieldByName('EstiloDeSistema').AsString);

          xButtonClose := 1;
          self.close;
        end;

end;

procedure TFormLoginUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if xButtonClose <> 1 then
    Application.Terminate;
end;

procedure TFormLoginUsuarios.SpeedButton1Click(Sender: TObject);
begin
   Application.Terminate;
end;

end.
