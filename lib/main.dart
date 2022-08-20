import 'package:flutter/material.dart';
import 'package:flutter_cheat_repo/todo_provider_refactoring/todo_app_refactoring.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// 프로바이더를 활용한 To-do app
  // @override
  // Widget build(BuildContext _) => TodoApp();

  /// 프로바이더를 활용한 To-do app
  /// ChangeNotifierProxyProvider를 ProxyProvider로 리팩터링
  @override
  Widget build(BuildContext _) => TodoAppRefactoring();
}
