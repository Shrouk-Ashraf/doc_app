import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: "By logging, you agree to our ",
            style: TextStyles.font11DarkGreyNormal,
          ),
          TextSpan(
            text: " Terms & Conditions",
            style: TextStyles.font11DarkBlueMedium,
          ),
          TextSpan(
            text: " and ",
            style: TextStyles.font11DarkGreyNormal,
          ),
          TextSpan(
            text: "PrivacyPolicy.",
            style: TextStyles.font11DarkBlueMedium.copyWith(height: 1.5),
          ),
        ]));
  }
}
