#include <Servo.h>

Servo myservo;
int val;

void setup() {
  // put your setup code here, to run once:
  myservo.attach(5);
}

void loop() {
  // put your main code here, to run repeatedly:
  for(val=0;val<=180;val++)
  {
    myservo.write(val);
    delay(25);
  }

  for(val=180;val>=0;val--)
  {
    myservo.write(val);
    delay(25);
  }
}
