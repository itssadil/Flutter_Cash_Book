import 'package:flutter/material.dart';

Widget cashTitle(String cashActionTitle, Color cashActionTitleColor) {
  return Container(
    decoration: BoxDecoration(
        color: cashActionTitleColor,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    padding: EdgeInsets.all(18),
    margin: EdgeInsets.only(bottom: 20),
    child: Align(
      alignment: Alignment.center,
      child: Text(
        cashActionTitle,
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 2,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
