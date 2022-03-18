import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tradebook/cash_io/cash_partitions/cashDateTime.dart';
import 'package:tradebook/cash_io/cash_partitions/cashForm.dart';
import 'package:tradebook/cash_io/cash_partitions/cashTitle.dart';

class CashBody extends StatefulWidget {
  String cashActionTitle;
  List cat;
  CashBody({Key? key, required this.cashActionTitle, required this.cat})
      : super(key: key);

  @override
  _CashBodyState createState() => _CashBodyState(cashActionTitle, cat);
}

class _CashBodyState extends State<CashBody> {
  String cashActionTitle;
  List cat;
  _CashBodyState(this.cashActionTitle, this.cat);

  @override
  Widget build(BuildContext context) {
    Color? cashActionTitleColor;

    if (cashActionTitle == "Cash In")
      cashActionTitleColor = Colors.green;
    else if (cashActionTitle == "Cash Out") cashActionTitleColor = Colors.red;

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListView(
        children: [
          cashTitle(cashActionTitle, cashActionTitleColor!),
          CashDateTime(),
          CashForm(cashActionTitleColor: cashActionTitleColor, cat: cat),
        ],
      ),
    );
  }
}
