class CupBoard {
  String material = 'Wood';
  double heightInInches = 12;
  double widthInInches = 12;
  double depthInInches = 12;
  int maxCapacityInNumbers = 10;

  bool openDoor(bool isAlreadyOpened) {
    return true;
  }

  bool closeDoor(bool isAlreadyClosed) {
    return true;
  }

  int storeItem(int numberOfItems) {
    return numberOfItems;
  }
}
