#include "HX711.h"
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#define DOUT  A0
#define CLK  A1
LiquidCrystal_I2C lcd(0x27, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);
HX711 scale(DOUT, CLK);
float calibration_factor = 394.10;
int GRAM;

void setup() {
  Serial.begin(9600);
  scale.set_scale();
  scale.tare();
  lcd.begin(16,2);
  lcd.clear();
  lcd.print("Massa Makanan:");
  lcd.setCursor(0,1);
  lcd.setCursor(7,1);
  lcd.print("GRAM");
}

void loop() {
  scale.set_scale(calibration_factor);
  GRAM = scale.get_units(), 4;
  Serial.print(GRAM);
  Serial.print(" Gram");
  Serial.println();
  lcd.setCursor(0,1);
  lcd.print("     ");
  lcd.setCursor(0,1);
  lcd.print(GRAM);
  delay(1000);
}
