import 'package:flutter/material.dart';
import 'package:task_app/utils/theme/theme.dart';
import 'package:task_app/view/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.themeData,
      title: 'Task App',
      home: const MyHomePage(),
    );
  }
}
