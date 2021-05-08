$regfile = "m8def.dat"

$crystal = 8000000
Config Portd = Output

Dim I As Byte
I = &B00000001

Do
L:
If I = &B10000000 Then
Goto R
End If
Rotate I , Left
Portd = I
Waitms 100
Loop

Do
R:
If I = &B00000001 Then
Goto L
End If
Rotate I , Right
Portd = I
Waitms 100
Loop



End




