import 'package:flutter/material.dart';
import 'package:wa_clone/models/Todo.dart';

class TodoProvider with ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo({required String message}) {
    _todos.add(
      Todo(
        id: UniqueKey(),
        todoContent: message,
        isCompleted: false,
      ),
    );
    notifyListeners();
  }

  void updateTodoItem({required UniqueKey id, required bool value}) {
    final int indexToUpdate = _todos.indexWhere((todo) => todo.id == id);
    _todos[indexToUpdate].isCompleted = value;
  }
}
