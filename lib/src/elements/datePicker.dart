import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime? _date = DateTime.now();
  static const dayOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  static const monthOfYear = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () async {
          _date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2050));
          if (_date == null) {
            _date = DateTime.now();
          } else {
            setState(() {});
          }
        },
        child: Center(
          child: Text(
              '${dayOfWeek[_date!.weekday]}, ${_date!.day} ${monthOfYear[_date!.month]}, ${_date!.year}', style: TextStyle(
            color: Color(0xFFAEAEAE),
            fontWeight: FontWeight.w500,
          ),),
        ));
  }
}
