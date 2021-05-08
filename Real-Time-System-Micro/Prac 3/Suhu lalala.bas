$regfile = "8535def.dat"
$crystal = 8000000
$baud = 9600

Config Portc = Output
Config Adc = Single , Prescaler = Auto , Reference = Avcc
Config Timer1 = Pwm , Pwm = 8 , Compare_a_pwm = Clear_up , Prescale = 1
Dim Data_mentah As Integer
Dim Hasil As Single
Start Adc
Dim X As String * 3 , Nilai As Integer

Portc = 1

Do
Input "Masukkan nilai PWM (Max 255) = " , X
Nilai = Val(x)
Pwm1a = Nilai

Data_mentah = Getadc(0)
Hasil = 0.49 * Data_mentah
Print Data_mentah
Print Hasil
Wait 1
Loop

End