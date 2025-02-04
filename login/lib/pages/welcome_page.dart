import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/pages/register_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/lottie/Jahaz.json"),
          SizedBox(
            height: 20,
          ),
          FilledButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return RegisterPage();
                  },
                ));
              },
              child: Text("Get Started")),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ));
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
