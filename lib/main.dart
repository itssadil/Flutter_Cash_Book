import 'package:flutter/material.dart';
import 'package:tradebook/login/logInPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xf2ffffff)),
      title: "Tradebook",
      home: LogInPage(),
    );
  }
}
