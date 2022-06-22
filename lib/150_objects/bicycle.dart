class Bicycle {
  bool? isMoving = false;
  int? bicycleSpeed = 5;
  bool? headlightsOn = false;

  ///To start riding the bicycle
  bool startRiding(
    bool? isTireFlat,
    bool? isLockedRemoved,
    bool? areBreaksWorking,
  ) {
    //To check if isTireFlat is null and true, isLockedRemoved is null and false, areBreaksWorking is null and false
    if (isTireFlat == null ||
        isTireFlat == true ||
        isLockedRemoved == null ||
        isLockedRemoved == false ||
        areBreaksWorking == null ||
        areBreaksWorking == false) return isMoving!;
    return !isMoving!;
  }

  ///To increase speed of the bicycle
  int IncreseSpeed(bool? isMoving, int? torqueInputOnPaddle) {
    //temp local variable
    int currentBicycleSpeed = bicycleSpeed!;
    //To check if isMoving is null and false and torqueInputOnpaddle is null
    if (isMoving == false || isMoving == null) return 0;
    //To check if torqueInputOnpaddle is negative and zero
    if (torqueInputOnPaddle == null || torqueInputOnPaddle <= 0) return currentBicycleSpeed;
    return currentBicycleSpeed += torqueInputOnPaddle;
  }
}
