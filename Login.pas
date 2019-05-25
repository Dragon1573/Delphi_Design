unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  uses Main;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Edit1.Text = 'admin') then
  begin
    Form2.Show;
    Form2.WindowState := TWindowState.wsMaximized;
  end;
end;

end.
