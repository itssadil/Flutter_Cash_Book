import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tradebook/chat/textFromMe.dart';
import 'package:tradebook/chat/textFromOthers.dart';

class ChatMsg extends StatefulWidget {
  const ChatMsg({Key? key}) : super(key: key);

  @override
  _ChatMsgState createState() => _ChatMsgState();
}

class _ChatMsgState extends State<ChatMsg> {
  List cuMsg = [
    {
      "id": "1",
      "name": "Adil Hussain",
      "Msg":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
    {
      "id": "2",
      "name": "Adil Hussain",
      "Msg":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
    {
      "id": "0",
      "name": "Adil Hussain",
      "Msg":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
    {
      "id": "4",
      "name": "Adil Hussain",
      "Msg":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
    {
      "id": "0",
      "name": "Adil Hussain",
      "Msg":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
    {
      "id": "6",
      "name": "Adil Hussain",
      "Msg":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
    {
      "id": "0",
      "name": "Adil Hussain",
      "Msg":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
    {
      "id": "0",
      "name": "Adil Hussain",
      "Msg":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
    {
      "id": "9",
      "name": "Adil Bhaia",
      "Msg":
          "Bhaia Ipsum is simply dummy text of the printing and typesetting industry. Bhaia Ipsum is simply dummy text of the printing and typesetting industry.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    // MainAxisAlignment rtl = MainAxisAlignment.start;

    return Expanded(
      flex: 5,
      child: Container(
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: ListView.builder(
          reverse: true,
          itemCount: cuMsg.length,
          itemBuilder: (context, index) => Container(
            width: MediaQuery.of(context).size.width * .6,
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
            child: rowChat(cuMsg[index]["Msg"], cuMsg[index]["id"]),
          ),
        ),
      ),
    );
  }

  Widget rowChat(String sms, smsUser) {
    return Column(
      children: [if (smsUser == "0") TextFromMe(sms) else TextFromOthers(sms)],
    );
  }
}
