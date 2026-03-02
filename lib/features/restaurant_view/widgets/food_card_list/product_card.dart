import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/features/search/data/product_model.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/features/food_details_02/screens/food_details_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, const FoodDetailsScreen());
      },
      child: Container(
        width: 153.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.greyLite.withValues(alpha: 0.5),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(8.w),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Container(
                  height: 90.h,
                  width: double.infinity,
                  color: AppColors.imageBackground,
                  child: model.image.isNotEmpty ? Image.asset(model.image, fit: BoxFit.cover) : null,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: TextStyles.body.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF32343E),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    model.description ?? "Spicy Restaurant",
                    style: TextStyles.caption.copyWith(
                      fontSize: 12.sp,
                      color: const Color(0xFF646982),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 8.h, bottom: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    model.price ?? "\$40",
                    style: TextStyles.body.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF32343E),
                    ),
                  ),
                  Container(
                    width: 30.w,
                    height: 30.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF7622),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(Icons.add, color: AppColors.white, size: 20.w),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
