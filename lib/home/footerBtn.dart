import 'package:flutter/material.dart';
import 'package:tradebook/cash_io/cashUI.dart';
import 'package:tradebook/widgets/routeAnimition.dart';

class footerBtn extends StatefulWidget {
  const footerBtn({Key? key}) : super(key: key);

  @override
  _footerBtnState createState() => _footerBtnState();
}

class _footerBtnState extends State<footerBtn> {
  List catin = [
    "Selary",
    "Bonus",
    "Sale",
    "Profit",
    "Freelancing",
    "Ride",
  ];

  List catout = [
    "Food",
    "Shopping",
    "Buy",
    "Ride",
    "Bill",
    "Travel",
    "Cigarette",
  ];

  cashInOut(String cashIoValue) {
    if (cashIoValue == "in") {
      Navigator.of(context).push(
        RouteAnimation(
          widget: CashUI(CashActionTitle: cashIoValue, cat: catin),
        ),
      );
    } else if (cashIoValue == "out") {
      Navigator.of(context).push(
        RouteAnimation(
          widget: CashUI(CashActionTitle: cashIoValue, cat: catout),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () => cashInOut("in"),
            child: Text("+ Cash In"),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
          ElevatedButton(
            onPressed: () => cashInOut("out"),
            child: Text("- Cash Out"),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          ),
        ],
      ),
    );
  }
}
