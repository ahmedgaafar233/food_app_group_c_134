import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/features/restaurant_view/widgets/food_card_list/product_card.dart';
import 'package:food_app/features/search/data/product_model.dart';

class FoodCardList extends StatelessWidget {
  const FoodCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 24.h,
        mainAxisExtent: 210.h, // Adjusted to fit card content without overflow
      ),
      itemCount: productCard.length,
      itemBuilder: (context, index) {
        var model = productCard[index];
        return ProductCard(model: model);
      },
    );
  }
}
