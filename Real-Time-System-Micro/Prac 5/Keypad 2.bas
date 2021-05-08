$regfile = "8535def.dat"

$crystal = 8000000
$baud = 9600

Ddrb = &B00000111
Portb = &B11111111

Do
PORTB = &B11111110
   If Pinb.3 = 0 Then
   Print "1"
   Elseif Pinb.4 = 0 Then
   Print "4"
   Elseif Pinb.5 = 0 Then
   Print "7"
   Elseif Pinb.6 = 0 Then
   Print "*"
   End If
   Waitms 10

Portb = &B11111101
   If Pinb.3 = 0 Then
   Print "2"
   Elseif Pinb.4 = 0 Then
   Print "5"
   Elseif Pinb.5 = 0 Then
   Print "8"
   Elseif Pinb.6 = 0 Then
   Print "0"
   End If
   Waitms 10

Portb = &B11111011
   If Pinb.3 = 0 Then
   Print "3"
   Elseif Pinb.4 = 0 Then
   Print "6"
   Elseif Pinb.5 = 0 Then
   Print "9"
   Elseif Pinb.6 = 0 Then
   Print "#"
   End If
   Waitms 10








Loop
End