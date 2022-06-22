class CeilingFan {
  //It tells whether fan is currntly on or off
  bool? isPowerOn = false;
  int? maxSpeed = 5;
  //This speed is either when fan is off or regulator used to make it zero
  int? noSpeed = 0;
  int? currentSpeed = 3;

  ///To start fan
  bool startFan(bool? isButtonPressed) {
    //To check if button is not pressed and it is null
    if (isButtonPressed == null || isButtonPressed == false) return isPowerOn!;
    return !isPowerOn!;
  }

  ///To adjust speed of fan
  int AdjustSpeed(bool? isFanOn, int? desiredSpeed) {
    //To check if isFanOn is null and false and  desiredSpeed is null
    if (isFanOn == null || isFanOn == false || desiredSpeed == null)
      return currentSpeed!;
    //To check if desiredSpeed is less than 1
    if (desiredSpeed < 1) return noSpeed!;
    //To check if desiredSpeed is greater than maxspeed
    if (desiredSpeed > 5) return maxSpeed!;
    return desiredSpeed;
  }
}

