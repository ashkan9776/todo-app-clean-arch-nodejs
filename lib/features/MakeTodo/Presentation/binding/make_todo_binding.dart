import 'package:flutter_application_1/features/MakeTodo/Data/Repository/make_todo_repository_imp.dart';
import 'package:flutter_application_1/features/MakeTodo/Presentation/controllers/make_todo_controller.dart';
import 'package:get/get.dart';

class MakeTodoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MakeTodoController>(
        () => MakeTodoController(repo: MakeTodoRepositoryImp()));
  }
}
