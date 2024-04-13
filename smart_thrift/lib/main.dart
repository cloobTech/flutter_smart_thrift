import 'package:flutter/material.dart';
import 'package:smart_thrift/core/theme/app_theme.dart';
import 'package:smart_thrift/features/introduction_screen/presentation/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightThemeMode,
      home: const HomePage(),
    );
  }
}
