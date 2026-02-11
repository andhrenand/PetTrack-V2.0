import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/app/routes/app_pages.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

class RootNavView extends StatelessWidget {
  const RootNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Pages'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _SectionTitle(title: "Core"),
          _NavTile(
            title: "Splash",
            route: Routes.SPLASH,
          ),
          _NavTile(
            title: "Onboarding",
            route: Routes.ONBOARDING_SCREEN,
          ),
          _NavTile(
            title: "Sign In",
            route: Routes.SIGN_IN,
          ),
          _NavTile(
            title: "Sign Up",
            route: Routes.SIGN_UP,
          ),
          _NavTile(
            title: "Bottom Navbar",
            route: Routes.BOTTOM_NAVBAR,
          ),

          SizedBox(height: 14.h),
          _SectionTitle(title: "Customer"),
          _NavTile(title: "Customer Home", route: Routes.CUSTOMER_HOME),
          _NavTile(title: "Chat Room", route: Routes.CHAT_ROOM),
          _NavTile(title: "Profile", route: Routes.PROFILE),

          SizedBox(height: 14.h),
          _SectionTitle(title: "Shop"),
          _NavTile(title: "Shop Home", route: Routes.SHOP_HOME),
          _NavTile(title: "Shop", route: Routes.SHOP),
          _NavTile(title: "Product List", route: Routes.PRODUCT_LIST),
          _NavTile(title: "Product Detail", route: Routes.PRODUCT_DETAIL),
          _NavTile(title: "Service List", route: Routes.SERVICE_LIST),
          _NavTile(title: "Service Detail", route: Routes.SERVICE_DETAIL),

          SizedBox(height: 14.h),
          _SectionTitle(title: "Medical"),
          _NavTile(title: "Medical Home", route: Routes.MEDICAL_HOME),
          _NavTile(title: "Medical History", route: Routes.MEDICAL_HISTORY),
          _NavTile(title: "Add Medical Record", route: Routes.MEDICAL_ADD),
          _NavTile(title: "Medication Reminder", route: Routes.MEDICATION_REMINDER),
          _NavTile(title: "Vaccine Tracker", route: Routes.VACCINE_TRACKER),
          _NavTile(title: "Add Medical Record (Legacy)", route: Routes.ADD_MEDICAL_RECORD),

          SizedBox(height: 14.h),
          _SectionTitle(title: "Pet"),
          _NavTile(title: "List of Pet", route: Routes.LIST_OF_PET),
          _NavTile(title: "Pet List", route: Routes.PET_LIST),
          _NavTile(title: "Pet Detail", route: Routes.PET_DETAIL),
          _NavTile(title: "Pet Add", route: Routes.PET_ADD),
          _NavTile(title: "Pet Activity", route: Routes.PET_ACTIVITY),
          _NavTile(title: "Pet Care", route: Routes.PET_CARE),

          SizedBox(height: 14.h),
          _SectionTitle(title: "Admin"),
          _NavTile(title: "Home", route: Routes.HOME),
          _NavTile(title: "Stock", route: Routes.STOCK),
          _NavTile(title: "Income", route: Routes.INCOME),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }
}

class _NavTile extends StatelessWidget {
  final String title;
  final String route;

  const _NavTile({
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.line),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          route,
          style: TextStyle(
            fontSize: 11.sp,
            color: AppColors.textMuted,
          ),
        ),
        trailing: const Icon(Icons.chevron_right, color: AppColors.textMuted),
        onTap: () => Get.toNamed(route),
      ),
    );
  }
}
