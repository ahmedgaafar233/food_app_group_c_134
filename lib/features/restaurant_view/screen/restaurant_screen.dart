import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/container_button.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/features/restaurant_view/widgets/food_card_list/food_card_list.dart';
import 'package:food_app/features/restaurant_view/widgets/category_selector/category_selector.dart';
import 'package:food_app/features/restaurant_view/widgets/restaurant_info/restaurant_info_row.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ImageCarousel(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 40.h,
                    horizontal: 20.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomBackButton(backgroundColor: AppColors.iceBlue),
                      ContainerButton(
                        color: AppColors.iceBlue,
                        onTap: () {},
                        child: Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RestaurantInfoRow(),
                  SizedBox(height: 20.h),

                  Text(
                    'Spicy Restaurant',
                    style: TextStyles.body.copyWith(fontSize: 20.sp),
                  ),
                  Text(
                    'Maecenas sed diam eget risus varius blandit sit omet non magna. Integer posuere erat a ante venenatis dopibus posuere velit aliquet.',
                    style: TextStyles.captionB.copyWith(
                      color: AppColors.description,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
            CategorySelector(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                  child: Text(
                    'Burger (10)',
                    style: TextStyles.body.copyWith(
                      fontSize: 16.sp,
                      color: const Color(0xFF32343E),
                    ),
                  ),
                ),
                const FoodCardList(),
                SizedBox(height: 30.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items:
              [
                AppImages.picture1,
                AppImages.picture1,
                AppImages.picture1,
                AppImages.picture1,
                AppImages.picture1,
              ].map((image) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              }).toList(),
          options: CarouselOptions(
            height: 260.h,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 220.h),
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: 5,
              effect: WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: AppColors.white,
                dotColor: AppColors.imageBackground,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
