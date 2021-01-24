import 'package:get/get.dart';
import 'package:mock_data/model/mensalidades.dart';

class DetailsController extends GetxController {
  Mensalidades mensalidade = Mensalidades();
  @override
  void onInit() {
    super.onInit();
    mensalidade = Get.arguments;
  }
}
