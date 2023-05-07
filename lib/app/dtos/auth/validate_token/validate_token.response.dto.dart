class ValidateTokenResponseDTO {
  String? refreshToken;
  String? token;

  ValidateTokenResponseDTO({this.refreshToken, this.token});

  ValidateTokenResponseDTO.fromJson(Map<String, dynamic> json) {
    refreshToken = json['refreshToken'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['refreshToken'] = refreshToken;
    data['token'] = token;
    return data;
  }
}
