import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/core/utils/app_icons.dart';

class SearchField extends StatefulWidget {
  final String hintText;
  final VoidCallback? onTap;
  final bool readOnly;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const SearchField({
    super.key,
    this.hintText = 'Search dishes, restaurants',
    this.onTap,
    this.readOnly = false,
    this.controller,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(_handleTextChanged);
  }

  void _handleTextChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      readOnly: widget.readOnly,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      style: GoogleFonts.sen(color: const Color(0xFF32343E), fontSize: 14.sp),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: GoogleFonts.sen(
          color: const Color(0xFFA0A5BA),
          fontSize: 14.sp,
        ),
        filled: true,
        fillColor: const Color(0xFFF0F5FA),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 14.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 12.w),
          child:
              widget.prefixIcon ??
              SvgPicture.asset(
                AppIcons.search,
                width: 20.w,
                height: 20.h,
                colorFilter: const ColorFilter.mode(
                  Color(0xFF7E8CA0),
                  BlendMode.srcIn,
                ),
              ),
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 48.w,
          minHeight: 20.h,
        ),
        suffixIcon:
            widget.suffixIcon ??
            (_controller.text.isNotEmpty
                ? IconButton(
                  icon: const Icon(Icons.cancel, color: Color(0xFFB0B3C7), size: 18),
                  onPressed: () {
                    _controller.clear();
                    if (widget.onChanged != null) {
                      widget.onChanged!('');
                    }
                  },
                )
                : null),
      ),
    );
  }
}
