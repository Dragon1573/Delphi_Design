program Manager;

uses
  Vcl.Forms,
  Login in 'Login.pas' {Form1},
  Main in 'Main.pas' {Form2},
  Move in 'Move.pas' {Form3},
  About in 'About.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
