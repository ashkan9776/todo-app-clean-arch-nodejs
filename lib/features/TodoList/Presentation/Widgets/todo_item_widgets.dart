import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/TodoList/Data/Entity/todo_list_response.dart';

class TodoItemWidgets extends StatelessWidget {
  final TodoListResponse model;
  const TodoItemWidgets({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(model.id.toString()),
        Text(model.title),
        Text(model.description),
      ],
    );
  }
}
