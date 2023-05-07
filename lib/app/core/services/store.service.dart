import 'package:dio/dio.dart';
import 'package:mybookstore/app/core/http/http_client.dart';
import 'package:mybookstore/app/dtos/store/create_store/create_store.request.dto.dart';
import 'package:mybookstore/app/dtos/store/update_store/update_store.request.dto.dart';

class StoreService {
  final HttpClient _httpClient = HttpClient();

  Future createStore(CreateStoreDTO store) async {
    return await _httpClient.post(
      '/store',
      store,
      options: Options(headers: {"ignoreAuth": true}),
    );
  }

  Future getStore(int idStore) async {
    return await _httpClient.get('/store/$idStore');
  }

  Future updateStore(int idStore, UpdateStoreRequestDTO store) async {
    return await _httpClient.put('/store/$idStore', store);
  }
}
