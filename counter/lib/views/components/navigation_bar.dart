import 'package:counter/data/notifiers.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currentPageNotifier,
      builder: (context, value, child) {
        return BottomNavigationBar.(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ],
          currentIndex: value,
          onTap: (value) {
            currentPageNotifier.value = value;
          },
        );
      },
    );
  }
}
