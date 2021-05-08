$regfile = "8535def.dat"

$crystal = 8000000
$baud = 9600

Config Portb.0 = Output , Portb.1 = Output , Portb.2 = Output
Config Pinb.3 = Input , Pinb.4 = Input , Pinb.5 = Input , Pinb.6 = Input
Dim Y As String * 3
Dim Y0 As String * 1
Portb = 0
Do

   Portb = 1
   If Pinb.3 = 1 Then
   Y0= Y0 + Y
   Y = Y + "1"
   Reset Portb.0
Reset Portb.1
Reset Portb.2
Reset Portb.3
Reset Portb.4
Reset Portb.5
Reset Portb.6
   Elseif Pinb.4 = 1 Then
   Y0= Y0 + Y
   Y = Y + "4"
   Reset Portb.0
Reset Portb.1
Reset Portb.2
Reset Portb.3
Reset Portb.4
Reset Portb.5
Reset Portb.6
   Elseif Pinb.5 = 1 Then
   Y0= Y0 + Y
   Y = Y + "7"
   Reset Portb.0
Reset Portb.1
Reset Portb.2
Reset Portb.3
Reset Portb.4
Reset Portb.5
Reset Portb.6
   Elseif Pinb.6 = 1 Then
   Y0= Y0 + Y
   Y = " "
   'Else
   'Y0 = Y0
   'Y = Y
   Waitms 100
   End If

   Portb = 2
   If Pinb.3 = 1 Then
   Y0 = Y0 + Y
   Y = Y +  "2"
   Elseif Pinb.4 = 1 Then
   Y0 = Y0 + Y
   Y = Y +  "5"
   Elseif Pinb.5 = 1 Then
   Y0 = Y0 + Y
   Y = Y +  "8"
   Elseif Pinb.6 = 1 Then
   Y0 = Y0 + Y
   Y = Y + "0"
   'Else
   'Y0 = Y0
  ' Y = Y
   End If

   Portb = 4
   If Pinb.3 = 1 Then
   Y0 = Y0 + Y
   Y = Y +  "3"
   Elseif Pinb.4 = 1 Then
   Y0 = Y0 + Y
   Y = Y +  "6"
   Elseif Pinb.5 = 1 Then
   Y0 = Y0 + Y
   Y = Y +  "9"
   Elseif Pinb.6 = 1 Then
   Y0 = Y0 + Y
   Y = Y + Y0
   'Else
   'Y0 = Y0
   'Y = Y
   End If






Print Y
Reset Portb.0
Reset Portb.1
Reset Portb.2
Reset Portb.3
Reset Portb.4
Reset Portb.5
Reset Portb.6

Waitms 1000

Loop