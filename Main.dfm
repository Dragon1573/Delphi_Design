object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 49
  ClientWidth = 209
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object F1: TMenuItem
      Caption = #31995#32479'(&S)'
      object Q1: TMenuItem
        Caption = #36864#20986'(&Q)'
        ShortCut = 32883
        OnClick = Q1Click
      end
    end
    object M1: TMenuItem
      Caption = #25143#31821#31649#29702'(&M)'
      object G1: TMenuItem
        Caption = #25143#31821#36801#31227'(&G)'
        OnClick = G1Click
      end
      object N1: TMenuItem
        Caption = #22995#21517#21464#26356'(&R)'
      end
    end
    object A1: TMenuItem
      Caption = #20851#20110'(&A)'
      OnClick = A1Click
    end
  end
end