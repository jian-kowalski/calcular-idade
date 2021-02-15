program CalculaIdade;

uses
  Vcl.Forms,
  uPessoa in 'src\classe\uPessoa.pas',
  uFrmPrincipal in 'src\view\uFrmPrincipal.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
