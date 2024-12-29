class GenreDto {
  final int id;
  final String name;

  GenreDto({required this.id, required this.name});

  GenreDto.fromJson(Map<String, dynamic> map)
      : this(
          id: map['id'],
          name: map['name'],
        );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
