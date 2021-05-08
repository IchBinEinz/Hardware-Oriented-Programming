$regfile = "m8def.dat"
$crystal = 8000000
$baud = 9600

Dim X As String * 2

Do
   X = Waitkey()
   Waitms 300
   Print "HELLO"
   Waitms 300
Loop
End