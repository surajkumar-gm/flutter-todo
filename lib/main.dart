import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
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
      ],
      child: CupertinoApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        // theme: CupertinoThemeData(brightness: Brightness.dark),
        home: const HomeScreen(),
        routes: {
          Settings.route: (_) => const Settings(),
        },
      ),
    );
  }
}
