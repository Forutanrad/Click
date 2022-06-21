object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Click'
  ClientHeight = 212
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClick = FormClick
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 27
    Width = 6
    Height = 13
    Caption = 'X'
  end
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 6
    Height = 13
    Caption = 'Y'
  end
  object Label5: TLabel
    Left = 192
    Top = 5
    Width = 64
    Height = 13
    Caption = 'Set Click Pos:'
  end
  object Label6: TLabel
    Left = 8
    Top = 5
    Width = 85
    Height = 13
    Caption = 'Current Click Pos:'
  end
  object Edit1: TEdit
    Left = 28
    Top = 24
    Width = 148
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 28
    Top = 51
    Width = 148
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 28
    Top = 84
    Width = 71
    Height = 26
    Caption = '+'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 105
    Top = 84
    Width = 71
    Height = 26
    Caption = '-'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 192
    Top = 24
    Width = 241
    Height = 137
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 192
    Top = 167
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 5
  end
  object ZylTimer1: TZylTimer
    Interval = 25.000000000000000000
    OnTimer = ZylTimer1Timer
    Left = 88
    Top = 120
  end
  object ZylTimer2: TZylTimer
    Interval = 5.000000000000000000
    OnTimer = ZylTimer2Timer
    Left = 136
    Top = 120
  end
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'rndb'
    Username = 'BI'
    Server = '192.168.0.5'
    Connected = True
    Left = 32
    Top = 8
    EncryptedPassword = 'BDFFB6FFBFFFCEFFCCFFC8FFCEFF'
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 32
    Top = 56
  end
  object TblClick: TUniTable
    TableName = 'click'
    Connection = UniConnection1
    Active = True
    Left = 32
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = TblClick
    Left = 32
    Top = 152
  end
end
