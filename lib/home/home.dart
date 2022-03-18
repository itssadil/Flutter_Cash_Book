import 'package:flutter/material.dart';
import 'accountType.dart';
import 'balanceList.dart';
import 'extraOptions.dart';
import 'footerBtn.dart';
import 'homeFilter.dart';
import 'lastTrans.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: ListView(
        children: [
          accountType(),
          SizedBox(
            height: 20,
          ),
          homeFilter(),
          SizedBox(
            height: 20,
          ),
          balanceList(
              bTitle: "Net Balance",
              bAmount: 3600,
              bRad: BorderRadius.vertical(top: Radius.circular(10))),
          Container(
              color: Colors.white,
              child: Divider(
                color: Colors.black54,
              )),
          balanceList(
            bTitle: "Cash In (+)",
            bAmount: 460000,
          ),
          balanceList(
            bTitle: "Cash Out (-)",
            bAmount: 455400,
            bRad: BorderRadius.vertical(bottom: Radius.circular(10)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Text(
                "Last Entrie",
                style: TextStyle(
                    color: Colors.black26, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          lastTrans(),
          extraOptions(),
          footerBtn()
        ],
      ),
    );
  }
}
