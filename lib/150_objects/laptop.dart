class Laptop {
  String makeModel = 'Hp-Pavilion';
  String os = 'Windows';
  double batteryStatus = 12;
  bool isLidDown = true;

  ///To boot up the laptop
  bool bootUp(bool isButtonPressed) {
    return true;
  }
  ///To boot up the laptop
  bool sleep(bool isButtonPressed) {
    return true;
  }

  ///
  bool restart(bool isButtonPressed) {
    return true;
  }

  double charge(double powerInput) {
    return batteryStatus += powerInput;
  }

  bool liftTheLid(bool? isLidHeld) {
    return isLidHeld! ? !isLidDown : isLidDown;
  }

  bool lowerTheLid(bool? isLidHeld) {
    return isLidHeld! ? isLidDown : !isLidDown;
  }
}
