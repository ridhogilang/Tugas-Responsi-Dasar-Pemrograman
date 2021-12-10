unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, DB, ADODB, Grids, DBGrids, StdCtrls, jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit6: TEdit;
    Image1: TImage;
    Label11: TLabel;
    Button1: TButton;
    Edit7: TEdit;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
   Stream : TMemoryStream;
   Jpeg : TJPEGImage;
implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
Stream := TMemoryStream.Create;
Image1.Picture.Graphic.SaveToStream(stream);
Stream.Position := 0;
ADOQuery1.Append;
ADOQuery1.FieldByName('Nama Mahasiswa').AsString:=Edit1.Text;
ADOQuery1.FieldByName('Tempat, Tgl lahir').AsString:=Edit2.Text;
ADOQuery1.FieldByName('Alamat').AsString:=Edit3.Text;
ADOQuery1.FieldByName('Jenis Kelamin').AsString:=ComboBox1.Text;
ADOQuery1.FieldByName('Sekolah Asal').AsString:=Edit4.Text;
ADOQuery1.FieldByName('Nilai dari semester 10').AsString:=Edit5.Text;
ADOQuery1.FieldByName('Jurusan').AsString:=ComboBox2.Text;
ADOQuery1.FieldByName('Kelas').AsString:=ComboBox3.Text;
ADOQuery1.FieldByName('No Hp').AsString:=Edit6.Text;
TBlobField(ADOQuery1.FieldByName('Foto')).LoadFromStream(stream);
Stream.Free;
ADOQuery1.Post;

ShowMessage('Data Anda Telah Ditambahkan')
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Stream := TMemoryStream.Create;
Image1.Picture.Graphic.SaveToStream(stream);
Stream.Position := 0;
ADOQuery1.Edit;
ADOQuery1.FieldByName('Nama Mahasiswa').AsString:=Edit1.Text;
ADOQuery1.FieldByName('Tempat, Tgl lahir').AsString:=Edit2.Text;
ADOQuery1.FieldByName('Alamat').AsString:=Edit3.Text;
ADOQuery1.FieldByName('Jenis Kelamin').AsString:=ComboBox1.Text;
ADOQuery1.FieldByName('Sekolah Asal').AsString:=Edit4.Text;
ADOQuery1.FieldByName('Nilai dari semester 10').AsString:=Edit5.Text;
ADOQuery1.FieldByName('Jurusan').AsString:=ComboBox2.Text;
ADOQuery1.FieldByName('Kelas').AsString:=ComboBox3.Text;
ADOQuery1.FieldByName('No Hp').AsString:=Edit6.Text;
TBlobField(ADOQuery1.FieldByName('Foto')).LoadFromStream(stream);
Stream.Free;
ADOQuery1.Post;

ShowMessage('Data Anda Telah Di Edit')
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah Anda Yakin Ingin Menghapus Data?','Peringatan!',MB_YESNO or MB_ICONQUESTION)=idyes)
then
ADOQuery1.Delete;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
begin
Edit7.Text := OpenPictureDialog1.FileName;
Image1.Picture.LoadFromFile(Edit7.Text);
end;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
Jpeg := TJPEGImage.Create;
Stream := TMemoryStream.Create;
TBlobField(ADOQuery1.FieldByName('Foto')).SaveToStream(stream);
stream.Position:=0;
Jpeg.LoadFromStream(stream);
Image1.Picture.Graphic:=Jpeg;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah Anda Yakin Ingin Keluar?','Peringatan!',MB_YESNO or MB_ICONQUESTION)=idyes)
then
Form2.Hide;
Form1.Show;
end;

end.
