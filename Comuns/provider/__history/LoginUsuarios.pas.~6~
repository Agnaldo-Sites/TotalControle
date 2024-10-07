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
    BtnConcluir: TSpeedButton;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    ConsultaUsuario: TADOQuery;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnConcluirClick(Sender: TObject);
    procedure EditNomeExit(Sender: TObject);
    procedure EditNomeKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
  ViewBase, Criptografia;

{$R *.dfm}

procedure TFormLoginUsuarios.BtnConcluirClick(Sender: TObject);
var
  Criptografia : TCriptografia;
begin

  if (EditNome.Text = '') and (EditSenha.Text = '')  then
    begin
        ShowMessage('Campo tende ser Obrigatorio Verifique !!');
        EditNome.SetFocus;
        Exit;
    end;

  ConsultaUsuario.Close;
  ConsultaUsuario.SQL.Clear;
  ConsultaUsuario.SQL.Add('select * from Usuarios where Nome =:Nome');
  ConsultaUsuario.Parameters.ParamByName('Nome').Value := EditNome.Text;
  ConsultaUsuario.Open;

  if ConsultaUsuario.IsEmpty then
    begin
        ShowMessage('Nome de Usuario não existe Verifique !!');
        EditNome.SetFocus;
        Exit;
    end;

   while not ConsultaUsuario.Eof do
    begin
      if Criptografia.CompareHash(EditSenha.Text, ConsultaUsuario.FieldByName('Senha').AsString) = true then
        begin
          frmViewBase.vCodUsuario := ConsultaUsuario.FieldByName('CodUsuario').AsInteger;

          if ConsultaUsuario.FieldByName('Ativo').AsBoolean <> true then
            begin
              ShowMessage('Usuario não esta Ativo no Sistema Contate o ADMINISTRADOR do Sistema !!');
              EditSenha.SetFocus;
              exit;
            end;


          ConsultaUsuario.Close;
          ConsultaUsuario.SQL.Clear;
          ConsultaUsuario.SQL.Add('select EstiloDeSistema from Usuarios where CodUsuario = '+ IntToStr(frmViewBase.vCodUsuario));
          ConsultaUsuario.Open;

          TStyleManager.TrySetStyle(ConsultaUsuario.FieldByName('EstiloDeSistema').AsString);

          xButtonClose := 1;
          self.close;
          exit;
        end;
      ConsultaUsuario.Next;
    end;
    ShowMessage('Usuario não Encontrado Verifique !!');

end;

procedure TFormLoginUsuarios.EditNomeExit(Sender: TObject);
begin
   ConsultaUsuario.Close;
   ConsultaUsuario.SQL.Clear;
   ConsultaUsuario.SQL.Add('select * from Usuarios where Nome =:Nome');
   ConsultaUsuario.Parameters.ParamByName('Nome').Value := EditNome.Text;
   ConsultaUsuario.Open;

   if ConsultaUsuario.IsEmpty then
     begin
         ShowMessage('Nome de Usuario não existe Verifique !!');
         EditNome.SetFocus;
         Exit;
     end;
end;

procedure TFormLoginUsuarios.EditNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      EditSenha.SetFocus;
    end;
end;

procedure TFormLoginUsuarios.EditSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then  // VK_RETURN é a constante para a tecla Enter
  begin
    Key := 0;  // Evita o som de "beep"
    BtnConcluir.Click;
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
