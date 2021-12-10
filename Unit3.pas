unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    ComboBox4: TComboBox;
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
  Form3: TForm3;
    Stream : TMemoryStream;
implementation

uses Unit1, Unit4, Unit5;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  toba, Harga : Integer;

begin
    if (ComboBox3.Text = '14 SKS') then toba := 4200000
      else
  if (ComboBox3.Text = '15 SKS') then toba := 4500000
    else
  if (ComboBox3.Text = '16 SKS') then toba := 4800000
    else
  if (ComboBox3.Text = '17 SKS') then toba := 5100000
    else
  if (ComboBox3.Text = '18 SKS') then toba := 5400000;

  Harga := toba*1;
  Edit2.Text := IntToStr(Harga);

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Stream := TMemoryStream.Create;
Stream.Position := 0;
ADOQuery1.Append;
ADOQuery1.FieldByName('Nama Mahasiswa').AsString:=Edit1.Text;
ADOQuery1.FieldByName('Jurusan').AsString:=ComboBox1.Text;
ADOQuery1.FieldByName('Kelas').AsString:=ComboBox2.Text;
ADOQuery1.FieldByName('Jumlah SKS').AsString:=ComboBox3.Text;
ADOQuery1.FieldByName('Total Bayar').AsString:=Edit2.Text;
ADOQuery1.FieldByName('Metode Pembayaran').AsString:=ComboBox4.Text;
Stream.Free;
ADOQuery1.Post;

ShowMessage('Silahkan Cetak Invoice Anda');
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah Yakin Anda Ingin Keluar?','Konfirmasi!',MB_YESNO or MB_ICONQUESTION)=idyes)
then
Form3.Hide;
Form1.Show;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
QuickReport5.Preview;
end;

end.
