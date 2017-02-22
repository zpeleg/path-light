//
// Created by ziv on 19/02/17.
//

#ifndef POC_ITIMEWRAPPER_H
#define POC_ITIMEWRAPPER_H

#include "stdint.h"
class ITimeWrapper{
public:
    virtual ~ITimeWrapper(){};
    virtual unsigned long millis(void) = 0;
    virtual unsigned long micros(void) = 0;
    virtual void delay(unsigned long) = 0;
    virtual void delayMicroseconds(unsigned int us) = 0;
    virtual unsigned long pulseIn(uint8_t pin, uint8_t state, unsigned long timeout) = 0;
};
#endif //POC_ITIMEWRAPPER_H
