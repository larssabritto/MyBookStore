import 'package:mybookstore/app/dtos/default.response.dto.dart';
import 'package:mybookstore/app/dtos/store/create_store/create_store.request.dto.dart';
import 'package:mybookstore/app/dtos/store/create_store/create_store.response.dto.dart';
import 'package:mybookstore/app/dtos/store/get_store/get_store_response.dto.dart';
import 'package:mybookstore/app/dtos/store/update_store/update_store.request.dto.dart';

abstract class IStoreRepository {
  Future<CreateStoreResponseDTO> createStore(CreateStoreDTO store);
  Future<GetStoreResponseDTO> getStore(int idStore);
  Future<DefaultResponseDTO> updateStore(int idStore, UpdateStoreRequestDTO store);
}