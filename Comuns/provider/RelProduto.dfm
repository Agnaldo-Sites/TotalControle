object FormRelProduto: TFormRelProduto
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Relatorio de Produtos'
  ClientHeight = 469
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 423
    Height = 469
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1022
    ExplicitHeight = 787
    object lbl1: TLabel
      Left = 168
      Top = 21
      Width = 105
      Height = 17
      Caption = 'Data de Cadastro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 216
      Top = 47
      Width = 9
      Height = 17
      Caption = 'A'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 40
      Top = 85
      Width = 85
      Height = 17
      Caption = 'Codigo Grupo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl31: TLabel
      Left = 45
      Top = 149
      Width = 33
      Height = 17
      Caption = 'CFOP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnl2: TPanel
      Left = 1
      Top = 412
      Width = 421
      Height = 56
      Align = alBottom
      TabOrder = 0
      ExplicitTop = 730
      ExplicitWidth = 1020
      object btn1: TSpeedButton
        Left = 92
        Top = 14
        Width = 225
        Height = 33
        Caption = 'Imprimir'
        Glyph.Data = {
          42090000424D4209000000000000420000002800000018000000180000000100
          20000300000000090000B1000000B100000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000065050505FB0909
          09F7090909F7090909F7090909F7090909F7090909F7090909F7090909F70909
          09F7090909F7090909F7090909F7050505FB0000006500000000000000000000
          0000000000000000000000000000000000000000000000000076808183FEF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFF808183FE0000007600000000000000000000
          0000000000000000000000000000000000000000000000000076808183FEF5F7
          FAFFF5F7FAFF8F9092FF525253FF525253FF525253FF525253FF525253FF5252
          53FF8F9092FFF5F7FAFFF5F7FAFF808183FE0000007600000000000000000000
          0000000000000000000000000000000000000000000000000076808183FEF5F7
          FAFFF5F7FAFFD4D6D9FFB4B5B7FFB4B5B7FFB4B5B7FFB4B5B7FFB4B5B7FFB4B5
          B7FFD4D6D9FFF5F7FAFFF5F7FAFF808183FE0000007600000000000000000000
          000000000000000000000000000F0000005B00000066000000AD808183FEF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFF808183FE000000AD000000660000005A0000
          000E00000000000000000E0A07DB573E2CF473523AF73D2C1EFB808182FFF5F7
          FAFFF5F7FAFF6E6F71FF101011FF101011FF101011FF101011FF101011FF1010
          11FF6E6F71FFF5F7FAFFF5F7FAFF808182FF3D2C1EFB73523AF7563E2BF40F0B
          07DA000000000000001516100BF2FFB680FFFFB680FF896245FF808182FFF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFF808182FF896245FFFFB680FFFFB680FF150F
          0BF200000015000000181B130EF0FFB680FFFFB680FF896245FF808182FFF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFF808182FF896245FFFFB680FFFFB680FF1B13
          0EF000000018000000181B130EF0FFB680FF74533AFF090605FF090807FF110E
          0DFF110E0DFF110E0DFF120F0EFFC7AD99FFAB9483FFA89281FFC7AD99FF120F
          0EFF110E0DFF110E0DFF110E0DFF090807FF090605FF75543BFFFFB680FF1B13
          0EF000000018000000181B130EF0FFB680FFFFB680FFFFB680FFFFB680FFFFB6
          80FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB6
          80FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FF1B13
          0EF000000018000000181B130EF0FFB680FFFFB680FFFFB680FFFFB680FFFFB6
          80FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB6
          80FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FF1B13
          0EF000000018000000181B130EF0FFB680FFFFB680FFFFB680FFFFB680FFFFB6
          80FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFDA9C
          6DFF251C1BFF281E1CFFDE9E6FFFCA9065FF211914FF37291FFFECA876FF1B13
          0EF000000018000000181B130EF0FFB680FFFFB680FFFFB680FFFFB680FFFFB6
          80FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FF835E
          44FF544A78FF514772FF886245FF6A4D38FF927D6DFF594B40FFA47552FF1B13
          0EF000000018000000181B130EF0FFB680FFFFB680FFFFB680FFFFB680FFFFB6
          80FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFCF94
          68FF151011FF171212FFD3976AFFBC865EFF14100CFF211913FFE4A372FF1B13
          0EF0000000180000001718110CF1FFB680FFFFB680FFFFB680FFFFB680FFFFB6
          80FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB680FFFFB6
          80FFFCB47EFFFCB47EFFFFB680FFFFB680FFFAB27DFFFEB57FFFFFB680FF1811
          0CF100000017000000020C0907E87C583DFD996D4DFF996D4DFF996D4DFF996D
          4DFF996D4DFF996D4DFF996D4DFF996D4DFF996D4DFF996D4DFF996D4DFF996D
          4DFF996D4DFF996D4DFF996D4DFF996D4DFF996D4DFF996D4DFF7B583EFC0C09
          07E800000001000000000000001E050302A427211DF73D342EFB383939FB6E6F
          70F86E6F70F86E6F70F86E6F70F86E6F70F86E6F70F86E6F70F86E6F70F86E6F
          70F86E6F70F86E6F70F86E6F70F8383939FB3D342EFB27211DF7050302A40000
          001E000000000000000000000000000000545B4E44F1897667FF808182FEF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFF808182FE897667FF5B4E44F1000000540000
          0000000000000000000000000000000000545B4E44F1897667FF808182FEF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFF808182FE897667FF5B4E44F1000000540000
          000000000000000000000000000000000052574A41F1897667FF808182FEF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFF808182FE897667FF574A41F1000000520000
          0000000000000000000000000000000000200E0C0BF2372F29FB808182FEF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7
          FAFFECEEF1FF6A6A69FF626161FF333232FE362F29FA0E0C0BF20000001F0000
          00000000000000000000000000000000000000000028000000AA808182FEF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7
          FAFFD6D8DBFF201D1AFF5D5046FF121110F60000006600000027000000000000
          0000000000000000000000000000000000000000000000000076808182FEF5F7
          FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7FAFFF5F7
          FAFFD6D8DBFF0F0D0CFF161413F3000000250000000000000000000000000000
          0000000000000000000000000000000000000000000000000065050505FB0909
          09F7090909F7090909F7090909F7090909F7090909F7090909F7090909F70909
          09F7080808F80D0D0CEE00000025000000000000000000000000000000000000
          000000000000}
        OnClick = btn1Click
      end
    end
    object DataIni: TJvDateEdit
      Left = 112
      Top = 47
      Width = 90
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ShowNullDate = False
      TabOrder = 1
    end
    object DataFim: TJvDateEdit
      Left = 240
      Top = 47
      Width = 90
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ShowNullDate = False
      TabOrder = 2
    end
    object CodGrupo: TEdit
      Left = 45
      Top = 108
      Width = 57
      Height = 23
      TabOrder = 3
    end
    object pnlDescGrupo: TPanel
      Left = 108
      Top = 108
      Width = 282
      Height = 23
      TabOrder = 4
    end
    object CodCFOP: TEdit
      Left = 45
      Top = 172
      Width = 57
      Height = 23
      TabOrder = 5
    end
    object pnlDescGrupo1: TPanel
      Left = 108
      Top = 172
      Width = 282
      Height = 23
      TabOrder = 6
    end
    object grp1: TGroupBox
      Left = 45
      Top = 216
      Width = 345
      Height = 177
      Caption = 'Filtros'
      TabOrder = 7
      object RadioStatus: TRadioGroup
        Left = 16
        Top = 101
        Width = 305
        Height = 60
        Caption = 'Status do Produto'
        Columns = 3
        Items.Strings = (
          'ATIVO'
          'INATIVO'
          'AMBOS')
        TabOrder = 0
      end
      object RadioEstoque: TRadioGroup
        Left = 16
        Top = 27
        Width = 305
        Height = 56
        Caption = 'Permite Movimenta'#231#227'o de Estoque'
        Columns = 3
        Items.Strings = (
          'SIM'
          'N'#194'O'
          'AMBOS')
        TabOrder = 1
      end
    end
    object QuickReport: TQuickRep
      Left = 741
      Top = 202
      Width = 794
      Height = 1123
      ShowingPreview = False
      DataSet = RelProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = Default
      Page.Continuous = False
      Page.Values = (
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.MemoryLimit = 1000000
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PreviewWidth = 500
      PreviewHeight = 500
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stPDF
      PreviewLeft = 0
      PreviewTop = 0
      object qrbndPageHeaderBand1: TQRBand
        Left = 38
        Top = 38
        Width = 718
        Height = 67
        Frame.DrawBottom = True
        AlignToBottom = False
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          177.270833333333300000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object qrlbl1: TQRLabel
          Left = 248
          Top = 23
          Width = 222
          Height = 20
          Size.Values = (
            52.916666666666670000
            656.166666666666700000
            60.854166666666670000
            587.375000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taCenter
          AlignToBand = True
          Caption = 'RELATORIO DE PRODUTOS'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 12
        end
      end
      object qrbnd1: TQRBand
        Left = 38
        Top = 105
        Width = 718
        Height = 42
        Frame.DrawTop = True
        Frame.DrawBottom = True
        AlignToBottom = False
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          111.125000000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbTitle
        object lbl4: TLabel
          Left = 0
          Top = 10
          Width = 72
          Height = 16
          Caption = 'Cod.Produto'
        end
        object lbl5: TLabel
          Left = 91
          Top = 10
          Width = 107
          Height = 16
          Caption = 'Descri'#231#227'o Produto'
        end
        object lbl6: TLabel
          Left = 434
          Top = 11
          Width = 65
          Height = 16
          Caption = 'Cod.Barras'
        end
        object lbl7: TLabel
          Left = 529
          Top = 11
          Width = 67
          Height = 16
          Caption = 'Val.Compra'
        end
        object lbl8: TLabel
          Left = 635
          Top = 11
          Width = 58
          Height = 16
          Caption = 'Val.Venda'
        end
        object lbl41: TLabel
          Left = 218
          Top = 10
          Width = 62
          Height = 16
          Caption = 'Cod.Grupo'
        end
        object lbl51: TLabel
          Left = 306
          Top = 10
          Width = 97
          Height = 16
          Caption = 'Descri'#231#227'o Grupo'
        end
      end
      object qrbnd2: TQRBand
        Left = 38
        Top = 147
        Width = 718
        Height = 35
        AlignToBottom = False
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          92.604166666666670000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbTitle
        object qrdbtxtCodGrupo: TQRDBText
          Left = 0
          Top = 0
          Width = 59
          Height = 17
          Size.Values = (
            44.979166666666670000
            0.000000000000000000
            0.000000000000000000
            156.104166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = RelProdutos
          DataField = 'CodGrupo'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object qrdbtxtCodGrupo1: TQRDBText
          Left = 91
          Top = 0
          Width = 76
          Height = 19
          Size.Values = (
            50.270833333333330000
            240.770833333333300000
            0.000000000000000000
            201.083333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = RelProdutos
          DataField = 'DescProduto'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object qrdbtxtDescProduto: TQRDBText
          Left = 218
          Top = 0
          Width = 59
          Height = 19
          Size.Values = (
            50.270833333333330000
            576.791666666666700000
            0.000000000000000000
            156.104166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = RelProdutos
          DataField = 'CodGrupo'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object qrdbtxtCodGrupo2: TQRDBText
          Left = 306
          Top = 0
          Width = 66
          Height = 19
          Size.Values = (
            50.270833333333330000
            809.625000000000000000
            0.000000000000000000
            174.625000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = RelProdutos
          DataField = 'DescGrupo'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object qrdbtxtDescGrupo: TQRDBText
          Left = 434
          Top = 0
          Width = 72
          Height = 19
          Size.Values = (
            50.270833333333330000
            1148.291666666667000000
            0.000000000000000000
            190.500000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = RelProdutos
          DataField = 'CodigoBarra'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object qrdbtxtCodigoBarra: TQRDBText
          Left = 529
          Top = 0
          Width = 80
          Height = 19
          Size.Values = (
            50.270833333333330000
            1399.645833333333000000
            0.000000000000000000
            211.666666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = RelProdutos
          DataField = 'CustoCompra'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object qrdbtxtCustoCompra: TQRDBText
          Left = 635
          Top = 0
          Width = 72
          Height = 19
          Size.Values = (
            50.270833333333330000
            1680.104166666667000000
            0.000000000000000000
            190.500000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = RelProdutos
          DataField = 'CustoVenda'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
      end
    end
  end
  object RelProdutos: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select Produtos.CodProduto,Produtos.DescProduto,Produtos.CodigoB' +
        'arra,Produtos.CustoCompra,Produtos.CustoVenda,Produtos.CFOP,isnu' +
        'll(Produtos.Ativo,'#39'N'#39') as Ativo,'
      
        'isnull(Produtos.PermiteMovEstoque,'#39'N'#39') as PermiteMovEstoque,Prod' +
        'utos.DataCadastro,Produtos.CodGrupo,Grupo.DescGrupo'
      'from Produtos'
      'left outer join Grupo on Produtos.CodGrupo = Grupo.CodGrupo'
      'where (1=1) '
      ''
      '')
    Left = 408
    Top = 24
    object atncfldRelProdutosCodProduto: TAutoIncField
      FieldName = 'CodProduto'
      ReadOnly = True
    end
    object strngfldRelProdutosDescProduto: TStringField
      FieldName = 'DescProduto'
      Size = 255
    end
    object strngfldRelProdutosCodigoBarra: TStringField
      FieldName = 'CodigoBarra'
      Size = 50
    end
    object bcdfldRelProdutosCustoCompra: TBCDField
      FieldName = 'CustoCompra'
      Precision = 10
      Size = 2
    end
    object bcdfldRelProdutosCustoVenda: TBCDField
      FieldName = 'CustoVenda'
      Precision = 10
      Size = 2
    end
    object strngfldRelProdutosCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object strngfldRelProdutosAtivo: TStringField
      FieldName = 'Ativo'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object strngfldRelProdutosPermiteMovEstoque: TStringField
      FieldName = 'PermiteMovEstoque'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object dtfldRelProdutosDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
    object intgrfldRelProdutosCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object strngfldRelProdutosDescGrupo: TStringField
      FieldName = 'DescGrupo'
      Size = 255
    end
  end
  object DSRelProdutos: TDataSource
    DataSet = RelProdutos
    Left = 368
    Top = 24
  end
end
