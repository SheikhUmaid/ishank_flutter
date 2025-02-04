import 'package:counter/counter_page.dart';
import 'package:counter/data/notifiers.dart';
import 'package:counter/views/Widget_tree.dart';
import 'package:flutter/material.dart';

//Material app
//Scafold
//appbar
//navbar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeOn,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.pink,
                brightness: value ? Brightness.dark : Brightness.light),
          ),
          home: WidgetTree(),
        );
      },
    );
  }
}
