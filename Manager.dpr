program Manager;

uses
  Vcl.Forms,
  Login in 'Login.pas' {Form1},
  Main in 'Main.pas' {Form2},
  Edit in 'Edit.pas' {Form3},
  About in 'About.pas' {Form4},
  Rename in 'Rename.pas' {Form5},
  Connect in 'Connect.pas' {DataModule1: TDataModule},
  Move in 'Move.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
