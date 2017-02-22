#include "Arduino.h"
#include "LighterBrain.h"
#include "../ArduinoAbstract/ArduinoPinWrapper.h"
#include "../ArduinoAbstract/ArduinoTimeWrapper.h"


ArduinoPinWrapper *w = new ArduinoPinWrapper();
ArduinoTimeWrapper *t = new ArduinoTimeWrapper();
LighterBrain *brain = new LighterBrain(*w, *t, 13);

void setup() {
    brain->Setup();
}

void loop() {
    brain->Loop();
}
