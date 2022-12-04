import 'package:flutter/material.dart';
import 'package:lab4/presentation/models/index.dart';

import 'goal_card.dart';

class GoalCarouselWidget extends StatefulWidget {
  const GoalCarouselWidget({super.key, required this.goals});

  final List<GoalItem> goals;

  @override
  State<GoalCarouselWidget> createState() => _GoalCarouselWidgetState();
}

class _GoalCarouselWidgetState extends State<GoalCarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 281,
      margin: const EdgeInsets.only(top: 0),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: PageController(viewportFraction: 0.85), //85
              padEnds: false,
              itemCount: widget.goals.length,
              itemBuilder: (_, i) {
                var goal = widget.goals[i];
                return GoalCardWidget(goal: goal);
              },
            ),
          ),
        ],
      ),
    );
  }
}
