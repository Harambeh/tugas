unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
var
   suhu,reamur,faren,kelvin : double;
begin
  suhu := StrToFloat(edit1.text);
  reamur := 4 / 5 * suhu;
  faren := (9 / 5 * suhu) + 32;
  kelvin := suhu + 273.15;

  memo1.clear;
  memo1.Append('Hasil Konversi:');
  memo1.lines.add(Format('Reamur = %.2f R',[reamur])); //cetak dengan format 2 angka belakang koma
  memo1.lines.add(Format('Fahrenheit = %.2f F',[faren]));
  memo1.lines.add(Format('Kelvin = %.2f K',[kelvin]));
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  edit1.clear;
  memo1.clear;
end;

end.

