//
// Created by ziv on 19/02/17.
//

#ifndef POC_LIGHTERBRAIN_H
#define POC_LIGHTERBRAIN_H

#include "../ArduinoAbstract/IPinWrapper.h"
#include "../ArduinoAbstract/ITimeWrapper.h"

class LighterBrain {
public:
    LighterBrain(IPinWrapper &pinWrapper, ITimeWrapper &timeWrapper, uint8_t pin);
    virtual ~LighterBrain(){}
    void Setup();
    void Loop();
private:
    IPinWrapper& _pinWrapper;
    ITimeWrapper& _timeWrapper;
    uint8_t _pin;
};


#endif //POC_LIGHTERBRAIN_H
