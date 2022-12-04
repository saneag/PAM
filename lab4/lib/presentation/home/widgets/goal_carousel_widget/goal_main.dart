import 'package:flutter/material.dart';
import 'package:lab4/presentation/models/index.dart';

import 'goal_image.dart';
import 'goal_time_cal_container.dart';
import 'goal_title_description.dart';

class GoalMainWidget extends StatelessWidget {
  const GoalMainWidget({Key? key, required this.goal}) : super(key: key);

  final GoalItem goal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GoalImageWidget(cover: goal.cover),
        GoalTitleDescriptionWidget(title: goal.title, subTitle: goal.subTitle),
        GoalTimeCalContainer(
            caloriesCount: goal.caloriesCount,
            durationSeconds: goal.durationSeconds),
      ],
    );
  }
}
