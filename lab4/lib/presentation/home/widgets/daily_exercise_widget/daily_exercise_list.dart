import 'package:flutter/material.dart';
import 'package:lab4/presentation/models/index.dart';

import 'daily_exercise.dart';

class DailyExercisesList extends StatefulWidget {
  const DailyExercisesList({Key? key, required this.exercises})
      : super(key: key);

  final List<ExerciseItem> exercises;

  @override
  State<DailyExercisesList> createState() => _DailyExercisesListState();
}

class _DailyExercisesListState extends State<DailyExercisesList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.vertical,
        itemCount: widget.exercises.length,
        itemBuilder: (_, i) {
          var exercise = widget.exercises[i];
          return Column(
            children: [
              DailyExercise(exercise: exercise),
              const SizedBox(height: 12),
            ],
          );
        },
      ),
    ));
  }
}
