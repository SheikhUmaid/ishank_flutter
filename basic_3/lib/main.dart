import 'package:basic_3/data/notifiers.dart';
import 'package:basic_3/views/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeOnNotifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.green,
                brightness: value ? Brightness.dark : Brightness.light),
          ),
          home: WidgetTree(),
        );
      },
    );
  }
}
