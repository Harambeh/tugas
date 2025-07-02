unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  n,i,hasil : integer;
begin
  memo1.clear;
  n := StrToInt(edit1.text);
  i := 2;

  repeat
    hasil := i * i;
    memo1.lines.add(IntToStr(i) + '^2 = ' + IntToStr(hasil));
    i := i + 2;
  until i > n - 1 ;

end;

end.

