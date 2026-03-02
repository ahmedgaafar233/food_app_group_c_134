import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/features/search/widgets/SuggestedRestaurantsList/build_restaurant_item.dart';

class SuggestedRestaurantsList extends StatelessWidget {
  const SuggestedRestaurantsList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 16.h,
        mainAxisExtent: 82.h,
      ),
      itemCount: 3,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      itemBuilder: (context, index) {
        return buildRestaurantItem();
      },
    );
  }
}
