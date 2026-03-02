import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildFoodItem() => Container(
  width: 153.w,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(24.r),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.05),
        blurRadius: 10,
        offset: const Offset(0, 5),
      ),
    ],
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 120.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          color: AppColors.description, // Image placeholder
        ),
      ),
      Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "European Pizza",
              style: GoogleFonts.sen(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF32343E),
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              "Uttora Coffe House",
              style: GoogleFonts.sen(
                fontSize: 12.sp,
                color: const Color(0xFF646982),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
