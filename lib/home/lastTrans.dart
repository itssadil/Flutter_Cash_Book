import 'package:flutter/material.dart';

Widget lastTrans() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.symmetric(vertical: 8),
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Cash In",
            style:
                TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
          ),
          Text(
            "07-03-2022",
            style:
                TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
          ),
          Text(
            "500",
            style:
                TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
