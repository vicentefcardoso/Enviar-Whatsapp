program EnviarWhatsapp;

uses
  Vcl.Forms,
  FrmPrincipal in 'FrmPrincipal.pas' {FrmPrincial};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincial, FrmPrincial);
  Application.Run;
end.
