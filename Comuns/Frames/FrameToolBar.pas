unit FrameToolBar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.DBActns, Vcl.Buttons;

type
  TFrmFrameToolBar = class(TFrame)
    ImagemLIst: TImageList;
    DataSet: TActionList;
    Anterior: TDataSetFirst;
    Proximo: TDataSetLast;
    Inserir: TDataSetInsert;
    Editar: TDataSetDelete;
    Gravar: TDataSetPost;
    Cancelar: TDataSetCancel;
    TollBar: TToolBar;
    DatasetRefresh1: TDataSetRefresh;
    btnAnterior: TSpeedButton;
    btnEditar: TSpeedButton;
    btnEditar1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
