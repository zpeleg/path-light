//
// Created by ziv on 19/02/17.
//

#ifndef POC_PINWRAPPER_H
#define POC_PINWRAPPER_H

#include <stdint.h>


class IPinWrapper {
public:
    virtual ~IPinWrapper(){};
    virtual void pinMode(uint8_t, uint8_t) = 0;
    virtual void digitalWrite(uint8_t, uint8_t) = 0;
    virtual int digitalRead(uint8_t) = 0;
    virtual int analogRead(uint8_t) = 0;
    virtual void analogReference(uint8_t mode) = 0;
    virtual void analogWrite(uint8_t, int) = 0;
};


#endif //POC_PINWRAPPER_H
