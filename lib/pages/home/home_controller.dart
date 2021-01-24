import 'package:get/get.dart';
import 'package:mock_data/model/mensalidades.dart';
import 'package:mock_data/repositories/consulta_api.dart';
import 'package:mock_data/routes/app_pages.dart';

class HomeController extends GetxController {
  RxList listMensalidades = [].obs;

  @override
  void onInit() {
    super.onInit();
    consultaApi();
  }

  Future<void> consultaApi() async {
    try {
      MinhaAPI _minhaAPI = MinhaAPI();
      var _json = await _minhaAPI.getMensalidades(userID: '1');
      listMensalidades.addAll(_json);
    } catch (erro) {
      print('ERROR>>> consultaApi ${erro.toString()}');
    }
  }

  goToDetail(Mensalidades mensalidade) {
    Get.toNamed(Routes.DETAILS, arguments: mensalidade);
  }
}
