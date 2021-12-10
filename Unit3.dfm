object Form3: TForm3
  Left = 969
  Top = 301
  Width = 899
  Height = 675
  Caption = 'Form3'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 280
    Top = 80
    Width = 280
    Height = 24
    Caption = 'Pembayaran Uang Mahasiswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 96
    Top = 136
    Width = 84
    Height = 13
    Caption = 'Nama Mahasiswa'
  end
  object Label3: TLabel
    Left = 96
    Top = 192
    Width = 37
    Height = 13
    Caption = 'Jurusan'
  end
  object Label4: TLabel
    Left = 96
    Top = 248
    Width = 26
    Height = 13
    Caption = 'Kelas'
  end
  object Label5: TLabel
    Left = 96
    Top = 304
    Width = 57
    Height = 13
    Caption = 'Jumlah SKS'
  end
  object Edit1: TEdit
    Left = 96
    Top = 160
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 216
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'Pilih Jurusan'
    Items.Strings = (
      'Manajemen'
      'Akuntansi'
      'Ekonomi Pembangunan'
      'Ilmu Hukum'
      'Ilmu Sosial Ekonomi Pertanian'
      'Teknik Sipil'
      'Teknik Mesin'
      'Teknik Informatika'
      'Teknik Electro')
  end
  object ComboBox2: TComboBox
    Left = 96
    Top = 272
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'Pilih Kelas'
    Items.Strings = (
      'Kelas Reguler'
      'Kelas Karyawan')
  end
  object ComboBox3: TComboBox
    Left = 96
    Top = 328
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'Pilih Jumlah SKS'
    Items.Strings = (
      '14 SKS'
      '15 SKS'
      '16 SKS'
      '17 SKS'
      '18 SKS')
  end
  object Button1: TButton
    Left = 312
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 4
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 416
    Top = 144
    Width = 345
    Height = 209
    Caption = 'Metode Pembayran'
    TabOrder = 5
    object Label6: TLabel
      Left = 40
      Top = 40
      Width = 54
      Height = 13
      Caption = 'Total Bayar'
    end
    object Label7: TLabel
      Left = 40
      Top = 96
      Width = 66
      Height = 13
      Caption = 'Metode Bayar'
    end
    object Edit2: TEdit
      Left = 40
      Top = 56
      Width = 185
      Height = 21
      TabOrder = 0
    end
    object ComboBox4: TComboBox
      Left = 40
      Top = 112
      Width = 185
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'Pilih Metode Pembayaran'
      Items.Strings = (
        'Bank BRI'
        'Bank BNI'
        'Bank Mandiri'
        'Bank Syariah Indonesia'
        'Bank BCA'
        'Bank Lainnya')
    end
    object Button2: TButton
      Left = 112
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 208
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Button4: TButton
    Left = 368
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 6
    OnClick = Button4Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\00' +
      '. KULIAH\2. UNIVERSITAS JANABADRA\Dasar Pemograman\Ujian Respons' +
      'i\Pembayaran.mdb;Mode=Share Deny None;Persist Security Info=Fals' +
      'e;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OL' +
      'EDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Datab' +
      'ase Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB' +
      ':Global Bulk Transactions=1;Jet OLEDB:New Database Password="";J' +
      'et OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database' +
      '=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Co' +
      'mpact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from(pembayaran)')
    Left = 72
    Top = 16
  end
end
