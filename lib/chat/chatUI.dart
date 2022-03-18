import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradebook/appbar/appAction.dart';
import 'package:tradebook/chat/chatMsg.dart';
import 'package:tradebook/chat/chatTextBox.dart';
import 'package:tradebook/chat/chatUserList.dart';

class ChatUI extends StatefulWidget {
  final String fabMsg;
  const ChatUI(this.fabMsg, {Key? key}) : super(key: key);

  @override
  _ChatUIState createState() => _ChatUIState(fabMsg);
}

class _ChatUIState extends State<ChatUI> {
  String fabMsg;
  _ChatUIState(this.fabMsg);

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      appBar: bar("Adil Hussain ", ele: 0),
      // body: ChatBody(fabMsg, isKeyboard),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            if (!isKeyboard) ChatUserList(),
            ChatMsg(),
            ChatTextBox(),
          ],
        ),
      ),
    );
  }
}
