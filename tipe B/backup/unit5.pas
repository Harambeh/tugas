unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}

{ TForm5 }

procedure TForm5.Button1Click(Sender: TObject);
begin
  if RadioButton1.Checked then
    label2.caption := RadioButton1.caption
  else if RadioButton2.Checked then
    label2.caption := RadioButton2.caption
  else if RadioButton3.Checked then
    label2.caption := RadioButton3.caption
  else if RadioButton4.Checked then
    label2.caption := RadioButton4.caption;
end;

end.

