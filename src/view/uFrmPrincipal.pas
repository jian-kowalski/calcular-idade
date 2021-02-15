unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFrmPrincipal = class(TForm)
    EB_NOME: TEdit;
    lbNome: TLabel;
    lbData: TLabel;
    mmDatas: TMemo;
    EB_DATANASCIMENTO: TDateTimePicker;
    btCalcularIdade: TButton;
    procedure btCalcularIdadeClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularIdade;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uPessoa, System.SysUtils;

{$R *.dfm}

procedure TFrmPrincipal.btCalcularIdadeClick(Sender: TObject);
begin
  CalcularIdade;
end;

procedure TFrmPrincipal.CalcularIdade;
var
  oPessoa: TPessoa;
begin
  try
    oPessoa := TPessoa.Create;
    oPessoa.Nome :=   EB_NOME.Text;
    oPessoa.DataNascimento := EB_DATANASCIMENTO.DateTime;
    mmDatas.Lines.Add(oPessoa.ImprimirDados);
  finally
    FreeAndNil(oPessoa);
  end;
end;

end.
