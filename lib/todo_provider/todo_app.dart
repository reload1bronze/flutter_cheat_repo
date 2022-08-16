import 'package:flutter/material.dart';
import 'package:flutter_cheat_repo/todo_provider/pages/todos_page.dart';
import 'package:flutter_cheat_repo/todo_provider/providers/index.dart';
import 'package:provider/provider.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

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
        ChangeNotifierProxyProvider<TodoList, ActiveTodoCount>(
          create: (_) => ActiveTodoCount(),
          update: (
            BuildContext _,
            TodoList todoList,
            ActiveTodoCount? activeTodoCount,
          ) =>
              activeTodoCount!..update(todoList),
        ),
        ChangeNotifierProxyProvider3<TodoFilter, TodoSearch, TodoList,
                FilteredTodos>(
            create: (_) => FilteredTodos(),
            update: (
              BuildContext _,
              TodoFilter todoFilter,
              TodoSearch todoSearch,
              TodoList todoList,
              FilteredTodos? filteredTodos,
            ) =>
                filteredTodos!..update(todoFilter, todoSearch, todoList))
      ],
      child: MaterialApp(
        title: 'TODOS',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: TodosPage(),
      ),
    );
  }
}
