object FormClientes: TFormClientes
  Left = 0
  Top = 0
  Caption = 'FormClientes'
  ClientHeight = 441
  ClientWidth = 873
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 15
  object lbl3: TLabel
    Left = 24
    Top = 22
    Width = 80
    Height = 15
    Caption = 'Codigo Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 873
    Height = 441
    Align = alClient
    TabOrder = 0
    ExplicitTop = -8
    ExplicitWidth = 624
    object PagListagem: TPageControl
      Left = 1
      Top = 1
      Width = 871
      Height = 439
      ActivePage = ts1
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 622
      object ts1: TTabSheet
        Caption = 'Listagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        DesignSize = (
          863
          409)
        object lblTitulo: TLabel
          Left = 12
          Top = 24
          Width = 154
          Height = 15
          Caption = 'Pesquisar: Nome do Cliente:'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object dbgrd1: TDBGrid
          Left = 0
          Top = 80
          Width = 863
          Height = 329
          Align = alBottom
          DataSource = DSQueryListagem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = [fsBold]
          OnCellClick = dbgrd1CellClick
          OnDrawColumnCell = dbgrd1DrawColumnCell
          OnTitleClick = dbgrd1TitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CodCliente'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Title.Caption = 'Nome do Cliente'
              Width = 193
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Title.Caption = 'Email '
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Telefone'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataNascimento'
              Title.Caption = 'Data de Nascimento'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Endereco'
              Title.Caption = 'Endere'#231'o'
              Width = 164
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cidade'
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Estado'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CEP'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataCadastro'
              Visible = False
            end>
        end
        object Pesquisa: TEdit
          Left = 205
          Top = 22
          Width = 476
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = PesquisaChange
        end
        object Todos: TCheckBox
          Left = 723
          Top = 24
          Width = 106
          Height = 17
          Hint = 
            'S'#243' ir'#225' mostrar os primeiros 1000 registros, '#13#10'caso o registro pr' +
            'ocurado n'#227'o esteja entre'#13#10'eles utilize os filtros clicando na co' +
            'luna '#13#10'referente ao tipo de informa'#231#227'o que deseja '#13#10'procurar e d' +
            'epois a digite no campo ao lado.'
          Anchors = [akTop, akRight]
          Caption = 'LISTAR TODOS'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = TodosClick
        end
        object DateEdit1: TJvDateEdit
          Left = 191
          Top = 22
          Width = 148
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowNullDate = False
          TabOrder = 3
          Visible = False
          OnChange = DateEdit1Change
        end
      end
      object PagManutencao: TTabSheet
        Caption = 'Manuten'#231#227'o'
        ImageIndex = 1
        object lbl1: TLabel
          Left = 16
          Top = 14
          Width = 80
          Height = 15
          Caption = 'Codigo Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 160
          Top = 14
          Width = 93
          Height = 15
          Caption = 'Nome do Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CodCliente: TDBText
          Left = 30
          Top = 35
          Width = 62
          Height = 13
          AutoSize = True
          DataField = 'CodCliente'
          DataSource = DSQueryCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 496
          Top = 14
          Width = 88
          Height = 15
          Caption = 'Email do Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 824
          Top = 14
          Width = 49
          Height = 15
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnl2: TPanel
          Left = 0
          Top = 360
          Width = 863
          Height = 49
          Align = alBottom
          BevelOuter = bvNone
          Color = 14671839
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 894
        end
        object dbedtCliNome: TDBEdit
          Left = 160
          Top = 35
          Width = 281
          Height = 23
          DataField = 'Nome'
          DataSource = DSQueryCliente
          TabOrder = 1
        end
        object dbtEmail: TDBEdit
          Left = 496
          Top = 35
          Width = 281
          Height = 23
          DataField = 'Email'
          DataSource = DSQueryCliente
          TabOrder = 2
        end
        object DBTelefone: TDBEdit
          Left = 824
          Top = 35
          Width = 137
          Height = 23
          DataField = 'Telefone'
          DataSource = DSQueryCliente
          TabOrder = 3
        end
      end
    end
  end
  object DSQueryListagem: TDataSource
    DataSet = QueryListagem
    Left = 77
    Top = 171
  end
  object QueryListagem: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Clientes')
    Left = 45
    Top = 171
    object atncfldQueryListagemCodCliente: TAutoIncField
      FieldName = 'CodCliente'
      ReadOnly = True
    end
    object wdstrngfldQueryListagemNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object wdstrngfldQueryListagemEmail: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
    object wdstrngfldQueryListagemTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object dtfldQueryListagemDataNascimento: TDateField
      FieldName = 'DataNascimento'
    end
    object wdstrngfldQueryListagemEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object wdstrngfldQueryListagemCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object wdstrngfldQueryListagemEstado: TWideStringField
      FieldName = 'Estado'
      Size = 100
    end
    object wdstrngfldQueryListagemCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object dtmfldQueryListagemDataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
    end
  end
  object TimerCli: TTimer
    Enabled = False
    OnTimer = TimerCliTimer
    Left = 13
    Top = 171
  end
  object QueryCliente: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodCliente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Clientes where CodCliente = :CodCliente')
    Left = 16
    Top = 208
    object atncfldQueryClienteCodCliente: TAutoIncField
      FieldName = 'CodCliente'
      ReadOnly = True
    end
    object wdstrngfldQueryClienteNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object wdstrngfldQueryClienteEmail: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
    object wdstrngfldQueryClienteTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object dtfldQueryClienteDataNascimento: TDateField
      FieldName = 'DataNascimento'
    end
    object wdstrngfldQueryClienteEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object wdstrngfldQueryClienteCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object wdstrngfldQueryClienteEstado: TWideStringField
      FieldName = 'Estado'
      Size = 100
    end
    object wdstrngfldQueryClienteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object dtmfldQueryClienteDataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
    end
  end
  object DSQueryCliente: TDataSource
    DataSet = QueryCliente
    Left = 45
    Top = 208
  end
end
