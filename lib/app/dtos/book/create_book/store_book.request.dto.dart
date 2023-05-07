import 'package:mybookstore/app/core/contracts/rest_entity.dart';

class StoreBookRequestDTO implements RestEntity {
  String? cover;
  String? title;
  String? author;
  String? synopsis;
  int? year;
  int? rating;
  bool? available;

  StoreBookRequestDTO(
      {this.cover,
      this.title,
      this.author,
      this.synopsis,
      this.year,
      this.rating,
      this.available});

  StoreBookRequestDTO.fromJson(Map<String, dynamic> json) {
    cover = json['cover'];
    title = json['title'];
    author = json['author'];
    synopsis = json['synopsis'];
    year = json['year'];
    rating = json['rating'];
    available = json['available'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cover'] = cover;
    data['title'] = title;
    data['author'] = author;
    data['synopsis'] = synopsis;
    data['year'] = year;
    data['rating'] = rating;
    data['available'] = available;
    return data;
  }
}