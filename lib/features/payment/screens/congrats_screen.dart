import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/features/home/screens/home_screen.dart';
import 'package:food_app/features/track_order/screens/track_order_screen.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(25.r),
                  width: 270.w,
                  height: 250.h,
                  decoration: BoxDecoration(
                    color: AppColors.imageBackground,
                    borderRadius: BorderRadius.circular(35.r),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check, color: Colors.white, size: 80.r),
                  ),
                ),
                SizedBox(height: 24.h),
                Text('Congratulations!', style: TextStyles.body),
                SizedBox(height: 12.h),
                Text(
                  'You successfully made a payment,\nenjoy our service!',
                  style: TextStyles.caption.copyWith(
                    color: AppColors.describtion,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(25.w, 0, 25.w, 50.h),
        child: CustomButton(
          text: 'TRACK ORDER',
          onPressed: () {
            pushReplacementTo(context, const TrackOrderScreen());
          },
        ),
      ),
    );
  }
}
