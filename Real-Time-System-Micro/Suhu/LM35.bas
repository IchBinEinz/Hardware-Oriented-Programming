'meyalan led degan sensor suhu barlianno
$regfile = "m8535.dat"
$crystal = 11059200
$baud = 9600
Config Adc = Single , Prescaler = Auto , Reference = Avcc
Config Portc = Output
 Dim D As Word , V As Word , T As Word
Config Adc = Single , Prescaler = Auto , Reference = Avcc

Config Lcdpin = Pin , Rs = Portb.0 , E = Portb.2 , Db4 = Portb.4 ,
Config Lcdpin = Pin , Db5 = Portb.5 , Db6 = Portb.6 , Db7 = Portb.7
Config Lcd = 16 * 2

Cls
Cursor Off
Lcd "Irawan"                                                'akanmuncul dilayar atas
Lowerline
Lcd "Temp="
Start Adc
Do
D = Getadc(0)
V = D * 5
T = V / 10
Locate 2 , 6
Lcd T ; " C "
'Lcd "C"
Waitms 10                                                   ' = mengeset port c sebagai output
'  untuk membunyikan buzzer
' misal kan vref (tegangan referensi ADC adalah 5 Volt)
' di mana karakteristik LM35 = 10mV/Celcius
' nilai suhu 5000 mV /  10mV = 500 Celcius, yaitu nilai maksimum bit ADC = 1024 = suhu pada 500 derajat celcius
' maka Suhu ADC = (nilai bit pembacaan ADC) * 500 / (1024 - 1)
Dim A As Word
Dim X As Word
Dim Y As Word
Start Adc

X = Getadc(0) * 5                                           ' = pembacaan adc
A = X / 10
Y = A - 1                                                   ' = mengirim nilai A (pembacaan ADC ke serial)

Waitms 20
If A < 28 Then
 Portc.0 = 1                                                'lampu kuning meyala
 Portc.3 = 0                                                'lampu merah mati
  Waitms 20
End If
If A => 28 And A <= 40 Then
  Portc.0 = 0                                               'lampu kuning mati
  Portc.3 = 0                                               'lampu merah mati
  Waitms 20
End If
If A > 40 Then
  Portc.0 = 1                                               'lampu kuning meyala
  Portc.3 = 1
  Waitms 20                                                 'lampu merah meyala
End If

   Loop

   End                                                      'end program