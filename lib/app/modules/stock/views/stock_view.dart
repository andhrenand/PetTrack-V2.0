import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_track/utils/widgets/empty_state.dart';
import 'package:pet_track/utils/widgets/primary_button.dart';

import '../controllers/stock_controller.dart';

class StockView extends GetView<StockController> {
  const StockView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: EmptyState(
          icon: Icons.inventory_2,
          title: "No stock items yet",
          subtitle: "Add products to manage stock levels.",
          action: SizedBox(
            width: 220.w,
            child: PrimaryButton(
              title: "Add Product",
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
