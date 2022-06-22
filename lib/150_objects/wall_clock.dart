class WallClock {
  String make = 'Titan';
  DateTime currentTime = DateTime.now();
  bool areBatteriesInstalled = true;
  int batteryLifeInDays = 45;
  bool isItHangedOnWall = false;

  DateTime getCurrentTime() {
    return currentTime;
  }

  DateTime changeCurrentTime(DateTime newTime) {
    return newTime;
  }

  bool replaceBatteries(bool areOldBatteriesRemoved) {
    return true;
  }

  bool hangOnWall() {
    return true;
  }
}
