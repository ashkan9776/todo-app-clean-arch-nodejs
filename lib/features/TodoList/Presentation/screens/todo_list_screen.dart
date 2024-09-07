import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/TodoList/Presentation/Controllers/todo_list_controllers.dart';
import 'package:flutter_application_1/features/TodoList/Presentation/Widgets/todo_item_widgets.dart';
import 'package:get/get.dart';

class TodoListScreen extends GetView<TodoListController> {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => ListView.builder(
            itemBuilder: (context, index) =>
                TodoItemWidgets(model: controller.todos.value[index]),
            itemCount: controller.todos.value.length,
          ),
        ),
      ),
    );
  }
}
