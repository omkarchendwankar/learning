class WaterBottle {
  double? totalCapacityInMl = 1000;
  double? capacityConsumedInMl = 200;
  bool? isCapTakenOff = false;

  ///To remove cap before use
  bool removeCap(bool? isCapTakenOffAlready) {
    //To check whether cap is removed already or it is null
    if (isCapTakenOffAlready == null || isCapTakenOffAlready == true) {
      return isCapTakenOff!;
    }
    return !isCapTakenOff!;
  }

  ///To either pour water out of the bottle or into the bottle
  double pourTheWater(bool? isCapTakenOff, double? quantityRequiredInMl,
      bool? pourIntoTheBottle) {
    //temp local instance variable
    double quantityOfWaterIn = capacityConsumedInMl!;
    //To check whether each passed parameter is null and if cap is not taken off
    if (isCapTakenOff == null ||
        isCapTakenOff == false ||
        quantityRequiredInMl == null ||
        pourIntoTheBottle == null) {
      return quantityOfWaterIn;
    }
    //If quantity required is less than or equal to capacity available
    if (quantityRequiredInMl <= totalCapacityInMl! - quantityOfWaterIn &&
        pourIntoTheBottle) {
      quantityOfWaterIn += quantityRequiredInMl;
    } //If quantity required is less than or equal to water available in the bottle
    else if (quantityRequiredInMl <= quantityOfWaterIn && !pourIntoTheBottle) {
      quantityOfWaterIn -= quantityRequiredInMl;
    } //If quantity is higher than capacity available and water is poured in
    else if (pourIntoTheBottle) {
      return quantityOfWaterIn = totalCapacityInMl!;
    } //If quantity is higher than water availble and water is poured out
    else {
      quantityOfWaterIn = 0;
    }
    return quantityOfWaterIn;
  }
}
