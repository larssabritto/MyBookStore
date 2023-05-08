import 'package:mybookstore/app/core/contracts/rest_entity.dart';
import 'package:mybookstore/app/dtos/user_dto.dart';

class CreateStoreRequestDTO implements RestEntity {
  String? name;
  String? slogan;
  String? banner;
  UserDTO? admin;

  CreateStoreRequestDTO({this.name, this.slogan, this.banner, this.admin});

  CreateStoreRequestDTO.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slogan = json['slogan'];
    banner = json['banner'];
    admin = json['admin'] != null ? UserDTO.fromJson(json['admin']) : null;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['slogan'] = slogan;
    data['banner'] = banner;
    if (admin != null) {
      data['admin'] = admin!.toJson();
    }
    return data;
  }
}
