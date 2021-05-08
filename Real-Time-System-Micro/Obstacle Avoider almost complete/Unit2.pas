unit Unit2;

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
    Button5: TButton;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Timer1: TTimer;
    Button6: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    x0,y0,del_t,x_hold,y_hold,tht_hold:Double;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function degrad(deg:Real):Real;
var hasil:Real;
begin
  hasil:=(deg*180/3.14);
  Result:=hasil;
end;

function raddeg(rad:Real):Real;
var hasil:Real;
begin
  hasil:=(rad*3.14*180);
  Result:=hasil;
end;

function f_x(t,x0,vr,vl,tht:Real):Real;
begin
  f_x :=(((Cos(raddeg(tht))*vr)/2)+((Cos(raddeg(tht))*vl)/2));
end;

function f_y(t,y0,vr,vl,tht:Real):Real;
begin
  f_y :=(((Sin(raddeg(tht))*vr)/2)+((Sin(raddeg(tht))*vl)/2));
end;

function f_tht(t,tht,vr,vl:Real):Real;
var L:Real;
begin
  L:=0.8;
  f_tht :=(((1*vr)/L)-((1*vl)/L));
end;

function rk3_x(t0,x0,b,h,vr,vl,tht:Real):Real;
var
  r,n:Integer;
  t,x,k1,k2,k3:Real;
begin
  n:=Round((b-t0)/h);
  x:=x0;
  t:=t0;
  for r:=1 to n do
  begin
    k1:=h*f_x(t,x,vr,vl,tht);
    k2:=h*f_x(t+h/2,x+k1/2,vr,vl,tht);
    k3:=h*f_x(t+h,x+k1/2*k2,vr,vl,tht);
    x:=x+(k1+4*k2+k3)/6;
    t:=t+h;
  end;
  rk3_x:=x;
end;

function rk3_y(t0,y0,b,h,vr,vl,tht:Real):Real;
var
  r,n:Integer;
  t,y,k1,k2,k3:Real;
begin
  n:=Round((b-t0)/h);
  y:=y0;
  t:=t0;
  for r:=1 to n do
  begin
    k1:=h*f_y(t,y,vr,vl,tht);
    k2:=h*f_y(t+h/2,y+k1/2,vr,vl,tht);
    k3:=h*f_y(t+h,y+k1/2*k2,vr,vl,tht);
    y:=y+(k1+4*k2+k3)/6;
    t:=t+h;
  end;
  rk3_y:=y;
end;

function rk3_tht(t0,tht0,b,h,vr,vl,tht:Real):Real;
var
  t,thet,thett:Real;
begin
  thet:=0;
  thett:=0;
  thett:=f_tht(t,tht0,vr,vl);
  thet:=thett+tht0;
  rk3_tht:=thet;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
 x,y:Double;
begin
  x:=StrToFloat(edit1.Text)+0.01;
  Edit1.text:=FloatToStr(x);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
 x,y:Double;
begin
  x:=StrToFloat(edit2.Text)+0.01;
  Edit2.text:=FloatToStr(x);
end;

procedure TForm2.Button3Click(Sender: TObject);
var
 x,y:Double;
begin
  x:=StrToFloat(edit1.Text)-0.01;
  Edit1.text:=FloatToStr(x);
end;

procedure TForm2.Button4Click(Sender: TObject);
var
 x,y:Double;
begin
  x:=StrToFloat(edit2.Text)-0.01;
  Edit2.text:=FloatToStr(x);
end;
procedure TForm2.Button5Click(Sender: TObject);
Begin
Timer1.Enabled:=True;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
Timer1.Enabled:=false;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
del_t:=0.2;
x_hold:=0;
y_hold:=0;
tht_hold:=0;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var
  vr,vl,tht,x,y:Real;
begin
   Series1.Clear;
   Series2.Clear;
   Series3.Clear;
   Series4.Clear;

   vr:=StrToFloat(edit1.Text);
   vl:=StrToFloat(edit2.Text);
   tht:=degrad(rk3_tht(del_t-0.1,tht_hold,del_t,0.05,vr,vl,tht));
   x:=rk3_x(del_t-0.1,x_hold,del_t,0.05,vr,vl,tht);
   y:=rk3_y(del_t-0.1,y_hold,del_t,0.05,vr,vl,tht);

   Edit3.Text:=FloatToStr(x);
   Edit4.Text:=FLoatToStr(y);
   Edit5.Text:=FloatToStr(tht);

   x_hold:=x;
   y_hold:=y;
   tht_hold:=raddeg(tht);
   del_t:=del_t+0.1;
   Series1.AddXY(x_hold,y_hold);

end;

end.
