import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/make_todo_controller.dart';

class MakeTodoScreen extends GetView<MakeTodoController> {
  const MakeTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: controller.titleController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Title',
                  ),
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: controller.descriptionController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                    onPressed: controller.createTodo,
                    child: const Text('Create Todo')),
              ],
            ),
            Spacer(),
            ElevatedButton(
                onPressed: controller.routeToTodoList,
                child: Text('Todo List Page'))
          ],
        ),
      ),
    );
  }
}
