import 'package:mybookstore/app/entities/store.dart';
import 'package:mybookstore/app/entities/user.dart';

class LoginResponseDTO {
  String? refreshToken;
  Store? store;
  String? token;
  User? user;

  LoginResponseDTO({this.refreshToken, this.store, this.token, this.user});

  LoginResponseDTO.fromJson(Map<String, dynamic> json) {
    refreshToken = json['refreshToken'];
    store = json['store'] != null ? Store.fromJson(json['store']) : null;
    token = json['token'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
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
