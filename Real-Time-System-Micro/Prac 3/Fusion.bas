$regfile = "8535def.dat"
$crystal = 8000000
$baud = 9600

Config Adc = Single , Prescaler = Auto , Reference = Avcc
Dim Data_mentah As Integer
Dim Hasil As Single
Start Adc
Config Portc = Output
Config Timer1 = Pwm , Pwm = 8 , Compare_a_pwm = Clear_up , Prescale = 1
Dim X As String * 3 , Nilai As Integer

Portc = 1

Do
Nilai = 0
Data_mentah = Getadc(0)
Hasil = 0.49 * Data_mentah
End

If Hasil <= 27 Then Nilai = 100
Else If Hasil > 27 Or Hasil <= 40 Then Nilai = 200
Else If Hasil > 40 Then Nilai = 255
End If

Pwm1a = Nilai

Loop
End
