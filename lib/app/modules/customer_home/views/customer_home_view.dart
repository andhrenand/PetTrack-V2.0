import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_track/app/modules/customer_home/controllers/customer_home_controller.dart';
import 'package:pet_track/app/routes/app_pages.dart';
import 'package:pet_track/utils/widgets/article_slider.dart';
import 'package:pet_track/utils/widgets/item_container.dart';
import 'package:pet_track/utils/widgets/menu_button_customer.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

class CustomerHomeView extends GetView<CustomerHomeController> {
  const CustomerHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cream,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 130),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none, // ⬅️ PENTING
              children: [
                // HEADER
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.sand.withOpacity(0.95),
                        AppColors.sandDark,
                      ],
                    ),
                  ),
                  child: SafeArea(
                    bottom: false,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white24,
                            radius: 25,
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome to Pet Track!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Renan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 10,
                                  offset: const Offset(0, 6),
                                ),
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                Get.toNamed(Routes.CHAT_ROOM);
                              },
                              icon: Icon(
                                Icons.chat,
                                color: AppColors.ink.withOpacity(0.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        
                // FLOATING CONTAINER
                Positioned(
                  bottom: -50,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                      color: AppColors.paper,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColors.line),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.sand.withOpacity(0.18),
                          blurRadius: 18,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MenuButtonCustomer(
                          title: "PET",
                          icon: Icons.pets,
                          onPressed: () {Get.toNamed(Routes.PET_HOME);},
                        ),
                        MenuButtonCustomer(
                          title: "MEDICAL",
                          icon: Icons.medical_information,
                          onPressed: () {Get.toNamed(Routes.MEDICAL_HOME);},
                        ),
                        MenuButtonCustomer(
                          title: "SHOP",
                          icon: Icons.shopping_bag,
                          onPressed: () {Get.toNamed(Routes.SHOP_HOME);},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70),
            ArticleSlider(),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  const Text(
                    "SHOP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.sand,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.SHOP_HOME); // ⬅️ halaman shop
                    },
                    child: Row(
                      children: const [
                        Text(
                          "See All",
                          style: TextStyle(
                            color: AppColors.sand,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: AppColors.sand,
                        ),
                      ],
                    ),
                  ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  ItemContainer(
                    image: 'assets/pictures/dogFood.png',
                    title: 'Dog Food Premium',
                    description: 'Makanan sehat untuk anjing dewasa',
                    price: 85000,
                    onPressed: () {},
                    showAddIcon: true,
                    onAddPressed: () {},
                  ),

                  const SizedBox(height: 10),

                  ItemContainer(
                    image: 'assets/pictures/dogFood.png',
                    title: 'Dog Food Premium',
                    description: 'Makanan sehat untuk anjing dewasa',
                    price: 85000,
                    onPressed: () {},
                    showAddIcon: true,
                    onAddPressed: () {},
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
