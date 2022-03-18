import 'package:flutter/material.dart';

class ChatTextBox extends StatefulWidget {
  const ChatTextBox({Key? key}) : super(key: key);

  @override
  _ChatTextBoxState createState() => _ChatTextBoxState();
}

class _ChatTextBoxState extends State<ChatTextBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(10),
            labelText: "Type a Massege...",
            suffixIcon: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.send,
                color: Colors.blue,
              ),
            ),
          ),
          keyboardType: TextInputType.multiline,
          maxLines: null,
        ),
      ),
    );
  }
}
