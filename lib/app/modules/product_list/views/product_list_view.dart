import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/utils/widgets/item_container.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

import '../controllers/product_list_controller.dart';

class ProductListView extends GetView<ProductListController> {
  const ProductListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Best sellers",
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textMuted,
            ),
          ),
          SizedBox(height: 12.h),
          ItemContainer(
            image: 'assets/pictures/dogFood.png',
            title: 'Dog Food Premium',
            description: 'Makanan sehat untuk anjing dewasa',
            price: 85000,
            onPressed: () {},
          ),
          SizedBox(height: 10.h),
          ItemContainer(
            image: 'assets/pictures/dogFood.png',
            title: 'Cat Treats Natural',
            description: 'Snack lezat untuk kucing kesayangan',
            price: 65000,
            onPressed: () {},
          ),
          SizedBox(height: 10.h),
          ItemContainer(
            image: 'assets/pictures/dogFood.png',
            title: 'Pet Shampoo',
            description: 'Perawatan bulu lembut dan wangi',
            price: 45000,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
