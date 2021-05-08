$regfile = "m8535.dat"
$crystal = 8000000
$baud = 9600

Config Portc = Output
Config Timer1 = Pwm , Pwm = 8 , Compare_a_pwm = Clear_up , Prescale = 1
Dim X As String * 3 , Nilai As Integer
Config Adc = Single , Prescaler = Auto , Reference = Avcc
Dim Data_mentah As Integer
Dim Hasil As Single
Start Adc

Portc = 1

Do
Data_mentah = Getadc(0)
Hasil = 0.49 * Data_mentah
Print "Suhu saat ini adalah " ; Hasil
Nilai = Hasil * 2.55
Print Nilai
Pwm1a = Nilai
Loop

End