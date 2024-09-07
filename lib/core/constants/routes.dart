import 'package:flutter_application_1/features/MakeTodo/Presentation/binding/make_todo_binding.dart';
import 'package:flutter_application_1/features/MakeTodo/Presentation/screens/make_todo_screen.dart';
import 'package:flutter_application_1/features/TodoList/Presentation/Bindings/todo_list_bindings.dart';
import 'package:flutter_application_1/features/TodoList/Presentation/screens/todo_list_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final AppRoutes _instance = AppRoutes._internal();

  // Private constructor
  AppRoutes._internal();

  // Factory constructor to return the singleton instance
  factory AppRoutes() {
    return _instance;
  }

  static const String makeTodo = '/makeTodo';
  static const String todoList = '/todoList';

  static List<GetPage> get pages => [
        GetPage(
            name: AppRoutes.makeTodo,
            page: () => const MakeTodoScreen(),
            binding: MakeTodoBinding()),
        GetPage(
          name: AppRoutes.todoList,
          page: () => TodoListScreen(),
          binding: TodoListBindings(),
        ),
      ];
}
