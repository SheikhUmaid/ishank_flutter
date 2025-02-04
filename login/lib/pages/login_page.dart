import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordContorller = TextEditingController();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.back_hand),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                "Login $name",
                style: TextStyle(fontSize: 35),
              ),
            ),
            TextField(
              controller: _usernameController,
              onChanged: (value) {
                setState(() {
                  name = _usernameController.text;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Hello",
                label: Text("Username"),
              ),
            ),
            TextField(
              obscureText: true,
              controller: _passwordContorller,
              // onChanged: (value) {
              //   setState(() {
              //     name = _passwordContorller.text;
              //   });
              // },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Password"),
              ),
            ),
            FilledButton(onPressed: () {}, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
