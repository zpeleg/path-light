//
// Created by ziv on 20/02/17.
//

#include "gtest/gtest.h"
#include "../src/master/LighterBrain.h"
#include "FakeIt.h"
#include "../src/ArduinoAbstract/consts.h"

using namespace fakeit;
#define PIN 2

class LighterBrainTests : public ::testing::Test {
public:
    LighterBrainTests() {
        _instance = new LighterBrain(_mockPin.get(), _mockTime.get(), PIN);
    }

    virtual ~LighterBrainTests() {
        delete _instance;
    };

protected:
    Mock<ITimeWrapper> _mockTime;
    Mock<IPinWrapper> _mockPin;
    LighterBrain *_instance;
};

TEST_F(LighterBrainTests, PinTurnedOn) {
    Fake(Method(_mockTime, delay));
    Fake(Method(_mockPin, digitalWrite));
    _instance->Loop();
    Verify(Method(_mockPin, digitalWrite).Matching([](uint8_t pin, uint8_t value) { return value == HIGH; })).Once();
}

TEST_F(LighterBrainTests, PinTurnedOff) {
    Fake(Method(_mockTime, delay));
    Fake(Method(_mockPin, digitalWrite));
    _instance->Loop();
    Verify(Method(_mockPin, digitalWrite).Matching([](uint8_t pin, uint8_t value) { return value == LOW; })).Once();
}

TEST_F(LighterBrainTests, DelayedTwice) {
    Fake(Method(_mockTime, delay));
    Fake(Method(_mockPin, digitalWrite));
    _instance->Loop();
    Verify(Method(_mockTime, delay)).Exactly(2);
}