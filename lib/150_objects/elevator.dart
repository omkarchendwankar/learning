class Elevator {
  bool? isDoorOpen = false;
  int? maxFloors = 10;
  int? currentFloorNumber = 2;

  ///To open the elevator door before entering in
  bool openDoor(bool? isButtonPressed) {
    //to check if button pressed and null
    if (isButtonPressed == null || isButtonPressed == false) return isDoorOpen!;
    return !isDoorOpen!;
  }
  ///To go to specific floor
  int goToFloor(bool? isDoorClosed, int? floorNumber) {
    //to check if door closed and floor number is null
    if (isDoorClosed == null || isDoorClosed == false || floorNumber == null) return currentFloorNumber!;
    //to check if floor number is less than 0
    if (floorNumber < 0) return 0;
    //to check if floor number is greater than 10
    if (floorNumber > 10) return maxFloors!;
    return floorNumber;
  }
}
