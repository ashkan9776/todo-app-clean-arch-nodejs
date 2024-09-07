import 'package:flutter/material.dart';

class AppThemes{
  static ThemeData get defaultTheme => ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
  );
}