import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories;
  final List<String>? icons;
  final Function(String category)? onCategoryTap;
  final int selectedIndex;

  const CategoryList({
    super.key,
    required this.categories,
    this.icons,
    this.onCategoryTap,
    this.selectedIndex = -1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final isLast = index == categories.length - 1;
          return Padding(
            padding: EdgeInsets.only(right: isLast ? 0 : 16.0.w),
            child: GestureDetector(
              onTap: () => onCategoryTap?.call(categories[index]),
              child: Column(
                children: [
                  // Image container
                  Container(
                    width: 122.w,
                    height: 122.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.r),
                      border: selectedIndex == index
                          ? Border.all(color: AppColors.primary, width: 2)
                          : null,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        width: 96.w,
                        height: 81.h,
                        decoration: BoxDecoration(
                          color: icons != null
                              ? Colors.transparent
                              : AppColors.imageBackground,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: icons != null && index < icons!.length
                            ? Padding(
                                padding: EdgeInsets.all(12.r),
                                child: SvgPicture.asset(
                                  icons![index],
                                  fit: BoxFit.contain,
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  // Category Text
                  Text(
                    categories[index],
                    style: GoogleFonts.sen(
                      color: const Color(0xFF32343E),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
