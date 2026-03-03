import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/core/widgets/custom_badge_button.dart';
import 'package:food_app/core/widgets/search_field.dart';
import 'package:food_app/features/search/widgets/PopularFoodList/popular_food_list.dart';
import 'package:food_app/features/search/widgets/RecentKeywordsList/recent_keywords_list.dart';
import 'package:food_app/features/search/widgets/SuggestedRestaurantsList/suggested_restaurants_list.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  children: [
                    const CustomBackButton(
                      backgroundColor: AppColors.iceBlue,
                    ),
                    SizedBox(width: 16.w),
                    Text(
                      "Search",
                      style: GoogleFonts.sen(
                        fontSize: 17.sp,
                        color: const Color(0xFF181C2E),
                      ),
                    ),
                    const Spacer(),
                    CustomBadgeButton(
                      iconPath: AppImages.shoppingBag,
                      itemCount: 2,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: const SearchField(
                  hintText: 'Search dishes, restaurants',
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 24.w, bottom: 12.h),
                child: Text(
                  "Recent Keywords",
                  style: GoogleFonts.sen(
                    fontSize: 14.sp,
                    color: const Color(0xFF32343E),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const RecentKeywordsList(),
              
              SizedBox(height: 24.h),
              
              Padding(
                padding: EdgeInsets.only(left: 24.w, bottom: 16.h),
                child: Text(
                  "Suggested Restaurants",
                  style: GoogleFonts.sen(
                    fontSize: 14.sp,
                    color: const Color(0xFF32343E),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              const SuggestedRestaurantsList(),
              
              SizedBox(height: 24.h),
              
              Padding(
                padding: EdgeInsets.only(left: 24.w, bottom: 16.h),
                child: Text(
                  "Popular Fast food",
                  style: GoogleFonts.sen(
                    fontSize: 14.sp,
                    color: const Color(0xFF32343E),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const PopularFoodList(),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
