unit Unit6;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form6: TForm6;

implementation

{$R *.lfm}

{ TForm6 }

procedure TForm6.Button1Click(Sender: TObject);
begin
  memo1.clear;
  memo1.lines.add('DATA SISWA');
  memo1.Lines.add('Nama : ' + edit1.text);
  memo1.Lines.add('Umur : ' + edit2.text);
  memo1.Lines.add('Kleas : ' +edit3.text);
end;

end.

