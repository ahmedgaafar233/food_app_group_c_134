import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';

class AuthBackground extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget content;
  final bool showBackButton;

  const AuthBackground({
    super.key,
    required this.title,
    required this.subtitle,
    required this.content,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121223),
      body: Stack(
        children: [
          // Top Left Curve
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              AppIcons.background1,
              width: 150.w,
            ),
          ),
          
          // Top Right Curve
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/icons/Vector 142.svg',
              width: 150.w,
            ),
          ),
          
          SafeArea(
            bottom: false,
            child: Column(
              children: [
                if (showBackButton)
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.w, top: 10.h),
                      child: const CustomBackButton(),
                    ),
                  )
                else
                  SizedBox(height: 50.h),
                  
                // Title and Subtitle
                Center(
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.sen(
                          color: Colors.white,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        subtitle,
                        style: GoogleFonts.sen(
                          color: Colors.white70,
                          fontSize: 16.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: 30.h),
                
                // White container for body
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
                    ),
                    padding: EdgeInsets.all(24.r),
                    child: content,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
