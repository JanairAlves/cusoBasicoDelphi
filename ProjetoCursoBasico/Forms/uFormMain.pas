unit uFormMain;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton, uFormCadastroCliente,
  uFormCadastroEstado, uFormCadastroCidade;

type
  TFormMain = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvPage2: TAdvPage;
    AdvPage3: TAdvPage;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvGlowButton4: TAdvGlowButton;
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}


procedure TFormMain.AdvGlowButton1Click(Sender: TObject);
begin
  FormCadastroEstado := TFormCadastroEstado.Create(Self);
  try
    FormCadastroEstado.ShowModal;
  finally
    FreeAndNil(FormCadastroEstado);
  end;
end;

procedure TFormMain.AdvGlowButton2Click(Sender: TObject);
begin
  FormCadastroCliente := TFormCadastroCliente.Create(Self);
  try
    FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
end;

procedure TFormMain.AdvGlowButton4Click(Sender: TObject);
begin
  FormCadastroCidade := TFormCadastroCidade.Create(Self);
  try
    FormCadastroCidade.ShowModal;
  finally
    FreeAndNil(FormCadastroCidade);
  end;
end;

procedure TFormMain.AdvGlowButton3Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
