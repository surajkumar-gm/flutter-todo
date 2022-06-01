import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wa_clone/models/Todo.dart';
import 'package:wa_clone/provider/todo.dart';

class TodoItem extends StatefulWidget {
  final Todo _todo;
  const TodoItem(this._todo, {Key? key}) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget._todo.isCompleted;
  }

  void handleCheckboxClick(bool? value, BuildContext context) {
    setState(() {
      _isChecked = value ?? !_isChecked;
    });
    Provider.of<TodoProvider>(context, listen: false).updateTodoItem(
      id: widget._todo.id,
      value: _isChecked,
    );
  }

  @override
  Widget build(BuildContext context) {
    // print('rebuilt');
    final tileColor = _isChecked ? Colors.green[100] : Colors.grey[300];

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: CheckboxListTile(
              title: Text(
                widget._todo.todoContent,
                style: const TextStyle(color: Colors.black),
              ),
              onChanged: (value) => handleCheckboxClick(value, context),
              controlAffinity: ListTileControlAffinity.leading,
              value: _isChecked,
              activeColor: Colors.green[700],
            ),
          ),
        ],
      ),
    );
  }
}
