import 'package:flutter/material.dart';

class CashForm extends StatefulWidget {
  final Color cashActionTitleColor;
  final List cat;
  const CashForm(
      {Key? key, required this.cashActionTitleColor, required this.cat})
      : super(key: key);

  @override
  _CashFormState createState() => _CashFormState(cashActionTitleColor, cat);
}

class _CashFormState extends State<CashForm> {
  String storeCat = "";

  var _formKey = GlobalKey<FormState>();
  Color cashActionTitleColor;

  List cat;
  _CashFormState(this.cashActionTitleColor, this.cat);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.length < 1)
                    return "Please Enter The Amount!";
                  else
                    return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Amount*",
                  suffixIcon: Icon(Icons.money),
                  contentPadding: EdgeInsets.all(10.0),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Categories (optional)",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black38),
                  ),
                  Text(
                    ": " + storeCat,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                children: [
                  for (String name in cat)
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            storeCat = name;
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: cashActionTitleColor,
                            primary: Colors.black),
                        child: Text(name),
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Category (optional)",
                  suffixIcon: Icon(Icons.category_outlined),
                  contentPadding: EdgeInsets.all(10.0),
                ),
                textCapitalization: TextCapitalization.sentences,
                onChanged: (text) {
                  setState(() {
                    storeCat = text;
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              // print("Form Validator: " +
              //     _formKey.currentState!.validate().toString());
              if (_formKey.currentState!.validate().toString() == 'true')
                Navigator.pop(context);
            });
          },
          child: Text("Submit"),
        )
      ],
    );
  }
}
