import 'package:flutter/material.dart';
import 'package:wa_clone/provider/todo.dart';
import 'package:wa_clone/widgets/HomeWidgets/TodoItem.dart';
import 'package:provider/provider.dart';

class ListSection extends StatelessWidget {
  final String sectionTitle;
  const ListSection({Key? key, required this.sectionTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final color = Theme.of(context).primaryColor;
    final todos = context.watch<TodoProvider>().todos;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Material(
            color: Colors.white,
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (_, index) =>
                  TodoItem(todos[index], key: UniqueKey()),
            ),
          ),
        ),
      ],
    );
  }
}
