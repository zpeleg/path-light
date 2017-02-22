//
// Created by ziv on 19/02/17.
//
#if ARDUINO
#ifndef POC_ARDUINOTIMEWRAPPER_H
#define POC_ARDUINOTIMEWRAPPER_H


#include "ITimeWrapper.h"
#include "stdint.h"
#include "Arduino.h"

class ArduinoTimeWrapper : public ITimeWrapper {
public:
    ArduinoTimeWrapper() {}
    virtual ~ArduinoTimeWrapper() {}

    virtual unsigned long millis(void) override {
        return ::millis();
    }

    virtual unsigned long micros(void) override {
        return ::micros();
    }

    virtual void delay(unsigned long ms) override {
        ::delay(ms);
    }

    virtual void delayMicroseconds(unsigned int us) override {
        ::delayMicroseconds(us);
    }

    virtual unsigned long pulseIn(uint8_t pin, uint8_t state, unsigned long timeout) override {
        return ::pulseIn(pin, state, timeout);
    }
};


#endif //POC_ARDUINOTIMEWRAPPER_H
#endif