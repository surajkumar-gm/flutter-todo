import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wa_clone/screens/Settings.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Icon(
        CupertinoIcons.gear,
        size: 28,
        color: Colors.grey[500],
      ),
      padding: const EdgeInsets.all(0),
      onPressed: () => Navigator.of(context).pushNamed(
        Settings.route,
        arguments: {'title': 'Something'},
      ),
    );
  }
}
