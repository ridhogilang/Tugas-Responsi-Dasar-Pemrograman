unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    
implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
Form1.Hide;
Form2.Show;

ShowMessage('Silahkan Isi Data Diri Anda');
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
form1.Hide;
form3.Show;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
Form1.Hide;
Form4.Show;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah Anda Yakin Ingin Keluar Portal?','Konfirmasi!',MB_YESNO or MB_ICONQUESTION)=idyes)
then
Application.Terminate;
end;

end.
