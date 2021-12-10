object Form4: TForm4
  Left = 377
  Top = 223
  Width = 709
  Height = 675
  Caption = 'Form4'
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
    Left = 168
    Top = 56
    Width = 357
    Height = 24
    Caption = 'Biaya Pengiriman Buku Pemberlajaran'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 104
    Width = 84
    Height = 13
    Caption = 'Nama Mahasiswa'
  end
  object Label3: TLabel
    Left = 120
    Top = 160
    Width = 37
    Height = 13
    Caption = 'Jurusan'
  end
  object Label4: TLabel
    Left = 120
    Top = 216
    Width = 32
    Height = 13
    Caption = 'Alamat'
  end
  object Label5: TLabel
    Left = 344
    Top = 104
    Width = 22
    Height = 13
    Caption = 'Kota'
  end
  object Label6: TLabel
    Left = 344
    Top = 160
    Width = 37
    Height = 13
    Caption = 'Provinsi'
  end
  object Label7: TLabel
    Left = 344
    Top = 272
    Width = 46
    Height = 13
    Caption = 'Kode Pos'
  end
  object Label10: TLabel
    Left = 344
    Top = 216
    Width = 27
    Height = 13
    Caption = 'Pulau'
  end
  object Edit1: TEdit
    Left = 120
    Top = 128
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 184
    Width = 193
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
  object Memo1: TMemo
    Left = 120
    Top = 240
    Width = 193
    Height = 73
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 344
    Top = 128
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object ComboBox2: TComboBox
    Left = 344
    Top = 240
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'Pilih Pulau'
    Items.Strings = (
      'Jawa'
      'Sumatra'
      'Kalimantan'
      'Sulawesi'
      'Papua')
  end
  object Edit3: TEdit
    Left = 344
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 304
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 6
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 120
    Top = 392
    Width = 441
    Height = 145
    Caption = 'GroupBox1'
    TabOrder = 7
    object Label8: TLabel
      Left = 48
      Top = 24
      Width = 54
      Height = 13
      Caption = 'Total Bayar'
    end
    object Label9: TLabel
      Left = 48
      Top = 80
      Width = 92
      Height = 13
      Caption = 'Metode Pembayran'
    end
    object ComboBox3: TComboBox
      Left = 48
      Top = 104
      Width = 201
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'Pilih Metode Pembayaran'
      Items.Strings = (
        'Bank BRI'
        'Bank BNI'
        'Bank Mandiri'
        'Bank Syariah Indonesia'
        'Bank BCA'
        'Bank Lainnya')
    end
    object Edit5: TEdit
      Left = 48
      Top = 48
      Width = 201
      Height = 21
      TabOrder = 1
    end
    object Button2: TButton
      Left = 312
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Bayar'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 312
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Edit4: TEdit
    Left = 344
    Top = 184
    Width = 193
    Height = 21
    TabOrder = 8
  end
  object Button4: TButton
    Left = 304
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 9
    OnClick = Button4Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\00' +
      '. KULIAH\2. UNIVERSITAS JANABADRA\Dasar Pemograman\Ujian Respons' +
      'i\Pengiriman.mdb;Mode=Share Deny None;Persist Security Info=Fals' +
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
    Left = 48
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from(pengiriman)')
    Left = 88
    Top = 16
  end
end
