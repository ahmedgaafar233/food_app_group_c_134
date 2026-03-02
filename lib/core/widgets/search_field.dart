import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/core/utils/app_icons.dart';

class SearchField extends StatelessWidget {
  final String hintText;
  final VoidCallback? onTap;
  final bool readOnly;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const SearchField({
    super.key,
    this.hintText = 'Search dishes, restaurants',
    this.onTap,
    this.readOnly = false,
    this.controller,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      onTap: onTap,
      onChanged: onChanged,
      style: GoogleFonts.sen(color: const Color(0xFF32343E), fontSize: 14.sp),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.sen(
          color: const Color(0xFFA0A5BA),
          fontSize: 14.sp,
        ),
        filled: true,
        fillColor: const Color(0xFFF0F5FA),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 14.h, // Adjusted to target 49h total (14*2 + 14 + line_height_buffer)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 12.w),
          child:
              prefixIcon ??
              SvgPicture.asset(
                AppIcons.search,
                width: 20.w,
                height: 20.h,
                colorFilter: const ColorFilter.mode(
                  Color(0xFF7E8CA0),
                  BlendMode.srcIn,
                ),
              ),
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 48.w,
          minHeight: 20.h,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
