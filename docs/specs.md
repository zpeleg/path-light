# Path Light Project

* The Problem
* Challenges
* User Stories
  * Cucumber
* Proposed solution
  * Overview
  * Details
* Physical Architecture
* Software Archutecture
  * Master
  * Slave
* UMLish

* Wifi Expansion
* Logging

## The Problem
The entrance path to our house is very dark at night, we want to light it up. We want to do it in a spectacular way with lights fading in when detecting people coming in.
Also, we have lights at the front of the house and at the start of the path that we want to turn on when it becomes dark.

## Challenges

### Controlling large amount of lights over a large distance
The Arduino Uno has 6 PWM pins, the Mega has 15. The path light will be 15 separate strips of leds, with the entrance and exit lights being additional two outputs.  
This means there are not enough pins in a single arduino, and we must use an expansion board (like the PCA9685) or two arduinos to control all the pwm lights.

Another problem with running all the lights off a single arduino (or ana arduino with expansion board) is that there are many cables to pass over a long distance, which takes up a lot of space and is difficult to pass over the distance of the path.

#### Solution
We will use two arduinos in a master-slave configuration communicating over RS485, half of the lights will be ocntrolled by one, and the other half will be controlled ny the other.

### Facilitating future improvements
I would like to be able to expand the functionality of the product a t a later date to add cool stuff like wifi or simply a light switch to keep it turned on. To do this we must design our code to be expandable and not like other simple arduino projects.

