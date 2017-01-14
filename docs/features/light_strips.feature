Feature: The light strip is gradually turned on when movement is detected at either end of the path.
  The lights should fade in from the correct direction when a person triggers
  the movement sensor. The lights should not work at day time.

  Scenario: A person walks up to the sensor at night when the lights are off
    Given: It is night time
    And: The led strip is off
    When: A person triggers the movement sensor
    Then: The light strip will start the fade in animation from the direction the person is coming from
    And: The light will stay on for the configured amount of time

  Scenario: A person walks up to the sensor at night when the lights are on
    Given: It is night time
    And: The led strip is on
    When: A person triggers the movement sensor
    Then: The light strip will stay on
    And: The timeout will increase by the configured duration

  Scenario: A person walks up to the sensor at night when the lights are fading in
    Given: It is night time
    And: The light strip is in mid fade
    When: A person triggers the movement sensor
    Then: The animation is not interrupted
    And: The timeout is increased by the configured duration

  Scenario: A person walks up to the sensor when it is daytime
    Given: It is day time
    And: The led strip is off
    When: A person triggers the movement sensor
    Then: The light strip will stay off
