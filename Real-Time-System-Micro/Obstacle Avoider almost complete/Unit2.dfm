object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 504
  ClientWidth = 771
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
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 481
    Height = 417
    Title.Text.Strings = (
      'TChart')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 10.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 10.000000000000000000
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TPointSeries
      ClickableLine = False
      Pointer.HorizSize = 8
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 8
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      SeriesColor = clRed
      Brush.BackColor = clDefault
      DrawStyle = dsCurve
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button5: TButton
    Left = 495
    Top = 188
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 495
    Top = 219
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 2
    OnClick = Button6Click
  end
  object Edit1: TEdit
    Left = 495
    Top = 18
    Width = 42
    Height = 21
    TabOrder = 3
    Text = '2'
  end
  object Edit2: TEdit
    Left = 551
    Top = 18
    Width = 42
    Height = 21
    TabOrder = 4
    Text = '2'
  end
  object Edit3: TEdit
    Left = 495
    Top = 122
    Width = 42
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object Edit4: TEdit
    Left = 551
    Top = 122
    Width = 42
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object Edit5: TEdit
    Left = 615
    Top = 122
    Width = 42
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object Button1: TButton
    Left = 495
    Top = 45
    Width = 41
    Height = 25
    Caption = '+'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 552
    Top = 45
    Width = 41
    Height = 25
    Caption = '+'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 495
    Top = 76
    Width = 41
    Height = 25
    Caption = '-'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 552
    Top = 76
    Width = 41
    Height = 25
    Caption = '-'
    TabOrder = 11
    OnClick = Button4Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 712
    Top = 440
  end
end
