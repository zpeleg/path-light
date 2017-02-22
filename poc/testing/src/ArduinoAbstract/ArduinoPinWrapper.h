//
// Created by ziv on 19/02/17.
//
#if ARDUINO
#ifndef POC_ARDUINOPINWRAPPER_H
#define POC_ARDUINOPINWRAPPER_H

#include "IPinWrapper.h"
#include "Arduino.h"

class ArduinoPinWrapper : public IPinWrapper {
public:
    ArduinoPinWrapper() {}

    virtual ~ArduinoPinWrapper() {}

    void pinMode(uint8_t pin, uint8_t mode) override {
        ::pinMode(pin, mode);
    }

    void digitalWrite(uint8_t pin, uint8_t value) override {
        ::digitalWrite(pin, value);
    }

    int digitalRead(uint8_t pin) override {
        ::digitalRead(pin);
    }

    int analogRead(uint8_t pin) override {
        return ::analogRead(pin);
    }

    void analogReference(uint8_t mode) override {
        ::analogReference(mode);
    }

    void analogWrite(uint8_t pin, int value) override {
        ::analogWrite(pin, value);
    }
};

#endif //POC_ARDUINOPINWRAPPER_H
#endif //ARDUINO