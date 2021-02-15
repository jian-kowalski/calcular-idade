unit uPessoa;

interface

type
  TPessoa = class
  private
    FbDataNasc: TDateTime;
    FcNome: String;
  public
    property Nome: String read FcNome write FcNome;
    property DataNascimento: TDateTime read FbDataNasc write FbDataNasc;
    function Idade: Integer;
    function ImprimirDados: String;
  end;

implementation

uses
  System.SysUtils, DateUtils;

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := YearsBetween(Now, FbDataNasc);
end;

function TPessoa.ImprimirDados: String;
begin
  REsult := 'Nome: ' + FcNome + ' idade : ' + Idade.ToString;
end;

end.
