import 'package:flutter/material.dart';

PreferredSizeWidget bar(String barTitle, {double? ele}) {
  return AppBar(
    title: Text(
      "$barTitle",
      style: TextStyle(
        fontFamily: "cursive",
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    ),
    elevation: ele,
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.group)),
      IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
    ],
  );
}
