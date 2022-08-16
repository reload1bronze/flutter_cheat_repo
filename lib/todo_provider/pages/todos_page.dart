import 'package:flutter/material.dart';
import 'package:flutter_cheat_repo/todo_provider/providers/index.dart';
import 'package:provider/provider.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                TodoHeader(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TodoHeader extends StatelessWidget {
  const TodoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Todo',
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
        Text(
          '${context.watch<ActiveTodoCount>().state.activeTodoCount} items left',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.pinkAccent,
          ),
        ),
      ],
    );
  }
}
