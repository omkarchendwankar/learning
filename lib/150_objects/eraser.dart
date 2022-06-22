class Eraser {
  String make;
  String colour;
  int length;
  int breadth;
  int height;

  Eraser({
    required this.make,
    required this.colour,
    required this.length,
    required this.breadth,
    required this.height,
  });
  String eraseText(String? textToBeErased) {
    if (textToBeErased == null) {
      return "";
    }
    return textToBeErased;
  }
}
