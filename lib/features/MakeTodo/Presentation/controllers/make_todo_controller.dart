import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/routes.dart';
import 'package:flutter_application_1/features/MakeTodo/Data/Entities/make_todo_dto.dart';
import 'package:flutter_application_1/features/MakeTodo/Domain/make_todo_repository.dart';
import 'package:get/get.dart';

class MakeTodoController extends GetxController {
  late MakeTodoRepository repo;
  MakeTodoController({required this.repo});

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  void createTodo() async {
    final title = titleController.text;
    final description = descriptionController.text;

    if (title.isEmpty || description.isEmpty) {
  //    Get.snackbar('Create Todo', 'Please enter title and description');
      return;
    }

    // make API call
    await repo.call(
      body: MakeTodoDto(
        title: title,
        description: description,
      ),
    );
  }

  void routeToTodoList() {
    Get.toNamed(AppRoutes.todoList);
  }
}
