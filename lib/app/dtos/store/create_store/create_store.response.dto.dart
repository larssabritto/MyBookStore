import 'package:mybookstore/app/dtos/store/create_store/create_store_admin.response.dto.dart';
import 'package:mybookstore/app/entities/store.dart';

class CreateStoreResponseDTO {
  String? refreshToken;
  Store? store;
  String? token;
  CreateStoreAdminResponseDTO? user;

  CreateStoreResponseDTO(
      {this.refreshToken, this.store, this.token, this.user});

  CreateStoreResponseDTO.fromJson(Map<String, dynamic> json) {
    refreshToken = json['refreshToken'];
    store = json['store'] != null ? Store.fromJson(json['store']) : null;
    token = json['token'];
    user = json['user'] != null
        ? CreateStoreAdminResponseDTO.fromJson(json['user'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['refreshToken'] = refreshToken;
    if (store != null) {
      data['store'] = store!.toJson();
    }
    data['token'] = token;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}
