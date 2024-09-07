import 'package:flutter_application_1/features/MakeTodo/Data/Entities/make_todo_response.dart';
import 'package:get/get.dart';
import '../Entities/make_todo_dto.dart';

class MakeTodoService extends GetConnect {
  Future<MakeTodoResponse> call({required MakeTodoDto body}) async {
    // ارسال درخواست POST به API
    final response = await post(
      'http://10.0.2.2:3000/todos',
      body.toJson, // توجه به فراخوانی صحیح متد toJson()
      contentType: 'application/json',
    );

    // چاپ اطلاعات پاسخ برای بررسی
    print('Response body: ${response.body}');
    print('Response type: ${response.body.runtimeType}');
    print('Status code: ${response.statusCode}');
    print('Status text: ${response.statusText}');

    // بررسی وضعیت موفقیت پاسخ
    if (response.statusCode == 200 || response.statusCode == 201) {
      if (response.body != null && response.body is Map<String, dynamic>) {
        return MakeTodoResponse.fromJson(response.body);
      } else {
        throw Exception("Response body is null or invalid format");
      }
    } else {
      throw Exception(
          "Request failed with status: ${response.statusCode}, ${response.statusText}");
    }
  }
}
