import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:doctor_app/features/onboarding/ui/widgets/doc_logo_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 4.h, bottom: 4.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(
                height: 18.h,
              ),
              const DocLogoAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      textAlign: TextAlign.center,
                      style: TextStyles.font13GrayRegular,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const GetStartedButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
