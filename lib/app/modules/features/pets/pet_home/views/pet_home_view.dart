import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/app/routes/app_pages.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/pet_home_controller.dart';

class PetHomeView extends GetView<PetHomeController> {
  const PetHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cream,
      appBar: AppBar(
        title: const Text('Pets'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Manage your pets",
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textMuted,
            ),
          ),
          SizedBox(height: 14.h),
          Row(
            children: [
              _QuickAction(
                title: "Add Pet",
                icon: Icons.add_circle_outline,
                onTap: () => Get.toNamed(Routes.PET_ADD),
              ),
              SizedBox(width: 10.w),
              _QuickAction(
                title: "Pet Care",
                icon: Icons.volunteer_activism,
                onTap: () => Get.toNamed(Routes.PET_CARE),
              ),
              SizedBox(width: 10.w),
              _QuickAction(
                title: "Activity",
                icon: Icons.directions_run,
                onTap: () => Get.toNamed(Routes.PET_ACTIVITY),
              ),
            ],
          ),
          SizedBox(height: 22.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Your Pets",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              TextButton(
                onPressed: () => Get.toNamed(Routes.PET_LIST),
                child: const Text("See all"),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          _PetCard(
            name: "Milo",
            breed: "Golden Retriever",
            age: "2 years",
            onTap: () => Get.toNamed(Routes.PET_DETAIL),
          ),
          SizedBox(height: 10.h),
          _PetCard(
            name: "Luna",
            breed: "British Shorthair",
            age: "1 year",
            onTap: () => Get.toNamed(Routes.PET_DETAIL),
          ),
          SizedBox(height: 10.h),
          _PetCard(
            name: "Coco",
            breed: "Pomeranian",
            age: "3 years",
            onTap: () => Get.toNamed(Routes.PET_DETAIL),
          ),
        ],
      ),
    );
  }
}

class _QuickAction extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _QuickAction({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 14.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.line),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  blurRadius: 10,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: AppColors.ink),
                SizedBox(height: 6.h),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
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

class _PetCard extends StatelessWidget {
  final String name;
  final String breed;
  final String age;
  final VoidCallback onTap;

  const _PetCard({
    required this.name,
    required this.breed,
    required this.age,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          padding: EdgeInsets.all(14.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: AppColors.line),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 10,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 56.w,
                height: 56.w,
                decoration: BoxDecoration(
                  color: AppColors.sand.withOpacity(0.18),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.pets, color: AppColors.ink),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      breed,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.textMuted,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      age,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.textMuted,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: AppColors.textMuted,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
