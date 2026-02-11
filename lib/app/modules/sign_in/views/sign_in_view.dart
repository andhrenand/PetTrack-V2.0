import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_track/app/routes/app_pages.dart';
import 'package:pet_track/utils/widgets/input_field.dart';
import 'package:pet_track/utils/widgets/primary_button.dart';
import 'package:pet_track/utils/widgets/social_button.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cream,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                "Sign in to continue",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.textMuted,
                ),
              ),
              SizedBox(height: 50.h),
              InputField(
                hintText: "Email Address",
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.h),
              InputField(
                hintText: "Password",
                controller: controller.passwordController,
                obscureText: true,
              ),
              SizedBox(height: 30.h),
              Center(
                child: Obx(
                  () => PrimaryButton(
                    title: controller.isLoading.value
                        ? "SIGNING IN..."
                        : "SIGN IN",
                    onPressed:
                        controller.isLoading.value ? () {} : controller.login,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Center(
                child: TextButton(
                  onPressed: () => Get.toNamed(Routes.SIGN_UP),
                  child: const Text("Create new account"),
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: const Text("OR"),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 24.h),
              SocialButton(
                title: "Google",
                icon: 'assets/pictures/google.png',
                onPressed: () {},
              ),
              SizedBox(height: 14.h),
              SocialButton(
                title: "Apple",
                icon: 'assets/pictures/apple-logo.png',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
