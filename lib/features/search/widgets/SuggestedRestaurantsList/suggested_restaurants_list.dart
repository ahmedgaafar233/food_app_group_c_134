import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/features/search/widgets/SuggestedRestaurantsList/build_restaurant_item.dart';

class SuggestedRestaurantsList extends StatelessWidget {
  const SuggestedRestaurantsList({super.key});

  static const List<Map<String, String>> restaurants = [
    {"name": "Pansi Restaurant", "rating": "4.7"},
    {"name": "American Spicy Burger Shop", "rating": "4.3"},
    {"name": "Cafenio Coffee Club", "rating": "4.0"},
  ];

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
      itemCount: restaurants.length,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      itemBuilder: (context, index) {
        final restaurant = restaurants[index];
        return buildRestaurantItem(
          name: restaurant["name"]!,
          rating: restaurant["rating"]!,
        );
      },
    );
  }
}
