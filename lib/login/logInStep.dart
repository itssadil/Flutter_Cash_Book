import 'package:flutter/material.dart';
import 'package:tradebook/frontPage.dart';
import 'package:tradebook/widgets/routeAnimition.dart';

class LogInStep extends StatefulWidget {
  const LogInStep({Key? key}) : super(key: key);

  @override
  _LogInStepState createState() => _LogInStepState();
}

class _LogInStepState extends State<LogInStep> {
  var _formKey = GlobalKey<FormState>();
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Expanded(
          child: Theme(
            data: ThemeData(canvasColor: Colors.transparent),
            child: Stepper(
              elevation: 0.0,
              controlsBuilder: (context, {onStepContinue, onStepCancel}) {
                final isLastStep = currentStep == getStaps().length - 1;
                return Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: onStepContinue,
                          child: Text(isLastStep ? "CONFERM" : "NEXT"),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      if (currentStep != 0)
                        Expanded(
                          child: ElevatedButton(
                            onPressed: onStepCancel,
                            child: Text("BACK"),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                          ),
                        ),
                    ],
                  ),
                );
              },
              currentStep: currentStep,
              type: StepperType.horizontal,
              steps: getStaps(),
              onStepContinue: () {
                final isLastStep = currentStep == getStaps().length - 1;

                if (isLastStep) {
                  Navigator.pushReplacement(
                      context, RouteAnimation(widget: frontPage()));
                } else {
                  if (currentStep == 0) {
                    if (_formKey.currentState!.validate().toString() == 'true')
                      setState(() => currentStep += 1);
                  } else {
                    setState(() => currentStep += 1);
                  }
                }
              },
              onStepCancel: currentStep == 0
                  ? null
                  : () => setState(() => currentStep -= 1),
            ),
          ),
        ),
      ),
    );
  }

  List<Step> getStaps() => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: Text("Account"),
          content: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.length < 11)
                          return "Please Enter Valid Number!";
                        else
                          return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Phone",
                        suffixIcon: Icon(Icons.phone),
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Step(
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: Text("Verification"),
          content: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Verification Code",
                  hintText: "* * * * * *",
                  contentPadding: EdgeInsets.all(10.0),
                ),
              )
            ],
          ),
        ),
        Step(
          isActive: currentStep >= 2,
          title: Text("Complete"),
          content: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "E-mail (optional)",
                  contentPadding: EdgeInsets.all(10.0),
                ),
              )
            ],
          ),
        ),
      ];
}
