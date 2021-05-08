$regfile = "m8def.dat"

$crystal = 8000000
Config Portd = Output

Dim I As Byte
I = &B00000001

Do
Gosub L
Waitms 100
Gosub R
Waitms 100
Loop

Do
L:
Rotate I , Left
Portd = I
Waitms 100
Loop Until I = &B10000000
Return

Do
R:
Rotate I , Right
Portd = I
Waitms 100
Loop Until I = &B00000001
Return



End


