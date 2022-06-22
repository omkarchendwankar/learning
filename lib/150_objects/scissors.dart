class Scissors {
  String makeModel;
  String material;

  Scissors({
    required this.makeModel,
    required this.material,
  });
  
  double cut(double? lengthToBeCut) {
    if (lengthToBeCut == null) {
      return 0;
    }
    return lengthToBeCut;
  }
}
