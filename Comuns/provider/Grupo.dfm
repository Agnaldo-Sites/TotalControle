object FormGrupo: TFormGrupo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Grupo'
  ClientHeight = 343
  ClientWidth = 797
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
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 343
    Align = alClient
    BorderStyle = bsSingle
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 239
    object PagListagem: TPageControl
      Left = 1
      Top = 1
      Width = 791
      Height = 337
      ActivePage = ts1
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 233
      object ts1: TTabSheet
        Caption = 'Listagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        DesignSize = (
          783
          307)
        object lblTitulo: TLabel
          Left = 12
          Top = 24
          Width = 170
          Height = 15
          Caption = 'Pesquisar: Descri'#231#227'o de Grupo:'
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
          Top = 54
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
        object Pesquisa: TEdit
          Left = 208
          Top = 22
          Width = 423
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = PesquisaChange
        end
        object chkTodos: TCheckBox
          Left = 1039
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
          TabOrder = 1
        end
        object Todos: TCheckBox
          Left = 646
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
        object dbgrd1: TDBGrid
          Left = 0
          Top = 96
          Width = 783
          Height = 211
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
          TabOrder = 3
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
              FieldName = 'CodGrupo'
              Title.Caption = 'Codigo de Grupo'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodProduto'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DescGrupo'
              Title.Caption = 'Descri'#231#227'o de Grupo'
              Width = 248
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ativo'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DataCadastro'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'AtivoGrupo'
              Title.Caption = 'Ativo'
              Width = 70
              Visible = True
            end>
        end
      end
      object PagManutencao: TTabSheet
        Caption = 'Manuten'#231#227'o'
        ImageIndex = 1
        object lbl1: TLabel
          Left = 25
          Top = 63
          Width = 93
          Height = 15
          Caption = 'Codigo de Grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 169
          Top = 63
          Width = 109
          Height = 15
          Caption = 'Descri'#231#227'o de Grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtCodCliente: TDBText
          Left = 35
          Top = 84
          Width = 90
          Height = 13
          AutoSize = True
          DataField = 'CodGrupo'
          DataSource = DSQueryGrupo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl82: TLabel
          Left = 169
          Top = 150
          Width = 3
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 650
          Top = 63
          Width = 30
          Height = 15
          Caption = 'Ativo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBNome: TDBEdit
          Left = 169
          Top = 84
          Width = 441
          Height = 23
          CharCase = ecUpperCase
          DataField = 'DescGrupo'
          DataSource = DSQueryGrupo
          Enabled = False
          TabOrder = 0
        end
        inline FrameBtn: TFrmFrameToolBar
          Left = 0
          Top = 278
          Width = 783
          Height = 29
          Align = alBottom
          TabOrder = 1
          ExplicitTop = 174
          ExplicitWidth = 783
          ExplicitHeight = 29
          inherited TollBar: TToolBar
            Width = 783
            ExplicitWidth = 781
          end
          inherited DataSet: TActionList
            inherited dtstnsrt: TDataSetInsert
              DataSource = DSQueryGrupo
            end
          end
        end
        object DBComboBox: TDBComboBox
          Left = 648
          Top = 84
          Width = 104
          Height = 23
          DataField = 'Ativo'
          DataSource = DSQueryGrupo
          Enabled = False
          Items.Strings = (
            'SIM'
            'N'#194'O')
          TabOrder = 2
        end
      end
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 733
    Top = 107
  end
  object DSQueryListagem: TDataSource
    DataSet = QueryListagem
    Left = 613
    Top = 147
  end
  object DSQueryGrupo: TDataSource
    DataSet = QueryGrupo
    Left = 441
    Top = 147
  end
  object QueryListagem: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    BeforeEdit = QueryListagemBeforeEdit
    Parameters = <>
    SQL.Strings = (
      
        'select Grupo.*,case when Grupo.Ativo = '#39'S'#39' then '#39'Sim'#39' else '#39'N'#194'O'#39 +
        ' END as AtivoGrupo from Grupo')
    Left = 637
    Top = 147
    object QueryListagemCodGrupo: TAutoIncField
      FieldName = 'CodGrupo'
      ReadOnly = True
    end
    object QueryListagemCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object QueryListagemDescGrupo: TStringField
      FieldName = 'DescGrupo'
      Size = 255
    end
    object QueryListagemAtivo: TStringField
      FieldName = 'Ativo'
      FixedChar = True
      Size = 1
    end
    object QueryListagemDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
    object QueryListagemAtivoGrupo: TStringField
      FieldName = 'AtivoGrupo'
      ReadOnly = True
      Size = 3
    end
  end
  object QueryGrupo: TADOQuery
    Connection = frmViewBase.Base
    CursorType = ctStatic
    BeforeInsert = QueryGrupoBeforeInsert
    BeforeEdit = QueryGrupoBeforeEdit
    AfterPost = QueryGrupoAfterPost
    AfterCancel = QueryGrupoAfterCancel
    Parameters = <
      item
        Name = 'CodGrupo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from grupo where CodGrupo = :CodGrupo')
    Left = 469
    Top = 147
    object QueryGrupoCodGrupo: TAutoIncField
      FieldName = 'CodGrupo'
      ReadOnly = True
    end
    object QueryGrupoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object QueryGrupoDescGrupo: TStringField
      FieldName = 'DescGrupo'
      Size = 255
    end
    object QueryGrupoAtivo: TStringField
      FieldName = 'Ativo'
      FixedChar = True
      Size = 1
    end
    object QueryGrupoDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
  end
end
