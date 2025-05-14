unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    BtnCalcF3: TButton;
    BtnCalcTriangle: TButton;
    EditA3: TEdit;
    EditTriangleArea: TEdit;
    EditSideA: TEdit;
    EditB3: TEdit;
    EditC: TEdit;
    EditT: TEdit;
    EditResultF3: TEdit;
    EditAlpha: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BtnCalcF3Click(Sender: TObject);
    procedure BtnCalcTriangleClick(Sender: TObject);
    procedure Label9Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Label9Click(Sender: TObject);
begin

end;

procedure TForm3.BtnCalcF3Click(Sender: TObject);
var
  a, b, t, f: Double;
begin
  a := StrToFloat(EditA3.Text);
  b := StrToFloat(EditB3.Text);
  t := StrToFloat(EditT.Text);

  //f = exp(-b*t)*sin(a*t + b) - sqrt(abs(b*t + a))
  f := Exp(-b * t) * Sin(a * t + b) - Sqrt(Abs(b * t + a));

  EditResultF3.Text := FloatToStr(f);
end;

procedure TForm3.BtnCalcTriangleClick(Sender: TObject);
var
  c, alphaDeg, alphaRad, sideA, h, area: Double;
begin
  c := StrToFloat(EditC.Text);
  alphaDeg := StrToFloat(EditAlpha.Text);

  alphaRad := alphaDeg * Pi / 180;

  // Bравнобедренном треугольнике боковая сторона = c / (2*cos(alpha))
  sideA := c / (2 * Cos(alphaRad));

  // h = sideA * sin(alpha)
  h := sideA * Sin(alphaRad);

  // S = 0.5 * c * height
  area := 0.5 * c * h;

  EditTriangleArea.Text := FloatToStr(area);
  EditSideA.Text := FloatToStr(sideA);
end;

end.

