unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    BtnCalcF4: TButton;
    BtnCalcRect: TButton;
    dsfsdf1: TLabel;
    dsfsdf2: TLabel;
    EditA4: TEdit;
    EditN: TEdit;
    EditB4: TEdit;
    EditR: TEdit;
    EditResultF4: TEdit;
    EditDiag: TEdit;
    EditYside: TEdit;
    EditRectArea: TEdit;
    EditXside: TEdit;
    EditX4: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    dsfsdf: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BtnCalcF4Click(Sender: TObject);
    procedure BtnCalcRectClick(Sender: TObject);
    procedure dsfsdf1Click(Sender: TObject);
    procedure EditRectAreaChange(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.EditRectAreaChange(Sender: TObject);
begin

end;

procedure TForm4.BtnCalcF4Click(Sender: TObject);
var
  a, b, x, numerator, denominator, f: Double;
begin
  a := StrToFloat(EditA4.Text);
  b := StrToFloat(EditB4.Text);
  x := StrToFloat(EditX4.Text);

  numerator := a*a*x + Exp(-x) * Cos(b * x);
  denominator := b * x - Exp(-x) * Sin(b * x) + 1;

  f := numerator / denominator;

  EditResultF4.Text := FloatToStr(f);
end;

procedure TForm4.BtnCalcRectClick(Sender: TObject);
var
  R, n, xside, yside, area, diag: Double;
begin
  R := StrToFloat(EditR.Text);
  n := StrToFloat(EditN.Text);

  // диагональ прямоугольника вписанного в окружность = 2*R
  diag := 2 * R;

  // отношение xside/yside = n => xside = n*yside
  // по теореме Пифагора: xside^2 + yside^2 = diag^2
  // подставляем xside = n*yside: yside = diag / Sqrt(n^2 + 1)
  yside := diag / Sqrt(Sqr(n) + 1);
  xside := n * yside;

  // S прямоуг = xside * yside
  area := xside * yside;

  EditXside.Text := FloatToStr(xside);
  EditYside.Text := FloatToStr(yside);
  EditRectArea.Text := FloatToStr(area);
  EditDiag.Text := FloatToStr(diag);
end;

procedure TForm4.dsfsdf1Click(Sender: TObject);
begin

end;

end.

