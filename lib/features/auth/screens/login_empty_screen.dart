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

class LoginEmptyScreen extends StatelessWidget {
  const LoginEmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      title: 'Log In',
      subtitle: 'Please sign in to your existing account',
      content: SingleChildScrollView(
        child: Column(
          children: [
            // Email Field
            const CustomTextField(
              label: 'EMAIL',
              hint: 'example@gmail.com',
              keyboardType: TextInputType.emailAddress,
            ),
            
            SizedBox(height: 16.h),
            
            // Password Field
            CustomTextField(
              label: 'PASSWORD',
              hint: '• • • • • • • • • •',
              obscureText: true,
              suffixIcon: SvgPicture.asset('assets/icons/eye.svg', width: 24.w, height: 24.h),
            ),
            
            SizedBox(height: 12.h),
            
            // Remember me Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RememberMeCheckbox(
                  initialValue: false, // Make this dynamic if caching is implemented
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
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 24.h),
            
            // Login Button
            CustomButton(
              text: 'LOG IN',
              onPressed: () {
                pushReplacementTo(context, const HomeScreen());
              },
            ),
            
            SizedBox(height: 16.h),
            
            // Sign Up text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.sen(
                    color: const Color(0xFF32343E), // dark text
                    fontSize: 14.sp,
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
            
            const SizedBox(height: 20),
            
            Text(
              'Or',
              style: GoogleFonts.sen(
                color: const Color(0xFF7E8CA0),
                fontSize: 16,
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Social Login Row
            const SocialLoginRow(),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
