unit uBiblioteca;

interface

uses
  System.IniFiles;

  procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
  function GetValorini(pLocal, pSessao, pSubSessao: string): string;

implementation
procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
var
  vArquivo : TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);

  vArquivo.WriteString(pSessao, pSubSessao, pValor);

  vArquivo.Free;
end;

function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
var
  vArquivo: TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);

  Result := vArquivo.ReadString(pSessao, pSubSessao, '');

  vArquivo.Free;
end;
end.
