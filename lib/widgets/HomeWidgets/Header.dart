import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wa_clone/screens/Settings.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CupertinoButton(
          child: const Icon(
            CupertinoIcons.line_horizontal_3,
            size: 28,
          ),
          padding: const EdgeInsets.all(0),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        CupertinoButton(
          child: const Icon(
            CupertinoIcons.gear,
            size: 28,
          ),
          padding: const EdgeInsets.all(0),
          onPressed: () => Navigator.of(context).pushNamed(
            Settings.route,
            arguments: {'title': 'Something'},
          ),
        ),
      ],
    );
  }
}
