import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RememberMeCheckbox extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool>? onChanged;

  const RememberMeCheckbox({
    super.key,
    this.initialValue = false,
    this.onChanged,
  });

  @override
  State<RememberMeCheckbox> createState() => _RememberMeCheckboxState();
}

class _RememberMeCheckboxState extends State<RememberMeCheckbox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
        if (widget.onChanged != null) {
          widget.onChanged!(isChecked);
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 20.w,
            height: 20.w,
            decoration: BoxDecoration(
              color: isChecked ? const Color(0xFFFF7622) : Colors.transparent,
              border: Border.all(
                color: isChecked ? const Color(0xFFFF7622) : const Color(0xFFE8EAED),
              ),
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: isChecked
                ? Icon(
                    Icons.check,
                    size: 14.sp,
                    color: Colors.white,
                  )
                : null,
          ),
          SizedBox(width: 8.w),
          Text(
            'Remember me',
            style: GoogleFonts.sen(
              color: const Color(0xFF7E8CA0),
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
