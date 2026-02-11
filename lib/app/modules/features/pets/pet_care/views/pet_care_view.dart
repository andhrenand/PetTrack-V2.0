import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/pet_care_controller.dart';

class PetCareView extends GetView<PetCareController> {
  const PetCareView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Care'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          _CareTipCard(
            title: "Healthy Diet",
            description: "Choose balanced nutrition based on pet age and size.",
          ),
          _CareTipCard(
            title: "Daily Activity",
            description: "Keep your pet active with short walks and play time.",
          ),
          _CareTipCard(
            title: "Routine Checkup",
            description: "Schedule regular health checks and vaccinations.",
          ),
        ],
      ),
    );
  }
}

class _CareTipCard extends StatelessWidget {
  final String title;
  final String description;

  const _CareTipCard({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.line),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            description,
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.textMuted,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
