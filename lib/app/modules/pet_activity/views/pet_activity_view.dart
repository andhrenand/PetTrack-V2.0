import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/pet_activity_controller.dart';

class PetActivityView extends GetView<PetActivityController> {
  const PetActivityView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Activity'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          _ActivityTile(
            title: "Morning Walk",
            subtitle: "Bobby • 30 min",
            time: "07:30 AM",
          ),
          _ActivityTile(
            title: "Grooming",
            subtitle: "Mimi • 1 hour",
            time: "01:00 PM",
          ),
          _ActivityTile(
            title: "Training",
            subtitle: "Rocky • 45 min",
            time: "06:30 PM",
          ),
        ],
      ),
    );
  }
}

class _ActivityTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;

  const _ActivityTile({
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.line),
      ),
      child: Row(
        children: [
          Container(
            width: 44.w,
            height: 44.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.sand.withOpacity(0.18),
            ),
            child: const Icon(Icons.directions_walk, color: AppColors.ink),
          ),
          SizedBox(width: 12.w),
          Expanded(
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
                SizedBox(height: 4.h),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.textMuted,
                  ),
                ),
              ],
            ),
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.textMuted,
            ),
          ),
        ],
      ),
    );
  }
}
