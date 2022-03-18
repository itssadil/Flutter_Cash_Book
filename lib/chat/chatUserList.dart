import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatUserList extends StatefulWidget {
  const ChatUserList({Key? key}) : super(key: key);

  @override
  _ChatUserListState createState() => _ChatUserListState();
}

class _ChatUserListState extends State<ChatUserList> {
  List cuList = [
    {"name": "Adil Hussain"},
    {"name": "Ismail Hussain"},
    {"name": "Miraj Hussain"},
    {"name": "Dudu Hussain"},
    {"name": "Adnan Hussain"},
    {"name": "Prince Hussain"},
    {"name": "Radwan Hussain"},
    {"name": "Forid Hussain"},
    {"name": "Apple Hussain"},
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cuList.length,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
          child: Column(
            children: [
              CircleAvatar(
                child: Icon(Icons.account_circle),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                cuList[index]["name"].split(' ').first,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
