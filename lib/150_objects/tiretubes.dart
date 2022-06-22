class TyreTubes {
  String material = 'Synthetic Rubber';
  double tubeDia = 27.5;
  double maxPressureInPsi = 60;
  double currentPressureInPsi = 30;
  double width = 2.3;

  double checkPressure(bool isPressureGaugeAttached) {
    return currentPressureInPsi;
  }

  bool inflate(bool isPressureInRange, bool isValveOpened) {
    return true;
  }

  bool deflate(bool isValveOpened) {
    return true;
  }
}
