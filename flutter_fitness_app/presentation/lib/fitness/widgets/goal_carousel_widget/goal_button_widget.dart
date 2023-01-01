import 'package:flutter/material.dart';

import '../../../../resources/custom_colors.dart';
import '../../../../resources/svg_assets.dart';

class GoalButtonWidget extends StatelessWidget {
  const GoalButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 226.0,
        top: 124.0,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: CustomColors.white,
          elevation: 0.0,
          shadowColor: CustomColors.cultured,
          shape: const CircleBorder(
            side: BorderSide(color: CustomColors.cultured),
          ),
        ),
        onPressed: () {},
        child: SizedBox(
          child: SvgAssets.iconPlay,
        ),
      ),
    );
  }
}
