import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/widgets/auth_background.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/social_login_row.dart';
import '../../../core/widgets/remember_me_checkbox.dart';

import 'package:food_app/features/auth/screens/forgot_password_screen.dart';
import 'package:food_app/features/auth/screens/signup_screen.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/features/home/screens/home_screen.dart';

class LoginTypeScreen extends StatelessWidget {
  const LoginTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      title: 'Log In',
      subtitle: 'Please sign in to your existing account',
      content: SingleChildScrollView(
        child: Column(
          children: [
            // Contains pre-filled data like the figma design
            const CustomTextField(
              label: 'EMAIL',
              hint: 'example@gmail.com', // Simulate typing
              keyboardType: TextInputType.emailAddress,
            ),
            
            const SizedBox(height: 16),
            
            CustomTextField(
              label: 'PASSWORD',
              hint: '123456789', // Show text
              obscureText: false,
              suffixIcon: SvgPicture.asset('assets/icons/unseen.svg', width: 24.w, height: 24.h),
            ),
            
            SizedBox(height: 12.h),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RememberMeCheckbox(
                  initialValue: false, // You can make this dynamic if caching is implemented
                  onChanged: (value) {
                    // Save preference
                  },
                ),
                TextButton(
                  onPressed: () {
                    pushTo(context, const ForgotPasswordScreen());
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'Forgot Password',
                    style: GoogleFonts.sen(
                      color: const Color(0xFFFF7622),
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 24.h),
            // Login Button
            CustomButton(
              text: 'Log In',
              onPressed: () {
                pushReplacementTo(context, const HomeScreen());
              },
            ),
            
            SizedBox(height: 16.h),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.sen(
                    color: const Color(0xFF32343E),
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pushTo(context, const SignUpScreen());
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'SIGN UP',
                    style: GoogleFonts.sen(
                      color: const Color(0xFFFF7622),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 20.h),
            Text(
              'Or',
              style: GoogleFonts.sen(
                color: const Color(0xFF7E8CA0),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16.h),
            const SocialLoginRow(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
