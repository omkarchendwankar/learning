class BluetoothSpeaker {
  String make = 'JBL';
  double batteryStatus = 10;
  bool isItOn = false;
  bool isItConnectedToDevice = false;
  int volume = 3;
  int maxVolume = 10;

  bool powerOn(bool isButtonPressed) {
    return true;
  }

  bool connectToNearestDevice(bool isButtonPressed) {
    return true;
  }

  double chargeBattery(double powerInput) {
    return batteryStatus += powerInput;
  }

  int increaseVolume(int changeInVolume) {
    return volume += changeInVolume;
  }

  int decreaseVolume(int changeInVolume) {
    return volume -= changeInVolume;
  }
}
