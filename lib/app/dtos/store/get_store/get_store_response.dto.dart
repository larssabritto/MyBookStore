class GetStoreResponseDTO {
  String? banner;
  int? idStore;
  String? name;
  String? slogan;

  GetStoreResponseDTO({this.banner, this.idStore, this.name, this.slogan});

  GetStoreResponseDTO.fromJson(Map<String, dynamic> json) {
    banner = json['banner'];
    idStore = json['idStore'];
    name = json['name'];
    slogan = json['slogan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['banner'] = banner;
    data['idStore'] = idStore;
    data['name'] = name;
    data['slogan'] = slogan;
    return data;
  }
}
