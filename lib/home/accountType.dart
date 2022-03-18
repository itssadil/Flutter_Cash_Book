import 'package:flutter/material.dart';

Widget accountType() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListTile(
      leading: CircleAvatar(child: Icon(Icons.account_circle)),
      title: Text("Adil Hussain"),
      subtitle: Text("Personal"),
    ),
  );
}
