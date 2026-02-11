import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/app/routes/app_pages.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/medical_home_controller.dart';

class MedicalHomeView extends GetView<MedicalHomeController> {
  const MedicalHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Manage your pet health",
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.textMuted,
              ),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 14.w,
                crossAxisSpacing: 14.w,
                childAspectRatio: 1.1,
                children: [
                  _MedicalMenuCard(
                    icon: Icons.history,
                    title: "History",
                    subtitle: "Records & notes",
                    onTap: () => Get.toNamed(Routes.MEDICAL_HISTORY),
                  ),
                  _MedicalMenuCard(
                    icon: Icons.add_circle_outline,
                    title: "Add Record",
                    subtitle: "Vaccines, checkups",
                    onTap: () => Get.toNamed(Routes.MEDICAL_ADD),
                  ),
                  _MedicalMenuCard(
                    icon: Icons.vaccines,
                    title: "Vaccines",
                    subtitle: "Upcoming schedule",
                    onTap: () => Get.toNamed(Routes.VACCINE_TRACKER),
                  ),
                  _MedicalMenuCard(
                    icon: Icons.medication,
                    title: "Reminders",
                    subtitle: "Daily medication",
                    onTap: () => Get.toNamed(Routes.MEDICATION_REMINDER),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MedicalMenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _MedicalMenuCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Ink(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: AppColors.line),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 42.w,
                height: 42.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.sand.withOpacity(0.18),
                ),
                child: Icon(icon, color: AppColors.ink),
              ),
              SizedBox(height: 12.h),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 11.sp,
                  color: AppColors.textMuted,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
