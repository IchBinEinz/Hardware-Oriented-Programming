$regfile = "m8535.dat"
$crystal = 8000000
$baud = 9600

Config Portc = Output
Config Timer1 = Pwm , Pwm = 8 , Compare_a_pwm = Clear_up , Prescale = 1
Dim X As String * 3 , Nilai As Integer

Portc = 1

Do
Input "Masukkan nilai PWM (max 255) = " , X
Nilai = Val(x)
Pwm1a = Nilai
Loop

End
