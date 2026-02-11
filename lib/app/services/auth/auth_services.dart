import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // ========================
  // 🔔 Snackbar Helper
  // ========================
  void _showError(String title, String message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: const Color(0xFFD32F2F),
      colorText: Colors.white,
      margin: const EdgeInsets.all(16),
      borderRadius: 14,
      duration: const Duration(seconds: 3),
      icon: const Icon(Icons.error_outline, color: Colors.white),
      shouldIconPulse: false,
      barBlur: 10,
      overlayBlur: 1,
    );
  }

  // ========================
  // 🔐 LOGIN
  // ========================
  Future<User?> login(String email, String password) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return result.user;
    } on FirebaseAuthException catch (e) {
      _showError(
        'Sign In Failed',
        e.message ?? 'Unable to sign in. Please try again.',
      );
      return null;
    } catch (_) {
      _showError(
        'Sign In Failed',
        'Something went wrong. Please try again.',
      );
      return null;
    }
  }

  // ========================
  // 📝 REGISTER
  // ========================
  Future<User?> register(
    String email,
    String password, {
    String? displayName,
  }) async {
    try {
      final result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (displayName != null && displayName.trim().isNotEmpty) {
        await result.user?.updateDisplayName(displayName.trim());
        await result.user?.reload();
      }

      return result.user;
    } on FirebaseAuthException catch (e) {
      _showError(
        'Sign Up Failed',
        e.message ?? 'Unable to create account. Please try again.',
      );
      return null;
    } catch (_) {
      _showError(
        'Sign Up Failed',
        'Something went wrong. Please try again.',
      );
      return null;
    }
  }

  // ========================
  // 🚪 LOGOUT
  // ========================
  Future<void> logout() async {
    await _auth.signOut();
  }

  // ========================
  // 🔄 AUTH STATE
  // ========================
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  User? get currentUser => _auth.currentUser;
}
