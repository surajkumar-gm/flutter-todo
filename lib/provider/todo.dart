import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wa_clone/models/Todo.dart';

class TodoProvider with ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  Future<void> fetchTodos() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/todos'),
      );
      final data = jsonDecode(response.body) as List;
      for (var item in data) {
        _todos.add(
          Todo(isCompleted: item['completed'], todoContent: item['title']),
        );
      }
      notifyListeners();
    } catch (e) {
      print(e.toString());
    }
  }

  void addTodo({required String message}) {
    if (message.isNotEmpty) {
      _todos.insert(
        0,
        Todo(
          todoContent: message,
          isCompleted: false,
        ),
      );
      notifyListeners();
    }
  }

  void updateTodoItem({required UniqueKey id, required bool value}) {
    final int indexToUpdate = _todos.indexWhere((todo) => todo.id == id);
    _todos[indexToUpdate].isCompleted = value;
  }
}
