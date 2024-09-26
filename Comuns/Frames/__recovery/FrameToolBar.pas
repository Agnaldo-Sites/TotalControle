unit FrameToolBar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin;

type
  TFrmFrameToolBar = class(TFrame)
    actlst1: TActionList;
    ImagemList: TImageList;
    Excluir: TAction;
    Alterar: TAction;
    Inserir: TAction;
    tlb1: TToolBar;
    btnInserir1: TToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
