import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/styles/app_colors.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({super.key, required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.r),
      width: 45.w,
      height: 45.h,
      decoration: BoxDecoration(
        color: AppColors.ingredients,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
