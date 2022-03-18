import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradebook/appbar/appAction.dart';
import 'package:tradebook/appbar/fab.dart';
import 'package:tradebook/home/home.dart';
import 'appbar/drawerBar.dart';

class frontPage extends StatefulWidget {
  const frontPage({Key? key}) : super(key: key);

  @override
  _frontPageState createState() => _frontPageState();
}

class _frontPageState extends State<frontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar("Tradebook"),
      drawer: drawerbar(),
      floatingActionButton: fab(),
      body: home(),
    );
  }
}
