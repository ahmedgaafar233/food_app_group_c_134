// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/burger_card.dart';
import 'package:food_app/core/widgets/section_header.dart';
import 'package:food_app/features/food_details_02/screens/food_details_screen.dart';
import 'package:food_app/features/burger/widgets/build_header.dart';
import 'package:food_app/core/widgets/restaurant_card.dart';

class BurgersScreen extends StatelessWidget {
  const BurgersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyLite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Custom Header (Top Row) ---
              BuildHeader(context: context),

              SizedBox(height: 25.h),

              // --- Popular Burgers Section ---
              const SectionHeader(title: "Popular Burgers"),
              SizedBox(height: 15.h),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.h,
                childAspectRatio: 0.75, // ضبط تناسق الطول مع العرض
                children: [
                  BurgerCard(
                    context: context,
                    image: AppImages.picture1,
                    title: "Burger Bistro",
                    subtitle: "Rose Garden",
                    price: "\$40",
                    onTap: () => pushTo(context, const FoodDetailsScreen()),
                  ),
                  BurgerCard(
                    context: context,
                    image: AppImages.picture1,
                    title: "Smokin' Burger",
                    subtitle: "Cafenio Restaurant",
                    price: "\$60",
                    onTap: () => pushTo(context, const FoodDetailsScreen()),
                  ),
                  BurgerCard(
                    context: context,
                    image: AppImages.picture1,
                    title: "Buffalo Burgers",
                    subtitle: "Kaji Firm Kitchen",
                    price: "\$75",
                    onTap: () => pushTo(context, const FoodDetailsScreen()),
                  ),
                  BurgerCard(
                    context: context,
                    image: AppImages.picture1,
                    title: "Bullseye Burgers",
                    subtitle: "Kabab Restaurant",
                    price: "\$94",
                    onTap: () => pushTo(context, const FoodDetailsScreen()),
                  ),
                ],
              ),

              SizedBox(height: 30.h),

              // --- Open Restaurants Section ---
              const SectionHeader(title: "Open Restaurants"),
              SizedBox(height: 15.h),

              RestaurantCard(
                imageUrl: "",
                name: "Tasty Treat Gallery",
                tags: "Pasta - Healthy - Pizza - Drinks",
                rating: "4.7",
                deliveryFee: "Free",
                deliveryTime: "20 min",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
