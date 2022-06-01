import 'package:flutter/material.dart';

class Todo {
  final UniqueKey id;
  final String todoContent;
  bool isCompleted;

  Todo({
    required this.todoContent,
    required this.isCompleted,
  }) : id = UniqueKey();
}
