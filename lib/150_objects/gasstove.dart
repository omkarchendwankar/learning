class GasStove {
  bool? isRegulatorOn = false;
  bool? isGasStoveOn = false;
  int? gasFlowRate = 5;
  int? maxflowRate = 10;
  int? zeroFlowRate = 0;

  ///To lightup and  shut off the gas stove
  bool gasStoveOn(bool? isGasCylinderRegulatorOn) {
    ///Temp local variable
    bool stoveOn = isGasStoveOn!;
    ///Condition to check if isGascylinder regulator is not null and it it true
    if (isGasCylinderRegulatorOn != null && isGasCylinderRegulatorOn) {
      return !stoveOn;
    }
    return stoveOn;
  }

  ///To regulate the gas flame
  int regulateGasflame(bool? isGasStoveOn, int? regulationRate) {
    int flowRate = gasFlowRate!;
    //To check if gastove off on and null
    if (isGasStoveOn == null || isGasStoveOn == false) return zeroFlowRate!;
    //To check if regulation rate is null
    if (regulationRate == null) return gasFlowRate!;
    //To check if regulation rate is higher than higestflowrate
    if (regulationRate > maxflowRate!) return maxflowRate!;
    //To check if regulation rate is lesser than lowest limit
    if (regulationRate <= -gasFlowRate!) return maxflowRate!;
    return flowRate += regulationRate;
  }
}
