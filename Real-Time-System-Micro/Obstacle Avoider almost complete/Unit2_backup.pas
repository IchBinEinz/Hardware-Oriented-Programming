unit Unit2_backup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.Series, VCLTee.TeEngine, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm2 = class(TForm)
    Chart1: TChart;
    Series1: TPointSeries;
    Series2: TLineSeries;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Timer1: TTimer;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    x0:integer;
    y0:integer;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function rk3_x(const BirthYear:integer): integer;
var
Year, Month, Day : Word;
begin
DecodeDate(Date, Year, Month, Day) ;
Result := Year - BirthYear;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
 x,y:Double;
begin
  Series1.Clear;
   y0:=y0+100;
   y:=y0;
   x:=x0;
   Series1.AddXY(x,y);
   Series2.AddXY(x,y);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
 x,y:Double;
begin
  Series1.Clear;
   y0:=y0-100;
   y:=y0;
   x:=x0;
   Series1.AddXY(x,y);
   Series2.AddXY(x,y);
end;

procedure TForm2.Button3Click(Sender: TObject);
var
 x,y:Double;
begin
  Series1.Clear;
   x0:=x0-100;
   y:=y0;
   x:=x0;
   Series1.AddXY(x,y);
   Series2.AddXY(x,y);
end;

procedure TForm2.Button4Click(Sender: TObject);
var
 x,y:Double;
begin
   x0:=x0+100;
   y0:=y0;
end;
procedure TForm2.Button5Click(Sender: TObject);
var
  t,del_t:integer;
begin
   Series1.Clear;
   Series2.Clear;
   Series3.Clear;
   Series4.Clear;
   x0:=500;
   y0:=500;
   t:=0;
   Timer1.Enabled:=True;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
Timer1.Enabled:=False;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var
x,y:Double;
x:=500;
y:=500;
begin
Series1.Clear;
Series2.Clear;
Series3.Clear;
Series4.Clear;
x:=x0+x;
y:=y0+y;
Series1.AddXY(x0,y0);
Series2.AddXY(x0,y0);
Series2.AddXY(x0+50,y0);
Series3.AddXY(x0,y0);
Series3.AddXY(x0+50,y0+50);
Series4.AddXY(x0,y0);
Series4.AddXY(x0+50,y0-50);

end;

end.
