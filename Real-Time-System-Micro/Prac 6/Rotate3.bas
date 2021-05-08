$regfile = "m8def.dat"

$crystal = 8000000
Config Portd = Output

Dim I As Byte
I = &B00000001



Do
L:
Rotate I , Left
Portd = I
Waitms 1
If I = &B00001000 Then
I = &B00000001
End If
Loop
Return





End



