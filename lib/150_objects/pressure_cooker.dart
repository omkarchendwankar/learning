class PressureCooker {
  String makeModel;
  double capacityInLitters;
  bool isOuterLidOn;

  PressureCooker({
    required this.makeModel,
    required this.capacityInLitters,
    required this.isOuterLidOn,
  });

  bool removeOuterLid(bool? isItAlreadyRemoved) {
    if (isItAlreadyRemoved == null) {
      return isOuterLidOn;
    }
    return !isOuterLidOn;
  }

  String cookTheItem(bool? isOuterLidClosed, String? enterTheItemToBeCooked) {
    if (isOuterLidClosed == null ||
        enterTheItemToBeCooked == null ||
        isOuterLidClosed == false) {
      return "";
    }
    return '$enterTheItemToBeCooked is cooked';
  }
}
