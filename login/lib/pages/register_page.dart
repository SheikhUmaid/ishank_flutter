import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordContorller = TextEditingController();
  String name = "";
  List names = [
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
    "Ishank",
    "Srushti",
    "yasaswini",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Regisetr"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Center(
        //       child: Text(
        //         "Register $name",
        //         style: TextStyle(fontSize: 35),
        //       ),
        //     ),
        //     TextField(
        //       controller: _usernameController,
        //       onChanged: (value) {
        //         setState(() {
        //           name = _usernameController.text;
        //         });
        //       },
        //       decoration: InputDecoration(
        //         border: OutlineInputBorder(),
        //         hintText: "Hello",
        //         label: Text("Username"),
        //       ),
        //     ),
        //     TextField(
        //       obscureText: true,
        //       controller: _passwordContorller,
        //       // onChanged: (value) {
        //       //   setState(() {
        //       //     name = _passwordContorller.text;
        //       //   });
        //       // },
        //       decoration: InputDecoration(
        //         border: OutlineInputBorder(),
        //         label: Text("Password"),
        //       ),
        //     ),
        //     FilledButton(onPressed: () {}, child: Text("Login")),
        //   ],
        // ),

        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return LoginPage();
          },
        ),
      ),
    );
  }
}
