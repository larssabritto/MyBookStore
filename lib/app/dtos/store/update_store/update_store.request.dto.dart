import 'package:mybookstore/app/core/contracts/rest_entity.dart';

class UpdateStoreRequestDTO implements RestEntity {
  String? name;
  String? slogan;
  String? banner;

  UpdateStoreRequestDTO({this.name, this.slogan, this.banner});

  UpdateStoreRequestDTO.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slogan = json['slogan'];
    banner = json['banner'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['slogan'] = slogan;
    data['banner'] = banner;
    return data;
  }
}
