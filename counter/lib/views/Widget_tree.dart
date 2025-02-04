import 'package:counter/data/notifiers.dart';
import 'package:counter/views/components/navigation_bar.dart';
import 'package:counter/views/pages/homepage.dart';
import 'package:counter/views/pages/profilepage.dart';
import 'package:flutter/material.dart';

final List<Widget> pages = [
  HomePage(), //0
  Profile(), //0
];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifer'),
        actions: [
          ValueListenableBuilder(
            valueListenable: isDarkModeOn,
            builder: (context, value, child) {
              return IconButton(
                onPressed: () {
                  isDarkModeOn.value = !value;
                },
                icon: Icon(value ? Icons.dark_mode : Icons.light_mode),
              );
            },
          )
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: currentPageNotifier,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ), // pages[0],
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
