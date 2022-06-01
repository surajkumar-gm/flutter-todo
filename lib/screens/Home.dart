import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wa_clone/provider/todo.dart';
import 'package:wa_clone/shared/drawer.dart';
import 'package:wa_clone/widgets/HomeWidgets/HeaderSection.dart';
import 'package:wa_clone/widgets/HomeWidgets/Header.dart';
import 'package:wa_clone/widgets/HomeWidgets/ListSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Header(),
              HeaderSection(),
              SizedBox(height: 16),
              Expanded(
                child: ListSection(sectionTitle: 'Todo'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
