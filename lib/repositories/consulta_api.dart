import 'package:dio/dio.dart';
import 'package:mock_data/model/mensalidades.dart';

class MinhaAPI {
  Future<List<Mensalidades>> getMensalidades({String userID}) async {
    try {
      Dio _client = Dio();
      var response = await _client.get(
        'https://mockend.com/rodrigonepomuceno/mock_dados/posts',
      );
      print('RESPONSE ${response.data} \n');
      if (response != null) {
        return (response.data as List)
            .map((x) => Mensalidades.fromJson(x))
            .toList();
      }
      return null;
    } catch (e) {
      print('🔴 ERRO>>> getMensalidades -> $e \n');
      return null;
    }
  }
}
