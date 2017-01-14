Feature: Turn and and off the light at the start and end of the path
  This concerns the lights in front of the house and the gate
  which should work independent of the movement sensor and turn on and
  and off at given times of the day

  Scenario: Daylight comes and light turns off
    Given: It is night time
    And: Light is turned on
    When: It changes into datetime
    Then: Constant lights should turn off

  Scenario: It becomes dark And light turns on
    Given: It is daytime
    And: Light is turned off
    When: It changes into night time
    Then: Constant lights should turn on

  Scenario: Movement is detected at day and light does not changes
    Given: Light is turned off
    And: It is daytime
    When: Movement is detected at sensor
    Then: Light should stay off

  Scenario: Movement is detected at night and light does not change
    Given: Light is turned on
    And: It is night time
    When: Movement is detected at sensor
    Then: Light should stay on
