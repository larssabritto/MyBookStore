import 'package:mybookstore/app/core/contracts/rest_entity.dart';

class ValidateTokenRequestDTO implements RestEntity {
  String? refreshToken;

  ValidateTokenRequestDTO({this.refreshToken});

  ValidateTokenRequestDTO.fromJson(Map<String, dynamic> json) {
    refreshToken = json['refreshToken'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['refreshToken'] = refreshToken;
    return data;
  }
}
