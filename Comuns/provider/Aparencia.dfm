object FormAparencia: TFormAparencia
  Left = 0
  Top = 0
  Caption = 'FormAparencia'
  ClientHeight = 310
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 485
    Height = 310
    Align = alClient
    TabOrder = 0
    object lbl1: TLabel
      Left = 24
      Top = 24
      Width = 152
      Height = 15
      Caption = 'Escolha o Estilo do Sistema :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox2: TComboBox
      Left = 24
      Top = 45
      Width = 193
      Height = 23
      TabOrder = 0
      OnChange = ComboBox2Change
    end
    object pnl2: TPanel
      Left = 1
      Top = 82
      Width = 483
      Height = 227
      Align = alBottom
      TabOrder = 1
      object lbl2: TLabel
        Left = 20
        Top = 16
        Width = 155
        Height = 15
        Caption = 'Veja como Ficara o Sistema: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object shp1: TShape
        Left = 270
        Top = 199
        Width = 192
        Height = 2
      end
      object btn2: TSpeedButton
        Left = 185
        Top = 188
        Width = 75
        Height = 22
        Caption = 'SpeedButton1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object mmo1: TMemo
        Left = 20
        Top = 55
        Width = 244
        Height = 50
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'Memo1')
        ParentFont = False
        TabOrder = 0
      end
      object rg1: TRadioGroup
        Left = 20
        Top = 127
        Width = 159
        Height = 74
        Caption = 'rg1'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Item 1'
          'Item 2'
          'Item 3'
          'Item 4')
        ParentFont = False
        TabOrder = 1
      end
      object rb1: TRadioButton
        Left = 185
        Top = 111
        Width = 113
        Height = 17
        Caption = 'rb1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object chk1: TCheckBox
        Left = 185
        Top = 134
        Width = 97
        Height = 17
        Caption = 'chk1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object dbgrd1: TDBGrid
        Left = 270
        Top = 54
        Width = 192
        Height = 74
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            Title.Caption = 'Campo 1'
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Campo 2'
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Campo 3'
            Visible = True
          end>
      end
      object pnl3: TPanel
        Left = 270
        Top = 134
        Width = 177
        Height = 41
        Caption = 'pnl3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object btn1: TButton
        Left = 185
        Top = 157
        Width = 75
        Height = 25
        Caption = 'btn1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
  end
end
