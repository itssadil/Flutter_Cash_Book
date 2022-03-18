import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:tradebook/widgets/makeDismissible.dart';

class extraOptions extends StatefulWidget {
  const extraOptions({Key? key}) : super(key: key);

  @override
  _extraOptionsState createState() => _extraOptionsState();
}

class _extraOptionsState extends State<extraOptions> {
  List fabHistory = [
    {
      "action": "Cash In",
      "date": "09-03-2022",
      "time": "04:48",
      "cash": "(+) 500",
      "totalCash": "56700",
      "category": "Selary",
    },
    {
      "action": "Cash out",
      "date": "09-03-2022",
      "time": "04:48",
      "cash": "(-) 5050",
      "totalCash": "56700",
      "category": "Selary",
    },
    {
      "action": "Cash In",
      "date": "09-03-2022",
      "time": "04:48",
      "cash": "(+) 500",
      "totalCash": "56700",
      "category": "Selary",
    },
    {
      "action": "Cash In",
      "date": "09-03-2022",
      "time": "04:48",
      "cash": "(+) 500",
      "totalCash": "56700",
      "category": "Selary",
    },
    {
      "action": "Cash In",
      "date": "09-03-2022",
      "time": "04:48",
      "cash": "(+) 500",
      "totalCash": "56700",
      "category": "Selary",
    },
    {
      "action": "Cash In",
      "date": "09-03-2022",
      "time": "04:48",
      "cash": "(+) 500",
      "totalCash": "56700",
      "category": "Selary",
    },
    {
      "action": "Cash In",
      "date": "09-03-2022",
      "time": "04:48",
      "cash": "(+) 500",
      "totalCash": "56700",
      "category": "Selary",
    },
    {
      "action": "Cash In",
      "date": "09-03-2022",
      "time": "04:48",
      "cash": "(+) 500",
      "totalCash": "56700",
      "category": "Selary",
    },
    {
      "action": "Cash In",
      "date": "09-03-2022",
      "time": "04:48",
      "cash": "(+) 500",
      "totalCash": "56700",
      "category": "Selary",
    },
    {
      "action": "Cash In",
      "date": "09-03-2022",
      "time": "04:48",
      "cash": "(+) 500",
      "totalCash": "56700",
      "category": "Selary",
    },
    {
      "action": "Cash In",
      "date": "09-03-2022",
      "time": "04:48",
      "cash": "(+) 500",
      "totalCash": "56700",
      "category": "Selary",
    },
    {
      "action": "Cash In",
      "date": "10-03-2022",
      "time": "04:48",
      "cash": "(+) 767",
      "category": "Selary",
      "totalCash": "56700",
    },
    {
      "action": "Cash out",
      "date": "10-03-2022",
      "time": "04:48",
      "cash": "(-)  767",
      "category": "Selary",
      "totalCash": "56700",
    },
    {
      "action": "Cash In",
      "date": "10-03-2022",
      "time": "04:48",
      "cash": "(+) 767",
      "category": "Selary",
      "totalCash": "56700",
    },
    {
      "action": "Cash In",
      "date": "10-03-2022",
      "time": "04:48",
      "cash": "(+) 767",
      "category": "Selary",
      "totalCash": "56700",
    },
    {
      "action": "Cash In",
      "date": "10-03-2022",
      "time": "04:48",
      "cash": "(+) 767",
      "category": "Selary",
      "totalCash": "56700",
    },
    {
      "action": "Cash In",
      "date": "10-03-2022",
      "time": "04:48",
      "cash": "(+) 767",
      "category": "Selary",
      "totalCash": "56700",
    },
    {
      "action": "Cash In",
      "date": "10-03-2022",
      "time": "04:48",
      "cash": "(+) 767",
      "category": "Selary",
      "totalCash": "56700",
    },
    {
      "action": "Cash In",
      "date": "10-03-2022",
      "time": "04:48",
      "cash": "(+) 767",
      "category": "Selary",
      "totalCash": "56700",
    },
    {
      "action": "Cash In",
      "date": "10-03-2022",
      "time": "04:48",
      "cash": "(+) 767",
      "category": "Selary",
      "totalCash": "56700",
    },
    {
      "action": "Cash In",
      "date": "10-03-2022",
      "time": "04:48",
      "cash": "(+) 767",
      "category": "Selary",
      "totalCash": "56700",
    },
    {
      "action": "Cash In",
      "date": "10-03-2022",
      "time": "04:48",
      "cash": "(+) 767",
      "category": "Selary",
      "totalCash": "56700",
    },
  ];

  extraFab(String extraFabVar) {
    if (extraFabVar == "cal") {
      setState(() {});
    } else if (extraFabVar == "share") {
      setState(() {});
    } else if (extraFabVar == "history") {
      return dismissible(
        child: DraggableScrollableSheet(
          initialChildSize: 0.9,
          builder: (_, controller) => Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10),
                        labelText: "Search...",
                      ),
                    ),
                  ),
                  Expanded(
                    child: GroupedListView<dynamic, String>(
                      elements: fabHistory,
                      groupBy: (element) => element['date'],
                      useStickyGroupSeparators: true,
                      groupSeparatorBuilder: (value) => Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Text(
                          value,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      itemBuilder: (context, element) => Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    element["action"],
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    element["time"],
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    element["cash"],
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    element["category"],
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    "Balance: " + element["totalCash"],
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => extraFab("cal"),
            child: Icon(Icons.calculate_outlined),
          ),
          FloatingActionButton(
            onPressed: () => extraFab("share"),
            child: Icon(Icons.share),
          ),
          FloatingActionButton(
            onPressed: () => showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => extraFab("history"),
            ),
            child: Icon(Icons.history),
          ),
        ],
      ),
    );
  }
}
