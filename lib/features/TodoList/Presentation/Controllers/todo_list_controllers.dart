import 'package:flutter_application_1/features/TodoList/Data/Entity/todo_list_response.dart';
import 'package:flutter_application_1/features/TodoList/Domain/todo_list_repository.dart';
import 'package:get/get.dart';

class TodoListController extends GetxController {
  late TodoListRepository repo;

  TodoListController({required this.repo});

  RxList<TodoListResponse> todos = RxList(<TodoListResponse>[]);
  void fetchLatestTodos() async {
    todos.clear();
    todos.addAll(await repo.call());
  }

  @override
  void onInit() {
    fetchLatestTodos();
    // TODO: implement onInit
    super.onInit();
  }
}
