import 'package:latihan_4/model/booksmodel.dart';
import 'package:get/get.dart';
import 'package:latihan_4/model/usermodel.dart';
import 'package:latihan_4/service/booksservice.dart';
import 'package:latihan_4/service/userservice.dart';

class UserController extends GetxController {
  UserService _userService = UserService();
  var users = <UserModel>[];

  @override
  void onInit() {
    getUser();
    super.onInit();
  }

  void getUser() async {
    _userService.getUserModel().then((value) {
      users = value;
      update();
    });
  }
}
