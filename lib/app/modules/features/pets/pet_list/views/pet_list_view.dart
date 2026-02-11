import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/pet_list_controller.dart';

class PetListView extends GetView<PetListController> {
  const PetListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet List'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Search pets...",
              prefixIcon: const Icon(Icons.search),
              prefixIconColor: AppColors.textMuted,
            ),
          ),
          SizedBox(height: 16.h),
          _PetRow(
            name: "Bobby",
            breed: "Golden Retriever",
            age: "2 years",
          ),
          _PetRow(
            name: "Mimi",
            breed: "Persian Cat",
            age: "1 year",
          ),
          _PetRow(
            name: "Rocky",
            breed: "Bulldog",
            age: "3 years",
          ),
        ],
      ),
    );
  }
}

class _PetRow extends StatelessWidget {
  final String name;
  final String breed;
  final String age;

  const _PetRow({
    required this.name,
    required this.breed,
    required this.age,
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
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 52.w,
            height: 52.w,
            decoration: BoxDecoration(
              color: AppColors.sand.withOpacity(0.18),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.pets, color: AppColors.ink),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15.sp,
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
              ],
            ),
          ),
          Text(
            age,
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
