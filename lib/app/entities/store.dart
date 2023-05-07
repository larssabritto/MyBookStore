class Store {
  String? banner;
  int? id;
  String? name;
  String? slogan;

  Store({banner, id, name, slogan});

  Store.fromJson(Map<String, dynamic> json) {
    banner = json['banner'];
    id = json['id'];
    name = json['name'];
    slogan = json['slogan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['banner'] = banner;
    data['id'] = id;
    data['name'] = name;
    data['slogan'] = slogan;
    return data;
  }
}
