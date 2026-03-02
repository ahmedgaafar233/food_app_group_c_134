import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final double iconSize;
  final Color? iconColor;

  const CircularIconButton({
    super.key,
    required this.iconPath,
    this.onPressed,
    this.backgroundColor = const Color(0xFFF0F5FA),
    this.iconSize = 20,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: backgroundColor, // matches search bar fill color typically
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconPath,
          width: iconSize,
          height: iconSize,
          colorFilter: iconColor != null
              ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
              : null,
        ),
      ),
    );
  }
}
