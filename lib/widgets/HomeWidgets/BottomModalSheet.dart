import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wa_clone/provider/todo.dart';

class BottomModalSheet extends StatefulWidget {
  const BottomModalSheet({Key? key}) : super(key: key);

  @override
  State<BottomModalSheet> createState() => _BottomModalSheetState();
}

class _BottomModalSheetState extends State<BottomModalSheet> {
  @override
  Widget build(BuildContext context) {
    final keyboardInset = MediaQuery.of(context).viewInsets.bottom + 16;
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 16, 40, keyboardInset),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            'Add Todo',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 8),
          CupertinoTextField(
            minLines: 1,
            maxLines: 5,
            autofocus: true,
            textInputAction: TextInputAction.done,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
            onSubmitted: (value) {
              context.read<TodoProvider>().addTodo(message: value);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
