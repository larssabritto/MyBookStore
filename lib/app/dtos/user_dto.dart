import 'package:mybookstore/app/core/contracts/rest_entity.dart';

class UserDTO implements RestEntity {
  String? name;
  String? photo;
  String? username;
  String? password;

  UserDTO({this.name, this.photo, this.username, this.password});

  UserDTO.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    photo = json['photo'];
    username = json['username'];
    password = json['password'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['photo'] = photo;
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}
