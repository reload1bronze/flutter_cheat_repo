import 'package:flutter/material.dart';
import 'package:flutter_cheat_repo/todo_provider/todo_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// 프로바이더를 활용한 To-do app
  @override
  Widget build(BuildContext _) => TodoApp();
}
