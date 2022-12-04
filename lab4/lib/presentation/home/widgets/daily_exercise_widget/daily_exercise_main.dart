import 'package:flutter/material.dart';
import 'package:lab4/resources/index.dart';

class DailyExerciseMain extends StatelessWidget {
  const DailyExerciseMain(
      {Key? key,
      required this.title,
      required this.durationSeconds,
      required this.caloriesCount})
      : super(key: key);

  final String title;
  final int durationSeconds;
  final int caloriesCount;

  @override
  Widget build(BuildContext context) {
    int durationMinutes = (durationSeconds / 60).round();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.poppins16(),
        ),
        Row(
          children: [
            Row(
              children: [
                SvgAssets.iconClock,
                const SizedBox(width: 4),
                Text(
                  "$durationMinutes min",
                  style: TextStyles.poppins14(
                    color: CustomColors.yellowGreen,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(width: 16),
            Row(
              children: [
                SvgAssets.iconFire,
                const SizedBox(width: 4),
                Text(
                  "$caloriesCount cal",
                  style: TextStyles.poppins14(
                    color: CustomColors.uclaGold,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
