object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #25913#21517#21382#21490
  ClientHeight = 260
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 454
    Height = 260
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
    LockType = ltReadOnly
    TableName = 'Rename'
    Left = 16
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 80
    Top = 136
  end
end
