import 'dart:convert';

class GenreMovie {
  final int id;
  final String name;

  GenreMovie({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GenreMovie.fromMap(Map<String, dynamic> map) {
    return GenreMovie(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GenreMovie.fromJson(String source) =>
      GenreMovie.fromMap(json.decode(source) as Map<String, dynamic>);
}
