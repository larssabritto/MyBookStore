class Book {
  String? author;
  bool? available;
  String? cover;
  int? id;
  int? idStore;
  int? rating;
  String? synopsis;
  String? title;
  int? year;

  Book(
      {this.author,
        this.available,
        this.cover,
        this.id,
        this.idStore,
        this.rating,
        this.synopsis,
        this.title,
        this.year});

  Book.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = this.author;
    data['available'] = this.available;
    data['cover'] = this.cover;
    data['id'] = this.id;
    data['idStore'] = this.idStore;
    data['rating'] = this.rating;
    data['synopsis'] = this.synopsis;
    data['title'] = this.title;
    data['year'] = this.year;
    return data;
  }
}