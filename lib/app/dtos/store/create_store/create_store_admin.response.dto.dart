class CreateStoreAdminResponseDTO {
  int? id;
  String? name;
  String? photo;
  String? role;

  CreateStoreAdminResponseDTO({this.id, this.name, this.photo, this.role});

  CreateStoreAdminResponseDTO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['photo'] = photo;
    data['role'] = role;
    return data;
  }
}
