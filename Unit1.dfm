object Form1: TForm1
  Left = 194
  Top = 150
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 424
    Top = 8
    Width = 13
    Height = 16
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 424
    Top = 56
    Width = 99
    Height = 16
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 409
    Height = 377
    DataSource = OraDataSource1
    DynProps = <>
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 71
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAIM'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 157
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object edtID: TEdit
    Left = 424
    Top = 24
    Width = 169
    Height = 25
    MaxLength = 10
    TabOrder = 1
    OnKeyPress = edtIDKeyPress
  end
  object edtNaim: TEdit
    Left = 424
    Top = 72
    Width = 169
    Height = 21
    MaxLength = 19
    TabOrder = 2
  end
  object btn: TButton
    Left = 472
    Top = 112
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = btnClick
  end
  object OraSession1: TOraSession
    ConnectPrompt = False
    Options.Net = True
    Username = 'test_user'
    Password = 'test'
    Server = '26.240.215.212:1521:ORCL'
    Connected = True
    Left = 16
    Top = 392
  end
  object OraQuery1: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'select * from TABLE_TEST t')
    Active = True
    Left = 64
    Top = 392
    object OraQuery1ID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OraQuery1NAIM: TStringField
      FieldName = 'NAIM'
    end
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 112
    Top = 392
  end
  object qryInsert: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'insert into table_test values(:ID, :NAIM)')
    Left = 432
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
      end
      item
        DataType = ftUnknown
        Name = 'NAIM'
      end>
  end
end
