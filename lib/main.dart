import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wa_clone/myTheme.dart';
import 'package:wa_clone/provider/settings.dart';
import 'package:wa_clone/provider/todo.dart';
import 'package:wa_clone/screens/Home.dart';
import 'package:wa_clone/screens/Settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TodoProvider()),
        ChangeNotifierProvider(create: (_) => SettingsProvider())
      ],
      child: Consumer<SettingsProvider>(
        builder: (_, settings, __) => MaterialApp(
          title: 'Lunch and Learn Demo',
          debugShowCheckedModeBanner: false,
          themeMode: settings.appBrightness,
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,
          home: const HomeScreen(),
          routes: {
            Settings.route: (_) => const Settings(),
          },
        ),
      ),
    );
  }
}
