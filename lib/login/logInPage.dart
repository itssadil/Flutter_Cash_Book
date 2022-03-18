import 'package:flutter/material.dart';
import 'package:tradebook/login/logInStep.dart';
import 'package:tradebook/login/logInLogo.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            LogInLogo(),
            Text(
              "Login",
              style: TextStyle(
                fontFamily: "cursive",
                fontWeight: FontWeight.w900,
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            LogInStep(),
          ],
        ),
      ),
    );
  }
}
