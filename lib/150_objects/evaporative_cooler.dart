class EvaporativeCooler {
  String make = 'Bluestar';
  bool isItOn = false;
  double maxCapacityOfEvaporativeLiquidInLiters = 2.5;
  double evaporativeLiquidAvailableInLiters = 1;
  int currentSpeed = 3;
  int maxSpeed = 5;

  bool powerOn() {
    return true;
  }

  bool refillEvaporativeLiquid() {
    return true;
  }

  int increaseSpeed(int changeInSpeed) {
    return currentSpeed += changeInSpeed;
  }

  int decreaseSpeed(int changeInSpeed) {
    return currentSpeed -= changeInSpeed;
  }
}
