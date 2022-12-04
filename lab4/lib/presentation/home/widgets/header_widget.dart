import 'package:flutter/material.dart';
import 'package:lab4/resources/text_styles.dart';

class Strings {
  static const String startNewGoal = 'Start New Goal';
  static const String seeAll = 'See all';
  static const String title = 'Title';
  static const String bodyBuilding = 'Body Building';
  static const String fullBodyWorkout = 'Full body workout';
  static const String string35Min = '35 min';
  static const String string120Cal = '120 cal';

  static const String dailyTask = 'Daily task';
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0, bottom: 16, left: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyles.poppins18(),
          ),
          Text(
            Strings.seeAll,
            style: TextStyles.poppins14(),
          ),
        ],
      ),
    );
  }
}
