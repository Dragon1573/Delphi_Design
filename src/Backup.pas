unit Backup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.FileCtrl, Vcl.Grids,
  Vcl.Outline, Vcl.Samples.DirOutln;

type
  TForm7 = class(TForm)
    StatusBar1: TStatusBar;
    Image1: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    GridPanel3: TGridPanel;
    FileListBox1: TFileListBox;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    Button3: TButton;
    Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
  uses Connect;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
  DataModule1.ADOConnection1.Close;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(
    'BACKUP DATABASE [Manager] TO DISK = ''' +
    ExtractFilePath(Application.ExeName) + '\..\..\..\bak\' +
    string.Join('-',  DateTimeToStr(Now).Split([' ', '/', ':'])) +
    '.bak'''
  );
  try
    ADOQuery1.ExecSQL;
    StatusBar1.Panels[0].Text := '±¸·Ý³É¹¦£¡';
  except
    StatusBar1.Panels[0].Text := '´íÎó£º±¸·ÝÊ§°Ü£¡';
  end;
  ADOQuery1.Close;
  ADOQuery1.SQL.clear;
  FileListBox1.Update;
  DataModule1.ADOConnection1.Close;
  
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  FileListBox1.Update;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  DataModule1.ADOConnection1.Close;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(
    'RESTORE DATABASE [Manager] FROM DISK = ''' +
    FileListBox1.FileName + ''' WITH REPLACE'
  );
  ShowMessage(ADOQuery1.SQL.Text);
  try
    ADOQuery1.ExecSQL;
    StatusBar1.Panels[0].Text := '»Ö¸´³É¹¦£¡';
    DataModule1.ADOConnection1.Open();
  except
    StatusBar1.Panels[0].Text := '´íÎó£º»Ö¸´Ê§°Ü£¡'
  end;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  FileListBox1.Update;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
  DeleteFile(FileListBox1.FileName);
  FileListBox1.Update;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.ADOConnection1.Open();
end;

end.
