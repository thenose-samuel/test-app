import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({Key? key}) : super(key: key);

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay? _time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () async {
          _time = await showTimePicker(
              context: context, initialTime: TimeOfDay.now());
          if (_time == null) {
            _time = TimeOfDay.now();
          } else {
            setState(() {});
          }
        },
        child: Center(
          child: Text(
            '${(_time!.hourOfPeriod < 10) ? '0' + _time!.hourOfPeriod.toString() : _time!.hourOfPeriod}:${(_time!.minute < 10) ? '0' + _time!.minute.toString() : _time!.minute} ${(_time!.hour >= 12) ? 'PM' : 'AM'}',
            style: TextStyle(
              color: const Color(0xFFAEAEAE),
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
  }
}
