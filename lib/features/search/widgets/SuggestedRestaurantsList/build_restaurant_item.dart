import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/icon_text.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildRestaurantItem() => Column(
  children: [
    Expanded(
      child: Row(
        children: [
          Container(
            width: 70.w,
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: AppColors.description,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pansi Restaurant",
                  style: GoogleFonts.sen(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF32343E),
                  ),
                ),
                SizedBox(height: 4.h),
                IconText(
                  iconPath: AppImages.star,
                  text: "4.7",
                  textStyle: GoogleFonts.sen(
                    color: const Color(0xFF181C2E),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Divider(height: 1.h, color: const Color(0xFFE8EAED)),
  ],
);
