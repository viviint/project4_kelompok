import 'package:latihan_4/model/booksmodel.dart';
import 'package:get/get.dart';
import 'package:latihan_4/service/booksservice.dart';

class BooksController extends GetxController {
  BooksService _booksService = BooksService();
  var books = <BooksModel>[];

  @override
  void onInit() {
    getBooks();
    super.onInit();
  }

  void getBooks() async {
    _booksService.getBooksModel().then((value) {
      books = value;
      update();
    });
  }
}
