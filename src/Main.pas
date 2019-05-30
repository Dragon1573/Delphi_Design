unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    Q1: TMenuItem;
    M1: TMenuItem;
    A1: TMenuItem;
    G1: TMenuItem;
    N1: TMenuItem;
    M2: TMenuItem;
    Image1: TImage;
    Label1: TLabel;
    N2: TMenuItem;
    N3: TMenuItem;
    B1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Q1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure G1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
  uses Login, Edit, Rename, Move, About, Backup, Connect;

{$R *.dfm}

procedure TForm2.A1Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm2.B1Click(Sender: TObject);
begin
  Form7.Show;
  Form7.FileListBox1.Directory := 'D:\Program_Files_(x64)\Git\Repos\Delphi_Design\bak';
  Form7.FileListBox1.Update;
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

procedure TForm2.M2Click(Sender: TObject);
begin
  Form6.Show;
  Form6.ADOTable1.Close;
  Form6.ADOTable1.Open;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
  Form5.Show;
  Form5.ADOTable1.Close;
  Form5.ADOTable1.Open;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
  Form2.Hide;
  Label1.Caption := '';
  Form1.Show;
  Form1.SetFocus;
end;

procedure TForm2.N5Click(Sender: TObject);
begin
  Form7.Show;
  DataModule1.ADOConnection1.Close;
  Form7.FileListBox1.Directory := 'D:\Program_Files_(x64)\Git\Repos\Delphi_Design\bak';
  Form7.FileListBox1.Update;
end;

procedure TForm2.Q1Click(Sender: TObject);
begin
  Form1.Close;
end;

end.
