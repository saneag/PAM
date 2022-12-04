import 'package:flutter/material.dart';
import 'package:lab4/resources/index.dart';

class GoalButtonWidget extends StatelessWidget {
  const GoalButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 226.0,
        top: 124.0,
      ),
      height: 40,
      width: 40,
      child: FloatingActionButton(
        elevation: 1,
        backgroundColor: CustomColors.cultured,
        onPressed: () {},
        child: Container(
          child: SvgAssets.iconPlay,
        ),
      ),
    );
  }
}
