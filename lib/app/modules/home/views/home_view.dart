import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_track/app/modules/home/controllers/home_controller.dart';
import 'package:pet_track/app/routes/app_pages.dart';
import 'package:pet_track/utils/widgets/insight_card.dart';
import 'package:pet_track/utils/widgets/menu_button.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cream,
      body: SafeArea(
        left: true,
        right: true,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30,
                      ),
                    ],
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome to Pet Track",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Andhika Renan"),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.sand,
                    ),
                    child: IconButton(
                      onPressed: () => {Get.toNamed(Routes.CHAT_ROOM)},
                      icon: const Icon(
                        Icons.chat,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              const InsightCard(),
              SizedBox(height: 20),
              // Container(
              //   height: 110,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: const Color(0xffBAA686).withOpacity(0.2),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       MenuButton(
              //         icon: Icons.pets,
              //         title: "PET",
              //         onPressed: () => (Get.toNamed(Routes.LIST_OF_PET)),
              //       ),
              //       MenuButton(
              //         icon: Icons.shopping_cart,
              //         title: "SHOP",
              //         onPressed: () => (Get.toNamed(Routes.SHOP)),
              //       ),
              //     ],
              //   ),
              // SizedBox(height: 20),
      
              //            ============== MENU SECTION FOR ADMIN ==============
              Container(
                height: 400.w,
                width: double.infinity,
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColors.accent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "MENU",
                            style: TextStyle(
                              fontSize: 24.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Container(
                            width: 40.w,
                            height: 4.h,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16.w,
                        crossAxisSpacing: 16.w,
                        childAspectRatio: 1,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          MenuButton(
                            icon: Icons.pets,
                            title: "Pet",
                            onPressed: () => Get.toNamed(Routes.LIST_OF_PET),
                          ),
                          MenuButton(
                            icon: Icons.shopping_cart,
                            title: "Shop",
                            onPressed: () => Get.toNamed(Routes.SHOP),
                          ),
                          MenuButton(
                            icon: Icons.warehouse,
                            title: "Stock",
                            onPressed: () => Get.toNamed(Routes.STOCK),
                          ),
                          MenuButton(
                            icon: Icons.account_balance_wallet,
                            title: "Income",
                            onPressed: () => Get.toNamed(Routes.INCOME),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
