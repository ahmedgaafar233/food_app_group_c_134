import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/auth_background.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_field.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/features/auth/screens/verification_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      title: 'Sign Up',
      subtitle: 'Please sign up to get started',
      showBackButton: true,
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTextField(
              label: 'NAME',
              hint: 'John doe',
            ),
            
            SizedBox(height: 16.h),
            
            const CustomTextField(
              label: 'EMAIL',
              hint: 'example@gmail.com',
              keyboardType: TextInputType.emailAddress,
            ),
            
            SizedBox(height: 16.h),
            
            CustomTextField(
              label: 'PASSWORD',
              hint: '• • • • • • • • • •',
              obscureText: true,
            ),
            
            SizedBox(height: 16.h),
            
            CustomTextField(
              label: 'RE-TYPE PASSWORD',
              hint: '• • • • • • • • • •',
              obscureText: true,
            ),
            
            SizedBox(height: 40.h),
            
            CustomButton(
              text: 'SIGN UP',
              onPressed: () {
                pushTo(context, const VerificationScreen());
              },
            ),
            
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
