class DrawingBourd {
  String bourdColour = 'White';
  bool isItWiped = true;
  String contentWritten = "";

  String writeOnBourd(String? textToBeWritten) {
    if (textToBeWritten == null) {
      return contentWritten;
    }
    return contentWritten = textToBeWritten;
  }

  bool wipeTheBourd(bool? isItWippedAlready) {
    if (isItWippedAlready == null || isItWippedAlready == false) {
      return isItWiped;
    }
    return !isItWiped;
  }
}
