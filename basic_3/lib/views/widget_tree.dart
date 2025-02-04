import 'package:basic_3/data/notifiers.dart';
import 'package:basic_3/views/components/navigationbar.dart';
import 'package:basic_3/views/pages/home.dart';
import 'package:basic_3/views/pages/profile.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [
  HomePage(),
  Profile(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Notifier",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.grey,
          centerTitle: true,
          actions: [
            ValueListenableBuilder(
              valueListenable: isDarkModeOnNotifier,
              builder: (context, value, child) {
                return IconButton(
                  onPressed: () {
                    isDarkModeOnNotifier.value = !value;
                  },
                  icon: value
                      ? Icon(Icons.light_mode_outlined)
                      : Icon(Icons.dark_mode_outlined),
                );
              },
            )
          ],
        ),
        body: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, value, child) {
            return pages.elementAt(value);
          },
        ),
        bottomNavigationBar: MyNavigationBar());
  }
}
