unit Unit1;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm2 }

  TForm2 = class(TForm)
    BtnCalcF2: TButton;
    BtnCalcSquare2: TButton;
    EditA: TEdit;
    EditB: TEdit;
    EditResultF2: TEdit;
    EditSide2: TEdit;
    EditS: TEdit;
    EditDiag2: TEdit;
    EditCircleArea: TEdit;
    Label10: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BtnCalcF2Click(Sender: TObject);
    procedure BtnCalcSquare2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.BtnCalcF2Click(Sender: TObject);
var
  a, b, f: Double;
begin
  a := StrToFloat(EditA.Text);
  b := StrToFloat(EditB.Text);

  f := Sqrt(Pi / 8) * Sqrt((a + b) / (Sqr(a) + Sqr(b))) - a * Power(b, 3);

  EditResultF2.Text := FloatToStr(f);
end;

procedure TForm2.BtnCalcSquare2Click(Sender: TObject);
var
  S, side, diag, circleArea: Double;
begin
  S := StrToFloat(EditS.Text);

  side := Sqrt(S);

  diag := side * Sqrt(2);

  // Площадь круга = Pi * r^2
  circleArea := Pi * Sqr(diag / 2);

  EditSide2.Text := FloatToStr(side);
  EditDiag2.Text := FloatToStr(diag);
  EditCircleArea.Text := FloatToStr(circleArea);
end;

end.

