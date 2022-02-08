import 'package:get/get.dart';
import 'package:latihan_4/model/ratingmodel.dart';

class RatingService extends GetConnect {
  Future<List<RatingModel>> getRatingModel() async {
    return await get("http://192.168.255.235:8032/maintainer/v1/reting_history")
        .then((value) {
      if (value.isOk && value.body != null) {
        return List<RatingModel>.from(
            value.body.map((e) => RatingModel.fromJson(e)));
      } else {
        throw value.statusText!;
      }
    });
  }
}
