import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();

  String name = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello! $name",
              style: const TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                name = controller.text;
                setState(() {});
              },
              onEditingComplete: () {
                setState(() {
                  name = controller.text;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
