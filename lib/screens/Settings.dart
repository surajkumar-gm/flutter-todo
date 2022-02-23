import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const route = '/settings';

  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.grey[200]?.withOpacity(0.7),
        previousPageTitle: 'Home',
        middle: const Text(
          'Settings',
          style: TextStyle(fontSize: 20),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
