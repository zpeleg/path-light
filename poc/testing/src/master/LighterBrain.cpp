//
// Created by ziv on 19/02/17.
//

#include "LighterBrain.h"
#include "../ArduinoAbstract/consts.h"

LighterBrain::LighterBrain(IPinWrapper &pinWrapper, ITimeWrapper &timeWrapper, uint8_t pin) :
        _pinWrapper(pinWrapper), _timeWrapper(timeWrapper), _pin(pin) {}

void LighterBrain::Setup() {
    _pinWrapper.pinMode(_pin, _pin);
}

void LighterBrain::Loop() {
    _pinWrapper.digitalWrite(_pin, HIGH);
    _timeWrapper.delay(1000);
    _pinWrapper.digitalWrite(_pin, LOW);
    _timeWrapper.delay(1000);

}
