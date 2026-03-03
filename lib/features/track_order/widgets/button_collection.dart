import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/features/track_order/widgets/buttons.dart';

class ButtonCollection extends StatelessWidget {
  const ButtonCollection({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return buttonsStyles[index];
  }
}

List<Widget> buttonsStyles = [
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Buttons(
          backgroundColor: AppColors.primary,
          text: 'Track Order',
          textColor: Colors.white,
        ),
        Spacer(),
        Buttons(
          backgroundColor: Colors.transparent,
          text: 'Cancel',
          textColor: AppColors.primary,
        ),
      ],
    ),
  ),
  Row(
    children: [
      Buttons(
        backgroundColor: Colors.transparent,
        text: 'Rate',
        textColor: AppColors.primary,
      ),
      Spacer(),
      Buttons(
        backgroundColor: AppColors.primary,
        text: 'Re-order',
        textColor: Colors.white,
      ),
    ],
  ),
];
