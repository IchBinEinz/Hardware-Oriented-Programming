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
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 633
    Height = 417
    Title.Text.Strings = (
      'TChart')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 1000.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1000.000000000000000000
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
      OutLine.Width = 0
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
  object Button1: TButton
    Left = 647
    Top = 48
    Width = 75
    Height = 25
    Caption = 'UP'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 647
    Top = 79
    Width = 75
    Height = 25
    Caption = 'DOWN'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 647
    Top = 110
    Width = 75
    Height = 25
    Caption = 'LEFT'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 647
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Right'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 647
    Top = 172
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 647
    Top = 205
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 728
    Top = 328
  end
end
