unit FrameToolBar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.DBActns, Vcl.Buttons;

type
  TFrmFrameToolBar = class(TFrame)
    ImagemLIst: TImageList;
    DataSet: TActionList;
    TollBar: TToolBar;
    dtstnsrt: TDataSetInsert;
    dtstdlt: TDataSetDelete;
    dtstdt: TDataSetEdit;
    dtstpst: TDataSetPost;
    dtstcncl: TDataSetCancel;
    BtnInserir: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnGravar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnCancelar: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
