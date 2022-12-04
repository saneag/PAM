import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../resources/index.dart';
import 'controller/home_controller.dart';
import 'widgets/daily_exercise_widget/index.dart';
import 'widgets/goal_carousel_widget/index.dart';
import 'widgets/header_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Get.lazyPut(() => HomeController());
    HomeController controller = Get.find();
    controller.readJsonFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();

    final double statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark, // play with this
        child: Scaffold(
            body: Container(
          color: CustomColors.cultured,
          child: Column(
            children: [
              SizedBox(height: statusBarHeight),
              const HeaderWidget(title: Strings.startNewGoal),
              Obx(() => controller.goalItems.isNotEmpty
                  ? GoalCarouselWidget(goals: controller.goalItems)
                  : const SizedBox(
                      width: 30,
                      height: 300,
                      child: CircularProgressIndicator(),
                    )),
              const HeaderWidget(title: Strings.dailyTask),
              Obx(() => controller.exerciseItems.isNotEmpty
                  ? DailyExercisesList(exercises: controller.exerciseItems)
                  : const SizedBox(
                      width: 30,
                      height: 300,
                      child: CircularProgressIndicator(),
                    )),
            ],
          ),
        )));
  }
}
