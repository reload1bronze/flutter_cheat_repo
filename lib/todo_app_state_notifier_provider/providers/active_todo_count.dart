import 'package:equatable/equatable.dart';
import 'package:flutter_cheat_repo/todo_app_state_notifier_provider/models/todo_model.dart';
import 'package:flutter_cheat_repo/todo_app_state_notifier_provider/providers/index.dart';
import 'package:state_notifier/state_notifier.dart';

class ActiveTodoCountState extends Equatable {
  final int activeTodoCount;

  ActiveTodoCountState({
    required this.activeTodoCount,
  });

  factory ActiveTodoCountState.initial() {
    return ActiveTodoCountState(activeTodoCount: 0);
  }

  @override
  List<Object> get props => [activeTodoCount];

  @override
  bool get stringify => true;

  ActiveTodoCountState copyWith({
    int? activeTodoCount,
  }) {
    return ActiveTodoCountState(
      activeTodoCount: activeTodoCount ?? this.activeTodoCount,
    );
  }
}

class ActiveTodoCount extends StateNotifier<ActiveTodoCountState>
    with LocatorMixin {
  ActiveTodoCount() : super(ActiveTodoCountState.initial());

  @override
  void update(Locator watch) {
    final List<Todo> todos = watch<TodoListState>().todos;

    state = state.copyWith(
      activeTodoCount:
          todos.where((Todo todo) => !todo.completed).toList().length,
    );
    super.update(watch);
  }
}
