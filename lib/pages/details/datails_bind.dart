import 'package:get/get.dart';
import 'package:mock_data/pages/details/details_controller.dart';

class DetailsBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsController());
  }
}
