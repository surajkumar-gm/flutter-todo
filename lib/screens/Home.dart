import 'package:flutter/cupertino.dart';
import 'package:wa_clone/widgets/HomeWidgets/HeaderSection.dart';
import 'package:wa_clone/widgets/HomeWidgets/Header.dart';
import 'package:wa_clone/widgets/HomeWidgets/ListSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
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
    // return Scaffold(

    //   // backgroundColor: Colors.white,
    //   body: SafeArea(
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 28),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           //Header
    //           Header(),
    //           // date section
    //           HeaderSection(),
    //           SizedBox(height: 16),
    //           // Past due items
    //           Expanded(
    //             child: ListSection(sectionTitle: 'Todo'),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
