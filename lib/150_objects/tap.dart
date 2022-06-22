class Tap {
  String typeOfTap;
  bool isItOpen;
  double currentLiquidFlowRate;

  Tap({
    required this.typeOfTap,
    required this.isItOpen,
    required this.currentLiquidFlowRate,
  });

  bool openTap(bool? isItOpenAlready) {
    if (isItOpenAlready == null || isItOpenAlready == false) {
      return isItOpen;
    }
    return !isItOpen;
  }

  double regulateTheFlow(bool? isTapOpened, double? changeInFlowRate) {
    if (isTapOpened == null ||
        isTapOpened == false ||
        changeInFlowRate == null) {
      return 0;
    }
    return changeInFlowRate;
  }
}
