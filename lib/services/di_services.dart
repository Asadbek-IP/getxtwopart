import 'package:get/get.dart';
import 'package:getxtwopart/controller/home_controller.dart';
import 'package:getxtwopart/controller/home_controller_finalMethod.dart';

class DIService {
  static Future<void> init() async {
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => FinalMethodController(), fenix: true);
  }
}
