$regfile = "m32def.dat"
$crystal = 8000000
Config Porta = Output
Config Portb = Output
Config Portc = Output
Config Portd = Output
Config Lcdpin = Pin , Rs = Pinc.0 , E = Pinc.2 , Db4 = Pinc.4 , Db5 = Pinc.5 , Db6 = Pinc.6 , Db7 = Pinc.7
Config Lcdbus = 4
Config Lcd = 16 * 2
Dim M As Byte
Dim N As Byte
Dim Q As Byte
Portd = 0

Do
Porta = &B11011110
Cls : Home
Cursor Off
Locate 1 , 2
Lcd "way 1:Go"
Locate 2 , 2
Lcd "way 2:Stop"

For M = 5 To 0 Step -1
 For N = 9 To 0 Step -1
    For Q = 0 To 19
    Portd.3 = 1


    Portb = Lookup(m , Sara)
    Waitms 25
    Portd.3 = 0
    Portd.4 = 1

    Portb = Lookup(n , Sara)
    Waitms 25
    Portd.4 = 0
    Next
 Next
Next

Porta = &B11011101
Cls : Home
Cursor Off
Locate 1 , 2
Lcd "way 1:Warning"
Locate 2 , 2
Lcd "way 2:Stop"

For M = 0 To 0 Step -1
 For N = 3 To 0 Step -1
    For Q = 0 To 19

    Portd.3 = 1
    Portb = Lookup(m , Sara)
    Waitms 25

    Portd.3 = 0
     Portd.4 = 1
    Portb = Lookup(n , Sara)
    Waitms 25
    Portd.4 = 0
    Next
 Next
Next
Porta = &B11110011
Cls : Home
Cursor Off
Locate 1 , 2
Lcd "way 1:Stop"
Locate 2 , 2
Lcd "way 2:Go"

For M = 5 To 0 Step -1
 For N = 9 To 0 Step -1
    For Q = 0 To 19

    Portd.3 = 1
    Portb = Lookup(m , Sara)
    Waitms 25

    Portd.3 = 0
     Portd.4 = 1
    Portb = Lookup(n , Sara)
    Waitms 25
    Portd.4 = 0

    Next
 Next
Next
Porta = &B11101011
Cls : Home
Cursor Off
Locate 1 , 2
Lcd "way 1:Stop"
Locate 2 , 2
Lcd "way 2:Warning"

For M = 0 To 0 Step -1
 For N = 3 To 0 Step -1
    For Q = 0 To 19

    Portd.3 = 1
    Portb = Lookup(m , Sara)
    Waitms 25

    Portd.3 = 0
    Portd.4 = 1
    Portb = Lookup(n , Sara)
    Waitms 25
    Portd.4 = 0

    Next
 Next
Next
Loop
End
Sara:
Data &B11000000 , &B11111001 , &B10100100 , &B10110000 , &B10011001 , &B10010010 , &B10000010 , &B11111000 , &B10000000 , &B10010000