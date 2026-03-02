import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ["Burger", "Sandwich", "Pizza", "Sandwich"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        separatorBuilder: (context, index) {
          return SizedBox(width: 12.w);
        },
        itemBuilder: (context, index) {
          return buildCategoryItem(index);
        },
      ),
    );
  }

  GestureDetector buildCategoryItem(int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: isSelected ? AppColors.primary : AppColors.white,
          border: Border.all(
            color: isSelected ? AppColors.primary : const Color(0xffEDEDED),
          ),
        ),
        child: Center(
          child: Text(
            categories[index],
            style: TextStyles.caption.copyWith(
              color: isSelected ? AppColors.white : AppColors.secondary,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}
