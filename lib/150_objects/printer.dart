class Printer {
  String makeModel = 'HP smart tank 515';
  bool isItOn = false;
  bool isCartridgInstalled = true;
  bool isLidDown = false;

  bool takeInPaper() {
    return true;
  }

  bool replaceCartridge() {
    return true;
  }

  bool printOnPaper(bool isButtonPressed, bool isPaperInserted) {
    return true;
  }

  bool liftThelid() {
    return true;
  }

  bool lowertheLid() {
    return true;
  }

  bool takeOutPaper() {
    return true;
  }
}
