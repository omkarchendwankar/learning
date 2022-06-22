class Stapler {
  String makeModel;
  int pinsAvailable;
  int maxPinsItCanTake;
  int numberOfPapersItCanStaple;

  Stapler({
    required this.makeModel,
    required this.maxPinsItCanTake,
    required this.numberOfPapersItCanStaple,
    required this.pinsAvailable,
  });

  String staple(bool? arePinsAvailable, int? numberOfPapersToStaple) {
    if (arePinsAvailable == null ||
        arePinsAvailable == false ||
        numberOfPapersToStaple == null ||
        numberOfPapersToStaple > numberOfPapersItCanStaple) {
      return 'Cannot staple $numberOfPapersToStaple at a time';
    }
    return '$numberOfPapersToStaple are stapled';
  }

  String refillTheStapler(bool? arePinsAvailable, int? numberOfPinsToRefill) {
    if (arePinsAvailable == null ||
        arePinsAvailable == false ||
        numberOfPinsToRefill == null) {
      return 'Cannot refill the stapler';
    }
    if (numberOfPinsToRefill > maxPinsItCanTake) {
      return 'Stapler is fully refilled with $maxPinsItCanTake, Cannot refill remaining ${maxPinsItCanTake - numberOfPinsToRefill}';
    }
    return 'Stapler is reilled with $numberOfPinsToRefill pins';
  }
}
