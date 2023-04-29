// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NameAndPictures {
  String name;
  String imagePath;
  NameAndPictures({
    required this.name,
    required this.imagePath,
  });

  NameAndPictures copyWith({
    String? name,
    String? imagePath,
  }) {
    return NameAndPictures(
      name: name ?? this.name,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'imagePath': imagePath,
    };
  }

  factory NameAndPictures.fromMap(Map<String, dynamic> map) {
    return NameAndPictures(
      name: map['name'] as String,
      imagePath: map['imagePath'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NameAndPictures.fromJson(String source) =>
      NameAndPictures.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'NameAndPictures(name: $name, imagePath: $imagePath)';

  @override
  bool operator ==(covariant NameAndPictures other) {
    if (identical(this, other)) return true;

    return other.name == name && other.imagePath == imagePath;
  }

  @override
  int get hashCode => name.hashCode ^ imagePath.hashCode;
}
