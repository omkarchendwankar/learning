import 'package:flutter_test/flutter_test.dart';
import 'package:learning/150_objects/book.dart';

void main() {
  Book? book = Book(
    bookAuthor: 'Shwetabh Gandwar',
    bookGenre: 'Self-help',
    bookTitle: 'The Rudest book ever',
    isItOpen: false,
    totalNumberOfPages: 260,
  );
  setUp(() {
    book = Book(
      bookTitle: 'The Rudest book ever',
      bookAuthor: 'Shwetabh Gandwar',
      bookGenre: "Self-help",
      isItOpen: false,
      totalNumberOfPages: 260,
    );
  });
  tearDown(() {
    book = null;
  });

  test('Allow user to open the book only if it not open already', () {
    //Arrange
    bool isBookSelected = true;
    //Act
    bool result = book!.openBook(isBookSelected);
    //Assert
    expect(result, true);
  });
  test('Allow user to open the book only if input parameter is non nullable',
      () {
    //Act
    bool result = book!.openBook(null);
    //Assert
    expect(result, false);
  });
  test(
      'Allow user to change page number only when book is open and page number is within range',
      () {
    //Arrange
    bool isBookOpen = true;
    int goToPageNumber = 200;
    //Act
    String result = book!.changePageNumber(isBookOpen, goToPageNumber);
    //Assert
    expect(result, 'Page 200');
  });
  test(
      'Allow user to change page number only when isBookOpen parameter is non nullable',
      () {
    //Arrange
    int goToPageNumber = 200;
    //Act
    String result = book!.changePageNumber(null, goToPageNumber);
    //Assert
    expect(result, 'Book is not open or page number entered is incorrect');
  });
  test(
      'Allow user to change page number only when goTopageNumber parameter is non nullable',
      () {
    //Arrange
    bool isBookOpen = true;
    //Act
    String result = book!.changePageNumber(isBookOpen, null);
    //Assert
    expect(result, 'Book is not open or page number entered is incorrect');
  });
  test(
      'Allow user to change page number only when isBookOpen and goTopageNumber parameter is non nullable',
      () {
    //Act
    String result = book!.changePageNumber(null, null);
    //Assert
    expect(result, 'Book is not open or page number entered is incorrect');
  });
}
