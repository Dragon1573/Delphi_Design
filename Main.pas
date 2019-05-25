unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    Q1: TMenuItem;
    M1: TMenuItem;
    A1: TMenuItem;
    G1: TMenuItem;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Q1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure G1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
  uses Login, Move, About;
{$R *.dfm}

procedure TForm2.A1Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Form2.Visible := False;
end;

procedure TForm2.G1Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm2.Q1Click(Sender: TObject);
begin
  Form1.Close;
end;

end.
