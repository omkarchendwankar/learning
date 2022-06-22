class Pencile {
  String make;
  String leadColour;
  bool isItSharpened;

  Pencile({
    required this.make,
    required this.leadColour,
    required this.isItSharpened,
  });

  bool sharpen(bool? isItInsertedIntoSharpner) {
    if (isItInsertedIntoSharpner == null || isItInsertedIntoSharpner == false) {
      return isItSharpened;
    }
    return !isItSharpened;
  }

  String writeOnPaper(String? enterTextTobeWritten) {
    if (enterTextTobeWritten == null) {
      return "";
    }
    return enterTextTobeWritten;
  }
}
