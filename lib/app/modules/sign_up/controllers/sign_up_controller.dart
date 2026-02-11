import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_track/app/routes/app_pages.dart';
import 'package:pet_track/app/services/auth/auth_services.dart';

class SignUpController extends GetxController {
  final AuthService _authService = Get.find();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isLoading = false.obs;

  Future<void> register() async {
    if (isLoading.value) {
      return;
    }
    isLoading.value = true;

    final user = await _authService.register(
      emailController.text.trim(),
      passwordController.text.trim(),
      displayName: usernameController.text.trim(),
    );

    isLoading.value = false;

    if (user != null) {
      Get.offAllNamed(Routes.BOTTOM_NAVBAR);
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
