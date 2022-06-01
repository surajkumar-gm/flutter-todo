import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:wa_clone/provider/todo.dart';
import 'package:wa_clone/widgets/HomeWidgets/BottomModalSheet.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final String todaysDate = DateFormat.yMMMd().format(DateTime.now());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          todaysDate,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        CupertinoButton(
          child: const Icon(
            CupertinoIcons.add_circled_solid,
            size: 28,
          ),
          padding: const EdgeInsets.all(0),
          onPressed: () {
            showModalBottomSheet<void>(
              isScrollControlled: true,
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              builder: (_) => const BottomModalSheet(),
            );
          },
        ),
      ],
    );
  }
}
