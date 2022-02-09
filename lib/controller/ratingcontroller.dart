import 'package:get/get.dart';
import 'package:latihan_4/model/ratingmodel.dart';
import 'package:latihan_4/service/ratingservice.dart';

class RatingController extends GetxController {
  RatingService _ratingService = RatingService();
  var rate = <RatingModel>[];

  @override
  void onInit() {
    getRate();
    super.onInit();
  }

  void getRate() async {
    _ratingService.getRatingModel().then((value) {
      rate = value;
      update();
    });
  }
}
