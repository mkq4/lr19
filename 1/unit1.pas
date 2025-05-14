unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ActnList, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnCalcF: TButton;
    BtnCalcSquare: TButton;
    EditX: TEdit;
    EditX1: TEdit;
    EditX2: TEdit;
    EditSide: TEdit;
    EditArea: TEdit;
    EditPerimeter: TEdit;
    EditY: TEdit;
    EditResultF: TEdit;
    EditY1: TEdit;
    EditY2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure BtnCalcFClick(Sender: TObject);
    procedure BtnCalcSquareClick(Sender: TObject);
    procedure EditXChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.EditXChange(Sender: TObject);
begin

end;

procedure TForm1.BtnCalcFClick(Sender: TObject);

var
  x, y, f: Double;
begin
  x := StrToFloat(EditX.Text);
  y := StrToFloat(EditY.Text);

  // f = ((x+1)/(x-1))^x + 18*x*y^2
  f := Power((x + 1) / (x - 1), x) + 18 * x * Sqr(y);

  EditResultF.Text := FloatToStr(f);
end;

procedure TForm1.BtnCalcSquareClick(Sender: TObject);
var
  x1, y1, x2, y2: Double;
  diagonal, side, area, perimeter: Double;
begin
  x1 := StrToFloat(EditX1.Text);
  y1 := StrToFloat(EditY1.Text);
  x2 := StrToFloat(EditX2.Text);
  y2 := StrToFloat(EditY2.Text);

  diagonal := Sqrt(Sqr(x2 - x1) + Sqr(y2 - y1));

  side := diagonal / Sqrt(2);
  area := Sqr(side);
  perimeter := 4 * side;

  EditSide.Text := FloatToStr(side);
  EditArea.Text := FloatToStr(area);
  EditPerimeter.Text := FloatToStr(perimeter);
end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

end.

