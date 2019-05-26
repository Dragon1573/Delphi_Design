unit Edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.Win.ADODB, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    ADOQuery1: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button3: TButton;
    ComboBox2: TComboBox;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    Panel6: TPanel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
  uses Connect, Rename, Move;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE [People] SET [Name] = ''' + DBEdit1.Text +
    ''' WHERE [ID_Num] = ' + DBEdit2.Text);
  ADOQuery1.SQL.Add('UPDATE [People] SET [Sex] = ''' + DBComboBox1.Text +
    ''' WHERE [ID_Num] = ' + DBEdit2.Text);
  ADOQuery1.SQL.Add('UPDATE [People] SET [Address] = ''' + DBEdit3.Text +
    ''' WHERE [ID_Num] = ' + DBEdit2.Text);
  ADOQuery1.SQL.Add('UPDATE [People] SET [Tel_No] = ' + DBEdit4.Text +
    ' WHERE [ID_Num] = ' + DBEdit2.Text);
  ADOQuery1.SQL.Add('UPDATE [People] SET [Date] = GETDATE() WHERE [ID_Num] = '
    + DBEdit2.Text);
  ADOQuery1.ExecSQL;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM [People]');
  ADOQuery1.Open;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  if (ComboBox1.Text = '姓名') then
  begin
    ADOQuery1.SQL.Add('SELECT * FROM [People] WHERE [Name] = ''' + Edit1.Text
      + '''');
  end
  else if (ComboBox1.Text = '性别') then
  begin
    ADOQuery1.SQL.Add('SELECT * FROM [People] WHERE [Sex] = ''' + Edit1.Text
      + '''');
  end
  else if (ComboBox1.Text = '身份证号') then
  begin
    ADOQuery1.SQL.Add('SELECT * FROM [People] WHERE [ID_Num] = ' + Edit1.Text);
  end
  else if (ComboBox1.Text = '户籍地址') then
  begin
    ADOQuery1.SQL.Add('SELECT * FROM [People] WHERE [Address] = '''
      + Edit1.Text + '''');
  end
  else if (ComboBox1.Text = '联系方式') then
  begin
    ADOQuery1.SQL.Add('SELECT * FROM [People] WHERE [Tel_No] = ' + Edit1.Text);
  end;
  showMessage(ADOQuery1.SQL.Text);
  ADOQuery1.Open;
  Edit1.Text := '';
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(
    'INSERT INTO [People] VALUES(''' + Edit2.Text + ''', ''' + ComboBox2.Text
      + ''', ' + Edit4.Text + ', ''' + Edit5.Text + ''', ' + Edit6.Text
      + ', GETDATE())'
  );
  ADOQuery1.ExecSQL;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM [People]');
  ADOQuery1.Open;
  ADOTable1.Close;
  ADOTable1.Open;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('DELETE FROM [People] WHERE [ID_Num] = ' + DBEdit5.Text);
  ADOQuery1.ExecSQL;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM [People]');
  ADOQuery1.Open;
  ADOTable1.Close;
  ADOTable1.Open;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  AdoTable1.Active := True;
end;

end.
