import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_track/app/services/auth/auth_services.dart';

class AuthController extends GetxController {
  final AuthService _authService = Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isLoading = false.obs;

  Future<void> login() async {
    isLoading.value = true;

    final user = await _authService.login(
      emailController.text.trim(),
      passwordController.text.trim(),
    );

    isLoading.value = false;

    if (user != null) {
      Get.offAllNamed('/home');
    }
  }

  Future<void> register() async {
    isLoading.value = true;

    final user = await _authService.register(
      emailController.text.trim(),
      passwordController.text.trim(),
    );

    isLoading.value = false;

    if (user != null) {
      Get.offAllNamed('/home');
    }
  }
}
