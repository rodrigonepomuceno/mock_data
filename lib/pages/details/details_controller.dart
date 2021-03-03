import 'package:get/get.dart';
import 'package:mock_data/model/mensalidades.dart';

class DetailsController extends GetxController {
  Mensalidades mensalidade = Mensalidades();
  RxBool teste = false.obs;

  @override
  void onInit() {
    super.onInit();
    mensalidade = Get.arguments;
  }

  setTeste() {
    teste.value = !teste.value;
    teste.value ? print('OK') : print('erro');
  }
}
