import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final TextStyle? hintTextStyle;
  final TextStyle? inputTextStyle;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final Color? backgroundColor;
  const AppTextFormField(
      {super.key,
      this.enabledBorder,
      this.focusedBorder,
      this.contentPadding,
      required this.hintText,
      this.suffixIcon,
      this.isObscureText,
      this.hintTextStyle,
      this.inputTextStyle,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColors.lighterGrey, width: 1.3),
                borderRadius: BorderRadius.circular(16.0),
              ),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColors.primaryColor, width: 1.3),
                borderRadius: BorderRadius.circular(16.0),
              ),
          hintText: hintText,
          hintStyle: hintTextStyle ?? TextStyles.font14LightGrayRegular,
          suffixIcon: suffixIcon,
          fillColor: backgroundColor ?? AppColors.moreLighterGrey,
          filled: true),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
    );
  }
}
