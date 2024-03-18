import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      this.backgroundColor,
      this.borderRadius,
      this.verticalPadding,
      this.horizontalPadding,
      required this.buttonText,
      this.textStyle,
      required this.onPressed,
      this.buttonWidth,
      this.buttonHeight});
  final Color? backgroundColor;
  final double? borderRadius;
  final double? verticalPadding;
  final double? horizontalPadding;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final double? buttonWidth;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? AppColors.primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
            ),
          ),
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(
                vertical: verticalPadding?.h ?? 14.h,
                horizontal: horizontalPadding?.w ?? 12.w),
          ),
          fixedSize: MaterialStateProperty.all<Size>(Size(
              buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 50.h))),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle ?? TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
