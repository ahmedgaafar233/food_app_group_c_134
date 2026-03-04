import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/features/search/widgets/PopularFoodList/build_food_item.dart';

class PopularFoodList extends StatelessWidget {
  const PopularFoodList({super.key});

  static const List<Map<String, String>> foods = [
    {"title": "European Pizza", "subtitle": "Uttora Coffe House"},
    {"title": "Buffalo Pizza.", "subtitle": "Cafenio Coffee Club"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 264.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: foods.length,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        separatorBuilder: (context, index) {
          return SizedBox(width: 20.w);
        },
        itemBuilder: (context, index) {
          final food = foods[index];
          return buildFoodItem(
            title: food["title"]!,
            subtitle: food["subtitle"]!,
          );
        },
      ),
    );
  }
}
