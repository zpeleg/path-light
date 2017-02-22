//
// Created by ziv on 20/02/17.
//


#include "gtest/gtest.h"
#include "FakeIt.h"
#include "../src/ArduinoAbstract/IPinWrapper.h"

using namespace fakeit;

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

TEST(TestName,Somtehing)
{
    Mock<IPinWrapper> pinWrapper;
    When(Method(pinWrapper,digitalRead)).Return(7);
    ASSERT_EQ(pinWrapper.get().digitalRead(123),7);
}