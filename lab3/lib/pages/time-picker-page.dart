import 'package:flutter/material.dart';
import 'package:lab3/pages/countdown-page.dart';
import '../icons/my_flutter_app_icons.dart';
import '../widgets/round-button.dart';
import '../widgets/time-picker.dart';

class TimePickerPage extends StatefulWidget {
  const TimePickerPage({Key? key}) : super(key: key);

  @override
  _TimePickerPageState createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  int _currentHoursValue = 0;
  int _currentMinutesValue = 0;
  int _currentSecondsValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF1744),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              'Countdown Timer',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TimePicker(
                    maxValue: 99,
                    currentValue: _currentHoursValue,
                    text: 'hour(s)',
                    onChangedValue: (value) =>
                        setState(() => _currentHoursValue = value),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                    child: Text(
                      ':',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TimePicker(
                    maxValue: 59,
                    currentValue: _currentMinutesValue,
                    text: 'minute(s)',
                    onChangedValue: (value) =>
                        setState(() => _currentMinutesValue = value),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                    child: Text(
                      ':',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TimePicker(
                    maxValue: 59,
                    currentValue: _currentSecondsValue,
                    text: 'second(s)',
                    onChangedValue: (value) =>
                        setState(() => _currentSecondsValue = value),
                  ),
                ],
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (_currentHoursValue == 0 &&
                        _currentMinutesValue == 0 &&
                        _currentSecondsValue == 0) {
                      return;
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CountDownPage(
                              hours: _currentHoursValue,
                              minutes: _currentMinutesValue,
                              seconds: _currentSecondsValue)),
                    );
                  },
                  child: RoundButton(
                    icon: MyFlutterApp.play_outline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
