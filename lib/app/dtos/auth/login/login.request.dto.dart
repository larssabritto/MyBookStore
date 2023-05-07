import 'package:mybookstore/app/core/contracts/rest_entity.dart';

class LoginRequestDTO implements RestEntity {
  String? user;
  String? password;

  LoginRequestDTO({this.user, this.password});

  LoginRequestDTO.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    password = json['password'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['user'] = user;
    data['password'] = password;
    return data;
  }
}
