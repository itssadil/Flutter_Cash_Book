import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CashDateTime extends StatefulWidget {
  const CashDateTime({Key? key}) : super(key: key);

  @override
  _CashDateTimeState createState() => _CashDateTimeState();
}

class _CashDateTimeState extends State<CashDateTime> {
  DateTime? pickedDate;
  TimeOfDay? pickedTime;

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
    pickedTime = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    final hourShow = pickedTime!.hour.toString().padLeft(2, "0");
    final minuteShow = pickedTime!.minute.toString().padLeft(2, "0");
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () => _pickDate(),
          child: Row(
            children: [
              Icon(
                Icons.calendar_today_outlined,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                DateFormat("dd/MM/yyyy").format(pickedDate!),
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 20,
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () => _pickTime(),
          child: Row(
            children: [
              Icon(
                Icons.alarm,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "${hourShow}:${minuteShow}",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }

  _pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: pickedDate!,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (date != null)
      setState(() {
        pickedDate = date;
      });
  }

  _pickTime() async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (time != null)
      setState(() {
        pickedTime = time;
      });
  }
}
