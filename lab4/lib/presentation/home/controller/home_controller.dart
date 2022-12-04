import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lab4/resources/files.dart';

import '../../models/index.dart';

class HomeController extends GetxController {
  RxList<GoalItem> goalItems = RxList();
  RxList<ExerciseItem> exerciseItems = RxList();

  void readJsonFile() async {
    String jsonString = await rootBundle.loadString(Files.jsonPath);
    var map = jsonDecode(jsonString);
    var response = FitnessResponse.fromJson(map);

    goalItems.value = response.goals
        .map((e) => GoalItem(
            cover: e.cover,
            title: e.title,
            subTitle: e.subTitle,
            caloriesCount: e.caloriesCount,
            durationSeconds: e.durationSeconds))
        .toList();

    exerciseItems.value = response.dailyExercises
        .map((e) => ExerciseItem(
            cover: e.cover,
            title: e.title,
            caloriesCount: e.caloriesCount,
            durationSeconds: e.durationSeconds))
        .toList();
  }
}
