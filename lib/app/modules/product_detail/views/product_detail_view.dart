import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/utils/widgets/primary_button.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  const ProductDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            height: 200.h,
            decoration: BoxDecoration(
              color: AppColors.sand.withOpacity(0.18),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppColors.line),
            ),
            child: const Center(
              child: Icon(Icons.shopping_bag, size: 64, color: AppColors.ink),
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            "Dog Food Premium",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            "Rp 85.000",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.sand,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            "Makanan sehat untuk anjing dewasa, kaya protein dan nutrisi.",
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.textMuted,
              height: 1.4,
            ),
          ),
          SizedBox(height: 20.h),
          PrimaryButton(
            title: "Add to Cart",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
