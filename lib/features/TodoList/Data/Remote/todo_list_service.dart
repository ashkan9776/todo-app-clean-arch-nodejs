import 'package:flutter_application_1/features/TodoList/Data/Entity/todo_list_response.dart';
import 'package:get/get.dart';

class TodoListService extends GetConnect {
  Future<List<TodoListResponse>> call() async {
    final response = await get(
      'http://10.0.2.2:3000/todos',
      contentType: 'application/json',
    );

    // بررسی اینکه آیا پاسخ معتبر است
    if (response.statusCode == 200) {
      if (response.body != null && response.body is List) {
        return [
          for (final jsonItem in response.body)
            TodoListResponse.fromJson(jsonItem)
        ];
      } else {
        throw Exception("Invalid response: body is null or not a List");
      }
    } else {
      throw Exception(
          "Request failed: ${response.statusCode}, ${response.statusText}");
    }
  }
}
