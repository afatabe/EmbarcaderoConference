object Form1: TForm1
  Left = 271
  Top = 114
  Caption = 'Form1'
  ClientHeight = 383
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 360
    Top = 8
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object ButtonStart: TButton
    Left = 24
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = ButtonStartClick
  end
  object ButtonStop: TButton
    Left = 105
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = ButtonStopClick
  end
  object EditPort: TEdit
    Left = 360
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '8765'
  end
  object ButtonOpenBrowser: TButton
    Left = 520
    Top = 25
    Width = 107
    Height = 25
    Caption = 'Open Browser'
    TabOrder = 3
    OnClick = ButtonOpenBrowserClick
  end
  object Memo1: TMemo
    Left = 0
    Top = 104
    Width = 667
    Height = 279
    Align = alBottom
    TabOrder = 4
  end
  object BitBtnMsgBluetooth: TBitBtn
    Left = 520
    Top = 73
    Width = 107
    Height = 25
    Caption = 'MSG Bluetooth'
    TabOrder = 5
    OnClick = BitBtnMsgBluetoothClick
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 272
    Top = 8
  end
  object IdUDPServer1: TIdUDPServer
    Bindings = <>
    DefaultPort = 0
    OnUDPRead = IdUDPServer1UDPRead
    Left = 272
    Top = 160
  end
  object BluetoothPC: TBluetooth
    Enabled = True
    Left = 412
    Top = 161
  end
end
