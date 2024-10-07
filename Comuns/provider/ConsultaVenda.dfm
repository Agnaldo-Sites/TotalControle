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
    ActivePage = ts1
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
      object BtnSelecionar: TSpeedButton
        Left = 12
        Top = 51
        Width = 141
        Height = 27
        Caption = 'Selecionar'
        Glyph.Data = {
          42090000424D4209000000000000420000002800000018000000180000000100
          20000300000000090000B1000000B100000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000091EEAE2C8FEF
          B0C18EF1AA120000000000000000000000000000000000FF00014491009D468F
          0062000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008FF0AD228FEFB0E68FEF
          B0FF8FEEB0C895EAAA0C0000000000000000000000004591008D459000FF4590
          00FC468F00540000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008BF3AE168FEFB0D98FEFB0FF8FEF
          B0FF8FEFB0FF8FEFAFBD80DFBF0800000000468F0080459000FF459000FF4590
          00FF459000F94490004700000000000000000000000000000000000000000000
          000000000000000000000000000088EEAA0F8FEFB0CF8FEFB0FF8FEFB0FF8FEF
          B0FF8FEFB0FF8FEFB0FF8FEFB0B14792056C459000FF459000FF459000FF4590
          00FF459000FF459000F5458F003B000000000000000000000000000000000000
          000000000000000000008BE8B90B8FF0B0C68FEFB0FF8FEFB0FF8FEFB0FF8FEF
          B0FD8FEFB0FF8FEFB0FF74CD70FF459101FE459000FF459000FF459000FD4590
          00FF459000FF459000FF459000ED448E002D0000000000000000000000000000
          000000000000000000008FEFAF408FEFB0FF8FEFB0FF8FEFB0FF8FEFB09490F1
          B0378FEFB0F48FEFB0FF55A427FF459000FF459000FF459000DF478F00324590
          00AE459000FF459000FF459000FF459000E6478E002400000000000000000000
          00000000000000000000000000008FEFB0AA8FEFB0F88FF0B064000000000000
          00008FEFB1528FEFB0FD80DC8DFF469102FF56A72AFF83E0948C00000000398E
          0009459000CA459000FF459000FF459000FF459000E24491001E000000000000
          00000000000000000000000000008EECB31B8EF1AF3600000000000000000000
          0000000000008FEEB1798FEFB0FF79D27BFF8EEDADFF8FEFB0FF8EEFAF730000
          00004992001C459000E5459000FF459000FF459000FF459000D5408C00140000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008FEFB0A28FEFB0FF8FEFB0FF8FEFB0FF8FEFB0FE8FF0
          AF6600000000478F0032459000F4459000FF459000FF459000FF459000CF408F
          0010000000000000000000000000000000000000000000000000000000000000
          0000000000000000000092FFB6078FEFB0C48FEFB0FF8FEFB0FF8FEFB0FF8FF0
          B1B6000000000000000045900055459000FE459000FF459000FF459000F64690
          0037000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000094F2AE138FEFB0DC8FEFB0FF8FF0B0C695EA
          AA0C0000000000000000000000004591007D459000FF459000FA4690004C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008FECAE298FEFB0C196F0B4110000
          000000000000000000000000000000FF0001469000A146910058000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF01000000000000
          00000000000000000000000000000000000000FF000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        Visible = False
        OnClick = BtnSelecionarClick
      end
      object dbgrd1: TDBGrid
        Left = 0
        Top = 88
        Width = 952
        Height = 323
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
        Width = 600
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
        Left = 970
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
        Left = 801
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
