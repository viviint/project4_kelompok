import 'package:get/get.dart';
import 'package:latihan_4/model/booksmodel.dart';

class BooksService extends GetConnect {
  Future<List<BooksModel>> getBooksModel() async {
    return await get("http://192.168.255.235:8032/maintainer/v1/data_buku")
        .then((value) {
      if (value.isOk && value.body != null) {
        return List<BooksModel>.from(
            value.body.map((e) => BooksModel.fromJson(e)));
      } else {
        throw value.statusText!;
      }
    });
  }
}
