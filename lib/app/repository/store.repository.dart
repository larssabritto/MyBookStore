import 'package:dio/dio.dart';
import 'package:mybookstore/app/core/http/handlers/error_handler.dart';
import 'package:mybookstore/app/core/services/store.service.dart';
import 'package:mybookstore/app/dtos/default.response.dto.dart';
import 'package:mybookstore/app/dtos/store/create_store/create_store.request.dto.dart';
import 'package:mybookstore/app/dtos/store/create_store/create_store.response.dto.dart';
import 'package:mybookstore/app/dtos/store/get_store/get_store_response.dto.dart';
import 'package:mybookstore/app/dtos/store/update_store/update_store.request.dto.dart';
import 'package:mybookstore/app/repository/contracts/istore.repository.dart';

class StoreRepository implements IStoreRepository {

  final StoreService _storeService = StoreService();

  @override
  Future<CreateStoreResponseDTO> createStore(CreateStoreRequestDTO store) async {
    try {
      Response response = await _storeService.createStore(store);
      return CreateStoreResponseDTO.fromJson(response.data);
    } catch(exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

  @override
  Future<GetStoreResponseDTO> getStore(int idStore) async {
    try {
      Response response = await _storeService.getStore(idStore);
      return GetStoreResponseDTO.fromJson(response.data);
    } catch(exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

  @override
  Future<DefaultResponseDTO> updateStore(int idStore, UpdateStoreRequestDTO store) async {
    try {
      Response response = await _storeService.updateStore(idStore, store);
      return DefaultResponseDTO.fromJson(response.data);
    } catch(exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

}