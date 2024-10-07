unit Criptografia;

interface

uses
  BCrypt;

type
  TCriptografia = class
    public
      function GenerateHash(Const Password: string): string;
      function CompareHash(const password, HashPassword: string): Boolean;
  end;

implementation


{ TCriptografia }

function TCriptografia.CompareHash(const password, HashPassword: string): Boolean;
begin
    Result := TBCrypt.CompareHash(password, HashPassword); //Retona a a comparação do HHashPasswordas
end;

function TCriptografia.GenerateHash(const Password: string): string;
begin
    Result := TBCrypt.GenerateHash(password);  //Cria uma HashPassword para ser registrada no banco
end;

end.
