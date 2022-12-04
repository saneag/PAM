import 'package:flutter/material.dart';
import 'package:lab4/presentation/models/index.dart';

import 'index.dart';

class DailyExercise extends StatelessWidget {
  const DailyExercise({Key? key, required this.exercise}) : super(key: key);

  final ExerciseItem exercise;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0),
      height: 48,
      child: Row(
        children: [
          DailyExerciseImage(cover: exercise.cover),
          const SizedBox(width: 16),
          DailyExerciseMain(
              title: exercise.title,
              durationSeconds: exercise.durationSeconds,
              caloriesCount: exercise.caloriesCount),
          const DailyExerciseButton(),
        ],
      ),
    );
  }
}
