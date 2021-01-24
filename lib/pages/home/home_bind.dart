import 'package:get/get.dart';
import 'package:mock_data/pages/home/home_controller.dart';

class HomeBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
