#include <Servo.h>

Servo myservo1;
char datachar;
int data[20];
int i,servo1;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  myservo1.attach(3);
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
    myservo1.write(servo1);
    Serial.println(servo1);
    }
    delay(10);
    }
  
