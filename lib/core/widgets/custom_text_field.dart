import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String? label;
  final String hint;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final int maxLines;

  const CustomTextField({
    super.key,
    this.label,
    required this.hint,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.controller,
    this.validator,
    this.maxLines = 1,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscured;

  @override
  void initState() {
    super.initState();
    _obscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    Widget? activeSuffixIcon = widget.suffixIcon;

    if (widget.obscureText) {
      activeSuffixIcon = IconButton(
        icon: SvgPicture.asset(
          _obscured ? 'assets/icons/unseen.svg' : 'assets/icons/eye.svg',
          width: 24.w,
          height: 24.h,
        ),
        tooltip: _obscured ? 'Show password' : 'Hide password',
        onPressed: () {
          setState(() {
            _obscured = !_obscured;
          });
        },
      );
    }

    if (activeSuffixIcon != null) {
      activeSuffixIcon = Padding(
        padding: EdgeInsets.all(12.r),
        child: activeSuffixIcon,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!.toUpperCase(),
            style: GoogleFonts.sen(
              color: const Color(0xFF32343E),
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        if (widget.label != null) SizedBox(height: 8.h),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          obscureText: _obscured,
          maxLines: _obscured ? 1 : widget.maxLines,
          keyboardType: widget.keyboardType,
          style: GoogleFonts.sen(color: Colors.black, fontSize: 16.sp),
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: GoogleFonts.sen(
              color: const Color(0xFFA0A5BA),
              fontSize: 14.sp,
            ),
            suffixIcon: activeSuffixIcon,
            filled: true,
            fillColor: const Color(0xFFF0F5FA),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
          ),
        ),
      ],
    );
  }
}
