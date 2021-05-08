$regfile = "m8535.dat"
$crystal = 8000000
$baud = 9600

Config Lcdpin = Pin , Rs = Portb.0 , E = Portb.1 , Db4 = Portb.4 ,
Config Lcdpin = Pin , Db5 = Portb.5 , Db6 = Portb.6 , Db7 = Portb.7
Config Lcd = 16 * 2

Config Portc = Output
Config Timer1 = Pwm , Pwm = 8 , Compare_a_pwm = Clear_up , Prescale = 1
Dim X As String * 3 , Nilai As Integer
Config Adc = Single , Prescaler = Auto , Reference = Avcc
Dim Data_mentah As Integer
Dim Hasil As Single
Dim Berapa As Integer
Start Adc

Portc = 1
Cls
Locate 1 , 1
Lcd "Suhu : "
Do
Data_mentah = Getadc(0)
Hasil = 0.49 * Data_mentah
Print "Suhu saat ini adalah " ; Hasil
Nilai = Hasil * 2.55
Berapa = Hasil
Print Nilai
Pwm1a = Nilai
Locate 1 , 8
Lcd Berapa ; " C"
Loop

End