unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, ShellApi, RegularExpressions;

type
  TFrmMain = class(TForm)
    PnlCliente: TPanel;
    GrpDados: TGroupBox;
    EdtNumero: TEdit;
    Label1: TLabel;
    RdApp: TRadioButton;
    RdWeb: TRadioButton;
    BtnEnviar: TButton;
    GroupBox1: TGroupBox;
    MemoMsg: TMemo;
    procedure BtnEnviarClick(Sender: TObject);
  private
    { Private declarations }
    function ExtrairNumeros(const s: string): string;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;
  _Url: String;
  _Text: String;
  _Resultado: String;
  _NumeroWatsapp: string;

implementation

{$R *.dfm}


procedure TFrmMain.BtnEnviarClick(Sender: TObject);
begin
  if ((EdtNumero.Text = '') or (MemoMsg.Lines.Text = '')) then
  begin
    Showmessage('Preencha todos os campos!');
    exit;
  end
  else
  begin
    if RdWeb.Checked then
      _Url := 'https://web.whatsapp.com/send?phone='
    else
      _Url := 'https://api.whatsapp.com/send?phone=';

    _NumeroWatsapp := ExtrairNumeros(EdtNumero.Text);
    _Text := '&text= ';
    _Resultado := _Url + '55' + _NumeroWatsapp + _Text + '%20' + MemoMsg.Lines.Text;
    ShellExecute(Handle, 'open', Pchar(_Resultado), nil, nil, SW_SHOWMAXIMIZED);
  end;
end;

function TFrmMain.ExtrairNumeros(const s: string): string;
var
  regex: TRegEx;
  match: TMatch;
begin
  regex := TRegEx.Create('\d+');
  match := regex.match(s);
  Result := '';
  while match.Success do
  begin
    Result := Result + match.Value;
    match := match.NextMatch;
  end;
end;

end.
