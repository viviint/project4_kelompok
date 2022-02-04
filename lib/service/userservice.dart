import 'package:get/get.dart';
import 'package:latihan_4/model/usermodel.dart';

class UserService extends GetConnect {
  Future<List<UserModel>> getUserModel() async {
    return await get("http://192.168.55.60:8032/maintainer/v1/data_user")
        .then((value) {
      if (value.isOk && value.body != null) {
        return List<UserModel>.from(
            value.body.map((e) => UserModel.fromJson(e)));
      } else {
        throw value.statusText!;
      }
    });
  }
}
