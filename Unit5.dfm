object frmExplanation: TfrmExplanation
  Left = 1475
  Top = 756
  Width = 647
  Height = 525
  Caption = 'Explaination'
  Color = clBtnFace
  Constraints.MinHeight = 71
  Constraints.MinWidth = 492
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lsbList: TListBox
    Left = 0
    Top = 33
    Width = 209
    Height = 454
    Cursor = crArrow
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 27
    ParentFont = False
    TabOrder = 0
    OnClick = lsbListClick
  end
  object memExplaination: TMemo
    Left = 214
    Top = 33
    Width = 417
    Height = 454
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object pnlToolBar: TPanel
    Left = 0
    Top = 0
    Width = 631
    Height = 33
    Align = alTop
    TabOrder = 2
    OnClick = pnlToolBarClick
    DesignSize = (
      631
      33)
    object imgBar: TImage
      Left = 0
      Top = 0
      Width = 631
      Height = 33
      Anchors = [akLeft, akTop, akRight, akBottom]
      Stretch = True
    end
    object edtSearch: TEdit
      Left = 466
      Top = 3
      Width = 158
      Height = 26
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Search'
      OnKeyDown = edtSearchKeyDown
      OnKeyUp = edtSearchKeyUp
      OnMouseUp = edtSearchMouseUp
    end
    object cmbCategory: TComboBox
      Left = 3
      Top = 3
      Width = 214
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      TabOrder = 1
      Text = 'Category'
      OnChange = cmbCategoryChange
      Items.Strings = (
        'All'
        'Date and Time'
        'Duration'
        'Engineering'
        'Logical'
        'Numeric'
        'Statistical'
        'Text'
        'Trigonometric')
    end
  end
  object cmbVolume: TComboBox
    Left = 336
    Top = 240
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'Volume'
    Visible = False
  end
  object cmbTempreture: TComboBox
    Left = 336
    Top = 216
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'Tempreture'
    Visible = False
  end
  object cmbMass: TComboBox
    Left = 336
    Top = 192
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Mass'
    Visible = False
  end
  object cmbArea: TComboBox
    Left = 336
    Top = 168
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'Area'
    Visible = False
  end
  object cmbDistance: TComboBox
    Left = 336
    Top = 144
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'Distance'
    Visible = False
    Items.Strings = (
      '')
  end
  object cmbTime: TComboBox
    Left = 336
    Top = 264
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Text = 'Time'
    Visible = False
  end
  object cmbAllConvert: TComboBox
    Left = 336
    Top = 112
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = 'All'
    Visible = False
  end
  object pnlSeperator: TPanel
    Left = 209
    Top = 33
    Width = 5
    Height = 454
    Cursor = crHSplit
    Align = alLeft
    TabOrder = 10
    OnMouseDown = pnlSeperatorMouseDown
    OnMouseMove = pnlSeperatorMouseMove
    OnMouseUp = pnlSeperatorMouseUp
  end
end
