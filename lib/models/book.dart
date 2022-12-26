class Book {
  String image;
  String name;
  String author;
  String detail;
  late bool like;

  Book({
    required this.name,
    required this.author,
    required this.image,
    required this.like,
    required this.detail,
  });
}

class BookContent {
  String content;

  BookContent({required this.content});
}
