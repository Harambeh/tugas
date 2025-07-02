unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.FormCreate(Sender: TObject);
begin
  Stringgrid1.Cells[0,0] := 'No';
  Stringgrid1.Cells[1,0] := 'Nama';
  Stringgrid1.Cells[2,0] := 'Kelas';
  Stringgrid1.Cells[3,0] := 'Keterangan';
  stringgrid1.rowcount := 2;

  combobox1.items.add('1KA31');
  combobox1.items.add('1KA32');
  combobox2.items.add('Hadir');
  combobox2.items.add('Alfa');
  combobox2.items.add('Sakit');
  combobox2.items.add('Izin');

end;

procedure TForm3.Button1Click(Sender: TObject);
var row : integer;
begin
  row := Stringgrid1.rowcount - 1;
  Stringgrid1.Cells[0,row] := intToStr(row);
  Stringgrid1.Cells[1,row] := edit1.text;
  Stringgrid1.Cells[2,row] := combobox1.text;
  Stringgrid1.Cells[3,row] := combobox2.text;
  stringgrid1.rowcount := stringgrid1.rowcount + 1;

  edit1.clear;
  combobox1.text := '';
  combobox2.text := '';
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  row,i : integer;
begin
  row := stringgrid1.row;

  if row > 0 then
  begin
    Stringgrid1.DeleteRow(row);

    //Perbarui nomor urut pada kolom pertama
    for i := 1 to StringGrid1.RowCount - 1 do
      StringGrid1.Cells[0, i] := IntToStr(i);
  end;

end;

end.

