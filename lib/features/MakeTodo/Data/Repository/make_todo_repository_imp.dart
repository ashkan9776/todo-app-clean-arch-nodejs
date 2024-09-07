import 'package:flutter_application_1/features/MakeTodo/Data/Entities/make_todo_dto.dart';
import 'package:flutter_application_1/features/MakeTodo/Data/Entities/make_todo_response.dart';
import 'package:flutter_application_1/features/MakeTodo/Data/Remote/make_todo_service.dart';
import 'package:flutter_application_1/features/MakeTodo/Domain/make_todo_repository.dart';

class MakeTodoRepositoryImp extends MakeTodoRepository{
  final _services = MakeTodoService(); 
 
  @override
  Future<MakeTodoResponse> call({required MakeTodoDto body}) async{
    return _services.call(body: body);
  }
}