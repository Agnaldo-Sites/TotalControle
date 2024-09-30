object FormFornecedor: TFormFornecedor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FormFornecedor'
  ClientHeight = 441
  ClientWidth = 1006
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
  object PagListagem: TPageControl
    Left = 0
    Top = 0
    Width = 1006
    Height = 441
    ActivePage = PagManutencao
    Align = alClient
    TabOrder = 0
    object Listagem: TTabSheet
      Caption = 'Listagem'
      DesignSize = (
        998
        411)
      object lblTitulo: TLabel
        Left = 12
        Top = 24
        Width = 179
        Height = 15
        Caption = 'Pesquisar: Nome de Fornecedor:'
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
        Width = 998
        Height = 331
        Align = alBottom
        DataSource = DSQueryListagem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
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
            FieldName = 'CodFor'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Caption = 'Nome de Fornecedor'
            Width = 166
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Telefone'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email'
            Title.Caption = 'Email de Fornecedor'
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Endereco'
            Title.Caption = 'Endere'#231'o'
            Width = 183
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Width = 139
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estado'
            Title.Caption = 'UF'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataCadastro'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Status'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'StatusFor'
            Title.Caption = 'Ativo'
            Width = 39
            Visible = True
          end>
      end
      object Pesquisa: TEdit
        Left = 205
        Top = 22
        Width = 636
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
        Left = 873
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
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = TodosClick
      end
    end
    object PagManutencao: TTabSheet
      Caption = 'Manutencao'
      ImageIndex = 1
      inline frmfrmtlbr1: TFrmFrameToolBar
        Left = 0
        Top = 376
        Width = 998
        Height = 35
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 376
        ExplicitWidth = 998
        ExplicitHeight = 35
        inherited TollBar: TToolBar
          Width = 998
          ExplicitWidth = 549
        end
        inherited DataSet: TActionList
          inherited dtstnsrt: TDataSetInsert
            DataSource = DSQueryFornecedor
          end
          inherited dtstdlt: TDataSetDelete
            DataSource = DSQueryFornecedor
          end
          inherited dtstdt: TDataSetEdit
            DataSource = DSQueryFornecedor
          end
          inherited dtstpst: TDataSetPost
            DataSource = DSQueryFornecedor
          end
          inherited dtstcncl: TDataSetCancel
            DataSource = DSQueryFornecedor
          end
        end
      end
    end
  end
  object qryQueryOperacoes: TADOQuery
    Connection = frmViewBase.Base
    Parameters = <>
    Left = 588
    Top = 243
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 724
    Top = 203
  end
  object QueryFornecedor: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodFor'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from Fornecedores where CodFor = :CodFor')
    Left = 700
    Top = 280
    object atncfldQueryFornecedorCodFor: TAutoIncField
      FieldName = 'CodFor'
      ReadOnly = True
    end
    object strngfldQueryFornecedorNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object strngfldQueryFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object strngfldQueryFornecedorTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object strngfldQueryFornecedorEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object strngfldQueryFornecedorEndereco: TStringField
      FieldName = 'Endereco'
      Size = 200
    end
    object strngfldQueryFornecedorCidade: TStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object strngfldQueryFornecedorEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
    object strngfldQueryFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object dtfldQueryFornecedorDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
    object strngfldQueryFornecedorStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object DSQueryFornecedor: TDataSource
    DataSet = QueryFornecedor
    Left = 732
    Top = 280
  end
  object QueryListagem: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select *,case when Status = '#39'S'#39' then '#39'SIM'#39' else '#39'N'#194'O'#39' end Status' +
        'For from Fornecedores')
    Left = 692
    Top = 235
    object atncfldQueryListagemCodFor: TAutoIncField
      FieldName = 'CodFor'
      ReadOnly = True
    end
    object strngfldQueryListagemNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object strngfldQueryListagemCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object strngfldQueryListagemTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object strngfldQueryListagemEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object strngfldQueryListagemEndereco: TStringField
      FieldName = 'Endereco'
      Size = 200
    end
    object strngfldQueryListagemCidade: TStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object strngfldQueryListagemEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
    object strngfldQueryListagemCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object dtfldQueryListagemDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
    object strngfldQueryListagemStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object strngfldQueryListagemStatusFor: TStringField
      FieldName = 'StatusFor'
      ReadOnly = True
      Size = 3
    end
  end
  object DSQueryListagem: TDataSource
    DataSet = QueryListagem
    Left = 724
    Top = 235
  end
end
