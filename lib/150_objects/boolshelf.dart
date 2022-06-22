import 'package:learning/150_objects/book.dart';

class BookShelf {
  String material = 'Wood';
  List<Book> booksInShelf = [];
  bool isSpaceAvailable = true;
  int maxNumBooksItCanTake = 50;
  int currentNumOfBooksInShelf = 2;

  bool putTheBook(Book? book) {
    if (book == null) {
      return false;
    }
    booksInShelf.add(book);
    return true;
  }

  bool getTheBook(Book? book) {
    if (book == null) {
      return false;
    }
    booksInShelf.remove(book);
    return true;
  }
}
