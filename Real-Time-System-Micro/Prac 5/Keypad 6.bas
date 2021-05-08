$regfile = "8535def.dat"

$crystal = 8000000
$baud = 9600

Dim X As String * 3 , Y As Integer , I As Integer

Ddrb = &B00000111
Portb = &B11111111
Y = 0
I = 0
Do
Portb = &B11111110
   If Pinb.3 = 0 Then
   X = X + "1"
   I = I + 1
   Elseif Pinb.4 = 0 Then
   X = X + "4"
   I = I + 1
   Elseif Pinb.5 = 0 Then
   X = X + "7"
   I = I + 1
   Elseif Pinb.6 = 0 Then
   X = ""
   End If
   Waitms 80

Portb = &B11111101
   If Pinb.3 = 0 Then
   X = X + "2"
   I = I + 1
   Elseif Pinb.4 = 0 Then
   X = X + "5"
   I = I + 1
   Elseif Pinb.5 = 0 Then
   X = X + "8"
   I = I + 1
   Elseif Pinb.6 = 0 Then
   X = X + "0"
   I = I + 1
   End If
   Waitms 80

Portb = &B11111011
   If Pinb.3 = 0 Then
   X = X + "3"
   I = I + 1
   Elseif Pinb.4 = 0 Then
   X = X + "6"
   I = I + 1
   Elseif Pinb.5 = 0 Then
   X = X + "9"
   I = I + 1
   Elseif Pinb.6 = 0 Then
   Delchar X , I
   I = I - 1
   End If
   Waitms 80

Y = Val(x)
If Y > 999 Then
X = "ERR"
Print X
Y = 0
X = ""
End If

If I > 3 Then
I = 0
End If

Print Y



Loop
End