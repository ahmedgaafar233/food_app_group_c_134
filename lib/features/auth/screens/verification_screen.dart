import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/auth_background.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:food_app/features/home/screens/home_screen.dart';
import 'package:food_app/core/functions/navigations.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      title: 'Verification',
      subtitle: 'We have sent a code to your email\nexample@gmail.com',
      showBackButton: true,
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            
             // Code inputs and resend
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                    'CODE',
                    style: GoogleFonts.sen(
                      color: const Color(0xFF32343E), // dark text
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                 Row(
                    children: [
                      Text(
                        'Resend',
                        style: GoogleFonts.sen(
                          color: const Color(0xFF32343E), // dark text
                          fontSize: 14.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xFF32343E),
                        ),
                      ),
                      Text(
                        ' in 50sec',
                        style: GoogleFonts.sen(
                          color: const Color(0xFF7E8CA0), // grey text
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                 ),
              ],
            ),
            
            SizedBox(height: 16.h),
            
            OtpTextField(
              numberOfFields: 4,
              borderColor: Colors.transparent,
              focusedBorderColor: const Color(0xFFFF7622),
              enabledBorderColor: Colors.transparent,
              fillColor: const Color(0xFFF0F5FA),
              filled: true,
              autoFocus: true,
              textStyle: GoogleFonts.sen(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
              showFieldAsBox: true,
              fieldWidth: 60.w,
              borderRadius: BorderRadius.circular(10.r),
              keyboardType: TextInputType.number,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                pushReplacementTo(context, const HomeScreen());
              },
            ),
            
            SizedBox(height: 40.h),
            
            CustomButton(
              text: 'VERIFY',
              onPressed: () {},
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }

    // buildCodeBox removed in favor of OtpTextField
}
