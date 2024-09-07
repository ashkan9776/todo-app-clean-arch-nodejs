import 'package:flutter_application_1/features/TodoList/Data/Entity/todo_list_response.dart';

abstract class TodoListRepository {
  Future<List<TodoListResponse>> call();
}
