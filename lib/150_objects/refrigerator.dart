class Refrigerator {
  String makeModel = "Whirlpool 240 Litres";
  double totalCapacityInLiters = 240;
  bool isIton = false;
  bool isDoorOpen = false;

  bool powerOn(bool isButtonPressed) {
    return isButtonPressed ? !isIton : isIton;
  }

  bool openDoor(bool isDoorHandleGrabbed) {
    return isDoorHandleGrabbed ? !isDoorOpen : isDoorOpen;
  }

  int storePerishables(bool isDoorOpen, int numOfItemsStore) {
    return numOfItemsStore;
  }
}
