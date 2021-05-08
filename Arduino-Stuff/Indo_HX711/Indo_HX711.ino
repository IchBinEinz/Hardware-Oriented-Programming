#include "HX711.h"
#define DOUT  A5
#define CLK  A4
HX711 scale(DOUT, CLK);
float calibration_factor = 344.10;
int GRAM;

void setup() {
  Serial.begin(9600);
    Serial.print(" set");
  scale.set_scale();
  scale.tare();
}

void loop() {
  scale.set_scale(calibration_factor);
  GRAM = scale.get_units(), 4;
  Serial.print(GRAM);
  Serial.print(" Gram");
  Serial.println();
}
