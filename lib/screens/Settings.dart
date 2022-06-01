import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wa_clone/provider/settings.dart';
import 'package:wa_clone/widgets/HomeWidgets/TextStyles.dart';

class Settings extends StatelessWidget {
  static const route = '/settings';

  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text(
          'Settings',
          style: TextStyle(
            fontSize: 20,
            color: settingsProvider.appBrightness == ThemeMode.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SwitchListTile.adaptive(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              value: settingsProvider.appBrightness == ThemeMode.dark,
              onChanged: (value) => settingsProvider.setAppBrightness(value),
              title: const Text(
                'Dark Theme',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
