import 'package:flutter_application_1/features/TodoList/Data/Entity/todo_list_response.dart';
import 'package:flutter_application_1/features/TodoList/Data/Remote/todo_list_service.dart';

import '../../Domain/todo_list_repository.dart';

class TodoListRepositoryImp extends TodoListRepository {
  final service = TodoListService();

  @override
  Future<List<TodoListResponse>> call() async {
    return await service.call(); 
  }
}
