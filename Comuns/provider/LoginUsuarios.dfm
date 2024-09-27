object FormLoginUsuarios: TFormLoginUsuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Login de Usuarios'
  ClientHeight = 380
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 391
    Height = 380
    Align = alClient
    TabOrder = 0
    object lblNome: TLabel
      Left = 55
      Top = 145
      Width = 127
      Height = 21
      Caption = 'Nome de Usuario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSenha: TLabel
      Left = 55
      Top = 211
      Width = 44
      Height = 21
      Caption = 'Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 383
      Height = 37
      Align = alTop
      Alignment = taCenter
      Caption = 'Sistema ERP - Total Controle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 366
    end
    object lblNome1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 52
      Width = 383
      Height = 75
      Margins.Top = 8
      Align = alTop
      Alignment = taCenter
      Caption = 
        'Bem-vindo ao nosso Sistema ERP! Aqui, voc'#234' encontra'#13#10' uma solu'#231#227 +
        'o completa para otimizar a gest'#227'o da sua '#13#10'empresa, integrando f' +
        'inan'#231'as, vendas e estoque em uma'#13#10' '#250'nica plataforma. Acesse suas' +
        ' informa'#231#245'es de forma '#13#10'r'#225'pida e segura. Entre com suas credenci' +
        'ais e transforme sua gest'#227'o!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16481536
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 360
    end
    object EditNome: TEdit
      Left = 55
      Top = 172
      Width = 275
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 199
      Top = 288
      Width = 133
      Height = 41
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 1
        Top = 1
        Width = 131
        Height = 39
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Sair'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Glyph.Data = {
          42100000424D4210000000000000420000002800000020000000200000000100
          20000300000000100000EC000000EC00000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFAA0E12FFB0
          0C2AFFB20C42FFB20C42F5A80A32E99608220000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFF0001FFB20C42FFB10C8FFFB00CDBFFB00CFFFFB0
          0CFFFFB00CFFFDAE0BFFE19003FFD88500FFDD8B01FAE29004D3EA99056CFFFF
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFB00B44FFB00DCBFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFDAE0BFFE19003FFD88500FFD88500FFD88500FFD88500FFD88500FFDE8B
          02F6E895047B0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFB1
          0B17FFB00DB5FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFDAE
          0BFFE19003FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD885
          00FFD88500FFE19002E7EB960727000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFB10B2EFFB0
          0CE5FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFDAE0CFFE290
          03FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD885
          00FFD88500FFD88500FFDC8A01FBEC9906500000000000000000000000000000
          00000000000000000000000000000000000000000000FFB10B2EFFB00CEFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFDAE0BFFE19003FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD885
          00FFD88500FFD88500FFD88500FFDB8801FEEC98064F00000000000000000000
          000000000000000000000000000000000000FFB10B17FFB00CE5FFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFDAE0CFFE29003FFD88500FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD885
          00FFD88500FFD88500FFD88500FFD88500FFDC8A01FBEC950629000000000000
          000000000000000000000000000000000000FFB00DB7FFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFDAE0BFFE19003FFD88500FFD88500FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFE19003E7000000000000
          0000000000000000000000000000FFB10B48FFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFF0C06AFFECC586FFECC586FFECC586FFECC5
          86FFECC586FFECC586FFECC586FFECC586FFECC586FFECC586FFE7B564FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFE896047A0000
          00000000000000000000FFFF0001FFAF0CCDFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFF9E7C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E1C0FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFDE8B02F6FFFF
          00010000000000000000FFB10B45FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFF9E7C9FFFFFFFFFFE8B769FFE6B05AFFE6B0
          5AFFE6B05AFFE6B05AFFE6B05AFFE6B05AFFE9BA6EFFFFFFFFFFF5E1C0FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFEA99
          056C0000000000000000FFB00C92FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFF9E7C9FFFFFFFFFFDC9018FFD88500FFD885
          00FFD88500FFD88500FFD88500FFD88500FFDD9420FFFFFFFFFFF5E1C0FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFE291
          04D20000000000000000FFB00CDCFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFAAB0AFFE6AB4CFFE7B361FFD98909FFD88500FFE09F
          37FFD88500FFD88500FFD88500FFD88500FFDD9420FFFFFFFFFFF5E1C0FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFDD8A
          01F900000000FFAA0C15FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFAAB0BFFDD8A02FFD88500FFD88500FFD88500FFE7B361FFFFFF
          FEFFEDC789FFD88500FFD88500FFD88500FFDD9420FFFFFFFFFFF5E1C0FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD885
          00FFE7970820FFB00B2DFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFAAB0AFFDD8A02FFD88500FFD88500FFD88500FFD88500FFDF9B2FFFFCF5
          EBFFFFFFFFFFEDC88CFFD88500FFD88500FFDD9420FFFFFFFFFFF5E1C0FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFE290
          03FFFAA80B2FFFB10B45FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFF5CF8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEDC88CFFD88500FFDD9420FFFFFFFFFFF5E1C0FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFD88500FFE19003FFFDAE
          0BFFFFAF0C40FFAF0B46FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFF5CC81FFFDF7EEFFFDF7EEFFFDF7EEFFFDF7EEFFFDF7EEFFFCF7EEFFFEFC
          F9FFFFFFFFFFFFFFFFFFEBBF7AFFD88500FFDD9420FFFFFFFFFFF5E1C0FFD885
          00FFD88500FFD88500FFD88500FFD88500FFD88500FFE29003FFFEAF0CFFFFB0
          0CFFFFB10C41FFB10B2EFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFE69404FFE1A039FFFDF8
          F1FFFFFFFFFFEBC17DFFD88500FFD88500FFDD9420FFFFFFFFFFF5E1C0FFD885
          00FFD88500FFD88500FFD88500FFD88500FFE19003FFFDAE0BFFFFB00CFFFFB0
          0CFFFFAE0C29FFAA0C15FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFE69404FFD88500FFE5AF57FFFFFE
          FCFFEBBF7AFFD88500FFD88500FFD88500FFDD9420FFFFFFFFFFF5E1C0FFD885
          00FFD88500FFD88500FFD88500FFE19003FFFDAE0BFFFFB00CFFFFB00CFFFFB0
          0CFFFFAF101000000000FFB00BDEFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFEFB54FFFE7B361FFD98909FFD88500FFDE99
          2AFFD88500FFD88500FFD88500FFD88500FFDD9420FFFFFFFFFFF5E1C0FFD885
          00FFD88500FFD88500FFE29003FFFEAF0CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CDC0000000000000000FFAF0C93FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFF9E7C9FFFFFFFFFFDC9018FFD88500FFD885
          00FFD88500FFD88500FFD88500FFD88500FFDD9420FFFFFFFFFFF5E1C0FFD885
          00FFD88500FFE19003FFFDAE0BFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0D8E0000000000000000FFB10B45FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFF9E7C9FFFFFFFFFFE8B769FFE6B05AFFE6B0
          5AFFE6B05AFFE6B05AFFE6B05AFFE6B05AFFE9BA6EFFFFFFFFFFF5E1C0FFD885
          00FFE19003FFFDAE0BFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB1
          0C410000000000000000FFFF0001FFAF0CCDFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFF9E7C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E1C0FFE190
          03FFFDAE0BFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00DCBFFFF
          0001000000000000000000000000FFAF0A49FFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFF6C66CFFF5CF89FFF5CF89FFF5CF89FFF5CF
          89FFF5CF89FFF5CF89FFF5CF89FFF5CF89FFF5CF89FFF5CF89FFF3C268FFFEAF
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00B440000
          000000000000000000000000000000000000FFB00CB8FFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00BB4000000000000
          000000000000000000000000000000000000FFB50B18FFB00CE6FFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CE4FFAE0C16000000000000
          00000000000000000000000000000000000000000000FFAE0B2FFFB00CEFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CEFFFB00B2D00000000000000000000
          0000000000000000000000000000000000000000000000000000FFAE0B2FFFB0
          0CE6FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CE4FFB00B2D0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFB5
          0B18FFB00CB8FFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB10DB6FFB10B17000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFB00B44FFB00DCCFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB0
          0CD2FFB10C550000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFF0001FFB00B44FFB00C92FFB00BDEFFB00CFFFFB0
          0CFFFFB00CFFFFB00CFFFFB00CFFFFB00CFFFFB10CDDFFB00C91FFAF0B43FFFF
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFAA0C15FFAE
          0C2CFFB00B44FFAF0B43FFB20C2BFFB30D140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        ParentFont = False
        OnClick = SpeedButton1Click
        ExplicitTop = 288
        ExplicitWidth = 183
      end
    end
  end
  object EditSenha: TEdit
    Left = 55
    Top = 238
    Width = 275
    Height = 23
    PasswordChar = '*'
    TabOrder = 1
  end
  object pnl31: TPanel
    Left = 34
    Top = 288
    Width = 133
    Height = 41
    TabOrder = 2
    object btn11: TSpeedButton
      Left = 1
      Top = 1
      Width = 131
      Height = 39
      Cursor = crHandPoint
      Align = alClient
      Caption = 'Concluir'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Glyph.Data = {
        42100000424D4210000000000000420000002800000020000000200000000100
        20000300000000100000B9040000B904000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000800000025B2E
        001C5D29002C5D29002C5B2E001C800000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000005C2E00275C2C00805C2B00C55C2B00F75C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00F75C2B00C45C2A007F5A2900250000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005C2E00275B2B00AD5C2B00FF5C2B00FC5C2C00C75D2C008C5D2C
        00685D2A00555D2A00555D2C00685C2B008D5C2C00C75C2B00FC5C2B00FE5C2B
        00AC5E2800260000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006633
        00055C2B008E5C2B00FB5C2B00EA5D2A0079602B001800000000000000000000
        00000000000000000000000000000000000000000000602B00185C2C007A5C2B
        00EB5C2B00FA5D2C008C40400004000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000005E2800135D2B
        00BE5C2B00FD5B2A00916227000D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005B24
        000E5C2B00935C2B00FE5C2B00BD552B00120000000000000000000000000000
        00000000000000000000000000000000000000000000592600145C2B00DA5C2B
        00F85C2B00530000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005D2B004D5C2B00F35C2B00D8552B001200000000000000000000
        000000000000000000000000000000000000663300055D2B00BE5C2B00F45D2B
        0047000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000005B2900385C2B00F25C2B00C2552B0006000000000000
        0000000000000000000000000000000000005D2B008F5C2B00FF5C2B00CF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000005C2B00CF5C2B00FF5C2A008B000000000000
        0000000000000000000000000000592D00285C2B00FB5C2B00FF5C2B00FE5C2B
        0024000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000005C2B00245C2B00FE5C2B00FF5C2B00FA5E2800260000
        00000000000000000000000000005C2B00AE5C2B00FF5C2B00FF5C2B00FF5C2B
        0096000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000005C2C00985C2B00FF5C2B00FF5C2B00FF5C2B00AC0000
        00000000000000000000592D00285C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FD5A2A004F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005B2C00515C2B00FD5C2B00FF5C2B00FF5C2B00FF5C2B00FE5A29
        002500000000000000005C2B00825C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FA5D2B007140400004000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004040
        00045B2A00735C2B00FA5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2A
        007F00000000000000005C2C00C75C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00E15B2A00915B2A006D5D2B00665D2B00665D2B
        00665D2B00665D2B00665D2B00665D2B00665D2B00665B2A006D5D2C00925D2B
        00E25C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00C400000000555500035C2B00F75C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FE5C2B00FE5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00F6800000025E2B001E5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00F45B2C00865D29
        002C66330005663300055B2D002D5C2B00885C2B00F55C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5B2E001C5B2D002D5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00DA5A290025000000000000
        0000000000000000000000000000000000005E2800265C2B00DB5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5D29002C5B2D002D5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00F05F2C002300000000000000000000
        000000000000000000000000000000000000000000005C2B00245C2B00F15C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5D29002C5E2B001E5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5B2C007B0000000000000000000000000000
        00000000000000000000000000000000000000000000000000005B2B007E5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5B2E001C555500035C2B00F75C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5E2B001E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000602800205C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00F680000002000000005C2B00C85C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00F0000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005C2B
        00F15C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00C500000000000000005B2B00835C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5D2B00ED000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005D2B
        00ED5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2C
        008000000000000000005D2C00295C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FE592600140000000000000000000000000000
        0000000000000000000000000000000000000000000000000000613100155C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FE5C2E
        00270000000000000000000000005B2B00B05C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5D2C00680000000000000000000000000000
        00000000000000000000000000000000000000000000000000005D2B006B5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5B2B00AD0000
        00000000000000000000000000005D2C00295C2B00FB5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00E3552B001200000000000000000000
        000000000000000000000000000000000000000000005E2800135C2B00E55C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FB5C2E00270000
        0000000000000000000000000000000000005B2A00915C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00C25A2D0011000000000000
        000000000000000000000000000000000000552B00125C2B00C45C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B008E000000000000
        000000000000000000000000000000000000552B00065C2C00C15C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5B2B00DF5C2B005E5D2E
        000B0000000000000000552B000C5B2B005F5C2B00E05C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5D2B00BE66330005000000000000
        00000000000000000000000000000000000000000000592600145C2B00DB5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00F95C2B00DB5C2B00DB5C2B00F95C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00DA5E28001300000000000000000000
        00000000000000000000000000000000000000000000000000005E2800135D2B
        00BE5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00C35D2E00160000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000552B
        00065B2A00915C2B00FB5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FB5D2B008F66330005000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000592D00285C2C00AA5C2B00FE5C2B00FF5C2B00FF5C2B00FF5C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5C2B00FF5B2C
        00BB5B2D002D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000005D2C00295B2B00835C2C00C75C2B00F85C2B
        00FF5C2B00FF5C2B00FF5C2B00FF5C2B00F85B2B00C65D2B0081592D00280000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000055550003582C
        001D5E2C002E5E2C002E582C001D555500030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      ParentFont = False
      OnClick = btn11Click
      ExplicitTop = 288
      ExplicitWidth = 183
    end
  end
  object ConsultaUsuario: TADOQuery
    Connection = frmViewBase.Base
    Parameters = <>
    Left = 352
    Top = 208
  end
  object Timer1: TTimer
    Left = 352
    Top = 144
  end
end
