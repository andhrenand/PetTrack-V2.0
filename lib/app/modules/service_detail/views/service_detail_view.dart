import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/utils/widgets/primary_button.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/service_detail_controller.dart';

class ServiceDetailView extends GetView<ServiceDetailController> {
  const ServiceDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Detail'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            height: 160.h,
            decoration: BoxDecoration(
              color: AppColors.sand.withOpacity(0.18),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppColors.line),
            ),
            child: const Center(
              child: Icon(Icons.medical_services, size: 64, color: AppColors.ink),
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            "Grooming Basic",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            "Bath, blow dry, ear cleaning, and nail trimming.",
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.textMuted,
              height: 1.4,
            ),
          ),
          SizedBox(height: 16.h),
          _InfoRow(label: "Duration", value: "60 min"),
          _InfoRow(label: "Price", value: "Rp 120.000"),
          _InfoRow(label: "Available", value: "Mon - Sat"),
          SizedBox(height: 20.h),
          PrimaryButton(
            title: "Book Service",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.textMuted,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
