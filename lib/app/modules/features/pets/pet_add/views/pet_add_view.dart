import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/utils/widgets/primary_button.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/pet_add_controller.dart';

class PetAddView extends GetView<PetAddController> {
  const PetAddView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Pet'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Pet Information",
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
              hintText: "Type (Dog, Cat, etc.)",
              prefixIcon: Icon(Icons.category),
            ),
          ),
          SizedBox(height: 12.h),
          TextField(
            decoration: const InputDecoration(
              hintText: "Age",
              prefixIcon: Icon(Icons.cake),
            ),
          ),
          SizedBox(height: 12.h),
          TextField(
            decoration: const InputDecoration(
              hintText: "Weight",
              prefixIcon: Icon(Icons.monitor_weight),
            ),
          ),
          SizedBox(height: 12.h),
          TextField(
            maxLines: 3,
            decoration: const InputDecoration(
              hintText: "Notes",
            ),
          ),
          SizedBox(height: 20.h),
          PrimaryButton(
            title: "Save Pet",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
