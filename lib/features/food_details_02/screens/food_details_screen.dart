import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/container_button.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/features/cart/screens/cart_screen.dart';
import 'package:food_app/features/food_details_02/widgets/ingredients.dart';
import 'package:food_app/features/food_details_02/widgets/product_counter.dart';
import 'package:food_app/features/food_details_02/widgets/radio_button.dart';
import 'package:food_app/features/restaurant_view/screen/restaurant_screen.dart';
import 'package:food_app/features/restaurant_view/widgets/restaurant_info/restaurant_info_row.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.imageBackground,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.vertical(
                            bottom: Radius.circular(30.r),
                          ),
                          child: Image.asset(AppImages.picture1),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.w, 50.h, 25.w, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomBackButton(backgroundColor: AppColors.greyLite),
                        ContainerButton(
                          color: AppColors.greyLite,
                          child: Icon(Icons.favorite, color: AppColors.primary),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25.0.w, 25.0.h, 25.0.w, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Burger Bistro', style: TextStyles.body),
                    GestureDetector(
                      onTap: () => pushTo(context, RestaurantScreen()),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/2.png',
                            width: 25.w,
                            height: 25.h,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Rose Garden',
                            style: TextStyles.captionB.copyWith(
                              color: AppColors.secondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    RestaurantInfoRow(),
                    SizedBox(height: 30.h),
                    Text(
                      'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.',
                      style: TextStyles.captionB.copyWith(
                        color: AppColors.description,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        Text(
                          'SIZE: ',
                          style: TextStyles.captionB.copyWith(
                            color: AppColors.description,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        SizeSelector(),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Text('INGRIDENTS'),
                    SizedBox(height: 30.h),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 33,
                        children: [
                          Ingredients(icon: AppIcons.salt),
                          Ingredients(icon: AppIcons.chicken),
                          Ingredients(icon: AppIcons.onion),
                          Ingredients(icon: AppIcons.thom),
                          Ingredients(icon: AppIcons.papper),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
        height: 200.h,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 209, 212, 220),
          borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$32', style: TextStyles.title),
                ProductCounter(),
              ],
            ),
            SizedBox(height: 20.h),
            CustomButton(
              onPressed: () {
                pushTo(context, CartScreen());
              },
              text: 'ADD TO CART',
            ),
          ],
        ),
      ),
    );
  }
}
