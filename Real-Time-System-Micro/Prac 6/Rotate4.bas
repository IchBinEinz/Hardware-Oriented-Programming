$regfile = "m8def.dat"

$crystal = 8000000
Config Portd = Output

Dim I As Byte
I = &B00000001



Do
L:
Portd = I
Rotate I , Left
Wait 10
Loop
Return





End



