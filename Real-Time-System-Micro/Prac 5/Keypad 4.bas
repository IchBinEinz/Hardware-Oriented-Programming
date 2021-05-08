$regfile = "8535def.dat"

$crystal = 8000000
$baud = 9600

Ddrb = &B00000111
Portb = &B11111111
Dim Y As String * 3
Dim Y0 As String * 1

Do
PORTB = &B11111110
   If Pinb.3 = 1 Then
   Y0 = Y0 + Y
   Y = Y + "1"
   Elseif Pinb.4 = 1 Then
   Y0 = Y0 + Y
   Y = Y + "4"
   Elseif Pinb.5 = 1 Then
   Y0 = Y0 + Y
   Y = Y + "7"
   Elseif Pinb.6 = 1 Then
   Y0 = Y0 + Y
   Y = "   "
   End If
   Waitms 10

Portb = &B11111101
   If Pinb.3 = 1 Then
   Y0 = Y0 + Y
   Y = Y + "2"
   Elseif Pinb.4 = 1 Then
   Y0 = Y0 + Y
   Y = Y + "5"
   Elseif Pinb.5 = 1 Then
   Y0 = Y0 + Y
   Y = Y + "8"
   Elseif Pinb.6 = 1 Then
   Y0 = Y0 + Y
   Y = "0"
   End If
   Waitms 10

Portb = &B11111011
   If Pinb.3 = 1 Then
   Y0 = Y0 + Y
   Y = Y + "3"
   Elseif Pinb.4 = 1 Then
   Y0 = Y0 + Y
   Y = Y + "6"
   Elseif Pinb.5 = 1 Then
   Y0 = Y0 + Y
   Y = Y + "9"
   Elseif Pinb.6 = 1 Then
   Y0 = Y0 + Y
   Y = Y - Y0
   End If
   Waitms 10








Loop
End