$regfile = "8535def.dat"
$crystal = 8000000
$baud = 9600

Config Adc = Single , Prescaler = Auto , Reference = Avcc

Dim Data_mentah As Integer
Dim Hasil As Single

Start Adc

Do
Data_mentah = Getadc(0)
Hasil = 0.49 * Data_mentah
Print Hasil
Print Data_mentah
wait 1

Loop

