import 'package:flutter_application_1/features/MakeTodo/Data/Entities/make_todo_response.dart';

import '../Data/Entities/make_todo_dto.dart';

abstract class MakeTodoRepository {
  Future<MakeTodoResponse> call({required MakeTodoDto body});
}
