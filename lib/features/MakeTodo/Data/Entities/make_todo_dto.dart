class MakeTodoDto {
  String title;
  String description;

  MakeTodoDto({
    required this.title,
    required this.description,
  });

  Map<String, dynamic> get toJson => {
        'title': title,
        'description': description,
      };
}
