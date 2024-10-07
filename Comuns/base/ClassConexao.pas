unit ClassConexao;

interface

uses
  ADODB,  // Unidade para trabalhar com ADO no Delphi
  System.Classes,
  System.SysUtils,
  System.IniFiles;

type
  TConexao = class
  private
    FCaminhoINI: string;
    FIniFile: TIniFile;
    FDatabase: string;
    FServidor: string;
    FPorta: integer;
    FUserName: string;
    FPassword: string;

  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;

    procedure PutArquivoINI;
    function GetConfigConnection(ADOConn: TADOConnection): TADOConnection; virtual;

    property CaminhoINI: string read FCaminhoINI;
    property IniFile: TIniFile read FIniFile;
    property DataBase: string read FDatabase;
    property Servidor: string read FServidor;
    property Porta: integer read FPorta;
    property UserName: string read FUserName;
    property Password: string read FPassword;

    const
      _NOME_ARQUIVO_INI = '\db\Conexao.ini';
  end;

implementation

{ TConexao }

constructor TConexao.Create(AOwner: TComponent);
begin
  inherited Create;
end;

destructor TConexao.Destroy;
begin
  inherited;
end;

function TConexao.GetConfigConnection(ADOConn: TADOConnection): TADOConnection;
begin
  Result := ADOConn; // Retorna o mesmo objeto TADOConnection

  try
    FCaminhoINI := ExtractFileDir(ParamStr(0)) + _NOME_ARQUIVO_INI;

    // Verifica se o arquivo INI não existe e o cria se necessário
    if not FileExists(FCaminhoINI) then
    begin
      FIniFile := TIniFile.Create(FCaminhoINI);
      try
        // Configuração padrão ou valores iniciais para SQL Server
        FIniFile.WriteString('Conexao', 'DataBase', 'TotalControle_JoseThiago');
        FIniFile.WriteString('Conexao', 'Server', 'empresaconexao003.ddns.net,7210');
        FIniFile.WriteInteger('Conexao', 'Porta', 1433);  // Porta padrão do SQL Server
        FIniFile.WriteString('Conexao', 'User', 'sa');
        FIniFile.WriteString('Conexao', 'Pass', 'SenhaEbtTestes');
      finally
        FIniFile.Free;
      end;
    end;

    FIniFile := TIniFile.Create(FCaminhoINI);
    try
      FDataBase := FIniFile.ReadString('Conexao', 'Database', 'TotalControle_JoseThiago');
      FServidor := FIniFile.ReadString('Conexao', 'Server', 'empresaconexao003.ddns.net,7210');
      FPorta := FIniFile.ReadInteger('Conexao', 'Porta', 1433);
      FUserName := FIniFile.ReadString('Conexao', 'User', 'sa');
      FPassword := FIniFile.ReadString('Conexao', 'Pass', 'SenhaEbtTestes');

      // Configura a conexão ADO para SQL Server
      ADOConn.ConnectionString :=
        'Provider=SQLOLEDB;' +
        'Data Source=' + FServidor + ',' + FPorta.ToString + ';' +
        'Initial Catalog=' + FDataBase + ';' +
        'User ID=' + FUserName + ';' +
        'Password=' + FPassword + ';';

      ADOConn.LoginPrompt := False; // Desabilita a solicitação de login
    finally
      FIniFile.Free;
    end;
  except
    on E: Exception do
      raise Exception.Create('Error: ' + E.Message);
  end;
end;

procedure TConexao.PutArquivoINI;
begin
  FCaminhoINI := ExtractFileDir(ParamStr(0)) + _NOME_ARQUIVO_INI;

  // Verifica se o arquivo INI não existe e o cria se necessário
  if not FileExists(FCaminhoINI) then
  begin
    FIniFile := TIniFile.Create(FCaminhoINI);
    try
      // Configuração dos valores da conexão do SQL Server
      FIniFile.WriteString('Conexao', 'DataBase', 'TotalControle_JoseThiago');
      FIniFile.WriteString('Conexao', 'Server', 'empresaconexao003.ddns.net,7210');
      FIniFile.WriteInteger('Conexao', 'Porta', 1433);
      FIniFile.WriteString('Conexao', 'User', 'sa');
      FIniFile.WriteString('Conexao', 'Pass', 'SenhaEbtTestes');
    finally
      FIniFile.Free;
    end;
  end;
end;

end.

