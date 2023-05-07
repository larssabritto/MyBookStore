class CreateStoreBookResponseDTO {
  String? author;
  bool? available;
  String? cover;
  int? id;
  int? idStore;
  int? rating;
  String? synopsis;
  String? title;
  int? year;

  CreateStoreBookResponseDTO(
      {this.author,
      this.available,
      this.cover,
      this.id,
      this.idStore,
      this.rating,
      this.synopsis,
      this.title,
      this.year});

  CreateStoreBookResponseDTO.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    available = json['available'];
    cover = json['cover'];
    id = json['id'];
    idStore = json['idStore'];
    rating = json['rating'];
    synopsis = json['synopsis'];
    title = json['title'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['author'] = author;
    data['available'] = available;
    data['cover'] = cover;
    data['id'] = id;
    data['idStore'] = idStore;
    data['rating'] = rating;
    data['synopsis'] = synopsis;
    data['title'] = title;
    data['year'] = year;
    return data;
  }
}