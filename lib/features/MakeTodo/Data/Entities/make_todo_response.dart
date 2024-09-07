class MakeTodoResponse {
  final int id;
  final String title;
  final String description;

  MakeTodoResponse({
    required this.id,
    required this.title,
    required this.description,
  });

  factory MakeTodoResponse.fromJson(Map<String, dynamic> json) =>
      MakeTodoResponse(
        id: json['id'],
        title: json['title'],
        description: json['description'],
      );
}
