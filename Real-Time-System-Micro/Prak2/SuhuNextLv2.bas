$regfile = "m8535.dat"
$crystal = 8000000
$baud = 9600
$hwstack = 32                                               ' default use 32 for the hardware stack
$swstack = 10                                               ' default use 10 for the SW stack
$framesize = 40

Config Lcdpin = Pin , Db4 = Portc.4 , Db5 = Portc.5 , Db6 = Portc.6 , Db7 = Portc.7 , E = Portc.0 , Rs = Portc.1
Config Lcd = 16 * 2


Config Portd.2 = Output
Config Portd.3 = Output
Config Timer1 = Pwm , Pwm = 8 , Compare_a_pwm = Clear_up , Prescale = 1
Dim X As String * 3 , Nilai As Integer
Config Adc = Single , Prescaler = Auto , Reference = Avcc
Dim Data_mentah As Integer
Dim Hasil As Single
Start Adc

Portd.2 = 1
Portd.3 = 1

Do
Data_mentah = Getadc(0)
Hasil = 0.49 * Data_mentah
Print "Suhu saat ini adalah " ; Hasil
Nilai = Hasil * 2.55
Print Nilai
Pwm1a = Nilai
Locate 1 , 1
Lcd "data ADC = "
Loop



End