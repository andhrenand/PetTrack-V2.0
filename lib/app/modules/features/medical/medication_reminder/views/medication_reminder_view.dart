import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/medication_reminder_controller.dart';

class MedicationReminderView extends GetView<MedicationReminderController> {
  const MedicationReminderView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medication Reminder'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          _ReminderTile(
            title: "Vitamin C",
            subtitle: "Bobby • 08:00 AM",
            active: true,
          ),
          _ReminderTile(
            title: "Deworming",
            subtitle: "Mimi • 01:00 PM",
            active: false,
          ),
          _ReminderTile(
            title: "Skin Care",
            subtitle: "Rocky • 07:30 PM",
            active: true,
          ),
        ],
      ),
    );
  }
}

class _ReminderTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool active;

  const _ReminderTile({
    required this.title,
    required this.subtitle,
    required this.active,
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
            child: const Icon(Icons.medication, color: AppColors.ink),
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
          Switch(
            value: active,
            onChanged: (_) {},
            activeColor: AppColors.sand,
          ),
        ],
      ),
    );
  }
}
