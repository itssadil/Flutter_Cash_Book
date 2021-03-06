import 'package:flutter/material.dart';
import 'package:tradebook/login/logInPage.dart';
import 'package:flutter/services.dart';

void main() {
  // disable Landscape mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  // MyApp
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
