import 'package:flutter/material.dart';
import 'package:flutter_cheat_repo/todo_app_proxy_provider/pages/todos_page.dart';
import 'package:flutter_cheat_repo/todo_app_proxy_provider/providers/index.dart';
import 'package:provider/provider.dart';

class TodoAppRefactoring extends StatelessWidget {
  const TodoAppRefactoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TodoFilter>(
          create: (_) => TodoFilter(),
        ),
        ChangeNotifierProvider<TodoSearch>(
          create: (_) => TodoSearch(),
        ),
        ChangeNotifierProvider<TodoList>(
          create: (_) => TodoList(),
        ),
        ProxyProvider<TodoList, ActiveTodoCount>(
          update: (
            BuildContext _,
            TodoList todoList,
            ActiveTodoCount? __,
          ) =>
              ActiveTodoCount(todoList: todoList),
        ),
        ProxyProvider3<TodoFilter, TodoSearch, TodoList, FilteredTodos>(
          update: (
            BuildContext _,
            TodoFilter todoFilter,
            TodoSearch todoSearch,
            TodoList todoList,
            FilteredTodos? __,
          ) =>
              FilteredTodos(
            todoFilter: todoFilter,
            todoSearch: todoSearch,
            todoList: todoList,
          ),
        )
      ],
      child: MaterialApp(
        title: 'TODOS',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: TodosPage(),
      ),
    );
  }
}
