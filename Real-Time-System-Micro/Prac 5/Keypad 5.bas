$regfile = "8535def.dat"

$crystal = 8000000
$baud = 9600

Dim X As String * 3 , Y As Integer
Dim Xseb As String * 1

Ddrb = &B00000111
Portb = &B11111111
Y = 0

Do
Portb = &B11111110
   If Pinb.3 = 0 Then
   X = X + "1"
   Xseb = "1"
   Elseif Pinb.4 = 0 Then
   X = X + "4"
   Xseb = "4"
   Elseif Pinb.5 = 0 Then
   X = X + "7"
   Xseb = "7"
   Elseif Pinb.6 = 0 Then
   X = ""
   End If
   Waitms 80

Portb = &B11111101
   If Pinb.3 = 0 Then
   X = X + "2"
   Xseb = "2"
   Elseif Pinb.4 = 0 Then
   X = X + "5"
   Xseb = "5"
   Elseif Pinb.5 = 0 Then
   X = X + "8"
   Xseb = "8"
   Elseif Pinb.6 = 0 Then
   X = X + "0"
   Xseb = "0"
   End If
   Waitms 80

Portb = &B11111011
   If Pinb.3 = 0 Then
   X = X + "3"
   Xseb = "3"
   Elseif Pinb.4 = 0 Then
   X = X + "6"
   Xseb = "6"
   Elseif Pinb.5 = 0 Then
   X = X + "9"
   Xseb = "9"
   Elseif Pinb.6 = 0 Then
   Y = Val(x) - Val(xseb)
   End If
   Waitms 80

Y = Val(x)
If Y > 999 Then
X = "ERR"
Print X
Y = 0
X = ""
End If


'Print X


Print Y



Loop
End