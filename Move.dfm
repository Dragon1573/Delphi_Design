object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 432
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 464
    Top = 0
    Width = 325
    Height = 432
    Align = alRight
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 16
      Width = 57
      Height = 19
      Caption = #22995#21517#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 65
      Width = 57
      Height = 19
      Caption = #24615#21035#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 14
      Top = 111
      Width = 76
      Height = 19
      Caption = #36523#20221#35777#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 154
      Width = 95
      Height = 19
      Caption = #25143#31821#22320#22336#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 202
      Width = 95
      Height = 19
      Caption = #32852#31995#26041#24335#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 136
      Top = 248
      Width = 75
      Height = 25
      Caption = #20462#25913
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 18
      Width = 193
      Height = 27
      DataField = 'Name'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBComboBox1: TDBComboBox
      Left = 112
      Top = 62
      Width = 193
      Height = 27
      DataField = 'Sex'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = []
      Items.Strings = (
        #30007
        #22899)
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 108
      Width = 193
      Height = 27
      DataField = 'ID_Num'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 112
      Top = 151
      Width = 193
      Height = 27
      DataField = 'Address'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 112
      Top = 196
      Width = 193
      Height = 27
      DataField = 'Tel_No'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 432
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 462
      Height = 430
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Persist Security Info=False;User ID=sa;Init' +
      'ial Catalog=Manager;Data Source=LEGEND1949\EXPRESS_2017;Use Proc' +
      'edure for Prepare=1;Auto Translate=True;Packet Size=4096;Worksta' +
      'tion ID=LEGEND1949;Initial File Name="";Use Encryption for Data=' +
      'False;Tag with column collation when possible=False;MARS Connect' +
      'ion=False;DataTypeCompatibility=0;Trust Server Certificate=False' +
      ';Server SPN="";Application Intent=READWRITE'
    Provider = 'SQLNCLI11.1'
    Left = 40
    Top = 312
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'People'
    Left = 120
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 192
    Top = 312
  end
  object ADOQuery1: TADOQuery
    DataSource = DataSource1
    Parameters = <>
    Left = 264
    Top = 312
  end
end
