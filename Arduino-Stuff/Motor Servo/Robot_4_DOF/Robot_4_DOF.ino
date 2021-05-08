#include <Servo.h>

Servo myservo1;
Servo myservo2;
Servo myservo3;
Servo myservo4;

char datachar;
int data[20];
int i,servo1,servo2,servo3,servo4;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  myservo1.attach(3);
  myservo2.attach(5);
  myservo3.attach(6);
  myservo4.attach(9);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  i=0;
  if(Serial.available())
  {
    datachar = Serial.read();
    while (datachar != '#')
    {
      if(isdigit(datachar))
      {
        data[i]=datachar-'0';
        i=i+1;
      }
      datachar = Serial.read();
    }

    servo1 = (data[0]*100)+(data[1]*10+data[2]);
    servo1 = (data[3]*100)+(data[4]*10+data[5]);
    servo1 = (data[6]*100)+(data[7]*10+data[8]);
    servo1 = (data[9]*100)+(data[10]*10+data[11]);
    myservo1.write(servo1);
    myservo2.write(servo2);
    myservo3.write(servo3);
    myservo4.write(servo4);
    //Serial.println(servo1);
    }
    delay(10);
    }
  
