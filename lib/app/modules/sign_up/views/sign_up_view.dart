import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/app/routes/app_pages.dart';
import 'package:pet_track/utils/widgets/primary_button.dart';
import 'package:pet_track/utils/widgets/social_button.dart';
import '../controllers/sign_up_controller.dart';
import 'package:pet_track/utils/widgets/input_field.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

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
                "Getting Started \nWith Pet Track",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "Let's create account for you",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.textMuted,
                ),
              ),
              const SizedBox(height: 60),

              InputField(
                hintText: "Username",
                controller: controller.usernameController,
              ),
              const SizedBox(height: 16),

              InputField(
                hintText: "Email Address",
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),

              InputField(
                hintText: "Password",
                controller: controller.passwordController,
                obscureText: true,
              ),
              SizedBox(height: 30),

              Center(
                child: Obx(
                  () => PrimaryButton(
                    title: controller.isLoading.value
                        ? "SIGNING UP..."
                        : "SIGN UP",
                    onPressed: controller.isLoading.value
                        ? () {}
                        : controller.register,
                  ),
                ),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Text("OR"),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 24),
              SocialButton(
                title: "Google",
                icon: 'assets/pictures/google.png',
                onPressed: () {},
              ),
              SizedBox(height: 14),
              SocialButton(
                title: "Apple",
                icon: 'assets/pictures/apple-logo.png',
                onPressed: () {},
              ),
              SizedBox(height: 28),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.textMuted,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.offNamed(Routes.SIGN_IN),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.ink,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
