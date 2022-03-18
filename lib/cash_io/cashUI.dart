import 'package:flutter/material.dart';
import 'package:tradebook/appbar/appAction.dart';
import 'package:tradebook/appbar/fab.dart';
import 'package:tradebook/cash_io/cashBody.dart';

class CashUI extends StatefulWidget {
  String CashActionTitle;
  List cat;
  CashUI({Key? key, required this.CashActionTitle, required this.cat})
      : super(key: key);

  @override
  _CashUIState createState() => _CashUIState(CashActionTitle, cat);
}

class _CashUIState extends State<CashUI> {
  String cashActionTitle;
  List cat;
  _CashUIState(this.cashActionTitle, this.cat);

  @override
  Widget build(BuildContext context) {
    if (cashActionTitle == "in") {
      cashActionTitle = "Cash In";
    } else if (cashActionTitle == "out") {
      cashActionTitle = "Cash Out";
    } else {
      cashActionTitle = "Tradebook";
    }
    return Scaffold(
      appBar: bar("Tradebook"),
      floatingActionButton: fab(),
      body: CashBody(cashActionTitle: cashActionTitle, cat: cat),
    );
  }
}
