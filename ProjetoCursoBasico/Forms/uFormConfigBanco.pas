unit uFormConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, uBiblioteca;

type
  TFormConfigBanco = class(TForm)
    Image1: TImage;
    edtLocal: TEdit;
    Label1: TLabel;
    btnConfigurar: TButton;
    opnPastas: TOpenDialog;
    procedure btnConfigurarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure Configura;
  public
    { Public declarations }
  end;

var
  FormConfigBanco: TFormConfigBanco;

implementation

{$R *.dfm}
{ TFormConfigBanco }

procedure TFormConfigBanco.btnConfigurarClick(Sender: TObject);
begin
  Configura;
end;

procedure TFormConfigBanco.Configura;
var
  vFileName: string;
begin
  if opnPastas.Execute then
  begin
    edtLocal.Text := opnPastas.FileName;
    vFileName := ExtractFilePath(Application.ExeName) + 'config.ini';
    SetValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edtLocal.Text);
    ShowMessage('Pronto.');
    Self.Close;
  end;
end;

procedure TFormConfigBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
