class User {
  int? id;
  String? name;
  String? photo;
  String? username;

  User({id, name, photo, username});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['photo'] = photo;
    data['username'] = username;
    return data;
  }
}
