import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/app/routes/app_pages.dart';
import 'package:pet_track/utils/widgets/item_container.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/shop_home_controller.dart';

class ShopHomeView extends GetView<ShopHomeController> {
  const ShopHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
        actions: [
          IconButton(
            onPressed: () {Get.toNamed(Routes.PAYMENT);},
            icon: const Icon(Icons.shopping_cart),
          ),
          SizedBox(width: 6.w),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Essentials for your pet",
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textMuted,
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(
            height: 38.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                _CategoryChip(label: "Food"),
                _CategoryChip(label: "Health"),
                _CategoryChip(label: "Accessories"),
                _CategoryChip(label: "Grooming"),
              ],
            ),
          ),
          SizedBox(height: 18.h),
          Text(
            "Featured",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 12.h),
          ItemContainer(
            image: 'assets/pictures/dogFood.png',
            title: 'Dog Food Premium',
            description: 'Makanan sehat untuk anjing dewasa',
            price: 85000,
            onPressed: () {Get.toNamed(Routes.PRODUCT_DETAIL);},
            showAddIcon: true,
            onAddPressed: () {},
          ),
          SizedBox(height: 10.h),
          ItemContainer(
            image: 'assets/pictures/dogFood.png',
            title: 'Pet Shampoo',
            description: 'Perawatan bulu lembut dan wangi',
            price: 45000,
            onPressed: () {},
            showAddIcon: true,
            onAddPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String label;

  const _CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.sand.withOpacity(0.18),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.line),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.ink,
        ),
      ),
    );
  }
}
