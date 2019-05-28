object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #25143#31821#25644#36801#21382#21490
  ClientHeight = 426
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 695
    Height = 426
    Align = alClient
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Move'
    Left = 16
    Top = 376
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 80
    Top = 376
  end
end
