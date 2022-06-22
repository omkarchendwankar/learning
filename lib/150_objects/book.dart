import 'package:meta/meta.dart';

class Book {
  String bookTitle;
  String bookAuthor;
  String bookGenre;
  bool isItOpen;
  int totalNumberOfPages;

  Book({
    required this.bookTitle,
    required this.bookAuthor,
    required this.bookGenre,
    required this.isItOpen,
    required this.totalNumberOfPages,
  });

  bool openBook(bool? isBookSelected) {
    if (isBookSelected == null || isBookSelected == false) {
      return isItOpen;
    }
    return !isItOpen;
  }

  String changePageNumber(bool? isBookOpen, int? goToPageNumber) {
    if (isBookOpen == false ||
        isBookOpen == null ||
        goToPageNumber == null ||
        goToPageNumber <= 0) {
      return 'Book is not open or page number entered is incorrect';
    }
    if (goToPageNumber > totalNumberOfPages) {
      return 'You have reached at the last page';
    }
    return 'Page $goToPageNumber';
  }
}

