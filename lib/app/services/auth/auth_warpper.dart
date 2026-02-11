import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_track/app/modules/bottom_navbar/views/bottom_navbar_view.dart';
import 'package:pet_track/app/modules/onboarding_screen/views/onboarding_screen_view.dart';
import 'package:pet_track/app/modules/sign_in/views/sign_in_view.dart';
import 'package:pet_track/app/modules/bottom_navbar/controllers/bottom_navbar_controller.dart';
import 'package:pet_track/app/modules/sign_in/controllers/sign_in_controller.dart';
import 'package:pet_track/utils/widgets/splash_screen.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError) {
          return const Scaffold(
            body: Center(
              child: Text(
                'Something went wrong. Please try again.',
                textAlign: TextAlign.center,
              ),
            ),
          );
        }

        if (snapshot.hasData) {
          if (!Get.isRegistered<BottomNavbarController>()) {
            Get.put(BottomNavbarController());
          }
          return const BottomNavbarView();
        }

        if (!Get.isRegistered<SignInController>()) {
          Get.put(SignInController());
        }
        return const SplashScreen();
      },
    );
  }
}
