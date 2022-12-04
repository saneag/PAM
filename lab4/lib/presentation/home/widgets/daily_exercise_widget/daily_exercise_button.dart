import 'package:flutter/material.dart';
import 'package:lab4/resources/index.dart';

class DailyExerciseButton extends StatelessWidget {
  const DailyExerciseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 32,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              elevation: 1,
              backgroundColor: CustomColors.cultured,
              onPressed: () {},
              child: SizedBox(
                height: 16,
                width: 16,
                child: SvgAssets.iconPlay,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
