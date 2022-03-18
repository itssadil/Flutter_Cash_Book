import 'package:flutter/material.dart';

Widget balanceList({String? bTitle, int? bAmount, var bRad}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: bRad,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "$bTitle",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Align(
            alignment: Alignment.topRight,
            child: Text(
              bAmount.toString(),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
      ]),
    ),
  );
}
