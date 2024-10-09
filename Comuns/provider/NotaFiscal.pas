unit NotaFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  TFormNotaFiscal = class(TForm)
    PagListagem: TPageControl;
    ts1: TTabSheet;
    PagManutencao: TTabSheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNotaFiscal: TFormNotaFiscal;

implementation

{$R *.dfm}

procedure TFormNotaFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    // Limpa a tela no fechamendo dela
  Action := CaFree;
  Release;
  FormNotaFiscal := nil;
end;

end.
