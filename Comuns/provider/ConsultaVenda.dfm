object FormConsultaVenda: TFormConsultaVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta Vendas'
  ClientHeight = 441
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  PopupMenu = frmViewBase.PopupMenu1
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object PagListagem: TPageControl
    Left = 0
    Top = 0
    Width = 960
    Height = 441
    ActivePage = Manutencao
    Align = alClient
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'Listagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      DesignSize = (
        952
        411)
      object lblTitulo: TLabel
        Left = 8
        Top = 24
        Width = 157
        Height = 15
        Caption = 'Pesquisar: Nome de Usuario:'
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
        Top = 68
        Width = 952
        Height = 343
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
            FieldName = 'CodVenda'
            Title.Caption = 'Venda'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DatVenda'
            Title.Caption = 'Data da Venda'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodCliente'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Caption = 'Nome de Cliente'
            Width = 195
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodUsuario'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Nome_1'
            Title.Caption = 'Nome de Usuario'
            Width = 242
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MetodoPagamento'
            Title.Caption = 'Metodo de Pagamento'
            Width = 204
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotVenda'
            Title.Caption = 'Total da Venda'
            Width = 99
            Visible = True
          end>
      end
      object Pesquisa: TEdit
        Left = 183
        Top = 22
        Width = 602
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = PesquisaChange
      end
      object chkTodos: TCheckBox
        Left = 972
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
      end
      object Todos: TCheckBox
        Left = 803
        Top = 26
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
        TabOrder = 3
        OnClick = TodosClick
      end
    end
    object Manutencao: TTabSheet
      Caption = 'Manutencao'
      ImageIndex = 1
      object lbl4: TLabel
        Left = 12
        Top = 16
        Width = 119
        Height = 15
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 392
        Top = 16
        Width = 64
        Height = 15
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inline FrameBtn: TFrmFrameToolBar
        Left = 0
        Top = 380
        Width = 952
        Height = 31
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 380
        ExplicitWidth = 952
        ExplicitHeight = 31
        inherited TollBar: TToolBar
          Width = 952
          ExplicitWidth = 950
        end
        inherited DataSet: TActionList
          inherited dtstnsrt: TDataSetInsert
            DataSource = DSVendas
          end
          inherited dtstdlt: TDataSetDelete
            DataSource = DSVendas
          end
          inherited dtstdt: TDataSetEdit
            DataSource = DSVendas
          end
          inherited dtstpst: TDataSetPost
            DataSource = DSVendas
          end
          inherited dtstcncl: TDataSetCancel
            DataSource = DSVendas
          end
        end
      end
      object DBQuant: TDBEdit
        Left = 392
        Top = 37
        Width = 73
        Height = 23
        DataField = 'Quant'
        DataSource = DSVendas
        Enabled = False
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 12
        Top = 37
        Width = 66
        Height = 23
        DataField = 'CodProduto'
        DataSource = DSVendas
        Enabled = False
        TabOrder = 2
        OnExit = DBEdit1Exit
        OnKeyDown = DBEdit1KeyDown
      end
      object PnlDescproduto: TPanel
        Left = 89
        Top = 37
        Width = 282
        Height = 23
        TabOrder = 3
      end
      object GridVenda: TDBGrid
        Left = 0
        Top = 68
        Width = 952
        Height = 312
        Align = alBottom
        DataSource = DSConsultaVendas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = [fsBold]
        OnCellClick = GridVendaCellClick
        OnDrawColumnCell = GridVendaDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CodVenda'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SeqItensVenda'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CodCliente'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Caption = 'Nome de Cliente'
            Width = 256
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodProduto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DescProduto'
            Title.Caption = 'Descri'#231#227'o do Produto'
            Width = 328
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quant'
            Title.Caption = 'Quantidade'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValUnitario'
            Title.Caption = 'Valor Unitario'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValTot'
            Title.Caption = 'Valor Total'
            Width = 99
            Visible = True
          end>
      end
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 701
    Top = 227
  end
  object QueryListagem: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select Vendas.CodVenda,Vendas.DatVenda,Vendas.CodCliente,Cliente' +
        's.Nome,Vendas.CodUsuario,Usuarios.Nome,Vendas.MetodoPagamento,Ve' +
        'ndas.TotVenda from Vendas'
      
        'left outer join Usuarios on Vendas.CodUsuario = Usuarios.CodUsua' +
        'rio'
      
        'left outer join Clientes on Vendas.CodCliente = Clientes.CodClie' +
        'nte ')
    Left = 733
    Top = 227
    object QueryListagemCodVenda: TIntegerField
      FieldName = 'CodVenda'
    end
    object QueryListagemDatVenda: TDateTimeField
      FieldName = 'DatVenda'
    end
    object QueryListagemCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object QueryListagemNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object QueryListagemCodUsuario: TIntegerField
      FieldName = 'CodUsuario'
    end
    object QueryListagemNome_1: TWideStringField
      FieldName = 'Nome_1'
      Size = 100
    end
    object QueryListagemMetodoPagamento: TWideStringField
      FieldName = 'MetodoPagamento'
      Size = 50
    end
    object QueryListagemTotVenda: TBCDField
      FieldName = 'TotVenda'
      Precision = 10
      Size = 2
    end
  end
  object DSQueryListagem: TDataSource
    DataSet = QueryListagem
    Left = 765
    Top = 227
  end
  object ConsultaVendas: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    DataSource = DSQueryListagem
    Parameters = <
      item
        Name = 'CodVenda'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select ItensVenda.CodVenda,ItensVenda.SeqItensVenda,ItensVenda.C' +
        'odCliente,Clientes.Nome,ItensVenda.CodProduto,Produtos.DescProdu' +
        'to,'
      
        'ItensVenda.Quant,ItensVenda.ValUnitario,ItensVenda.ValTot from I' +
        'tensVenda'
      
        'left outer join Clientes on ItensVenda.CodCliente = Clientes.Cod' +
        'Cliente'
      
        'left outer join Produtos on ItensVenda.CodProduto = Produtos.Cod' +
        'Produto'
      'where ItensVenda.CodVenda = :CodVenda ')
    Left = 693
    Top = 323
    object ConsultaVendasCodVenda: TIntegerField
      FieldName = 'CodVenda'
    end
    object ConsultaVendasSeqItensVenda: TAutoIncField
      FieldName = 'SeqItensVenda'
      ReadOnly = True
    end
    object ConsultaVendasCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object ConsultaVendasNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object ConsultaVendasCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object ConsultaVendasDescProduto: TStringField
      FieldName = 'DescProduto'
      Size = 255
    end
    object ConsultaVendasQuant: TIntegerField
      FieldName = 'Quant'
    end
    object ConsultaVendasValUnitario: TBCDField
      FieldName = 'ValUnitario'
      Precision = 10
      Size = 2
    end
    object ConsultaVendasValTot: TBCDField
      FieldName = 'ValTot'
      Precision = 10
      Size = 2
    end
  end
  object DSConsultaVendas: TDataSource
    DataSet = ConsultaVendas
    Left = 725
    Top = 323
  end
  object Vendas: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    BeforeInsert = VendasBeforeInsert
    BeforeEdit = VendasBeforeEdit
    AfterPost = VendasAfterPost
    AfterCancel = VendasAfterCancel
    BeforeDelete = VendasBeforeDelete
    AfterDelete = VendasAfterDelete
    Parameters = <
      item
        Name = 'SeqItensVenda'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from ItensVenda where SeqItensVenda = :SeqItensVenda ')
    Left = 597
    Top = 251
    object VendasCodVenda: TIntegerField
      FieldName = 'CodVenda'
    end
    object VendasSeqItensVenda: TAutoIncField
      FieldName = 'SeqItensVenda'
      ReadOnly = True
    end
    object VendasCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object VendasCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object VendasQuant: TIntegerField
      FieldName = 'Quant'
    end
    object VendasValUnitario: TBCDField
      FieldName = 'ValUnitario'
      Precision = 10
      Size = 2
    end
    object VendasValTot: TBCDField
      FieldName = 'ValTot'
      Precision = 10
      Size = 2
    end
  end
  object DSVendas: TDataSource
    DataSet = Vendas
    Left = 565
    Top = 251
  end
  object QueryConsulta: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <>
    Left = 85
    Top = 243
  end
end
