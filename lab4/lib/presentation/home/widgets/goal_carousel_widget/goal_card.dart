import 'package:flutter/material.dart';
import 'package:lab4/presentation/models/index.dart';
import 'package:lab4/resources/index.dart';

import 'goal_button.dart';
import 'goal_main.dart';

class GoalCardWidget extends StatelessWidget {
  const GoalCardWidget({Key? key, required this.goal}) : super(key: key);

  final GoalItem goal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        height: 281,
        decoration: BoxDecoration(
          color: CustomColors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.16),
              spreadRadius: 2,
              blurRadius: 24,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Material(
          type: MaterialType.transparency,
          child: Stack(
            children: [
              GoalMainWidget(goal: goal),
              const GoalButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
