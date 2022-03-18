import 'package:flutter/material.dart';

class TextFromMe extends StatelessWidget {
  final String sms;
  const TextFromMe(this.sms, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .6,
              child: Text(
                sms,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              child: Icon(Icons.account_circle),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
