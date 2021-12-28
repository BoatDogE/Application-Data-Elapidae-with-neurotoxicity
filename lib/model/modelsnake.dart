class Snake {
  final int id;
  final String title;
  final String author;
  final String images;

  const Snake({
    required this.id,
    required this.author,
    required this.title,
    required this.images,
  });

  factory Snake.fromJson(Map<String, dynamic> json) => Snake(
        id: json['id'],
        author: json['author'],
        title: json['title'],
        images: json['urlImage'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'author': author,
        'urlImage': images,
      };
}
