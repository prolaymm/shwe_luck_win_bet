import 'package:get/get.dart';
import 'package:shwe_luck_win_bet/app/module/controller/feature_main_controller.dart';

class FeatureMainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => FeatureMainController());
  }
}