unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    Edit3: TEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    ComboBox3: TComboBox;
    Memo1: TMemo;
    Label10: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
   Stream : TMemoryStream;
implementation

uses Unit1, Unit6;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  toba : Integer;

begin
    if (ComboBox2.Text = 'Jawa') then toba := 25000
      else
  if (ComboBox2.Text = 'Sumatra') then toba := 35000
    else
  if (ComboBox2.Text = 'Kalimantan') then toba := 40000
    else
  if (ComboBox2.Text = 'Sulawesi') then toba := 45000
    else
  if (ComboBox2.Text = 'Papua') then toba := 50000;

  Edit5.Text := IntToStr(toba);

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Stream := TMemoryStream.Create;
Stream.Position:=0;
ADOQuery1.Append;
ADOQuery1.FieldByName('Nama Mahasiswa').AsString:=Edit1.Text;
ADOQuery1.FieldByName('Jurusan').AsString:=ComboBox1.Text;
ADOQuery1.FieldByName('Alamat').AsString:=Memo1.Text;
ADOQuery1.FieldByName('Kota').AsString:=Edit2.Text;
ADOQuery1.FieldByName('Provinsi').AsString:=Edit4.Text;
ADOQuery1.FieldByName('Pulau').AsString:=ComboBox2.Text;
ADOQuery1.FieldByName('Kode Pos').AsString:=Edit3.Text;
ADOQuery1.FieldByName('Total Bayar').AsString:=Edit5.Text;
ADOQuery1.FieldByName('Metode Pembayaran').AsString:=ComboBox3.Text;
Stream.Free;
ADOQuery1.Post;

ShowMessage('Silahkan Cetak Invoice Pengiriman Anda!');
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah Anda Yakin Ingin Keluar?','Konfirmasi',MB_YESNO or MB_ICONQUESTION)=idyes)
then
Form4.Hide;
Form1.Show;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
QuickReport6.Preview;
end;

end.
