# Path Light Project

[TOC]

## The Problem
The entrance path to our house is very dark at night, we want to light it up. We want to do it in a spectacular way with lights fading in when detecting people coming in.

### Static Lights

We want the lights at either end of the path to stay constantly lit, these aren't led strips, they are regular lights.

## Challenges

### Controlling large amount of lights over a large distance
The Arduino does not have enough PWM outputs (even the Mega) to control the entire path and the static lights.

We will want to expand the amount of outputs that we use.an expansion board (like the [PCA9685](https://www.adafruit.com/product/815)) or two arduinos to control all the pwm lights.

Another problem with running all the lights off a single Arduino (or an arduino with expansion board) is the distance and amount of cables, which takes up a lot of space and is difficult to pass over the distance of the path.

#### Solution

We can solve the problem by:

* Using a PCA9685 to add more PWM outputs over i2c
* Use multiple Arduinos communicating

We will use two arduinos in a master-slave configuration communicating over RS485, half of the lights will be ocntrolled by one, and the other half will be controlled by the other. 

Any additional outputs needed will be added using the PCA9685.

### Facilitating future improvements
~~I would like to be able to expand the functionality of the product at a later date to add cool stuff like wifi or simply a light switch to keep it turned on. To do this we must design our code to be expandable and not fragile.~~

Relegated to v2 if ever.

## User stories

In the `/features` directory.

Basically: _If movement and night time, fade in the lights._

## Proposed solution

### Physical
```
   DDDDDDDDDDDDDDD
 +-----------------+
 |                 |
 |                 |
 |                 |
 |        BB      AA
 |        BB       AA
 |                 AA
SS                 |
SS                 |
 |                 |                                                          AAA
 +-----------------+------------------------------------------------+-+-+-----AAA------+
 |                                                                  | | |              |G
 |                                                                  | | |              |G
 |                                                                  | | |              |G
 |                                                                  | | |     BB       |G
 |                                                                  | | |     BB       |G
 |                                                                  | | |              |G
 |                                                                  | | |              |G
 |                                                                  | | |              |G
 |                                                                  | | |              |G
 +---LLLLL----LLLLL----LLLLL----LLLLL----LLLLL----LLLLL----LLLLL----LLLLL------+SS+----+
                                                                                SS
```

```
D - Door
G - Gate
B - Constant lights
S - Movement sensor
A - Arduino brains
L - Led strips
```

The system will be built out of two arduino brains communicating over RS485. The brain will be connected to half of the lights and the slave to the other half. Each will get the movement sensor near it, and the brain will also have the light sensor to check whether it is daytime.

### Software

The system will be built in two layers:

* one will be an **abstraction layer on top of the inputs and outputs** allowing you to use pins by name, without taking into consideration whether they are on the local arduino, the remote one or on a pwm expansion board.
* The second will be the simple **logic behavior** that turns the lights on and off according to the inputs.

#### Interfaces

##### HAL Level
Expose an input class and an output class, output clas should allow pwm and digital output

```
ArduinoOutput:
  void DigitalWrite(int OUTPUT)
  void AnalogWrite(int level)
  string name;
    
ArduinoInput:
  int AnalogRead()
```

There is no reason for digital read, I dont see the serial protocol being fast enough to read it.

An IO manager should hold all the instances and return them by the requested name.

```
IoManager:
  GetInput(string name)
  GetOutput(string name)
```


##### Arduino Over Serial

Communication has to be sync and on demand. I will design a protocol that will specify input and output, intput requiring a device name (Or pin??) and output the same with the value to set.


##### Behavior Level
At first, this will be super basic. The master arduino will look for movement on the sensor, check the amount of light outside and if everything is matching it will start the light animation from the correct direction.

Take note that this should be the changing layer if we add additional parts to the system like a button.

##### The code on each sever

###### Master - brain

```
loop:
  if movement detected and light is low:
    start animation
  if button was pressed:
    turn on all lights

animation:
  for li in lights:
    for fade in fade_values:
      li.set fade
```

###### Slave - extra pins

```
loop: 
  if serial has data:
    if output:
      set output
      send confirmation on serial
    if input:
      send input value
```
