$regfile = "8535def.dat"
$crystal = 8000000

Config Lcdpin = Pin , Db4 = Portc.3 , Db5 = Portc.2 , Db6 = Portc.1 , Db7 = Portc.0 , E = Portc.4 , Rs = Portc.5
Config Lcdbus = 4
Config Lcd = 16 * 2
Cursor Off

Home
Locate 1 , 6 : Lcd "SWN"
Lowerline
Locate 2 , 3 : Lcd "INKUBATOR"
Wait 1
Wait 1
Lowerline
Locate 2 , 0 : Lcd "By : Irawan"
