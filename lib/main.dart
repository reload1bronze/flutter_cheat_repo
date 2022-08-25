import 'package:flutter/material.dart';
import 'package:flutter_cheat_repo/factory_container/factory_container_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// factory를 활용한 Container 생성 샘플
  @override
  Widget build(BuildContext _) => FactoryContainerApp();

  /// 프로바이더를 활용한 To-do app
  // @override
  // Widget build(BuildContext _) => TodoApp();

  /// 프로바이더를 활용한 To-do app
  /// ChangeNotifierProxyProvider를 ProxyProvider로 리팩터링
  // @override
  // Widget build(BuildContext _) => TodoAppRefactoring();

  /// StateNotifier를 활용한 To-do app
  // @override
  // Widget build(BuildContext _) => TodoAppState();
}
