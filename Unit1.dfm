object futama: Tfutama
  Left = 361
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Simpan ListView ke Db'
  ClientHeight = 395
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 376
    Width = 578
    Height = 19
    Panels = <
      item
        Text = 'mboloz.wordpress.com'
        Width = 50
      end>
  end
  object pg: TPageControl
    Left = 0
    Top = 0
    Width = 578
    Height = 376
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    TabWidth = 120
    object TabSheet1: TTabSheet
      Caption = 'Baca Excel'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 570
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 12
          Width = 16
          Height = 13
          Caption = 'File'
        end
        object Edit1: TEdit
          Left = 33
          Top = 9
          Width = 288
          Height = 21
          TabOrder = 0
        end
        object Button1: TButton
          Left = 324
          Top = 9
          Width = 28
          Height = 20
          Cursor = crHandPoint
          Caption = '...'
          TabOrder = 1
          OnClick = Button1Click
        end
        object bclr: TButton
          Left = 368
          Top = 6
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Caption = 'Bersih'
          TabOrder = 2
          OnClick = FormActivate
        end
        object bsv: TButton
          Left = 456
          Top = 6
          Width = 108
          Height = 25
          Cursor = crHandPoint
          Caption = 'Pindah ke DB'
          TabOrder = 3
          OnClick = bsvClick
        end
      end
      object ListView1: TListView
        Left = 0
        Top = 41
        Width = 570
        Height = 307
        Align = alClient
        Columns = <>
        ReadOnly = True
        RowSelect = True
        TabOrder = 1
        ViewStyle = vsReport
        OnClick = ListView1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Database'
      ImageIndex = 1
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 34
        Width = 570
        Height = 314
        Align = alClient
        AutoFitColWidths = True
        DataSource = dsc
        DynProps = <>
        Flat = True
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 570
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Button2: TButton
          Left = 3
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Clear DB'
          TabOrder = 0
          OnClick = Button2Click
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel Files |*.xls;*.xlsx'
    Title = 'Select Excel files'
    Left = 32
    Top = 208
  end
  object XPManifest1: TXPManifest
    Left = 560
    Top = 360
  end
  object dsc: TDataSource
    DataSet = qry
    Left = 92
    Top = 240
  end
  object con: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=latihan.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 60
    Top = 240
  end
  object qry: TADOQuery
    Active = True
    Connection = con
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from siswa')
    Left = 28
    Top = 240
  end
end
