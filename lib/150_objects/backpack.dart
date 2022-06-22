class BackPack {
  String makeModel;
  String typeOfBag;
  bool isItWithWheels;
  bool isZipOpen;
  double capacity;

  BackPack({
    required this.makeModel,
    required this.typeOfBag,
    required this.capacity,
    required this.isItWithWheels,
    required this.isZipOpen,
  });

  bool openZip(bool? isItOpenAlready){
    if(isItOpenAlready == null || isItOpenAlready == false){
      return isZipOpen;
    }
    return !isZipOpen;
  }

  bool carryTheBackPack(String? whereToCarry) {
    if (whereToCarry == null) {
      return false;
    }
    bool canCarryTheBackPack;
    switch (whereToCarry) {
      case 'In hands':
        {
          canCarryTheBackPack = true;
        }
        break;
      case 'On shoulders':
        {
          canCarryTheBackPack = true;
        }
        break;
      case 'Pull behind you':
        {
          isItWithWheels
              ? canCarryTheBackPack = true
              : canCarryTheBackPack = false;
        }
        break;
      default:
        {
          canCarryTheBackPack = false;
        }
    }
    return canCarryTheBackPack;
  }
}
