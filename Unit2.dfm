object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'SQL Editor'
  ClientHeight = 632
  ClientWidth = 1303
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 125
    Width = 108
    Height = 21
    Caption = 'SQL-Command'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 342
    Width = 60
    Height = 21
    Caption = 'Ergebnis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object sqlcmd: TMemo
    Left = 8
    Top = 152
    Width = 1287
    Height = 89
    TabOrder = 0
  end
  object saveasfile: TButton
    Left = 1172
    Top = 126
    Width = 123
    Height = 25
    Caption = 'Als Datei speichern...'
    TabOrder = 1
    OnClick = saveasfileClick
  end
  object Button1: TButton
    Left = 1072
    Top = 126
    Width = 94
    Height = 25
    Caption = 'Aus Datei laden'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 1220
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Ausf'#252'hren'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 400
    Width = 1303
    Height = 232
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 369
    Width = 1300
    Height = 25
    DataSource = DataSource1
    TabOrder = 5
  end
  object MainMenu1: TMainMenu
    Left = 1088
    Top = 32
    object Action11: TMenuItem
      Caption = 'Datei'
      OnClick = BeendenExecute
      object Beenden1: TMenuItem
        Action = Beenden
        Caption = 'Beenden'
      end
    end
    object Action12: TMenuItem
      Caption = 'SQL'
      OnClick = Action1Execute
      object Action13: TMenuItem
        Action = Action1
        Caption = 'Command ausf'#252'hren'
      end
    end
  end
  object ActionList1: TActionList
    Left = 672
    Top = 24
    object Beenden: TAction
      Caption = 'Action1'
      OnExecute = BeendenExecute
    end
  end
  object ActionList2: TActionList
    Left = 896
    Top = 32
    object Action1: TAction
      Caption = 'Action1'
      OnExecute = Action1Execute
    end
  end
  object FileSaveDialog1: TFileSaveDialog
    FavoriteLinks = <>
    FileName = 'MyCommand.msqlc'
    FileTypes = <
      item
        DisplayName = '*.msqlc'
        FileMask = '*.msqlc'
      end>
    Options = []
    Left = 832
    Top = 32
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = '*.msqlc'
        FileMask = '*.msqlc'
      end>
    Options = []
    Left = 752
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 1056
    Top = 32
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 'FILE NAME=DB.udl'
    LoginPrompt = False
    Provider = 'DB.udl'
    Left = 576
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 952
    Top = 32
  end
end
