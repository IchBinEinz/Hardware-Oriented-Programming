$regfile = "8535def.dat"

$crystal = 8000000
$baud = 9600
$hwstack = 32
$swstack = 10
$framesize = 40
Config Lcdbus = 4
Config Lcd = 16 * 2
Cursor Off

Sqw Alias Pina.5
Config Scl = Porta.6
Config Sda = Porta.7

Config Lcdpin = Pin , Db4 = Portc.3 , Db5 = Portc.2 , Db6 = Portc.1 , Db7 = Portc.0 , E = Portc.4 , Rs = Portc.5
Config Lcdbus = 4
Config Lcd = 16 * 2
Cursor Off
Config Portc.6 = Output
Config Portc.7 = Output
Config Portd.6 = Output
Config Portd.7 = Output
Config Portd.2 = Output
Config Portd.3 = Output
Config Porta.1 = Input
Led_0 Alias Portc.6
Led_1 Alias Portc.7
Led_2 Alias Portd.6
Led_3 Alias Portd.7
Pwm1a = 255


Dim Data_suhu As Integer
Dim Hidup As Single
Dim Sel As Integer
Dim Done As String * 1
Dim X As String * 16 , Mybaud As Long
Dim Y As Single
Mybaud = 9600
Ddrb = &B00000111
Portb = &B11111111
Y = 0
Done = "s"
Config Timer1 = Pwm , Pwm = 8 , Compare_a_pwm = Clear_up , Prescale = 1
Start Adc


Home
Locate 1 , 7 : Lcd "SWN"
Lowerline
Locate 2 , 4 : Lcd "INKUBATOR"

Waitms 500

Cls
Locate 1 , 1 : Lcd "SUHU : "
Locate 1 , 7 : Lcd "INPUT"
Locate 2 , 3 : Lcd "By JBI"
Waitms 500

Goto Proses
Kipas:
If Sel < 0 Then
Pwm1a = 255
Set Portd.2
Reset Portd.3
End If
Goto Ulang
Lampu:
If Sel > 0 Then
Led_0 = 0
Led_1 = 0
Led_2 = 0
Led_3 = 0
Elseif Sel >= -3 Then
Led_0 = 1
Led_1 = 0
Led_2 = 0
Led_3 = 0
Elseif Sel >= -6 Then
Led_0 = 1
Led_1 = 1
Led_2 = 0
Led_3 = 0
Elseif Sel >= -9 Then
Led_0 = 1
Led_1 = 1
Led_2 = 1
Led_3 = 0
Else
Led_0 = 1
Led_1 = 1
Led_2 = 1
Led_3 = 1
End If
Goto Ulang

Proses:
Do
X = ""
Input X
Cls
Locate 1 , 1 : Lcd "SUHU : "
Locate 1 , 7 : Lcd X
Locate 2 , 3 : Lcd "By JBI"
Ulang:
Y = Val(x)
Data_suhu = Getadc(0)
Hidup = 0.49 * Data_suhu
Sel = Hidup - Y
If Sel > 0 Then
Set Portd.2
Reset Portd.3
Goto Kipas
Elseif Sel < 0 Then
Reset Portd.2
Reset Portd.3
Goto Lampu
Elseif Sel = 0 Then
Print Done
Print Done
Print Done
Reset Portd.2
Reset Portd.3
Led_0 = 0
Led_1 = 0
Led_2 = 0
Led_3 = 0
End If
Waitms 500
Loop
End