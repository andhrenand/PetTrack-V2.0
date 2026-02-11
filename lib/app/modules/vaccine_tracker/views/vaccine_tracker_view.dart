import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/vaccine_tracker_controller.dart';

class VaccineTrackerView extends GetView<VaccineTrackerController> {
  const VaccineTrackerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vaccine Tracker'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          _VaccineTile(
            name: "Rabies",
            date: "12 Mar 2026",
            status: "Upcoming",
          ),
          _VaccineTile(
            name: "Parvo",
            date: "02 Jan 2026",
            status: "Completed",
          ),
          _VaccineTile(
            name: "Distemper",
            date: "15 Dec 2025",
            status: "Completed",
          ),
        ],
      ),
    );
  }
}

class _VaccineTile extends StatelessWidget {
  final String name;
  final String date;
  final String status;

  const _VaccineTile({
    required this.name,
    required this.date,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final isUpcoming = status == "Upcoming";
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
            child: const Icon(Icons.vaccines, color: AppColors.ink),
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
                  date,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.textMuted,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: isUpcoming
                  ? AppColors.sand.withOpacity(0.2)
                  : AppColors.line,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              status,
              style: TextStyle(
                fontSize: 11.sp,
                color: isUpcoming ? AppColors.ink : AppColors.textMuted,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
