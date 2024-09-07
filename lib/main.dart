import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/routes.dart';
import 'package:flutter_application_1/core/theme/theme_default_configuration.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppThemes.defaultTheme,
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.makeTodo,
    );
  }
}
