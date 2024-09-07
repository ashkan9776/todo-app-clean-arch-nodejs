class TodoListResponse {
  final int id;
  final String title;
  final String description;

  TodoListResponse({
    required this.id,
    required this.title,
    required this.description,
  });

  // از فیلدهای nullable استفاده کنید و بررسی کنید که مقدار null نداشته باشند
  factory TodoListResponse.fromJson(Map<String, dynamic> json) {
    return TodoListResponse(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'No Title', // اگر null بود مقدار پیش‌فرض بگذارید
      description: json['description'] ?? 'No Description', // مدیریت null
    );
  }
}
