import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
  });
  final Color backgroundColor;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 139.w,
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.primary),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
        child: Center(
          child: Text(
            text,
            style: TextStyles.captionB.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
