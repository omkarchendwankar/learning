class WaterFilter {
  String makeModel = 'Kent-RO';
  bool isItOn = true;
  double maxWaterCapacityInLitres = 2;
  bool isCartridgeInstalled = true;
  double waterAvailableInLitres = 0.5;

  bool powerOn(bool? isButtonPressed) {
    return isButtonPressed! ? isItOn : !isItOn;
  }

  double getFilteredWater(double? amountOfWater) {
    return amountOfWater!;
  }

  double refillWithWater(double? amountOfWater) {
    return waterAvailableInLitres += amountOfWater!;
  }

  bool replaceFilter(bool? isOldCartridgeRemoved) {
    return isOldCartridgeRemoved!
        ? isCartridgeInstalled
        : !isCartridgeInstalled;
  }
}
