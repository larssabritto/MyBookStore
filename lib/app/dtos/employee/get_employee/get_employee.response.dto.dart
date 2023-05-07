class GetEmployeeResponseDTO {
  int? id;
  String? name;
  String? photo;
  String? username;

  GetEmployeeResponseDTO({this.id, this.name, this.photo, this.username});

  GetEmployeeResponseDTO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['photo'] = photo;
    data['username'] = username;
    return data;
  }
}