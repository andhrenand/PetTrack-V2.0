import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/utils/widgets/primary_button.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/medical_add_controller.dart';

class MedicalAddView extends GetView<MedicalAddController> {
  const MedicalAddView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Medical Record'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Record Information",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 12.h),
          TextField(
            decoration: const InputDecoration(
              hintText: "Pet name",
              prefixIcon: Icon(Icons.pets),
            ),
          ),
          SizedBox(height: 12.h),
          TextField(
            decoration: const InputDecoration(
              hintText: "Type (Vaccination, Checkup, etc.)",
              prefixIcon: Icon(Icons.medical_information),
            ),
          ),
          SizedBox(height: 12.h),
          TextField(
            decoration: const InputDecoration(
              hintText: "Date",
              prefixIcon: Icon(Icons.calendar_month),
            ),
          ),
          SizedBox(height: 12.h),
          TextField(
            maxLines: 4,
            decoration: const InputDecoration(
              hintText: "Notes",
            ),
          ),
          SizedBox(height: 20.h),
          PrimaryButton(
            title: "Save Record",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
