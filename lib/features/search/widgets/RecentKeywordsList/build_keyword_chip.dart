import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';

class KeywordChip extends StatelessWidget {
  final String keyword;
  final bool isSelected;
  final VoidCallback onTap;

  const KeywordChip({
    super.key,
    required this.keyword,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          color: isSelected ? AppColors.primary : Colors.white,
          border: Border.all(
            color: isSelected ? AppColors.primary : const Color(0xffEDEDED),
          ),
        ),
        margin: EdgeInsets.all(5.r),
        child: Center(
          child: Text(
            keyword,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}
