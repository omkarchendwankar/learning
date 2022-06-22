class WristWatch {
  String makeModel = 'Fastrack';
  DateTime currentTime = DateTime.now();
  bool isBatteryInstalled = true;

  bool removeBattery(bool? isBackCaseRemoved) {
    return true;
  }

  bool insertBattery(bool? isBackCaseRemoved) {
    return true;
  }

  DateTime changeCurrentTime(DateTime changedTime) {
    return changedTime;
  }
}
