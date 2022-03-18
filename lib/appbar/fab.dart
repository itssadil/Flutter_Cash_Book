import 'package:flutter/material.dart';
import 'package:tradebook/chat/chatUI.dart';
import 'package:tradebook/widgets/makeDismissible.dart';
import 'package:tradebook/widgets/routeAnimition.dart';

class fab extends StatefulWidget {
  const fab({Key? key}) : super(key: key);

  @override
  _fabState createState() => _fabState();
}

class _fabState extends State<fab> {
  List fabMsg = [
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
      "id": "3",
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
      "id": "5",
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
      "id": "7",
      "name": "Adil Hussain",
      "Msg":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
    {
      "id": "8",
      "name": "Adil Hussain",
      "Msg":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
    {
      "id": "9",
      "name": "Adil Hussain",
      "Msg":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
  ];

  onfab(double mxheight) {
    return dismissible(
      child: DraggableScrollableSheet(
        initialChildSize: 0.7,
        builder: (_, controller) => Container(
            padding: EdgeInsets.only(top: 10, right: 5, left: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: ListView.builder(
              itemCount: fabMsg.length,
              itemBuilder: (context, index) => Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          RouteAnimation(
                            widget: ChatUI(fabMsg[index]["id"]),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 4,
                        child: ListTile(
                          leading:
                              CircleAvatar(child: Icon(Icons.account_circle)),
                          title: Text(fabMsg[index]["name"]),
                          subtitle: Text(
                            fabMsg[index]["Msg"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double mxheight = MediaQuery.of(context).size.height * .7;
    return FloatingActionButton(
      onPressed: () => showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => onfab(mxheight),
      ),
      child: Icon(Icons.message),
      backgroundColor: Colors.green,
    );
  }
}
