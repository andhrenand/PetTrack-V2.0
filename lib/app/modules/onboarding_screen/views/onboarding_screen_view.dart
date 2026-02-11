import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:pet_track/app/routes/app_pages.dart';
import 'package:pet_track/utils/widgets/primary_button.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/onboarding_screen_controller.dart';

class OnboardingScreenView extends GetView<OnboardingScreenController> {
  const OnboardingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pictures/BackgroundOnboarding.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: 40.h,
              left: 20.w,
              right: 20.w,
              bottom: 40.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PET TRACK",
                  style: TextStyle(
                    fontSize: 60.sp,
                    fontFamily: "Luckiest Guy",
                    letterSpacing: 2,
                    color: AppColors.ink,
                  ),
                ),
                Text(
                  "Track Smarter, Care Better",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: AppColors.textMuted,
                    height: 1.2,
                  ),
                ),

                const Spacer(),

                Center(
                  child: Column(
                    children: [
                      Text(
                        "Smart clinic and pet business management app designed to help you work more organized, faster, and smarter.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          wordSpacing: 1.sp,
                          fontSize: 18,
                          color: AppColors.cream,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                        ),
                      ),
                      SizedBox(height: 50.h),
                      PrimaryButton(
                        title: "Let's Get Started !",
                        onPressed: () {
                          Get.toNamed(Routes.SIGN_IN);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
