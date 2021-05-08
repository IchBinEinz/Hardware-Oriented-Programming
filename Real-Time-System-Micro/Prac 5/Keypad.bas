$regfile = "8535def.dat"

$crystal = 8000000
$baud = 9600

Config Portb.0 = Output , Portb.1 = Output , Portb.2 = Output
Config Pinb.3 = Input , Pinb.4 = Input , Pinb.5 = Input , Pinb.6 = Input

Do
Set Portb.0
Reset Portb.1
Reset Portb.2
   If Pinb.3 = 1 Then
   Print "1"
   Elseif Pinb.4 = 1 Then
   Print "4"
   Elseif Pinb.5 = 1 Then
   Print "7"
   Elseif Pinb.6 = 1 Then
   Print "*"
   Waitms 100
   End If

Reset Portb.0
Set Portb.1
Reset Portb.2
   If Pinb.3 = 1 Then
   Print "2"
   Elseif Pinb.4 = 1 Then
   Print "5"
   Elseif Pinb.5 = 1 Then
   Print "8"
   Elseif Pinb.6 = 1 Then
   Print "0"
   Waitms 100
   End If

Reset Portb.0
Reset Portb.1
Set Portb.2
   If Pinb.3 = 1 Then
   Print "3"
   Elseif Pinb.4 = 1 Then
   Print "6"
   Elseif Pinb.5 = 1 Then
   Print "9"
   Elseif Pinb.6 = 1 Then
   Print "#"
   Waitms 100
   End If








Loop