import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/widgets/category_list.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/features/payment/screens/congrats_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _selectedIndex = 2; // Default: MasterCard selected

  final List<String> _categories = ['Cash', 'Visa', 'MasterCard', 'PayPal'];
  final List<String> _icons = [
    'assets/icons/cash.svg',
    'assets/icons/visa.svg',
    'assets/icons/mastercard.svg',
    'assets/icons/paypal.svg',
  ];

  String get _selectedCategory => _categories[_selectedIndex];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
          child: Column(
            children: [
              Row(
                children: [
                  CustomBackButton(
                    backgroundColor: AppColors.lightGrey,
                    onPressed: () => pop(context),
                  ),
                  SizedBox(width: 20.w),
                  Text('Payment', style: TextStyles.body),
                ],
              ),
              SizedBox(height: 40.h),

              // Payment method selector
              CategoryList(
                icons: _icons,
                categories: _categories,
                selectedIndex: _selectedIndex,
                onCategoryTap: (category) {
                  setState(() {
                    _selectedIndex = _categories.indexOf(category);
                  });
                },
              ),

              SizedBox(height: 20.h),

              // Card area
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 12.h),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: Image.asset(
                        'assets/images/bigcard.png',
                        width: 210.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'No $_selectedCategory added',
                      style: TextStyles.body2,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'You can add a $_selectedCategory and\nsave it for later',
                      style: TextStyles.caption.copyWith(
                        color: AppColors.description,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 12.h),
                  ],
                ),
              ),

              SizedBox(height: 16.h),

              // + ADD NEW button (matches Figma design)
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 62.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightGrey),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add, color: AppColors.primary, size: 18.r),
                        SizedBox(width: 6.w),
                        Text(
                          'ADD NEW',
                          style: TextStyles.body2.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const Spacer(),

              // Total & Pay button
              CustomButton(
                text: 'PAY & CONFIRM',
                onPressed: () {
                  pushTo(context, const CongratsScreen());
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
