import 'package:flutter_application_1/features/TodoList/Data/Repository/todo_list_repository_imp.dart';
import 'package:flutter_application_1/features/TodoList/Presentation/Controllers/todo_list_controllers.dart';
import 'package:get/get.dart';

class TodoListBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodoListController>(() => TodoListController(repo: TodoListRepositoryImp()));
  }
}
