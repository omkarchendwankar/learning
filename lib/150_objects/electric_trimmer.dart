class ElectricTrimmer {
  String makeModel = 'Philips BT3102';
  double batteryStatus = 20.1;
  bool isItOn = false;
  int maxTrimLength = 10;
  int currentTrimLengthInMM = 2;

  bool isPowerOn(bool? isButtonPressed) {
    if (isButtonPressed == null || isButtonPressed == false) {
      return isItOn;
    }
    return !isItOn;
  }

  int increaseTrimLength(bool? isButtonPressed, int changeInTrimLength) {
    if (isButtonPressed == null || isButtonPressed == false) {
      return 0;
    }
    return currentTrimLengthInMM += changeInTrimLength;
  }

  int decreaseTrimLength(bool? isButtonPressed, int changeInTrimLength) {
    if (isButtonPressed == null || isButtonPressed == false) {
      return 0;
    }
    return currentTrimLengthInMM -= changeInTrimLength;
  }

  double charge(double? powerInput) {
    if (powerInput == null) {
      return 0;
    }
    return batteryStatus += powerInput;
  }
}
