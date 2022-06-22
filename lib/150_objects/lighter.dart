class Lighter {
  double fuelConsumptionPerSec;
  double fuelAvailableInMl;
  bool isItLit;

  Lighter({
    required this.fuelConsumptionPerSec,
    required this.fuelAvailableInMl,
    required this.isItLit,
  });

  set litTheLighter(double? duration) {
    if (fuelAvailableInMl > 0) {
      fuelAvailableInMl -= (duration! * fuelConsumptionPerSec);
    }
    isItLit = true;
  }
}
