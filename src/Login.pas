unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB;

type
  TForm1 = class(TForm)
    GridPanel1: TGridPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    Panel5: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    GridPanel2: TGridPanel;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  uses Main, Connect;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  // �ж��û���������Ϊ��
  if (Edit1.Text = '') then
  begin
    showMessage('�����û�������Ϊ�գ�');
    Edit1.SetFocus;
  end
  else
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    // ���Ե�¼
    ADOQuery1.SQL.Add(
      'SELECT ''TRUE'' AS [Authorized], [Alias], [Username] FROM [Controller] WHERE [Username] = '
      + '''' + Edit1.Text + ''' AND [Password] = HASHBYTES(''MD5'', ''' +
      Edit2.Text + ''')'
    );
    ADOQuery1.Open;
    // �����½�ɹ�
    if (ADOQuery1.FieldByName('Authorized').AsString = 'TRUE') then
    begin
      // �û��Ƿ��б�����
      if (ADOQuery1.FieldByName('Alias').AsString <> '') then
      begin
        Form2.Label1.Caption := '��ӭ����' + trim(ADOQuery1.FieldByName('Alias').AsString)
          + '��';
      end
      // ������ʾ�û���
      else
      begin
        Form2.Label1.Caption := '��ӭ����' + trim(ADOQuery1.FieldByName('Username').AsString)
          + '��';
      end;
      Form1.Hide;
      Form2.Show;
    end
    else
    begin
      showMessage('�����û������������');
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
end;

end.
