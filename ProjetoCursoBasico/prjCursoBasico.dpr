program prjCursoBasico;

uses
  Vcl.Forms,
  uDmDados in 'Forms\uDmDados.pas' {dmDados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  uFormConfigBanco in 'Forms\uFormConfigBanco.pas' {FormConfigBanco},
  uFormCadastroPai in 'Forms\uFormCadastroPai.pas' {FormCadastroPai},
  uFormCadastroCliente in 'Forms\uFormCadastroCliente.pas' {FormCadastroCliente},
  uFormCadastroEstado in 'Forms\uFormCadastroEstado.pas' {FormCadastroEstado},
  uFormCadastroCidade in 'Forms\uFormCadastroCidade.pas' {FormCadastroCidade},
  uLookUp in 'Shared\uLookUp.pas' {LookUp: TDataModule},
  uFormMain in 'Forms\uFormMain.pas' {FormMain},
  uFormFiltroPai in 'Forms\uFormFiltroPai.pas' {FormFiltroPai};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormConfigBanco, FormConfigBanco);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TLookUp, LookUp);
  Application.CreateForm(TFormCadastroCliente, FormCadastroCliente);
  Application.CreateForm(TFormCadastroEstado, FormCadastroEstado);
  Application.CreateForm(TFormCadastroCidade, FormCadastroCidade);
  Application.CreateForm(TFormFiltroPai, FormFiltroPai);
  Application.Run;
end.
